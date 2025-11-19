Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLMultiArray.toBoolScalar()()
{
  if ([v0 count] == 1)
  {
    v1 = [v0 objectAtIndexedSubscript_];
    v2 = Bool.init(truncating:)();

    return v2 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_1_1();
    v4 = [v0 shape];
    v5 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    OUTLINED_FUNCTION_8_0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x26D5DCE80](v6, v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_21();

    OUTLINED_FUNCTION_7_0();
    lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_6_3(v7, v8);
    return 0;
  }
}

uint64_t MLMultiArray.toDoubleArray()()
{
  if (OUTLINED_FUNCTION_5_1() != 65600)
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(38);

    v15 = OUTLINED_FUNCTION_11_0(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22);
    v16 = MLMultiArrayDataType.description.getter(v15);
    MEMORY[0x26D5DCD80](v16);

    lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v17 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_10_1(v17, v18);
    return OUTLINED_FUNCTION_18_1();
  }

  v1 = OUTLINED_FUNCTION_19();
  v2 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v1, 0.0);
  v3 = [v0 dataPointer];
  v4 = OUTLINED_FUNCTION_19();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v0 = v4;
    if (!v4)
    {
      return OUTLINED_FUNCTION_18_1();
    }

    if (v4 <= *(v2 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v2 = v20;
LABEL_6:
  v5 = (v2 + 32);
  do
  {
    v6 = *v3++;
    *v5++ = v6;
    --v0;
  }

  while (v0);
  return OUTLINED_FUNCTION_18_1();
}

uint64_t MLMultiArray.toIntArray()()
{
  if (OUTLINED_FUNCTION_5_1() != 131104)
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(35);

    v16 = OUTLINED_FUNCTION_11_0(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);
    v17 = MLMultiArrayDataType.description.getter(v16);
    MEMORY[0x26D5DCD80](v17);

    lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v18 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_10_1(v18, v19);
    return OUTLINED_FUNCTION_18_1();
  }

  v1 = OUTLINED_FUNCTION_19();
  _sSa9repeating5countSayxGx_SitcfCs5Int32V_Tt1g5(0, v1);
  v3 = v2;
  v4 = [v0 dataPointer];
  v5 = OUTLINED_FUNCTION_19();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v0 = v5;
    if (!v5)
    {
      return OUTLINED_FUNCTION_18_1();
    }

    if (v5 <= *(v3 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = v21;
LABEL_6:
  v6 = (v3 + 32);
  do
  {
    v7 = *v4++;
    *v6++ = v7;
    --v0;
  }

  while (v0);
  return OUTLINED_FUNCTION_18_1();
}

uint64_t MLMultiArray.toFloatArray()()
{
  if (OUTLINED_FUNCTION_5_1() != 65568)
  {
    OUTLINED_FUNCTION_0_3();
    _StringGuts.grow(_:)(37);

    v16 = OUTLINED_FUNCTION_11_0(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);
    v17 = MLMultiArrayDataType.description.getter(v16);
    MEMORY[0x26D5DCD80](v17);

    lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
    v18 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_10_1(v18, v19);
    return OUTLINED_FUNCTION_18_1();
  }

  v1 = OUTLINED_FUNCTION_19();
  _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v1, 0.0);
  v3 = v2;
  v4 = [v0 dataPointer];
  v5 = OUTLINED_FUNCTION_19();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v0 = v5;
    if (!v5)
    {
      return OUTLINED_FUNCTION_18_1();
    }

    if (v5 <= *(v3 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = v21;
LABEL_6:
  v6 = (v3 + 32);
  do
  {
    v7 = *v4++;
    *v6++ = v7;
    --v0;
  }

  while (v0);
  return OUTLINED_FUNCTION_18_1();
}

uint64_t MLMultiArray.MLMultiArrayCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1635017060 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int MLMultiArray.MLMultiArrayCodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](a1);
  return Hasher._finalize()();
}

uint64_t MLMultiArray.MLMultiArrayCodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6570616873;
  }

  if (a1 == 1)
  {
    return 0x6570795461746164;
  }

  return 1635017060;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLMultiArray.MLMultiArrayCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLMultiArray.MLMultiArrayCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLMultiArray.MLMultiArrayCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLMultiArray.MLMultiArrayCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MLMultiArray.MLMultiArrayCodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLMultiArray.MLMultiArrayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLMultiArray.MLMultiArrayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MLMultiArray.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo12MLMultiArrayC7SiriCamE0dE10CodingKeys33_561A5CA66CC542D53D28CD818D93D29CLLOGMd, &_ss22KeyedEncodingContainerVySo12MLMultiArrayC7SiriCamE0dE10CodingKeys33_561A5CA66CC542D53D28CD818D93D29CLLOGMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v41 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v44 = v1;
  v12 = [v1 shape];
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = specialized Array.count.getter(v13);
  if (v14)
  {
    v15 = v14;
    v47 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v41 = v10;
    v42 = v3;
    v43 = v6;
    v16 = 0;
    v17 = v47;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D5DD230](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = Int.init(truncating:)();

      v47 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v17 = v47;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      *(v17 + 8 * v22 + 32) = v20;
    }

    while (v15 != v16);

    v3 = v42;
    v6 = v43;
    v10 = v41;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v47 = v17;
  v46 = 0;
  v23 = OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &_sSaySiGMd, &_sSaySiGMR);
  OUTLINED_FUNCTION_23_1();
  v25 = v45;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v25)
  {

LABEL_15:
    (*(v6 + 8))(v10, v3);
    return;
  }

  v26 = v44;
  [v44 dataType];
  LOBYTE(v47) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v27 = [v26 dataType];
  if (v27 == 65568)
  {
    OUTLINED_FUNCTION_14_0();
    v37 = MLMultiArray.toFloatArray()();
    OUTLINED_FUNCTION_4_1(v37);
    v29 = &_sSaySfGMd;
    v30 = &_sSaySfGMR;
    v38 = OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    v33 = &lazy protocol witness table cache variable for type [Float] and conformance <A> [A];
  }

  else if (v27 == 131104)
  {
    OUTLINED_FUNCTION_14_0();
    v34 = MLMultiArray.toIntArray()();
    OUTLINED_FUNCTION_4_1(v34);
    v29 = &_sSays5Int32VGMd;
    v30 = &_sSays5Int32VGMR;
    v35 = OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    v33 = &lazy protocol witness table cache variable for type [Int32] and conformance <A> [A];
  }

  else
  {
    if (v27 != 65600)
    {
      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      OUTLINED_FUNCTION_6_2();
      *v40 = 0xD000000000000026;
      *(v40 + 8) = 0x800000026681A4B0;
      *(v40 + 16) = 0;
      swift_willThrow();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_14_0();
    v28 = MLMultiArray.toDoubleArray()();
    OUTLINED_FUNCTION_4_1(v28);
    v29 = &_sSaySdGMd;
    v30 = &_sSaySdGMR;
    v31 = OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    v33 = &lazy protocol witness table cache variable for type [Double] and conformance <A> [A];
  }

  lazy protocol witness table accessor for type [Int] and conformance <A> [A](v33, v29, v30);
  OUTLINED_FUNCTION_23_1();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  (*(v6 + 8))(v13, v3);
}

unint64_t lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

id @nonobjc MLMultiArray.init(shape:dataType:)(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10[0] = 0;
  v5 = [v2 initWithShape:isa dataType:a2 error:v10];

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

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12MorphunSwift5TokenVGMd, &_ss23_ContiguousArrayStorageCy12MorphunSwift5TokenVGMR, MEMORY[0x277D2A310], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x277CC9260], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x277D5FE08], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMR, type metadata accessor for CamParse, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
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

unint64_t lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError()
{
  result = lazy protocol witness table cache variable for type CoreMLError and conformance CoreMLError;
  if (!lazy protocol witness table cache variable for type CoreMLError and conformance CoreMLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreMLError and conformance CoreMLError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for CoreMLError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for CoreMLError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MLMultiArray.MLMultiArrayCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MLMultiArray.MLMultiArrayCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_1();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v3, v4, v5, v6, v7, v8, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v0 = v9;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSSo14MLFeatureValueCGGMd, &_ss23_ContiguousArrayStorageCySDySSSo14MLFeatureValueCGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_4();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_13(v7);
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_16(v11);
      if (a1)
      {
LABEL_9:
        v12 = OUTLINED_FUNCTION_12_1();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_4();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_13(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam14ActionProtocol_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam14ActionProtocol_pGMR);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 40);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_12_1();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17();
  if (!v9)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_4();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_13(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMR);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_16(v12);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_12_1();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 16 * v4);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17();
  if (!v9)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14MLFeatureValueCtMd, &_sSS_So14MLFeatureValueCtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of SignalProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_17();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_17();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t outlined destroy of RankedAction(uint64_t a1)
{
  v2 = type metadata accessor for RankedAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_19()
{

  return [v0 (v1 + 888)];
}

uint64_t one-time initialization function for common(uint64_t a1)
{
  return one-time initialization function for common(a1, 0x6E6F6D6D6F63, 0xE600000000000000, &static Log.common);
}

{
  return one-time initialization function for common(a1, static Logger.common, &one-time initialization token for common, &static Log.common);
}

uint64_t one-time initialization function for ambiguityHandling()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.ambiguityHandling = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t one-time initialization function for autoSend(uint64_t a1)
{
  return one-time initialization function for common(a1, 0x646E65536F747541, 0xE800000000000000, &static Log.autoSend);
}

{
  return one-time initialization function for common(a1, static Logger.autoSend, &one-time initialization token for autoSend, &static Log.autoSend);
}

uint64_t one-time initialization function for ranker(uint64_t a1)
{
  return one-time initialization function for common(a1, 0x61526E6F69746341, 0xEC00000072656B6ELL, &static Log.ranker);
}

{
  return one-time initialization function for common(a1, static Logger.ranker, &one-time initialization token for ranker, &static Log.ranker);
}

uint64_t one-time initialization function for common(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t one-time initialization function for common(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return Logger.init(_:)();
}

uint64_t PommesResponse.sash()@<X0>(unint64_t a1@<X8>)
{
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v3 = OUTLINED_FUNCTION_22(v47);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = dispatch thunk of PommesResponse.experiences.getter();
  if (specialized Array.count.getter(v21))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v21 & 0xC000000000000001) == 0, v21);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D5DD230](0, v21);
    }

    else
    {
      v22 = *(v21 + 32);
    }

    v23 = v22;

    type metadata accessor for GenericExperience();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v42 = v1;
      v43 = v23;
      v41 = v20;
      v44 = a1;
      v1 = v24;
      v25 = GenericExperience.components.getter();
      a1 = 0;
      v26 = *(v25 + 16);
      v45 = v13 + 16;
      v46 = v26;
      v27 = (v5 + 8);
      while (1)
      {
        if (v46 == a1)
        {

          a1 = v44;
          v1 = v42;
          goto LABEL_13;
        }

        if (a1 >= *(v25 + 16))
        {
          break;
        }

        (*(v13 + 16))(v18, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a1, v10);
        Apple_Parsec_Siri_V2alpha_ExperienceComponent.layoutExperience.getter();
        v1 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasSash.getter();
        v28 = *v27;
        (*v27)(v9, v47);
        if (v1)
        {

          v39 = v41;
          (*(v13 + 32))(v41, v18, v10);
          Apple_Parsec_Siri_V2alpha_ExperienceComponent.layoutExperience.getter();
          a1 = v44;
          Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.sash.getter();

          v28(v9, v47);
          (*(v13 + 8))(v39, v10);
          v36 = 0;
          goto LABEL_17;
        }

        ++a1;
        (*(v13 + 8))(v18, v10);
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_13:
  if (one-time initialization token for common != -1)
  {
LABEL_20:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.common);
  v30 = v1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_266790000, v31, v32, "No sash found in pommes response: %@", v33, 0xCu);
    outlined destroy of NSObject?(v34);
    MEMORY[0x26D5DDCD0](v34, -1, -1);
    MEMORY[0x26D5DDCD0](v33, -1, -1);
  }

  v36 = 1;
LABEL_17:
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  return __swift_storeEnumTagSinglePayload(a1, v36, 1, v37);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static CaarRequestLogger.wrapIntoLogEvent(message:)(uint64_t a1)
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
    [v3 setStartedOrChanged_];
    [v4 setCaarRequestContext_];
  }

  return v4;
}

uint64_t FeatureStoreStream.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65646F4D6D6143;
  }

  if (a1 == 1)
  {
    return 0x65646F4D72616143;
  }

  return 0x646E65536F747541;
}

uint64_t getEnumTagSinglePayload for AnyEncodable(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AnyEncodable(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id static CaarModelLogger.map(from:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v85 = type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_22(v85);
  v83 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for RankedAction();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for CamModelMetadata();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_3_0();
  v84 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  v27 = OUTLINED_FUNCTION_0_2(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v79 - v34;
  *(&v79 - v34) = a1;
  outlined init with copy of CamModelMetadata(a2, &v79 + *(v33 + 48) - v34, type metadata accessor for CamModelMetadata);
  v36 = &v35[*(v26 + 64)];
  v37 = a3[1];
  *v36 = *a3;
  *(v36 + 1) = v37;
  v38 = a3[3];
  *(v36 + 2) = a3[2];
  *(v36 + 3) = v38;
  v39 = objc_allocWithZone(MEMORY[0x277D56B80]);

  outlined init with copy of CAARTrialEnrollment(a3, &v87);
  v40 = [v39 init];
  if (!v40)
  {
LABEL_11:
    v59 = v35;
LABEL_18:
    outlined destroy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(v59);
    return 0;
  }

  v41 = v40;
  outlined init with copy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(v35, v32);
  v42 = *v32;
  v43 = *(v26 + 48);
  v44 = (v32 + *(v26 + 64));
  v45 = v44[1];
  v87 = *v44;
  v88 = v45;
  v46 = v44[3];
  v89 = v44[2];
  v90 = v46;
  v47 = v84;
  outlined init with take of CamModelMetadata(v32 + v43, v84);
  v48 = _s7SiriCam20ModelLoggingProtocolPAAE19setAssetInformation13modelMetadata9namespaceSo08SISchemaG0CSgAA0bcJ0V_SStFZAA04CaarC6LoggerV_Tt1g5(v47, 0xD000000000000013, 0x800000026681A0C0);
  [v41 setAsset_];
  v49 = *(v47 + 48);
  if (v49 != 2)
  {
    [v41 setIsShadowLog_];
  }

  result = [objc_allocWithZone(MEMORY[0x277D56B90]) init];
  v86 = result;
  if (!result)
  {

    outlined destroy of CAARTrialEnrollment(&v87);

    OUTLINED_FUNCTION_0_4();
    outlined destroy of CamModelMetadata(v47, v58);
    goto LABEL_11;
  }

  v80 = v48;
  v81 = v41;
  v82 = v35;
  v51 = 0;
  v52 = (v83 + 16);
  v53 = *(v42 + 16);
  while (v53 != v51)
  {
    if (v51 >= *(v42 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of CamModelMetadata(v42 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v51, v21, type metadata accessor for RankedAction);
    v54 = [objc_allocWithZone(MEMORY[0x277D56B18]) init];
    if (!v54)
    {

      outlined destroy of CAARTrialEnrollment(&v87);

      OUTLINED_FUNCTION_1_2();
LABEL_17:
      OUTLINED_FUNCTION_0_4();
      outlined destroy of CamModelMetadata(v84, v67);
      v59 = v82;
      goto LABEL_18;
    }

    v55 = v54;
    ++v51;
    type metadata accessor for SISchemaUUID();
    (*v52)(v12, v21 + *(v13 + 36), v85);
    v56 = SISchemaUUID.__allocating_init(nsuuid:)(v12);
    [v55 setActionCandidateId_];

    v57 = *(v21 + *(v13 + 28));
    *&v57 = v57;
    [v55 setModelScore_];
    [v86 addActionModelOutputs_];

    result = OUTLINED_FUNCTION_1_2();
  }

  v60 = v81;
  v61 = v86;
  [v81 setModelOutput_];
  v62 = [objc_allocWithZone(MEMORY[0x277D56C18]) init];
  if (!v62)
  {

    outlined destroy of CAARTrialEnrollment(&v87);
    goto LABEL_17;
  }

  v63 = v62;
  v64 = v84;
  if (*(&v89 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  OUTLINED_FUNCTION_5_2(v62, sel_setDeploymentId_);

  if (*(&v90 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v70 = v69;
  }

  else
  {
    v70 = 0;
  }

  OUTLINED_FUNCTION_5_2(v68, sel_setRolloutId_);

  if (*(&v88 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  OUTLINED_FUNCTION_5_2(v71, sel_setTreatmentId_);

  if (*(&v87 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v75 = v74;
    outlined destroy of CAARTrialEnrollment(&v87);
  }

  else
  {
    v76 = outlined destroy of CAARTrialEnrollment(&v87);
    v75 = 0;
  }

  OUTLINED_FUNCTION_5_2(v76, sel_setExperimentId_);

  v77 = v63;
  [v60 setTrialEnrollment_];

  OUTLINED_FUNCTION_0_4();
  outlined destroy of CamModelMetadata(v64, v78);
  outlined destroy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(v82);
  return v60;
}

uint64_t outlined destroy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CamModelMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of CamModelMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for SISchemaUUID()
{
  result = lazy cache variable for type metadata for SISchemaUUID;
  if (!lazy cache variable for type metadata for SISchemaUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SISchemaUUID);
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance DateTimeOptions@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

void *one-time initialization function for top13LocaleMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  top13LocaleMap._rawValue = result;
  return result;
}

void *one-time initialization function for top13RegionMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  top13RegionMap._rawValue = result;
  return result;
}

void *one-time initialization function for top13LanguageMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  top13LanguageMap._rawValue = result;
  return result;
}

void ForcedDisambiguation.trialFactor.getter(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      return;
  }
}

uint64_t ForcedDisambiguation.overrideRate.getter(char a1)
{
  v1 = 2;
  result = 0;
  switch(a1)
  {
    case 1:
      v1 = 1;
      return CamDoubleUserDefaults.value.getter(v1);
    case 2:
      v1 = 0;
      return CamDoubleUserDefaults.value.getter(v1);
    case 3:
      return result;
    default:
      return CamDoubleUserDefaults.value.getter(v1);
  }
}

unint64_t ForcedDisambiguation.cooldownKey.getter(char a1)
{
  v2 = 0xE800000000000000;
  v3 = 0x534549545F4C4C41;
  switch(a1)
  {
    case 1:
      v2 = 0x8000000266819D30;
      v3 = 0xD000000000000016;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x444E45534F545541;
      break;
    default:
      v2 = 0x8000000266819D00;
      v3 = 0xD000000000000021;
      break;
  }

  MEMORY[0x26D5DCD80](v3, v2);

  return 0xD000000000000020;
}

void ForcedDisambiguation.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      return;
  }
}

uint64_t ForcedDisambiguation.cooldownPeriodInDays.getter(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 84;
      break;
    case 2:
      v3 = MEMORY[0x26D5DCC90](0x6C616E7265746E49, 0xED0000646C697542);
      v4 = MGGetBoolAnswer();

      if (v4)
      {
        result = 0;
      }

      else
      {
        result = 30;
      }

      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall ForcedDisambiguation.decision()()
{
  v4 = v0;
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_13_0();
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.common);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v2 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_11();
    v36 = v8;
    *v2 = 136315138;
    v9 = 0xE800000000000000;
    v3 = v8;
    switch(v4)
    {
      case 1:
        OUTLINED_FUNCTION_5_3();
        v9 = v11 | 0x8000000000000000;
        break;
      case 2:
        break;
      case 3:
        OUTLINED_FUNCTION_1_3();
        break;
      default:
        OUTLINED_FUNCTION_6_5();
        v1 = (v10 + 11);
        break;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v9, &v36);
    v1 = "APP_SHORTCUT_SMART_DISAMBIGUATION";
    v13 = v12;

    *(v2 + 4) = v13;
    _os_log_impl(&dword_266790000, v6, v7, "[ForcedDisambiguation] Sampling force disambiguation decision for %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_2_4();

    OUTLINED_FUNCTION_13_0();
  }

  else
  {
  }

  if (ForcedDisambiguation.inCooldown()(v4))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_10(v15))
    {
      v16 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2(4.8151e-34);
      switch(v17)
      {
        case 1:
          OUTLINED_FUNCTION_5_3();
          v3 = (v27 | 0x8000000000000000);
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_1_3();
          break;
        default:
          OUTLINED_FUNCTION_4_2();
          v1 = (v18 + 11);
          break;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v38);

      *(v16 + 4) = v29;
      *(v16 + 12) = 2080;
      v36 = ForcedDisambiguation.cooldownPeriodInDays.getter(v4);
      v37 = v30 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, _sSiSgMR);
      v31 = String.init<A>(describing:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v38);

      *(v16 + 14) = v33;
      _os_log_impl(&dword_266790000, v14, v15, "[ForcedDisambiguation] %s currently in cooldown (period is %s days).", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
    }
  }

  else
  {
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
        _stringCompareWithSmolCheck(_:_:expecting:)();
        break;
      case 3:
        break;
      default:
        JUMPOUT(0);
    }

    v19 = ForcedDisambiguation.getRate()();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 1.0);
    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_10(v23))
    {
      v24 = swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8_2(4.8151e-34);
      switch(v25)
      {
        case 1:
          OUTLINED_FUNCTION_5_3();
          v3 = (v28 | 0x8000000000000000);
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_1_3();
          break;
        default:
          OUTLINED_FUNCTION_4_2();
          v1 = (v26 + 11);
          break;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v36);

      *(v24 + 4) = v34;
      *(v24 + 12) = 1024;
      *(v24 + 14) = v21 <= v19;
      _os_log_impl(&dword_266790000, v22, v23, "[ForcedDisambiguation] %s decision = %{BOOL}d", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v2);
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
    }

    if (v21 <= v19)
    {
      ForcedDisambiguation.startCooldown()(v4);
      return 1;
    }
  }

  return 0;
}

BOOL ForcedDisambiguation.inCooldown()(char a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v44 - v8;
  v10 = ForcedDisambiguation.cooldownPeriodInDays.getter(a1);
  if (v11)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.common);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_28;
    }

    v15 = 0x534549545F4C4C41;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44[0] = v17;
    *v16 = 136315138;
    v18 = 0xE800000000000000;
    v19 = v17;
    switch(a1)
    {
      case 1:
        v15 = 0xD000000000000016;
        v18 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v15 = 0x444E45534F545541;
        break;
      default:
        v18 = 0x8000000266819D00;
        v15 = 0xD000000000000021;
        break;
    }

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v18, v44);

    *(v16 + 4) = v38;
    v39 = "[ForcedDisambiguation] %s does not use a cooldown.";
LABEL_27:
    _os_log_impl(&dword_266790000, v13, v14, v39, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D5DDCD0](v19, -1, -1);
    MEMORY[0x26D5DDCD0](v16, -1, -1);
LABEL_28:

    return 0;
  }

  v20 = v10;
  v21 = ForcedDisambiguation.cooldownKey.getter(a1);
  static CamUserHistoryDefaultsManager.getValue(key:)(v21, v22, v44);

  if (!v45)
  {
    outlined destroy of Any?(v44);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.common);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_28;
    }

    v35 = 0x534549545F4C4C41;
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44[0] = v36;
    *v16 = 136315138;
    v37 = 0xE800000000000000;
    v19 = v36;
    switch(a1)
    {
      case 1:
        v35 = 0xD000000000000016;
        v37 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v35 = 0x444E45534F545541;
        break;
      default:
        v37 = 0x8000000266819D00;
        v35 = 0xD000000000000021;
        break;
    }

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v44);

    *(v16 + 4) = v40;
    v39 = "[ForcedDisambiguation] %s could not retrieve cooldown timestamp: assume no previous forced disambiguation.";
    goto LABEL_27;
  }

  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v3 + 8);
  v25(v7, v2);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.common);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v43 = v25;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44[0] = v30;
    *v29 = 136315394;
    v31 = 0xE800000000000000;
    v32 = v30;
    v33 = 0x534549545F4C4C41;
    switch(a1)
    {
      case 1:
        v33 = 0xD000000000000016;
        v31 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v33 = 0x444E45534F545541;
        break;
      default:
        v31 = 0x8000000266819D00;
        v33 = 0xD000000000000021;
        break;
    }

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v31, v44);

    *(v29 + 4) = v42;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v24;
    _os_log_impl(&dword_266790000, v27, v28, "[ForcedDisambiguation] %s time since last disambiguation %f.", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D5DDCD0](v32, -1, -1);
    MEMORY[0x26D5DDCD0](v29, -1, -1);

    v43(v9, v2);
  }

  else
  {

    v25(v9, v2);
  }

  return v24 < (86400 * v20);
}

Swift::Double __swiftcall ForcedDisambiguation.getRate()()
{
  v4 = v0;
  v5 = ForcedDisambiguation.overrideRate.getter(v0);
  if ((v6 & 1) == 0)
  {
    v20 = *&v5;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.common);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_10(v23))
    {
      goto LABEL_30;
    }

    v24 = OUTLINED_FUNCTION_7_1();
    v33 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_2(4.8151e-34);
    switch(v25)
    {
      case 1:
        v2 = 0xD000000000000016;
        v3 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        OUTLINED_FUNCTION_15_0();
        break;
      default:
        OUTLINED_FUNCTION_6_5();
        v2 = v26 + 11;
        break;
    }

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v33);

    OUTLINED_FUNCTION_14_1();
    v30 = "[ForcedDisambiguation] %s override rate is set = %f.";
    goto LABEL_29;
  }

  ForcedDisambiguation.trialFactor.getter(v4);
  if (v7)
  {
    v8 = static TrialProvider.fetchDoubleFactorFromTrial(_:)();
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      v20 = *&v8;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.common);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_10(v23))
      {
        goto LABEL_30;
      }

      v24 = OUTLINED_FUNCTION_7_1();
      v33 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12_2(4.8151e-34);
      switch(v28)
      {
        case 1:
          v2 = 0xD000000000000016;
          v3 = 0x8000000266819D30;
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_15_0();
          break;
        default:
          OUTLINED_FUNCTION_6_5();
          v2 = v29 + 11;
          break;
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v33);

      OUTLINED_FUNCTION_14_1();
      v30 = "[ForcedDisambiguation] %s fetched rate from Trial = %f.";
LABEL_29:
      _os_log_impl(&dword_266790000, v22, v23, v30, v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v1);
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
LABEL_30:

      return v20;
    }
  }

  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.common);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10(v13))
  {
    v14 = 0x534549545F4C4C41;
    v15 = swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_11();
    v33 = v16;
    *v15 = 136315394;
    v17 = 0xE800000000000000;
    v18 = v16;
    switch(v4)
    {
      case 1:
        v14 = 0xD000000000000016;
        v17 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v14 = 0x444E45534F545541;
        break;
      default:
        OUTLINED_FUNCTION_4_2();
        v14 = v19 + 11;
        break;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v33);

    *(v15 + 4) = v31;
    *(v15 + 12) = 2048;
    *(v15 + 14) = dbl_266814890[v4];
    _os_log_impl(&dword_266790000, v12, v13, "[ForcedDisambiguation] Could not fetch %s rate from Trial, using default=%f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  return dbl_266814890[v4];
}

uint64_t ForcedDisambiguation.startCooldown()(char a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ForcedDisambiguation.cooldownKey.getter(a1);
  v9 = v8;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v13[3] = MEMORY[0x277D839F8];
  v13[0] = v11;
  static CamUserHistoryDefaultsManager.setValue(key:value:)(v7, v9, v13);

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

SiriCam::ForcedDisambiguation_optional __swiftcall ForcedDisambiguation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ForcedDisambiguation.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

SiriCam::ForcedDisambiguation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ForcedDisambiguation@<W0>(Swift::String *a1@<X0>, SiriCam::ForcedDisambiguation_optional *a2@<X8>)
{
  result.value = ForcedDisambiguation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ForcedDisambiguation(void *a1@<X8>)
{
  ForcedDisambiguation.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void specialized static BinaryFloatingPoint<>.random<A>(in:using:)(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  }
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D5DDCF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D5DDCF0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ForcedDisambiguation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ForcedDisambiguation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForcedDisambiguation and conformance ForcedDisambiguation()
{
  result = lazy protocol witness table cache variable for type ForcedDisambiguation and conformance ForcedDisambiguation;
  if (!lazy protocol witness table cache variable for type ForcedDisambiguation and conformance ForcedDisambiguation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedDisambiguation and conformance ForcedDisambiguation);
  }

  return result;
}

void OUTLINED_FUNCTION_14_1()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v1;
}

void type metadata completion function for AutoSendInputFeatureExtractor()
{
  type metadata accessor for LatticePathFeatureExtractor();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WordEmbeddingFeatureExtractor?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for WordEmbeddingFeatureExtractor?()
{
  if (!lazy cache variable for type metadata for WordEmbeddingFeatureExtractor?)
  {
    type metadata accessor for WordEmbeddingFeatureExtractor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WordEmbeddingFeatureExtractor?);
    }
  }
}

uint64_t specialized FeatureExtracting.extract(from:)(uint64_t a1)
{
  return specialized FeatureExtracting.extract(from:)(a1);
}

{
  return specialized FeatureExtracting.extract(from:)(a1, ConversationHistoryFeatureExtractor.extractImpl(from:), &outlined read-only object #0 of static ConversationHistoryFeatureExtractor.extractedFeatures.getter);
}

{
  return specialized FeatureExtracting.extract(from:)(a1, AffinityRankFeatureExtractor.extractImpl(from:), &outlined read-only object #0 of static AffinityRankFeatureExtractor.extractedFeatures.getter);
}

uint64_t specialized FeatureExtracting.extract(from:)(uint64_t a1, uint64_t a2)
{
  v3 = DeviceContextFeatureExtractor.extractImpl(from:)(a1, a2);
  if (!v2)
  {
    v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(&outlined read-only object #0 of one-time initialization function for extractedFeatures);

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSi_GTt0g5Tm(v5);
    v7 = specialized Set.subtracting(_:)(v6, v4);

    if (*(v7 + 16))
    {

      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x26D5DCD80](0x7365727574616546, 0xE900000000000020);
      v8 = Set.description.getter();
      v10 = v9;

      MEMORY[0x26D5DCD80](v8, v10);

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

    else
    {
    }
  }

  return v3;
}

uint64_t specialized FeatureExtracting.extract(from:)()
{
  OUTLINED_FUNCTION_17_0();
  return specialized FeatureExtracting.extract(from:)();
}

{
  OUTLINED_FUNCTION_16_0();
  return specialized FeatureExtracting.extract(from:)();
}

uint64_t specialized FeatureExtracting.extract(from:)(void *a1)
{
  v2 = WordEmbeddingFeatureExtractor.extractImpl(from:)(a1);
  if (!v1)
  {
    v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(&outlined read-only object #0 of one-time initialization function for extractedFeatures);

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSi_GTt0g5Tm(v4);
    v6 = specialized Set.subtracting(_:)(v5, v3);

    if (*(v6 + 16))
    {

      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x26D5DCD80](0x7365727574616546, 0xE900000000000020);
      v7 = Set.description.getter();
      v9 = v8;

      MEMORY[0x26D5DCD80](v7, v9);

      MEMORY[0x26D5DCD80](0xD00000000000002ALL, 0x800000026681A770);
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.common);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v17[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v17);
        _os_log_impl(&dword_266790000, v11, v12, "%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x26D5DDCD0](v14, -1, -1);
        MEMORY[0x26D5DDCD0](v13, -1, -1);
      }

      lazy protocol witness table accessor for type CamError and conformance CamError();
      swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 0xE000000000000000;
      *(v15 + 16) = 1;
      swift_willThrow();
    }

    else
    {
    }
  }

  return v2;
}

uint64_t specialized Dictionary.update(other:allowDuplicateKeys:)(uint64_t a1, char a2)
{
  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, a2, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
}

{
  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, a2, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
}

uint64_t specialized Dictionary.update(other:allowDuplicateKeys:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_29();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v52 = v14;

  v15 = 0;
  v47 = v13;
  for (i = v4; v11; *i = v54)
  {
LABEL_6:
    v17 = __clz(__rbit64(v11)) | (v15 << 6);
    v18 = (*(v52 + 48) + 16 * v17);
    v19 = v18[1];
    v55 = *v18;
    v20 = *(*(v52 + 56) + 8 * v17);
    if (a2)
    {

      v21 = v20;
    }

    else
    {
      v22 = *(*v5 + 16);

      v23 = v20;
      if (v22)
      {
        v24 = v23;
        specialized __RawDictionaryStorage.find<A>(_:)(v55, v19);
        if (v25)
        {
          _StringGuts.grow(_:)(41);
          MEMORY[0x26D5DCD80](0xD000000000000027, 0x800000026681A7A0);
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type FeatureDictionaryError and conformance FeatureDictionaryError();
          OUTLINED_FUNCTION_6_2();
          *v46 = 0;
          v46[1] = 0xE000000000000000;
          swift_willThrow();
        }
      }
    }

    v26 = v7;
    v53 = v20;
    v27 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v5;
    v54 = *v5;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v19);
    v32 = *(v29 + 16);
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_23;
    }

    v35 = v30;
    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
    {
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v19);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_25;
      }

      v35 = v37;
    }

    v7 = v26;
    if (v36)
    {
      v39 = v54[7];
      v40 = *(v39 + 8 * v35);
      *(v39 + 8 * v35) = v53;
    }

    else
    {
      v54[(v35 >> 6) + 8] |= 1 << v35;
      v41 = (v54[6] + 16 * v35);
      *v41 = v55;
      v41[1] = v19;
      *(v54[7] + 8 * v35) = v53;
      v42 = v54[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_24;
      }

      v54[2] = v44;

      v40 = 0;
    }

    v11 &= v11 - 1;

    v13 = v47;
    v5 = i;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v11 = *(v7 + 8 * v16);
    ++v15;
    if (v11)
    {
      v15 = v16;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *static AutoSendInputFeatureExtractor.extractedFeatures.getter()
{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  v0 = static AutoSendInputFeatureExtractor.wordEmbeddingExtractedFeatures.getter();
  specialized Array.append<A>(contentsOf:)(v0);
  return &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x26D5DCF90](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v12 = MEMORY[0x26D5DCF90](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSi_GTt0g5Tm(uint64_t a1)
{
  v2 = 0;
  v15[2] = MEMORY[0x26D5DCF90](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_29();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      specialized Set._Variant.insert(_:)(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t specialized Set.subtracting(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(a1);
    return a2;
  }

  else
  {

    return specialized _NativeSet.subtracting<A>(_:)(a1, a2);
  }
}

void *static AutoSendInputFeatureExtractor.wordEmbeddingExtractedFeatures.getter()
{
  v2[3] = &type metadata for CamFeatureFlag;
  v2[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
  LOBYTE(v2[0]) = 1;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v2);
  if ((v0 & 1) != 0 && static WordEmbeddingFeatureExtractor.currentLocaleIsSupported()())
  {
    return &outlined read-only object #0 of one-time initialization function for extractedFeatures;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void AutoSendInputFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for WordEmbeddingFeatureExtractor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.autoSend);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266790000, v12, v13, "Extracting AutoSend features", v14, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  v15 = *(a1 + *(type metadata accessor for AutoSendInput() + 20));
  v16 = [v15 recognition];
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v15 audioAnalytics];
  if (!v18)
  {

LABEL_10:
    lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError();
    OUTLINED_FUNCTION_6_2();
    *v23 = 0xD000000000000038;
    *(v23 + 8) = 0x800000026681A730;
    *(v23 + 16) = 2;
    swift_willThrow();
    return;
  }

  v19 = v18;
  v56 = v17;
  v20 = type metadata accessor for MLMultiArray();
  v58[4] = Dictionary.init(dictionaryLiteral:)();
  v21 = specialized FeatureExtracting.extract(from:)(*v57);
  if (v1)
  {

    return;
  }

  v55 = v20;
  v24 = v21;
  OUTLINED_FUNCTION_30(v21, v22, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v54 = v24;
  v25 = specialized FeatureExtracting.extract(from:)(a1, *(v57 + 8));
  v26 = v56;
  OUTLINED_FUNCTION_30(v25, v27, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v53 = v19;
  v28 = [v26 aceRecognition];
  if (!v28)
  {
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  OUTLINED_FUNCTION_17_0();
  v30 = (specialized FeatureExtracting.extract(from:))();

  OUTLINED_FUNCTION_30(v30, v31, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v52 = v30;
  OUTLINED_FUNCTION_16_0();
  v32 = specialized FeatureExtracting.extract(from:)(v53);
  OUTLINED_FUNCTION_30(v32, v33, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v34 = *(v57 + 16);
  v35 = [v26 aceRecognition];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v35;
  v50 = specialized FeatureExtracting.extract(from:)(v35);

  OUTLINED_FUNCTION_30(v50, v36, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v37 = type metadata accessor for AutoSendInputFeatureExtractor();
  outlined init with copy of WordEmbeddingFeatureExtractor?(v57 + *(v37 + 36), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    outlined init with take of WordEmbeddingFeatureExtractor(v6, v10);
    v46 = [v56 aceRecognition];
    if (v46)
    {
      v47 = v46;

      v48 = specialized FeatureExtracting.extract(from:)(v47);

      OUTLINED_FUNCTION_30(v48, v49, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
      outlined destroy of WordEmbeddingFeatureExtractor(v10);

      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

  outlined destroy of WordEmbeddingFeatureExtractor?(v6);
LABEL_15:
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_23();
    v41 = swift_slowAlloc();
    v58[0] = v41;
    *v40 = 136315138;
    swift_beginAccess();

    v42 = Dictionary.Keys.description.getter();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v58);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_266790000, v38, v39, "Extracted AutoSend features: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  swift_beginAccess();
}

uint64_t outlined init with copy of WordEmbeddingFeatureExtractor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WordEmbeddingFeatureExtractor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of WordEmbeddingFeatureExtractor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WordEmbeddingFeatureExtractor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WordEmbeddingFeatureExtractor(uint64_t a1)
{
  v2 = type metadata accessor for WordEmbeddingFeatureExtractor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL specialized Set._Variant.insert(_:)(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x28223BE20](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = specialized _NativeSet.extractSubset(using:count:)(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x26D5DDCD0](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    outlined consume of [String : MLFeatureValue].Iterator._Variant();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v19;
  return v16;
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
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, _ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return specialized _NativeSet.extractSubset(using:count:)(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
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
    v5 = xmmword_2668148B0;
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, _ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, _ss11_SetStorageCy10Foundation4UUIDVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeatureDictionaryError and conformance FeatureDictionaryError()
{
  result = lazy protocol witness table cache variable for type FeatureDictionaryError and conformance FeatureDictionaryError;
  if (!lazy protocol witness table cache variable for type FeatureDictionaryError and conformance FeatureDictionaryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureDictionaryError and conformance FeatureDictionaryError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag()
{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_25()
{
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{

  return specialized Set.subtracting(_:)(a1, v1);
}

uint64_t OUTLINED_FUNCTION_27()
{
}

uint64_t OUTLINED_FUNCTION_28_0()
{
}

uint64_t CamDoubleUserDefaults.value.getter(char a1)
{
  if (one-time initialization token for forcedValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CamDoubleUserDefaults.forcedValues;
  if (!*(static CamDoubleUserDefaults.forcedValues + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) == 0))
  {
    v6 = 0xD000000000000026;
    swift_endAccess();
    v7 = CamDoubleUserDefaults.values.getter();
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0xD00000000000002CLL;
      }

      else
      {
        v6 = 0xD000000000000033;
      }

      if (a1 == 1)
      {
        v8 = "tDisambiguationRate";
      }

      else
      {
        v8 = "ary with duplicate key ";
      }
    }

    else
    {
      v8 = "uateForRankingEvaluationRate";
    }

    specialized Dictionary.subscript.getter(v6, v8 | 0x8000000000000000, v7, &v12);

    if (v13)
    {
      if (OUTLINED_FUNCTION_2_6())
      {
        return _sSdySdSgxcSyRzlufCSS_Tt0g5(v10, v11);
      }
    }

    else
    {
      outlined destroy of Any?(&v12);
    }

    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_endAccess();
  return v5;
}

uint64_t static CamUserHistoryDefaultsManager.getValue(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (one-time initialization token for forcedValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static CamUserHistoryDefaultsManager.forcedValues;
  if (*(static CamUserHistoryDefaultsManager.forcedValues + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(v6 + 56) + 32 * v7, v15);
    outlined init with take of Any(v15, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    OUTLINED_FUNCTION_1_5();
    v12 = v11;
    v13 = [v10 dictionaryForKey_];

    if (v13)
    {
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v14 = Dictionary.init(dictionaryLiteral:)();
    }

    specialized Dictionary.subscript.getter(a1, a2, v14, a3);
  }
}

void static CamUserHistoryDefaultsManager.setValue(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v7 = MEMORY[0x26D5DCC90](0xD000000000000016, 0x800000026681A870);
  v8 = [v6 dictionaryForKey_];

  if (v8)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  outlined init with copy of Any(a3, v12);

  swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, a2);

  v9 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = MEMORY[0x26D5DCC90](0xD000000000000016, 0x800000026681A870);
  [v9 setObject:isa forKey:v11];
}

unint64_t PersistencyKeys.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000016;
}

void one-time initialization function for forcedValues()
{
  static CamDoubleUserDefaults.forcedValues = MEMORY[0x277D84F98];
}

{
  static CamStringUserDefaults.forcedValues = MEMORY[0x277D84F98];
}

{
  static CamUserHistoryDefaultsManager.forcedValues = MEMORY[0x277D84F98];
}

uint64_t CamDoubleUserDefaults.values.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  v3 = [v0 dictionaryForKey_];

  if (v3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }
}

unint64_t CamDoubleUserDefaults.rawValue.getter(char a1)
{
  result = 0xD000000000000026;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000002CLL;
    }

    else
    {
      return 0xD000000000000033;
    }
  }

  return result;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  specialized String.withCString<A>(_:)(a1, a2);

  return 0;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamDoubleUserDefaults@<X0>(unint64_t *a1@<X8>)
{
  result = CamDoubleUserDefaults.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CamStringUserDefaults.values.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v1 = MEMORY[0x26D5DCC90](0xD00000000000001ELL, 0x800000026681A8B0);
  v2 = [v0 dictionaryForKey_];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t CamStringUserDefaults.value.getter()
{
  if (one-time initialization token for forcedValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static CamStringUserDefaults.forcedValues;
  if (!*(static CamStringUserDefaults.forcedValues + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) == 0))
  {
    swift_endAccess();
    v6 = CamStringUserDefaults.values.getter();
    v7 = OUTLINED_FUNCTION_0_6();
    specialized Dictionary.subscript.getter(v7, v8, v6, &v11);

    if (v12)
    {
      if (OUTLINED_FUNCTION_2_6())
      {
        return v10;
      }
    }

    else
    {
      outlined destroy of Any?(&v11);
    }

    return 0;
  }

  v3 = (*(v0 + 56) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];
  swift_endAccess();

  return v4;
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void DawnHeuristicScorer.scoreHypothesis(features:loggingId:)(Swift::OpaquePointer a1)
{
  v2 = specialized Dictionary.subscript.getter(0xD000000000000015, 0x8000000266819430, a1._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 int64Value];

    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      DawnHeuristicScorer.platformBoost(features:)(a1);
    }
  }

  else
  {
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v5 = 0xD00000000000002FLL;
    *(v5 + 8) = 0x800000026681A930;
    *(v5 + 16) = 1;
    swift_willThrow();
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DawnHeuristicScorer.platformBoost(features:)(Swift::OpaquePointer features)
{
  v2 = specialized Dictionary.subscript.getter(0x665F73656D6D6F70, 0xEF6B6361626C6C61, features._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 int64Value];

    if (v4)
    {
      return 0.1;
    }
  }

  v6 = specialized Dictionary.subscript.getter(0x535F5050415F5349, 0xEF54554354524F48, features._rawValue);
  if (v6 && (v7 = v6, v8 = [v6 int64Value], v7, v8))
  {
    v9 = static TrialProvider.fetchBoolFactorFromTrial(_:)();
    if ((v9 == 2 || (v9 & 1) == 0 || (CamFeatureFlag.isEnabled.getter(5u) & 1) == 0) && (v10 = specialized Dictionary.subscript.getter(0xD000000000000013, 0x8000000266819C80, features._rawValue)) != 0 && (v11 = v10, v12 = [v10 int64Value], v11, v12))
    {
      return 0.06;
    }

    else
    {
      return 0.015;
    }
  }

  else
  {
    v13 = specialized Dictionary.subscript.getter(0x705F726573726170, 0xEF797469726F6972, features._rawValue);
    if (v13)
    {
      v14 = v13;
      v15 = [v13 int64Value];

      return v15 * 0.01;
    }

    else
    {
      return 0.0;
    }
  }
}

uint64_t one-time initialization function for kLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.ranker);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.ranker);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static UserParseFeatureExtractor.extractOnScreenAppBundleIds(from:)(uint64_t a1)
{
  v157 = a1;
  v1 = type metadata accessor for RRDataSourceMetadataValue();
  v2 = OUTLINED_FUNCTION_22(v1);
  v172 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v170 = v6 - v7;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_3();
  v169 = v9;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_3();
  v180 = v11;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v14 = &v138 - v13;
  v15 = type metadata accessor for RRMetadata();
  v16 = OUTLINED_FUNCTION_22(v15);
  v143 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v179 = &v138 - v24;
  v25 = type metadata accessor for RREntity();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v145 = (v31 - v32);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_3();
  v149 = v34;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v35);
  v155 = &v138 - v36;
  v165 = type metadata accessor for RRCandidate();
  v37 = OUTLINED_FUNCTION_22(v165);
  v158 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v144 = v41 - v42;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_3();
  v140 = v44;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v45);
  v47 = &v138 - v46;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v161 = v25;
  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, kLogger);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_266790000, v49, v50, "Expanding salient entity apps.", v51, 2u);
    MEMORY[0x26D5DDCD0](v51, -1, -1);
  }

  v52 = 0;
  v53 = 0;
  v156 = *(v157 + 16);
  v160 = v158 + 16;
  v164 = (v28 + 8);
  v159 = v158 + 8;
  v177 = (v143 + 32);
  v178 = v143 + 16;
  v176 = v143 + 88;
  v175 = *MEMORY[0x277D5FDF0];
  v167 = v143 + 96;
  v168 = v143 + 8;
  v174 = (v172 + 32);
  v148 = *MEMORY[0x277D5FE90];
  v146 = (v172 + 8);
  v142 = *MEMORY[0x277D5FE80];
  v139 = (v158 + 32);
  v141 = MEMORY[0x277D84F90];
  v171 = v1;
  v150 = v14;
  v151 = v47;
  v147 = (v172 + 104);
  v166 = v15;
  while (v52 != v156)
  {
    v162 = v53;
    v154 = (*(v158 + 80) + 32) & ~*(v158 + 80);
    v153 = *(v158 + 72);
    (*(v158 + 16))(v47, v157 + v154 + v153 * v52, v165);
    v163 = v52 + 1;
    v54 = v155;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v55 = *v164;
    v56 = v161;
    (*v164)(v54, v161);
    v57 = UsoTask.verbString.getter();
    v59 = v58;

    if (v57 == 0x415F6E6F6D6D6F63 && v59 == 0xEA00000000007070)
    {

LABEL_14:
      v63 = v149;
      RRCandidate.entity.getter();
      v64 = RREntity.metadata.getter();
      v55(v63, v56);
      v65 = *(v64 + 16);
      if (v65)
      {
        OUTLINED_FUNCTION_8();
        v152 = v64;
        v67 = v64 + v66;
        v69 = *(v68 + 72);
        v70 = *(v68 + 16);
        v71 = MEMORY[0x277D84F90];
        v173 = v70;
        do
        {
          v72 = v179;
          v70(v179, v67, v15);
          (*v177)(v22, v72, v15);
          v73 = OUTLINED_FUNCTION_12_4();
          v75 = v74(v73);
          if (v75 == v175)
          {
            v76 = OUTLINED_FUNCTION_12_4();
            v77(v76);
            v78 = *v174;
            v79 = v71;
            v80 = v170;
            v81 = v22;
            (*v174)(v170, v22, v1);
            v82 = v1;
            v83 = v169;
            v78(v169, v80, v82);
            v78(v180, v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 16) + 1, 1, v79);
              v79 = v93;
            }

            v85 = *(v79 + 16);
            v84 = *(v79 + 24);
            v86 = v79;
            v22 = v81;
            v70 = v173;
            if (v85 >= v84 >> 1)
            {
              v94 = OUTLINED_FUNCTION_17_1(v84);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v94, v85 + 1, 1, v95);
              v86 = v96;
            }

            v15 = v166;
            *(v86 + 16) = v85 + 1;
            v71 = v86;
            OUTLINED_FUNCTION_8();
            v90 = v87 + v88 + *(v89 + 72) * v85;
            v1 = v171;
            v78(v90, v180, v171);
          }

          else
          {
            v91 = OUTLINED_FUNCTION_12_4();
            v92(v91);
          }

          v67 += v69;
          --v65;
        }

        while (v65);
      }

      else
      {

        v71 = MEMORY[0x277D84F90];
      }

      v97 = v150;
      v173 = *v147;
      v98 = (v173)(v150, v148, v1);
      MEMORY[0x28223BE20](v98);
      OUTLINED_FUNCTION_7_3();
      *(v99 - 16) = v97;
      v53 = v162;
      v101 = v71;
      v102 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v100, v71);
      v47 = v146;
      v103 = *v146;
      (*v146)(v97, v1);
      if (v102)
      {
        v104 = (v173)(v97, v142, v1);
        MEMORY[0x28223BE20](v104);
        OUTLINED_FUNCTION_7_3();
        *(v105 - 16) = v97;
        v107 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v106, v101);

        v103(v97, v1);
        if (v107)
        {
          OUTLINED_FUNCTION_9_4();
          v108 = OUTLINED_FUNCTION_18_2();
          v109(v108);
          v52 = v163;
        }

        else
        {
          v112 = *v139;
          (*v139)(v140, v151, v165);
          v113 = v141;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = v113;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v113 + 16) + 1, 1);
            v113 = v181;
          }

          v116 = *(v113 + 16);
          v115 = *(v113 + 24);
          if (v116 >= v115 >> 1)
          {
            v117 = OUTLINED_FUNCTION_17_1(v115);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v117, v116 + 1, 1);
            v113 = v181;
          }

          *(v113 + 16) = v116 + 1;
          v141 = v113;
          v112(v113 + v154 + v116 * v153, v140, v165);
          v47 = v151;
          v52 = v163;
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_4();
        v110 = OUTLINED_FUNCTION_18_2();
        v111(v110);

        v52 = v163;
      }
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v61)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_9_4();
      v62(v47, v165);
      v53 = v162;
      v52 = v163;
    }
  }

  v118 = v141;
  v119 = *(v141 + 16);
  if (v119)
  {
    v181 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119, 0);
    v120 = v181;
    OUTLINED_FUNCTION_8();
    v122 = v118 + v121;
    v124 = *(v123 + 72);
    v179 = *(v123 + 16);
    v180 = v124;
    v125 = v161;
    v126 = v144;
    v127 = v165;
    do
    {
      (v179)(v126, v122, v127);
      v128 = v145;
      RRCandidate.entity.getter();
      v129 = RREntity.id.getter();
      v131 = v130;
      (*v164)(v128, v125);
      OUTLINED_FUNCTION_9_4();
      v132(v126, v127);
      v181 = v120;
      v134 = *(v120 + 16);
      v133 = *(v120 + 24);
      if (v134 >= v133 >> 1)
      {
        v136 = OUTLINED_FUNCTION_17_1(v133);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v136, v134 + 1, 1);
        v120 = v181;
      }

      *(v120 + 16) = v134 + 1;
      v135 = v120 + 16 * v134;
      *(v135 + 32) = v129;
      *(v135 + 40) = v131;
      v122 += v180;
      --v119;
      v125 = v161;
    }

    while (v119);
  }

  else
  {

    v120 = MEMORY[0x277D84F90];
  }

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v120);
}

uint64_t UserParseFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = UserParseFeatureExtractor.extractProbaFromAction(from:)(a1);
  v9 = UserParseFeatureExtractor.extractRepetitionTypeFromAction(from:)(a1);
  v10 = type metadata accessor for ActionCandidate();
  v11 = *(a1 + *(v10 + 24));
  v12 = (a1 + *(v10 + 36));
  v13 = v12[1];
  if (v13)
  {
    v14 = specialized Set.contains(_:)(*v12, v13, a2);
  }

  else
  {
    v14 = 0;
  }

  v15 = UserParseFeatureExtractor.extractIsTopNLParse(from:maxNLProba:)(a1, a3, a4 & 1);
  v16 = UserParseFeatureExtractor.extractHighPriorityNLXParse(from:)(a1);
  v17 = UserParseFeatureExtractor.extractIsInterpretableAsUniversalCommand(from:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2668149D0;
  strcpy((inited + 32), "nl_parse_proba");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
  strcpy((inited + 56), "top_nl_parse");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v19 = OUTLINED_FUNCTION_11_2();
  *(inited + 72) = [v19 v20];
  *(inited + 80) = 0x6974697465706572;
  *(inited + 88) = 0xEF657079745F6E6FLL;
  v21 = OUTLINED_FUNCTION_11_2();
  v23 = [v21 v22];
  OUTLINED_FUNCTION_3_3();
  *(inited + 96) = v24;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = v25;
  v26 = OUTLINED_FUNCTION_11_2();
  v28 = [v26 v27];
  OUTLINED_FUNCTION_3_3();
  *(inited + 120) = v29;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v30;
  v31 = OUTLINED_FUNCTION_11_2();
  v33 = [v31 v32];
  OUTLINED_FUNCTION_3_3();
  *(inited + 144) = v34;
  *(inited + 152) = 0xD000000000000017;
  *(inited + 160) = v35;
  v36 = OUTLINED_FUNCTION_11_2();
  v38 = [v36 v37];
  OUTLINED_FUNCTION_3_3();
  *(inited + 168) = v39;
  *(inited + 176) = 0xD000000000000025;
  *(inited + 184) = v40;
  v41 = OUTLINED_FUNCTION_11_2();
  *(inited + 192) = [v41 v42];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

double UserParseFeatureExtractor.extractProbaFromAction(from:)(uint64_t a1)
{
  v3 = type metadata accessor for CamUSOParse(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = OUTLINED_FUNCTION_15_2();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v14 + 20), v13);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v13, v15);
    return 0.0;
  }

  else
  {
    outlined init with take of CamUSOParse(v13, v1);
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v16 = v17;
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v1, v18);
  }

  return v16;
}

BOOL UserParseFeatureExtractor.extractRepetitionTypeFromAction(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RepetitionResult();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_External_RepetitionResult.RepetitionType();
  v12 = OUTLINED_FUNCTION_22(v11);
  v45 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for CamUSOParse(0);
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  v28 = v27 - v26;
  v29 = type metadata accessor for CamParse(0);
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_0();
  v35 = v34 - v33;
  v36 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v36 + 20), v35);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v35, v37);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v35, v28);
    Siri_Nlu_External_UserParse.repetitionResult.getter();
    Siri_Nlu_External_RepetitionResult.repetitionType.getter();
    (*(v5 + 8))(v10, v2);
    v39 = v45;
    v40 = *(v45 + 104);
    v40(v18, *MEMORY[0x277D5DC78], v11);
    lazy protocol witness table accessor for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue(&lazy protocol witness table cache variable for type Siri_Nlu_External_RepetitionResult.RepetitionType and conformance Siri_Nlu_External_RepetitionResult.RepetitionType, MEMORY[0x277D5DC88]);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_20_1();
    v41 = *(v39 + 8);
    v41(v18, v11);
    if (v47 == v46)
    {
      v41(v21, v11);
      OUTLINED_FUNCTION_0_7();
      outlined destroy of CamParse(v28, v42);
      return 1;
    }

    else
    {
      v40(v18, *MEMORY[0x277D5DC80], v11);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_20_1();
      v41(v18, v11);
      v41(v21, v11);
      OUTLINED_FUNCTION_0_7();
      outlined destroy of CamParse(v28, v43);
      return v47 == v46;
    }
  }
}

uint64_t UserParseFeatureExtractor.extractIsTopNLParse(from:maxNLProba:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for CamUSOParse(0);
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = OUTLINED_FUNCTION_15_2();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v18 + 20), v17);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v17, v19);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v17, v3);
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v22 = v21;
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v3, v23);
    return (v22 == *&a2) & ~a3;
  }
}

uint64_t UserParseFeatureExtractor.extractHighPriorityNLXParse(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for CamUSOParse(0);
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = type metadata accessor for CamParse(0);
  v20 = OUTLINED_FUNCTION_0_2(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_0();
  v25 = v24 - v23;
  v26 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v26 + 20), v25);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v25, v27);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v25, v18);
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v18 + *(v12 + 20), v11);
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v18, v29);
    v30 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    v28 = 0;
    if (__swift_getEnumTagSinglePayload(v11, 1, v30) != 1)
    {
      outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v11, v8);
      v31 = *(v30 - 8);
      v32 = (*(v31 + 88))(v8, v30);
      if (v32 == *MEMORY[0x277D5DA80] || v32 == *MEMORY[0x277D5DA70] || v32 == *MEMORY[0x277D5DA60])
      {
        v28 = 1;
      }

      else
      {
        (*(v31 + 8))(v8, v30);
        v28 = 0;
      }
    }

    outlined destroy of Siri_Nlu_External_Parser.ParserIdentifier?(v11);
  }

  return v28;
}

uint64_t UserParseFeatureExtractor.extractIsInterpretableAsUniversalCommand(from:)(uint64_t a1)
{
  v3 = type metadata accessor for CamUSOParse(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = OUTLINED_FUNCTION_15_2();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v14 + 20), v13);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v13, v15);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v13, v1);
    v17 = Siri_Nlu_External_UserParse.interpretableAsUniversalCommand.getter();
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v1, v18);
    return v17 & 1;
  }
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

BOOL RRCandidate.isOnScreen.getter()
{
  v91 = type metadata accessor for RRDataSourceMetadataValue();
  v0 = OUTLINED_FUNCTION_22(v91);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4();
  v89 = v5 - v6;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_3();
  v88 = v8;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_3();
  v96 = v10;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  v82 = v81 - v12;
  v13 = type metadata accessor for RRMetadata();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v81 - v23;
  v25 = type metadata accessor for RREntity();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v33 = v32 - v31;
  RRCandidate.entity.getter();
  v34 = RREntity.metadata.getter();
  (*(v28 + 8))(v33, v25);
  v35 = *(v34 + 16);
  v90 = v2;
  if (v35)
  {
    v38 = *(v16 + 16);
    v37 = v16 + 16;
    v36 = v38;
    v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v81[1] = v34;
    v40 = v34 + v39;
    v41 = *(v37 + 56);
    v94 = (v37 + 16);
    v95 = v41;
    v93 = v37 + 72;
    v92 = *MEMORY[0x277D5FDF0];
    v83 = v37 + 80;
    v84 = v37 - 8;
    v42 = (v2 + 32);
    v43 = MEMORY[0x277D84F90];
    v44 = v91;
    v86 = v24;
    v87 = v37;
    v85 = v38;
    do
    {
      v36(v24, v40, v13);
      (*v94)(v21, v24, v13);
      v45 = OUTLINED_FUNCTION_13_2();
      v47 = v46(v45);
      if (v47 == v92)
      {
        v48 = OUTLINED_FUNCTION_13_2();
        v49(v48);
        v50 = *v42;
        v51 = v89;
        (*v42)(v89, v21, v44);
        v52 = v43;
        v53 = v88;
        v50(v88, v51, v44);
        v54 = v53;
        v43 = v52;
        v50(v96, v54, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 16) + 1, 1, v52);
          v43 = v62;
        }

        v56 = *(v43 + 16);
        v55 = *(v43 + 24);
        v24 = v86;
        if (v56 >= v55 >> 1)
        {
          v63 = OUTLINED_FUNCTION_17_1(v55);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v56 + 1, 1, v43);
          v43 = v64;
        }

        *(v43 + 16) = v56 + 1;
        OUTLINED_FUNCTION_8();
        v59 = v43 + v57 + *(v58 + 72) * v56;
        v44 = v91;
        v50(v59, v96, v91);
        v36 = v85;
      }

      else
      {
        v60 = OUTLINED_FUNCTION_13_2();
        v61(v60);
      }

      v40 += v95;
      --v35;
    }

    while (v35);

    v65 = v43;
  }

  else
  {

    v65 = MEMORY[0x277D84F90];
    v44 = v91;
  }

  v66 = v90;
  v67 = *(v90 + 104);
  v68 = v82;
  v69 = v67(v82, *MEMORY[0x277D5FE90], v44);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_3();
  *(v70 - 16) = v68;
  v72 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v71, v65);
  v73 = v91;
  v74 = *(v66 + 8);
  v74(v68, v91);
  if (v72)
  {
    v75 = v67(v68, *MEMORY[0x277D5FE80], v73);
    MEMORY[0x28223BE20](v75);
    OUTLINED_FUNCTION_7_3();
    *(v76 - 16) = v68;
    v78 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v77, v65);

    v74(v68, v73);
    return !v78;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)()
{
  type metadata accessor for RRDataSourceMetadataValue();
  lazy protocol witness table accessor for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue(&lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x277D5FE98]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t getEnumTagSinglePayload for UserParseFeatureExtractor(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for UserParseFeatureExtractor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of CamParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamParse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CamUSOParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamUSOParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CamParse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_15_2()
{

  return type metadata accessor for CamParse(0);
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  result = *(v0 - 344);
  v2 = *(v0 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

void HeuristicScorer.scoreHypothesis(features:loggingId:)(Swift::OpaquePointer a1)
{
  v2 = 0xD000000000000023;
  v3 = specialized Dictionary.subscript.getter(0x535F5050415F5349, 0xEF54554354524F48, a1._rawValue);
  if (!v3)
  {
    v9 = "xtracted IS_APP_FOREGROUNDED.";
    v2 = 0xD000000000000029;
LABEL_7:
    v10 = v9 | 0x8000000000000000;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    v11 = OUTLINED_FUNCTION_6_2();
    *v12 = v2;
    v12[1] = v10;
    OUTLINED_FUNCTION_2(v11, v12);
    return;
  }

  v4 = v3;
  v5 = [v3 int64Value];

  v6 = specialized Dictionary.subscript.getter(0x656D6D6F705F7369, 0xE900000000000073, a1._rawValue);
  if (!v6)
  {
    v9 = "xtracted IS_APP_SHORTCUT.";
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 int64Value];

  if (v5)
  {
    HeuristicScorer.scoreAppShortcut(features:)(a1);
  }

  else if (v8)
  {
    HeuristicScorer.scorePommes(features:)(a1);
  }

  else
  {
    HeuristicScorer.scoreNLX(features:)(a1);
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeuristicScorer.scoreAppShortcut(features:)(Swift::OpaquePointer features)
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ranker);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "AppShortcut feature flag enabled, running AppShortcut scoring logic", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  v6 = specialized Dictionary.subscript.getter(0xD000000000000013, 0x8000000266819C80, features._rawValue);
  if (!v6)
  {
    v16 = "xtracted POMMES_FALLBACK.";
    v17 = 0xD00000000000002DLL;
LABEL_14:
    v18 = v16 | 0x8000000000000000;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    v19 = OUTLINED_FUNCTION_6_2();
    *v20 = v17;
    v20[1] = v18;
    OUTLINED_FUNCTION_2(v19, v20);
    return result;
  }

  v7 = v6;
  v8 = [v6 int64Value];

  v9 = OUTLINED_FUNCTION_1_7(0xD000000000000018, "isRecentlyCorrected");
  if (!v9)
  {
    v16 = "xtracted PARSE_PROBA.";
    v17 = 0xD000000000000032;
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 int64Value];

  if (v8)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266790000, v12, v13, "Boosting auto shortcut score because app is on screen", v14, 2u);
      MEMORY[0x26D5DDCD0](v14, -1, -1);
    }

    if (v11)
    {
      return 0.57;
    }

    else
    {
      return 0.56;
    }
  }

  else if (v11)
  {
    return 0.53;
  }

  else
  {
    return 0.52;
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeuristicScorer.scorePommes(features:)(Swift::OpaquePointer features)
{
  v2 = specialized Dictionary.subscript.getter(0xD000000000000016, 0x80000002668194A0, features._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 int64Value];

    v5 = specialized Dictionary.subscript.getter(0x665F73656D6D6F70, 0xEF6B6361626C6C61, features._rawValue);
    if (v5)
    {
      v6 = v5;
      v7 = (v4 | [v5 int64Value]) == 0;

      return dbl_266814A70[v7];
    }

    v9 = "D_FLOW_HANDLER_ID.";
    v10 = 0xD000000000000029;
  }

  else
  {
    v9 = "_TtC7SiriCam15HeuristicScorer";
    v10 = 0xD000000000000030;
  }

  v11 = v9 | 0x8000000000000000;
  lazy protocol witness table accessor for type CaarError and conformance CaarError();
  v12 = OUTLINED_FUNCTION_6_2();
  *v13 = v10;
  v13[1] = v11;
  OUTLINED_FUNCTION_2(v12, v13);
  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeuristicScorer.scoreNLX(features:)(Swift::OpaquePointer features)
{
  v2 = 0xD000000000000032;
  v3 = OUTLINED_FUNCTION_1_7(0xD000000000000017, "plugin_affinity_score");
  if (!v3)
  {
    v12 = "_TtC7SiriCam15HeuristicScorer";
    v2 = 0xD000000000000030;
LABEL_12:
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    v20 = OUTLINED_FUNCTION_6_2();
    *v21 = v2;
    v21[1] = v12 | 0x8000000000000000;
    OUTLINED_FUNCTION_2(v20, v21);
    return result;
  }

  v4 = v3;
  v5 = [v3 int64Value];

  v6 = specialized Dictionary.subscript.getter(0x705F6C6E5F706F74, 0xEC00000065737261, features._rawValue);
  if (!v6)
  {
    v12 = "HIGH_CONFIDENCE.";
    v2 = 0xD000000000000026;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 int64Value];

  v9 = specialized Dictionary.subscript.getter(0x65737261705F6C6ELL, 0xEE0061626F72705FLL, features._rawValue);
  if (!v9)
  {
    v12 = "xtracted TOP_NL_PARSE.";
    v2 = 0xD000000000000025;
    goto LABEL_12;
  }

  v10 = v9;
  [v9 doubleValue];

  v11 = OUTLINED_FUNCTION_1_7(0xD000000000000018, "isRecentlyCorrected");
  v12 = "xtracted PARSE_PROBA.";
  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = v11;
  v14 = [v11 int64Value];

  v15 = OUTLINED_FUNCTION_1_7(0xD000000000000014, "repeated_flow_handler_id");
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  v17 = [v15 int64Value];

  if (!v8)
  {
    v18 = v17 == 2;
    v19 = &unk_266814A90;
LABEL_15:
    result = v19[v18];
    if (!v14)
    {
      return result;
    }

    return result + 0.01;
  }

  if (v5)
  {
    v18 = v17 == 2;
    v19 = &unk_266814A80;
    goto LABEL_15;
  }

  result = 0.52;
  if (v17 != 2)
  {
    result = 0.5;
  }

  if (v14)
  {
    return result + 0.01;
  }

  return result;
}

void static PommesFeatureExtractor.configuredScoreThreshold()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000015, 0x800000026681AB20);
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x26D5DCC90](0xD000000000000012, 0x800000026681AB40);
    [v2 doubleForKey_];
  }
}

uint64_t PommesFeatureExtractor.extractImpl(from:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CamParse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = closure #1 in PommesFeatureExtractor.extractImpl(from:)(a1, a2);
  v9 = closure #2 in PommesFeatureExtractor.extractImpl(from:)(a1);
  v10 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v10 + 20), v7);
  v11 = swift_getEnumCaseMultiPayload() == 1;
  outlined destroy of CamParse(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000002668194A0;
  v13 = objc_opt_self();
  *(inited + 48) = [v13 featureValueWithInt64_];
  *(inited + 56) = 0x665F73656D6D6F70;
  *(inited + 64) = 0xEF6B6361626C6C61;
  *(inited + 72) = [v13 featureValueWithInt64_];
  *(inited + 80) = 0x656D6D6F705F7369;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = [v13 featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

BOOL closure #1 in PommesFeatureExtractor.extractImpl(from:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CamParse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v8 + 20), v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v10 = EnumCaseMultiPayload;
    result = 0;
    if (v10 == 1)
    {
      v12 = *v7;
      dispatch thunk of PommesResponse.primaryQueryConfidence()();
      v14 = v13;

      return v14 >= a2;
    }
  }

  else
  {
    outlined destroy of CamParse(v7);
    return 0;
  }

  return result;
}

uint64_t closure #2 in PommesFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v2 = type metadata accessor for CamParse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ActionCandidate();
  outlined init with copy of CamParse(a1 + *(v6 + 20), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v8 = EnumCaseMultiPayload;
    result = 0;
    if (v8 == 1)
    {
      v10 = *v5;
      v11 = dispatch thunk of PommesResponse.isPersonalDomainFallback.getter();

      return v11 & 1;
    }
  }

  else
  {
    outlined destroy of CamParse(v5);
    return 0;
  }

  return result;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x26D5DCC90]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t outlined destroy of CamParse(uint64_t a1)
{
  v2 = type metadata accessor for CamParse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CamSingletonProvider.deinit()
{
  v1 = *(v0 + 24);
  outlined consume of CamHandler?(*(v0 + 16));
  return v0;
}

uint64_t CamSingletonProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  outlined consume of CamHandler?(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
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

uint64_t outlined consume of CamHandler?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CamLogOutput.init(prediction:score:threshold:)(uint64_t a1, double a2, double a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t CamLogOutput.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E9LogOutputC10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E9LogOutputC10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys();
  OUTLINED_FUNCTION_13_3();
  v10 = v3[2];
  OUTLINED_FUNCTION_5_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_8_4();
    return v14(v13);
  }

  else
  {
    v11 = v3[3];
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[4];
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[5];
    v16 = v3[6];

    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = OUTLINED_FUNCTION_8_4();
    v18(v17);
  }
}

uint64_t CamLogOutput.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974636964657270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726563726F666E65 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t CamLogOutput.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6974636964657270;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 0x6C6F687365726874;
      break;
    case 3:
      result = 0x726563726F666E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamLogOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamLogOutput.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CamLogOutput.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CamLogOutput.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamLogOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamLogOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CamLogOutput.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void type metadata completion function for CamModelMetadata()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for CamModelVersion?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Locale?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Locale?()
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamLogOutput(uint64_t a1)
{
  swift_getWitnessTable();

  return ReflectedStringConvertible.description.getter(a1);
}

uint64_t CamModelMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4C776F64616873 && a2 == 0xE900000000000067;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t CamModelMetadata.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x6F4C776F64616873;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CamModelMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();
  OUTLINED_FUNCTION_13_3();
  v10 = *v3;
  v11 = v3[1];
  OUTLINED_FUNCTION_5_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v19 = *(v3 + 1);
    v20 = *(v3 + 2);
    lazy protocol witness table accessor for type CamModelVersion and conformance CamModelVersion();
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 48);
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(type metadata accessor for CamModelMetadata() + 28);
    type metadata accessor for Locale();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(v14, 255, v15);
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v16 = OUTLINED_FUNCTION_8_4();
  return v17(v16);
}

void CamModelMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_1();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v55 = v28;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v30);
  v32 = &v53 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedDecodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  v34 = OUTLINED_FUNCTION_22(v33);
  v56 = v35;
  v57 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v38);
  v39 = type metadata accessor for CamModelMetadata();
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &v53 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v41 + 36);
  v45 = type metadata accessor for Locale();
  v58 = v44;
  __swift_storeEnumTagSinglePayload(&v43[v44], 1, 1, v45);
  v46 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    outlined destroy of Locale?(&v43[v58]);
  }

  else
  {
    v53 = v45;
    v54 = v32;
    LOBYTE(v59[0]) = 0;
    *v43 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v43 + 1) = v47;
    a13 = 1;
    lazy protocol witness table accessor for type CamModelVersion and conformance CamModelVersion();
    OUTLINED_FUNCTION_14_3(&type metadata for CamModelVersion, &a13);
    v48 = v59[1];
    *(v43 + 1) = v59[0];
    *(v43 + 2) = v48;
    LOBYTE(v59[0]) = 2;
    v43[48] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v59[0]) = 3;
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(v49, 255, v50);
    OUTLINED_FUNCTION_14_3(v53, v59);
    v51 = OUTLINED_FUNCTION_3_6();
    v52(v51);
    outlined assign with take of Locale?(v54, &v43[v58]);
    outlined init with copy of CamModelMetadata(v43, v55);
    __swift_destroy_boxed_opaque_existential_0(v27);
    outlined destroy of CamModelMetadata(v43);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamModelMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamModelMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CamModelVersion.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6863746170 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x61656C6572657270 && a2 == 0xEA00000000006573)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t CamModelVersion.CodingKeys.stringValue.getter(char a1)
{
  result = 0x726F6A616DLL;
  switch(a1)
  {
    case 1:
      result = 0x726F6E696DLL;
      break;
    case 2:
      result = 0x6863746170;
      break;
    case 3:
      result = 0x61656C6572657270;
      break;
    default:
      return result;
  }

  return result;
}

void CamModelVersion.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_16_1();
  a23 = v25;
  a24 = v26;
  v44[0] = v27;
  v44[1] = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v40);
  v42 = v44 - v41;
  v43 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a14 = 0;
  OUTLINED_FUNCTION_11_3(v32, &a14);
  if (!v24)
  {
    a13 = 1;
    OUTLINED_FUNCTION_11_3(HIDWORD(v32), &a13);
    a12 = 2;
    OUTLINED_FUNCTION_11_3(v30, &a12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v37 + 8))(v42, v35);
  OUTLINED_FUNCTION_15_3();
}

void CamModelVersion.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedDecodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_4();
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_4_4();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_4_4();
    KeyedDecodingContainer.decode(_:forKey:)();
    v13[1] = v12;
    OUTLINED_FUNCTION_4_4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

uint64_t static CamModelVersionError.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_4:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_6_7();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamModelVersion.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamModelVersion.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamModelVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamModelVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance CamModelVersion(uint64_t a1@<X8>)
{
  CamModelVersion.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t instantiation function for generic protocol witness table for CamLogOutput(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(&lazy protocol witness table cache variable for type CamLogOutput and conformance CamLogOutput, a2, type metadata accessor for CamLogOutput);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CamModelVersion and conformance CamModelVersion()
{
  result = lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion;
  if (!lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion;
  if (!lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_47:
            v16 = 0;
            v19 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 0;
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v22 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v21 = v17 + v18;
            v22 = v20 >= v21;
            v14 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v19 = 0;
        v16 = 0;
LABEL_129:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
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

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_129;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if ((v68 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v69 = v66 + v67;
          v22 = __CFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_128;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v22 = v51 >= v52;
          v44 = v51 - v52;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_129;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if ((v60 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v61 = v58 + v59;
        v22 = __CFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      v19 = v44;
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
  v0 = specialized Collection.subscript.getter();
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
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
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
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
    v5 = MEMORY[0x26D5DCDB0](15, a1 >> 16);
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

unint64_t lazy protocol witness table accessor for type CamModelVersionError and conformance CamModelVersionError()
{
  result = lazy protocol witness table cache variable for type CamModelVersionError and conformance CamModelVersionError;
  if (!lazy protocol witness table cache variable for type CamModelVersionError and conformance CamModelVersionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersionError and conformance CamModelVersionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CamLogOutput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD9B8](a1, a2, v2, a1);
}

uint64_t CamRequest.init(requestId:camId:rcId:maybeSpeechPackage:rankedActions:camEnabledFeatures:previousCamAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, _BYTE *a9@<X8>)
{
  v46 = a6;
  v47 = a7;
  v44 = a4;
  v45 = a5;
  v42 = a1;
  v43 = a3;
  v41 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39[-v15];
  v17 = type metadata accessor for UUID();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v39[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v39[-v26];
  v40 = *a8;
  v28 = *(v20 + 16);
  v28(&v39[-v26], a1, v17);
  v28(v25, a2, v17);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v28(a9, v27, v17);
  v29 = type metadata accessor for CamRequest(0);
  v28(&a9[v29[5]], v25, v17);
  v30 = &a9[v29[6]];
  v31 = v44;
  *v30 = v43;
  v30[1] = v31;
  outlined init with copy of UUID?(v16, &a9[v29[7]]);
  v32 = v45;
  v33 = v46;
  *&a9[v29[8]] = v45;
  *&a9[v29[10]] = v33;
  a9[v29[12]] = v40;
  *&a9[v29[13]] = v47;
  v34 = &a9[v29[11]];
  v35 = v32;
  Locale.init(identifier:)();
  v36 = type metadata accessor for CamRequestContext();
  v34[*(v36 + 20)] = 5;
  v34[*(v36 + 24)] = 0;

  v37 = *(v20 + 8);
  v37(v41, v17);
  v37(v42, v17);
  outlined destroy of UUID?(v16);
  v37(v25, v17);
  result = (v37)(v27, v17);
  *&a9[v29[9]] = MEMORY[0x277D84F90];
  return result;
}

uint64_t CamRequest.init(requestId:camId:rcId:trpId:maybeSpeechPackage:rankedActions:camEnabledFeatures:previousCamAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v29 = *a10;
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v16);
  v18 = v17;
  v20 = *(v19 + 16);
  v20(a9, a1, v16);
  v21 = type metadata accessor for CamRequest(0);
  v20(a9 + v21[5], a2, v16);
  v22 = (a9 + v21[6]);
  *v22 = a3;
  v22[1] = a4;
  outlined init with copy of UUID?(a5, a9 + v21[7]);
  *(a9 + v21[8]) = a6;
  *(a9 + v21[10]) = a7;
  *(a9 + v21[12]) = v29;
  *(a9 + v21[13]) = a8;
  v23 = a9 + v21[11];
  v24 = a6;
  Locale.init(identifier:)();
  v25 = type metadata accessor for CamRequestContext();
  *(v23 + *(v25 + 20)) = 5;
  *(v23 + *(v25 + 24)) = 0;

  outlined destroy of UUID?(a5);
  v26 = *(v18 + 8);
  v26(a2, v16);
  result = (v26)(a1, v16);
  *(a9 + v21[9]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriCam::CamAction_optional __swiftcall CamAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type CamAction and conformance CamAction()
{
  result = lazy protocol witness table cache variable for type CamAction and conformance CamAction;
  if (!lazy protocol witness table cache variable for type CamAction and conformance CamAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamAction and conformance CamAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamAction and conformance CamAction;
  if (!lazy protocol witness table cache variable for type CamAction and conformance CamAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamAction and conformance CamAction);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamAction@<X0>(uint64_t *a1@<X8>)
{
  result = CamAction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CamRequest(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CamUserParse()
{
  type metadata accessor for (SIRINLUUserParse, String?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (SIRINLUUserParse, String?)()
{
  if (!lazy cache variable for type metadata for (SIRINLUUserParse, String?))
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for SIRINLUUserParse, 0x277D5F5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SIRINLUUserParse, String?));
    }
  }
}

void type metadata completion function for CamRequest()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AFSpeechPackage?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [(CamUserParse, Float)]();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UUID?(319, &lazy cache variable for type metadata for [RankedAction], type metadata accessor for RankedAction, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CamRequestContext();
            if (v5 <= 0x3F)
            {
              type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for CamAction?, &type metadata for CamAction, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for [CamFeature], &type metadata for CamFeature, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
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
}

void type metadata accessor for AFSpeechPackage?()
{
  if (!lazy cache variable for type metadata for AFSpeechPackage?)
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for AFSpeechPackage, 0x277CEF470);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AFSpeechPackage?);
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for CamAction?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CamResponse(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CamResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for CamAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CamAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CamError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
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