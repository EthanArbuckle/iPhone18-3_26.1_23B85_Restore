uint64_t AffinityRankFeatureExtractor.extract(usoParse:flowHandlerId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v3 = type metadata accessor for AffinityRankKey();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v9 = (v8 - v7);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v39 - v23;
  v25 = type metadata accessor for UUID();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v33 = v32 - v31;
  Siri_Nlu_External_UserParse.id.getter();
  static ConversionUtils.convertProtoToUuid(protoUuid:)();
  (*(v13 + 8))(v18, v10);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  else
  {
    (*(v28 + 32))(v33, v24, v25);
    v35 = *(v39[1] + 16);
    (*(v28 + 16))(v9 + *(v3 + 20), v33, v25);
    v36 = v41;
    *v9 = v40;
    v9[1] = v36;

    v37 = specialized Dictionary.subscript.getter(v9, v35);
    OUTLINED_FUNCTION_1_30();
    _s7SiriCam0B5ParseOWOhTm_3(v9, v38);
    (*(v28 + 8))(v33, v25);
    if ((v37 & 0x100000000) != 0)
    {
      return 0;
    }

    else
    {
      return v37;
    }
  }
}

uint64_t AffinityRankFeatureExtractor.extractImpl(from:)(uint64_t *a1)
{
  v1 = AffinityRankFeatureExtractor.extractFromAction(from:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000266819410;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t AffinityRankFeatureExtractor.extractFromAction(from:)(uint64_t *a1)
{
  v2 = type metadata accessor for CamUSOParse(0);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for CamParse(0);
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = *(type metadata accessor for ActionCandidate() + 20);
  OUTLINED_FUNCTION_6_24();
  _s7SiriCam0B5ParseOWOcTm_2(a1 + v17, v15, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v20 = EnumCaseMultiPayload;
    result = 0;
    if (v20 == 1)
    {
      OUTLINED_FUNCTION_8_19();
      _s7SiriCam0B5ParseOWOhTm_3(v15, v22);
      return 0;
    }
  }

  else
  {
    outlined init with take of CamUSOParse(v15, v8);
    v23 = AffinityRankFeatureExtractor.extract(usoParse:flowHandlerId:)(v8, *a1, a1[1]);
    OUTLINED_FUNCTION_7_18();
    _s7SiriCam0B5ParseOWOhTm_3(v8, v24);
    return v23;
  }

  return result;
}

uint64_t type metadata accessor for AffinityRankKey()
{
  result = type metadata singleton initialization cache for AffinityRankKey;
  if (!type metadata singleton initialization cache for AffinityRankKey)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AffinityRankKey()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of (flowHandlerId: String, parseId: UUID, affinityScore: Int)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AffinityRankKey and conformance AffinityRankKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SiriCam0B5ParseOWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t CAARFeatures.WindowLengths.rawValue.getter(char a1)
{
  result = 7156326;
  switch(a1)
  {
    case 1:
      result = 1831874918;
      break;
    case 2:
      result = 6828390;
      break;
    case 3:
      result = 6829670;
      break;
    case 4:
      result = 6566246;
      break;
    case 5:
      result = 6567782;
      break;
    case 6:
      result = 1681404518;
      break;
    case 7:
      result = 6712937;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static CAARFeatures.bucketedFeatures(_:buckets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v16;
    v8 = (a3 + 32);
    do
    {
      v9 = *v8++;

      MEMORY[0x26D5DCD80](46, 0xE100000000000000);
      v10 = 0xE300000000000000;
      v11 = 7156326;
      switch(v9)
      {
        case 1:
          v10 = 0xE400000000000000;
          v11 = 1831874918;
          break;
        case 2:
          v11 = 6828390;
          break;
        case 3:
          v11 = 6829670;
          break;
        case 4:
          v11 = 6566246;
          break;
        case 5:
          v11 = 6567782;
          break;
        case 6:
          v10 = 0xE400000000000000;
          v11 = 1681404518;
          break;
        case 7:
          v11 = 6712937;
          break;
        default:
          break;
      }

      MEMORY[0x26D5DCD80](v11, v10);

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t one-time initialization function for ACTION_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD00000000000002BLL, 0x800000026681BF60, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.ACTION_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for APP_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000028, 0x800000026681BFD0, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.APP_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD00000000000002ELL, 0x800000026681B8A0, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for FRAC_SELECTED_APP_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD00000000000002BLL, 0x800000026681B8F0, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.FRAC_SELECTED_APP_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for SELECTED_ACTION_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000033, 0x800000026681BF20, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.SELECTED_ACTION_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for SELECTED_APP_DISAMBIGUATION_FREQ()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000030, 0x800000026681BF90, &outlined read-only object #0 of static CAARFeatures.WindowLengths.allCases.getter);
  static CAARFeatures.SELECTED_APP_DISAMBIGUATION_FREQ = result;
  return result;
}

uint64_t one-time initialization function for APP_LAUNCH_COUNT()
{
  result = static CAARFeatures.bucketedFeatures(_:buckets:)(0xD000000000000012, 0x800000026681C000, &outlined read-only object #0 of one-time initialization function for APP_LAUNCH_COUNT);
  static CAARFeatures.APP_LAUNCH_COUNT = result;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CamOutputProvider(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CamOutputProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void CamOutputProvider.toCamOutput(from:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x26D5DCC90](*v1, v5);
  v7 = [a1 featureValueForName_];

  if (!v7 || (v8 = [v7 multiArrayValue], v7, !v8))
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(60);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x26D5DCD80](v27 + 21, v28 | 0x8000000000000000);
    v29 = v4;
    v30 = v5;
LABEL_14:
    MEMORY[0x26D5DCD80](v29, v30);
    goto LABEL_15;
  }

  v9 = MLMultiArray.toDoubleScalar()();

  if (v10)
  {
    return;
  }

  v11 = v2[2];
  v12 = v2[3];
  v13 = MEMORY[0x26D5DCC90](v11, v12);
  v14 = [a1 objectForKeyedSubscript_];

  if (!v14 || (v15 = [v14 multiArrayValue], v14, !v15))
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(58);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_1_31();
    v41 = v40 + 19;
LABEL_22:
    MEMORY[0x26D5DCD80](v41, v39 | 0x8000000000000000);
    v29 = v11;
    v30 = v12;
    goto LABEL_14;
  }

  v16 = MLMultiArray.toDoubleScalar()();

  if (v17)
  {
    return;
  }

  v11 = v2[4];
  v12 = v2[5];
  v18 = MEMORY[0x26D5DCC90](v11, v12);
  v19 = [a1 featureValueForName_];

  if (!v19 || (v20 = [v19 multiArrayValue], v19, !v20))
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(63);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_1_31();
    v41 = v42 | 0x18;
    goto LABEL_22;
  }

  v21 = MLMultiArray.toIntScalar()();

  if (v22)
  {
    return;
  }

  v23 = v2[6];
  if (*(v23 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    if (v25)
    {
      v26 = *(*(v23 + 56) + v24);
      type metadata accessor for CamOutput();
      *(swift_allocObject() + 56) = v26;
      CamLogOutput.init(prediction:score:threshold:)(v21, v9, v16);
      return;
    }
  }

  OUTLINED_FUNCTION_0_3();
  _StringGuts.grow(_:)(51);
  OUTLINED_FUNCTION_2_23();
  MEMORY[0x26D5DCD80](0xD000000000000025, 0x800000026681C020);
  v45[5] = v21;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v43);

  MEMORY[0x26D5DCD80](0x6F72662079656B20, 0xEA0000000000206DLL);
  v44 = Dictionary.description.getter();
  MEMORY[0x26D5DCD80](v44);

LABEL_15:
  v31 = v45[0];
  v32 = v45[1];
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.ambiguityHandling);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v45);
    _os_log_impl(&dword_266790000, v34, v35, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x26D5DDCD0](v37, -1, -1);
    MEMORY[0x26D5DDCD0](v36, -1, -1);
  }

  lazy protocol witness table accessor for type CamError and conformance CamError();
  swift_allocError();
  *v38 = v31;
  *(v38 + 8) = v32;
  *(v38 + 16) = 3;
  swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_7SiriCam10ModelErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t destructiveInjectEnumTag for ModelError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t ForcedDisambiguationForRankingEvaluationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for ambiguityHandling != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ambiguityHandling);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "[ForcedDisambiguationForRankingEvaluationActionEnforcer] called to see if enforce is needed", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  result = ForcedDisambiguation.decision()();
  if (result)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266790000, v7, v8, "[ForcedDisambiguationForRankingEvaluationActionEnforcer] Forcing a disambiguation", v9, 2u);
      MEMORY[0x26D5DDCD0](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam54ForcedDisambiguationForRankingEvaluationActionEnforcerVmMd, &_s7SiriCam54ForcedDisambiguationForRankingEvaluationActionEnforcerVmMR);
    result = String.init<A>(describing:)();
    *a1 = 4;
    a1[1] = result;
    a1[2] = v10;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t CamFeature.rawValue.getter()
{
  v1 = 0x4F5455415F534D53;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x455045525F4B5341;
  }
}

SiriCam::CamFeature_optional __swiftcall CamFeature.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CamFeature.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamFeature@<X0>(uint64_t *a1@<X8>)
{
  result = CamFeature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CamFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SnrFeatureExtractor.extractImpl(from:)(void *a1)
{
  type metadata accessor for MLMultiArray();
  [a1 snr];
  result = static MLMultiArray.makeScalar(from:)(v3);
  v5 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    *(inited + 32) = 0xD000000000000021;
    *(inited + 40) = 0x8000000266818EA0;
    *(inited + 48) = v5;
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

void *one-time initialization function for kDeviceIdiomMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomO_SitGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomO_SitGMR);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceIdiomO_SitMd, &_s13SiriUtilities11DeviceIdiomO_SitMR) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266818A10;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x277D61C28];
  v7 = type metadata accessor for DeviceIdiom();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x277D61BE8], v7);
  *(v4 + v1 + v9) = 1;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x277D61C18], v7);
  *(v4 + 2 * v1 + v10) = 2;
  v11 = v0[14];
  v8(v4 + 3 * v1, *MEMORY[0x277D61BF0], v7);
  *(v4 + 3 * v1 + v11) = 3;
  v12 = v0[14];
  v8(v4 + 4 * v1, *MEMORY[0x277D61BF8], v7);
  *(v4 + 4 * v1 + v12) = 4;
  v13 = v0[14];
  v8(v4 + 5 * v1, *MEMORY[0x277D61C00], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = v0[14];
  v8(v4 + 6 * v1, *MEMORY[0x277D61C08], v7);
  *(v4 + 6 * v1 + v14) = 6;
  v15 = v0[14];
  v8(v4 + 7 * v1, *MEMORY[0x277D61C10], v7);
  *(v4 + 7 * v1 + v15) = 7;
  v16 = v4 + 8 * v1;
  v17 = v0[14];
  v8(v16, *MEMORY[0x277D61BE0], v7);
  *(v16 + v17) = 8;
  lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom();
  result = Dictionary.init(dictionaryLiteral:)();
  kDeviceIdiomMap._rawValue = result;
  return result;
}

uint64_t DeviceContextFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceIdiom();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceIdiom.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  strcpy((inited + 32), "device_idiom");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  if (one-time initialization token for kDeviceIdiomMap != -1)
  {
    swift_once();
  }

  v10 = specialized Dictionary.subscript.getter(v8, kDeviceIdiomMap._rawValue);
  if ((v11 & 1) == 0)
  {
    a2 = v10;
  }

  type metadata accessor for MLMultiArray();
  v12 = static MLMultiArray.makeScalar(from:)(a2);
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
    v13 = *(inited + 40);

    *(inited + 16) = 0;
    swift_setDeallocating();
    v14 = inited;
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_So12MLMultiArrayCtMd, &_sSS_So12MLMultiArrayCtMR);
  }

  else
  {
    *(inited + 48) = v12;
    v14 = Dictionary.init(dictionaryLiteral:)();
    (*(v5 + 8))(v8, v4);
  }

  return v14;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_So12MLMultiArrayCtMd, &_sSS_So12MLMultiArrayCtMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo24CAARSchemaCAARScoreBoostCSgMd, &_sSo24CAARSchemaCAARScoreBoostCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_yptMd, &_sSS_yptMR);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t CamInput.topUserParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseO_SftMd, &_s7SiriCam0B9UserParseO_SftMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - v6;
  v8 = *(v1 + *(type metadata accessor for CamInput() + 40));
  if (*(v8 + 16))
  {
    outlined init with copy of (CamUserParse, Float)(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v7);
    outlined init with take of CamUserParse(v7, a1);
    v9 = type metadata accessor for CamUserParse(0);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
  }

  else
  {
    v11 = type metadata accessor for CamUserParse(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }
}

uint64_t CamOutput.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t type metadata accessor for CamInput()
{
  result = type metadata singleton initialization cache for CamInput;
  if (!type metadata singleton initialization cache for CamInput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CamInput()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for AFSpeechPackage?, type metadata accessor for AFSpeechPackage, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for CamAction?, &type metadata for CamAction, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [(CamUserParse, Float)]();
          if (v4 <= 0x3F)
          {
            _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for [RankedAction], type metadata accessor for RankedAction, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for [CamFeature], &type metadata for CamFeature, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of (CamUserParse, Float)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseO_SftMd, &_s7SiriCam0B9UserParseO_SftMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CamUserParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamUserParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1);
}

{
  v4 = OUTLINED_FUNCTION_32_5(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    (*(*(v6 - 8) + 16))(v1, v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v8, 1, v7);
}

{
  OUTLINED_FUNCTION_32_5(a1);
  v4 = type metadata accessor for RankedAction();
  v5 = v4;
  if (v3)
  {
    _s7SiriCam0B13ModelMetadataVWOcTm_1(v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v1, type metadata accessor for RankedAction);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v6, 1, v5);
}

void *specialized Collection.first.getter(uint64_t a1)
{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_13();
  if (v13)
  {
    return 0;
  }

  v14 = OUTLINED_FUNCTION_18_11(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20);
  return specialized Dictionary.subscript.getter(v14, v15, v16, v17, v18);
}

{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_13();
  if (v13)
  {
    return 0;
  }

  v14 = OUTLINED_FUNCTION_18_11(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20);
  return specialized Dictionary.subscript.getter(v14, v15, v16, v17, v18);
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of SignalProviding(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo14MLFeatureValueCGMd, _ss18_DictionaryStorageCySSSo14MLFeatureValueCGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);

    v16 = v15;
    swift_dynamicCast();
    outlined init with take of Any(&v26, v28);
    outlined init with take of Any(v28, v29);
    outlined init with take of Any(v29, &v27);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      v20 = v19[1];
      *v19 = v14;
      v19[1] = v13;

      v21 = (v2[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v21);
      result = outlined init with take of Any(&v27, v21);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v2[6] + 16 * result);
      *v22 = v14;
      v22[1] = v13;
      result = outlined init with take of Any(&v27, (v2[7] + 32 * result));
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t CoreMLHandler.init(forModelWithName:)(uint64_t a1, unint64_t a2)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_17();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v20 = *(v17 + 48);

  static AssetProvider.fetchModel(_:)(v19, &v19[v20], a1, a2);

  if (v5)
  {
    v21 = *(v2 + 24);

    type metadata accessor for CoreMLHandler();
    v22 = *(*v2 + 48);
    v23 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v19, v4, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined init with take of CamModelMetadata(v4 + *(v8 + 48), v2 + OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata);
    v24 = type metadata accessor for URL();
    OUTLINED_FUNCTION_0_2(v24);
    v26 = *(v25 + 8);
    v27 = OUTLINED_FUNCTION_25_9();
    v26(v27);
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v19, v14, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v28 = *(v8 + 48);
    CoreMLHandler.loadModel(from:)(v14, v14 + v28);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v19, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined destroy of CamModelMetadata(v14 + v28);
    (v26)(v14, v24);
  }

  return v2;
}

MLDictionaryFeatureProvider __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CoreMLHandler.predict(from:)(Swift::OpaquePointer from)
{
  v3 = v1;
  v87 = *MEMORY[0x277D85DE8];
  v4 = v1[4];
  if (v4)
  {
    v6 = v4;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(from._rawValue);
    v7 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v8 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)();
    if (v2)
    {
      v9 = v2;
    }

    else
    {
      v18 = v8;
      v85 = &type metadata for CamFeatureFlag;
      v86 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
      LOBYTE(v83) = 0;
      v19 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v83);
      v20 = &off_279BD1000;
      if (v19)
      {
        v21 = [v18 dictionary];
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);
        v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        CoreMLHandler.logModelFeatures(modelFeatures:)(v22);
      }

      else
      {
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.common);
        OUTLINED_FUNCTION_18_0();

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_23();
          v82 = OUTLINED_FUNCTION_11();
          v83 = v82;
          *v26 = 136315138;
          v27 = v3[2];
          v28 = v3[3];

          v29 = v18;
          v30 = v6;
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v83);

          *(v26 + 4) = v31;
          v6 = v30;
          v18 = v29;
          _os_log_impl(&dword_266790000, v24, v25, "%s: Feature flag for verbose logging is disabled. Not logging model features", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v82);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();

          v20 = &off_279BD1000;
        }

        else
        {
        }
      }

      v81 = [v6 modelDescription];
      v32 = v6;
      v33 = [v81 inputDescriptionsByName];
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureDescription, 0x277CBFEE0);
      OUTLINED_FUNCTION_8_0();
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5(v34);
      v36 = [v18 v20[273]];
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5(v37);
      v39 = specialized Set.subtracting(_:)(v38, v35);

      if (*(v39 + 16))
      {
        v80 = v32;
        v83 = 0;
        v84 = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        OUTLINED_FUNCTION_15_12();
        OUTLINED_FUNCTION_16_11();

        OUTLINED_FUNCTION_28_6();
        MEMORY[0x26D5DCD80](0xD00000000000001FLL);
        v40 = Set.description.getter();
        v42 = v41;

        MEMORY[0x26D5DCD80](v40, v42);

        OUTLINED_FUNCTION_28_6();
        MEMORY[0x26D5DCD80]();
        v43 = v83;
        v44 = v84;
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, static Logger.common);

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = OUTLINED_FUNCTION_23();
          v49 = OUTLINED_FUNCTION_11();
          v83 = v49;
          *v48 = 136315138;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v83);
          _os_log_impl(&dword_266790000, v46, v47, "%s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }

        v6 = v80;
        lazy protocol witness table accessor for type ModelError and conformance ModelError();
        v50 = OUTLINED_FUNCTION_6_2();
        *v51 = v43;
        v51[1] = v44;
        v9 = v50;
        OUTLINED_FUNCTION_2(v50, v51);
      }

      else
      {

        v83 = 0;
        v52 = [v32 predictionFromFeatures:v18 error:&v83];
        v53 = v83;
        if (v52)
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          if (v54)
          {
            v13 = v54;
            v55 = v53;

            goto LABEL_32;
          }

          v83 = 0;
          v84 = 0xE000000000000000;
          v57 = v53;
          _StringGuts.grow(_:)(65);
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_16_11();

          OUTLINED_FUNCTION_28_6();
          MEMORY[0x26D5DCD80]();
          v58 = v83;
          v59 = v84;
          lazy protocol witness table accessor for type ModelError and conformance ModelError();
          v60 = OUTLINED_FUNCTION_6_2();
          *v61 = v58;
          v61[1] = v59;
          v6 = v32;
          OUTLINED_FUNCTION_2(v60, v61);

          v9 = v60;
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = v83;
          v9 = _convertNSErrorToError(_:)();

          v6 = v32;
          swift_willThrow();
        }
      }
    }

    v83 = v9;
    v62 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v63 = String.init<A>(reflecting:)();
    v65 = v64;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.common);
    OUTLINED_FUNCTION_18_0();

    v13 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v67))
    {
      OUTLINED_FUNCTION_11_14();
      v68 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_17();
      v83 = swift_slowAlloc();
      *v68 = 136315394;
      v69 = v6;
      v71 = v3[2];
      v70 = v3[3];

      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v70, &v83);
      v6 = v69;

      *(v68 + 4) = v72;
      OUTLINED_FUNCTION_24_4();
      v73 = OUTLINED_FUNCTION_69_0();
      *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v75);
      OUTLINED_FUNCTION_37_1(&dword_266790000, v13, v67, "%s: Model prediction failed with error : %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    lazy protocol witness table accessor for type ModelError and conformance ModelError();
    v76 = OUTLINED_FUNCTION_6_2();
    *v77 = v63;
    v77[1] = v65;
    OUTLINED_FUNCTION_2(v76, v77);
  }

  else
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_16_11();

    OUTLINED_FUNCTION_28_6();
    MEMORY[0x26D5DCD80]();
    v11 = v1[2];
    v10 = v1[3];

    OUTLINED_FUNCTION_16_11();

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.common);
    OUTLINED_FUNCTION_18_0();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_23();
      v16 = OUTLINED_FUNCTION_11();
      v83 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v83);
      _os_log_impl(&dword_266790000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    lazy protocol witness table accessor for type CamError and conformance CamError();
    OUTLINED_FUNCTION_6_2();
    *v17 = 0;
    *(v17 + 8) = 0xE000000000000000;
    *(v17 + 16) = 2;
    swift_willThrow();
  }

LABEL_32:
  v78 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t CoreMLHandler.getMetadata()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata;
  swift_beginAccess();
  OUTLINED_FUNCTION_1_32();
  return _s7SiriCam0B13ModelMetadataVWOcTm_1(v1 + v3, a1, v4);
}

void CoreMLHandler.loadModel(from:)(uint64_t a1, uint64_t a2)
{
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  v5 = OUTLINED_FUNCTION_0_2(v177);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_3();
  v184 = v10;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  v182 = &v169[-v12];
  v13 = type metadata accessor for URL();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_3();
  v181 = v20;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_3();
  v185 = v22;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v23);
  v191 = &v169[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v26 = OUTLINED_FUNCTION_0_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v190 = (v29 - v30);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_3();
  v188 = v34;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_3();
  v183 = v36;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_3();
  v192 = v39;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_30_5();
  MEMORY[0x28223BE20](v41);
  v43 = &v169[-v42];
  v195 = v16;
  v44 = *(v16 + 16);
  v45 = OUTLINED_FUNCTION_25_9();
  v186 = v47;
  v187 = v46;
  (v47)(v45);
  v48 = *(v25 + 48);
  OUTLINED_FUNCTION_1_32();
  v197 = v43;
  _s7SiriCam0B13ModelMetadataVWOcTm_1(a2, &v43[v49], v50);
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v51, static Logger.common);
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v197, v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  v55 = os_log_type_enabled(v53, v54);
  v193 = v13;
  v194 = v25;
  if (v55)
  {
    OUTLINED_FUNCTION_11_14();
    v56 = swift_slowAlloc();
    v189 = v52;
    v57 = v56;
    OUTLINED_FUNCTION_10_17();
    v174 = swift_slowAlloc();
    v199[0] = v174;
    *v57 = 136315394;
    v59 = v196[2];
    v58 = v196[3];

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, v199);
    LODWORD(v173) = v54;
    v61 = v60;

    *(v57 + 4) = v61;
    OUTLINED_FUNCTION_24_4();
    v62 = v192;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v3, v192, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v63 = *(v194 + 48);
    v64 = URL.absoluteString.getter();
    v66 = v65;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v67 = *(v195 + 8);
    v68 = OUTLINED_FUNCTION_15_5();
    v69(v68);
    v70 = v62 + v63;
    v25 = v194;
    outlined destroy of CamModelMetadata(v70);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v199);

    *(v57 + 14) = v71;
    OUTLINED_FUNCTION_37_1(&dword_266790000, v53, v173, "%s: Loading model from url : %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v52 = v189;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  }

  v72 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v72 setComputeUnits_];
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v197, v2, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v73 = *(v25 + 48);
  v74 = v191;
  v75 = v198;
  CoreMLHandler.findModelFolder(assetOutput:)(v2, v2 + v73, v191);
  v76 = v190;
  v198 = v75;
  if (v75)
  {
    outlined destroy of CamModelMetadata(v2 + v73);
    (*(v195 + 8))(v2, v193);
LABEL_10:
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v197, v76, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v86 = v196;

    v87 = v198;
    v88 = v198;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = OUTLINED_FUNCTION_11();
      v191 = swift_slowAlloc();
      v199[0] = v191;
      OUTLINED_FUNCTION_36_1(4.8152e-34);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v86, v199);
      v196 = v72;
      v93 = v92;

      *(v91 + 4) = v93;
      *(v91 + 12) = 2080;
      v94 = v76;
      v95 = v76;
      v96 = v192;
      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v94, v192, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v97 = *(v194 + 48);
      v98 = v188;
      (*(v195 + 32))(v188, v96, v193);
      outlined init with take of CamModelMetadata(v96 + v97, v98 + v97);
      v99 = String.init<A>(describing:)();
      v101 = v100;
      outlined destroy of (CamLogOutput, CamModelMetadata)(v95, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v199);

      *(v91 + 14) = v102;
      *(v91 + 22) = 2080;
      v200 = v198;
      v103 = v198;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v104 = String.init<A>(reflecting:)();
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v199);

      *(v91 + 24) = v106;
      v72 = v196;
      _os_log_impl(&dword_266790000, v89, v90, "%s: Model load failed for model: %s with error: %s", v91, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v76, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    }

    swift_willThrow();

    v107 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
    v108 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
    v109 = v197;
LABEL_14:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v109, v107, v108);
    return;
  }

  v189 = v52;
  outlined destroy of CamModelMetadata(v2 + v73);
  v77 = v72;
  v78 = v195 + 8;
  v79 = *(v195 + 8);
  v80 = v193;
  v79(v2, v193);
  v81 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLModel, 0x277CBFF20);
  v82 = v185;
  v186(v185, v74, v80);
  v83 = v77;
  v84 = v77;
  v75 = v198;
  v85 = @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(v82, v84);
  v198 = v75;
  if (v75)
  {
    v79(v74, v80);
    v72 = v83;
    goto LABEL_10;
  }

  v173 = v81;
  v174 = v78;
  v190 = v79;
  v185 = v84;
  v110 = v196[4];
  v196[4] = v85;

  v111 = v183;
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v197, v183, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    OUTLINED_FUNCTION_11_14();
    v114 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_17();
    v172 = swift_slowAlloc();
    v199[0] = v172;
    OUTLINED_FUNCTION_36_1(4.8151e-34);
    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v74, v199);

    *(v114 + 4) = v115;
    *(v114 + 12) = 2080;
    v171 = v112;
    v116 = v192;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v111, v192, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v170 = v113;
    v117 = v194;
    v118 = *(v194 + 48);
    v119 = v188;
    (*(v195 + 32))(v188, v116, v80);
    outlined init with take of CamModelMetadata(v116 + v118, v119 + v118);
    v120 = String.init<A>(describing:)();
    v122 = v121;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v111, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v199);
    v124 = v193;

    *(v114 + 14) = v123;
    v125 = v171;
    _os_log_impl(&dword_266790000, v171, v170, "%s: Model load succeeded for model: %s", v114, 0x16u);
    swift_arrayDestroy();
    v126 = v117;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();

    v127 = v190;
    v190(v191, v124);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v111, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v127 = v190;
    v190(v74, v80);
    v124 = v80;
    v126 = v194;
    v116 = v192;
  }

  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v197, v116, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v128 = *(v126 + 48);
  v129 = OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata;
  v130 = v196;
  swift_beginAccess();
  outlined assign with take of CamModelMetadata(v116 + v128, v130 + v129);
  swift_endAccess();
  v127(v116, v124);
  v131 = v130[2] == 0xD000000000000025 && 0x8000000266819F10 == v130[3];
  if (v131 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v132 = v182;
    v133 = v194;
    __swift_storeEnumTagSinglePayload(v182, 1, 1, v194);
    v134 = v198;
    static AssetProvider.fetchModel(_:)(v184, v184 + *(v133 + 48), 0xD000000000000029, 0x8000000266819F40);
    v198 = v134;
    if (v134)
    {

      v198 = 0;
      v135 = 1;
    }

    else
    {
      v135 = 0;
    }

    v136 = v181;
    v137 = v180;
    v138 = v179;
    v139 = v178;
    v140 = v184;
    v141 = v194;
    __swift_storeEnumTagSinglePayload(v184, v135, 1, v194);
    outlined assign with take of (modelUrl: URL, modelMetadata: CamModelMetadata)?(v140, v132);
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v132, v137, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
    if (__swift_getEnumTagSinglePayload(v137, 1, v141) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v197, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

      OUTLINED_FUNCTION_14_17();
      outlined destroy of (CamLogOutput, CamModelMetadata)(v142, v143, v144);
      OUTLINED_FUNCTION_14_17();
    }

    else
    {
      outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v137, v138);
      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v138, v139, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v145 = *(v141 + 48);
      v146 = v198;
      CoreMLHandler.findModelFolder(assetOutput:)(v139, v139 + v145, v136);
      if (v146)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v138, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        outlined destroy of CamModelMetadata(v139 + v145);
        v190(v139, v193);
        v198 = 0;
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = v132;
          v156 = OUTLINED_FUNCTION_23();
          v157 = OUTLINED_FUNCTION_11();
          v200 = v157;
          *v156 = 136315138;
          swift_beginAccess();
          outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v155, v176, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
          v158 = String.init<A>(describing:)();
          v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159, &v200);

          *(v156 + 4) = v160;
          _os_log_impl(&dword_266790000, v153, v154, "Load model failed for %s. Skipping promotion of all assets", v156, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v157);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();

          outlined destroy of (CamLogOutput, CamModelMetadata)(v197, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v109 = v155;
          v107 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd;
          v108 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR;
        }

        else
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v197, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v107 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd;
          v108 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR;
          v109 = v132;
        }
      }

      else
      {
        outlined destroy of CamModelMetadata(v139 + v145);
        v147 = v139;
        v148 = v193;
        v149 = v190;
        v190(v147, v193);
        v150 = v175;
        v186(v175, v136, v148);
        v151 = v185;
        v152 = @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(v150, v151);
        v198 = 0;
        v161 = v152;

        v162 = OUTLINED_FUNCTION_69_0();
        v149(v162);
        OUTLINED_FUNCTION_14_17();
        outlined destroy of (CamLogOutput, CamModelMetadata)(v163, v164, v165);
        OUTLINED_FUNCTION_14_17();
        outlined destroy of (CamLogOutput, CamModelMetadata)(v166, v167, v168);
        v107 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd;
        v108 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR;
        v109 = v182;
      }
    }

    goto LABEL_14;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v197, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
}

id @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v16);
  v5 = v4;
  v15 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v15];

  v7 = v15;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t CoreMLHandler.findModelFolder(assetOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a3;
  v162 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v141 - v7;
  v8 = type metadata accessor for URL();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v145 = v14 - v15;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_3();
  v153 = v17;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_3();
  v150 = v19;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  v22 = &v141 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v24 = OUTLINED_FUNCTION_0_2(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  v143 = v27 - v28;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v141 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v141 - v34;
  v156 = *(v11 + 16);
  v157 = v11 + 16;
  v156(&v141 - v34, a1, v8);
  v36 = *(v23 + 48);
  OUTLINED_FUNCTION_1_32();
  _s7SiriCam0B13ModelMetadataVWOcTm_1(a2, &v35[v37], v38);
  v39 = [objc_opt_self() defaultManager];
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v35, v33, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v147 = v23;
  v40 = *(v23 + 48);
  URL._bridgeToObjectiveC()(v41);
  v43 = v42;
  v44 = &v33[v40];
  v45 = v11;
  outlined destroy of CamModelMetadata(v44);
  v46 = *(v11 + 8);
  v146 = v33;
  v154 = v46;
  v155 = v11 + 8;
  v46(v33, v8);
  v160 = 0;
  v47 = [v39 contentsOfDirectoryAtURL:v43 includingPropertiesForKeys:0 options:0 error:&v160];

  v48 = v160;
  if (!v47)
  {
    v80 = v160;
    _convertNSErrorToError(_:)();

    goto LABEL_27;
  }

  v148 = v35;
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v48;

  v51 = 0;
  v52 = *(v49 + 16);
  v151 = (v45 + 32);
  v152 = MEMORY[0x277D84F90];
  v53 = v8;
  v158 = v8;
  v54 = v45;
  while (v52 != v51)
  {
    if (v51 >= *(v49 + 16))
    {
      __break(1u);
LABEL_38:
      OUTLINED_FUNCTION_3();
      swift_once();
LABEL_25:
      v81 = type metadata accessor for Logger();
      v82 = __swift_project_value_buffer(v81, static Logger.common);
      v83 = v141;
      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v148, v141, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v84 = v152;

      v150 = v82;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v85, v86))
      {
        OUTLINED_FUNCTION_11_14();
        v87 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_17();
        v149 = swift_slowAlloc();
        v160 = v149;
        *v87 = 136315394;
        v88 = v146;
        outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v83, v146, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        v89 = *(v147 + 48);
        v90 = v153;
        (*v151)(v153, v88, v53);
        outlined destroy of CamModelMetadata(v88 + v89);
        OUTLINED_FUNCTION_2_24();
        lazy protocol witness table accessor for type URL and conformance URL(v91, v92);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        v154(v90, v158);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v83, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v160);
        OUTLINED_FUNCTION_18_0();

        *(v87 + 4) = v90;
        OUTLINED_FUNCTION_24_4();
        v96 = MEMORY[0x26D5DCE80](v84, v158);
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v160);

        *(v87 + 14) = v98;
        v53 = v158;
        OUTLINED_FUNCTION_37_1(&dword_266790000, v85, v86, "Searching %s found folders %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        outlined destroy of (CamLogOutput, CamModelMetadata)(v83, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      }

      v110 = v145;
      v111 = v143;
      v112 = v144;
      v113 = v142;
      specialized Collection.first.getter(v84);

      if (__swift_getEnumTagSinglePayload(v113, 1, v53) == 1)
      {
        v114 = v148;
        v115 = v146;
        outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v148, v146, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        v116 = v111;
        v117 = *(v147 + 48);
        (*v151)(v112, v115, v53);
        v118 = v115 + v117;
        v111 = v116;
        outlined destroy of CamModelMetadata(v118);
        if (__swift_getEnumTagSinglePayload(v113, 1, v53) != 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        (*v151)(v112, v113, v53);
        v114 = v148;
      }

      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v114, v111, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v119 = OUTLINED_FUNCTION_25_9();
      (v156)(v119);
      v120 = v111;
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v121, v122))
      {
        OUTLINED_FUNCTION_11_14();
        v123 = v53;
        v124 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_17();
        v125 = v110;
        v158 = swift_slowAlloc();
        v160 = v158;
        *v124 = 136315394;
        v126 = v146;
        outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v120, v146);
        v127 = (v126 + *(v147 + 48));
        LODWORD(v157) = v122;
        v128 = *v127;
        v129 = v127[1];

        outlined destroy of CamModelMetadata(v127);
        v130 = v154;
        v154(v126, v123);
        v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, &v160);

        *(v124 + 4) = v131;
        *(v124 + 12) = 2080;
        OUTLINED_FUNCTION_2_24();
        lazy protocol witness table accessor for type URL and conformance URL(v132, v133);
        dispatch thunk of CustomStringConvertible.description.getter();
        v130(v125, v123);
        v134 = OUTLINED_FUNCTION_41_0();
        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v135, v136);

        *(v124 + 14) = v137;
        _os_log_impl(&dword_266790000, v121, v157, "%s: Resolved model url %s", v124, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();

        v105 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
        v106 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
        v107 = v148;
      }

      else
      {

        v154(v110, v53);
        OUTLINED_FUNCTION_14_17();
        outlined destroy of (CamLogOutput, CamModelMetadata)(v138, v139, v140);
        OUTLINED_FUNCTION_14_17();
      }

      goto LABEL_28;
    }

    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = v54;
    v57 = *(v54 + 72);
    v156(v22, v49 + v55 + v57 * v51, v53);
    if (URL.pathExtension.getter() == 0x636C65646F6D6C6DLL && v58 == 0xE800000000000000)
    {

LABEL_12:
      v61 = *v151;
      (*v151)(v150, v22, v158);
      v62 = v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v62;
      v149 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1);
        v62 = v160;
      }

      v65 = v62[2];
      v64 = v62[3];
      v66 = (v65 + 1);
      if (v65 >= v64 >> 1)
      {
        v152 = (v65 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1);
        v66 = v152;
        v62 = v160;
      }

      ++v51;
      v62[2] = v66;
      v152 = v62;
      v67 = v62 + v55 + v65 * v57;
      v53 = v158;
      (v149)(v67, v150, v158);
      v54 = v56;
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {
        goto LABEL_12;
      }

      v53 = v158;
      v154(v22, v158);
      ++v51;
    }
  }

  v68 = v152[2];
  if (v68 <= 1)
  {
    if (one-time initialization token for common != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v160 = 0;
  v161 = 0xE000000000000000;
  v69 = v152;
  _StringGuts.grow(_:)(46);

  v160 = 0xD00000000000002CLL;
  v161 = 0x800000026681C0B0;
  v159 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
  v70 = v159;
  v71 = v69 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v72 = *(v54 + 72);
  do
  {
    v156(v153, v71, v53);
    v73 = URL.path.getter();
    v75 = v74;
    v76 = OUTLINED_FUNCTION_15_5();
    (v154)(v76);
    v159 = v70;
    v78 = *(v70 + 16);
    v77 = *(v70 + 24);
    if (v78 >= v77 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1);
      v70 = v159;
    }

    *(v70 + 16) = v78 + 1;
    v79 = v70 + 16 * v78;
    *(v79 + 32) = v73;
    *(v79 + 40) = v75;
    v71 += v72;
    --v68;
    v53 = v158;
  }

  while (v68);

  v159 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v99 = BidirectionalCollection<>.joined(separator:)();
  v101 = v100;

  MEMORY[0x26D5DCD80](v99, v101);

  v102 = v160;
  v103 = v161;
  lazy protocol witness table accessor for type CamError and conformance CamError();
  OUTLINED_FUNCTION_6_2();
  *v104 = v102;
  *(v104 + 8) = v103;
  *(v104 + 16) = 2;
  v35 = v148;
LABEL_27:
  swift_willThrow();
  v105 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
  v106 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
  v107 = v35;
LABEL_28:
  result = outlined destroy of (CamLogOutput, CamModelMetadata)(v107, v105, v106);
  v109 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreMLHandler.logModelFeatures(modelFeatures:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v87 = OUTLINED_FUNCTION_22(v3);
  v88 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v87);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = OUTLINED_FUNCTION_22(v9);
  v89 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_17();
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v21 = type metadata accessor for String.Encoding();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = type metadata accessor for JSONEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = JSONEncoder.init()();
  v91[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  lazy protocol witness table accessor for type [String : MLFeatureValue] and conformance <> [A : B]();
  v27 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v29 = v28;
  v83 = v16;
  v85 = v20;
  v86 = v26;
  static String.Encoding.utf8.getter();
  v30 = String.init(data:encoding:)();
  if (v31)
  {
    v80 = v27;
    v78 = v30;
    v82 = v31;
    v84 = v29;
    v32 = [objc_opt_self() defaultManager];
    v33 = [v32 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v91[0] = 1601003875;
    v91[1] = 0xE400000000000000;
    v34 = v8;
    UUID.init()();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v35 = v87;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v36);

    (*(v88 + 8))(v34, v35);
    MEMORY[0x26D5DCD80](0x6E6F736A2ELL, 0xE500000000000000);
    v37 = v85;
    URL.appendingPathComponent(_:)();

    v38 = v89;
    v39 = v89 + 8;
    v40 = v9;
    v88 = *(v89 + 8);
    (v88)(v1, v9);
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.common);
    (*(v38 + 16))(v83, v37, v9);
    v43 = v90;

    v89 = v42;
    v44 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_34_1();

    v79 = v38 + 16;
    v45 = os_log_type_enabled(v44, (v38 + 16));
    v46 = v80;
    v87 = v39;
    v81 = v40;
    if (v45)
    {
      OUTLINED_FUNCTION_11_14();
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_17();
      v91[0] = swift_slowAlloc();
      *v47 = 136315394;
      v48 = *(v43 + 16);
      v49 = v43;
      v50 = v46;
      v51 = *(v49 + 24);

      v52 = OUTLINED_FUNCTION_15_5();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v54);
      OUTLINED_FUNCTION_18_0();

      *(v47 + 4) = v48;
      *(v47 + 12) = 2080;
      OUTLINED_FUNCTION_2_24();
      lazy protocol witness table accessor for type URL and conformance URL(v55, v56);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = OUTLINED_FUNCTION_41_0();
      (v88)(v58);
      v59 = OUTLINED_FUNCTION_15_5();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v61);
      OUTLINED_FUNCTION_18_0();
      v46 = v50;

      *(v47 + 14) = v57;
      _os_log_impl(&dword_266790000, v44, v79, "%s: Writing CAM features to file: %s", v47, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      v37 = v85;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      v63 = OUTLINED_FUNCTION_41_0();
      (v88)(v63);
    }

    Data.write(to:options:)();
    v64 = v90;

    v65 = v82;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    v68 = OUTLINED_FUNCTION_33_2();
    if (os_log_type_enabled(v68, v69))
    {
      OUTLINED_FUNCTION_11_14();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_17();
      v91[0] = swift_slowAlloc();
      *v70 = 136315394;
      v71 = v64;
      v72 = v46;
      v73 = *(v71 + 16);
      v74 = *(v71 + 24);

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v91);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v65, v91);

      *(v70 + 14) = v76;
      _os_log_impl(&dword_266790000, v66, v67, "%s: Making predictions from features : %s", v70, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();

      outlined consume of Data._Representation(v72, v84);
    }

    else
    {

      outlined consume of Data._Representation(v46, v84);
    }

    return (v88)(v37, v81);
  }

  else
  {

    return outlined consume of Data._Representation(v27, v29);
  }
}

uint64_t CoreMLHandler.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of CamModelMetadata(v0 + OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata);
  return v0;
}

uint64_t CoreMLHandler.__deallocating_deinit()
{
  CoreMLHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CoreMLHandler()
{
  result = type metadata singleton initialization cache for CoreMLHandler;
  if (!type metadata singleton initialization cache for CoreMLHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CoreMLHandler()
{
  result = type metadata accessor for CamModelMetadata();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLFeatureValue and conformance MLFeatureValue()
{
  result = lazy protocol witness table cache variable for type MLFeatureValue and conformance MLFeatureValue;
  if (!lazy protocol witness table cache variable for type MLFeatureValue and conformance MLFeatureValue)
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue and conformance MLFeatureValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

id @nonobjc MLDictionaryFeatureProvider.init(dictionary:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7[0] = 0;
  v2 = [v0 initWithDictionary:isa error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of CamModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamModelMetadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of (modelUrl: URL, modelMetadata: CamModelMetadata)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return OUTLINED_FUNCTION_8_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s7SiriCam0B13ModelMetadataVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_8_0();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_12()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_36_1(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 136);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
}

void OUTLINED_FUNCTION_37_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t ActionCandidate.flowHandlerId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActionCandidate.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionCandidate() + 20);

  return outlined init with copy of CamParse(v3, a1);
}

uint64_t type metadata accessor for ActionCandidate()
{
  result = type metadata singleton initialization cache for ActionCandidate;
  if (!type metadata singleton initialization cache for ActionCandidate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionCandidate.userData.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionCandidate() + 28));
}

uint64_t ActionCandidate.loggingId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionCandidate() + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionCandidate.inferredBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionCandidate() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActionCandidate.inferredBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActionCandidate() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActionCandidate.init(flowHandlerId:parse:affinityScore:loggingId:userData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for ActionCandidate();
  v15 = &a7[v14[9]];
  *a7 = a1;
  *(a7 + 1) = a2;
  outlined init with copy of CamParse(a3, &a7[v14[5]]);
  *&a7[v14[6]] = a4;
  *&a7[v14[7]] = a6;
  v16 = v14[8];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a7[v16], a5, v17);
  *v15 = 0;
  v15[1] = 0;
  v19 = specialized ActionProtocol.inferBundleId()();
  v21 = v20;
  (*(v18 + 8))(a5, v17);
  result = outlined destroy of CamParse(a3);
  *v15 = v19;
  v15[1] = v21;
  return result;
}

uint64_t ActionCandidate.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(93);
  MEMORY[0x26D5DCD80](0xD00000000000001FLL, 0x800000026681C1B0);
  MEMORY[0x26D5DCD80](*v1, v1[1]);
  MEMORY[0x26D5DCD80](0x3A6573726170202CLL, 0xE900000000000020);
  v2 = type metadata accessor for ActionCandidate();
  v3 = v2[5];
  type metadata accessor for CamParse(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](0xD000000000000011, 0x800000026681C1D0);
  v9 = *(v1 + v2[6]);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v4);

  MEMORY[0x26D5DCD80](0x614472657375202CLL, 0xEC000000203A6174);
  v10 = *(v1 + v2[7]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
  v5 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v5);

  MEMORY[0x26D5DCD80](0x6E6967676F6C202CLL, 0xED0000203A644967);
  v6 = v2[8];
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v7);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  return 0;
}

void type metadata completion function for ActionCandidate()
{
  type metadata accessor for CamParse(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : Any]?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t FeatureExtracting.extract(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 32))();
  if (!v3)
  {
    v7 = (*(a3 + 24))(a2, a3);
    v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v7);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_0_28();

    OUTLINED_FUNCTION_0_28();
    type metadata accessor for Dictionary.Keys();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_0_28();
    v9 = Set.init<A>(_:)();
    v10 = specialized Set.subtracting(_:)(v9, v8);

    if (Set.isEmpty.getter())
    {
    }

    else
    {

      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x26D5DCD80](0x7365727574616546, 0xE900000000000020);
      v18[3] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, _sShySSGMR);
      lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      MEMORY[0x26D5DCD80](0xD00000000000002ALL, 0x800000026681A770);
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.common);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v18);
        _os_log_impl(&dword_266790000, v12, v13, "%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x26D5DDCD0](v15, -1, -1);
        MEMORY[0x26D5DDCD0](v14, -1, -1);
      }

      lazy protocol witness table accessor for type CamError and conformance CamError();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0xE000000000000000;
      *(v16 + 16) = 1;
      swift_willThrow();
    }
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, _sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

id static CaarResponseLogger.map(from:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RankedAction();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D56BD0]) init];
  if (result)
  {
    v19 = *(a1 + 16);
    if (v19)
    {
      v26 = result;
      type metadata accessor for SISchemaUUID();
      v20 = *(v10 + 36);
      v21 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v22 = *(v13 + 72);
      v23 = (v5 + 16);
      do
      {
        outlined init with copy of RankedAction(v21, v17);
        (*v23)(v9, &v17[v20], v2);
        outlined destroy of RankedAction(v17);
        v24 = SISchemaUUID.__allocating_init(nsuuid:)(v9);
        [v26 addActionCandidateIds_];

        v21 += v22;
        --v19;
      }

      while (v19);
      return v26;
    }
  }

  return result;
}

id static CaarResponseLogger.wrapIntoLogEvent(message:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D56BA0]) init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  if (v4)
  {
    [v3 setEnded_];
    [v4 setCaarRequestContext_];
  }

  return v4;
}

uint64_t AppShortcutFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v1 = AppShortcutFeatureExtractor.extractIsAppShortcut(from:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  *(inited + 32) = 0x535F5050415F5349;
  *(inited + 40) = 0xEF54554354524F48;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t AppShortcutFeatureExtractor.extractIsAppShortcut(from:)(uint64_t a1)
{
  v2 = type metadata accessor for CamParse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CamUSOParse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v10 + 20), v5);
  if (swift_getEnumCaseMultiPayload())
  {
    _s7SiriCam0B5ParseOWOhTm_4(v5, type metadata accessor for CamParse);
    return 0;
  }

  outlined init with take of CamUSOParse(v5, v9);
  v12 = CamUSOParse.appShortcutInvocation.getter();
  v14 = v13;
  _s7SiriCam0B5ParseOWOhTm_4(v9, type metadata accessor for CamUSOParse);
  if (!v14)
  {
    return 0;
  }

  outlined consume of AppShortcutInvocation?(v12, v14);
  return 1;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v68 = a7;
  v10 = type metadata accessor for String.Encoding();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_16();
  v14 = type metadata accessor for JSONEncoder.NonConformingFloatEncodingStrategy();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v22 = (v21 - v20);
  OUTLINED_FUNCTION_12_18();
  v24 = v23;
  v25 = MGGetBoolAnswer();

  if (v25)
  {
    v26 = type metadata accessor for JSONEncoder();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *v22 = 6712937;
    v22[1] = 0xE300000000000000;
    v22[2] = 1718511917;
    v22[3] = 0xE400000000000000;
    v22[4] = 7233902;
    v22[5] = 0xE300000000000000;
    (*(v17 + 104))(v22, *MEMORY[0x277CC8788], v14);
    dispatch thunk of JSONEncoder.nonConformingFloatEncodingStrategy.setter();
    v29 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v7)
    {
LABEL_20:

      return;
    }

    v32 = v30;
    v33 = v31;
    v34 = 0xD00000000000001DLL;
    static String.Encoding.utf8.getter();
    v35 = String.init(data:encoding:)();
    if (v36)
    {
      v37 = v36;
      v61 = v35;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.common);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v59 = v32;
        v41 = swift_slowAlloc();
        v60 = v33;
        v66 = swift_slowAlloc();
        *v41 = 136315394;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v66);
        *(v41 + 12) = 2080;
        v42 = v39;
        v43 = v61;
        *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v37, &v66);
        v44 = v40;
        v45 = v42;
        _os_log_impl(&dword_266790000, v42, v44, "Writing object to Feature Store for %s: %s", v41, 0x16u);
        swift_arrayDestroy();
        v33 = v60;
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        v32 = v59;
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        v43 = v61;
      }

      v66 = a4;
      v67 = a5;

      MEMORY[0x26D5DCD80](58, 0xE100000000000000);
      MEMORY[0x26D5DCD80](a6, v68);
      v52 = v66;
      v53 = v67;
      v54 = objc_allocWithZone(MEMORY[0x277D08438]);
      v55 = @nonobjc FSFCurareInteractionAsJsonStr.init(jsonStr:interactionId:dataVersion:)(v43, v37, v52, v53, 1);
      if (v55)
      {
        v56 = v55;
        specialized static FeatureStoreLoggingProtocol.write(streamId:interaction:)(a1, a2, v55);

LABEL_19:
        outlined consume of Data._Representation(v32, v33);
        goto LABEL_20;
      }

      v51 = "JSONStringInitializationError";
      v34 = 0xD00000000000001ELL;
    }

    else
    {
      v51 = "autoSendEnforcer";
    }

    v57 = v51 | 0x8000000000000000;
    lazy protocol witness table accessor for type CamError and conformance CamError();
    swift_allocError();
    *v58 = v34;
    *(v58 + 8) = v57;
    *(v58 + 16) = 4;
    swift_willThrow();
    goto LABEL_19;
  }

  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.common);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10(v48))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_20_13(&dword_266790000, v49, v50, "Skipping FS logging on prod build.");
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }
}

void specialized static FeatureStoreLoggingProtocol.write(streamId:interaction:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_self() isSupportedUser])
  {
    v6 = objc_opt_self();
    v7 = MEMORY[0x26D5DCC90](a1, a2);
    v8 = [v6 getWithStreamId_];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = _s7SiriCam27FeatureStoreLoggingProtocolPAAE12createStream8streamIdSo020FSFCurareInteractionH0CSgSS_tFZAA0bcD6LoggerV_Tt0g5Tm(a1, a2);
    if (v9)
    {
      v8 = v9;
LABEL_5:
      v21[0] = 0;
      if (([v8 insert:a3 error:v21]& 1) != 0)
      {
        v10 = v21[0];
      }

      else
      {
        v15 = v21[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      goto LABEL_13;
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.common);

    v8 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v18))
    {
      OUTLINED_FUNCTION_15();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v21);
      _os_log_impl(&dword_266790000, v8, v18, "Failed to write to Feature Store because the stream %s cannot be found or created", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      goto LABEL_11;
    }
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.common);
    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10(v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_13(&dword_266790000, v13, v14, "Cannot write to Feature Store because the user is not supported.");
LABEL_11:
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

id _s7SiriCam27FeatureStoreLoggingProtocolPAAE12createStream8streamIdSo020FSFCurareInteractionH0CSgSS_tFZAA0bcD6LoggerV_Tt0g5Tm(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D08440]);

  v5 = @nonobjc FSFCurareInteractionStream.init(streamId:)(a1, a2);
  if (v5)
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.common);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_15();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);
      _os_log_impl(&dword_266790000, v7, v8, "Successfully created Feature Store stream: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }
  }

  return v5;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(void *a1)
{
  return CamModelMetadata.encode(to:)(a1);
}

{
  return CamLogOutput.encode(to:)(a1);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)()
{
  type metadata accessor for RankedAction();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type RankedAction and conformance RankedAction, type metadata accessor for RankedAction);
  return Array<A>.encode(to:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  lazy protocol witness table accessor for type [String : MLFeatureValue] and conformance <> [A : B]();
  return Dictionary<>.encode(to:)();
}

{
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  lazy protocol witness table accessor for type MLFeatureValue and conformance MLFeatureValue(&lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  return Dictionary<>.encode(to:)();
}

uint64_t specialized ReflectedStringConvertible.description.getter(uint64_t (*a1)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_16();
  v8 = type metadata accessor for Mirror();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v31 = a1(0);
  v29 = v1;

  Mirror.init(reflecting:)();
  Mirror.subjectType.getter();
  v29 = _typeName(_:qualified:)();
  v30 = v19;
  MEMORY[0x26D5DCD80](40, 0xE100000000000000);
  Mirror.superclassMirror.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  }

  else
  {
    (*(v11 + 32))(v16, v2, v8);
    Mirror.children.getter();
    v20 = ReflectedStringConvertible.printElements(_:)();
    v22 = v21;

    v27 = v20;
    v28 = v22;

    MEMORY[0x26D5DCD80](8236, 0xE200000000000000);

    MEMORY[0x26D5DCD80](v27, v28);

    (*(v11 + 8))(v16, v8);
  }

  Mirror.children.getter();
  v23 = ReflectedStringConvertible.printElements(_:)();
  v25 = v24;

  MEMORY[0x26D5DCD80](v23, v25);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  (*(v11 + 8))(v18, v8);
  return v29;
}

uint64_t _s7SiriCam0B27FeatureStoreLoggingProtocolPAAE9writeData13modelFeatures0I6Output0I8Metadata9requestId02rcN08fsStreamySDySSSo12MLMultiArrayCG_AA0b3LogK0CAA0b5ModelL0VS2SAA0cdQ0OtFZAA0bcD6LoggerV_Tt5g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v30 = a7;
  v29 = a5;
  v28 = a4;
  v13 = type metadata accessor for CamModelMetadata();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMd, &_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  v18 = 0xE800000000000000;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(inited + 48) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 56) = v19;
  *(inited + 64) = 0x74757074756FLL;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 88) = a2;
  *(inited + 96) = 0x617461646174656DLL;
  *(inited + 104) = 0xE800000000000000;
  OUTLINED_FUNCTION_6_25();
  outlined init with copy of AutoSendInput(a3, v16, v20);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  outlined init with take of AutoSendInput(v16, v22 + v21, type metadata accessor for CamModelMetadata);
  *(inited + 112) = _s7SiriCam12AnyEncodableVyACxcSERzlufcys7Encoder_pKcxcfu_ysAD_pKcfu0_AA0B13ModelMetadataV_Tg5TA_0;
  *(inited + 120) = v22;

  v23 = Dictionary.init(dictionaryLiteral:)();
  if (a8)
  {
    if (a8 == 1)
    {
      v24 = 0x65646F4D72616143;
      v18 = 0xE90000000000006CLL;
    }

    else
    {
      v24 = 0x646E65536F747541;
      v18 = 0xED00006C65646F4DLL;
    }
  }

  else
  {
    v24 = 0x6C65646F4D6D6143;
  }

  v25 = v29;
  v26 = v28;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS7SiriCam12AnyEncodableVGMd, &_sSDySS7SiriCam12AnyEncodableVGMR);
  v31[4] = lazy protocol witness table accessor for type [String : AnyEncodable] and conformance <> [A : B]();
  v31[0] = v23;
  specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(v24, v18, v31, v26, v25, a6, v30);

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t AutoSendCoreHandler.init()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_16();
  v8 = type metadata accessor for AutoSendInputFeatureExtractor();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v14 = (v13 - v12);
  v16 = *(v15 + 44);
  v17 = type metadata accessor for WordEmbeddingFeatureExtractor();
  OUTLINED_FUNCTION_19_14();
  *v14 = 0x3FF0000000000000;
  v14[1] = 0;
  type metadata accessor for LatticePathFeatureExtractor();
  v14[2] = swift_allocObject();
  v41 = &type metadata for CamFeatureFlag;
  v42 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
  LOBYTE(v40) = 1;
  v18 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v40);
  if ((v18 & 1) != 0 && static WordEmbeddingFeatureExtractor.currentLocaleIsSupported()())
  {
    WordEmbeddingFeatureExtractor.init()();
    if (v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_2_25();
      outlined destroy of AutoSendInput(v14, v24);
      type metadata accessor for AutoSendCoreHandler();
      v25 = *(*v3 + 48);
      v26 = *(*v3 + 52);
      swift_deallocPartialClassInstance();
      return v3;
    }

    __swift_storeEnumTagSinglePayload(v2, 0, 1, v17);
    outlined assign with take of WordEmbeddingFeatureExtractor?(v2, v14 + v16);
  }

  else
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v14 + v16, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
    OUTLINED_FUNCTION_19_14();
  }

  v19 = (v3 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendInputFeatureExtractor);
  outlined init with take of AutoSendInput(v14, v3 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendInputFeatureExtractor, type metadata accessor for AutoSendInputFeatureExtractor);
  v20 = type metadata accessor for CoreMLHandler();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = CoreMLHandler.init(forModelWithName:)(0xD000000000000029, 0x8000000266819F40);
  if (v1)
  {
    v14 = v19;
    goto LABEL_8;
  }

  v41 = v20;
  v42 = &protocol witness table for CoreMLHandler;
  *&v40 = v23;
  outlined init with take of CaarHandler(&v40, v3 + 16);
  OUTLINED_FUNCTION_12_18();
  v28 = v27;
  v29 = MGGetBoolAnswer();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_266813E60;
  *(v30 + 56) = &type metadata for ForcedConfirmationActionEnforcer;
  *(v30 + 64) = &protocol witness table for ForcedConfirmationActionEnforcer;
  *(v30 + 96) = &type metadata for UserDefaultsActionEnforcer;
  *(v30 + 104) = &protocol witness table for UserDefaultsActionEnforcer;
  if (v29)
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.autoSend);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10(v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266790000, v32, v33, "Detected internal build", v34, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v36 = *(v30 + 16);
    v35 = *(v30 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v30);
      v30 = v39;
    }

    v41 = &type metadata for AutoConfirmMagicWordsActionEnforcer;
    v42 = &protocol witness table for AutoConfirmMagicWordsActionEnforcer;
    *(v30 + 16) = v36 + 1;
    outlined init with take of CaarHandler(&v40, v30 + 40 * v36 + 32);
  }

  v37 = (v3 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer);
  v37[3] = &type metadata for AutoConfirmSequentialEnforcer;
  v37[4] = &protocol witness table for AutoConfirmSequentialEnforcer;
  *v37 = v30;
  return v3;
}

uint64_t AutoSendCoreHandler.handle(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = OUTLINED_FUNCTION_22(v4);
  v187 = v6;
  v188 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_1(v10 - v9);
  v186 = type metadata accessor for DispatchQoS();
  v11 = OUTLINED_FUNCTION_22(v186);
  v184 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_1(v16 - v15);
  v182 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = OUTLINED_FUNCTION_22(v182);
  v181 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_23_0(v22 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_14(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23_0(v167 - v27);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  OUTLINED_FUNCTION_0_2(v174);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_1(v167 - v31);
  v171 = type metadata accessor for CamModelMetadata();
  v32 = OUTLINED_FUNCTION_0_2(v171);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_1(v36 - v35);
  v37 = type metadata accessor for AutoSendInputFeatureExtractor();
  v38 = OUTLINED_FUNCTION_14(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_0();
  v195 = v42 - v41;
  v197 = type metadata accessor for OSSignpostID();
  v43 = OUTLINED_FUNCTION_22(v197);
  v45 = v44;
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v43);
  v192 = v167 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = v167 - v50;
  v52 = type metadata accessor for AutoSendInput();
  v53 = OUTLINED_FUNCTION_22(v52);
  v178 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_23_0(v167 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_23_0(v167 - v59);
  v61 = MEMORY[0x28223BE20](v60);
  v63 = v167 - v62;
  v179 = v64;
  MEMORY[0x28223BE20](v61);
  v66 = v167 - v65;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v67 = type metadata accessor for Logger();
  v68 = __swift_project_value_buffer(v67, static Logger.autoSend);
  OUTLINED_FUNCTION_7_19();
  outlined init with copy of AutoSendInput(a1, v66, v69);
  v191 = v68;
  v70 = Logger.logObject.getter();
  LODWORD(v193) = static os_log_type_t.debug.getter();
  v71 = OUTLINED_FUNCTION_10(v193);
  v177 = v63;
  v189 = v52;
  if (v71)
  {
    OUTLINED_FUNCTION_15();
    v72 = swift_slowAlloc();
    v169 = v2;
    v73 = v72;
    OUTLINED_FUNCTION_9();
    v168 = swift_slowAlloc();
    aBlock = v168;
    *v73 = 136315138;
    v190 = v51;
    outlined init with copy of AutoSendInput(v66, v63, type metadata accessor for AutoSendInput);
    v74 = v45;
    v75 = String.init<A>(describing:)();
    v194 = a1;
    v77 = v76;
    v51 = v190;
    outlined destroy of AutoSendInput(v66, type metadata accessor for AutoSendInput);
    v78 = v75;
    v45 = v74;
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, &aBlock);
    v80 = v194;

    *(v73 + 4) = v79;
    _os_log_impl(&dword_266790000, v70, v193, "Handling AutoSend input: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v168);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v2 = v169;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    outlined destroy of AutoSendInput(v66, type metadata accessor for AutoSendInput);
    v80 = a1;
  }

  v81 = v195;
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v82 = static Log.autoSend;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_17_13();
  v83 = OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendInputFeatureExtractor;
  swift_beginAccess();
  outlined init with copy of AutoSendInput(v2 + v83, v81, type metadata accessor for AutoSendInputFeatureExtractor);
  v84 = v196;
  specialized FeatureExtracting.extract(from:)(v80);
  if (v84)
  {
    outlined destroy of AutoSendInput(v81, type metadata accessor for AutoSendInputFeatureExtractor);
    return (*(v45 + 8))(v51, v197);
  }

  else
  {
    v196 = v45;
    v194 = v80;
    OUTLINED_FUNCTION_2_25();
    v87 = v86;
    outlined destroy of AutoSendInput(v81, v88);
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_17_13();
    v89 = v82;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_18_12();
    v90 = v2[5];
    v91 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v90);
    v92 = (*(v91 + 32))(v87, v90, v91);
    v195 = v87;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_12();
    AutoSendOutputProvider.toAutoSendOutput(from:)(v92);
    v167[1] = 0;
    v168 = v92;
    v169 = v93;
    v171 = swift_allocBox();
    v95 = v94;
    v96 = v2;
    v97 = v2[5];
    v98 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v97);
    v99 = *(v98 + 24);
    v193 = v95;
    v99(v97, v98);
    v100 = v194;
    v101 = v170;
    outlined init with copy of AutoSendInput(v194, v170, type metadata accessor for AutoSendInput);
    v102 = v172;
    outlined init with copy of AutoSendInput(v100, v172, type metadata accessor for AutoSendInput);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    v105 = os_log_type_enabled(v103, v104);
    v190 = v51;
    if (v105)
    {
      v106 = swift_slowAlloc();
      *v106 = 67109376;
      v107 = v189;
      v108 = *(v101 + v189[7]);
      outlined destroy of AutoSendInput(v101, type metadata accessor for AutoSendInput);
      *(v106 + 4) = v108;
      *(v106 + 8) = 1024;
      v109 = (*(v102 + v107[7]) & 1) == 0;
      outlined destroy of AutoSendInput(v102, type metadata accessor for AutoSendInput);
      *(v106 + 10) = v109;
      _os_log_impl(&dword_266790000, v103, v104, "Feature opt in status is %{BOOL}d, overriding shadow log field to %{BOOL}d.", v106, 0xEu);
      v100 = v194;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
      outlined destroy of AutoSendInput(v102, type metadata accessor for AutoSendInput);
      outlined destroy of AutoSendInput(v101, type metadata accessor for AutoSendInput);
      v107 = v189;
    }

    v110 = v193;
    *(v193 + 48) = (*(v100 + v107[7]) & 1) == 0;
    v111 = v100;
    v112 = *(v96 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer + 24);
    v113 = *(v96 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer + 32);
    __swift_project_boxed_opaque_existential_1((v96 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer), v112);
    v114 = v110;
    v115 = v173;
    outlined init with copy of AutoSendInput(v114, v173, type metadata accessor for CamModelMetadata);
    v116 = v169;
    (*(v113 + 8))(&aBlock, v195, v169, v111, v115, v112, v113);
    outlined destroy of AutoSendInput(v115, type metadata accessor for CamModelMetadata);
    v117 = v200;
    if (v200)
    {
      v118 = v199;
      v119 = aBlock;

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.info.getter();

      v122 = v116;
      if (os_log_type_enabled(v120, v121))
      {
        OUTLINED_FUNCTION_9();
        v123 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v123 = 136315650;
        LOBYTE(v204) = *(v116 + 57);
        v124 = String.init<A>(describing:)();
        v126 = v118;
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &aBlock);

        *(v123 + 4) = v127;
        *(v123 + 12) = 2080;
        LOBYTE(v204) = v119;
        v128 = String.init<A>(describing:)();
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, &aBlock);
        v118 = v126;
        v122 = v169;

        *(v123 + 14) = v130;
        *(v123 + 22) = 2080;
        *(v123 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v117, &aBlock);
        _os_log_impl(&dword_266790000, v120, v121, "Overriding %s with %s due to %s", v123, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        v107 = v189;
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      LOBYTE(aBlock) = v119;
      v131._countAndFlagsBits = v118;
      v131._object = v117;
      AutoSendOutput.overrideAction(action:enforcer:)(&aBlock, v131);
    }

    else
    {
      v122 = v116;
    }

    v132 = *(v174 + 48);
    v133 = v175;
    *v175 = v122;
    OUTLINED_FUNCTION_6_25();
    outlined init with copy of AutoSendInput(v193, v133 + v134, v135);
    v136 = v122;
    v137 = v107[8];
    v138 = v194;
    v139 = (v194 + v107[6]);
    v140 = *v139;
    v141 = v139[1];
    v142 = type metadata accessor for UUID();
    v143 = v176;
    __swift_storeEnumTagSinglePayload(v176, 1, 1, v142);

    v144 = v138;
    _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5();
    outlined destroy of (CamLogOutput, CamModelMetadata)(v143, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v133, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);

    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v145, v146))
    {
      OUTLINED_FUNCTION_15();
      v147 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v148 = swift_slowAlloc();
      aBlock = v148;
      *v147 = 136315138;

      v149 = specialized ReflectedStringConvertible.description.getter(type metadata accessor for AutoSendOutput);
      v151 = v150;

      v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, &aBlock);

      *(v147 + 4) = v152;
      _os_log_impl(&dword_266790000, v145, v146, "Returning AutoSend output: %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);
      v144 = v194;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v153 = v181;
    v154 = v180;
    v155 = v182;
    (*(v181 + 104))(v180, *MEMORY[0x277D851A8], v182);
    v156 = static OS_dispatch_queue.global(qos:)();
    (*(v153 + 8))(v154, v155);
    OUTLINED_FUNCTION_7_19();
    v157 = v177;
    outlined init with copy of AutoSendInput(v144, v177, v158);
    v159 = (*(v178 + 80) + 40) & ~*(v178 + 80);
    v160 = swift_allocObject();
    v160[2] = v195;
    v160[3] = v136;
    v160[4] = v171;
    outlined init with take of AutoSendInput(v157, v160 + v159, type metadata accessor for AutoSendInput);
    v202 = partial apply for closure #1 in AutoSendCoreHandler.handle(_:);
    v203 = v160;
    aBlock = MEMORY[0x277D85DD0];
    v199 = 1107296256;
    v200 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v201 = &block_descriptor_3;
    v161 = _Block_copy(&aBlock);

    v162 = v183;
    static DispatchQoS.unspecified.getter();
    v204 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v163 = v185;
    v164 = v188;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D5DD090](0, v162, v163, v161);
    _Block_release(v161);

    (*(v187 + 8))(v163, v164);
    (*(v184 + 8))(v162, v186);
    v165 = v197;
    v166 = *(v196 + 8);
    v166(v192, v197);
    v166(v190, v165);

    return v136;
  }
}

uint64_t closure #1 in AutoSendCoreHandler.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CamModelMetadata();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  outlined init with copy of AutoSendInput(v11, v10, type metadata accessor for CamModelMetadata);
  v12 = type metadata accessor for AutoSendInput();
  v13 = a4 + *(v12 + 32);
  v14 = UUID.uuidString.getter();
  _s7SiriCam0B27FeatureStoreLoggingProtocolPAAE9writeData13modelFeatures0I6Output0I8Metadata9requestId02rcN08fsStreamySDySSSo12MLMultiArrayCG_AA0b3LogK0CAA0b5ModelL0VS2SAA0cdQ0OtFZAA0bcD6LoggerV_Tt5g5(a1, a2, v10, v14, v15, *(a4 + *(v12 + 24)), *(a4 + *(v12 + 24) + 8), 2);

  return outlined destroy of AutoSendInput(v10, type metadata accessor for CamModelMetadata);
}

uint64_t AutoSendCoreHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_2_25();
  outlined destroy of AutoSendInput(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer));
  return v0;
}

uint64_t AutoSendCoreHandler.__deallocating_deinit()
{
  AutoSendCoreHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AutoSendCoreHandler()
{
  result = type metadata singleton initialization cache for AutoSendCoreHandler;
  if (!type metadata singleton initialization cache for AutoSendCoreHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AutoSendCoreHandler()
{
  result = type metadata accessor for AutoSendInputFeatureExtractor();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id @nonobjc FSFCurareInteractionAsJsonStr.init(jsonStr:interactionId:dataVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x26D5DCC90]();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = MEMORY[0x26D5DCC90](a3, a4);

LABEL_6:
  v11 = [v5 initWithJsonStr:v9 interactionId:v10 dataVersion:a5];

  return v11;
}

id @nonobjc FSFCurareInteractionStream.init(streamId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x26D5DCC90]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithStreamId_];

  return v4;
}

uint64_t outlined init with copy of AutoSendInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of AutoSendInput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #1 in AutoSendCoreHandler.handle(_:)()
{
  v1 = type metadata accessor for AutoSendInput();
  OUTLINED_FUNCTION_14(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return closure #1 in AutoSendCoreHandler.handle(_:)(v3, v4, v5, v6);
}

uint64_t _s7SiriCam12AnyEncodableVyACxcSERzlufcys7Encoder_pKcxcfu_ysAD_pKcfu0_AA0B13ModelMetadataV_Tg5TA_0(void *a1)
{
  v3 = type metadata accessor for CamModelMetadata();
  OUTLINED_FUNCTION_14(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  return CamModelMetadata.encode(to:)(a1);
}

uint64_t lazy protocol witness table accessor for type MLFeatureValue and conformance MLFeatureValue(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MLMultiArray(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of AutoSendInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of WordEmbeddingFeatureExtractor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v1);
}

uint64_t static TrialProvider.fetchBoolFactorFromTrial(_:)()
{
  if (one-time initialization token for cachedFactors != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  OUTLINED_FUNCTION_2_26();
  v0 = OUTLINED_FUNCTION_10_0();
  v3 = specialized Dictionary.subscript.getter(v0, v1, v2);
  swift_endAccess();
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.common);
  v5 = v3;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = OUTLINED_FUNCTION_10_0();
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);
    *(v8 + 12) = 2080;
    if (v3)
    {
      [v5 BOOLeanValue];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v19);

    *(v8 + 14) = v14;
    OUTLINED_FUNCTION_6_26(&dword_266790000, v15, v16, "[TrialProvider] Fetched %s = %s");
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  if (!v3)
  {
    return 2;
  }

  v17 = [v5 BOOLeanValue];

  return v17;
}

uint64_t static TrialProvider.fetchDoubleFactorFromTrial(_:)()
{
  if (one-time initialization token for cachedFactors != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  OUTLINED_FUNCTION_2_26();
  v0 = OUTLINED_FUNCTION_10_0();
  v3 = specialized Dictionary.subscript.getter(v0, v1, v2);
  swift_endAccess();
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.common);
  v5 = v3;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = OUTLINED_FUNCTION_10_0();
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);
    *(v8 + 12) = 2080;
    if (v3)
    {
      [v5 doubleValue];
    }

    else
    {
      v12 = 0;
    }

    v21[1] = v12;
    v22 = v3 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v21);

    *(v8 + 14) = v15;
    OUTLINED_FUNCTION_6_26(&dword_266790000, v16, v17, "[TrialProvider] Fetched %s = %s");
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  if (!v3)
  {
    return 0;
  }

  [v5 doubleValue];
  v19 = v18;

  return v19;
}

void *static TrialProvider.fetchStringFactorFromTrial(_:)()
{
  if (one-time initialization token for cachedFactors != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  OUTLINED_FUNCTION_2_26();
  v0 = OUTLINED_FUNCTION_10_0();
  v3 = specialized Dictionary.subscript.getter(v0, v1, v2);
  swift_endAccess();
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.common);
  v5 = v3;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = OUTLINED_FUNCTION_10_0();
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);
    *(v8 + 12) = 2080;
    if (v3)
    {
      v12 = outlined bridged method (pb) of @objc TRILevel.stringValue.getter(v5);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v20[1] = v12;
    v20[2] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v20);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_266790000, v6, v7, "[TrialProvider] Fetched %s = %s", v8, 0x16u);
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  if (v3)
  {
    v17 = [v5 stringValue];
    if (v17)
    {
      v18 = v17;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

double one-time initialization function for enrollment()
{
  static TrialProvider.fetchTrialEnrollment()(v1);
  static TrialProvider.enrollment = v1[0];
  unk_28132EAA0 = v1[1];
  result = *&v2;
  xmmword_28132EAB0 = v2;
  unk_28132EAC0 = v3;
  return result;
}

void static TrialProvider.fetchTrialEnrollment()(uint64_t *a1@<X8>)
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ranker);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "[TrialProvider] Fetching enrollment metadata.", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  if (one-time initialization token for triClient != -1)
  {
    swift_once();
  }

  v6 = static TrialProvider.triClient;
  v7 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v8 = [v6 experimentIdentifiersWithNamespaceName_];

  if (v8)
  {
    v9 = [v8 experimentId];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v8 treatmentId];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    [v8 deploymentId];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v25 = 0;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v19 = static TrialProvider.triClient;
  v20 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v21 = [v19 rolloutIdentifiersWithNamespaceName_];

  if (v21)
  {
    v22 = [v21 rolloutId];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {

    v24 = 0;
  }

  *a1 = v25;
  a1[1] = v11;
  a1[2] = v13;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v18;
  a1[6] = v21;
  a1[7] = v24;
}

uint64_t one-time initialization function for cachedFactors()
{
  result = static TrialProvider.fetchFactorValues()();
  static TrialProvider.cachedFactors = result;
  return result;
}

uint64_t static TrialProvider.fetchFactorValues()()
{
  if (one-time initialization token for ranker != -1)
  {
    goto LABEL_30;
  }

LABEL_2:
  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] Fetching factor values.", v3, 2u);
    MEMORY[0x26D5DDCD0](v3, -1, -1);
  }

  if (one-time initialization token for triClient != -1)
  {
    swift_once();
  }

  v4 = static TrialProvider.triClient;
  v5 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v6 = [v4 factorLevelsWithNamespaceName_];

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for TRIFactorLevel, 0x277D73B08);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = specialized Array.count.getter(v7);
  v10 = 0;
  while (2)
  {
    for (i = v10; ; ++i)
    {
      if (v9 == i)
      {

        return v8;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D5DD230](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        swift_once();
        goto LABEL_2;
      }

      v14 = [v12 factor];
      if (!v14)
      {
        goto LABEL_33;
      }

      v15 = outlined bridged method (ob) of @objc TRIFactor.name.getter(v14);
      if (v16)
      {
        break;
      }

LABEL_17:
    }

    v17 = v15;
    v18 = v16;
    v19 = [v13 level];
    if (!v19)
    {

      goto LABEL_17;
    }

    v37 = v19;
    isUnique = swift_isUniquelyReferenced_nonNull_native();
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v21 = v8[2];
    v22 = (v20 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    else
    {
      v35 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo8TRILevelCGMd, &_ss17_NativeDictionaryVySSSo8TRILevelCGMR);
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v23))
      {
        v26 = v34;
        if ((v35 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      if ((v35 & 1) == (v25 & 1))
      {
        v26 = v24;
        if ((v35 & 1) == 0)
        {
LABEL_23:
          v8[(v26 >> 6) + 8] |= 1 << v26;
          v27 = (v8[6] + 16 * v26);
          *v27 = v17;
          v27[1] = v18;
          *(v8[7] + 8 * v26) = v37;

          v28 = v8[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (!v29)
          {
            v8[2] = v30;
            continue;
          }

          goto LABEL_32;
        }

LABEL_26:

        v31 = v8[7];
        v32 = *(v31 + 8 * v26);
        *(v31 + 8 * v26) = v37;

        continue;
      }
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id one-time initialization function for triClient()
{
  result = closure #1 in variable initialization expression of static TrialProvider.triClient();
  static TrialProvider.triClient = result;
  return result;
}

id closure #1 in variable initialization expression of static TrialProvider.triClient()
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] New TRIClient instance.", v3, 2u);
    MEMORY[0x26D5DDCD0](v3, -1, -1);
  }

  v4 = [objc_opt_self() clientWithIdentifier_];
  v5 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v9[4] = closure #1 in closure #1 in variable initialization expression of static TrialProvider.triClient;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ();
  v9[3] = &block_descriptor_4;
  v6 = _Block_copy(v9);
  v7 = [v4 addUpdateHandlerForNamespaceName:v5 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static TrialProvider.triClient()
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] Update handler called.", v3, 2u);
    MEMORY[0x26D5DDCD0](v3, -1, -1);
  }

  return static TrialProvider.refreshClient()();
}

uint64_t static TrialProvider.refreshClient()()
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] Refreshing TRIClient instance.", v3, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  if (one-time initialization token for triClient != -1)
  {
    swift_once();
  }

  [static TrialProvider.triClient refresh];
  if (one-time initialization token for cachedFactors != -1)
  {
    OUTLINED_FUNCTION_0_29(&one-time initialization token for cachedFactors);
  }

  v4 = static TrialProvider.fetchFactorValues()();
  swift_beginAccess();
  static TrialProvider.cachedFactors = v4;

  if (one-time initialization token for enrollment != -1)
  {
    swift_once();
  }

  static TrialProvider.fetchTrialEnrollment()(v7);
  v6[0] = static TrialProvider.enrollment;
  v6[1] = unk_28132EAA0;
  v6[2] = xmmword_28132EAB0;
  v6[3] = unk_28132EAC0;
  static TrialProvider.enrollment = v7[0];
  unk_28132EAA0 = v7[1];
  xmmword_28132EAB0 = v7[2];
  unk_28132EAC0 = v7[3];
  return outlined destroy of CAARTrialEnrollment(v6);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t outlined bridged method (ob) of @objc TRIFactor.name.getter(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TRILevel.stringValue.getter(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

Swift::OpaquePointer_optional __swiftcall NLEmbedding.vector(for:)(Swift::String a1)
{
  v1 = MEMORY[0x2821FF608](a1._countAndFlagsBits, a1._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB88]();
}