uint64_t closure #1 in Array<A>.getFavouredAction(tie:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  return TrialTieBreakingOverride.preference(tie:)(a2, a3);
}

unint64_t lazy protocol witness table accessor for type [TrialTieBreakingOverride] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [TrialTieBreakingOverride] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [TrialTieBreakingOverride] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SiriCam24TrialTieBreakingOverrideVGMd, &_sSay7SiriCam24TrialTieBreakingOverrideVGMR);
    lazy protocol witness table accessor for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TrialTieBreakingOverride] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride()
{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined destroy of RankedAction?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized TrialTieBreakingOverride.check(isFavoured:over:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RankedAction();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v32 - v17);
  outlined init with copy of RankedAction(a1, &v32 - v17);
  outlined init with copy of RankedAction(a2, v16);
  v20 = *v18;
  v19 = v18[1];

  outlined destroy of RankedAction(v18);
  if (v20 == a3 && v19 == a4)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0 && (a3 != 42 || a4 != 0xE100000000000000))
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_13;
    }
  }

  v24 = 1;
LABEL_13:
  v26 = *v16;
  v25 = v16[1];

  outlined destroy of RankedAction(v16);
  if (v26 == a5 && v25 == a6)
  {

LABEL_24:
    v30 = 1;
    return v24 & v30 & 1;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_24;
  }

  if (a5 == 42 && a6 == 0xE100000000000000)
  {
    goto LABEL_24;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  return v24 & v30 & 1;
}

uint64_t getEnumTagSinglePayload for TrialTieBreakingOverride(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TrialTieBreakingOverride(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialTieBreakingOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void static CamRequestLinkLogger.log(requestId:camId:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v68 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v75 = &v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v68 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D5A9C8]) init];
  if (v20)
  {
    v21 = v20;
    v76 = v5;
    v22 = [objc_allocWithZone(MEMORY[0x277D5A9D8]) init];
    if (v22)
    {
      v74 = v22;
      v23 = [objc_allocWithZone(MEMORY[0x277D5A9D8]) init];
      if (v23)
      {
        v24 = v23;
        v71 = v17;
        type metadata accessor for SISchemaUUID();
        v73 = v21;
        v25 = *(v76 + 16);
        v69 = a2;
        v25(v19, a2, v4);
        v26 = SISchemaUUID.__allocating_init(nsuuid:)(v19);
        v27 = v74;
        [v74 setUuid_];

        [v27 setComponent_];
        v70 = a1;
        v72 = v25;
        v25(v19, a1, v4);
        v28 = SISchemaUUID.__allocating_init(nsuuid:)(v19);
        [v24 setUuid_];

        if (AFDeviceSupportsSAE())
        {
          v29 = 43;
        }

        else
        {
          v29 = 1;
        }

        [v24 setComponent_];
        v30 = v73;
        [v73 setSource_];
        [v30 setTarget_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.common);
        v33 = v71;
        v32 = v72;
        v72(v71, v69, v4);
        v34 = v75;
        v32(v75, v70, v4);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v37 = 136315394;
          LODWORD(v70) = v36;
          UUID.uuidString.getter();
          v39 = v38;
          v72 = v24;
          v40 = *(v76 + 8);
          v40(v33, v4);
          v41 = OUTLINED_FUNCTION_1_24();
          v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v39, v42);

          *(v37 + 4) = v43;
          *(v37 + 12) = 2080;
          UUID.uuidString.getter();
          v45 = v44;
          v40(v34, v4);
          v46 = OUTLINED_FUNCTION_1_24();
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, v47);

          *(v37 + 14) = v48;
          _os_log_impl(&dword_266790000, v35, v70, "Successfully emitted requestLink log message for camId : %s and requestId: %s", v37, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_3_1();
        }

        else
        {

          v67 = *(v76 + 8);
          v67(v34, v4);
          v67(v33, v4);
        }

        return;
      }

      v5 = v76;
      v21 = v74;
    }

    else
    {
      v5 = v76;
    }
  }

  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.common);
  v50 = v5[2];
  v50(v12, a2, v4);
  v51 = v9;
  v50(v9, a1, v4);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = v76;
    *v54 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    LODWORD(v75) = v53;
    dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v57 = v5[1];
    v57(v12, v4);
    v58 = OUTLINED_FUNCTION_1_24();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v56, v59);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v57(v51, v4);
    v63 = OUTLINED_FUNCTION_1_24();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v64);

    *(v54 + 14) = v65;
    _os_log_impl(&dword_266790000, v52, v75, "Error in intialising RequestLink object camId: %s, and requestId: %s", v54, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {

    v66 = v5[1];
    v66(v9, v4);
    v66(v12, v4);
  }
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

unint64_t specialized Dictionary.subscript.getter(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5()
{
  OUTLINED_FUNCTION_44_1();
  v200 = v4;
  v205 = v5;
  v206 = v6;
  v208 = v7;
  v209 = v8;
  v204 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_13(v20, v21, v22, v23, v24, v25, v26, v27, v193);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_3();
  v195 = v29;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_3();
  v201 = v31;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_3();
  v199 = v33;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_3();
  v198 = v35;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_3();
  v203 = v37;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v38);
  v40 = (&v193 - v39);
  v207 = type metadata accessor for UUID();
  v41 = OUTLINED_FUNCTION_22(v207);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5();
  v202 = v46;
  OUTLINED_FUNCTION_6();
  v48 = MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_14(v48, v49, v50, v51, v52, v53, v54, v55, v193);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_3();
  v197 = v57;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_31_3();
  v63 = *v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v65 = static CamModelLogger.map(from:)(v63, v11 + *(v64 + 48));
  if (v65)
  {
    v66 = v65;
    v67 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    [v67 setModelExecuted:v66];
    if (v67)
    {
      v193 = v66;
      v68 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v69 = v43;
      if (v68)
      {
        v70 = v68;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v71 = *(v43 + 16);
        v72 = v207;
        v71(v0, v208, v207);
        v73 = SISchemaUUID.__allocating_init(nsuuid:)(v0);
        OUTLINED_FUNCTION_40_2(v73, sel_setCamId_);

        v74 = MEMORY[0x26D5DCC90](v205, v209);
        OUTLINED_FUNCTION_40_2(v74, sel_setResultCandidateId_);

        [v70 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v71(v0, v204, v72);
          v75 = SISchemaUUID.__allocating_init(nsuuid:)(v0);
          OUTLINED_FUNCTION_40_2(v75, sel_setSubRequestId_);
        }

        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20();
        }

        v76 = v69;
        v77 = specialized Dictionary.subscript.getter(v200, kLoggingFeatureName._rawValue);
        v78 = v201;
        if ((v77 & 0x100000000) == 0)
        {
          [v70 setFeature_];
        }

        v79 = v199;
        outlined init with copy of UUID?(v206, v199);
        OUTLINED_FUNCTION_32_3(v79, 1, v72);
        v203 = v71;
        if (v80)
        {
          outlined destroy of UUID?(v79);
          UUID.init(uuidString:)();
          v81 = OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_32_3(v81, v82, v72);
          if (v80)
          {
            outlined destroy of UUID?(v78);
            v83 = v202;
            v152 = v76;
LABEL_38:
            [v67 setEventMetadata:v70];
            [objc_msgSend(objc_opt_self() sharedStream)];
            swift_unknownObjectRelease();
            if (one-time initialization token for common != -1)
            {
              OUTLINED_FUNCTION_0_5();
            }

            v165 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_26(v165, static Logger.common);
            v203(v83, v208, v72);

            v86 = Logger.logObject.getter();
            static os_log_type_t.debug.getter();

            if (OUTLINED_FUNCTION_76())
            {
              OUTLINED_FUNCTION_11();
              v211[0] = OUTLINED_FUNCTION_52_2();
              *v72 = 136315650;
              v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
              v166 = OUTLINED_FUNCTION_59_1();
              v168 = OUTLINED_FUNCTION_61_1(v166, v167);

              *(v72 + 4) = v168;
              *(v72 + 12) = 2080;
              v169 = UUID.uuidString.getter();
              v208 = v67;
              v171 = v170;
              (*(v152 + 8))(v83, v207);
              v172 = OUTLINED_FUNCTION_23_8();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v171, v173);
              OUTLINED_FUNCTION_48_2();

              *(v72 + 14) = v169;
              *(v72 + 22) = 2080;
              v174 = OUTLINED_FUNCTION_36_0();
              *(v72 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v209, v175);
              OUTLINED_FUNCTION_21_5();
              _os_log_impl(v176, v177, v178, v179, v180, 0x20u);
              OUTLINED_FUNCTION_77();
              OUTLINED_FUNCTION_3_1();
              OUTLINED_FUNCTION_0_8();

LABEL_42:
              goto LABEL_48;
            }

            v156 = *(v152 + 8);
            v154 = v83;
            goto LABEL_44;
          }

          v152 = v76;
          OUTLINED_FUNCTION_97();
          v148 = v194;
          v149 = v194;
          v150 = v78;
        }

        else
        {
          OUTLINED_FUNCTION_97();
          v148 = v197;
          v149 = v197;
          v150 = v79;
          v152 = v151;
        }

        v147(v149, v150, v72);
        v71(v0, v148, v72);
        v164 = SISchemaUUID.__allocating_init(nsuuid:)(v0);
        OUTLINED_FUNCTION_40_2(v164, sel_setTrpId_);

        (*(v152 + 8))(v148, v72);
        v83 = v202;
        goto LABEL_38;
      }

      v72 = v207;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v131 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v131, static Logger.common);
      v132 = OUTLINED_FUNCTION_55_1();
      v133(v132, v208, v72);
      v134 = v198;
      outlined init with copy of UUID?(v206, v198);
      v135 = v209;

      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v136, v137))
      {

        outlined destroy of UUID?(v134);
        v156 = *(v69 + 8);
        v154 = v2;
LABEL_44:
        v155 = v72;
        goto LABEL_45;
      }

      LODWORD(v206) = v137;
      v208 = v136;
      OUTLINED_FUNCTION_62_1();
      v204 = OUTLINED_FUNCTION_39_2();
      v211[0] = v204;
      *v137 = 136315906;
      v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
      v138 = OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_61_1(v138, v139);
      OUTLINED_FUNCTION_53_1();
      *(v137 + 4) = v18;
      *(v137 + 12) = 2080;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_66_0();
      v140 = *(v69 + 8);
      v140(v2, v72);
      v141 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v18, v142);
      OUTLINED_FUNCTION_49_2();

      *(v137 + 14) = v2;
      *(v137 + 22) = 2080;
      v143 = OUTLINED_FUNCTION_36_0();
      v144 = v198;
      *(v137 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v135, v145);
      *(v137 + 32) = 2080;
      v146 = v195;
      outlined init with copy of UUID?(v144, v195);
      OUTLINED_FUNCTION_32_3(v146, 1, v72);
      if (v80)
      {
        outlined destroy of UUID?(v146);
        OUTLINED_FUNCTION_98();
      }

      else
      {
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_99();
        v140(v146, v72);
      }

      v186 = outlined destroy of UUID?(v144);
      OUTLINED_FUNCTION_111(v186, v187, v211);
      OUTLINED_FUNCTION_53_1();
      *(v137 + 34) = v18;
      OUTLINED_FUNCTION_22_5();
      _os_log_impl(v188, v189, v190, v191, v192, 0x2Au);
      OUTLINED_FUNCTION_57_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
    }

    else
    {
      v105 = v43;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v106 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v106, static Logger.common);
      v107 = OUTLINED_FUNCTION_86(v43);
      v108(v107);
      v109 = v203;
      outlined init with copy of UUID?(v206, v203);
      v110 = v209;

      v111 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_84();
      if (!os_log_type_enabled(v111, &off_279BD1000))
      {

        outlined destroy of UUID?(v109);
        v153 = *(v105 + 8);
        v154 = OUTLINED_FUNCTION_101();
LABEL_45:
        v156(v154, v155);
        goto LABEL_48;
      }

      LODWORD(v208) = &off_279BD1000;
      v193 = v66;
      v112 = OUTLINED_FUNCTION_62_1();
      v206 = swift_slowAlloc();
      v211[0] = v206;
      *v112 = 136315906;
      v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
      v113 = OUTLINED_FUNCTION_59_1();
      v115 = OUTLINED_FUNCTION_61_1(v113, v114);

      *(v112 + 4) = v115;
      *(v112 + 12) = 2080;
      v116 = UUID.uuidString.getter();
      v118 = v117;
      v119 = *(v105 + 8);
      v120 = OUTLINED_FUNCTION_101();
      v119(v120);
      v121 = OUTLINED_FUNCTION_23_8();
      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v118, v122);

      *(v112 + 14) = v123;
      *(v112 + 22) = 2080;
      v124 = OUTLINED_FUNCTION_36_0();
      *(v112 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v110, v125);
      *(v112 + 32) = 2080;
      v126 = v203;
      v127 = v196;
      outlined init with copy of UUID?(v203, v196);
      OUTLINED_FUNCTION_32_3(v127, 1, v18);
      if (v80)
      {
        outlined destroy of UUID?(v127);
        OUTLINED_FUNCTION_102();
      }

      else
      {
        v116 = v127;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_96();
        (v119)(v127, v18);
      }

      v181 = v193;
      outlined destroy of UUID?(v126);
      v182 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v123, v183);
      OUTLINED_FUNCTION_71();
      *(v112 + 34) = v116;
      OUTLINED_FUNCTION_74(&dword_266790000, v184, v185, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s");
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }
  }

  else
  {
    v202 = v18;
    v203 = v40;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v84 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v84, static Logger.common);
    v85 = OUTLINED_FUNCTION_63_0();
    v63(v85);
    (v63)(v3, v204, v0);
    v86 = v203;
    outlined init with copy of UUID?(v206, v203);
    v87 = v209;

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_106();
      v204 = OUTLINED_FUNCTION_110();
      v211[0] = v204;
      *v90 = 136316162;
      v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
      v91 = OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_61_1(v91, v92);
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_46_2();
      v93 = *(v43 + 8);
      v94 = OUTLINED_FUNCTION_42_1();
      v93(v94);
      v95 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v40, v96);
      OUTLINED_FUNCTION_20_5();
      v97 = v203;

      *(v90 + 14) = v88;
      *(v90 + 22) = v86;
      v98 = OUTLINED_FUNCTION_36_0();
      *(v90 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v87, v99);
      *(v90 + 32) = v86;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v100 = OUTLINED_FUNCTION_44_2();
      v93(v100);
      v101 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v1, v102);
      OUTLINED_FUNCTION_48_2();

      OUTLINED_FUNCTION_71_0();
      v103 = OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_32_3(v103, v104, v0);
      if (v80)
      {
        outlined destroy of UUID?(v86);
        v1 = 0;
        v157 = 0xE000000000000000;
      }

      else
      {
        v157 = v86;
        UUID.uuidString.getter();
        v158 = OUTLINED_FUNCTION_93();
        v93(v158);
      }

      outlined destroy of UUID?(v97);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v157, v211);
      OUTLINED_FUNCTION_69();
      *(v90 + 44) = v1;
      OUTLINED_FUNCTION_22_5();
      _os_log_impl(v159, v160, v161, v162, v163, 0x34u);
      OUTLINED_FUNCTION_57_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
      goto LABEL_42;
    }

    outlined destroy of UUID?(v86);
    v128 = *(v43 + 8);
    v129 = OUTLINED_FUNCTION_44_2();
    v128(v129);
    v130 = OUTLINED_FUNCTION_42_1();
    v128(v130);
  }

LABEL_48:
  OUTLINED_FUNCTION_45_0();
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA08AutoSendH6LoggerV_Tt5B5()
{
  OUTLINED_FUNCTION_44_1();
  v192 = v5;
  v198 = v6;
  v199 = v7;
  v201 = v8;
  v202 = v9;
  v197 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_3();
  v188 = v19;
  OUTLINED_FUNCTION_6();
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_14(v21, v22, v23, v24, v25, v26, v27, v28, v186);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_3();
  v190 = v30;
  OUTLINED_FUNCTION_6();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v186 - v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_3();
  v191 = v35;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_3();
  v196 = v37;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v38);
  v40 = (&v186 - v39);
  v200 = type metadata accessor for UUID();
  v41 = OUTLINED_FUNCTION_22(v200);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5();
  v193 = v46;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_3();
  v186 = v48;
  OUTLINED_FUNCTION_6();
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_9_13(v50, v51, v52, v53, v54, v55, v56, v57, v186);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_31_3();
  v63 = [objc_allocWithZone(MEMORY[0x277D56C68]) init];
  if (v63)
  {
    v64 = v63;
    v65 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    v194 = v64;
    [v65 setRequestReceived_];
    v195 = v65;
    if (v65)
    {
      v66 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v67 = v43;
      if (v66)
      {
        v68 = v66;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v69 = *(v43 + 16);
        v70 = v200;
        v69(v1, v201, v200);
        v71 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
        OUTLINED_FUNCTION_81(v71, sel_setCamId_);

        v72 = MEMORY[0x26D5DCC90](v198, v202);
        OUTLINED_FUNCTION_81(v72, sel_setResultCandidateId_);

        [v68 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v69(v1, v197, v70);
          v73 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_81(v73, sel_setSubRequestId_);
        }

        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20();
        }

        v74 = specialized Dictionary.subscript.getter(v192, kLoggingFeatureName._rawValue);
        if ((v74 & 0x100000000) == 0)
        {
          [v68 setFeature_];
        }

        outlined init with copy of UUID?(v199, v34);
        OUTLINED_FUNCTION_32_3(v34, 1, v70);
        v196 = v69;
        if (v75)
        {
          outlined destroy of UUID?(v34);
          v76 = v190;
          UUID.init(uuidString:)();
          v77 = OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_32_3(v77, v78, v70);
          if (v75)
          {
            outlined destroy of UUID?(v76);
          }

          else
          {
            v34 = v186;
            (*(v67 + 32))(v186, v76, v70);
            v163 = OUTLINED_FUNCTION_91();
            (v69)(v163);
            v164 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
            OUTLINED_FUNCTION_81(v164, sel_setTrpId_);

            (*(v67 + 8))(v34, v70);
          }
        }

        else
        {
          v142 = *(v67 + 32);
          v143 = v67;
          v144 = v189;
          v145 = OUTLINED_FUNCTION_89();
          v146(v145);
          v69(v1, v144, v70);
          v147 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_81(v147, sel_setTrpId_);

          v148 = v144;
          v67 = v143;
          (*(v143 + 8))(v148, v70);
        }

        v165 = v193;
        v166 = v195;
        [v195 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v167 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v167, static Logger.common);
        v196(v165, v201, v70);

        v81 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_76())
        {
          OUTLINED_FUNCTION_11();
          v204[0] = OUTLINED_FUNCTION_52_2();
          *v70 = 136315650;
          v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
          v168 = OUTLINED_FUNCTION_59_1();
          OUTLINED_FUNCTION_61_1(v168, v169);
          OUTLINED_FUNCTION_72();
          *(v70 + 4) = v34;
          *(v70 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_46_2();
          (*(v67 + 8))(v165, v200);
          v170 = OUTLINED_FUNCTION_23_8();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v34, v171);
          OUTLINED_FUNCTION_20_5();

          *(v70 + 14) = v165;
          *(v70 + 22) = 2080;
          v172 = OUTLINED_FUNCTION_36_0();
          *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v202, v173);
          OUTLINED_FUNCTION_21_5();
          _os_log_impl(v174, v175, v176, v177, v178, 0x20u);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_0_8();

LABEL_41:
          goto LABEL_46;
        }

        v162 = *(v67 + 8);
        v160 = v165;
        v161 = v70;
LABEL_43:
        v162(v160, v161);
        goto LABEL_46;
      }

      v123 = v200;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v124 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v124, static Logger.common);
      v125 = OUTLINED_FUNCTION_55_1();
      v126(v125, v201, v123);
      v127 = v191;
      outlined init with copy of UUID?(v199, v191);
      v128 = v202;

      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();

      if (!OUTLINED_FUNCTION_114())
      {

        outlined destroy of UUID?(v127);
        v159 = *(v67 + 8);
        v160 = OUTLINED_FUNCTION_69_0();
        goto LABEL_43;
      }

      LODWORD(v201) = v130;
      OUTLINED_FUNCTION_62_1();
      v199 = OUTLINED_FUNCTION_39_2();
      v204[0] = v199;
      *v127 = 136315906;
      v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
      v131 = OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_61_1(v131, v132);
      OUTLINED_FUNCTION_53_1();
      *(v127 + 4) = v40;
      *(v127 + 12) = 2080;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_66_0();
      v133 = *(v67 + 8);
      v134 = OUTLINED_FUNCTION_69_0();
      v133(v134);
      v135 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v40, v136);
      OUTLINED_FUNCTION_49_2();

      *(v127 + 14) = v3;
      *(v127 + 22) = 2080;
      v137 = OUTLINED_FUNCTION_36_0();
      v138 = v128;
      v139 = v191;
      *(v127 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v140);
      *(v127 + 32) = 2080;
      v141 = v187;
      outlined init with copy of UUID?(v139, v187);
      OUTLINED_FUNCTION_32_3(v141, 1, v123);
      if (v75)
      {
        outlined destroy of UUID?(v141);
        OUTLINED_FUNCTION_98();
      }

      else
      {
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_99();
        v183 = OUTLINED_FUNCTION_69_0();
        v133(v183);
      }

      v184 = outlined destroy of UUID?(v139);
      OUTLINED_FUNCTION_111(v184, v185, v204);
      OUTLINED_FUNCTION_53_1();
      *(v127 + 34) = v40;
      OUTLINED_FUNCTION_29_4(&dword_266790000, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v201);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
    }

    else
    {
      v100 = v43;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v101 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v101, static Logger.common);
      v102 = OUTLINED_FUNCTION_86(v43);
      v103(v102);
      v104 = v196;
      outlined init with copy of UUID?(v199, v196);
      v105 = v202;

      v106 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_84();
      if (os_log_type_enabled(v106, &off_279BD1000))
      {
        LODWORD(v201) = &off_279BD1000;
        v107 = OUTLINED_FUNCTION_62_1();
        v199 = swift_slowAlloc();
        v204[0] = v199;
        *v107 = 136315906;
        v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
        v108 = OUTLINED_FUNCTION_59_1();
        OUTLINED_FUNCTION_61_1(v108, v109);
        OUTLINED_FUNCTION_72();
        *(v107 + 4) = v34;
        *(v107 + 12) = 2080;
        v110 = v0;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_46_2();
        v111 = *(v100 + 8);
        v112 = OUTLINED_FUNCTION_101();
        v111(v112);
        v113 = OUTLINED_FUNCTION_23_8();
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v34, v114);
        v116 = v196;

        *(v107 + 14) = v115;
        *(v107 + 22) = 2080;
        v117 = OUTLINED_FUNCTION_36_0();
        *(v107 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v105, v118);
        *(v107 + 32) = 2080;
        v119 = v188;
        outlined init with copy of UUID?(v116, v188);
        OUTLINED_FUNCTION_32_3(v119, 1, v40);
        if (v75)
        {
          outlined destroy of UUID?(v119);
          OUTLINED_FUNCTION_102();
        }

        else
        {
          v110 = v119;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_96();
          (v111)(v119, v40);
        }

        outlined destroy of UUID?(v116);
        v179 = OUTLINED_FUNCTION_23_8();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v115, v180);
        OUTLINED_FUNCTION_71();
        *(v107 + 34) = v110;
        OUTLINED_FUNCTION_74(&dword_266790000, v181, v182, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s");
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_3_1();
      }

      else
      {

        outlined destroy of UUID?(v104);
        v149 = *(v100 + 8);
        v150 = OUTLINED_FUNCTION_101();
        v151(v150);
      }
    }
  }

  else
  {
    v195 = v17;
    v196 = v40;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v79 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v79, static Logger.common);
    v80 = OUTLINED_FUNCTION_63_0();
    (v17)(v80);
    (v17)(v4, v197, v1);
    v81 = v196;
    outlined init with copy of UUID?(v199, v196);
    v82 = v202;

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = OUTLINED_FUNCTION_106();
      v197 = OUTLINED_FUNCTION_110();
      v204[0] = v197;
      *v85 = 136316162;
      v203 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
      v86 = OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_61_1(v86, v87);
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_46_2();
      v88 = *(v43 + 8);
      v89 = OUTLINED_FUNCTION_42_1();
      v88(v89);
      v90 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v34, v91);
      OUTLINED_FUNCTION_20_5();
      v92 = v196;

      *(v85 + 14) = v83;
      *(v85 + 22) = v81;
      v93 = OUTLINED_FUNCTION_36_0();
      *(v85 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v82, v94);
      *(v85 + 32) = v81;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v95 = OUTLINED_FUNCTION_44_2();
      v88(v95);
      v96 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v2, v97);
      OUTLINED_FUNCTION_48_2();

      OUTLINED_FUNCTION_71_0();
      v98 = OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_32_3(v98, v99, v1);
      if (v75)
      {
        outlined destroy of UUID?(v81);
        v2 = 0;
        v152 = 0xE000000000000000;
      }

      else
      {
        v152 = v81;
        UUID.uuidString.getter();
        v153 = OUTLINED_FUNCTION_93();
        v88(v153);
      }

      outlined destroy of UUID?(v92);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v152, v204);
      OUTLINED_FUNCTION_69();
      *(v85 + 44) = v2;
      OUTLINED_FUNCTION_22_5();
      _os_log_impl(v154, v155, v156, v157, v158, 0x34u);
      OUTLINED_FUNCTION_57_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
      goto LABEL_41;
    }

    outlined destroy of UUID?(v81);
    v120 = *(v43 + 8);
    v121 = OUTLINED_FUNCTION_44_2();
    v120(v121);
    v122 = OUTLINED_FUNCTION_42_1();
    v120(v122);
  }

LABEL_46:
  OUTLINED_FUNCTION_45_0();
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA22AutoSendResponseLoggerV_Tt5B5()
{
  OUTLINED_FUNCTION_44_1();
  v180 = v5;
  v187 = v7;
  v188 = v6;
  v186 = v8;
  v189 = v9;
  v184 = v10;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_14(v22, v23, v24, v25, v26, v27, v28, v29, v172);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_3();
  v179 = v31;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_3();
  v178 = v33;
  OUTLINED_FUNCTION_6();
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_13(v35, v36, v37, v38, v39, v40, v41, v42, v172);
  MEMORY[0x28223BE20](v43);
  v185 = &v172 - v44;
  v45 = type metadata accessor for UUID();
  v190 = OUTLINED_FUNCTION_22(v45);
  v191 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_5();
  v182 = v49;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_31_3();
  v57 = one-time initialization token for kCamActionMap;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_34_0();
  }

  rawValue = kCamActionMap._rawValue;
  LOBYTE(v192) = *(v14 + 57);
  lazy protocol witness table accessor for type AutoConfirmAction and conformance AutoConfirmAction();
  AnyHashable.init<A>(_:)();
  v59 = specialized Dictionary.subscript.getter(v193, rawValue);
  outlined destroy of AnyHashable(v193);
  v60 = *(v14 + 40);
  v61 = *(v14 + 48);

  v62 = _s7SiriCam0B15LoggingProtocolPAASo29CAMSchemaCAMResponseGeneratedC18DestinationMessageRczrlE3map6action18responseStatusCode8enforcerAESgSo0E9CAMActionVSg_AA0b8ResponsemN0OSSSgtFZAA08AutoSendQ6LoggerV_Tt2B5_0(v59 | ((HIDWORD(v59) & 1) << 32), v12, v60, v61);

  if (v62)
  {
    v63 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    [v63 setResponseGenerated_];
    if (v63)
    {
      v64 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v65 = v190;
      v66 = v188;
      if (v64)
      {
        v67 = v64;
        v185 = v63;
        v177 = v62;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v68 = v191 + 16;
        v69 = v189;
        v183 = *(v191 + 16);
        v183(v1, v189, v65);
        v70 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
        OUTLINED_FUNCTION_40_2(v70, sel_setCamId_);

        v71 = MEMORY[0x26D5DCC90](v186, v66);
        OUTLINED_FUNCTION_40_2(v71, sel_setResultCandidateId_);

        [v67 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v183(v1, v184, v65);
          v72 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_40_2(v72, sel_setSubRequestId_);
        }

        v73 = v182;
        v74 = v179;
        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20();
        }

        v75 = specialized Dictionary.subscript.getter(v180, kLoggingFeatureName._rawValue);
        v76 = v181;
        if ((v75 & 0x100000000) == 0)
        {
          [v67 setFeature_];
        }

        outlined init with copy of UUID?(v187, v74);
        OUTLINED_FUNCTION_4_14(v74);
        if (v77)
        {
          outlined destroy of UUID?(v74);
          UUID.init(uuidString:)();
          OUTLINED_FUNCTION_4_14(v76);
          if (v77)
          {
            outlined destroy of UUID?(v76);
          }

          else
          {
            OUTLINED_FUNCTION_70_0();
            v73 = v173;
            v143(v173, v76, v65);
            v144 = OUTLINED_FUNCTION_92();
            v145(v144);
            v146 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
            OUTLINED_FUNCTION_40_2(v146, sel_setTrpId_);

            v147 = *(v74 + 8);
            v148 = OUTLINED_FUNCTION_68_0();
            v149(v148);
          }
        }

        else
        {
          OUTLINED_FUNCTION_70_0();
          v73 = v176;
          v131(v176);
          v132 = OUTLINED_FUNCTION_92();
          v133(v132);
          v134 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
          OUTLINED_FUNCTION_40_2(v134, sel_setTrpId_);

          v135 = *(v74 + 8);
          v136 = OUTLINED_FUNCTION_68_0();
          v137(v136);
        }

        v150 = v185;
        [v185 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v151 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v151, static Logger.common);
        v183(v73, v69, v65);

        v98 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_76())
        {
          OUTLINED_FUNCTION_11();
          v193[0] = OUTLINED_FUNCTION_52_2();
          *v68 = 136315650;
          v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v152 = OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_60_1(v152, v153);
          OUTLINED_FUNCTION_72();
          *(v68 + 4) = v65;
          *(v68 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_46_2();
          (*(v191 + 8))(v73, v65);
          v154 = OUTLINED_FUNCTION_27_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v65, v155);
          OUTLINED_FUNCTION_20_5();

          OUTLINED_FUNCTION_94();
          *(v68 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v66, v156);
          OUTLINED_FUNCTION_21_5();
          _os_log_impl(v157, v158, v159, v160, v161, 0x20u);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_0_8();
          OUTLINED_FUNCTION_87();

          v163 = v185;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_87();
        (*(v191 + 8))(v73, v65);
      }

      else
      {
        v118 = v189;
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v119 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v119, static Logger.common);
        v120 = v191;
        (*(v191 + 16))(v4, v118, v65);
        v121 = v178;
        outlined init with copy of UUID?(v187, v178);

        v122 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_84();
        if (OUTLINED_FUNCTION_114())
        {
          LODWORD(v189) = v14;
          v185 = v63;
          v177 = v62;
          OUTLINED_FUNCTION_62_1();
          v187 = OUTLINED_FUNCTION_39_2();
          v193[0] = v187;
          *v121 = 136315906;
          v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v123 = OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_60_1(v123, v124);
          OUTLINED_FUNCTION_53_1();
          *(v121 + 4) = v62;
          *(v121 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_66_0();
          v125 = *(v120 + 8);
          v126 = OUTLINED_FUNCTION_89();
          v125(v126);
          v127 = OUTLINED_FUNCTION_27_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v62, v128);
          OUTLINED_FUNCTION_49_2();

          *(v121 + 14) = v4;
          *(v121 + 22) = 2080;
          *(v121 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v66, v193);
          *(v121 + 32) = 2080;
          v129 = v178;
          v130 = v174;
          outlined init with copy of UUID?(v178, v174);
          OUTLINED_FUNCTION_4_14(v130);
          if (v77)
          {
            outlined destroy of UUID?(v130);
            OUTLINED_FUNCTION_98();
          }

          else
          {
            UUID.uuidString.getter();
            OUTLINED_FUNCTION_99();
            (v125)(v130, v65);
          }

          v169 = outlined destroy of UUID?(v129);
          OUTLINED_FUNCTION_111(v169, v170, v193);
          OUTLINED_FUNCTION_53_1();
          *(v121 + 34) = v62;
          OUTLINED_FUNCTION_29_4(&dword_266790000, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v189);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_19_11();
          OUTLINED_FUNCTION_20_11();
          OUTLINED_FUNCTION_87();
        }

        else
        {

          outlined destroy of UUID?(v121);
          v140 = *(v120 + 8);
          v141 = OUTLINED_FUNCTION_89();
          v142(v141);
        }
      }
    }

    else
    {
      v102 = v190;
      v103 = v188;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v104 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v104, static Logger.common);
      v105 = v191;
      v106 = OUTLINED_FUNCTION_55_1();
      v107(v106, v189, v102);
      v108 = v183;
      outlined init with copy of UUID?(v187, v183);

      v98 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_84();
      if (OUTLINED_FUNCTION_114())
      {
        LODWORD(v189) = v14;
        v177 = v62;
        OUTLINED_FUNCTION_62_1();
        v187 = OUTLINED_FUNCTION_39_2();
        v193[0] = v187;
        *v102 = 136315906;
        v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
        v109 = OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_60_1(v109, v110);
        OUTLINED_FUNCTION_69();
        *(v102 + 4) = v103;
        *(v102 + 12) = 2080;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_47_2();
        v111 = *(v105 + 8);
        v111(v3, v190);
        v112 = OUTLINED_FUNCTION_27_3();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v103, v113);
        OUTLINED_FUNCTION_48_2();

        *(v102 + 14) = v3;
        *(v102 + 22) = 2080;
        *(v102 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v103, v193);
        *(v102 + 32) = 2080;
        v114 = v175;
        outlined init with copy of UUID?(v108, v175);
        OUTLINED_FUNCTION_4_14(v114);
        if (v77)
        {
          outlined destroy of UUID?(v114);
          v165 = 0;
          v167 = 0xE000000000000000;
        }

        else
        {
          v165 = UUID.uuidString.getter();
          v167 = v166;
          v168 = OUTLINED_FUNCTION_91();
          (v111)(v168);
        }

        outlined destroy of UUID?(v183);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v167, v193);
        OUTLINED_FUNCTION_69();
        *(v102 + 34) = v165;
        OUTLINED_FUNCTION_29_4(&dword_266790000, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s", v189);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_87();
        goto LABEL_45;
      }

      outlined destroy of UUID?(v108);
      (*(v105 + 8))(v3, v102);
    }
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v78 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v78, static Logger.common);
    v79 = v190;
    v80 = v191;
    v81 = *(v191 + 16);
    v81(v2, v189, v190);
    v81(v0, v184, v79);
    v82 = v185;
    outlined init with copy of UUID?(v187, v185);
    v83 = v188;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      LODWORD(v187) = v85;
      v189 = v84;
      v86 = swift_slowAlloc();
      v184 = OUTLINED_FUNCTION_110();
      v193[0] = v184;
      *v86 = 136316162;
      v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
      v87 = OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_60_1(v87, v88);
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_66_0();
      v89 = *(v80 + 8);
      v90 = OUTLINED_FUNCTION_41_0();
      v89(v90);
      v91 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, 0, v92);
      OUTLINED_FUNCTION_49_2();
      v93 = v185;

      *(v86 + 14) = v84;
      *(v86 + 22) = v4;
      *(v86 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v83, v193);
      *(v86 + 32) = v4;
      v94 = v0;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v95 = OUTLINED_FUNCTION_100();
      v89(v95);
      v96 = OUTLINED_FUNCTION_27_3();
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v2, v97);

      v99 = OUTLINED_FUNCTION_103();
      v101 = *(v100 - 256);
      outlined init with copy of UUID?(v99, v101);
      OUTLINED_FUNCTION_4_14(v101);
      if (v77)
      {
        outlined destroy of UUID?(v101);
        OUTLINED_FUNCTION_102();
      }

      else
      {
        v94 = v101;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_96();
        (v89)(v101, v79);
      }

      outlined destroy of UUID?(v93);
      v138 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v98, v139);
      OUTLINED_FUNCTION_71();
      *(v86 + 44) = v94;
      OUTLINED_FUNCTION_78(&dword_266790000, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v187);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_0_8();
      goto LABEL_46;
    }

    outlined destroy of UUID?(v82);
    v115 = *(v80 + 8);
    v116 = OUTLINED_FUNCTION_100();
    v115(v116);
    v117 = OUTLINED_FUNCTION_41_0();
    v115(v117);
  }

LABEL_47:
  OUTLINED_FUNCTION_45_0();
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA017UncertaintyPromptH6LoggerV_Tt5B5(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v160 = a7;
  v168 = a6;
  v169 = a5;
  v166 = a2;
  v167 = a4;
  v170 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v156 = &v154 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v154 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v161 = &v154 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v159 = &v154 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v158 = &v154 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v165 = (&v154 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = (&v154 - v25);
  v27 = type metadata accessor for UUID();
  isa = v27[-1].isa;
  v29 = *(isa + 8);
  v30 = MEMORY[0x28223BE20](v27);
  v162 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v154 = &v154 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v157 = &v154 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v154 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v154 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v154 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v154 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v154 - v48;
  v50 = static UncertaintyPromptRequestLogger.map(from:)(a1);
  if (!v50)
  {
    v164 = v12;
    v165 = v26;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.common);
    v63 = *(isa + 2);
    v64 = v27;
    v63(v49, v170, v27);
    v63(v47, v166, v27);
    v65 = v165;
    outlined init with copy of UUID?(v168, v165);
    v66 = v169;

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v67, v68))
    {

      outlined destroy of UUID?(v65);
      v105 = *(isa + 1);
      v105(v47, v64);
      v105(v49, v64);
      return;
    }

    LODWORD(v168) = v68;
    v170 = v67;
    v69 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v172[0] = v166;
    *v69 = 136316162;
    v171 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
    v70 = String.init<A>(describing:)();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v172);

    *(v69 + 4) = v72;
    *(v69 + 12) = 2080;
    v73 = UUID.uuidString.getter();
    v75 = v74;
    v76 = *(isa + 1);
    v76(v49, v64);
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v172);
    v78 = v165;

    *(v69 + 14) = v77;
    *(v69 + 22) = 2080;
    *(v69 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v66, v172);
    *(v69 + 32) = 2080;
    v79 = UUID.uuidString.getter();
    v81 = v80;
    v76(v47, v64);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v172);

    *(v69 + 34) = v82;
    *(v69 + 42) = 2080;
    v83 = v164;
    outlined init with copy of UUID?(v78, v164);
    if (__swift_getEnumTagSinglePayload(v83, 1, v64) == 1)
    {
      outlined destroy of UUID?(v83);
      v84 = 0;
      v85 = 0xE000000000000000;
    }

    else
    {
      v84 = UUID.uuidString.getter();
      v85 = v128;
      v76(v83, v64);
    }

    outlined destroy of UUID?(v78);
    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v172);

    *(v69 + 44) = v129;
    v130 = v170;
    _os_log_impl(&dword_266790000, v170, v168, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v69, 0x34u);
    v131 = v166;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v131, -1, -1);
    MEMORY[0x26D5DDCD0](v69, -1, -1);
    goto LABEL_39;
  }

  v51 = v50;
  v52 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
  v163 = v51;
  [v52 setRequestReceived_];
  v164 = v52;
  if (v52)
  {
    v53 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
    v54 = isa;
    if (v53)
    {
      v55 = v53;
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
      v165 = *(isa + 2);
      (v165)(v41, v170, v27);
      v56 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v55 setCamId_];

      v57 = MEMORY[0x26D5DCC90](v167, v169);
      [v55 setResultCandidateId_];

      [v55 setRequestId_];
      if (AFDeviceSupportsSAE())
      {
        (v165)(v41, v166, v27);
        v58 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
        [v55 setSubRequestId_];
      }

      v59 = v159;
      if (one-time initialization token for kLoggingFeatureName != -1)
      {
        swift_once();
      }

      v60 = specialized Dictionary.subscript.getter(v160, kLoggingFeatureName._rawValue);
      v61 = v161;
      if ((v60 & 0x100000000) == 0)
      {
        [v55 setFeature_];
      }

      outlined init with copy of UUID?(v168, v59);
      if (__swift_getEnumTagSinglePayload(v59, 1, v27) == 1)
      {
        outlined destroy of UUID?(v59);
        UUID.init(uuidString:)();
        if (__swift_getEnumTagSinglePayload(v61, 1, v27) == 1)
        {
          outlined destroy of UUID?(v61);
        }

        else
        {
          v132 = v154;
          (*(isa + 4))(v154, v61, v27);
          (v165)(v41, v132, v27);
          v133 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
          [v55 setTrpId_];

          (*(isa + 1))(v132, v27);
        }
      }

      else
      {
        v126 = v157;
        (*(isa + 4))(v157, v59, v27);
        (v165)(v41, v126, v27);
        v127 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
        [v55 setTrpId_];

        (*(isa + 1))(v126, v27);
      }

      v134 = v162;
      v135 = v164;
      [v164 setEventMetadata_];
      [objc_msgSend(objc_opt_self() sharedStream)];
      swift_unknownObjectRelease();
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for Logger();
      __swift_project_value_buffer(v136, static Logger.common);
      (v165)(v134, v170, v27);

      v130 = Logger.logObject.getter();
      v137 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v130, v137))
      {
        v138 = swift_slowAlloc();
        v170 = v27;
        v139 = v138;
        v140 = swift_slowAlloc();
        v172[0] = v140;
        *v139 = 136315650;
        v171 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
        v141 = String.init<A>(describing:)();
        v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v172);

        *(v139 + 4) = v143;
        *(v139 + 12) = 2080;
        v144 = UUID.uuidString.getter();
        v146 = v145;
        (*(v54 + 1))(v134, v170);
        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, v172);

        *(v139 + 14) = v147;
        *(v139 + 22) = 2080;
        *(v139 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, v172);
        _os_log_impl(&dword_266790000, v130, v137, "Successfully emitted log message : %s for camId : %s, rcId: %s", v139, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v140, -1, -1);
        MEMORY[0x26D5DDCD0](v139, -1, -1);

LABEL_39:
        return;
      }

      (*(isa + 1))(v134, v27);
    }

    else
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      __swift_project_value_buffer(v106, static Logger.common);
      (*(isa + 2))(v38, v170, v27);
      v107 = v158;
      outlined init with copy of UUID?(v168, v158);
      v108 = v169;

      v109 = Logger.logObject.getter();
      v110 = v27;
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v109, v111))
      {
        LODWORD(v170) = v111;
        v112 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v172[0] = v168;
        *v112 = 136315906;
        v171 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
        v113 = String.init<A>(describing:)();
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v172);

        *(v112 + 4) = v115;
        *(v112 + 12) = 2080;
        v116 = UUID.uuidString.getter();
        v118 = v117;
        v119 = *(v54 + 1);
        v119(v38, v110);
        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, v172);

        *(v112 + 14) = v120;
        *(v112 + 22) = 2080;
        v121 = v108;
        v122 = v158;
        *(v112 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v121, v172);
        *(v112 + 32) = 2080;
        v123 = v155;
        outlined init with copy of UUID?(v122, v155);
        if (__swift_getEnumTagSinglePayload(v123, 1, v110) == 1)
        {
          outlined destroy of UUID?(v123);
          v124 = 0;
          v125 = 0xE000000000000000;
        }

        else
        {
          v124 = UUID.uuidString.getter();
          v125 = v151;
          v119(v123, v110);
        }

        outlined destroy of UUID?(v122);
        v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v172);

        *(v112 + 34) = v152;
        _os_log_impl(&dword_266790000, v109, v170, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v112, 0x2Au);
        v153 = v168;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v153, -1, -1);
        MEMORY[0x26D5DDCD0](v112, -1, -1);
      }

      else
      {

        outlined destroy of UUID?(v107);
        (*(v54 + 1))(v38, v27);
      }
    }
  }

  else
  {
    v86 = isa;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static Logger.common);
    (*(isa + 2))(v44, v170, v27);
    v88 = v165;
    outlined init with copy of UUID?(v168, v165);
    v89 = v169;

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      LODWORD(v170) = v91;
      v92 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v172[0] = v168;
      *v92 = 136315906;
      v171 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMRequestReceived, 0x277D56C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAMSchemaCAMRequestReceivedCmMd, &_sSo27CAMSchemaCAMRequestReceivedCmMR);
      v93 = String.init<A>(describing:)();
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v172);

      *(v92 + 4) = v95;
      *(v92 + 12) = 2080;
      v96 = UUID.uuidString.getter();
      v98 = v97;
      v99 = *(v86 + 1);
      v99(v44, v27);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, v172);
      v101 = v165;

      *(v92 + 14) = v100;
      *(v92 + 22) = 2080;
      *(v92 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v89, v172);
      *(v92 + 32) = 2080;
      v102 = v156;
      outlined init with copy of UUID?(v101, v156);
      if (__swift_getEnumTagSinglePayload(v102, 1, v27) == 1)
      {
        outlined destroy of UUID?(v102);
        v103 = 0;
        v104 = 0xE000000000000000;
      }

      else
      {
        v103 = UUID.uuidString.getter();
        v104 = v148;
        v99(v102, v27);
      }

      outlined destroy of UUID?(v101);
      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v172);

      *(v92 + 34) = v149;
      _os_log_impl(&dword_266790000, v90, v170, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s", v92, 0x2Au);
      v150 = v168;
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v150, -1, -1);
      MEMORY[0x26D5DDCD0](v92, -1, -1);
    }

    else
    {

      outlined destroy of UUID?(v88);
      (*(v86 + 1))(v44, v27);
    }
  }
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA31UncertaintyPromptResponseLoggerV_Tt5B5(uint64_t a1, char a2, uint64_t a3, NSObject *a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v181 = a8;
  v188 = a7;
  v189 = a6;
  v187 = a5;
  v190 = a4;
  v185 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v178 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v176 = &v173 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v175 = &v173 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v182 = &v173 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v180 = &v173 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v179 = &v173 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v184 = (&v173 - v25);
  MEMORY[0x28223BE20](v24);
  v186 = &v173 - v26;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v191 = v27;
  v192 = v28;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v183 = &v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v174 = &v173 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v177 = &v173 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v173 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v173 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v173 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v173 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v173 - v48;
  v50 = one-time initialization token for kCamActionMap;

  if (v50 != -1)
  {
    swift_once();
  }

  rawValue = kCamActionMap._rawValue;
  LOBYTE(v193) = *(a1 + 56);
  lazy protocol witness table accessor for type CamAction and conformance CamAction();
  AnyHashable.init<A>(_:)();
  v52 = specialized Dictionary.subscript.getter(v194, rawValue);
  outlined destroy of AnyHashable(v194);
  v53 = *(a1 + 40);
  v54 = *(a1 + 48);

  v55 = _s7SiriCam0B15LoggingProtocolPAASo29CAMSchemaCAMResponseGeneratedC18DestinationMessageRczrlE3map6action18responseStatusCode8enforcerAESgSo0E9CAMActionVSg_AA0b8ResponsemN0OSSSgtFZAA08AutoSendQ6LoggerV_Tt2B5_0(v52 | ((HIDWORD(v52) & 1) << 32), a2, v53, v54);

  if (!v55)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.common);
    v70 = v191;
    v71 = v192;
    v72 = *(v192 + 16);
    v72(v49, v190, v191);
    v72(v47, v185, v70);
    v73 = v186;
    outlined init with copy of UUID?(v188, v186);
    v74 = v189;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v75, v76))
    {

      outlined destroy of UUID?(v73);
      v115 = *(v71 + 8);
      v115(v47, v70);
      v115(v49, v70);
      return;
    }

    LODWORD(v188) = v76;
    v190 = v75;
    v77 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v194[0] = v185;
    *v77 = 136316162;
    v193 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v78 = String.init<A>(describing:)();
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v194);

    *(v77 + 4) = v80;
    *(v77 + 12) = 2080;
    v81 = UUID.uuidString.getter();
    v83 = v82;
    v84 = *(v71 + 8);
    v84(v49, v70);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v194);
    v86 = v186;

    *(v77 + 14) = v85;
    *(v77 + 22) = 2080;
    *(v77 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v74, v194);
    *(v77 + 32) = 2080;
    v87 = UUID.uuidString.getter();
    v89 = v88;
    v84(v47, v70);
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v194);

    *(v77 + 34) = v90;
    *(v77 + 42) = 2080;
    v91 = v178;
    outlined init with copy of UUID?(v86, v178);
    if (__swift_getEnumTagSinglePayload(v91, 1, v70) == 1)
    {
      outlined destroy of UUID?(v91);
      v92 = 0;
      v93 = 0xE000000000000000;
    }

    else
    {
      v92 = UUID.uuidString.getter();
      v93 = v142;
      v84(v91, v70);
    }

    outlined destroy of UUID?(v86);
    v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v194);

    *(v77 + 44) = v143;
    v99 = v190;
    _os_log_impl(&dword_266790000, v190, v188, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v77, 0x34u);
    v144 = v185;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v144, -1, -1);
    MEMORY[0x26D5DDCD0](v77, -1, -1);
    goto LABEL_45;
  }

  v56 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
  [v56 setResponseGenerated_];
  if (!v56)
  {
    v94 = v191;
    v95 = v189;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    __swift_project_value_buffer(v96, static Logger.common);
    v97 = v192;
    (*(v192 + 16))(v44, v190, v94);
    v98 = v184;
    outlined init with copy of UUID?(v188, v184);

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v99, v100))
    {

      outlined destroy of UUID?(v98);
      (*(v97 + 8))(v44, v94);
      return;
    }

    LODWORD(v190) = v100;
    v178 = v55;
    v101 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v194[0] = v188;
    *v101 = 136315906;
    v193 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v102 = String.init<A>(describing:)();
    v104 = v95;
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v194);

    *(v101 + 4) = v105;
    *(v101 + 12) = 2080;
    v106 = UUID.uuidString.getter();
    v108 = v107;
    v109 = *(v97 + 8);
    v109(v44, v191);
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v194);

    *(v101 + 14) = v110;
    *(v101 + 22) = 2080;
    *(v101 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v104, v194);
    *(v101 + 32) = 2080;
    v111 = v191;
    v112 = v176;
    outlined init with copy of UUID?(v98, v176);
    if (__swift_getEnumTagSinglePayload(v112, 1, v111) == 1)
    {
      outlined destroy of UUID?(v112);
      v113 = 0;
      v114 = 0xE000000000000000;
    }

    else
    {
      v113 = UUID.uuidString.getter();
      v114 = v167;
      v109(v112, v111);
    }

    outlined destroy of UUID?(v184);
    v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v194);

    *(v101 + 34) = v168;
    _os_log_impl(&dword_266790000, v99, v190, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s", v101, 0x2Au);
    v169 = v188;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v169, -1, -1);
    MEMORY[0x26D5DDCD0](v101, -1, -1);
    v166 = v178;
LABEL_44:

LABEL_45:
    return;
  }

  v57 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
  v58 = v191;
  v59 = v189;
  if (v57)
  {
    v60 = v57;
    v186 = v56;
    v178 = v55;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v61 = v190;
    v184 = *(v192 + 16);
    (v184)(v41, v190, v58);
    v62 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
    [v60 setCamId_];

    v63 = MEMORY[0x26D5DCC90](v187, v59);
    [v60 setResultCandidateId_];

    [v60 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      (v184)(v41, v185, v58);
      v64 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v60 setSubRequestId_];
    }

    v65 = v183;
    v66 = v180;
    if (one-time initialization token for kLoggingFeatureName != -1)
    {
      swift_once();
    }

    v67 = specialized Dictionary.subscript.getter(v181, kLoggingFeatureName._rawValue);
    v68 = v182;
    if ((v67 & 0x100000000) == 0)
    {
      [v60 setFeature_];
    }

    outlined init with copy of UUID?(v188, v66);
    if (__swift_getEnumTagSinglePayload(v66, 1, v58) == 1)
    {
      outlined destroy of UUID?(v66);
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v68, 1, v58) == 1)
      {
        outlined destroy of UUID?(v68);
      }

      else
      {
        v145 = v192;
        v146 = v59;
        v147 = v65;
        v148 = v174;
        (*(v192 + 32))(v174, v68, v58);
        (v184)(v41, v148, v58);
        v149 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
        [v60 setTrpId_];

        v150 = v148;
        v65 = v147;
        v59 = v146;
        v61 = v190;
        (*(v145 + 8))(v150, v58);
      }
    }

    else
    {
      v135 = v66;
      v136 = v192;
      v137 = v59;
      v138 = v65;
      v139 = v177;
      (*(v192 + 32))(v177, v135, v58);
      (v184)(v41, v139, v58);
      v140 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v60 setTrpId_];

      v141 = v139;
      v65 = v138;
      v59 = v137;
      v61 = v190;
      (*(v136 + 8))(v141, v58);
    }

    v151 = v186;
    [v186 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v152 = type metadata accessor for Logger();
    __swift_project_value_buffer(v152, static Logger.common);
    (v184)(v65, v61, v58);

    v99 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v99, v153))
    {

      (*(v192 + 8))(v65, v58);
      return;
    }

    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v194[0] = v155;
    *v154 = 136315650;
    v193 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v156 = String.init<A>(describing:)();
    v158 = v65;
    v159 = v59;
    v160 = v58;
    v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, v194);

    *(v154 + 4) = v161;
    *(v154 + 12) = 2080;
    v162 = UUID.uuidString.getter();
    v164 = v163;
    (*(v192 + 8))(v158, v160);
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v164, v194);

    *(v154 + 14) = v165;
    *(v154 + 22) = 2080;
    *(v154 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v159, v194);
    _os_log_impl(&dword_266790000, v99, v153, "Successfully emitted log message : %s for camId : %s, rcId: %s", v154, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v155, -1, -1);
    MEMORY[0x26D5DDCD0](v154, -1, -1);

    v166 = v186;
    goto LABEL_44;
  }

  v116 = v190;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for Logger();
  __swift_project_value_buffer(v117, static Logger.common);
  v118 = v192;
  (*(v192 + 16))(v38, v116, v58);
  v119 = v179;
  outlined init with copy of UUID?(v188, v179);

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v120, v121))
  {
    LODWORD(v190) = v121;
    v186 = v56;
    v178 = v55;
    v122 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v194[0] = v188;
    *v122 = 136315906;
    v193 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
    v123 = String.init<A>(describing:)();
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, v194);

    *(v122 + 4) = v125;
    *(v122 + 12) = 2080;
    v126 = UUID.uuidString.getter();
    v128 = v127;
    v129 = *(v118 + 8);
    v129(v38, v58);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, v194);

    *(v122 + 14) = v130;
    *(v122 + 22) = 2080;
    *(v122 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v59, v194);
    *(v122 + 32) = 2080;
    v131 = v179;
    v132 = v175;
    outlined init with copy of UUID?(v179, v175);
    if (__swift_getEnumTagSinglePayload(v132, 1, v58) == 1)
    {
      outlined destroy of UUID?(v132);
      v133 = 0;
      v134 = 0xE000000000000000;
    }

    else
    {
      v133 = UUID.uuidString.getter();
      v134 = v170;
      v129(v132, v58);
    }

    outlined destroy of UUID?(v131);
    v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v194);

    *(v122 + 34) = v171;
    _os_log_impl(&dword_266790000, v120, v190, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v122, 0x2Au);
    v172 = v188;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v172, -1, -1);
    MEMORY[0x26D5DDCD0](v122, -1, -1);
  }

  else
  {

    outlined destroy of UUID?(v119);
    (*(v118 + 8))(v38, v58);
  }
}

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA29AutoSendDefaultResponseLoggerV_Tt5B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(unint64_t, void, void, void))
{
  OUTLINED_FUNCTION_44_1();
  v26 = v25;
  v214 = v27;
  v221 = v28;
  v222 = v29;
  v225 = v30;
  v223 = v31;
  v219 = v32;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  v42 = MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_14(v42, v43, v44, v45, v46, v47, v48, v49, v207);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_10_3();
  v213 = v51;
  OUTLINED_FUNCTION_6();
  v53 = MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_13(v53, v54, v55, v56, v57, v58, v59, v60, v207);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_10_3();
  v218 = v62;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v63);
  v220 = &v207 - v64;
  v224 = type metadata accessor for UUID();
  v65 = OUTLINED_FUNCTION_22(v224);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_5();
  v216 = v70;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_3();
  v212 = v75;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_31_3();
  if (one-time initialization token for kCamActionMap != -1)
  {
    OUTLINED_FUNCTION_34_0();
  }

  v79 = HIBYTE(v34);
  rawValue = kCamActionMap._rawValue;
  LOBYTE(v226) = v34;
  v26();
  AnyHashable.init<A>(_:)();
  v81 = specialized Dictionary.subscript.getter(v227, rawValue);
  outlined destroy of AnyHashable(v227);
  v82 = a22(v81 | ((HIDWORD(v81) & 1) << 32), HIBYTE(v34), 0, 0);
  if (v82)
  {
    v83 = v82;
    v84 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    [v84 setResponseGenerated_];
    v85 = v223;
    if (v84)
    {
      v86 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v87 = v224;
      if (v86)
      {
        v88 = v86;
        v220 = v83;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v217 = v67;
        v89 = *(v67 + 16);
        v90 = v212;
        v91 = OUTLINED_FUNCTION_69_0();
        v218 = v92;
        (v92)(v91);
        v93 = SISchemaUUID.__allocating_init(nsuuid:)(v90);
        OUTLINED_FUNCTION_40_2(v93, sel_setCamId_);

        v94 = MEMORY[0x26D5DCC90](v221, v225);
        OUTLINED_FUNCTION_40_2(v94, sel_setResultCandidateId_);

        [v88 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v218(v90, v219, v87);
          v95 = SISchemaUUID.__allocating_init(nsuuid:)(v90);
          OUTLINED_FUNCTION_40_2(v95, sel_setSubRequestId_);
        }

        v96 = v213;
        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20();
        }

        v97 = specialized Dictionary.subscript.getter(v214, kLoggingFeatureName._rawValue);
        v98 = v215;
        if ((v97 & 0x100000000) == 0)
        {
          [v88 setFeature_];
        }

        outlined init with copy of UUID?(v222, v96);
        OUTLINED_FUNCTION_4_14(v96);
        if (v99)
        {
          outlined destroy of UUID?(v96);
          UUID.init(uuidString:)();
          OUTLINED_FUNCTION_4_14(v98);
          if (v99)
          {
            outlined destroy of UUID?(v98);
          }

          else
          {
            v174 = v217;
            OUTLINED_FUNCTION_97();
            v175 = v207;
            v176(v207, v98, v87);
            v218(v90, v175, v87);
            v177 = SISchemaUUID.__allocating_init(nsuuid:)(v90);
            OUTLINED_FUNCTION_40_2(v177, sel_setTrpId_);

            (*(v174 + 8))(v175, v87);
          }
        }

        else
        {
          v160 = v217;
          OUTLINED_FUNCTION_97();
          v161 = v85;
          v162 = v210;
          v163(v210);
          v164 = OUTLINED_FUNCTION_69_0();
          (v218)(v164);
          v165 = SISchemaUUID.__allocating_init(nsuuid:)(v90);
          OUTLINED_FUNCTION_40_2(v165, sel_setTrpId_);

          v166 = v162;
          v85 = v161;
          (*(v160 + 8))(v166, v87);
        }

        [v84 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v178 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v178, static Logger.common);
        v179 = v216;
        v218(v216, v85, v87);
        v180 = v225;

        v120 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_76())
        {
          OUTLINED_FUNCTION_11();
          v227[0] = OUTLINED_FUNCTION_52_2();
          *v180 = 136315650;
          v226 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v181 = OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_60_1(v181, v182);
          v219 = v84;
          OUTLINED_FUNCTION_72();
          *(v180 + 4) = v87;
          v183 = v217;
          *(v180 + 12) = 2080;
          UUID.uuidString.getter();
          OUTLINED_FUNCTION_46_2();
          (*(v183 + 8))(v179, v87);
          v184 = OUTLINED_FUNCTION_27_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v87, v185);
          OUTLINED_FUNCTION_20_5();

          OUTLINED_FUNCTION_94();
          *(v180 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v225, v186);
          OUTLINED_FUNCTION_21_5();
          _os_log_impl(v187, v188, v189, v190, v191, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_0_8();

          v192 = v219;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        (*(v217 + 8))(v179, v87);
      }

      else
      {
        v219 = v84;
        v145 = v225;
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v146 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v146, static Logger.common);
        v147 = *(v67 + 16);
        v148 = v211;
        v149 = OUTLINED_FUNCTION_44_2();
        v150(v149);
        v151 = v217;
        outlined init with copy of UUID?(v222, v217);

        v152 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_84();
        if (OUTLINED_FUNCTION_114())
        {
          LODWORD(v223) = v81;
          v220 = v83;
          OUTLINED_FUNCTION_62_1();
          v222 = OUTLINED_FUNCTION_39_2();
          v227[0] = v222;
          *v151 = 136315906;
          v226 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
          v153 = OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_60_1(v153, v154);
          OUTLINED_FUNCTION_53_1();
          *(v151 + 4) = v83;
          *(v151 + 12) = 2080;
          v155 = UUID.uuidString.getter();
          v157 = v156;
          v158 = *(v67 + 8);
          v158(v148, v87);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v157, v227);
          OUTLINED_FUNCTION_49_2();

          *(v151 + 14) = v148;
          *(v151 + 22) = 2080;
          *(v151 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v145, v227);
          *(v151 + 32) = 2080;
          v159 = v208;
          outlined init with copy of UUID?(v217, v208);
          OUTLINED_FUNCTION_4_14(v159);
          if (v99)
          {
            outlined destroy of UUID?(v159);
            OUTLINED_FUNCTION_98();
          }

          else
          {
            UUID.uuidString.getter();
            OUTLINED_FUNCTION_99();
            v203 = OUTLINED_FUNCTION_41_0();
            (v158)(v203);
          }

          v204 = v219;
          v205 = outlined destroy of UUID?(v217);
          OUTLINED_FUNCTION_111(v205, v206, v227);
          OUTLINED_FUNCTION_53_1();
          *(v151 + 34) = v157;
          OUTLINED_FUNCTION_29_4(&dword_266790000, "Failed to create metadata for log event : %s, camId : %s, rcId: %s, trpId: %s", v223);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_19_11();
          OUTLINED_FUNCTION_20_11();
        }

        else
        {

          outlined destroy of UUID?(v151);
          v170 = *(v67 + 8);
          v171 = OUTLINED_FUNCTION_89();
          v173(v171, v172);
        }
      }
    }

    else
    {
      v124 = v224;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v125 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v125, static Logger.common);
      v126 = *(v67 + 16);
      v127 = OUTLINED_FUNCTION_44_2();
      v128(v127);
      v129 = v218;
      outlined init with copy of UUID?(v222, v218);
      v130 = v225;

      v120 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_76())
      {
        v220 = v83;
        v131 = OUTLINED_FUNCTION_62_1();
        v223 = swift_slowAlloc();
        v227[0] = v223;
        *v131 = 136315906;
        v226 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
        v132 = OUTLINED_FUNCTION_58_0();
        v134 = OUTLINED_FUNCTION_60_1(v132, v133);

        *(v131 + 4) = v134;
        *(v131 + 12) = 2080;
        UUID.uuidString.getter();
        v136 = v135;
        v137 = *(v67 + 8);
        v137(v24, v224);
        v138 = OUTLINED_FUNCTION_27_3();
        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v136, v139);

        *(v131 + 14) = v140;
        *(v131 + 22) = 2080;
        *(v131 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v130, v227);
        *(v131 + 32) = 2080;
        v141 = v209;
        outlined init with copy of UUID?(v218, v209);
        OUTLINED_FUNCTION_4_14(v141);
        if (v99)
        {
          outlined destroy of UUID?(v141);
          v193 = 0;
          v195 = 0xE000000000000000;
        }

        else
        {
          v193 = UUID.uuidString.getter();
          v195 = v194;
          v196 = OUTLINED_FUNCTION_41_0();
          (v137)(v196);
        }

        outlined destroy of UUID?(v218);
        v197 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v193, v195, v227);

        *(v131 + 34) = v197;
        OUTLINED_FUNCTION_21_5();
        _os_log_impl(v198, v199, v200, v201, v202, 0x2Au);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_0_8();
        v192 = v220;
        goto LABEL_45;
      }

      outlined destroy of UUID?(v129);
      (*(v67 + 8))(v24, v124);
    }
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v100 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v100, static Logger.common);
    v101 = *(v67 + 16);
    v102 = OUTLINED_FUNCTION_42_1();
    v103 = v224;
    v101(v102);
    (v101)(v22, v219, v103);
    v104 = v220;
    outlined init with copy of UUID?(v222, v220);
    v105 = v225;

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v106, v107))
    {
      LODWORD(v222) = v107;
      v223 = v106;
      v108 = swift_slowAlloc();
      v219 = OUTLINED_FUNCTION_110();
      v227[0] = v219;
      *v108 = 136316162;
      v226 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMResponseGenerated, 0x277D56C88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAMSchemaCAMResponseGeneratedCmMd, &_sSo29CAMSchemaCAMResponseGeneratedCmMR);
      v109 = OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_60_1(v109, v110);
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_66_0();
      v111 = *(v67 + 8);
      v112 = OUTLINED_FUNCTION_41_0();
      v111(v112);
      v113 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v79, v114);
      OUTLINED_FUNCTION_49_2();
      v115 = v220;

      *(v108 + 14) = v106;
      *(v108 + 22) = v24;
      *(v108 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v105, v227);
      *(v108 + 32) = v24;
      v116 = v22;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v117 = OUTLINED_FUNCTION_100();
      v111(v117);
      v118 = OUTLINED_FUNCTION_27_3();
      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v23, v119);

      v121 = OUTLINED_FUNCTION_103();
      v123 = *(v122 - 256);
      outlined init with copy of UUID?(v121, v123);
      OUTLINED_FUNCTION_4_14(v123);
      if (v99)
      {
        outlined destroy of UUID?(v123);
        OUTLINED_FUNCTION_102();
      }

      else
      {
        v116 = v123;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_96();
        v167 = OUTLINED_FUNCTION_91();
        v111(v167);
      }

      outlined destroy of UUID?(v115);
      v168 = OUTLINED_FUNCTION_27_3();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v120, v169);
      OUTLINED_FUNCTION_71();
      *(v108 + 44) = v116;
      OUTLINED_FUNCTION_78(&dword_266790000, "Mapping function to create:  %s  failed for camId : %s, rcId: %s, requestId: %s, trpId: %s", v222);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_0_8();
      goto LABEL_46;
    }

    outlined destroy of UUID?(v104);
    v142 = *(v67 + 8);
    v143 = OUTLINED_FUNCTION_100();
    v142(v143);
    v144 = OUTLINED_FUNCTION_41_0();
    v142(v144);
  }

LABEL_47:
  OUTLINED_FUNCTION_45_0();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = "parse";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v4 == 1)
    {
      v6 = "candidate_bundles";
    }

    else
    {
      v6 = "candidate_actions";
    }
  }

  else
  {
    v5 = 0xD000000000000011;
    v6 = "parse";
  }

  if (a2)
  {
    v3 = "candidate_bundles";
    if (a2 != 1)
    {
      v2 = 0xD000000000000018;
      v3 = "candidate_actions";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0();
  }

  return v8 & 1;
}

{
  v2 = 0x534549545F4C4C41;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x534549545F4C4C41;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v3 = 0x8000000266819D30;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x444E45534F545541;
      break;
    default:
      v3 = 0x8000000266819D00;
      v5 = 0xD000000000000021;
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000016;
      v6 = 0x8000000266819D30;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x444E45534F545541;
      break;
    default:
      v6 = 0x8000000266819D00;
      v2 = 0xD000000000000021;
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0();
  }

  return v8 & 1;
}

{
  v2 = 7496035;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7496035;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x646F70656D6F68;
      break;
    case 2:
      v5 = 6513005;
      break;
    case 3:
      v5 = 6578544;
      break;
    case 4:
      v5 = 6582128;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x656E6F6870;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v5 = 30324;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x646F70656D6F68;
      break;
    case 2:
      v2 = 6513005;
      break;
    case 3:
      v2 = 6578544;
      break;
    case 4:
      v2 = 6582128;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x656E6F6870;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 7:
      v6 = 0xE200000000000000;
      v2 = 30324;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0();
  }

  return v8 & 1;
}

{
  v2 = 0xE900000000000065;
  v3 = 0x7372615072657375;
  v4 = a1;
  v5 = 0x7372615072657375;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v6 = 0x8000000266819E00;
      break;
    case 2:
      v5 = 0x6C646E7542707061;
      v6 = 0xEB00000000644965;
      break;
    case 3:
      v5 = 0x646E4970756F7267;
      v6 = 0xEA00000000007865;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_43_2();
      break;
    case 2:
      v3 = 0x6C646E7542707061;
      v2 = 0xEB00000000644965;
      break;
    case 3:
      v3 = 0x646E4970756F7267;
      v2 = 0xEA00000000007865;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_79();
  }

  return v8 & 1;
}

{
  v2 = 0xD000000000000026;
  v3 = "uateForRankingEvaluationRate";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000002CLL;
    }

    else
    {
      v5 = 0xD000000000000033;
    }

    if (v4 == 1)
    {
      v6 = "tDisambiguationRate";
    }

    else
    {
      v6 = "ary with duplicate key ";
    }
  }

  else
  {
    v5 = 0xD000000000000026;
    v6 = "uateForRankingEvaluationRate";
  }

  if (a2)
  {
    v3 = "tDisambiguationRate";
    v2 = a2 == 1 ? 0xD00000000000002CLL : 0xD000000000000033;
    if (a2 != 1)
    {
      v3 = "ary with duplicate key ";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0();
  }

  return v8 & 1;
}

{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E6F437972657571;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 1)
    {
      v5 = 0xEF65636E65646966;
    }

    else
    {
      v5 = 0x8000000266819E60;
    }
  }

  else
  {
    v5 = 0x8000000266819E30;
    v4 = 0xD000000000000010;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E6F437972657571;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a2 == 1)
    {
      v6 = 0xEF65636E65646966;
    }

    else
    {
      v6 = 0x8000000266819E60;
    }
  }

  else
  {
    v6 = 0x8000000266819E30;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_0();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = PluginToBundleMap.rawValue.getter();
  v2 = v1;
  if (v0 == PluginToBundleMap.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_35_0();
  }

  return v5 & 1;
}

{
  OUTLINED_FUNCTION_104();
  v2 = 0x646E6148776F6C66;
  v4 = v3;
  v5 = 0x646E6148776F6C66;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6174614472657375;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v7 = 1936875888;
      goto LABEL_5;
    case 3:
      v5 = 0x74616E7265746C61;
      v6 = 0xEC00000073657669;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v7 = 1919902579;
LABEL_5:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      v2 = 0x6174614472657375;
      break;
    case 2:
      v0 = 0xE500000000000000;
      v8 = 1936875888;
      goto LABEL_11;
    case 3:
      v2 = 0x74616E7265746C61;
      v0 = 0xEC00000073657669;
      break;
    case 4:
      v0 = 0xE500000000000000;
      v8 = 1919902579;
LABEL_11:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_79();
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = 0xEA00000000005441;
  v3 = 0x455045525F4B5341;
  if (a1)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_64_0();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x455045525F4B5341;
    v10 = 0xEA00000000005441;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_64_0();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_79();
  }

  return v18 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  PluginToBundleMap.rawValue.getter();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_104();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_18_10();
  return String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_43_2();
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_43_2();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
  }

  String.hash(into:)();
}

{
  return MEMORY[0x26D5DD540](qword_266817DE0[a2]);
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
  }

  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  OUTLINED_FUNCTION_112();
  if (v0)
  {
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_18_10();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_112();
  if (v0)
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_88();
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_112();
  RankedAction.CodingKeys.rawValue.getter(v0);
  OUTLINED_FUNCTION_73();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_112();
  PluginToBundleMap.rawValue.getter();
  OUTLINED_FUNCTION_73();

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
  MEMORY[0x26D5DD540](qword_266817DE0[a2]);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  Hasher.init(_seed:)();
  a3(a2);
  return Hasher._finalize()();
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID_];

  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t CamHandler.init(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(uint64_t a1, char a2, char a3)
{
  v26 = type metadata accessor for OSSignpostID();
  v6 = OUTLINED_FUNCTION_22(v26);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_25_7();
    swift_once();
  }

  v14 = static Log.ambiguityHandling;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v15 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_85();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  type metadata accessor for UncertaintyPromptHandler();
  if (static UncertaintyPromptHandler.register(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(a1, a2 & 1, a3 & 1))
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v15 = v16;
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1, v16);
      v15 = v23;
    }

    v15[2] = v18 + 1;
    OUTLINED_FUNCTION_107();
  }

  type metadata accessor for ActionAmbiguityHandler();
  if (static ActionAmbiguityHandler.register(camEnabledFeatures:)(a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      v15 = v24;
    }

    v20 = v15[2];
    v19 = v15[3];
    if (v20 >= v19 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v15);
      v15 = v25;
    }

    v15[2] = v20 + 1;
    OUTLINED_FUNCTION_107();
  }

  if (v15[2])
  {
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_85();
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {

    lazy protocol witness table accessor for type CamError and conformance CamError();
    swift_allocError();
    *v21 = 0xD000000000000020;
    *(v21 + 8) = 0x800000026681B980;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  (*(v8 + 8))(v13, v26);
  return OUTLINED_FUNCTION_91();
}

void CamHandler.action(request:)()
{
  OUTLINED_FUNCTION_44_1();
  v104 = v0;
  v2 = v1;
  v109 = v3;
  v100 = type metadata accessor for CamInput();
  v4 = OUTLINED_FUNCTION_0_2(v100);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for CamRequest(0);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v96 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v96 - v21;
  v23 = type metadata accessor for OSSignpostID();
  v24 = OUTLINED_FUNCTION_22(v23);
  v107 = v25;
  v108 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_0();
  v30 = v29 - v28;
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_25_7();
    swift_once();
  }

  v31 = static Log.ambiguityHandling;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_90();
  v105 = v31;
  v106 = v30;
  OUTLINED_FUNCTION_54_0();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v97 = v16;
  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v32, static Logger.ambiguityHandling);
  OUTLINED_FUNCTION_6_20();
  outlined init with copy of CamRequest(v2, v22, v33);
  v110 = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v98 = v10;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_11();
    v113[0] = v38;
    *v37 = 136315138;
    OUTLINED_FUNCTION_6_20();
    outlined init with copy of CamRequest(v22, v20, v39);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v22, v43);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v113);
    v10 = v98;

    *(v37 + 4) = v44;
    _os_log_impl(&dword_266790000, v34, v35, "Handling CAM request : %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {

    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v22, v45);
  }

  v46 = v10[5];
  v47 = (v2 + v10[6]);
  v48 = *v47;
  v111 = v47[1];
  v49 = v10[7];
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA017UncertaintyPromptH6LoggerV_Tt5B5(v2, v2, (v2 + v46), v48, v111, v2 + v49, 2);
  v50 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2(v50);
  v52 = *(v51 + 16);
  v52(v9, v2, v50);
  v53 = v10;
  v54 = v2;
  v99 = v2;
  v55 = v100;
  v56 = v9 + v100[5];
  v102 = v46;
  v96 = v50;
  v52(v56, v54 + v46, v50);
  v57 = v55[7];
  v101 = v49;
  outlined init with copy of UUID?(v54 + v49, v9 + v57);
  v58 = *(v54 + v53[8]);
  v59 = *(v54 + v53[9]);
  v60 = *(v54 + v53[10]);
  v61 = *(v54 + v53[13]);
  v62 = *(v54 + v53[12]);
  v63 = (v9 + v55[6]);
  v103 = v48;
  v64 = v111;
  *v63 = v48;
  v63[1] = v64;
  *(v9 + v55[8]) = v58;
  *(v9 + v55[10]) = v59;
  *(v9 + v55[11]) = v60;
  *(v9 + v55[12]) = v61;
  v65 = v55[9];
  v66 = v9;
  *(v9 + v65) = v62;
  type metadata accessor for CamOutput();
  *(swift_allocObject() + 56) = 1;
  v67 = CamLogOutput.init(prediction:score:threshold:)(0, 0.0, 0.0);
  v68 = *(v104 + 16);
  v69 = (v104 + 32);

  v70 = v58;

  v71 = v68 + 1;
  while (--v71)
  {
    v72 = v69[3];
    v73 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v72);
    v74 = (*(v73 + 16))(v66, v72, v73);
    v69 += 5;

    v67 = v74;
    if (*(v74 + 56) != 1)
    {
      goto LABEL_13;
    }
  }

  v74 = v67;
LABEL_13:
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_266790000, v75, v76, "Logging successful CAM response", v77, 2u);
    OUTLINED_FUNCTION_20_11();
  }

  v78 = *(v74 + 56);

  v80 = v99;
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA31UncertaintyPromptResponseLoggerV_Tt5B5(v79, 0, v99, (v99 + v102), v103, v111, v99 + v101, 2);
  OUTLINED_FUNCTION_6_20();
  v81 = v97;
  outlined init with copy of CamRequest(v80, v97, v82);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_76())
  {
    v85 = swift_slowAlloc();
    v113[0] = swift_slowAlloc();
    *v85 = 136315394;
    v86 = v98[5];
    OUTLINED_FUNCTION_26_4();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(v87, v88);
    v89 = v81 + v86;
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v81, v90);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v64, v113);
    OUTLINED_FUNCTION_48_2();

    *(v85 + 4) = v89;
    *(v85 + 12) = 2080;
    v112 = *(v74 + 56);
    v91 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v113);
    OUTLINED_FUNCTION_69();
    *(v85 + 14) = v64;
    _os_log_impl(&dword_266790000, v83, v84, "%s: Returning successful CAM Action: %s", v85, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_20_11();
  }

  else
  {

    OUTLINED_FUNCTION_1_25();
    outlined destroy of CamRequest(v81, v93);
  }

  static os_signpost_type_t.end.getter();
  v94 = v106;
  OUTLINED_FUNCTION_54_0();
  os_signpost(_:dso:log:name:signpostID:)();

  outlined destroy of CamRequest(v66, type metadata accessor for CamInput);
  (*(v107 + 8))(v94, v108);
  v95 = v109;
  *v109 = v78;
  v95[1] = 0;
  OUTLINED_FUNCTION_45_0();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_82();
  MEMORY[0x26D5DD540](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_82();
  v2 = *a1;
  v3 = a1[1];
  String.hash(into:)();
  v4 = *(type metadata accessor for AffinityRankKey() + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_26_4();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(v5, v6);
  dispatch thunk of Hashable.hash(into:)();
  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

void specialized __RawDictionaryStorage.find<A>(_:)()
{
  v1 = *(v0 + 40);
  type metadata accessor for DeviceIdiom();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, MEMORY[0x277D61C30]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)();
}

{
  v1 = *(v0 + 40);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x26D5DD520](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  v4 = specialized RawRepresentable<>._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  v4 = specialized RawRepresentable<>._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_18_10();
  String.hash(into:)();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

{
  OUTLINED_FUNCTION_82();
  MEMORY[0x26D5DD540](0);
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for AffinityRankKey();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = a1[1];
    v15 = *(v7 + 72);
    while (1)
    {
      outlined init with copy of CamRequest(*(v2 + 48) + v15 * v11, v9, type metadata accessor for AffinityRankKey);
      v16 = *v9 == v13 && v9[1] == v14;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v17 = *(v5 + 20);
        if (static UUID.== infix(_:_:)())
        {
          break;
        }
      }

      outlined destroy of CamRequest(v9, type metadata accessor for AffinityRankKey);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    outlined destroy of CamRequest(v9, type metadata accessor for AffinityRankKey);
  }

  return v11;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5DD1A0](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x4F5455415F534D53;
          v8 = 0xEC000000444E4553;
        }

        else
        {
          v7 = 0xD000000000000010;
          v8 = 0x8000000266819EC0;
        }
      }

      else
      {
        v7 = 0x455045525F4B5341;
        v8 = 0xEA00000000005441;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x4F5455415F534D53 : 0xD000000000000010;
        v10 = a1 == 1 ? 0xEC000000444E4553 : 0x8000000266819EC0;
      }

      else
      {
        v9 = 0x455045525F4B5341;
        v10 = 0xEA00000000005441;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000002CLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "tDisambiguationRate";
      }

      else
      {
        v5 = 0xD000000000000033;
        v6 = "ary with duplicate key ";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000026;
      v8 = *(*(v2 + 48) + v4) ? v6 : "uateForRankingEvaluationRate";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000002CLL : 0xD000000000000033;
        v10 = a1 == 1 ? "tDisambiguationRate" : "ary with duplicate key ";
      }

      else
      {
        v9 = 0xD000000000000026;
        v10 = "uateForRankingEvaluationRate";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
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

uint64_t outlined init with copy of CamRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of CamRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)()
{
  OUTLINED_FUNCTION_44_1();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v11 + 16))(v15, *(v20 + 48) + *(v11 + 72) * i, v8);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(v21, v22);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v11 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_45_0();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

void OUTLINED_FUNCTION_19_11()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_22_5()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 136);
  v3 = *(v0 - 120);
}

void OUTLINED_FUNCTION_29_4(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_40_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_1()
{
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_0()
{
  v3 = *(v0 + 16);
  result = v1;
  v6 = *(v2 - 128);
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  *(v2 + 34) = v1;
  *(v2 + 42) = v0;
  v6 = *(v4 - 168);

  return outlined init with copy of UUID?(v3, v6);
}

uint64_t OUTLINED_FUNCTION_72()
{
}

uint64_t OUTLINED_FUNCTION_73()
{

  return String.hash(into:)();
}

void OUTLINED_FUNCTION_74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 120);
  v9 = *(v6 - 120);

  _os_log_impl(a1, v4, v9, a4, v5, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_78(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{
  v6 = *(v4 - 168);

  _os_log_impl(a1, v6, a3, a2, v3, 0x34u);
}

uint64_t OUTLINED_FUNCTION_79()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_80()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_81(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_82()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_84()
{
}

uint64_t OUTLINED_FUNCTION_86@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  result = v1;
  v6 = *(v2 - 128);
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_92()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_103()
{
  *(v1 + 34) = v0;
  *(v1 + 42) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_105()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return UUID.uuidString.getter();
}

uint64_t OUTLINED_FUNCTION_106()
{
  *(v2 - 136) = v1;
  *(v2 - 120) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_107()
{

  return outlined init with take of CaarHandler((v2 - 120), v1 + 40 * v0 + 32);
}

uint64_t OUTLINED_FUNCTION_108()
{
  v2 = *(v0 - 136);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_109()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return UUID.uuidString.getter();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_111(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_112()
{

  return Hasher.init(_seed:)();
}

BOOL OUTLINED_FUNCTION_114()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t static ActionAmbiguityHandler.register(camEnabledFeatures:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  while (v1)
  {
    if (*v2 && *v2 != 1)
    {

LABEL_8:
      v14[3] = &type metadata for CamFeatureFlag;
      v14[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
      LOBYTE(v14[0]) = 2;
      v4 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(v14);
      if (v4)
      {
        type metadata accessor for ActionAmbiguityHandler();
        v5 = swift_allocObject();
        ActionAmbiguityHandler.init()();
        return v5;
      }

      break;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v2;
    --v1;
    if (v3)
    {
      goto LABEL_8;
    }
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.ambiguityHandling);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266819EC0, v14);
    *(v9 + 12) = 2080;
    v10 = StaticString.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v14);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_266790000, v7, v8, "[ActionAmbiguityHandler] Not registering as %s or %s is disabled", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return 0;
}

void *ActionAmbiguityHandler.init()()
{
  v2 = v0;
  v3 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 16) = 0xD000000000000021;
  *(v0 + 24) = 0x800000026681AF20;
  *(v0 + 32) = 0xD000000000000025;
  *(v0 + 40) = 0x800000026681AEF0;
  *(v0 + 48) = 0xD000000000000024;
  *(v0 + 56) = 0x800000026681AF50;
  *(v0 + 64) = v3;
  v4 = type metadata accessor for ActionAmbiguityHeuristicHandler();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = ActionAmbiguityHeuristicHandler.init(forModelWithName:)(0xD00000000000002DLL, 0x800000026681BA20);
  if (v1)
  {
    v8 = *(v0 + 24);
    v9 = v2[5];
    v11 = v2[7];
    v10 = v2[8];

    type metadata accessor for ActionAmbiguityHandler();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v4;
    v19 = &protocol witness table for ActionAmbiguityHeuristicHandler;
    *&v17 = v7;
    outlined init with take of CaarHandler(&v17, v0 + 72);
    if (CamFeatureFlag.isEnabled.getter(7u))
    {
      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.ambiguityHandling);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        OUTLINED_FUNCTION_7_5();
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_266790000, v13, v14, "[ActionAmbiguityHandler] disambiguate_for_ranking_evaluation FF enabled, adding corresponding enforcer", v15, 2u);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      v2[17] = &type metadata for ForcedDisambiguationForRankingEvaluationActionEnforcer;
      v2[18] = &protocol witness table for ForcedDisambiguationForRankingEvaluationActionEnforcer;
    }

    else
    {
      *(v0 + 144) = 0;
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0u;
    }
  }

  return v2;
}

uint64_t ActionAmbiguityHandler.handle(camInput:)(uint64_t a1)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v2 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v4 = (&v88 - v3);
  v5 = type metadata accessor for CamModelMetadata();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v88 - v10;
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v88 - v18;
  v20 = static ActionAmbiguityHandler.preExecutionOverride(camInput:)(a1);
  if (v20)
  {
    v21 = v20;
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.ambiguityHandling);
    v23 = v21;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v27 = swift_slowAlloc();
      v107[0] = v27;
      *v26 = 136315138;
      v28 = specialized ReflectedStringConvertible.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v107);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_266790000, v24, v25, "[ActionAmbiguityHandler] Using override before executing model %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }
  }

  else
  {
    v100 = v12;
    v99 = v13;
    v95 = v9;
    v98 = v19;
    v31 = v102;
    v97 = a1;
    v96 = v11;
    v94 = v4;
    if (one-time initialization token for ambiguityHandling != -1)
    {
      swift_once();
    }

    v32 = static Log.ambiguityHandling;
    v33 = v98;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_8_16();
    v34 = type metadata accessor for CamInput();
    v35 = v103;
    v36 = specialized FeatureExtracting.extract(from:)(*(v97 + *(v34 + 44)));
    v23 = v35;
    if (v35)
    {
      v103 = v35;
      (*(v99 + 8))(v33, v100);
    }

    else
    {
      v37 = v36;
      v93 = v34;
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_8_16();
      v38 = v32;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      OUTLINED_FUNCTION_6_21();
      v40 = *(v31 + 96);
      v39 = *(v31 + 104);
      __swift_project_boxed_opaque_existential_1((v31 + 72), v40);
      v41 = (*(v39 + 32))(v37, v40, v39);
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_6_21();
      v42 = *(v31 + 32);
      v108 = *(v31 + 16);
      v109 = v42;
      v110 = *(v31 + 48);
      v111 = *(v31 + 64);
      CamOutputProvider.toCamOutput(from:)(v41);
      v103 = 0;
      v45 = v43;
      v90 = v41;
      v91 = v17;
      v46 = *(v31 + 96);
      v47 = *(v31 + 104);
      __swift_project_boxed_opaque_existential_1((v31 + 72), v46);
      v48 = v96;
      (*(v47 + 24))(v46, v47);
      outlined init with copy of ActionAmbiguityActionEnforcer?(v31 + 112, &v104);
      v92 = v45;
      if (v106)
      {
        outlined init with take of CaarHandler(&v104, v107);
        __swift_project_boxed_opaque_existential_1(v107, v107[3]);
        ForcedDisambiguationForRankingEvaluationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(&v104);

        v49 = v105;
        v50 = v95;
        if (v105)
        {
          v51 = *(&v104 + 1);
          v52 = v104;
          if (one-time initialization token for ambiguityHandling != -1)
          {
            OUTLINED_FUNCTION_0_12();
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          __swift_project_value_buffer(v53, static Logger.ambiguityHandling);
          OUTLINED_FUNCTION_7_15();

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v54, v55))
          {
            OUTLINED_FUNCTION_9();
            v56 = swift_slowAlloc();
            v112 = v55;
            v57 = v56;
            v89 = swift_slowAlloc();
            *&v104 = v89;
            *v57 = 136315650;
            v113 = *(v48 + 56);
            v58 = String.init<A>(describing:)();
            v59 = v52;
            v61 = v51;
            v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v104);

            *(v57 + 4) = v62;
            *(v57 + 12) = 2080;
            v113 = v52;
            v63 = String.init<A>(describing:)();
            v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v104);
            v51 = v61;
            v50 = v95;

            *(v57 + 14) = v65;
            v52 = v59;
            *(v57 + 22) = 2080;
            *(v57 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v49, &v104);
            _os_log_impl(&dword_266790000, v54, v112, "[ActionAmbiguityHandler] Overriding %s with %s due to %s", v57, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_3_2();
            MEMORY[0x26D5DDCD0]();
            OUTLINED_FUNCTION_3_2();
            MEMORY[0x26D5DDCD0]();
          }

          LOBYTE(v104) = v52;
          v66._countAndFlagsBits = v51;
          v66._object = v49;
          CamOutput.overrideAction(action:enforcer:)(&v104, v66);
        }

        __swift_destroy_boxed_opaque_existential_0(v107);
      }

      else
      {

        outlined destroy of Token?(&v104, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMd, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMR);
        v50 = v95;
      }

      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Logger.ambiguityHandling);
      OUTLINED_FUNCTION_7_15();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v71 = swift_slowAlloc();
        v107[0] = v71;
        *v70 = 136315138;
        v72 = specialized ReflectedStringConvertible.description.getter();
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v107);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_266790000, v68, v69, "[ActionAmbiguityHandler] handle will return output %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      v75 = v101;
      v76 = v91;
      v77 = *(v31 + 96);
      v78 = *(v31 + 104);
      __swift_project_boxed_opaque_existential_1((v31 + 72), v77);
      (*(v78 + 24))(v77, v78);
      v79 = *(v75 + 48);
      v80 = v94;
      *v94 = v48;
      outlined init with take of CamModelMetadata(v50, v80 + v79);
      v81 = v93[5];
      v82 = (v97 + v93[6]);
      v84 = *v82;
      v83 = v82[1];
      v85 = v93[7];

      _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5();

      outlined destroy of Token?(v80, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
      outlined destroy of CamModelMetadata(v96);
      v86 = *(v99 + 8);
      v87 = v100;
      v86(v76, v100);
      v86(v98, v87);
      return v48;
    }
  }

  return v23;
}

uint64_t static ActionAmbiguityHandler.preExecutionOverride(camInput:)(uint64_t a1)
{
  if (*(*(a1 + *(type metadata accessor for CamInput() + 44)) + 16) < 2uLL)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.ambiguityHandling);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_3_19(v3))
    {
      OUTLINED_FUNCTION_7_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_16(&dword_266790000, v4, v5, "[ActionAmbiguityHandler] Skipping due to lack of ranked actions in input");
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    goto LABEL_20;
  }

  if (SiriKitRuntimeAmbiguityFeatureFlags.isEnabled.getter())
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.ambiguityHandling);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_7_5();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266790000, v7, v8, "[ActionAmbiguityHandler] input_paraphrasing_flows feature flag is enabled", v9, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    if (CamFeatureFlag.isEnabled.getter(6u))
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_3_19(v11))
      {
        OUTLINED_FUNCTION_7_5();
        *swift_slowAlloc() = 0;
        v14 = "[ActionAmbiguityHandler] disambiguate_all_ties feature flag is enabled, CAM can return a disambiguate action without constraints on the type of the action";
LABEL_18:
        OUTLINED_FUNCTION_5_16(&dword_266790000, v12, v13, v14);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (CamFeatureFlag.isEnabled.getter(7u))
    {
      v10 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_3_19(v15))
      {
        OUTLINED_FUNCTION_7_5();
        *swift_slowAlloc() = 0;
        v14 = "[ActionAmbiguityHandler] disambiguate_for_ranking_evaluation feature flag is enabled, CAM can return a disambiguate action without constraints on the type of the action";
        goto LABEL_18;
      }

LABEL_19:

      return 0;
    }
  }

LABEL_20:
  type metadata accessor for CamOutput();
  *(swift_allocObject() + 56) = 1;
  return CamLogOutput.init(prediction:score:threshold:)(0, 0.0, 0.0);
}

void *ActionAmbiguityHandler.deinit()
{
  v1 = v0[3];
  v2 = v0[5];
  v4 = v0[7];
  v3 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  outlined destroy of Token?((v0 + 14), &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMd, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMR);
  return v0;
}

uint64_t ActionAmbiguityHandler.__deallocating_deinit()
{
  ActionAmbiguityHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t outlined init with copy of ActionAmbiguityActionEnforcer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMd, &_s7SiriCam015ActionAmbiguityC8Enforcer_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AutoConfirmAction.action(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v5 > 2)
    {
      v6 = 3;
      goto LABEL_11;
    }

    v6 = v5;
    _print_unlocked<A, B>(_:_:)();
    if (!v4 && a2 == 0xE000000000000000)
    {
      break;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v5;
    if (v8)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  *a3 = v6;
  return result;
}

SiriCam::AutoConfirmAction_optional __swiftcall AutoConfirmAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoConfirmAction@<X0>(uint64_t *a1@<X8>)
{
  result = AutoConfirmAction.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoConfirmAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AutoConfirmError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t storeEnumTagSinglePayload for AutoConfirmError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

void *one-time initialization function for kLoggingFeatureName()
{
  type metadata accessor for CAMSchemaCAMFeature(0);
  lazy protocol witness table accessor for type CamFeature and conformance CamFeature();
  result = Dictionary.init(dictionaryLiteral:)();
  kLoggingFeatureName._rawValue = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CamFeature and conformance CamFeature()
{
  result = lazy protocol witness table cache variable for type CamFeature and conformance CamFeature;
  if (!lazy protocol witness table cache variable for type CamFeature and conformance CamFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeature and conformance CamFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamFeature and conformance CamFeature;
  if (!lazy protocol witness table cache variable for type CamFeature and conformance CamFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeature and conformance CamFeature);
  }

  return result;
}

uint64_t CamUSOParse.getFirstUserDialogActAsTask()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14[-v2];
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x26D5DC620](v7);
  specialized Collection.first.getter(v10);

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    v13 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (specialized Array.count.getter(v13))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D5DD230](0, v13);
      }

      else
      {
        v11 = *(v13 + 32);
      }
    }

    else
    {

      v11 = 0;
    }

    (*(v5 + 8))(v9, v4);
  }

  return v11;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CRRFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v2 = a1;
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_2_21();
  v7 = v6 >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v102 = v7;
  v104 = v2;
  v95 = v2;
  while (v1)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_17();
    v11 = v10 | (v8 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v96 = *(*(v2 + 56) + 8 * v11);

    v15._countAndFlagsBits = 0x47796E4171657266;
    v15._object = 0xEC00000070756F72;
    if (!String.hasPrefix(_:)(v15))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_1_26();
    v105 = v16 | 0x656D615300000000;
    v17 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_9_14(v17, v18, v19, v20, v21, v22, v23, v24, v89, v90, v17, v17, v91, isUnique, v94, v95, v96, v13, v102, v104, v105, 0xE800000000000000, v106);
    v25 = OUTLINED_FUNCTION_6_22();
    if (*(v104 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
      v29 = v28;

      v2 = v95;
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }

      v30 = v104;
      v31 = *(*(v104 + 56) + 8 * v27);
      v32 = __OFSUB__(v97, v31);
      v98 = v97 - v31;
      if (v32)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_9_14(v34, v35, v36, v37, v38, v39, v40, v41, v89, v90, v17, v17, v91, isUnique, v14, v95, v98, v100, v102, v104, v33 | 0x6666694400000000, 0xEB00000000796E41, v106);
      v42 = OUTLINED_FUNCTION_6_22();
      v44 = v43;
      isUniquea = swift_isUniquelyReferenced_nonNull_native();
      v107 = v30;
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v44);
      v47 = v30[2];
      v48 = (v46 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_42;
      }

      v50 = v45;
      v51 = v46;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
      v53 = isUniquea;
      isUnique = v52;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v53, v49))
      {
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v44);
        v2 = v95;
        if ((v51 & 1) != (v55 & 1))
        {
          goto LABEL_44;
        }

        v50 = v54;
      }

      else
      {
        v2 = v95;
      }

      if (v51)
      {
        *(v107[7] + 8 * v50) = v99;
      }

      else
      {
        v107[(v50 >> 6) + 8] |= 1 << v50;
        v56 = (v107[6] + 16 * v50);
        *v56 = v42;
        v56[1] = v44;
        *(v107[7] + 8 * v50) = v99;
        v57 = v107[2];
        v32 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v32)
        {
          goto LABEL_43;
        }

        v107[2] = v58;
      }

      v104 = v107;
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v101);
      v61 = v60;

      v7 = v102;
      if (v61)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v107[3]);
        v63 = *(v107[6] + 16 * v59 + 8);

        _NativeDictionary._delete(at:)();
      }
    }

    else
    {

      v2 = v95;
LABEL_16:

      v7 = v102;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMd, &_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMR);
      v64 = v104;
      v65 = static _DictionaryStorage.copy(original:)();
      v66 = 0;
      v67 = *(v104 + 64);
      v68 = *(v104 + 32);
      OUTLINED_FUNCTION_2_21();
      v70 = v69 >> 6;
      v103 = v71 + 64;
LABEL_26:
      v73 = v66;
      while (1)
      {
        v66 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_39;
        }

        if (v66 >= v70)
        {
          break;
        }

        v74 = *(v104 + 64 + 8 * v66);
        ++v73;
        if (v74)
        {
          v72 = __clz(__rbit64(v74));
          v75 = (v74 - 1) & v74;
          while (1)
          {
            v76 = v72 | (v66 << 6);
            v77 = (*(v64 + 48) + 16 * v76);
            v79 = *v77;
            v78 = v77[1];
            v80 = *(*(v64 + 56) + 8 * v76);
            v81 = type metadata accessor for MLMultiArray();

            v82 = v80;
            v83 = v81;
            v84 = static MLMultiArray.makeScalar(from:)(v82);
            if (v108)
            {
              break;
            }

            *(v103 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
            v85 = (v65[6] + 16 * v76);
            *v85 = v79;
            v85[1] = v78;
            *(v65[7] + 8 * v76) = v84;
            v86 = v65[2];
            v32 = __OFADD__(v86, 1);
            v87 = v86 + 1;
            if (v32)
            {
              goto LABEL_40;
            }

            v65[2] = v87;
            v64 = v104;
            if (!v75)
            {
              goto LABEL_26;
            }

            OUTLINED_FUNCTION_8_17();
          }

          return v83;
        }
      }

      v83 = specialized _NativeDictionary.filter(_:)(v65);

      return v83;
    }

    v1 = *(v4 + 8 * v9);
    ++v8;
    if (v1)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_3_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_22(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
  if (OUTLINED_FUNCTION_4_15())
  {
    v14 = *v6;
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_5_17();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  if (v13)
  {
    *(*(*v6 + 56) + 8 * v12) = v4;
    OUTLINED_FUNCTION_10_15();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_7_16();
    specialized _NativeDictionary._insert(at:key:value:)(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_10_15();
  }
}

{
  v7 = OUTLINED_FUNCTION_3_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_22(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
  if (OUTLINED_FUNCTION_4_15())
  {
    v14 = *v6;
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_5_17();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v6 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v4;
    OUTLINED_FUNCTION_10_15();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_7_16();
    specialized _NativeDictionary._insert(at:key:value:)(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_10_15();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_0_22(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_4_15())
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_5_17();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0((v19[7] + 32 * v14));
    OUTLINED_FUNCTION_10_15();

    return outlined init with take of Any(v20, v21);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a1, v19);
    OUTLINED_FUNCTION_10_15();
  }
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo12MLMultiArrayCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab14VKXEfU_SS_So12iJ4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n059_s7SiriCam19CRRFeatureExtractorV11extractImpl4fromSDySSSo12iJ40CGSDySSSiG_tKFSbSS3key_AG5valuet_tXEfU0_Tf1nnc_n(v9, v4, v2);
      MEMORY[0x26D5DDCD0](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v23 = 0;
  v24 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v24 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(v24 + 56) + 8 * v12);
    v25[0] = *v13;
    v25[1] = v14;
    MEMORY[0x28223BE20](a1);
    v20[2] = v25;

    v16 = v15;
    v17 = v26;
    v18 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v20, &outlined read-only object #0 of one-time initialization function for CRR_FEATURES);
    v26 = v17;

    if (v18)
    {
      *(v22 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v22, v21, v23, v24);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo12MLMultiArrayCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab14VKXEfU_SS_So12iJ4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n059_s7SiriCam19CRRFeatureExtractorV11extractImpl4fromSDySSSo12iJ40CGSDySSSiG_tKFSbSS3key_AG5valuet_tXEfU0_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMd, &_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t ConstantStepFeatureExtractor.extractImpl(from:)(double a1)
{
  type metadata accessor for MLMultiArray();
  result = static MLMultiArray.makeScalar(from:)(a1);
  v4 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    strcpy((inited + 32), "constant_step");
    *(inited + 46) = -4864;
    *(inited + 48) = v4;
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

SiriCam::PluginToBundleMap_optional __swiftcall PluginToBundleMap.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t PluginToBundleMap.associatedAppBundleId.getter()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 3:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x15:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1E:
      return result;
    case 2:
    case 0xD:
    case 0xF:
    case 0x10:
      result = 0x6C7070612E6D6F63;
      break;
    case 4:
    case 0x13:
    case 0x18:
    case 0x1D:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
    case 0x1F:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0x14:
      result = 0xD000000000000015;
      break;
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 0x17:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t PluginToBundleMap.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 2:
    case 5:
    case 0x1D:
      result = 0xD00000000000002CLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 7:
    case 0x17:
      result = 0xD000000000000029;
      break;
    case 8:
    case 0xF:
    case 0x1B:
      result = 0xD00000000000002FLL;
      break;
    case 9:
    case 0xC:
    case 0x1C:
    case 0x1E:
      result = 0xD000000000000026;
      break;
    case 0xA:
    case 0xD:
    case 0x12:
      result = 0xD000000000000024;
      break;
    case 0xB:
      result = 0xD000000000000022;
      break;
    case 0xE:
      result = 0xD000000000000027;
      break;
    case 0x10:
      result = 0xD000000000000032;
      break;
    case 0x11:
    case 0x14:
    case 0x18:
    case 0x1F:
      result = 0xD000000000000021;
      break;
    case 0x13:
      result = 0xD000000000000031;
      break;
    case 0x15:
      result = 0xD00000000000002ELL;
      break;
    case 0x16:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
      result = 0xD000000000000023;
      break;
    case 0x1A:
      result = 0xD000000000000033;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PluginToBundleMap(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

unint64_t lazy protocol witness table accessor for type PluginToBundleMap and conformance PluginToBundleMap()
{
  result = lazy protocol witness table cache variable for type PluginToBundleMap and conformance PluginToBundleMap;
  if (!lazy protocol witness table cache variable for type PluginToBundleMap and conformance PluginToBundleMap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginToBundleMap and conformance PluginToBundleMap);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PluginToBundleMap@<X0>(unint64_t *a1@<X8>)
{
  result = PluginToBundleMap.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginToBundleMap(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PluginToBundleMap(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

uint64_t FallbackRanker.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = type metadata accessor for UUID();
  v8 = OUTLINED_FUNCTION_22(v72);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CamParse(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_5();
  v70 = v16;
  MEMORY[0x28223BE20](v17);
  v69 = &v60 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
  v19 = OUTLINED_FUNCTION_0_2(v68);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v78 = v22;
  MEMORY[0x28223BE20](v23);
  v67 = &v60 - v24;
  v25 = type metadata accessor for RankedAction();
  v26 = OUTLINED_FUNCTION_22(v25);
  v65 = v27;
  v66 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a6 + 16);
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v60 = v6;
  v79 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v33 = 0;
  v64 = type metadata accessor for ActionCandidate();
  OUTLINED_FUNCTION_22(v64);
  v35 = a6 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v36 = v79;
  v37 = v32;
  v63 = *(v38 + 72);
  v61 = (v10 + 8);
  v62 = (v10 + 16);
  v39 = v66;
  do
  {
    v74 = v32;
    v75 = v33;
    v76 = v35;
    v77 = v36;
    v41 = v67;
    v40 = v68;
    v42 = *(v68 + 48);
    outlined init with copy of ActionCandidate(v35, &v67[v42], type metadata accessor for ActionCandidate);
    v43 = v78;
    *v78 = v33;
    v44 = (v43 + *(v40 + 48));
    outlined init with take of ActionCandidate(&v41[v42], v44, type metadata accessor for ActionCandidate);
    v45 = v44[1];
    v73 = *v44;
    v46 = v64;
    v47 = v69;
    outlined init with copy of ActionCandidate(v44 + *(v64 + 20), v69, type metadata accessor for CamParse);
    v48 = v32 / v37;
    v49 = *(v44 + *(v46 + 28));
    v50 = v70;
    outlined init with copy of ActionCandidate(v47, v70, type metadata accessor for CamParse);

    v51 = v71;
    UUID.init()();
    v52 = &v31[v39[10]];
    *v31 = v73;
    *(v31 + 1) = v45;
    outlined init with copy of ActionCandidate(v50, &v31[v39[5]], type metadata accessor for CamParse);
    *&v31[v39[6]] = MEMORY[0x277D84F90];
    *&v31[v39[7]] = v48;
    *&v31[v39[8]] = v49;
    v53 = v72;
    (*v62)(&v31[v39[9]], v51, v72);
    type metadata accessor for MLFeatureValue();
    *&v31[v39[11]] = Dictionary.init(dictionaryLiteral:)();
    *v52 = 0;
    v52[1] = 0;
    v54 = specialized ActionProtocol.inferBundleId()();
    v56 = v55;
    (*v61)(v51, v53);
    outlined destroy of CamParse(v50);
    v57 = v47;
    v36 = v77;
    outlined destroy of CamParse(v57);
    *v52 = v54;
    v52[1] = v56;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v78, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
    v79 = v36;
    v58 = *(v36 + 16);
    if (v58 >= *(v36 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = v79;
    }

    v33 = v75 + 1;
    *(v36 + 16) = v58 + 1;
    outlined init with take of ActionCandidate(v31, v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v58, type metadata accessor for RankedAction);
    v35 = v76 + v63;
    v32 = v74 - 1;
  }

  while (v74 != 1);
  return v36;
}

uint64_t FallbackRanker.rank(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UUID();
  v11 = __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v16 = FallbackRanker.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(v11, v12, v13, v14, v15, a5);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v16;
}

void *one-time initialization function for caarProvider()
{
  type metadata accessor for CaarProvider();
  swift_allocObject();
  result = CaarProvider.().init()();
  static CaarProvider.caarProvider = result;
  return result;
}

void *CaarProvider.().init()()
{
  v1 = v0;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, kLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "Initialising Caar Provider", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  if (CamFeatureFlag.isEnabled.getter(4u))
  {
    v6 = type metadata accessor for DawnHeuristicScorer();
    v7 = &protocol witness table for DawnHeuristicScorer;
  }

  else
  {
    v6 = type metadata accessor for HeuristicScorer();
    v7 = &protocol witness table for HeuristicScorer;
  }

  v15[3] = v6;
  v15[4] = v7;
  v15[0] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam11TieBreaking_pXpGMd, _ss23_ContiguousArrayStorageCy7SiriCam11TieBreaking_pXpGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266813E50;
  *(v8 + 32) = type metadata accessor for AppLaunchTieBreaker();
  *(v8 + 40) = &protocol witness table for AppLaunchTieBreaker;
  *(v8 + 48) = type metadata accessor for DisabledAppShortcutTieBreaker();
  *(v8 + 56) = &protocol witness table for DisabledAppShortcutTieBreaker;
  *(v8 + 64) = type metadata accessor for TrialOverridesTieBreaker();
  *(v8 + 72) = &protocol witness table for TrialOverridesTieBreaker;
  *(v8 + 80) = type metadata accessor for UserHistoryTieBreaker();
  *(v8 + 88) = &protocol witness table for UserHistoryTieBreaker;
  outlined init with copy of SignalProviding(v15, v14);
  v9 = type metadata accessor for CodeBasedRankerHandler();
  swift_allocObject();
  v1[2] = CodeBasedRankerHandler.init(scorer:tieBreakerChain:)(v14, v8);
  v1[5] = v9;
  v1[6] = &protocol witness table for CodeBasedRankerHandler;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266790000, v10, v11, "CAAR Handler created successfully", v12, 2u);
    MEMORY[0x26D5DDCD0](v12, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v1;
}

uint64_t CaarProvider.__deallocating_deinit()
{
  outlined destroy of (CamLogOutput, CamModelMetadata)(v0 + 16, &_s7SiriCam11CaarHandler_pSgMd, &_s7SiriCam11CaarHandler_pSgMR);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t outlined init with take of ActionCandidate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t Array<A>.execute(_:)(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for TopTwo();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  Array<A>.topTwo.getter(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of TopTwo?(v7);
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.ranker);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266790000, v19, v20, "Fewer than 2 actions, won't tie break.", v21, 2u);
      OUTLINED_FUNCTION_3_1();
    }
  }

  else
  {
    outlined init with take of TopTwo(v7, v17, type metadata accessor for TopTwo);
    Array<A>.tieBreakScores(tie:)(v14, v17, a2);
    v22 = Array<A>.nonTopTwo.getter(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR);
    v23 = *(type metadata accessor for RankedAction() - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_266813E60;
    v27 = v26 + v25;
    _s7SiriCam12RankedActionVWOcTm_1(v14, v27, type metadata accessor for RankedAction);
    _s7SiriCam12RankedActionVWOcTm_1(v14 + *(v8 + 20), v27 + v24, type metadata accessor for RankedAction);
    v30 = v26;
    specialized Array.append<A>(contentsOf:)(v22);
    outlined destroy of TopTwo(v14, type metadata accessor for TopTwo);
    outlined destroy of TopTwo(v17, type metadata accessor for TopTwo);
    return v30;
  }

  return a1;
}

uint64_t outlined destroy of TopTwo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ScoreBoost.loggingInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D56BE0]) init];
  if (v7)
  {
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v8 = type metadata accessor for ScoreBoost();
    (*(v3 + 16))(v6, v1 + *(v8 + 24), v2);
    v9 = SISchemaUUID.__allocating_init(nsuuid:)(v6);
    [v7 setActionCandidateId_];

    [v7 setBoost_];
    if (*(v1 + 16))
    {
      v10 = MEMORY[0x26D5DCC90](*(v1 + 8));
    }

    else
    {
      v10 = 0;
    }

    [v7 setReason_];
  }

  return v7;
}

uint64_t Array<A>.tieBreakScores(tie:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v60 = a1;
  v6 = type metadata accessor for TopTwo();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = &v58 - v11;
  v12 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  isa = a3[2].isa;
  if (isa)
  {
    v59 = v9;
    v14 = a3 + 4;
    *&v10 = 136315650;
    v62 = v10;
    *&v10 = 136315138;
    v63 = v10;
    v61 = MEMORY[0x277D84F90];
    v65 = a2;
    do
    {
      v67 = *&v14->isa;
      v15 = v66;
      _s7SiriCam12RankedActionVWOcTm_1(a2, v66, type metadata accessor for TopTwo);
      v3 = *(&v67 + 1);
      v16 = *(*(&v67 + 1) + 24);
      v72 = v67;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
      a3 = v67;
      v16(v15, v67, v3);
      if ((*(v3 + 8))(a3, v3))
      {
        LODWORD(v18) = TieBreaking.shouldForceSkip()();
        v19 = (*(v3 + 32))(a3, v3);
        LOBYTE(v12) = v19;
        if (v18 & 1) == 0 && (v19)
        {
          if (one-time initialization token for ranker == -1)
          {
            goto LABEL_30;
          }

          goto LABEL_46;
        }

        if (one-time initialization token for ranker != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.ranker);
        outlined init with copy of SignalProviding(v71, v69);
        v3 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v3, v21))
        {
          v22 = swift_slowAlloc();
          LODWORD(v67) = v18;
          v18 = v22;
          v23 = swift_slowAlloc();
          v68 = v23;
          *v18 = v62;
          __swift_project_boxed_opaque_existential_1(v69, v70);
          v24 = TieBreaking.name.getter();
          v64 = boxed_opaque_existential_1;
          v25 = v12;
          v12 = v26;
          __swift_destroy_boxed_opaque_existential_0(v69);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v12, &v68);
          LOBYTE(v12) = v25;

          *(v18 + 4) = v27;
          *(v18 + 12) = 1024;
          *(v18 + 14) = v25 & 1;
          *(v18 + 18) = 1024;
          *(v18 + 20) = v67 & 1;
          _os_log_impl(&dword_266790000, v3, v21, "Skipping %s (supported=%{BOOL}d, forceSkipped=%{BOOL}d).", v18, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v23);
          v28 = v23;
          a2 = v65;
          MEMORY[0x26D5DDCD0](v28, -1, -1);
          v29 = v18;
          LOBYTE(v18) = v67;
          MEMORY[0x26D5DDCD0](v29, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v69);
        }

        a3 = TieBreaking.executionMetadata(supported:forceSkipped:boostInfo:)(v12 & 1, v18 & 1);
        MEMORY[0x26D5DCE50]();
        if (v73[2].isa >= (v73[3].isa >> 1))
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v73;
      }

      else
      {
        if (one-time initialization token for ranker != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.ranker);
        outlined init with copy of SignalProviding(v71, v69);
        a3 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(a3, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v68 = v33;
          *v32 = v63;
          __swift_project_boxed_opaque_existential_1(v69, v70);
          v34 = TieBreaking.name.getter();
          v36 = v35;
          __swift_destroy_boxed_opaque_existential_0(v69);
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v68);
          a2 = v65;

          *(v32 + 4) = v37;
          _os_log_impl(&dword_266790000, a3, v31, "%s is not enabled.", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x26D5DDCD0](v33, -1, -1);
          MEMORY[0x26D5DDCD0](v32, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v69);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v71);
      v14 += 2;
      isa = (isa - 1);
    }

    while (isa);
  }

  _s7SiriCam12RankedActionVWOcTm_1(a2, v60, type metadata accessor for TopTwo);
  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v71[0] = MEMORY[0x277D84F90];
  v40 = *(v12 + 16);
LABEL_21:
  v61 = v39;
  while (1)
  {
    if (v40 == v38)
    {

      return v61;
    }

    if (v38 >= *(v12 + 16))
    {
      break;
    }

    v41 = *(v12 + 8 * v38++ + 32);
    if (v41)
    {
      a3 = v41;
      MEMORY[0x26D5DCE50]();
      if (*((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v39 = v71[0];
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_30:
  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.ranker);
  outlined init with copy of SignalProviding(v71, v69);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68 = v46;
    *v45 = v63;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v47 = TieBreaking.name.getter();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_0(v69);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v68);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_266790000, v43, v44, "%s supports this tie.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x26D5DDCD0](v46, -1, -1);
    MEMORY[0x26D5DDCD0](v45, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  v51 = v59;
  TieBreaking.boostTopTwo(tie:)(v59, v65, a3, v3);
  TieBreaking.executionMetadata(supported:forceSkipped:boostInfo:)(v12 & 1, 0);

  MEMORY[0x26D5DCE50](v52);
  if (v73[2].isa >= (v73[3].isa >> 1))
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3 = v73;
  _s7SiriCam12RankedActionVWOcTm_1(v51, v60, type metadata accessor for TopTwo);
  v53 = 0;
  v69[0] = MEMORY[0x277D84F90];
  v54 = a3[2].isa;
  while (v54 != v53)
  {
    if (v53 >= a3[2].isa)
    {
      goto LABEL_45;
    }

    v55 = a3[v53 + 4].isa;
    v53 = (v53 + 1);
    if (v55)
    {
      v56 = v55;
      MEMORY[0x26D5DCE50]();
      if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v61 = v69[0];
    }
  }

  outlined destroy of TopTwo(v59, type metadata accessor for TopTwo);

  __swift_destroy_boxed_opaque_existential_0(v71);
  return v61;
}

uint64_t TieBreaking.name.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return String.init<A>(describing:)();
}

Swift::Bool __swiftcall TieBreaking.shouldForceSkip()()
{
  if ((*(v0 + 16))() == 4)
  {
    return 0;
  }

  return ForcedDisambiguation.decision()();
}

id TieBreaking.executionMetadata(supported:forceSkipped:boostInfo:)(char a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D56BF0]) init];
  if (v4)
  {
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARScoreBoost, 0x277D56BE0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 setActionCandidateBoosts_];

    v6 = TieBreaking.name.getter();
    v7 = MEMORY[0x26D5DCC90](v6);

    [v4 setTieBreakerName_];

    [v4 setIsTieBreakerSupported_];
    [v4 setWasTieBreakerForcedSkipped_];
  }

  return v4;
}

uint64_t TieBreaking.boostTopTwo(tie:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a1;
  v8 = type metadata accessor for RankedAction();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v101 = (v12 - v13);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  v105 = v93 - v15;
  OUTLINED_FUNCTION_6();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v93 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = v93 - v20;
  v22 = type metadata accessor for ScoreBoost();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_4();
  v102 = v24 - v25;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  v100 = (v93 - v27);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v28);
  v103 = (v93 - v29);
  OUTLINED_FUNCTION_6();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v93 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (v93 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = (v93 - v37);
  v39 = *(a2 + v8[11]);
  v40 = *(a4 + 40);
  v41 = a2 + v8[9];
  v97 = a3;
  v98 = v4;
  v99 = a4;
  v95 = a4 + 40;
  v94 = v40;
  v40(v39, v41, a3, a4);
  v42 = *(a2 + v8[7]) + *v38;
  RankedAction.with(score:)();
  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v43 = type metadata accessor for Logger();
  v44 = __swift_project_value_buffer(v43, static Logger.ranker);
  OUTLINED_FUNCTION_3_21();
  v104 = v21;
  _s7SiriCam12RankedActionVWOcTm_1(v21, v19, v45);
  _s7SiriCam12RankedActionVWOcTm_1(v38, v36, type metadata accessor for ScoreBoost);
  _s7SiriCam12RankedActionVWOcTm_1(v38, v33, type metadata accessor for ScoreBoost);
  v93[1] = v44;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v107 = v38;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v108 = v96;
    *v49 = 136315650;
    v51 = *v19;
    v50 = v19[1];

    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v19, v52);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, &v108);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2048;
    v54 = *v36;
    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v36, v55);
    *(v49 + 14) = v54;
    *(v49 + 22) = 2080;
    if (*(v33 + 2))
    {
      v56 = *(v33 + 1);
      v57 = *(v33 + 2);
    }

    else
    {
      v56 = 7104878;
      v57 = 0xE300000000000000;
    }

    v59 = v105;

    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v33, v61);
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v108);

    *(v49 + 24) = v62;
    _os_log_impl(&dword_266790000, v46, v47, "Boosted %s by %f, reason: %s", v49, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();

    v60 = v106;
  }

  else
  {

    outlined destroy of TopTwo(v33, type metadata accessor for ScoreBoost);
    outlined destroy of TopTwo(v36, type metadata accessor for ScoreBoost);
    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v19, v58);
    v59 = v105;
    v60 = v106;
  }

  v96 = type metadata accessor for TopTwo();
  v63 = a2 + *(v96 + 20);
  v64 = v103;
  v94(*(v63 + v8[11]), v63 + v8[9], v97, v99);
  v65 = *(v63 + v8[7]) + *v64;
  RankedAction.with(score:)();
  OUTLINED_FUNCTION_3_21();
  v66 = v101;
  _s7SiriCam12RankedActionVWOcTm_1(v59, v101, v67);
  v68 = v100;
  _s7SiriCam12RankedActionVWOcTm_1(v64, v100, type metadata accessor for ScoreBoost);
  v69 = v102;
  _s7SiriCam12RankedActionVWOcTm_1(v64, v102, type metadata accessor for ScoreBoost);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v72 = 136315650;
    v73 = *v66;
    v74 = v66[1];

    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v66, v75);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v108);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2048;
    v77 = *v68;
    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v68, v78);
    *(v72 + 14) = v77;
    *(v72 + 22) = 2080;
    if (*(v69 + 16))
    {
      v79 = *(v69 + 8);
      v80 = v69;
      v81 = *(v69 + 16);
    }

    else
    {
      v79 = 7104878;
      v80 = v69;
      v81 = 0xE300000000000000;
    }

    OUTLINED_FUNCTION_1_27();
    outlined destroy of TopTwo(v80, v84);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v108);

    *(v72 + 24) = v85;
    _os_log_impl(&dword_266790000, v70, v71, "Boosted %s by %f, reason: %s", v72, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();

    v59 = v105;
    v60 = v106;
  }

  else
  {

    OUTLINED_FUNCTION_4_16();
    outlined destroy of TopTwo(v69, v82);
    outlined destroy of TopTwo(v68, v70);
    OUTLINED_FUNCTION_0_24();
    outlined destroy of TopTwo(v66, v83);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24CAARSchemaCAARScoreBoostCSgGMd, &_ss23_ContiguousArrayStorageCySo24CAARSchemaCAARScoreBoostCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813E60;
  *(inited + 32) = ScoreBoost.loggingInfo.getter();
  v87 = 0;
  *(inited + 40) = ScoreBoost.loggingInfo.getter();
  v88 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  while (v87 != 2)
  {
    v89 = *(inited + 8 * v87++ + 32);
    if (v89)
    {
      v90 = v89;
      MEMORY[0x26D5DCE50]();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v88 = v108;
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_4_16();
  outlined destroy of TopTwo(v64, v91);
  outlined destroy of TopTwo(v107, inited);
  outlined init with take of TopTwo(v104, v60, type metadata accessor for RankedAction);
  outlined init with take of TopTwo(v59, v60 + *(v96 + 20), type metadata accessor for RankedAction);
  return v88;
}

uint64_t type metadata accessor for ScoreBoost()
{
  result = type metadata singleton initialization cache for ScoreBoost;
  if (!type metadata singleton initialization cache for ScoreBoost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7SiriCam12RankedActionVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of TopTwo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of TopTwo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void type metadata completion function for ScoreBoost()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t CamFeatureFlag.isEnabled.getter(unsigned __int8 a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CamFeatureFlag.forceEnabled;
  if (*(static CamFeatureFlag.forceEnabled + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7[3] = &type metadata for CamFeatureFlag;
    v7[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
    LOBYTE(v7[0]) = a1;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v5 & 1;
}

const char *CamFeatureFlag.feature.getter(char a1)
{
  result = "verbose_logging";
  switch(a1)
  {
    case 1:
      result = "word_embeddings";
      break;
    case 2:
      result = "intent_disambiguation";
      break;
    case 3:
      result = "personal_auto_send";
      break;
    case 4:
      result = "cdm_refactor";
      break;
    case 5:
      result = "smart_disambiguation";
      break;
    case 6:
      result = "disambiguate_all_ranking_ties";
      break;
    case 7:
      result = "disambiguate_for_ranking_evaluation";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CamFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t static RankedAction.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction() + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v8 == 0xD000000000000021 && 0x8000000266819930 == v9;
  if (v10 || (OUTLINED_FUNCTION_1_28() & 1) != 0)
  {
    return 0;
  }

  v12 = *a2;
  v11 = a2[1];
  v13 = v12 == 0xD000000000000021 && 0x8000000266819930 == v11;
  if (v13 || (OUTLINED_FUNCTION_1_28() & 1) != 0)
  {
    return 1;
  }

  if (v8 == v12 && v9 == v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_25();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_25();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static RankedAction.== infix(_:_:)()
{
  v0 = *(type metadata accessor for RankedAction() + 36);

  return static UUID.== infix(_:_:)();
}

unint64_t lazy protocol witness table accessor for type RankedAction and conformance RankedAction()
{
  result = lazy protocol witness table cache variable for type RankedAction and conformance RankedAction;
  if (!lazy protocol witness table cache variable for type RankedAction and conformance RankedAction)
  {
    type metadata accessor for RankedAction();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction and conformance RankedAction);
  }

  return result;
}

uint64_t _sSLsE2leoiySbx_xtFZ7SiriCam12RankedActionV_Tt1g5(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction() + 28);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 >= v6)
  {
    if (v6 >= v5)
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = v8 == 0xD000000000000021 && 0x8000000266819930 == v9;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13 = *a1;
        v12 = a1[1];
        v14 = v13 == 0xD000000000000021 && 0x8000000266819930 == v12;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_2;
        }

        v15 = v8 == v13 && v9 == v12;
        if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
          return v7 & 1;
        }
      }
    }

    v7 = 1;
    return v7 & 1;
  }

LABEL_2:
  v7 = 0;
  return v7 & 1;
}

uint64_t _sSLsE2geoiySbx_xtFZ7SiriCam12RankedActionV_Tt1g5(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction() + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 >= v6)
  {
    if (v6 >= v5)
    {
      v8 = *a1;
      v9 = a1[1];
      v10 = v8 == 0xD000000000000021 && 0x8000000266819930 == v9;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13 = *a2;
        v12 = a2[1];
        v14 = v13 == 0xD000000000000021 && 0x8000000266819930 == v12;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_2;
        }

        v15 = v8 == v13 && v9 == v12;
        if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
          return v7 & 1;
        }
      }
    }

    v7 = 1;
    return v7 & 1;
  }

LABEL_2:
  v7 = 0;
  return v7 & 1;
}

uint64_t one-time initialization function for dispatchQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v11 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static AutoConfirmProvider.dispatchQueue = result;
  return result;
}

void *one-time initialization function for autoConfirmProvider()
{
  type metadata accessor for AutoConfirmProvider();
  swift_allocObject();
  result = AutoConfirmProvider.().init()();
  static AutoConfirmProvider.autoConfirmProvider = result;
  return result;
}

uint64_t AutoConfirmProvider.().init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.autoSend);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "Initialising AutoConfirmProvider", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  v6 = type metadata accessor for AutoSendHandler();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = AutoSendHandler.init()();
  v10 = *(v1 + 16);
  *(v1 + 16) = v9;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_266790000, v11, v12, "Successfully initialised AutoConfirmProvider", v13, 2u);
    MEMORY[0x26D5DDCD0](v13, -1, -1);
  }

  return v1;
}

uint64_t AutoConfirmProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AutoConfirmProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t PersonalContextFeatureExtractor.transformCategorical(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v7)
    {
      return *(*(a3 + 56) + 8 * v6);
    }
  }

  _StringGuts.grow(_:)(27);

  MEMORY[0x26D5DCD80](a1, a2);
  MEMORY[0x26D5DCD80](46, 0xE100000000000000);
  lazy protocol witness table accessor for type CamError and conformance CamError();
  v9 = OUTLINED_FUNCTION_6_2();
  *v10 = 0xD000000000000018;
  v10[1] = 0x800000026681BEC0;
  return OUTLINED_FUNCTION_2(v9, v10);
}

uint64_t PersonalContextFeatureExtractor.transformTimeRange(_:)(unint64_t a1, char a2)
{
  if (a2)
  {
    lazy protocol witness table accessor for type CamError and conformance CamError();
    v2 = OUTLINED_FUNCTION_6_2();
    *v3 = 0xD000000000000019;
    v3[1] = 0x800000026681BEA0;
    return OUTLINED_FUNCTION_2(v2, v3);
  }

  else
  {
    Dictionary.init(dictionaryLiteral:)();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v6 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v7, v8);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v9 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v10, v11);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v12 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v13, 0xEA0000000000656DLL);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v14 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 1853317476, 0xE400000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v15 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v16, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v17 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v18, 0xEA0000000000656DLL);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v19 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 1802728804, 0xE400000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v20 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v21, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v22 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v23, 0xE900000000000065);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v24 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v25, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v26 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v27, 0xE500000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v28 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v29, v30);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v31 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v32, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v33 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v34, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v35 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v36, 0xE700000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v37 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v38, 0xE800000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v39 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v40, v41);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v42 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v43, v44);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v45 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v46, 0xE600000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v47 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v48, 0xE600000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    v49 = OUTLINED_FUNCTION_2_22();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v50, 0xE600000000000000);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_29();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((a1 >> 22) & 1, 0x7265746E6977, 0xE600000000000000);
    return v51;
  }
}

uint64_t PersonalContextFeatureExtractor.gatherCommonSignals()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2668185F0;
  v2 = type metadata accessor for DeviceClassSignal();
  v3 = MEMORY[0x277D60260];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  DeviceClassSignal.init()();
  v4 = type metadata accessor for ClientHourOfDaySignal();
  v5 = MEMORY[0x277D602E0];
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  __swift_allocate_boxed_opaque_existential_1((v1 + 72));
  ClientHourOfDaySignal.init()();
  v6 = type metadata accessor for ClientTimeRangeSignal();
  v7 = MEMORY[0x277D602E8];
  *(v1 + 136) = v6;
  *(v1 + 144) = v7;
  __swift_allocate_boxed_opaque_existential_1((v1 + 112));
  ClientTimeRangeSignal.init()();
  v8 = type metadata accessor for ClientDaylightSignal();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ClientDaylightSignal.init()();
  v12 = MEMORY[0x277D602B8];
  *(v1 + 176) = v8;
  *(v1 + 184) = v12;
  *(v1 + 152) = v11;
  v13 = type metadata accessor for ClientCarplaySignal();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = ClientCarplaySignal.init()();
  v17 = MEMORY[0x277D60298];
  *(v1 + 216) = v13;
  *(v1 + 224) = v17;
  *(v1 + 192) = v16;
  v18 = type metadata accessor for SignalGatherer();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  SignalGatherer.init(signals:candidateAppBundleIds:)();

  dispatch thunk of SignalGatherer.gatherValuesAndTimings(completion:)();

  swift_beginAccess();
  v21 = *(v0 + 16);

  return v21;
}

uint64_t closure #1 in PersonalContextFeatureExtractor.gatherCommonSignals()(uint64_t a1, uint64_t *a2)
{
  v60 = a2;
  i = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  v2 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v4 = (&v56 - v3);
  v5 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SignalGathererError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(i, &v56 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v19, v23, v10);
    if (one-time initialization token for autoSend == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v56 = v6;
    v57 = v5;
    (*(v6 + 32))(v9, v23, v5);
    v37 = SignalGatherer.ValuesWithTimings.values.getter();
    v10 = v37;
    v11 = v37 + 64;
    v38 = 1 << *(v37 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v37 + 64);
    v17 = ((v38 + 63) >> 6);

    v41 = 0;
    v19 = v9;
    for (i = v9; v40; v19 = i)
    {
      v42 = v41;
LABEL_14:
      v45 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v46 = v45 | (v42 << 6);
      v47 = *(v10 + 56);
      v48 = (*(v10 + 48) + 16 * v46);
      v49 = *v48;
      v50 = v48[1];
      v51 = type metadata accessor for SignalValue();
      v52 = *(v51 - 8);
      v53 = v47 + *(v52 + 72) * v46;
      v54 = *(v59 + 48);
      (*(v52 + 16))(v4 + v54, v53, v51);
      *v4 = v49;
      v4[1] = v50;

      closure #1 in closure #1 in PersonalContextFeatureExtractor.gatherCommonSignals()(v49, v50, v4 + v54, v60 + 2);
      outlined destroy of (key: String, value: SignalValue)(v4);
    }

    v44 = v56;
    v43 = v57;
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v17)
      {

        (*(v44 + 8))(v19, v43);
      }

      v40 = *(v11 + 8 * v42);
      ++v41;
      if (v40)
      {
        v41 = v42;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.autoSend);
  v25 = *(v11 + 16);
  v25(v17, v19, v10);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v60 = v19;
    v29 = v28;
    v30 = swift_slowAlloc();
    v61 = v30;
    *v29 = 136315138;
    v25(v57, v17, v10);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v34 = *(v11 + 8);
    v34(v17, v10);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v61);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_266790000, v26, v27, "PersonalContextFeatureExtractor: signal gatherer error: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26D5DDCD0](v30, -1, -1);
    MEMORY[0x26D5DDCD0](v29, -1, -1);

    return (v34)(v60, v10);
  }

  else
  {

    v55 = *(v11 + 8);
    v55(v17, v10);
    return (v55)(v19, v10);
  }
}

void closure #1 in closure #1 in PersonalContextFeatureExtractor.gatherCommonSignals()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SignalValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v12, a3, v8);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D60170])
  {
    (*(v9 + 96))(v12, v8);
    v13 = *v12;
    swift_beginAccess();
    v14 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *a4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a1, a2);
    *a4 = v19;
    swift_endAccess();
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    if (one-time initialization token for autoSend != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.autoSend);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266790000, v16, v17, "PersonalContextFeatureExtractor: Ignoring bundle-dependent signal; can only use independent signals in this context", v18, 2u);
      MEMORY[0x26D5DDCD0](v18, -1, -1);
    }
  }
}

char *PersonalContextFeatureExtractor.extractImpl(from:)()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v63 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - v10;
  v12 = Dictionary.init(dictionaryLiteral:)();
  static Locale.current.getter();
  v66 = Locale.regionCode.getter();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v11, v1);
  if (!v14)
  {

    lazy protocol witness table accessor for type CamError and conformance CamError();
    v21 = OUTLINED_FUNCTION_6_2();
    *v22 = xmmword_266818600;
LABEL_9:
    OUTLINED_FUNCTION_2(v21, v22);
    return v9;
  }

  static Locale.current.getter();
  v64 = Locale.languageCode.getter();
  v17 = v16;
  v15(v9, v1);
  if (!v17)
  {

    lazy protocol witness table accessor for type CamError and conformance CamError();
    v21 = OUTLINED_FUNCTION_6_2();
    *v22 = 0xD000000000000010;
    *(v22 + 8) = 0x800000026681BE00;
    goto LABEL_9;
  }

  v65 = v17;
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v15(v6, v1);
  if (one-time initialization token for top13LocaleMap != -1)
  {
    swift_once();
  }

  v18 = OUTLINED_FUNCTION_15_10();
  PersonalContextFeatureExtractor.transformCategorical(_:_:)(v18, v19, v20);
  if (v0)
  {

LABEL_30:

    return v9;
  }

  OUTLINED_FUNCTION_16_10();

  swift_isUniquelyReferenced_nonNull_native();
  v67 = v12;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, 0x656C61636F6CLL, 0xE600000000000000);
  v23 = v67;
  if (one-time initialization token for top13RegionMap != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v24 = PersonalContextFeatureExtractor.transformCategorical(_:_:)(v66, v14, top13RegionMap._rawValue);

    swift_isUniquelyReferenced_nonNull_native();
    v67 = v23;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x6E6F69676572, 0xE600000000000000);
    v25 = v67;
    if (one-time initialization token for top13LanguageMap != -1)
    {
      swift_once();
    }

    v26 = PersonalContextFeatureExtractor.transformCategorical(_:_:)(v64, v65, top13LanguageMap._rawValue);
    OUTLINED_FUNCTION_13_14();

    swift_isUniquelyReferenced_nonNull_native();
    v67 = v25;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x65676175676E616CLL, 0xE800000000000000);
    v27 = v67;
    v28 = PersonalContextFeatureExtractor.gatherCommonSignals()();
    specialized Dictionary.subscript.getter(0xD000000000000011, 0x800000026681BE20, v28);
    if (v29)
    {
      OUTLINED_FUNCTION_27_4();
      if (v30)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26();
      v27 = v67;
    }

    OUTLINED_FUNCTION_13_14();
    specialized Dictionary.subscript.getter(0xD000000000000012, 0x800000026681BE40, v28);
    if (v31)
    {
      OUTLINED_FUNCTION_27_4();
      if (v32)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26();
      v27 = v67;
    }

    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_17_12("raw.clientHourOfDay");
    if (v33)
    {
      OUTLINED_FUNCTION_27_4();
      if (v34)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26();
      v27 = v67;
    }

    specialized Dictionary.subscript.getter(0x697665442E776172, 0xEF7373616C436563, v28);
    if (v35)
    {
      OUTLINED_FUNCTION_27_4();
      if (v36)
      {
        OUTLINED_FUNCTION_16_10();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
        OUTLINED_FUNCTION_7_17();
        OUTLINED_FUNCTION_6_23();
        OUTLINED_FUNCTION_15_10();
        _NativeDictionary._delete(at:)();
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_26();
      v27 = v67;
    }

    v37 = OUTLINED_FUNCTION_17_12("raw.clientTimeRange");
    v14 = v38;

    v39 = PersonalContextFeatureExtractor.transformTimeRange(_:)(v37, v14 & 1);
    v41 = specialized Dictionary.merging(_:uniquingKeysWith:)(v39, v27);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMd, &_ss18_DictionaryStorageCySSSo12MLMultiArrayCGMR);
    v42 = static _DictionaryStorage.copy(original:)();
    v9 = v42;
    v43 = 0;
    v44 = 1 << *(v41 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v41 + 64;
    v47 = v45 & *(v41 + 64);
    v48 = (v44 + 63) >> 6;
    v64 = v42 + 64;
    v65 = v41;
    if (v47)
    {
      break;
    }

LABEL_36:
    v50 = v43;
    while (1)
    {
      v43 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v43 >= v48)
      {
        goto LABEL_30;
      }

      ++v50;
      if (*(v46 + 8 * v43))
      {
        OUTLINED_FUNCTION_12_16();
        v66 = v52 & v51;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  while (1)
  {
    v49 = __clz(__rbit64(v47));
    v66 = (v47 - 1) & v47;
LABEL_41:
    v53 = v49 | (v43 << 6);
    v54 = (*(v65 + 48) + 16 * v53);
    v55 = *v54;
    v14 = v54[1];
    v56 = *(*(v65 + 56) + 8 * v53);
    v57 = type metadata accessor for MLMultiArray();

    v58 = v56;
    v23 = v57;
    result = static MLMultiArray.makeScalar(from:)(v58);
    *(v64 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v59 = (*(v9 + 6) + 16 * v53);
    *v59 = v55;
    v59[1] = v14;
    *(*(v9 + 7) + 8 * v53) = result;
    v60 = *(v9 + 2);
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      break;
    }

    *(v9 + 2) = v62;
    v47 = v66;
    if (!v66)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t protocol witness for static FeatureExtracting.extractedFeatures.getter in conformance PersonalContextFeatureExtractor()
{
  if (one-time initialization token for extractedFeatures != -1)
  {
    swift_once();
  }
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_18(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_21_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_5_18(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_21_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_5_18(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for RankedAction();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_12(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v7 = OUTLINED_FUNCTION_14_16();
  if (!*(v2 + 16))
  {
LABEL_28:

LABEL_29:
    *v1 = v7;
    return;
  }

  OUTLINED_FUNCTION_4_17();
  if (!v3)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v9;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_12_16();
        v3 = v11 & v10;
        goto LABEL_9;
      }
    }

    if ((v25 & 1) == 0)
    {

      v1 = v24;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_20_12();
    v1 = v24;
    if (v22 != v23)
    {
      *v4 = -1 << v21;
    }

    else
    {
      OUTLINED_FUNCTION_25_8(v21);
    }

    *(v2 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_19_12();
LABEL_9:
    OUTLINED_FUNCTION_10_16(v8);
    if ((v12 & 1) == 0)
    {
    }

    v13 = *(v7 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();
    OUTLINED_FUNCTION_9_15(v14);
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3();
LABEL_20:
    OUTLINED_FUNCTION_3_22(v16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_23_9();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v6 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_22_6();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_11_12(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo14MLFeatureValueCGMd, _ss18_DictionaryStorageCySSSo14MLFeatureValueCGMR);
  v7 = OUTLINED_FUNCTION_14_16();
  if (!v2[2])
  {
LABEL_28:

LABEL_29:
    *v1 = v7;
    return;
  }

  OUTLINED_FUNCTION_4_17();
  if (!v3)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v9;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_12_16();
        v3 = v11 & v10;
        goto LABEL_9;
      }
    }

    if ((v26 & 1) == 0)
    {

      v1 = v25;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_20_12();
    v1 = v25;
    if (v23 != v24)
    {
      *v4 = -1 << v22;
    }

    else
    {
      OUTLINED_FUNCTION_25_8(v22);
    }

    v2[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_19_12();
LABEL_9:
    OUTLINED_FUNCTION_10_16(v8);
    if ((v12 & 1) == 0)
    {

      v13 = v2;
    }

    v14 = *(v7 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();
    OUTLINED_FUNCTION_9_15(v15);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3();
LABEL_20:
    OUTLINED_FUNCTION_3_22(v17);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_23_9();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v6 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_22_6();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v45 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v44);
  v6 = v44[1];
  v7 = v44[3];
  v8 = v44[4];
  v36 = v44[5];
  v37 = v44[0];
  v9 = (v44[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v39 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v37 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v37 + 56) + 8 * v12);
      v43[0] = *v13;
      v43[1] = v14;
      v43[2] = v15;

      v36(&v40, v43);

      v16 = v40;
      v17 = v41;
      v38 = v42;
      v18 = *v45;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (*(v18 + 24) >= v23)
      {
        if ((v39 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v25 = v45;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23);
        v26 = *v25;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v20 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v45;
      if (v24)
      {
        v30 = *(v29[7] + 8 * v20);

        *(v29[7] + 8 * v20) = v30;
      }

      else
      {
        v29[(v20 >> 6) + 8] |= 1 << v20;
        v31 = (v29[6] + 16 * v20);
        *v31 = v16;
        v31[1] = v17;
        *(v29[7] + 8 * v20) = v38;
        v32 = v29[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v29[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : MLFeatureValue].Iterator._Variant();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v39 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return MEMORY[0x2821FD7D8](v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_25_8@<X0>(uint64_t a1@<X8>)
{

  return specialized UnsafeMutablePointer.assign(repeating:count:)(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_27_4()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t static AffinityRankKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for AffinityRankKey() + 20);

  return static UUID.== infix(_:_:)();
}

uint64_t AffinityRankKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for AffinityRankKey() + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_27();
  lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v4, v5);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int AffinityRankKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for AffinityRankKey() + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_27();
  lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v4, v5);
  OUTLINED_FUNCTION_15_11();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AffinityRankKey(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_27();
  lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v7, v8);
  OUTLINED_FUNCTION_15_11();
  return Hasher._finalize()();
}

uint64_t AffinityRankFeatureExtractor.init(actions:)(uint64_t a1)
{
  v188 = type metadata accessor for AffinityRankKey();
  v2 = OUTLINED_FUNCTION_22(v188);
  v179 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v194 = (v7 - v6);
  v177 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = OUTLINED_FUNCTION_22(v177);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v176 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21_1(v165 - v19);
  v195 = type metadata accessor for UUID();
  v20 = OUTLINED_FUNCTION_22(v195);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v187 = v25;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_3();
  v192 = v27;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_3();
  v183 = v29;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  v32 = OUTLINED_FUNCTION_21_1(v165 - v31);
  v33 = type metadata accessor for CamUSOParse(v32);
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_0();
  v39 = OUTLINED_FUNCTION_21_1(v38 - v37);
  v40 = type metadata accessor for CamParse(v39);
  v41 = OUTLINED_FUNCTION_0_2(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_0();
  v180 = (v45 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMR);
  v47 = OUTLINED_FUNCTION_14(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5();
  v186 = v50;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_3();
  v185 = v52;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v53);
  v55 = (v165 - v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
  v57 = OUTLINED_FUNCTION_22(v56);
  v190 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_5();
  v181 = v61;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_10_3();
  v189 = v63;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v64);
  v191 = v165 - v65;
  v66 = type metadata accessor for ActionCandidate();
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v66);
  v71 = v165 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a1 + 16);
  v178 = v22;
  v165[1] = a1;
  if (v72)
  {
    v169 = v68;
    v184 = *(v68 + 20);
    v73 = a1 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v172 = (v10 + 8);
    v74 = MEMORY[0x277D84F90];
    v168 = (v22 + 32);
    v182 = *(v69 + 72);
    v75 = v180;
    v173 = v40;
    v167 = v165 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      _s7SiriCam0B5ParseOWOcTm_2(v73, v71, type metadata accessor for ActionCandidate);
      OUTLINED_FUNCTION_6_24();
      _s7SiriCam0B5ParseOWOcTm_2(&v71[v184], v75, v76);
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_4_18();
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v56);
        OUTLINED_FUNCTION_8_19();
        _s7SiriCam0B5ParseOWOhTm_3(v75, v77);
      }

      else
      {
        v78 = v174;
        outlined init with take of CamUSOParse(v75, v174);
        v79 = v176;
        Siri_Nlu_External_UserParse.id.getter();
        v80 = v175;
        static ConversionUtils.convertProtoToUuid(protoUuid:)();
        (*v172)(v79, v177);
        OUTLINED_FUNCTION_7_18();
        _s7SiriCam0B5ParseOWOhTm_3(v78, v81);
        v82 = v195;
        if (__swift_getEnumTagSinglePayload(v80, 1, v195) == 1)
        {
          OUTLINED_FUNCTION_4_18();
          outlined destroy of (CamLogOutput, CamModelMetadata)(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v83 = v55;
          v84 = 1;
        }

        else
        {
          v85 = *v168;
          v86 = v170;
          (*v168)(v170, v80, v82);
          v87 = *(v56 + 48);
          v193 = v74;
          v71 = v167;
          v171 = *(v56 + 64);
          v88 = *(v167 + 1);
          *v55 = *v167;
          v55[1] = v88;
          v85(v55 + v87, v86, v82);
          v89 = *&v71[*(v169 + 24)];

          OUTLINED_FUNCTION_4_18();
          *(v55 + v171) = v89;
          v74 = v193;
          v83 = v55;
          v84 = 0;
        }

        __swift_storeEnumTagSinglePayload(v83, v84, 1, v56);
        v75 = v180;
      }

      if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v55, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMR);
      }

      else
      {
        outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v55, v191, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = *(v74 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v74 = v92;
        }

        v90 = *(v74 + 16);
        if (v90 >= *(v74 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v74 = v93;
        }

        *(v74 + 16) = v90 + 1;
        outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v191, v74 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v90, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
      }

      v73 += v182;
      --v72;
    }

    while (v72);
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_27();
  lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(v94, v95);
  v96 = v195;
  v97 = Dictionary.init(dictionaryLiteral:)();
  v98 = *(v74 + 16);
  v193 = v74;
  v191 = v98;
  if (v98)
  {
    v99 = 0;
    v182 = v74 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
    v180 = (v178 + 32);
    v184 = v178 + 16;
    v100 = (v178 + 8);
    v101 = v183;
    while (v99 < *(v193 + 16))
    {
      v102 = v189;
      outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(v182 + *(v190 + 72) * v99, v189);
      v103 = v102;
      v104 = v181;
      outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(v103, v181);
      v105 = *(v104 + 8);

      v106 = *(v104 + *(v56 + 64));
      (*v180)(v101, v104 + *(v56 + 48), v96);
      if (v97[2] && (specialized __RawDictionaryStorage.find<A>(_:)(), (v108 & 1) != 0))
      {
        v109 = *(v97[7] + 8 * v107);
      }

      else
      {
        v109 = 0x8000000000000000;
      }

      v110 = *v184;
      (*v184)(v192, v101, v195);
      if (v106 <= v109)
      {
        v111 = v109;
      }

      else
      {
        v111 = v106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v196 = v97;
      specialized __RawDictionaryStorage.find<A>(_:)();
      v115 = v97[2];
      v116 = (v114 & 1) == 0;
      v117 = v115 + v116;
      if (__OFADD__(v115, v116))
      {
        goto LABEL_65;
      }

      v118 = v113;
      v119 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSiGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSiGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v117))
      {
        specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v119 & 1) != (v121 & 1))
        {
          goto LABEL_70;
        }

        v118 = v120;
      }

      v97 = v196;
      if (v119)
      {
        *(v196[7] + 8 * v118) = v111;
        v122 = *v100;
        v96 = v195;
        (*v100)(v192, v195);
        v101 = v183;
        v122(v183, v96);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v189, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
      }

      else
      {
        v196[(v118 >> 6) + 8] |= 1 << v118;
        v123 = v178;
        v124 = v192;
        v125 = v195;
        v110(v97[6] + *(v178 + 72) * v118, v192, v195);
        v96 = v125;
        *(v97[7] + 8 * v118) = v111;
        v126 = *(v123 + 8);
        v126(v124, v96);
        v101 = v183;
        v126(v183, v96);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v189, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
        v127 = v97[2];
        v128 = __OFADD__(v127, 1);
        v129 = v127 + 1;
        if (v128)
        {
          goto LABEL_69;
        }

        v97[2] = v129;
      }

      ++v99;
      v98 = v191;
      if (v191 == v99)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(&lazy protocol witness table cache variable for type AffinityRankKey and conformance AffinityRankKey, type metadata accessor for AffinityRankKey);
    v130 = Dictionary.init(dictionaryLiteral:)();
    v131 = 0;
    v192 = (v178 + 32);
    v189 = (v178 + 16);
    v184 = v178 + 8;
    v132 = v187;
LABEL_39:
    v133 = v186;
    v134 = v193;
    while (1)
    {
      if (v131 == v98)
      {
        v135 = 1;
        v131 = v98;
      }

      else
      {
        if ((v131 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v131 >= *(v134 + 16))
        {
          goto LABEL_67;
        }

        outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(v134 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v131, v133);
        v135 = 0;
        ++v131;
      }

      __swift_storeEnumTagSinglePayload(v133, v135, 1, v56);
      v136 = v133;
      v137 = v185;
      outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v136, v185, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretSgMR);
      if (__swift_getEnumTagSinglePayload(v137, 1, v56) == 1)
      {

        result = v166;
        *(v166 + 16) = v130;
        return result;
      }

      v138 = *v137;
      v139 = v137[1];
      v140 = *(v137 + *(v56 + 64));
      (*v192)(v132, v137 + *(v56 + 48), v96);
      if (!v97[2])
      {
        break;
      }

      specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v142 & 1) == 0)
      {
        goto LABEL_62;
      }

      v143 = v132;
      v132 = *(v97[7] + 8 * v141);
      v144 = v194;
      (*v189)(v194 + *(v188 + 20), v143, v96);
      *v144 = v138;
      v144[1] = v139;
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v196 = v130;
      v146 = specialized __RawDictionaryStorage.find<A>(_:)(v144);
      v148 = v130[2];
      v149 = (v147 & 1) == 0;
      v150 = v148 + v149;
      if (__OFADD__(v148, v149))
      {
        goto LABEL_63;
      }

      v96 = v146;
      v151 = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy7SiriCam15AffinityRankKeyVs6UInt32VGMd, &_ss17_NativeDictionaryVy7SiriCam15AffinityRankKeyVs6UInt32VGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v145, v150))
      {
        v152 = specialized __RawDictionaryStorage.find<A>(_:)(v194);
        v98 = v191;
        if ((v151 & 1) != (v153 & 1))
        {
          goto LABEL_70;
        }

        v96 = v152;
      }

      else
      {
        v98 = v191;
      }

      if (v140 == v132)
      {
        v154 = 2;
      }

      else
      {
        v154 = 1;
      }

      v130 = v196;
      if (v151)
      {
        *(v196[7] + 4 * v96) = v154;
        OUTLINED_FUNCTION_1_30();
        _s7SiriCam0B5ParseOWOhTm_3(v194, v161);
        v162 = OUTLINED_FUNCTION_11_13();
        v163(v162);
        goto LABEL_39;
      }

      v196[(v96 >> 6) + 8] |= 1 << v96;
      v155 = v194;
      _s7SiriCam0B5ParseOWOcTm_2(v194, v130[6] + *(v179 + 72) * v96, type metadata accessor for AffinityRankKey);
      *(v130[7] + 4 * v96) = v154;
      OUTLINED_FUNCTION_1_30();
      _s7SiriCam0B5ParseOWOhTm_3(v155, v156);
      v157 = OUTLINED_FUNCTION_11_13();
      v158(v157);
      v159 = v130[2];
      v128 = __OFADD__(v159, 1);
      v160 = v159 + 1;
      v133 = v186;
      v134 = v193;
      if (v128)
      {
        goto LABEL_68;
      }

      v130[2] = v160;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}