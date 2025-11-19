uint64_t sub_299BDD3A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMd, &_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_299BDD438()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_299BDD470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMd, &_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTime(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CMTime(uint64_t result, int a2, int a3)
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

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef();
}

{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFBooleanRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFBooleanRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFBooleanRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

void type metadata accessor for VTMotionEstimationSessionRef(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *VTTemporalNoiseFilterConfiguration.supportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v13 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v13;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_15;
        }

        v11 = *(v13 + 16);
        v10 = *(v13 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v13 + 16) = v11 + 1;
        *(v13 + 4 * v11 + 32) = v9;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v2 < 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2ADA90](v12);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

char *static VTTemporalNoiseFilterConfiguration.supportedSourcePixelFormats.getter()
{
  v0 = [swift_getObjCClassFromMetadata() supportedSourcePixelFormats];
  type metadata accessor for NSNumber();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v12 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        break;
      }

      v4 = 0;
      v5 = v12;
      while (1)
      {
        v6 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v4, v1) : *(v1 + 8 * v4 + 32);
        v7 = v6;
        v8 = [v6 integerValue];

        if ((v8 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v8))
        {
          goto LABEL_15;
        }

        v10 = *(v12 + 16);
        v9 = *(v12 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        ++v4;
        *(v12 + 16) = v10 + 1;
        *(v12 + 4 * v10 + 32) = v8;
        if (v2 == v4)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v1 < 0)
      {
        v11 = v1;
      }

      else
      {
        v11 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      v2 = MEMORY[0x29C2ADA90](v11);
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VTHDRPerFrameMetadataGenerationSession.HDRFormat()
{
  Hasher.init(_seed:)();
  MEMORY[0x29C2ADB20](1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VTHDRPerFrameMetadataGenerationSession.HDRFormat()
{
  Hasher.init(_seed:)();
  MEMORY[0x29C2ADB20](1);
  return Hasher._finalize()();
}

uint64_t VTHDRPerFrameMetadataGenerationSession.__allocating_init(framesPerSecond:hdrFormats:)(uint64_t a1)
{
  v2 = swift_allocObject();
  VTHDRPerFrameMetadataGenerationSession.init(framesPerSecond:hdrFormats:)(a1);
  return v2;
}

uint64_t VTHDRPerFrameMetadataGenerationSession.init(framesPerSecond:hdrFormats:)(uint64_t a1)
{
  v2 = v1;
  v16 = *MEMORY[0x29EDCA608];
  if (a1 && (v3 = *(a1 + 16)) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_299BE4BE0;
    v5 = *MEMORY[0x29EDBCF48];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    v15 = MEMORY[0x29EDCA190];
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      MEMORY[0x29C2AD920](0x73695679626C6F44, 0xEB000000006E6F69);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v15 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11CFStringRefaGMd, &_sSaySo11CFStringRefaGMR);
    *(inited + 48) = v15;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v8 = *MEMORY[0x29EDB8ED8];

    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = v1;
  }

  else
  {
    v9.super.isa = 0;
    v10 = *MEMORY[0x29EDB8ED8];
  }

  v11 = VTHDRPerFrameMetadataGenerationSessionCreate();

  result = noErr.getter();
  if (v11 == result)
  {
    __break(1u);
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
    [v13 initWithDomain:*MEMORY[0x29EDB9EF0] code:v11 userInfo:0];
    swift_willThrow();

    type metadata accessor for VTHDRPerFrameMetadataGenerationSession();
    swift_deallocPartialClassInstance();
    v14 = *MEMORY[0x29EDCA608];
    return v2;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VTHDRPerFrameMetadataGenerationSession.attachMetadata(to:sceneChange:)(CVBufferRef to, Swift::Bool sceneChange)
{
  v3 = *(v2 + 16);
  v4 = VTHDRPerFrameMetadataGenerationSessionAttachMetadata();
  if (v4 != noErr.getter())
  {
    v5 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
    [v5 initWithDomain:*MEMORY[0x29EDB9EF0] code:v4 userInfo:0];
    swift_willThrow();
  }
}

uint64_t VTHDRPerFrameMetadataGenerationSession.__deallocating_deinit()
{

  return MEMORY[0x2A1C73398](v0, 24, 7);
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
      outlined init with copy of (CFStringRef, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type VTHDRPerFrameMetadataGenerationSession.HDRFormat and conformance VTHDRPerFrameMetadataGenerationSession.HDRFormat()
{
  result = lazy protocol witness table cache variable for type VTHDRPerFrameMetadataGenerationSession.HDRFormat and conformance VTHDRPerFrameMetadataGenerationSession.HDRFormat;
  if (!lazy protocol witness table cache variable for type VTHDRPerFrameMetadataGenerationSession.HDRFormat and conformance VTHDRPerFrameMetadataGenerationSession.HDRFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VTHDRPerFrameMetadataGenerationSession.HDRFormat and conformance VTHDRPerFrameMetadataGenerationSession.HDRFormat);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VTHDRPerFrameMetadataGenerationSession.HDRFormat(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for VTHDRPerFrameMetadataGenerationSession.HDRFormat(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (CFStringRef, Any)(v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x29EDCA198];
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

uint64_t outlined init with copy of (CFStringRef, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *VTLowLatencyFrameInterpolationConfiguration.supportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v13 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v13;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_15;
        }

        v11 = *(v13 + 16);
        v10 = *(v13 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v13 + 16) = v11 + 1;
        *(v13 + 4 * v11 + 32) = v9;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v2 < 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2ADA90](v12);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

id VTLowLatencyFrameInterpolationParameters.init(sourceFrame:previousFrame:interpolationPhase:destinationFrames:)(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  specialized _arrayForceCast<A, B>(_:)(a3);

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for VTFrameProcessorFrame, 0x29EDBCD08);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithSourceFrame:a1 previousFrame:a2 interpolationPhase:isa destinationFrames:v8];

  return v9;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x29EDCA190];
  if (v2)
  {
    v7 = MEMORY[0x29EDCA190];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      Float._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v7 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *VTLowLatencyFrameInterpolationParameters.interpolationPhase.getter()
{
  v1 = [v0 interpolationPhase];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v2 < 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x29C2ADA90](v13);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29C2ADA30](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 floatValue];
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v14 + 16) = v12 + 1;
      *(v14 + 4 * v12 + 32) = v10;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t VTFrameRateConversionConfiguration.frameSupportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

char *VTFrameRateConversionConfiguration.supportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v13 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v13;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_15;
        }

        v11 = *(v13 + 16);
        v10 = *(v13 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v13 + 16) = v11 + 1;
        *(v13 + 4 * v11 + 32) = v9;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v2 < 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2ADA90](v12);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

id VTFrameRateConversionParameters.init(sourceFrame:nextFrame:opticalFlow:interpolationPhase:submissionMode:destinationFrames:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  specialized _arrayForceCast<A, B>(_:)(a4);

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for VTFrameProcessorFrame, 0x29EDBCD08);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithSourceFrame:a1 nextFrame:a2 opticalFlow:a3 interpolationPhase:isa submissionMode:a5 destinationFrames:v12];

  return v13;
}

char *VTFrameRateConversionParameters.interpolationPhase.getter()
{
  v1 = [v0 interpolationPhase];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v2 < 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x29C2ADA90](v13);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29C2ADA30](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 floatValue];
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v14 + 16) = v12 + 1;
      *(v14 + 4 * v12 + 32) = v10;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

char *static VTLowLatencySuperResolutionScalerConfiguration.supportedScaleFactors(frameWidth:frameHeight:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() supportedScaleFactorsForFrameWidth:a1 frameHeight:a2];
  type metadata accessor for NSNumber();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v3 < 0)
  {
    v14 = v3;
  }

  else
  {
    v14 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = MEMORY[0x29C2ADA90](v14);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v15 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v15;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x29C2ADA30](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      [v8 floatValue];
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v15 + 16) = v13 + 1;
      *(v15 + 4 * v13 + 32) = v11;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

char *VTLowLatencySuperResolutionScalerConfiguration.supportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v13 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v13;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_15;
        }

        v11 = *(v13 + 16);
        v10 = *(v13 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v13 + 16) = v11 + 1;
        *(v13 + 4 * v11 + 32) = v9;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v2 < 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2ADA90](v12);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

char *static VTSuperResolutionScalerConfiguration.supportedScaleFactors.getter()
{
  v0 = [objc_opt_self() supportedScaleFactors];
  type metadata accessor for NSNumber();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v1 < 0)
  {
    v11 = v1;
  }

  else
  {
    v11 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = MEMORY[0x29C2ADA90](v11);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v12;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x29C2ADA30](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      ++v4;
      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v8;
    }

    while (v2 != v4);

    return v5;
  }

  __break(1u);
  return result;
}

char *VTSuperResolutionScalerConfiguration.supportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v13 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v13;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_15;
        }

        v11 = *(v13 + 16);
        v10 = *(v13 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v13 + 16) = v11 + 1;
        *(v13 + 4 * v11 + 32) = v9;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v2 < 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2ADA90](v12);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

VideoToolbox::VTMotionEstimationSession::BlockSize_optional __swiftcall VTMotionEstimationSession.BlockSize.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 4)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 16)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VTMotionEstimationSession.BlockSize.rawValue.getter()
{
  if (*v0)
  {
    return 4;
  }

  else
  {
    return 16;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VTMotionEstimationSession.BlockSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 16;
  }

  MEMORY[0x29C2ADB20](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VTMotionEstimationSession.BlockSize()
{
  if (*v0)
  {
    v1 = 4;
  }

  else
  {
    v1 = 16;
  }

  return MEMORY[0x29C2ADB20](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VTMotionEstimationSession.BlockSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 16;
  }

  MEMORY[0x29C2ADB20](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance VTMotionEstimationSession.BlockSize@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 4)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 16)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance VTMotionEstimationSession.BlockSize(uint64_t *a1@<X8>)
{
  v2 = 16;
  if (*v1)
  {
    v2 = 4;
  }

  *a1 = v2;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance VTMotionEstimationSession.FrameFlags(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance VTMotionEstimationSession.FrameFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance VTMotionEstimationSession.FrameFlags@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance VTMotionEstimationSession.FrameFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t VTMotionEstimationSession.__allocating_init(width:height:motionVectorSize:useMultiPassSearch:label:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x29EDCA608];
  v10 = swift_allocObject();
  v11 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_299BE4D40;
  v13 = *MEMORY[0x29EDBCF58];
  if (!*MEMORY[0x29EDBCF58])
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = inited;
  v15 = 16;
  if (v11)
  {
    v15 = 4;
  }

  *(inited + 64) = MEMORY[0x29EDC9BA8];
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v16 = *MEMORY[0x29EDBCF60];
  if (!*MEMORY[0x29EDBCF60])
  {
LABEL_14:
    __break(1u);
  }

  *(inited + 72) = v16;
  *(inited + 104) = MEMORY[0x29EDC9A98];
  *(inited + 80) = a4 & 1;
  v17 = v13;
  v18 = v16;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  result = swift_arrayDestroy();
  if (a6)
  {
    v20 = *MEMORY[0x29EDBCF50];
    if (!*MEMORY[0x29EDBCF50])
    {
      __break(1u);
      goto LABEL_16;
    }

    v33 = MEMORY[0x29EDC99B0];
    *&v32 = a5;
    *(&v32 + 1) = a6;
    outlined init with take of Any(&v32, v31);

    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v21, isUniquelyReferenced_nonNull_native);
  }

  *&v32 = 0;
  v23 = *MEMORY[0x29EDB8ED8];
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = VTMotionEstimationSessionCreate();

  result = noErr.getter();
  if (v25 != result)
  {
    v28 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
    [v28 initWithDomain:*MEMORY[0x29EDB9EF0] code:v25 userInfo:0];
    swift_willThrow();

    v29 = v32;

    swift_deallocPartialClassInstance();
    goto LABEL_12;
  }

  if (v32)
  {
    v26 = v32;

    *(v10 + 16) = v26;
    v27 = v32;

LABEL_12:
    v30 = *MEMORY[0x29EDCA608];
    return v10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t VTMotionEstimationSession.init(width:height:motionVectorSize:useMultiPassSearch:label:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = *MEMORY[0x29EDCA608];
  v31 = *v7;
  v11 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_299BE4D40;
  v13 = *MEMORY[0x29EDBCF58];
  if (!*MEMORY[0x29EDBCF58])
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = inited;
  v15 = 16;
  if (v11)
  {
    v15 = 4;
  }

  *(inited + 64) = MEMORY[0x29EDC9BA8];
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v16 = *MEMORY[0x29EDBCF60];
  if (!*MEMORY[0x29EDBCF60])
  {
LABEL_14:
    __break(1u);
  }

  *(inited + 72) = v16;
  *(inited + 104) = MEMORY[0x29EDC9A98];
  *(inited + 80) = a4 & 1;
  v17 = v16;
  v18 = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  result = swift_arrayDestroy();
  if (a6)
  {
    v20 = *MEMORY[0x29EDBCF50];
    if (!*MEMORY[0x29EDBCF50])
    {
      __break(1u);
      goto LABEL_16;
    }

    v34 = MEMORY[0x29EDC99B0];
    *&v33 = a5;
    *(&v33 + 1) = a6;
    outlined init with take of Any(&v33, v32);

    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v21, isUniquelyReferenced_nonNull_native);
  }

  *&v33 = 0;
  v23 = *MEMORY[0x29EDB8ED8];
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = VTMotionEstimationSessionCreate();

  result = noErr.getter();
  if (v25 != result)
  {
    v28 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
    [v28 initWithDomain:*MEMORY[0x29EDB9EF0] code:v25 userInfo:0];
    swift_willThrow();

    v29 = v33;

    swift_deallocPartialClassInstance();
    goto LABEL_12;
  }

  if (v33)
  {
    v26 = v33;

    v7[2] = v26;
    v27 = v33;

LABEL_12:
    v30 = *MEMORY[0x29EDCA608];
    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t VTMotionEstimationSession.Motion._motionVector.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VTMotionEstimationSession.label.getter()
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!*MEMORY[0x29EDBCF50])
  {
    __break(1u);
  }

  VTSessionCopyProperty(v0, *MEMORY[0x29EDBCF50], *MEMORY[0x29EDB8ED8], v5);
  v1 = v5[0];
  if (v5[0])
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void VTMotionEstimationSession.motionVectorSize.getter(char *a1@<X8>)
{
  v2 = v1;
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  if (!*MEMORY[0x29EDBCF58])
  {
    __break(1u);
  }

  VTSessionCopyProperty(v2, *MEMORY[0x29EDBCF58], *MEMORY[0x29EDB8ED8], v8);
  if (v8[0])
  {
    v4 = [v8[0] integerValue];
    if (v4 == 16)
    {
      v5 = 0;
      goto LABEL_8;
    }

    if (v4 == 4)
    {
      v5 = 1;
LABEL_8:
      *a1 = v5;
      goto LABEL_9;
    }
  }

  v6 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
  [v6 initWithDomain:*MEMORY[0x29EDB9EF0] code:-12903 userInfo:0];
  swift_willThrow();
LABEL_9:

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t VTMotionEstimationSession.useMultiPassSearch.getter()
{
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  if (!*MEMORY[0x29EDBCF60])
  {
    __break(1u);
  }

  VTSessionCopyProperty(v0, *MEMORY[0x29EDBCF60], *MEMORY[0x29EDB8ED8], v8);
  v1 = v8[0];
  v2 = *MEMORY[0x29EDB8F00];
  v3 = (v8[0] | *MEMORY[0x29EDB8F00]) == 0;
  if (v8[0] && v2)
  {
    type metadata accessor for CFBooleanRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFBooleanRef and conformance CFBooleanRef, type metadata accessor for CFBooleanRef);
    v4 = v2;
    v5 = v1;
    v3 = static _CFObject.== infix(_:_:)();

    v1 = v8[0];
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3 & 1;
}

uint64_t VTMotionEstimationSession.sourcePixelBufferAttributes.getter()
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 16);
  v2 = VTMotionEstimationSessionCopySourcePixelBufferAttributes();
  if (v2 != noErr.getter())
  {
    v3 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
    v4 = [v3 initWithDomain:*MEMORY[0x29EDB9EF0] code:v2 userInfo:0];
    swift_willThrow();
  }

  v5 = MEMORY[0x29EDCA198];

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t VTMotionEstimationSession.motion(of:comparedTo:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 72) = *a4;
  return MEMORY[0x2A1C73D48](VTMotionEstimationSession.motion(of:comparedTo:flags:), 0, 0);
}

uint64_t VTMotionEstimationSession.motion(of:comparedTo:flags:)()
{
  v1 = v0[4].i32[2];
  v2 = v0[1].i64[1];
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  v3[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i32[2] = v1;
  v4 = *(MEMORY[0x29EDCA470] + 4);
  v5 = swift_task_alloc();
  v0[3].i64[1] = v5;
  *v5 = v0;
  v5[1] = VTMotionEstimationSession.motion(of:comparedTo:flags:);
  v6 = v0[2].i64[1];
  v7 = v0[1].i64[0];

  return MEMORY[0x2A1C73C78](v7, &async function pointer to partial apply for closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:), v3, partial apply for closure #2 in VTMotionEstimationSession.motion(of:comparedTo:flags:), v6, 0, 0, &type metadata for VTMotionEstimationSession.Motion);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](VTMotionEstimationSession.motion(of:comparedTo:flags:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 72) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2A1C73D48](closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:), 0, 0);
}

uint64_t closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x29EDCA478] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:);
  v6 = *(v0 + 16);

  return MEMORY[0x2A1C73C80](v6, 0, 0, 0xD00000000000001CLL, 0x8000000299BE5A90, partial apply for closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:), v3, &type metadata for VTMotionEstimationSession.Motion);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v22[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMd, &_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8]();
  v11 = v22 - v10;
  v22[2] = *(a2 + 16);
  KeyPath = swift_getKeyPath();
  v26 = partial apply for implicit closure #1 in closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:);
  v27 = KeyPath;
  type metadata accessor for CVBufferRef(0);

  _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();

  v13 = aBlock[8];
  v14 = swift_getKeyPath();
  v24 = partial apply for implicit closure #2 in closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:);
  v25 = v14;

  _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();

  v15 = aBlock[6];
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v11, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32, @unowned VTMotionEstimationInfoFlags, @guaranteed CFDictionaryRef?, @guaranteed CVBufferRef?) -> ();
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  v19 = VTMotionEstimationSessionEstimateMotionVectors();

  _Block_release(v18);
  result = noErr.getter();
  if (v19 != result)
  {
    v21 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
    aBlock[0] = [v21 initWithDomain:*MEMORY[0x29EDB9EF0] code:v19 userInfo:0];
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

uint64_t implicit closure #1 in closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t closure #1 in closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = type metadata accessor for CVReadOnlyPixelBuffer();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = a4;
    CVReadOnlyPixelBuffer.init(unsafeBuffer:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMd, &_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x29EDB9FA0]);
    [v11 initWithDomain:*MEMORY[0x29EDB9EF0] code:a1 userInfo:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMd, &_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Int32, @unowned VTMotionEstimationInfoFlags, @guaranteed CFDictionaryRef?, @guaranteed CVBufferRef?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v12 = a4;
  v11 = a5;
  v10(a2, a3, a4, a5);
}

uint64_t VTMotionEstimationSession.__deallocating_deinit()
{

  return MEMORY[0x2A1C73398](v0, 24, 7);
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
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

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
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        outlined init with take of Any(v22, v34);
      }

      else
      {
        outlined init with copy of Any(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of Any(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v17 = *v4;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFStringRef(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t partial apply for closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:);

  return closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type VTMotionEstimationSession.BlockSize and conformance VTMotionEstimationSession.BlockSize()
{
  result = lazy protocol witness table cache variable for type VTMotionEstimationSession.BlockSize and conformance VTMotionEstimationSession.BlockSize;
  if (!lazy protocol witness table cache variable for type VTMotionEstimationSession.BlockSize and conformance VTMotionEstimationSession.BlockSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VTMotionEstimationSession.BlockSize and conformance VTMotionEstimationSession.BlockSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags()
{
  result = lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags;
  if (!lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags;
  if (!lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags;
  if (!lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags;
  if (!lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VTMotionEstimationSession.FrameFlags and conformance VTMotionEstimationSession.FrameFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VTMotionEstimationSession.BlockSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VTMotionEstimationSession.BlockSize(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VTMotionEstimationSession.FrameFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VTMotionEstimationSession.FrameFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for VTMotionEstimationSession.Motion(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for VTMotionEstimationSession.Motion(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSo11CVBufferRefaABIeggo_A2Bs5Error_pIegTgrzo_TRTA@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMd, &_sScCy12VideoToolbox25VTMotionEstimationSessionC6MotionVs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in VTMotionEstimationSession.motion(of:comparedTo:flags:)(a1, a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _sSo11CFStringRefaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VTOpticalFlowConfiguration.frameSupportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

char *VTOpticalFlowConfiguration.supportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v13 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v13;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_15;
        }

        v11 = *(v13 + 16);
        v10 = *(v13 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v13 + 16) = v11 + 1;
        *(v13 + 4 * v11 + 32) = v9;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v2 < 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2ADA90](v12);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t VTMotionBlurConfiguration.frameSupportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

char *VTMotionBlurConfiguration.supportedPixelFormats.getter()
{
  v1 = [v0 frameSupportedPixelFormats];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v13 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v13;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x29C2ADA30](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v9 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_15;
        }

        v11 = *(v13 + 16);
        v10 = *(v13 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v13 + 16) = v11 + 1;
        *(v13 + 4 * v11 + 32) = v9;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v2 < 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2ADA90](v12);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t VTDecompressionSessionDecodeFrame(_:sampleBuffer:flags:infoFlagsOut:completionHandler:)(OpaqueVTDecompressionSession *a1, opaqueCMSampleBuffer *a2, VTDecodeFrameFlags a3, VTDecodeInfoFlags *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v16[4] = partial apply for intermediateOutputHandler2 #1 @Sendable (_:_:_:_:_:_:) in VTDecompressionSessionDecodeFrame(_:sampleBuffer:flags:infoFlagsOut:completionHandler:);
  v16[5] = v12;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int32, @unowned VTDecodeInfoFlags, @guaranteed CVBufferRef?, @guaranteed CMTaggedBufferGroupRef?, @unowned CMTime, @unowned CMTime) -> ();
  v16[3] = &block_descriptor_0;
  v13 = _Block_copy(v16);

  v14 = VTDecompressionSessionDecodeFrameWithMultiImageCapableOutputHandler(a1, a2, a3, a4, v13);
  _Block_release(v13);
  return v14;
}

uint64_t intermediateOutputHandler2 #1 @Sendable (_:_:_:_:_:_:) in VTDecompressionSessionDecodeFrame(_:sampleBuffer:flags:infoFlagsOut:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = 0;
  if (noErr.getter() == a1 && a4)
  {
    v17 = a4;
    v16 = specialized _copyCollectionToContiguousArray<A>(_:)(v17);
  }

  a11(a1, a2, a3, v16, a5, a6, a7, a8, a9, a10);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Int32, @unowned VTDecodeInfoFlags, @guaranteed CVBufferRef?, @guaranteed CMTaggedBufferGroupRef?, @unowned CMTime, @unowned CMTime) -> ()(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v17 = a6[1];
  v18 = *a6;
  v10 = a6[2];
  v12 = *a7;
  v11 = a7[1];
  v13 = a7[2];
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);

  v19 = a4;
  v16 = a5;
  v14(a2, a3, a4, a5, v18, v17, v10, v12, v11, v13);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(void *a1)
{
  v2 = CMTaggedBufferGroupRef.startIndex.getter();
  v3 = CMTaggedBufferGroupRef.endIndex.getter();
  v4 = CMTaggedBufferGroupRef.startIndex.getter();
  result = CMTaggedBufferGroupRef.endIndex.getter();
  if (v2 < v4 || result < v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = CMTaggedBufferGroupRef.startIndex.getter();
  result = CMTaggedBufferGroupRef.endIndex.getter();
  if (v3 < v6 || result < v3)
  {
    goto LABEL_12;
  }

  v7 = __OFSUB__(v3, v2);
  v8 = v3 - v2;
  if (!v7)
  {
    if (v8)
    {
      v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9CoreMedia08CMTaggedC0V_Tt1gq5(v8, 0);
      v10 = *(type metadata accessor for CMTaggedBuffer() - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = a1;
      v13 = specialized Sequence._copySequenceContents(initializing:)(v14, (v9 + v11), v8);

      if (v13 == v8)
      {
        return v9;
      }

      __break(1u);
    }

    return MEMORY[0x29EDCA190];
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void (*a1)(char *, char *, uint64_t), char *a2, uint64_t a3)
{
  v7 = type metadata accessor for CMTaggedBuffer();
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x2A1C7C4A8])();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v23 - v13;
  result = CMTaggedBufferGroupRef.startIndex.getter();
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    *a1 = v3;
    *(a1 + 1) = result;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_18;
  }

  v24 = a1;
  v16 = (v26 + 32);
  v17 = 1;
  while (1)
  {
    v18 = result;
    v19 = result + v17 - 1;
    if (v19 == CMTaggedBufferGroupRef.endIndex.getter())
    {
      a3 = v17 - 1;
      result = v17 - 1 + v18;
LABEL_15:
      a1 = v24;
      goto LABEL_16;
    }

    CMTaggedBufferGroupRef.subscript.getter();
    v20 = CMTaggedBufferGroupRef.startIndex.getter();
    result = CMTaggedBufferGroupRef.endIndex.getter();
    if (v19 < v20 || v19 >= result)
    {
      break;
    }

    a1 = *v16;
    v21 = v25;
    (*v16)(v14, v12, v25);
    a1(a2, v14, v21);
    if (a3 == v17)
    {
      result = v18 + v17;
      goto LABEL_15;
    }

    a2 += *(v26 + 72);
    v22 = __OFADD__(v17++, 1);
    result = v18;
    if (v22)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9CoreMedia08CMTaggedC0V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9CoreMedia14CMTaggedBufferVGMd, &_ss23_ContiguousArrayStorageCy9CoreMedia14CMTaggedBufferVGMR);
  v4 = *(type metadata accessor for CMTaggedBuffer() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t VTFrameProcessorFrame.ReadOnlyFrame.frame.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VTFrameProcessorFrame.ReadOnlyFrame.timeStamp.getter()
{
  result = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  return result;
}

uint64_t VTFrameProcessorFrame.ReadOnlyFrame.timeStamp.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[1] = result;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t VTFrameProcessorFrame.ReadOnlyFrame.init(frame:timeStamp:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VTFrameProcessorFrame.ReadOnlyFrame(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for VTFrameProcessorFrame.ReadOnlyFrame(uint64_t result, int a2, int a3)
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

uint64_t VTCompressionSessionEncodeMultiImageFrame(_:taggedBuffers:presentationTimeStamp:duration:frameProperties:infoFlagsOut:outputHandler:)(OpaqueVTCompressionSession *a1, uint64_t a2, CMTimeValue a3, unint64_t a4, CMTimeEpoch a5, CMTimeValue a6, unint64_t a7, CMTimeEpoch a8, const __CFDictionary *a9, VTEncodeInfoFlags *a10, uint64_t a11, uint64_t a12)
{
  if (!*(a2 + 16))
  {
    return 4294954394;
  }

  v23 = HIDWORD(a7);
  v15 = HIDWORD(a4);
  v16 = a7;
  v17 = a4;
  v18 = Array<A>.taggedBufferGroup.getter();
  v28 = a11;
  v29 = a12;
  aBlock.value = MEMORY[0x29EDCA5F8];
  *&aBlock.timescale = 1107296256;
  aBlock.epoch = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int32, @unowned VTEncodeInfoFlags, @guaranteed CMSampleBufferRef?) -> ();
  v27 = &block_descriptor_1;
  v19 = _Block_copy(&aBlock);

  aBlock.timescale = v17;
  aBlock.flags = v15;
  aBlock.epoch = a5;
  duration.value = a6;
  duration.timescale = v16;
  duration.flags = v23;
  duration.epoch = a8;
  aBlock.value = a3;
  v20 = VTCompressionSessionEncodeMultiImageFrameWithOutputHandler(a1, v18, &aBlock, &duration, a9, a10, v19);
  _Block_release(v19);

  return v20;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Int32, @unowned VTEncodeInfoFlags, @guaranteed CMSampleBufferRef?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t VTFrameProcessor.process(parameters:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyF0Vs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyF0Vs5Error_p__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMd, &_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v11 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v18 - v12;
  (*(v3 + 104))(v6, *MEMORY[0x29EDCA3F8], v2);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 16))(v11, v13, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = partial apply for closure #1 in VTFrameProcessor.process(parameters:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed VTFrameProcessorParameters, @unowned CMTime, @unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v18[1] processWithParameters:a1 frameOutputHandler:v16];
  _Block_release(v16);
  return (*(v8 + 8))(v13, v7);
}

void closure #1 in VTFrameProcessor.process(parameters:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyF0Vs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyF0Vs5Error_p__GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v24 - v15;
  if (a6)
  {
    v28 = a6;
    v17 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMd, &_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMR);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v27 = v14;
    swift_getObjectType();
    v18 = VTFrameProcessorParameters.destinationFrame(at:)();
    if (v18)
    {
      v19 = v18;
      v25 = HIDWORD(a3);
      v20 = [v18 buffer];
      v21 = type metadata accessor for CVReadOnlyPixelBuffer();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v26 = v20;
      v28 = CVReadOnlyPixelBuffer.init(unsafeBuffer:)();
      v29 = a2;
      v30 = a3;
      v31 = v25;
      v32 = a4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMd, &_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMR);
      AsyncThrowingStream.Continuation.yield(_:)();
      (*(v12 + 8))(v16, v27);
      if (a5)
      {
        v28 = 0;
        AsyncThrowingStream.Continuation.finish(throwing:)();
      }

      else
      {
      }
    }
  }
}

void partial apply for closure #1 in VTFrameProcessor.process(parameters:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, void *a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMd, &_sScs12ContinuationVySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyD0Vs5Error_p_GMR) - 8);
  v14 = *(v6 + ((*(v13 + 64) + ((*(v13 + 80) + 16) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in VTFrameProcessor.process(parameters:)(a1, a2, a3, a4, a5, a6);
}

void *VTFrameProcessorParameters.destinationFrame(at:)()
{
  v0 = VTFrameProcessorParameters.destinationFrames.getter();
  if (v0)
  {
    v1 = v0;
    v2 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x29C2ADA90](v8))
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x29C2ADA30](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v5 presentationTimeStamp];
        if (static CMTime.== infix(_:_:)())
        {

          return v6;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (v1 >= 0)
      {
        v8 = v2;
      }

      else
      {
        v8 = v1;
      }
    }

LABEL_20:
  }

  v9 = VTFrameProcessorParameters.destinationFrame.getter();
  v6 = v9;
  if (v9)
  {
    [v9 presentationTimeStamp];
    if ((static CMTime.== infix(_:_:)() & 1) == 0)
    {

      return 0;
    }
  }

  return v6;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed VTFrameProcessorParameters, @unowned CMTime, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  swift_unknownObjectRetain();
  v13 = a5;
  v12(a2, v8, v9, v10, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id VTFrameProcessorConfiguration.nextFrameCount.getter(uint64_t a1, SEL *a2)
{
  if ([v2 respondsToSelector_])
  {
    return [v2 *a2];
  }

  else
  {
    return 0;
  }
}

id static VTFrameProcessorConfiguration.maximumDimensions.getter(uint64_t a1, SEL *a2)
{
  v3 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_] && (objc_msgSend(ObjCClassFromMetadata, sel_respondsToSelector_, *a2) & 1) != 0)
  {
    return [ObjCClassFromMetadata *a2];
  }

  else
  {
    return 0;
  }
}

id VTFrameProcessorParameters.destinationFrame.getter()
{
  if ([v0 respondsToSelector_])
  {
    return [v0 destinationFrame];
  }

  else
  {
    return 0;
  }
}

uint64_t VTFrameProcessorParameters.destinationFrames.getter()
{
  if (([v0 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  v1 = [v0 destinationFrames];
  type metadata accessor for VTFrameProcessorFrame();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t type metadata accessor for VTFrameProcessorFrame()
{
  result = lazy cache variable for type metadata for VTFrameProcessorFrame;
  if (!lazy cache variable for type metadata for VTFrameProcessorFrame)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for VTFrameProcessorFrame);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AsyncThrowingStream<VTFrameProcessorFrame.ReadOnlyFrame, Error> and conformance AsyncThrowingStream<A, B>()
{
  result = lazy protocol witness table cache variable for type AsyncThrowingStream<VTFrameProcessorFrame.ReadOnlyFrame, Error> and conformance AsyncThrowingStream<A, B>;
  if (!lazy protocol witness table cache variable for type AsyncThrowingStream<VTFrameProcessorFrame.ReadOnlyFrame, Error> and conformance AsyncThrowingStream<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScsySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyC0Vs5Error_pGMd, &_sScsySo21VTFrameProcessorFrameC12VideoToolboxE08ReadOnlyC0Vs5Error_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncThrowingStream<VTFrameProcessorFrame.ReadOnlyFrame, Error> and conformance AsyncThrowingStream<A, B>);
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