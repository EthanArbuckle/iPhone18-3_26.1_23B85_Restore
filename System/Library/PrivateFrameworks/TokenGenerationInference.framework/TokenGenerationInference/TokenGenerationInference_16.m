void sub_220A89608(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A89610);
  }

  _Unwind_Resume(a1);
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x223D8BBA0]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = specialized Data._Representation.init(_:count:)(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<TokenRecord> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<TokenRecord> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<TokenRecord> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVy24TokenGenerationInference0C6RecordVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<TokenRecord> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t outlined init with take of ODIELanguageModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIELanguageModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static BaseModelLoader.load(from:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](static BaseModelLoader.load(from:), 0, 0);
}

uint64_t static BaseModelLoader.load(from:)()
{
  v1 = [*(v0 + 24) modelBundlePath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  v2 = URL.pathExtension.getter();
  v4 = v3;
  v5 = v2 == 0x6B6361707869646FLL && v3 == 0xEB00000000656761;
  if (v5 || (v6 = v2, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v6 == 0x72617262696C6C6DLL && v4 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = *(v0 + 24);
    (*(*(v0 + 40) + 16))(*(v0 + 48), *(v0 + 56), *(v0 + 32));
    v8 = [v7 assetIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v0 + 64) = type metadata accessor for ODIEBaseModel();
    swift_allocObject();
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = static BaseModelLoader.load(from:);
    v13 = *(v0 + 48);

    return ODIEBaseModel.init(contentsOf:assetIdentifier:)(v13, v9, v11);
  }

  if (v6 == 0x656C646E7562 && v4 == 0xE600000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v23 = URL.pathExtension.getter();
      v25 = v24;
      lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
      swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v25;
      *(v26 + 16) = 2;
      swift_willThrow();
      (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));

      v22 = *(v0 + 8);
      goto LABEL_18;
    }
  }

  v16 = [objc_allocWithZone(TGIE5BaseModelObjC) initWithModelConfiguration_];
  v17 = type metadata accessor for TGIE5BaseModelObjC();
  v18 = *(v0 + 56);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v21 = *(v0 + 16);
  v21[3] = v17;
  v21[4] = &protocol witness table for TGIE5BaseModelObjC;
  *v21 = v16;
  (*(v20 + 8))(v18, v19);

  v22 = *(v0 + 8);
LABEL_18:

  return v22();
}

{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[4];
  v5 = v0[2];
  v5[3] = v0[8];
  v5[4] = &protocol witness table for ODIEBaseModel;
  *v5 = v1;
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

{
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t static BaseModelLoader.load(from:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = static BaseModelLoader.load(from:);
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = static BaseModelLoader.load(from:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t protocol witness for BaseModel.assetIdentifier.getter in conformance TGIE5BaseModelObjC()
{
  v1 = [*v0 assetIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id @nonobjc TGIE5BaseModelObjC.load()()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if ([v0 load_])
  {
    return v3[0];
  }

  v2 = v3[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_220A8A2D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

unint64_t type metadata accessor for TGIE5BaseModelObjC()
{
  result = lazy cache variable for type metadata for TGIE5BaseModelObjC;
  if (!lazy cache variable for type metadata for TGIE5BaseModelObjC)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TGIE5BaseModelObjC);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference17DecoderModelErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t getEnumTagSinglePayload for DecoderModelError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DecoderModelError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for DecoderModelError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t specialized static DecoderModelError.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        return a1 == a4;
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (a3 != 3)
  {
    if (a1 | a2)
    {
      if (a6 == 4 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 4 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 3)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

void *E5RunnerObjC.makeKVCacheEntry(_:)(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  v7[0] = 0;
  v3 = [v2 createKVCacheEntry:a1 error:{a2 - a1, v7}];
  v4 = v7[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_220A8A5E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

id E5RunnerObjC.setKVCacheEntry(_:tokens:tokenMasks:start:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 16);
  if (v6)
  {
    v28[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = (a3 + 32);
    do
    {
      v9 = *v8++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v6;
    }

    while (v6);
  }

  if (a4)
  {
    v10 = *(a4 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v28[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v12 = type metadata accessor for TGITokenMaskObjC();
      v13 = (a4 + 48);
      do
      {
        v14 = *(v13 - 2);
        v15 = *(v13 - 1);
        v16 = *v13;
        v17 = objc_allocWithZone(v12);
        v18 = &v17[OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask];
        *v18 = v14;
        *(v18 + 1) = v15;
        *(v18 + 2) = v16;
        v27.receiver = v17;
        v27.super_class = v12;

        objc_msgSendSuper2(&v27, sel_init);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 += 3;
        --v10;
      }

      while (v10);
      v11 = v28[0];
    }
  }

  else
  {
    v11 = 0;
  }

  v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSNumber();
  v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v11)
  {
    type metadata accessor for TGITokenMaskObjC();
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  v28[0] = 0;
  v22 = [v25 setKVCacheEntryWithTokens:v19.super.isa tokens:v20.super.isa tokenMasks:v21.super.isa startIndex:a5 error:v28];

  if (v22)
  {
    return v28[0];
  }

  v24 = v28[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_220A8A8A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A8A8A8);
  }

  _Unwind_Resume(a1);
}

Swift::Void __swiftcall E5RunnerObjC.purge(steps:)(Swift::OpaquePointer steps)
{
  v2 = *(steps._rawValue + 2);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (steps._rawValue + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 purgeSteps_];
}

uint64_t E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:), 0, 0);
}

uint64_t E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v4;
  v6[6] = v2;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCounttMd);
  *v7 = v0;
  v7[1] = E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003ALL, 0x8000000220AFEBE0, partial apply for closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:), v6, v8);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  }

  else
  {

    v2 = E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t E5RunnerObjC.embeddings(forToken:)(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](E5RunnerObjC.embeddings(forToken:), 0, 0);
}

uint64_t E5RunnerObjC.embeddings(forToken:)()
{
  v1 = [*(v0 + 16) getEmbeddingsWithTokenID_];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xC000000000000000;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

id protocol witness for LanguageModelRunner.encodedImages.getter in conformance E5RunnerObjC()
{
  v1 = [v0 encodedImages];

  return v1;
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.setter in conformance E5RunnerObjC(uint64_t a1)
{
  [v1 setEncodedImages_];

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for LanguageModelRunner.encodedImages.modify in conformance E5RunnerObjC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 encodedImages];
  return protocol witness for LanguageModelRunner.encodedImages.modify in conformance E5RunnerObjC;
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.modify in conformance E5RunnerObjC(uint64_t a1)
{
  [*(a1 + 8) setEncodedImages_];

  return swift_unknownObjectRelease();
}

void protocol witness for LanguageModelRunner.enableTelemetry(withIdentifier:) in conformance E5RunnerObjC()
{
  v1 = MEMORY[0x223D8E6B0]();
  [v0 enableTelemetryWithIdentifier_];
}

uint64_t protocol witness for LanguageModelRunner.embeddings(forToken:) in conformance E5RunnerObjC(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](E5RunnerObjC.embeddings(forToken:), 0, 0);
}

uint64_t static LanguageModelLoader.findURLOfKnownAdapterAsset(in:source:)@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v29 = v26 - v7;
  MEMORY[0x28223BE20](v6);
  v8 = *(v2 + 16);
  v30 = v26 - v9;
  v8();
  v10 = (v2 + 32);
  v11 = (v2 + 8);
  v12 = aTBin;
  v13 = 4;
  v26[1] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = v2;
  while (1)
  {
    v14 = v29;
    URL.appendingPathComponent(_:)();
    v15 = *v10;
    v16 = v14;
    v17 = v1;
    (*v10)(v5, v16, v1);
    v18 = URL.path(percentEncoded:)(1);
    v19 = [objc_opt_self() defaultManager];
    v20 = MEMORY[0x223D8E6B0](v18._countAndFlagsBits, v18._object);

    v21 = [v19 fileExistsAtPath_];

    if (v21)
    {
      break;
    }

    v22 = *v11;
    v1 = v17;
    (*v11)(v5, v17);
    v12 += 16;
    if (!--v13)
    {
      (*(v27 + 56))(v28, 1, 1, v17);
      return v22(v30, v1);
    }
  }

  v23 = v28;
  v1 = v17;
  v15(v28, v5, v17);
  v24 = v27 + 56;
  (*(v27 + 56))(v23, 0, 1, v17);
  v22 = *(v24 - 48);
  return v22(v30, v1);
}

uint64_t static LanguageModelLoader.load(from:baseModel:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for InferenceProvider.requestOneShot(clientData:configuration:) in conformance OnDeviceInferenceProvider;

  return specialized static LanguageModelLoader.load(from:baseModel:)(a1, a2);
}

uint64_t specialized static LanguageModelLoader.load(from:baseModel:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static LanguageModelLoader.load(from:baseModel:), 0, 0);
}

uint64_t specialized static LanguageModelLoader.load(from:baseModel:)()
{
  v1 = [*(v0 + 64) modelBundlePath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  v2 = URL.pathExtension.getter();
  v4 = v3;
  v5 = v2 == 7104877 && v3 == 0xE300000000000000;
  if (v5 || (v6 = v2, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v6 == 0x656C646E7562 && v4 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = *(v0 + 64);
    v8 = objc_allocWithZone(E5RunnerObjC);
    *(v0 + 56) = 0;
    v9 = [v8 initWithModelConfiguration:v7 error:v0 + 56];
    v10 = *(v0 + 56);
    if (v9)
    {
      v11 = *(v0 + 64);
      v12 = v10;

      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));

      v13 = *(v0 + 8);

      return v13(v9, &protocol witness table for E5RunnerObjC);
    }

    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 64);
    v19 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v17 + 8))(v15, v16);
    goto LABEL_14;
  }

  if (v6 == 25442 && v4 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x6B6361707869646FLL && v4 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 1919511661 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      v44 = *(v0 + 144);
      v45 = *(v0 + 120);
      v46 = *(v0 + 128);
      v47 = URL.pathExtension.getter();
      v49 = v48;
      lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
      swift_allocError();
      *v50 = v47;
      *(v50 + 8) = v49;
      *(v50 + 16) = 2;
      swift_willThrow();
      (*(v46 + 8))(v44, v45);
LABEL_14:

      v20 = *(v0 + 8);

      return v20();
    }
  }

  v21 = [*(v0 + 64) adapterConfigurations];
  type metadata accessor for TGIE5AdapterConfigurationObjC();
  lazy protocol witness table accessor for type TGIE5AdapterConfigurationObjC and conformance NSObject();
  v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = specialized Collection.first.getter(v22);

  if (v23)
  {
    v24 = [v23 mutableWeightsFilePath];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = [*(v0 + 64) modelType];
  v28 = 0;
  v29 = 0xE000000000000000;
  if (v27 > 1)
  {
    if (v27 == 3)
    {
      goto LABEL_34;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v29 = 0xE900000000000067;
      v28 = 0x6E696D6165727473;
      goto LABEL_34;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_34:
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 144), *(v0 + 120));
  v31 = *(v0 + 120);
  v30 = *(v0 + 128);
  v32 = *(v0 + 112);
  if (v26)
  {
    v33 = *(v0 + 96);
    v34 = v29;
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v30 + 56);
    v37(*(v0 + 104), 1, 1, v31);
    (*(v35 + 104))(v33, *MEMORY[0x277CC91D8], v36);
    v29 = v34;
    URL.init(filePath:directoryHint:relativeTo:)();
    v37(v32, 0, 1, v31);
  }

  else
  {
    (*(v30 + 56))(*(v0 + 112), 1, 1, *(v0 + 120));
  }

  v38 = *(v0 + 64);
  outlined init with copy of BaseModel?(*(v0 + 72), v0 + 16);
  v39 = [v38 ignoreUnknownTokens];
  type metadata accessor for ODIELanguageModelRunner();
  swift_allocObject();
  v40 = swift_task_alloc();
  *(v0 + 152) = v40;
  *v40 = v0;
  v40[1] = specialized static LanguageModelLoader.load(from:baseModel:);
  v41 = *(v0 + 136);
  v42 = *(v0 + 112);

  return ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(v41, v42, v0 + 16, v28, v29, v39);
}

{
  v1 = v0[21];
  (*(v0[16] + 8))(v0[18], v0[15]);

  v2 = v0[1];

  return v2(v1, &protocol witness table for ODIELanguageModelRunner);
}

{
  (*(v0[16] + 8))(v0[18], v0[15]);

  v1 = v0[1];

  return v1();
}

void sub_220A8BBAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A8BBB4);
  }

  _Unwind_Resume(a1);
}

uint64_t specialized static LanguageModelLoader.load(from:baseModel:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = specialized static LanguageModelLoader.load(from:baseModel:);
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = specialized static LanguageModelLoader.load(from:baseModel:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t lazy protocol witness table accessor for type TGIE5AdapterConfigurationObjC and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject)
  {
    type metadata accessor for TGIE5AdapterConfigurationObjC();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with copy of BaseModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference9BaseModel_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of LanguageModelRunner.embeddings(forToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LanguageModelRunner.embeddings(forToken:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LanguageModelRunner.embeddings(forToken:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:), 0, 0);
}

uint64_t LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)()
{
  *(v0 + 120) = MEMORY[0x277D84FA0];
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 128), *(*(v0 + 128) + 24));
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (!*(v2 + 16))
  {
    goto LABEL_12;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 136));
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 144);
  v6 = *(*(v2 + 56) + 8 * v3);
  swift_endAccess();
  v7 = *v5;
  *(v0 + 152) = *v5;
  if (v7 < 0)
  {
    __break(1u);
LABEL_12:
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  if (v7)
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);
    *(v0 + 160) = 0;
    *(v0 + 168) = v8;
    v11 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v12 = swift_allocObject();
    *(v0 + 176) = v12;
    *(v12 + 16) = xmmword_220AE8A30;
    *(v12 + 32) = v6;
    outlined init with copy of DeterministicLanguageModelProtocol(v9 + 8, v0 + 56);
    v13 = *v11;
    v14 = *(*v11 + 96);
    v15 = *(v13 + 104);
    __swift_project_boxed_opaque_existential_1((v13 + 72), v14);
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *v16 = v0;
    v16[1] = LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);

    return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v12, v0 + 56, v14, v15);
  }

  else
  {
    v18 = *(v0 + 120);
    v19 = *(v0 + 8);

    return v19(v18);
  }
}

{
  v24 = v0;
  v1 = *(v0 + 192);
  result = outlined destroy of LogitPresampler?(v0 + 56);
  if (!*(v1 + 16))
  {
    __break(1u);
    return result;
  }

  outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 192) + 32, v0 + 16);

  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  if (LogitCollection.isEmpty.getter(v4, v3) & 1) != 0 || (v5 = *(v0 + 40), v6 = *(v0 + 48), __swift_project_boxed_opaque_existential_1((v0 + 16), v5), v7 = (*(v6 + 32))(v5, v6), (v8))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
LABEL_5:
    v9 = *(v0 + 120);
    v10 = *(v0 + 8);

    return v10(v9);
  }

  v11 = v7;
  v12 = *(v0 + 168);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160) + 1;
  __swift_project_boxed_opaque_existential_1(*(v0 + 128), *(*(v0 + 128) + 24));
  v15 = SpeculativeLanguageModel.nodePair(forPreviousTargetNode:token:isPrompt:)(v12, v11, 0);
  specialized Set._Variant.insert(_:)(&v23, v15.target);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v14 == v13)
  {
    goto LABEL_5;
  }

  ++*(v0 + 160);
  *(v0 + 168) = v15.target;
  v16 = *(v0 + 144);
  v17 = __swift_project_boxed_opaque_existential_1(*(v0 + 128), *(*(v0 + 128) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v18 = swift_allocObject();
  *(v0 + 176) = v18;
  *(v18 + 16) = xmmword_220AE8A30;
  *(v18 + 32) = v15.draft;
  outlined init with copy of DeterministicLanguageModelProtocol(v16 + 8, v0 + 56);
  v19 = *v17;
  v21 = *(*v17 + 96);
  v20 = *(v19 + 104);
  __swift_project_boxed_opaque_existential_1((v19 + 72), v21);
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);

  return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v18, v0 + 56, v21, v20);
}

{
  outlined destroy of LogitPresampler?(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {

    v4 = LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);
  }

  else
  {
    v4 = LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t protocol witness for LanguageModelSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:) in conformance LinearSpeculator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return LinearSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(a1, a2);
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x223D8F400](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (_s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t MaximumLikelihoodTreeSpeculator.topKBNNSContext.getter()
{
  v1 = type metadata accessor for BNNSGraph.CompileOptions();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 48))
  {
    v5 = *(v0 + 48);
  }

  else
  {
    BNNSGraph.CompileOptions.init()();
    v5 = static BNNSGraph.makeContext(options:_:)();
    (*(v2 + 8))(v4, v1);
    *(v0 + 48) = v5;
  }

  return v5;
}

uint64_t closure #1 in closure #1 in MaximumLikelihoodTreeSpeculator.topKBNNSContext.getter()
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd);
  v0 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v2 = &v20 - v1;
  v3 = type metadata accessor for BNNSGraph.Builder.Intent();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  (*(v4 + 104))(v6, *MEMORY[0x277D831D8], v3);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  (*(v4 + 8))(v6, v3);
  BNNSGraph.Builder.Tensor.topK(_:axis:findLargest:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220AE8A20;
  *(v14 + 56) = v7;
  *(v14 + 64) = lazy protocol witness table accessor for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  (*(v8 + 16))(boxed_opaque_existential_1, v11, v7);
  v16 = v21;
  *(v14 + 96) = v21;
  *(v14 + 104) = lazy protocol witness table accessor for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Int32> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd);
  v17 = __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  (*(v0 + 32))(v17, v2, v16);
  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v13, v7);
  return v14;
}

uint64_t MaximumLikelihoodTreeSpeculator.computeMostLikelyTokens(logitCollection:)(void *a1)
{
  v55 = type metadata accessor for ContiguousBitSet();
  v2 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LogitIndexSet();
  v6 = MEMORY[0x28223BE20](v5);
  v54 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v53 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 8))(v13, v14);
  outlined init with copy of LogitIndexSet(v12, v10, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v10[1];
    v16 = v15 - *v10;
    if (__OFSUB__(v15, *v10))
    {
      goto LABEL_22;
    }

    v17 = v16 == 1;
    if (v16 >= 1)
    {
      goto LABEL_4;
    }

LABEL_12:
    outlined destroy of MaximumLikelihoodTreeSpeculator.DraftLogitCache(v12, type metadata accessor for LogitIndexSet);
    return MEMORY[0x277D84F90];
  }

  v22 = v55;
  (*(v2 + 32))(v4, v10, v55);
  v16 = ContiguousBitSet.count.getter();
  (*(v2 + 8))(v4, v22);
  v17 = v16 == 1;
  if (v16 < 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v17)
  {
    v18 = v54;
    outlined init with copy of LogitIndexSet(v12, v54, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *v18;
      if (*v18 != v18[1])
      {
LABEL_8:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_220AE8A30;
        if (v19 < 0xFFFFFFFF80000000)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (v19 > 0x7FFFFFFF)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v21 = v20;
        *(v20 + 32) = v19;
        outlined destroy of MaximumLikelihoodTreeSpeculator.DraftLogitCache(v12, type metadata accessor for LogitIndexSet);
        return v21;
      }
    }

    else
    {
      v49 = v18;
      v50 = v55;
      (*(v2 + 32))(v4, v49, v55);
      v19 = ContiguousBitSet.first.getter();
      v52 = v51;
      (*(v2 + 8))(v4, v50);
      if ((v52 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = v12;
  if (v16 >= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v16;
  }

  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = (*(v25 + 56))(v24, v25);
  v27 = *(v26 + 16);

  v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v28 + 16) = 8;
  v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v21 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd);
  v29 = swift_allocObject();
  v29[1] = xmmword_220AEF480;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v30 = v64;
  v29[8] = v63;
  v29[9] = v30;
  v31 = v66;
  v29[10] = v65;
  v29[11] = v31;
  v32 = v60;
  v29[4] = v59;
  v29[5] = v32;
  v33 = v62;
  v29[6] = v61;
  v29[7] = v33;
  v34 = v58;
  v29[2] = v57;
  v29[3] = v34;
  static Int32.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v35 = v74;
  v29[18] = v73;
  v29[19] = v35;
  v36 = v76;
  v29[20] = v75;
  v29[21] = v36;
  v37 = v70;
  v29[14] = v69;
  v29[15] = v37;
  v38 = v72;
  v29[16] = v71;
  v29[17] = v38;
  v39 = v68;
  v29[12] = v67;
  v29[13] = v39;
  if (v27 + 0x4000000000000000 < 0)
  {
    goto LABEL_23;
  }

  v54 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v40 = swift_allocObject();
  v53 = xmmword_220AE8A30;
  *(v40 + 16) = xmmword_220AE8A30;
  *(v40 + 32) = v27;
  v41 = swift_allocObject();
  *(v41 + 16) = v53;
  *(v41 + 32) = v27;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v42 = v84;
  v29[28] = v83;
  v29[29] = v42;
  v43 = v86;
  v29[30] = v85;
  v29[31] = v43;
  v44 = v80;
  v29[24] = v79;
  v29[25] = v44;
  v45 = v82;
  v29[26] = v81;
  v29[27] = v45;
  v46 = v78;
  v29[22] = v77;
  v29[23] = v46;
  v56._rawValue = v29;
  MaximumLikelihoodTreeSpeculator.topKBNNSContext.getter();
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &v56);
  if (!v47)
  {

    *(v21 + 16) = v23;
    *(v28 + 16) = v23;

    outlined destroy of MaximumLikelihoodTreeSpeculator.DraftLogitCache(v55, type metadata accessor for LogitIndexSet);

    return v21;
  }

LABEL_26:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:)(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  return MEMORY[0x2822009F8](MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:), 0, 0);
}

uint64_t MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:)()
{
  v43 = v0;
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = *(v0 + 288);
  v6 = *(v1 + 32);
  v4 = v1 + 32;
  v5 = v6;
  *(v0 + 296) = v6;
  result = type metadata accessor for MaximumLikelihoodTreeSpeculator.DraftLogitCache();
  v8 = result;
  v9 = *(result + 32);
  *(v0 + 352) = v9;
  v10 = *(v3 + v9);
  *(v0 + 304) = v10;
  if (*(v10 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if (v11)
    {
      v12 = *(v0 + 272);
      outlined init with copy of DeterministicLanguageModelProtocol(*(v10 + 56) + 40 * result, v0 + 64);
      outlined init with take of LogitCollection(v0 + 64, v12);
LABEL_22:
      v27 = *(v0 + 8);

      return v27();
    }

    v3 = *(v0 + 288);
  }

  v13 = *(v3 + 48);
  if (!v13)
  {
LABEL_21:
    v26 = *(v0 + 272);
    *(v26 + 32) = 0;
    *v26 = 0u;
    *(v26 + 16) = 0u;
    goto LABEL_22;
  }

  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v41 = v8;
  *(v3 + 48) = v15;
  *(v0 + 264) = MEMORY[0x277D84FA0];
  v16 = *(v3 + 40);

  for (i = 0; i != v2; ++i)
  {
    if (i == v2)
    {
      __break(1u);
      goto LABEL_33;
    }

    v18 = *(v0 + 264);
    v19 = *(v18 + 16);
    if (v19 < v16)
    {
      v20 = *(v4 + 8 * i);
      if (v19 && (result = MEMORY[0x223D8F400](*(v18 + 40), *(v4 + 8 * i)), v21 = -1 << *(v18 + 32), v22 = result & ~v21, ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (*(*(v18 + 48) + 8 * v22) != v20)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if (*(v10 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v25 & 1) != 0))
        {
          outlined init with copy of DeterministicLanguageModelProtocol(*(v10 + 56) + 40 * v24, v0 + 224);
          result = outlined destroy of [Int](v0 + 224, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        }

        else
        {
          *(v0 + 256) = 0;
          *(v0 + 224) = 0u;
          *(v0 + 240) = 0u;
          outlined destroy of [Int](v0 + 224, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          result = specialized Set._Variant.insert(_:)(&v42, v20);
        }
      }
    }
  }

  v28 = *(v0 + 264);
  *(v0 + 312) = v28;
  v29 = *(v28 + 16);
  if (!v29)
  {
    goto LABEL_28;
  }

  v30 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v28 + 16), 0);
  v31 = specialized Sequence._copySequenceContents(initializing:)(&v42, v30 + 4, v29, v28);

  outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
  if (v31 != v29)
  {
    __break(1u);
LABEL_28:
    v30 = MEMORY[0x277D84F90];
  }

  v42 = v30;
  specialized MutableCollection<>.sort(by:)(&v42);
  v32 = *(v0 + 288);
  v33 = v42;
  *(v0 + 320) = v42;
  v34 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v35 = *(v41 + 28);
  *(v0 + 128) = type metadata accessor for BasicLogitPresampler();
  *(v0 + 136) = &protocol witness table for BasicLogitPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
  outlined init with copy of LogitIndexSet(v32 + v35, boxed_opaque_existential_1, type metadata accessor for BasicLogitPresampler);
  v37 = *v34;
  v38 = *(*v34 + 96);
  v39 = *(*v34 + 104);
  __swift_project_boxed_opaque_existential_1((v37 + 72), v38);
  v40 = swift_task_alloc();
  *(v0 + 328) = v40;
  *v40 = v0;
  v40[1] = MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:);

  return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v33, v0 + 104, v38, v39);
}

{

  outlined destroy of [Int](v0 + 104, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:);
  }

  else
  {
    v4 = MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:)()
{
  v1 = *(v0 + 336);
  v26 = *(v0 + 320);
  result = outlined destroy of [Int](v0 + 104, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v0 + 336) + 32;
    v6 = *(v0 + 320) + 32;
    v7 = *(v0 + 304);
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      result = outlined init with copy of DeterministicLanguageModelProtocol(v5, v0 + 144);
      v9 = *(v26 + 16);
      if (v4 == v9)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 144);
        if (v7[2])
        {
          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
LABEL_26:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      if (v4 >= v9)
      {
        goto LABEL_30;
      }

      v10 = *(v0 + 352);
      v11 = *(v0 + 288);
      v12 = *(v6 + 8 * v4);
      outlined init with take of LogitCollection(v0 + 144, v0 + 16);
      outlined init with take of LogitCollection(v0 + 16, v0 + 184);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v11 + v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v15 = v7[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_31;
      }

      v19 = v14;
      if (v7[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      if (v19)
      {
LABEL_3:
        v8 = v7[7] + 40 * result;
        __swift_destroy_boxed_opaque_existential_1(v8);
        result = outlined init with take of LogitCollection(v0 + 184, v8);
        goto LABEL_4;
      }

LABEL_14:
      v7[(result >> 6) + 8] |= 1 << result;
      *(v7[6] + 8 * result) = v12;
      result = outlined init with take of LogitCollection(v0 + 184, v7[7] + 40 * result);
      v21 = v7[2];
      v17 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v17)
      {
        goto LABEL_32;
      }

      v7[2] = v22;
LABEL_4:
      ++v4;
      *(*(v0 + 288) + *(v0 + 352)) = v7;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_19;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v19 & 1) != (v20 & 1))
    {
      goto LABEL_26;
    }

LABEL_13:
    if (v19)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v7 = *(v0 + 304);
LABEL_19:
  if (!v7[2])
  {
    goto LABEL_25;
  }

LABEL_20:
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 296));
  if (v24)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v7[7] + 40 * result, *(v0 + 272));

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v3[50] = type metadata accessor for MaximumLikelihoodTreeSpeculator.DraftLogitCache();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:), 0, 0);
}

uint64_t MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0[47], *(v0[47] + 24));
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v0[48]), (v4 & 1) != 0))
  {
    v6 = v0[50];
    v5 = v0[51];
    v8 = v0[48];
    v7 = v0[49];
    v9 = v0[47];
    v10 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220AE8A30;
    *(inited + 32) = v8;
    v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSi_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v0[42] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16V10likelihood_Si6target_Si5draftt8nodePairtGMd);
    v13 = swift_initStackObject();
    v0[52] = v13;
    *(v13 + 16) = xmmword_220AE8A30;
    *(v13 + 32) = COERCE_UNSIGNED_INT(1.0);
    *(v13 + 40) = v8;
    *(v13 + 48) = v10;
    outlined init with copy of DeterministicLanguageModelProtocol(v9, (v0 + 14));
    v14 = *(v7 + 16);
    v15 = *(v6 + 28);
    v16 = type metadata accessor for LogitIndexSet();
    (*(*(v16 - 8) + 56))(v5 + v15, 1, 1, v16);
    v17 = *(v6 + 32);
    v18 = MEMORY[0x277D84F90];
    *(v5 + v17) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    outlined init with copy of DeterministicLanguageModelProtocol((v0 + 14), v5);
    *(v5 + 40) = 8;
    *(v5 + 48) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi24TokenGenerationInference15LogitCollection_pGMd);
    Dictionary.reserveCapacity(_:)(64);
    __swift_destroy_boxed_opaque_existential_1((v0 + 14));
    if (*(v12 + 16) > 7uLL)
    {
      outlined destroy of MaximumLikelihoodTreeSpeculator.DraftLogitCache(v0[51], type metadata accessor for MaximumLikelihoodTreeSpeculator.DraftLogitCache);

      v25 = v0[1];

      return v25(v12);
    }

    else
    {
      v0[54] = v13;
      v0[55] = v12;
      v0[53] = v18;
      v19 = *(v13 + 16);
      if (v19)
      {
        v0[43] = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v18 = v0[43];
        v20 = *(v18 + 16);
        v21 = (v13 + 48);
        do
        {
          v23 = *v21;
          v21 += 3;
          v22 = v23;
          v0[43] = v18;
          v24 = *(v18 + 24);
          if (v20 >= v24 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v20 + 1, 1);
            v18 = v0[43];
          }

          *(v18 + 16) = v20 + 1;
          *(v18 + 8 * v20++ + 32) = v22;
          --v19;
        }

        while (v19);
      }

      v0[56] = v18;
      v27 = swift_task_alloc();
      v0[57] = v27;
      *v27 = v0;
      v27[1] = MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);

      return MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:)((v0 + 24), v18);
    }
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

{
  *(*v1 + 464) = v0;

  if (v0)
  {

    v2 = MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);
  }

  else
  {
    v2 = MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v104 = v0;
  if (!v0[27])
  {
    outlined destroy of [Int]((v0 + 24), &_s24TokenGenerationInference15LogitCollection_pSgMd);
    goto LABEL_5;
  }

  outlined init with take of LogitCollection(v0 + 24, v0 + 19);
  v5 = v0[22];
  v4 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v5);
  v6 = LogitCollection.isEmpty.getter(v5, v4);
  v7 = v0[54];
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 19));
LABEL_5:

    v3 = v0[53];
    goto LABEL_18;
  }

  v8 = MaximumLikelihoodTreeSpeculator.computeMostLikelyTokens(logitCollection:)(v0 + 19);
  if (*(v7 + 16))
  {
    v4 = v8;
    v10 = v9;
    v11 = v0[54];
    v1 = *(v11 + 40);
    v12 = *(v9 + 16);
    if (v12)
    {
      v13 = *(v11 + 32);
      v0[46] = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v2 = v0[46];
      v14 = *(v2 + 16);
      v15 = 32;
      do
      {
        v16 = *(v10 + v15);
        v100[46] = v2;
        v17 = *(v2 + 24);
        if (v14 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v14 + 1, 1);
          v2 = v100[46];
        }

        *(v2 + 16) = v14 + 1;
        *(v2 + 2 * v14 + 32) = v13 * v16;
        v15 += 2;
        ++v14;
        --v12;
      }

      while (v12);
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v100[53];
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
LABEL_15:
  v20 = *(v3 + 16);
  v19 = *(v3 + 24);
  if (v20 >= v19 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v3);
  }

  v0 = v100;
  *(v3 + 16) = v20 + 1;
  v21 = (v3 + 24 * v20);
  v21[4] = v1;
  v21[5] = v4;
  v21[6] = v2;
  __swift_destroy_boxed_opaque_existential_1((v100 + 19));

LABEL_18:
  v91 = *(v3 + 16);
  if (v91)
  {
    v22 = 0;
    v92 = v3 + 32;
    v102 = v0[55];
    v23 = v102 + 56;
    v24 = MEMORY[0x277D84F90];
    v90 = v3;
    while (v22 < *(v3 + 16))
    {
      v93 = v22;
      v25 = (v92 + 24 * v22);
      v26 = v25[1];
      v101 = *v25;
      v27 = v25[2];
      v28 = *(v26 + 16);

      v99 = v28;
      if (v28)
      {
        v29 = 0;
        v97 = v27 + 32;
        v98 = v26 + 32;
        v3 = v24;
        v95 = v26;
        v96 = v27;
        while (1)
        {
          if (v29 >= *(v26 + 16))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          v31 = *(v27 + 16);
          if (v29 == v31)
          {
            goto LABEL_21;
          }

          if (v29 >= v31)
          {
            goto LABEL_88;
          }

          v32 = *(v98 + 4 * v29);
          v33 = *(v97 + 2 * v29);
          v34 = __swift_project_boxed_opaque_existential_1(v0[47], *(v0[47] + 24));
          v35 = *v34;
          v36 = *(*v34 + 56);
          v24 = *(*v34 + 64);
          __swift_project_boxed_opaque_existential_1((*v34 + 32), v36);
          v37 = (*(v24 + 16))(v101, v32, 0, v36, v24);
          swift_beginAccess();
          v38 = v35[22];
          if (!*(v38 + 16))
          {
            result = swift_endAccess();
            __break(1u);
            return result;
          }

          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
          if (v40)
          {
            v41 = *(*(v38 + 56) + 8 * v39);
          }

          else
          {
            swift_endAccess();
            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
            if ((v43 & 1) == 0)
            {
              goto LABEL_89;
            }

            v94 = v3;
            v44 = *(*(v38 + 56) + 8 * v42);
            v45 = v35[12];
            v24 = v35[13];
            __swift_project_boxed_opaque_existential_1(v35 + 9, v45);
            v41 = (*(v24 + 16))(v44, v32, 0, v45, v24);
            swift_beginAccess();
            v3 = swift_isUniquelyReferenced_nonNull_native();
            v46 = v35[22];
            v0[44] = v46;
            v35[22] = 0x8000000000000000;
            v48 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
            v49 = *(v46 + 16);
            v50 = (v47 & 1) == 0;
            v51 = v49 + v50;
            if (__OFADD__(v49, v50))
            {
              goto LABEL_90;
            }

            v24 = v47;
            if (*(v46 + 24) >= v51)
            {
              if ((v3 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              v0 = v100;
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v3);
              v52 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
              if ((v24 & 1) != (v53 & 1))
              {

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }

              v48 = v52;
            }

            v54 = v100[44];
            v3 = v94;
            if (v24)
            {
              *(v54[7] + 8 * v48) = v41;
            }

            else
            {
              v54[(v48 >> 6) + 8] |= 1 << v48;
              *(v54[6] + 8 * v48) = v37;
              *(v54[7] + 8 * v48) = v41;
              v55 = v54[2];
              v56 = __OFADD__(v55, 1);
              v57 = v55 + 1;
              if (v56)
              {
                goto LABEL_91;
              }

              v54[2] = v57;
            }

            v35[22] = v54;
            v0 = v100;
          }

          v27 = v96;
          ++v29;
          swift_endAccess();
          if (*(v102 + 16) && (v58 = MEMORY[0x223D8F400](*(v102 + 40), v37), v59 = -1 << *(v102 + 32), v60 = v58 & ~v59, ((*(v23 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
          {
            v61 = ~v59;
            while (*(*(v102 + 48) + 8 * v60) != v37)
            {
              v60 = (v60 + 1) & v61;
              if (((*(v23 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
LABEL_50:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
            }

            v63 = *(v3 + 16);
            v62 = *(v3 + 24);
            if (v63 >= v62 >> 1)
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v3);
            }

            *(v3 + 16) = v63 + 1;
            v30 = v3 + 24 * v63;
            *(v30 + 32) = v33;
            *(v30 + 40) = v37;
            *(v30 + 48) = v41;
          }

          v26 = v95;
          if (v29 == v99)
          {
            goto LABEL_21;
          }
        }
      }

      v3 = v24;
LABEL_21:
      v24 = v3;

      v22 = v93 + 1;
      v3 = v90;
      if (v93 + 1 == v91)
      {
        goto LABEL_58;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
    goto LABEL_59;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_59:
  v65 = *(v24 + 16);
  v0[38] = v24 + 32;
  v0[39] = v65;
  v66 = _minimumMergeRunLength(_:)(v65);
  if (v66 >= v65)
  {
    if (v65 >= 2)
    {
      v70 = -1;
      v71 = 1;
      v72 = v24 + 32;
      do
      {
        v73 = *(v24 + 32 + 24 * v71);
        v74 = v70;
        v75 = v72;
        do
        {
          if (*v75 >= v73)
          {
            break;
          }

          v76 = *(v75 + 32);
          *(v75 + 24) = *v75;
          *(v75 + 40) = *(v75 + 16);
          *v75 = v73;
          *(v75 + 8) = v76;
          v75 -= 24;
        }

        while (!__CFADD__(v74++, 1));
        ++v71;
        v72 += 24;
        --v70;
      }

      while (v71 != v65);
    }
  }

  else
  {
    v67 = v66;
    v68 = v65 >> 1;
    if (v65 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Float16V10likelihood_Si6target_Si5draftt8nodePairtMd);
      v69 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v69 + 16) = v68;
    }

    else
    {
      v69 = MEMORY[0x277D84F90];
    }

    v78 = v0[58];
    v0[40] = v69 + 32;
    v0[41] = v68;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)((v0 + 40), (v0 + 45), v0 + 38, v67);
    *(v69 + 16) = 0;

    if (v78)
    {
      return result;
    }
  }

  if (*(v24 + 16))
  {
    v79 = v24;
    specialized Set._Variant.insert(_:)(&v103, *(v24 + 40));
    v80 = v0[42];
    if (*(v80 + 16) < 8uLL)
    {
      v0[54] = v24;
      v0[55] = v80;
      v0[53] = v3;
      v81 = *(v24 + 16);
      v82 = MEMORY[0x277D84F90];
      if (v81)
      {
        v0[43] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
        v82 = v0[43];
        v83 = *(v82 + 16);
        v84 = (v79 + 48);
        do
        {
          v86 = *v84;
          v84 += 3;
          v85 = v86;
          v100[43] = v82;
          v87 = *(v82 + 24);
          if (v83 >= v87 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v83 + 1, 1);
            v82 = v100[43];
          }

          *(v82 + 16) = v83 + 1;
          *(v82 + 8 * v83++ + 32) = v85;
          --v81;
        }

        while (v81);
      }

      v100[56] = v82;
      v89 = swift_task_alloc();
      v100[57] = v89;
      *v89 = v100;
      v89[1] = MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);

      return MaximumLikelihoodTreeSpeculator.DraftLogitCache.draftLogits(draftNodes:)((v100 + 24), v82);
    }
  }

  else
  {
    v80 = v0[55];
  }

  outlined destroy of MaximumLikelihoodTreeSpeculator.DraftLogitCache(v0[51], type metadata accessor for MaximumLikelihoodTreeSpeculator.DraftLogitCache);

  v88 = v0[1];

  return v88(v80);
}

{
  outlined destroy of MaximumLikelihoodTreeSpeculator.DraftLogitCache(*(v0 + 408), type metadata accessor for MaximumLikelihoodTreeSpeculator.DraftLogitCache);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MaximumLikelihoodTreeSpeculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LanguageModelSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:) in conformance MaximumLikelihoodTreeSpeculator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return MaximumLikelihoodTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(a1, a2);
}

uint64_t type metadata accessor for MaximumLikelihoodTreeSpeculator.DraftLogitCache()
{
  result = type metadata singleton initialization cache for MaximumLikelihoodTreeSpeculator.DraftLogitCache;
  if (!type metadata singleton initialization cache for MaximumLikelihoodTreeSpeculator.DraftLogitCache)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(short float *__dst, short float *__src, unint64_t a3, short float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[12 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[12 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 12;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 12;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 12;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[12 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[12 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 12;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (*v16 < v19)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 12, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[12 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t outlined destroy of MaximumLikelihoodTreeSpeculator.DraftLogitCache(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of LogitIndexSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = __CocoaSet.count.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v44 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v41 = v4;
    while (1)
    {
      v13 = MEMORY[0x223D8EEA0](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        type metadata accessor for TGIE5FunctionObjC(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v44;
            v4 = v41;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        v4 = v41;
        if (v12 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v42)
    {
      v28 = *(v6 + 40);
      v29 = *(v4 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v11 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        type metadata accessor for TGIE5FunctionObjC(0, a4);
        while (1)
        {
          v37 = *(*(v6 + 48) + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *(v11 + 8 * (v32 >> 6));
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v33) = v35 | v34;
        *(*(v6 + 48) + 8 * v32) = v29;
        v39 = *(v6 + 16);
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v40;
      }

      if (++v27 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void type metadata completion function for MaximumLikelihoodTreeSpeculator.DraftLogitCache()
{
  type metadata accessor for DraftTargetLanguageModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BasicLogitPresampler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [Int : LogitCollection]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for DraftTargetLanguageModel()
{
  result = lazy cache variable for type metadata for DraftTargetLanguageModel;
  if (!lazy cache variable for type metadata for DraftTargetLanguageModel)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DraftTargetLanguageModel);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = specialized Set._Variant.remove(_:)(*(*(a1 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SpeculativeLanguageModel.__allocating_init(target:draft:stepCount:treeFactor:secondaryTreeFactor:earlyStopTokenId:earlyReturnProbabilityThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, unint64_t a9)
{
  v25 = a5;
  v26 = a7;
  v24 = a4;
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v23 = a9 | ((HIDWORD(a9) & 1) << 32);
  v21 = specialized SpeculativeLanguageModel.__allocating_init(target:draft:stepCount:treeFactor:secondaryTreeFactor:earlyStopTokenId:earlyReturnProbabilityThreshold:)(a1, v19, a3, v24, v25, a6 & 1, v26, a8 & 1, v23, SBYTE4(v23), v9, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v21;
}

uint64_t SpeculativeLanguageModel.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SpeculativeLanguageModel.startNode.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t SpeculativeLanguageModel.nextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 248) = a4;
  *(v5 + 200) = a3;
  *(v5 + 208) = v4;
  *(v5 + 184) = a1;
  *(v5 + 192) = a2;
  return MEMORY[0x2822009F8](SpeculativeLanguageModel.nextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

uint64_t SpeculativeLanguageModel.nextTokenLogits(node:presampler:isPrompt:)()
{
  v1 = *(v0 + 208);
  if (*(v0 + 248) == 1)
  {
    v3 = v1[7];
    v2 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    *v4 = v0;
    v4[1] = SpeculativeLanguageModel.nextTokenLogits(node:presampler:isPrompt:);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);

    return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v7, v5, v6, 1, v3, v2);
  }

  else
  {
    swift_beginAccess();
    v9 = v1[23];
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 192)), (v11 & 1) != 0))
    {
      v12 = *(v0 + 184);
      outlined init with copy of DeterministicLanguageModelProtocol(*(v9 + 56) + 40 * v10, v0 + 56);
      outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
      swift_endAccess();
      outlined init with take of RandomNumberGenerator((v0 + 16), v12);
      v13 = *(v0 + 8);

      return v13();
    }

    else
    {
      v14 = *(v0 + 192);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v15 = swift_allocObject();
      *(v0 + 224) = v15;
      *(v15 + 16) = xmmword_220AE8A30;
      *(v15 + 32) = v14;
      v16 = swift_task_alloc();
      *(v0 + 232) = v16;
      *v16 = v0;
      v16[1] = SpeculativeLanguageModel.nextTokenLogits(node:presampler:isPrompt:);
      v17 = *(v0 + 200);

      return SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:)(v15, v17);
    }
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = SpeculativeLanguageModel.nextTokenLogits(node:presampler:isPrompt:);
  }

  else
  {

    v2 = SpeculativeLanguageModel.nextTokenLogits(node:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 208);
  swift_beginAccess();
  v2 = *(v1 + 184);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 192)), (v4 & 1) != 0))
  {
    outlined init with copy of DeterministicLanguageModelProtocol(*(v2 + 56) + 40 * v3, v0 + 96);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  result = swift_endAccess();
  if (*(v0 + 120))
  {
    outlined init with take of RandomNumberGenerator((v0 + 96), *(v0 + 184));
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:), 0, 0);
}

uint64_t SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:)()
{
  v1 = v0[15];
  if (*(v1 + 169) == 1)
  {
    *(v1 + 169) = 0;
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:);
    v3 = v0[13];

    return SpeculativeLanguageModel.handleEarlyReturn(fromTargetNodes:)(v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:);
    v6 = v0[13];

    return SpeculativeLanguageModel.speculateNextTargetNodes(fromTargetNodes:)(v6);
  }
}

{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 104);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = *(v0 + 120);
      v20 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v5 = v20;
      v7 = (v3 + 32);
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        swift_beginAccess();
        v10 = *(v6 + 176);
        if (!*(v10 + 16))
        {
          break;
        }

        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v13 = *(*(v10 + 56) + 8 * v11);
        swift_endAccess();
        v15 = *(v20 + 16);
        v14 = *(v20 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        }

        *(v20 + 16) = v15 + 1;
        *(v20 + 8 * v15 + 32) = v13;
        if (!--v4)
        {
          goto LABEL_12;
        }
      }

      result = swift_endAccess();
      __break(1u);
    }

    else
    {
LABEL_12:
      *(v0 + 136) = v5;
      v16 = *(v0 + 120);
      v17 = v16[12];
      v18 = v16[13];
      __swift_project_boxed_opaque_existential_1(v16 + 9, v17);
      *(v0 + 40) = &type metadata for NullLogitPresampler;
      *(v0 + 48) = &protocol witness table for NullLogitPresampler;
      v19 = swift_task_alloc();
      *(v0 + 144) = v19;
      *v19 = v0;
      v19[1] = SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:);

      return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v5, v0 + 16, v17, v18);
    }
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:);
  }

  else
  {

    outlined destroy of [Int](v2 + 16, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
    v3 = SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[13];
  v0[22] = v1;
  v2 = v0[15];
  v3 = v2[7];
  v4 = v2[8];
  swift_bridgeObjectRetain_n();
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:);
  v6 = v0[14];

  return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v1, v6, v3, v4);
}

{
  v1 = v0[21];
  v0[22] = v1;
  v2 = v0[15];
  v3 = v2[7];
  v4 = v2[8];

  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:);
  v6 = v0[14];

  return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v1, v6, v3, v4);
}

{
  v1 = *(v0 + 120);
  v2 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSi_24TokenGenerationInference15LogitCollection_ps12Zip2SequenceVySaySiGSayAeF_pGGTt0g5Tf4g_n(*(v0 + 176), *(v0 + 192));

  swift_beginAccess();
  *(v1 + 184) = v2;

  v3 = *(v0 + 8);

  return v3();
}

{
  outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:)(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 200) = a1 & 1;

    return MEMORY[0x2822009F8](SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:), 0, 0);
  }
}

uint64_t SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 168) = a1;

    return MEMORY[0x2822009F8](SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 192) = a1;

    return MEMORY[0x2822009F8](SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:), 0, 0);
  }
}

uint64_t SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 320) = a2;
  *(v4 + 328) = v3;
  *(v4 + 384) = a3;
  *(v4 + 312) = a1;
  return MEMORY[0x2822009F8](SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v43 = v0;
  if (*(v0 + 384) == 1)
  {
    v1 = *(v0 + 328);
    v2 = v1[7];
    v3 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
    v40 = (*(v3 + 24) + **(v3 + 24));
    v4 = swift_task_alloc();
    *(v0 + 336) = v4;
    *v4 = v0;
    v4[1] = SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);

    return v40(v6, v5, 1, v2, v3);
  }

  else
  {
    v8 = *(v0 + 328);
    v9 = *(v0 + 312);
    swift_beginAccess();
    *(v0 + 344) = *(v8 + 184);
    v10 = *(v9 + 16);
    *(v0 + 352) = v10;
    v41 = v10;
    if (v10)
    {
      v11 = (*(v0 + 312) + 32);

      v12 = MEMORY[0x277D84F90];
      do
      {
        v16 = *v11++;
        v15 = v16;
        swift_beginAccess();
        v17 = *(v8 + 184);
        if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v19 & 1) != 0))
        {
          outlined init with copy of DeterministicLanguageModelProtocol(*(v17 + 56) + 40 * v18, v0 + 16);
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        swift_endAccess();
        v20 = *(v0 + 40);
        outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        if (!v20)
        {
          v42 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
            v12 = v42;
          }

          v14 = *(v12 + 16);
          v13 = *(v12 + 24);
          if (v14 >= v13 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
            v12 = v42;
          }

          *(v12 + 16) = v14 + 1;
          *(v12 + 8 * v14 + 32) = v15;
        }

        --v10;
      }

      while (v10);
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }

    *(v0 + 360) = v12;
    if (*(v12 + 16))
    {
      v21 = swift_task_alloc();
      *(v0 + 368) = v21;
      *v21 = v0;
      v21[1] = SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
      v22 = *(v0 + 320);

      return SpeculativeLanguageModel.updateCachedLogits(fromTargetNodes:presampler:)(v12, v22);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
      v24 = v41;
      if (v41)
      {
        v25 = *(v0 + 312);
        v42 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
        v23 = v42;
        v26 = (v25 + 32);
        while (1)
        {
          v28 = *v26++;
          v27 = v28;
          swift_beginAccess();
          v29 = *(v8 + 184);
          if (*(v29 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v31 & 1) != 0))
          {
            outlined init with copy of DeterministicLanguageModelProtocol(*(v29 + 56) + 40 * v30, v0 + 176);
          }

          else
          {
            *(v0 + 208) = 0;
            *(v0 + 176) = 0u;
            *(v0 + 192) = 0u;
          }

          result = swift_endAccess();
          if (!*(v0 + 200))
          {
            break;
          }

          outlined init with take of RandomNumberGenerator((v0 + 176), v0 + 136);
          v42 = v23;
          v33 = *(v23 + 16);
          v32 = *(v23 + 24);
          if (v33 >= v32 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          }

          v34 = *(v0 + 160);
          v35 = *(v0 + 168);
          v36 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v34);
          v37 = *(v34 - 8);
          v38 = swift_task_alloc();
          (*(v37 + 16))(v38, v36, v34);
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v33, v38, &v42, v34, v35);
          __swift_destroy_boxed_opaque_existential_1(v0 + 136);

          v23 = v42;
          if (!--v24)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_33:
        v39 = *(v0 + 8);

        return v39(v23);
      }
    }
  }

  return result;
}

{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {

    v2 = SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 352);
  if (!v1)
  {

    v4 = MEMORY[0x277D84F90];
LABEL_18:
    v21 = *(v0 + 8);

    return v21(v4);
  }

  v22 = *(v0 + 344);
  v2 = *(v0 + 312);
  v23 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = 0;
  v4 = v23;
  v5 = v2 + 32;
  while (1)
  {
    v6 = *(v0 + 328);
    v7 = *(v5 + 8 * v3);
    swift_beginAccess();
    v8 = *(v6 + 184);
    if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v10 & 1) != 0))
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v8 + 56) + 40 * v9, v0 + 96);
    }

    else
    {
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    result = swift_endAccess();
    if (*(v0 + 120))
    {
      outlined init with take of RandomNumberGenerator((v0 + 96), v0 + 56);
      goto LABEL_13;
    }

    if (!*(v22 + 16))
    {
      break;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v12 & 1) == 0)
    {
      goto LABEL_22;
    }

    outlined init with copy of DeterministicLanguageModelProtocol(*(v22 + 56) + 40 * result, v0 + 56);
    if (*(v0 + 120))
    {
      outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
    }

LABEL_13:
    v23 = v4;
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    }

    v15 = *(v0 + 352);
    ++v3;
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v16);
    v19 = *(v16 - 8);
    v20 = swift_task_alloc();
    (*(v19 + 16))(v20, v18, v16);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v14, v20, &v23, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);

    v4 = v23;
    if (v3 == v15)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t SpeculativeLanguageModel.logitsAreDense.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 40))(v1, v2) & 1;
}

Swift::Int __swiftcall SpeculativeLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  if (isPrompt)
  {
    *(v3 + 169) = 1;
  }

  return SpeculativeLanguageModel.nodePair(forPreviousTargetNode:token:isPrompt:)(forPreviousNode, token, isPrompt).target;
}

Swift::tuple_target_Int_draft_Int __swiftcall SpeculativeLanguageModel.nodePair(forPreviousTargetNode:token:isPrompt:)(Swift::Int forPreviousTargetNode, Swift::Int token, Swift::Bool isPrompt)
{
  v4 = v3;
  v5 = isPrompt;
  v8 = v3[7];
  v9 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v8);
  v10 = (*(v9 + 16))(forPreviousTargetNode, token, v5, v8, v9);
  swift_beginAccess();
  v11 = v3[22];
  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  if ((v13 & 1) == 0)
  {
    swift_endAccess();
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(forPreviousTargetNode);
    if (v16)
    {
      v17 = *(*(v11 + 56) + 8 * v15);
      v18 = v4[12];
      v19 = v4[13];
      __swift_project_boxed_opaque_existential_1(v4 + 9, v18);
      v14 = (*(v19 + 16))(v17, token, v5, v18, v19);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v4[22];
      v4[22] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v10, isUniquelyReferenced_nonNull_native);
      v4[22] = v24;
      goto LABEL_6;
    }

    __break(1u);
LABEL_8:
    v21 = swift_endAccess();
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
LABEL_6:
  swift_endAccess();
  v21 = v10;
  v22 = v14;
LABEL_9:
  result.draft = v22;
  result.target = v21;
  return result;
}

Swift::Int __swiftcall SpeculativeLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v3 = v2;
  v5 = *prompt.queryTokens._rawValue;
  v6 = *(prompt.queryTokens._rawValue + 1);
  v7 = *(prompt.queryTokens._rawValue + 2);
  if (!*(*prompt.queryTokens._rawValue + 16) && !*(v6 + 16))
  {
    return forPreviousNode;
  }

  *(v2 + 169) = 1;
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), v8);
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v10 = (*(v9 + 64))(forPreviousNode, &v23, v8, v9);
  swift_beginAccess();
  v11 = *(v2 + 176);
  if (*(v11 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v10);
    v13 = v12;
    swift_endAccess();
    if (v13)
    {
      return v10;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(forPreviousNode);
    if (v15)
    {
      v16 = *(*(v11 + 56) + 8 * v14);
      v17 = v3[12];
      v18 = v3[13];
      __swift_project_boxed_opaque_existential_1(v3 + 9, v17);
      v23 = v5;
      v24 = v6;
      v25 = v7;
      v19 = (*(v18 + 64))(v16, &v23, v17, v18);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v3[22];
      v3[22] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v10, isUniquelyReferenced_nonNull_native);
      v3[22] = v22;
      swift_endAccess();
      return v10;
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SpeculativeLanguageModel.nextTokenLogitsAreComputed(node:)(Swift::Int node)
{
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  if ((*(v4 + 48))(node, v3, v4))
  {
    return 1;
  }

  swift_beginAccess();
  v6 = v1[23];
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(node), (v8 & 1) != 0))
  {
    outlined init with copy of DeterministicLanguageModelProtocol(*(v6 + 56) + 40 * v7, &v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  v5 = *(&v11 + 1) != 0;
  outlined destroy of [Int](&v10, &_s24TokenGenerationInference15LogitCollection_pSgMd);
  return v5;
}

uint64_t SpeculativeLanguageModel.precomputedNodeBatchDepth.getter()
{
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t SpeculativeLanguageModel.speculateNextTargetNodes(fromTargetNodes:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  return MEMORY[0x2822009F8](SpeculativeLanguageModel.speculateNextTargetNodes(fromTargetNodes:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = SpeculativeLanguageModel.speculateNextTargetNodes(fromTargetNodes:);
  }

  else
  {
    *(v4 + 136) = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 16);
    v5 = SpeculativeLanguageModel.speculateNextTargetNodes(fromTargetNodes:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t SpeculativeLanguageModel.speculateNextTargetNodes(fromTargetNodes:)()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v3 = v0[12];
    v4 = v0[13];
    v5 = *(v1 + 32);
    v6 = v3[17];
    v7 = v3[18];
    __swift_project_boxed_opaque_existential_1(v3 + 14, v6);
    v0[5] = v4;
    v0[6] = &protocol witness table for SpeculativeLanguageModel;
    v0[2] = v3;
    v8 = *(v7 + 16);

    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = SpeculativeLanguageModel.speculateNextTargetNodes(fromTargetNodes:);

    return (v13)(v0 + 2, v5, v6, v7);
  }

  else
  {
    v11 = v0[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

{
  v15 = v0;
  v0[10] = v0[17];
  v1 = v0[16];
  swift_beginAccess();

  specialized Sequence.forEach(_:)(v2);

  v3 = 0;
  do
  {
    v4 = v0[14];
    v5 = *(v0[11] + 8 * v3++ + 32);
    specialized Set._Variant.insert(_:)(&v14, v5);
  }

  while (v3 != v4);
  v6 = v0[10];
  v7 = *(v6 + 16);
  if (v7)
  {
    v13 = v1;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v7, 0);
    v9 = specialized Sequence._copySequenceContents(initializing:)(&v14, v8 + 4, v7, v6);

    result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
    if (v9 != v7)
    {
      __break(1u);
      return result;
    }

    v1 = v13;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v14 = v8;
  specialized MutableCollection<>.sort(by:)(&v14);
  if (v1)
  {
  }

  else
  {

    v11 = v14;
    v12 = v0[1];

    return v12(v11);
  }
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SpeculativeLanguageModel.handleEarlyReturn(fromTargetNodes:)(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
  return MEMORY[0x2822009F8](SpeculativeLanguageModel.handleEarlyReturn(fromTargetNodes:), 0, 0);
}

uint64_t SpeculativeLanguageModel.handleEarlyReturn(fromTargetNodes:)()
{
  v1 = *(v0 + 272);
  *(v0 + 280) = *(v1 + 152);
  if ((*(v1 + 160) & 1) != 0 || (v2 = *(v0 + 264), *(v2 + 16) != 1))
  {
    v12 = *(v0 + 8);

    return v12(0);
  }

  else
  {
    v3 = *(v2 + 32);
    *(v0 + 288) = v3;
    swift_beginAccess();
    v4 = *(v1 + 176);
    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v6 & 1) != 0))
    {
      v7 = *(v0 + 272);
      v8 = *(*(v4 + 56) + 8 * v5);
      swift_endAccess();
      *(v0 + 312) = *(v7 + 164);
      v9 = *(v7 + 168);
      *(v0 + 316) = v9;
      if (v9)
      {
        v10 = type metadata accessor for ArgmaxPresampler();
        v11 = &protocol witness table for ArgmaxPresampler;
      }

      else
      {
        v10 = type metadata accessor for BasicLogitPresampler();
        v11 = &protocol witness table for BasicLogitPresampler;
      }

      v14 = *(v0 + 272);
      *(v0 + 120) = v10;
      *(v0 + 128) = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      v16 = type metadata accessor for LogitIndexSet();
      (*(*(v16 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v16);
      v17 = v14[12];
      v18 = v14[13];
      __swift_project_boxed_opaque_existential_1(v14 + 9, v17);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 96, v0 + 176);
      v19 = swift_task_alloc();
      *(v0 + 296) = v19;
      *v19 = v0;
      v19[1] = SpeculativeLanguageModel.handleEarlyReturn(fromTargetNodes:);

      return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v0 + 136, v8, v0 + 176, 0, v17, v18);
    }

    else
    {
      result = swift_endAccess();
      __break(1u);
    }
  }

  return result;
}

{
  v2 = *v1;
  *(v2 + 304) = v0;

  outlined destroy of [Int](v2 + 176, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
  if (v0)
  {
    v3 = SpeculativeLanguageModel.handleEarlyReturn(fromTargetNodes:);
  }

  else
  {
    v3 = SpeculativeLanguageModel.handleEarlyReturn(fromTargetNodes:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v37 = v0;
  v3 = *(v0 + 280);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = 0;
  if ((v8 & 1) == 0 && v6 == v3)
  {
    if (*(v0 + 316))
    {
LABEL_11:
      v29 = *(v0 + 280);
      v28 = *(v0 + 288);
      v30 = *(v0 + 272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_24TokenGenerationInference15LogitCollection_ptGMd);
      inited = swift_initStackObject();
      *(inited + 32) = v28;
      v32 = inited + 32;
      *(inited + 16) = xmmword_220AE8A30;
      *(inited + 64) = &type metadata for EarlyReturnLogits;
      *(inited + 72) = &protocol witness table for EarlyReturnLogits;
      *(inited + 40) = v29;
      v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of [Int](v32, &_sSi_24TokenGenerationInference15LogitCollection_ptMd);
      v7 = 1;
      swift_beginAccess();
      *(v30 + 184) = v33;

      goto LABEL_12;
    }

    v9 = *(v0 + 280);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v10);
    v12 = (*(v11 + 56))(v10, v11);
    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 280);
      if (v13 < *(v12 + 16))
      {
        _S8 = *(v0 + 312);
        v2 = *(v12 + 32 + 2 * v13);
        if (one-time initialization token for device == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_7:
    __asm { FCVT            H10, S8 }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.device);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 312);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 67109634;
      *(v23 + 4) = v2 >= _H10;
      *(v23 + 8) = 2080;

      v25 = Float16.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v36);

      *(v23 + 10) = v27;
      *(v23 + 18) = 2048;
      *(v23 + 20) = v22;
      _os_log_impl(&dword_220940000, v20, v21, "shouldDoEarlyReturn: %{BOOL}d, Stop token probability: %s, Early return probability threshold: %f", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223D90A10](v24, -1, -1);
      MEMORY[0x223D90A10](v23, -1, -1);

      if (v2 < _H10)
      {
LABEL_9:
        v7 = 0;
        goto LABEL_12;
      }
    }

    else
    {

      if (v2 < _H10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v34 = *(v0 + 8);

  return v34(v7);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t SpeculativeLanguageModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return v0;
}

uint64_t SpeculativeLanguageModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.startNode.getter in conformance SpeculativeLanguageModel()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 8))(v1, v2);
}

Swift::Int protocol witness for DeterministicLanguageModelProtocol.node(forPreviousNode:token:isPrompt:) in conformance SpeculativeLanguageModel(Swift::Int a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  if (a3)
  {
    *(v4 + 169) = 1;
  }

  return SpeculativeLanguageModel.nodePair(forPreviousTargetNode:token:isPrompt:)(a1, a2, a3 & 1).target;
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeLanguageModel(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return SpeculativeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2, a3);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.logitsAreDense.getter in conformance SpeculativeLanguageModel()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 40))(v1, v2) & 1;
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.precomputedNodeBatchDepth.getter in conformance SpeculativeLanguageModel()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 144);
  __swift_project_boxed_opaque_existential_1((*v0 + 112), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t specialized SpeculativeLanguageModel.__allocating_init(target:draft:stepCount:treeFactor:secondaryTreeFactor:earlyStopTokenId:earlyReturnProbabilityThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v45[3] = a12;
  v45[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a2, a12);
  if (a4 == 1)
  {
    v43 = &type metadata for LinearSpeculator;
    v44 = &protocol witness table for LinearSpeculator;
    v20 = swift_allocObject();
    *&v42 = v20;
    v20[2] = a3;
    v20[6] = type metadata accessor for ArgmaxPresampler();
    v20[7] = &protocol witness table for ArgmaxPresampler;
    v21 = __swift_allocate_boxed_opaque_existential_1(v20 + 3);
    v22 = type metadata accessor for LogitIndexSet();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  }

  else
  {
    v43 = &type metadata for TopKTreeSpeculator;
    v44 = &protocol witness table for TopKTreeSpeculator;
    v23 = swift_allocObject();
    *&v42 = v23;
    *&v39 = a3;
    *(&v39 + 1) = a4;
    if (a6)
    {
      v24 = a4;
    }

    else
    {
      v24 = a5;
    }

    *&v40[0] = v24;
    if (a4 == 2)
    {
      *&v41 = &type metadata for TopK2Presampler;
      *(&v41 + 1) = &protocol witness table for TopK2Presampler;
    }

    else
    {
      *&v41 = type metadata accessor for BasicLogitPresampler();
      *(&v41 + 1) = &protocol witness table for BasicLogitPresampler;
      v25 = __swift_allocate_boxed_opaque_existential_1(v40 + 1);
      v26 = type metadata accessor for LogitIndexSet();
      (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    }

    v27 = v40[0];
    v23[1] = v39;
    v23[2] = v27;
    v28 = v41;
    v23[3] = v40[1];
    v23[4] = v28;
  }

  outlined init with take of RandomNumberGenerator(&v42, &v39);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, &v42);
  outlined init with copy of DeterministicLanguageModelProtocol(v45, v38);
  outlined init with copy of DeterministicLanguageModelProtocol(&v39, v37);
  v29 = swift_allocObject();
  *(v29 + 169) = 0;
  *(v29 + 184) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  outlined init with copy of DeterministicLanguageModelProtocol(&v42, v29 + 32);
  outlined init with copy of DeterministicLanguageModelProtocol(v38, v29 + 72);
  outlined init with copy of DeterministicLanguageModelProtocol(v37, v29 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SitGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  v31 = v43;
  v32 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, v43);
  *(inited + 32) = (v32[1])(v31, v32);
  *(inited + 40) = (*(a13 + 8))(a12, a13);
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  __swift_destroy_boxed_opaque_existential_1(v45);
  *(v29 + 176) = v33;
  *(v29 + 152) = a7;
  *(v29 + 160) = a8 & 1;
  *(v29 + 164) = a9;
  *(v29 + 168) = a10 & 1;
  *(v29 + 16) = 0xD000000000000018;
  *(v29 + 24) = 0x8000000220AEF680;
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  return v29;
}

uint64_t *specialized Sequence._copyContents(initializing:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(int64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t))
{
  v3 = a1;
  if (a1 > 0)
  {
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0);
    v5 = 0;
    v6 = v26;
    v7 = 0x8000000220AFEEB0;
    v8 = 1;
    v9 = v3;
    while (1)
    {
      if (v5)
      {
        goto LABEL_30;
      }

      v10 = v3;
      _StringGuts.grow(_:)(20);

      v27[0] = 0xD000000000000011;
      v27[1] = 0x8000000220AFEEB0;
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v11);

      MEMORY[0x223D8E780](62, 0xE100000000000000);
      v12 = a3(0xD000000000000011, 0x8000000220AFEEB0);

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v15;
      *(v26 + 8 * v14 + 32) = v12;
      v3 = v10;
      v5 = v8 == v10;
      if (v8 == v10)
      {
        v8 = 0;
      }

      else if (__OFADD__(v8++, 1))
      {
        __break(1u);
LABEL_26:
        swift_once();
LABEL_17:
        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.speculativeDecode);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_220940000, v20, v21, "Speculative streaming tokenizer does not have all <spec_stream_pos_XXX> tokens defined. Falling back to last tokens.", v22, 2u);
          MEMORY[0x223D90A10](v22, -1, -1);
        }

        v23 = v7 - v3;
        if (__OFSUB__(v7, v3))
        {
          __break(1u);
        }

        else if (v23 <= v7)
        {
          if (!__OFSUB__(v7, v23))
          {
            if (v3)
            {
              v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v3, 0);
              if (specialized Sequence._copyContents(initializing:)(v27, (v24 + 4), v3, v7 - v3, v7) != v3)
              {
                __break(1u);
              }
            }

            return;
          }

LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_29;
      }

      v9 = (v9 - 1);
      if (!v9)
      {
        goto LABEL_13;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);
LABEL_13:
  v17 = 32;
  while (v15)
  {
    v18 = *(v6 + v17);
    v17 += 8;
    --v15;
    if (!v18)
    {

      v7 = a2;
      if (one-time initialization token for speculativeDecode != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }
  }
}

void *SpeculativeStreamingLanguageModel.__allocating_init(baseLanguageModel:treeFactor:streamTokenIDs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  v6[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v7);
  outlined init with take of RandomNumberGenerator(a1, (v6 + 2));
  v6[7] = a2;
  v6[8] = a3;
  return v6;
}

void *SpeculativeStreamingLanguageModel.init(baseLanguageModel:treeFactor:streamTokenIDs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D84F90];
  v3[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v7);
  outlined init with take of RandomNumberGenerator(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;
  return v3;
}

uint64_t SpeculativeStreamingLanguageModel.streamNodes(forNode:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = v1;
  v32 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v32;
  swift_beginAccess();
  v7 = 0;
  while (v7 < *(v2 + 16))
  {
    v8 = *(v2 + 32 + 8 * v7);
    outlined init with copy of DeterministicLanguageModelProtocol(v5 + 16, v29);
    v9 = v30;
    v10 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v11 = (*(v10 + 16))(a1, v8, 0, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + 80);
    *(v5 + 80) = 0x8000000000000000;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

LABEL_9:
      v22 = v13;
      if (v20)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v23 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v23;
    v22 = v13;
    if (v20)
    {
LABEL_10:
      *(v22[7] + 8 * v14) = a1;
      goto LABEL_14;
    }

LABEL_12:
    v22[(v14 >> 6) + 8] |= 1 << v14;
    *(v22[6] + 8 * v14) = v11;
    *(v22[7] + 8 * v14) = a1;
    v24 = v22[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_20;
    }

    v22[2] = v25;
LABEL_14:
    *(v5 + 80) = v22;
    swift_endAccess();
    v32 = v4;
    v27 = *(v4 + 16);
    v26 = *(v4 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      v4 = v32;
    }

    ++v7;
    *(v4 + 16) = v27 + 1;
    *(v4 + 8 * v27 + 32) = v11;
    a1 = v11;
    if (v3 == v7)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SpeculativeStreamingLanguageModel.makeNextDraftTree(lastAcceptedNode:nextSpeculativeTokens:)(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  *(inited + 32) = a1;
  v67 = a1;
  v68 = *(a2 + 16);
  if (v68)
  {
    v5 = 0;
    v69 = a2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *(v69 + 8 * v5);
      v70 = v5 + 1;
      v8 = *(inited + 16);
      v74 = v7 + 32;

      v9 = 0;
      while (v8 != v9)
      {
        if (v9 >= v8)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
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
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_71;
        }

        v10 = *(inited + 16);
        if (!v10)
        {
          goto LABEL_72;
        }

        v75 = v9 + 1;
        v11 = v10 - 1;
        v77 = *(inited + 32);
        if ((v10 - 1) > *(inited + 24) >> 1)
        {
          inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v10, 1, inited);
          v10 = *(inited + 16);
          v11 = v10 - 1;
        }

        memmove((inited + 32), (inited + 40), 8 * v10 - 8);
        *(inited + 16) = v11;
        v12 = *(v7 + 16);
        ++v9;
        if (v12)
        {
          swift_beginAccess();
          v13 = 0;
          v72 = v12;
          v73 = v7;
          v71 = v8;
          do
          {
            if (v13 >= *(v7 + 16))
            {
              goto LABEL_73;
            }

            v14 = v6;
            v15 = *(v74 + 8 * v13);
            outlined init with copy of DeterministicLanguageModelProtocol(v76 + 16, v80);
            v16 = v81;
            v17 = v82;
            __swift_project_boxed_opaque_existential_1(v80, v81);
            v18 = (*(v17 + 16))(v77, v15, 0, v16, v17);
            __swift_destroy_boxed_opaque_existential_1(v80);
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v79 = *(v76 + 80);
            *(v76 + 80) = 0x8000000000000000;
            v21 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
            v22 = *(v79 + 16);
            v23 = (v20 & 1) == 0;
            v24 = v22 + v23;
            if (__OFADD__(v22, v23))
            {
              goto LABEL_74;
            }

            v25 = v20;
            if (*(v79 + 24) >= v24)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v26 = v79;
                v6 = v14;
                if (v20)
                {
                  goto LABEL_21;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd);
                v30 = static _DictionaryStorage.copy(original:)();
                v26 = v30;
                v6 = v14;
                if (*(v79 + 16))
                {
                  v31 = (v30 + 64);
                  v32 = v79 + 64;
                  v33 = ((1 << *(v26 + 32)) + 63) >> 6;
                  if (v26 != v79 || v31 >= v32 + 8 * v33)
                  {
                    memmove(v31, (v79 + 64), 8 * v33);
                  }

                  v34 = 0;
                  *(v26 + 16) = *(v79 + 16);
                  v35 = 1 << *(v79 + 32);
                  if (v35 < 64)
                  {
                    v36 = ~(-1 << v35);
                  }

                  else
                  {
                    v36 = -1;
                  }

                  v37 = v36 & *(v79 + 64);
                  v38 = (v35 + 63) >> 6;
                  if (!v37)
                  {
                    goto LABEL_31;
                  }

                  while (1)
                  {
                    v39 = __clz(__rbit64(v37));
                    v37 &= v37 - 1;
                    for (i = v39 | (v34 << 6); ; i = __clz(__rbit64(v42)) | (v34 << 6))
                    {
                      v43 = *(*(v79 + 56) + 8 * i);
                      *(*(v26 + 48) + 8 * i) = *(*(v79 + 48) + 8 * i);
                      *(*(v26 + 56) + 8 * i) = v43;
                      if (v37)
                      {
                        break;
                      }

LABEL_31:
                      v41 = v34;
                      do
                      {
                        v34 = v41 + 1;
                        if (__OFADD__(v41, 1))
                        {
                          goto LABEL_81;
                        }

                        if (v34 >= v38)
                        {
                          goto LABEL_38;
                        }

                        v42 = *(v32 + 8 * v34);
                        ++v41;
                      }

                      while (!v42);
                      v37 = (v42 - 1) & v42;
                    }
                  }
                }

LABEL_38:

                if (v25)
                {
                  goto LABEL_21;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
              v26 = v79;
              v27 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
              if ((v25 & 1) != (v28 & 1))
              {
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v21 = v27;
              v6 = v14;
              if (v25)
              {
LABEL_21:
                v29 = v18;
                *(*(v26 + 56) + 8 * v21) = v18;
                goto LABEL_41;
              }
            }

            *(v26 + 8 * (v21 >> 6) + 64) |= 1 << v21;
            *(*(v26 + 48) + 8 * v21) = v77;
            *(*(v26 + 56) + 8 * v21) = v18;
            v44 = *(v26 + 16);
            v45 = __OFADD__(v44, 1);
            v46 = v44 + 1;
            if (v45)
            {
              goto LABEL_75;
            }

            v29 = v18;
            *(v26 + 16) = v46;
LABEL_41:
            *(v76 + 80) = v26;
            swift_endAccess();
            v48 = *(inited + 16);
            v47 = *(inited + 24);
            v8 = v71;
            if (v48 >= v47 >> 1)
            {
              inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, inited);
            }

            *(inited + 16) = v48 + 1;
            *(inited + 8 * v48 + 32) = v29;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
            }

            v50 = *(v6 + 2);
            v49 = *(v6 + 3);
            if (v50 >= v49 >> 1)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v6);
            }

            ++v13;
            *(v6 + 2) = v50 + 1;
            *&v6[8 * v50 + 32] = v29;
            v7 = v73;
          }

          while (v13 != v72);
          v9 = v75;
        }
      }

      v5 = v70;
      if (v70 == v68)
      {
        goto LABEL_50;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_50:
  v78 = SpeculativeStreamingLanguageModel.streamNodes(forNode:)(v67);
  v51 = *(v6 + 2);

  if (v51)
  {
    v52 = 0;
    v53 = v6 + 32;
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v52 >= *(v6 + 2))
      {
        goto LABEL_76;
      }

      v55 = v6;
      v56 = SpeculativeStreamingLanguageModel.streamNodes(forNode:)(*&v53[8 * v52]);
      v57 = *(v56 + 16);
      v58 = *(v54 + 2);
      v59 = v58 + v57;
      if (__OFADD__(v58, v57))
      {
        goto LABEL_77;
      }

      v60 = v56;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      if (v61 && v59 <= *(v54 + 3) >> 1)
      {
        if (!*(v60 + 16))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v58 <= v59)
        {
          v62 = v58 + v57;
        }

        else
        {
          v62 = v58;
        }

        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61, v62, 1, v54);
        if (!*(v60 + 16))
        {
LABEL_52:

          if (v57)
          {
            goto LABEL_78;
          }

          goto LABEL_53;
        }
      }

      v63 = *(v54 + 2);
      if ((*(v54 + 3) >> 1) - v63 < v57)
      {
        goto LABEL_79;
      }

      memcpy(&v54[8 * v63 + 32], (v60 + 32), 8 * v57);

      if (v57)
      {
        v64 = *(v54 + 2);
        v45 = __OFADD__(v64, v57);
        v65 = v64 + v57;
        if (v45)
        {
          goto LABEL_80;
        }

        *(v54 + 2) = v65;
      }

LABEL_53:
      ++v52;
      v6 = v55;
      if (v51 == v52)
      {
        goto LABEL_69;
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_69:

  v80[0] = v78;
  specialized Array.append<A>(contentsOf:)(v54);
  return v6;
}

uint64_t SpeculativeStreamingLanguageModel.computeNextBatch(nodes:presampler:)(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return MEMORY[0x2822009F8](SpeculativeStreamingLanguageModel.computeNextBatch(nodes:presampler:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    outlined destroy of [Int](v4 + 96, &_s24TokenGenerationInference15LogitPresampler_pSgMd);

    v5 = SpeculativeStreamingLanguageModel.computeNextBatch(nodes:presampler:);
  }

  else
  {
    *(v4 + 312) = a1;
    outlined destroy of [Int](v4 + 96, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
    v5 = SpeculativeStreamingLanguageModel.computeNextBatch(nodes:presampler:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t SpeculativeStreamingLanguageModel.computeNextBatch(nodes:presampler:)()
{
  v52 = v0;
  v1 = *(v0 + 272);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 280);
    v3 = *(v1 + 32);
    swift_beginAccess();
    v4 = *(v2 + 80);
    if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v6 & 1) == 0))
    {
LABEL_38:
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = SpeculativeStreamingLanguageModel.streamNodes(forNode:)(v7);
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10)
    {
      v45 = v3;
      v11 = 0;
      v12 = *(v0 + 280);
      v13 = v8 + 32;
      v14 = MEMORY[0x277D84F90];
      v46 = v8;
      v47 = v8 + 32;
      v48 = *(v8 + 16);
      while (1)
      {
        if (v11 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        v15 = *(v13 + 8 * v11);
        swift_beginAccess();
        v16 = *(v12 + 72);
        if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v18 & 1) != 0))
        {
          outlined init with copy of DeterministicLanguageModelProtocol(*(v16 + 56) + 40 * v17, v0 + 16);
          if (*(v0 + 40))
          {
            outlined init with copy of DeterministicLanguageModelProtocol(v0 + 16, v0 + 136);
            outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
            swift_endAccess();
            v19 = *(v0 + 160);
            v20 = *(v0 + 168);
            __swift_project_boxed_opaque_existential_1((v0 + 136), v19);
            v21 = (*(v20 + 40))(*(v12 + 56), v19, v20);
            v22 = *(v21 + 16);
            if (v22)
            {
              v49 = v14;
              v51 = MEMORY[0x277D84F90];
              v50 = v21;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
              v23 = v50;
              v24 = v51;
              v25 = *(v51 + 2);
              v26 = 32;
              do
              {
                v27 = *(v23 + v26);
                v51 = v24;
                v28 = *(v24 + 3);
                if (v25 >= v28 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v25 + 1, 1);
                  v23 = v50;
                  v24 = v51;
                }

                *(v24 + 2) = v25 + 1;
                *&v24[8 * v25 + 32] = v27;
                v26 += 4;
                ++v25;
                --v22;
              }

              while (v22);

              v9 = v46;
              v14 = v49;
            }

            else
            {

              v24 = MEMORY[0x277D84F90];
            }

            __swift_destroy_boxed_opaque_existential_1(v0 + 136);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
            }

            v30 = v14[2];
            v29 = v14[3];
            if (v30 >= v29 >> 1)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v14);
            }

            v14[2] = v30 + 1;
            v14[v30 + 4] = v24;
            v13 = v47;
            v10 = v48;
            goto LABEL_8;
          }
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        swift_endAccess();
LABEL_8:
        if (++v11 == v10)
        {

          v3 = v45;
          goto LABEL_30;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_30:
    v33 = *(v0 + 272);
    SpeculativeStreamingLanguageModel.makeNextDraftTree(lastAcceptedNode:nextSpeculativeTokens:)(v3, v14);

    specialized Array.append<A>(contentsOf:)(v34);

    specialized Array.append<A>(contentsOf:)(v35);

    v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v33);

    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v36 + 16), 0);
      v39 = specialized Sequence._copySequenceContents(initializing:)(&v51, v38 + 4, v37, v36);

      outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
      if (v39 == v37)
      {
LABEL_34:
        v51 = v38;
        specialized MutableCollection<>.sort(by:)(&v51);
        v40 = *(v0 + 280);

        v41 = v51;
        *(v0 + 288) = v51;
        swift_beginAccess();
        outlined init with copy of DeterministicLanguageModelProtocol(v40 + 16, v0 + 56);
        v42 = *(v0 + 80);
        v43 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        v44 = swift_task_alloc();
        *(v0 + 296) = v44;
        *v44 = v0;
        v44[1] = SpeculativeStreamingLanguageModel.computeNextBatch(nodes:presampler:);

        return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v41, v0 + 96, v42, v43);
      }

      __break(1u);
    }

    v38 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v31 = *(v0 + 8);

  return v31();
}

{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v4 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSi_24TokenGenerationInference15LogitCollection_ps12Zip2SequenceVySaySiGSayAeF_pGGTt0g5Tf4g_n(v2, v1);

  swift_beginAccess();
  *(v3 + 72) = v4;

  v5 = v0[1];

  return v5();
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SpeculativeStreamingLanguageModel.startNode.getter()
{
  swift_beginAccess();
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v4 = *(v1 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = (*(v2 + 8))(v1, v2);
  (*(v4 + 8))(v6, v1);
  return v7;
}

Swift::Bool __swiftcall SpeculativeStreamingLanguageModel.nextTokenLogitsAreComputed(node:)(Swift::Int node)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(node), (v5 & 1) != 0))
  {
    outlined init with copy of DeterministicLanguageModelProtocol(*(v3 + 56) + 40 * v4, &v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  swift_endAccess();
  v6 = *(&v9 + 1) != 0;
  outlined destroy of [Int](&v8, &_s24TokenGenerationInference15LogitCollection_pSgMd);
  return v6;
}

uint64_t SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2);
}

uint64_t SpeculativeStreamingLanguageModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t SpeculativeStreamingLanguageModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.startNode.getter in conformance SpeculativeStreamingLanguageModel()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[5];
  v3 = v1[6];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v5 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v3 + 8))(v2, v3);
  (*(v5 + 8))(v7, v2);
  return v8;
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2);
}

uint64_t specialized SpeculativeStreamingLanguageModel.node(forPreviousNode:token:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v3 + 16, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = (*(v7 + 16))(a1, a2, 0, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 80);
  *(v3 + 80) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, isUniquelyReferenced_nonNull_native);
  *(v3 + 80) = v11;
  swift_endAccess();
  return v8;
}

uint64_t specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v4 = type metadata accessor for ContiguousBitSet();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = type metadata accessor for LogitIndexSet();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v35 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  swift_beginAccess();
  *(v0 + 472) = *(v1 + 72);
  v3 = *(v2 + 16);
  *(v0 + 480) = v3;
  v33 = v3;
  if (v3)
  {
    v4 = (*(v0 + 352) + 32);

    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v4++;
      v8 = v9;
      swift_beginAccess();
      v10 = *(v1 + 72);
      if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v12 & 1) != 0))
      {
        outlined init with copy of DeterministicLanguageModelProtocol(*(v10 + 56) + 40 * v11, v0 + 16);
      }

      else
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      swift_endAccess();
      v13 = *(v0 + 40);
      outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      if (!v13)
      {
        v34 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
          v5 = v34;
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v5 = v34;
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *(v0 + 488) = v5;
  if (*(v5 + 16))
  {
    v14 = swift_task_alloc();
    *(v0 + 496) = v14;
    *v14 = v0;
    v14[1] = specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);

    return SpeculativeStreamingLanguageModel.computeNextBatch(nodes:presampler:)(v5);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
    v17 = v33;
    if (v33)
    {
      v18 = *(v0 + 352);
      v34 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
      v16 = v34;
      v19 = (v18 + 32);
      while (1)
      {
        v21 = *v19++;
        v20 = v21;
        swift_beginAccess();
        v22 = *(v1 + 72);
        if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v24 & 1) != 0))
        {
          outlined init with copy of DeterministicLanguageModelProtocol(*(v22 + 56) + 40 * v23, v0 + 216);
        }

        else
        {
          *(v0 + 248) = 0;
          *(v0 + 232) = 0u;
          *(v0 + 216) = 0u;
        }

        result = swift_endAccess();
        if (!*(v0 + 240))
        {
          break;
        }

        outlined init with take of RandomNumberGenerator((v0 + 216), v0 + 176);
        v34 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        }

        v27 = *(v0 + 200);
        v28 = *(v0 + 208);
        v29 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v27);
        v30 = *(v27 - 8);
        v31 = swift_task_alloc();
        (*(v30 + 16))(v31, v29, v27);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v26, v31, &v34, v27, v28);
        __swift_destroy_boxed_opaque_existential_1(v0 + 176);

        v16 = v34;
        if (!--v17)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:

      v32 = *(v0 + 8);

      return v32(v16);
    }
  }

  return result;
}

{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {

    v2 = specialized SpeculativeStreamingLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v70 = v0;
  v1 = *(v0 + 480);
  if (!v1)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_40:

    v61 = *(v0 + 8);

    return v61(v5);
  }

  v67 = *(v0 + 472);
  v62 = *(v0 + 424);
  v2 = *(v0 + 384);
  v64 = *(v0 + 368);
  v65 = *(v0 + 456);
  v3 = *(v0 + 352);
  v69 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = 0;
  v68 = v3 + 32;
  v5 = v69;
  v66 = (v2 + 32);
  v6 = (v2 + 8);
  v63 = (v2 + 16);
  while (1)
  {
    v7 = *(v0 + 368);
    v8 = *(v68 + 8 * v4);
    swift_beginAccess();
    v9 = *(v7 + 72);
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v11 & 1) != 0))
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v9 + 56) + 40 * v10, v0 + 136);
    }

    else
    {
      *(v0 + 168) = 0;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
    }

    result = swift_endAccess();
    if (*(v0 + 160))
    {
      outlined init with take of RandomNumberGenerator((v0 + 136), v0 + 96);
    }

    else
    {
      if (!*(v67 + 16))
      {
        goto LABEL_44;
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if ((v13 & 1) == 0)
      {
        goto LABEL_45;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(*(v67 + 56) + 40 * result, v0 + 96);
      if (*(v0 + 160))
      {
        outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      }
    }

    v15 = *(v0 + 456);
    v14 = *(v0 + 464);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v17);
    (*(v16 + 8))(v17, v16);
    outlined init with copy of LogitIndexSet(v14, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *(v0 + 456);
    v20 = *(v0 + 464);
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v23 = *(v0 + 408);
    v24 = *(v0 + 376);
    (*v66)(v23, *(v0 + 456), v24);
    v22 = ContiguousBitSet.last.getter();
    v26 = v25;
    (*v6)(v23, v24);
    result = outlined destroy of LogitIndexSet(v20);
    if ((v26 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    outlined init with take of RandomNumberGenerator((v0 + 96), v0 + 56);
LABEL_32:
    v69 = v5;
    v52 = *(v5 + 16);
    v51 = *(v5 + 24);
    if (v52 >= v51 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
    }

    ++v4;
    v53 = *(v0 + 480);
    v54 = *(v0 + 80);
    v55 = *(v0 + 88);
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v54);
    v57 = *(v54 - 8);
    v58 = swift_task_alloc();
    (*(v57 + 16))(v58, v56, v54);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v52, v58, &v69, v54, v55);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);

    v5 = v69;
    if (v4 == v53)
    {

      goto LABEL_40;
    }
  }

  result = outlined destroy of LogitIndexSet(*(v0 + 464));
  v21 = *(v65 + 8);
  if (*v19 == v21)
  {
    goto LABEL_18;
  }

  if (*v19 >= v21)
  {
    goto LABEL_46;
  }

  v22 = v21 - 1;
LABEL_19:
  if ((v22 & 0x8000000000000000) == 0)
  {
    ContiguousBitSet.init(_:)();
    v27 = *(v64 + 64);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 32);
      do
      {
        v30 = *v29++;
        ContiguousBitSet.remove(_:)(v30);
        --v28;
      }

      while (v28);
    }

    v32 = *(v0 + 392);
    v31 = *(v0 + 400);
    v33 = *(v0 + 376);
    v34 = *(v0 + 120);
    v35 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v34);
    (*(v35 + 8))(v34, v35);
    (*v63)(v32, v31, v33);
    if (ContiguousBitSet.isDense.getter())
    {
      v36 = ContiguousBitSet.first.getter();
      if (v37 & 1) != 0 || (v38 = v36, v39 = ContiguousBitSet.last.getter(), (v40))
      {
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v42 = *(v0 + 416);
        v41 = *(v0 + 424);
        (*v6)(*(v0 + 392), *(v0 + 376));
        v43 = __swift_project_value_buffer(v42, static LogitIndexSet.empty);
        outlined init with copy of LogitIndexSet(v43, v41);
        goto LABEL_31;
      }

      v59 = v39;
      result = (*v6)(*(v0 + 392), *(v0 + 376));
      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_47;
      }

      if (v60 < v38)
      {
        goto LABEL_48;
      }

      **(v0 + 424) = v38;
      *(v62 + 8) = v60;
    }

    else
    {
      (*v66)(*(v0 + 424), *(v0 + 392), *(v0 + 376));
    }

    swift_storeEnumTagMultiPayload();
LABEL_31:
    v45 = *(v0 + 440);
    v44 = *(v0 + 448);
    v46 = *(v0 + 432);
    v47 = *(v0 + 400);
    v48 = *(v0 + 376);
    outlined init with take of LogitIndexSet(*(v0 + 424), v46);
    outlined init with copy of LogitIndexSet(v45, v44);
    LogitIndexSet.formIntersection(_:)(v46);
    outlined destroy of LogitIndexSet(v46);
    outlined destroy of LogitIndexSet(v45);
    v49 = *(v0 + 120);
    v50 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v49);
    (*(v50 + 80))(v44, v49, v50);
    outlined destroy of LogitIndexSet(v44);
    (*v6)(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    goto LABEL_32;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(uint64_t *a1, uint64_t a2)
{
  if (a1 > 0)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0);
    v3 = 0;
    v4 = v22;
    v5 = 1;
    v6 = a1;
    while (1)
    {
      if (v3)
      {
        goto LABEL_31;
      }

      _StringGuts.grow(_:)(20);

      v23[0] = 0xD000000000000011;
      v23[1] = 0x8000000220AFEEB0;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v7);

      MEMORY[0x223D8E780](62, 0xE100000000000000);
      v8 = dispatch thunk of TokenizerRunner.tokenID(forText:)();

      v10 = v22[2];
      v9 = v22[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      v22[2] = v11;
      v22[v10 + 4] = v8;
      v3 = v5 == a1;
      if (v5 == a1)
      {
        v5 = 0;
      }

      else if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_27:
        swift_once();
LABEL_17:
        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Log.speculativeDecode);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_220940000, v16, v17, "Speculative streaming tokenizer does not have all <spec_stream_pos_XXX> tokens defined. Falling back to last tokens.", v18, 2u);
          MEMORY[0x223D90A10](v18, -1, -1);
        }

        v19 = v5 - a1;
        if (__OFSUB__(v5, a1))
        {
          __break(1u);
        }

        else if (v19 <= v5)
        {
          if (!__OFSUB__(v5, v19))
          {
            if (a1)
            {
              v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(a1, 0);
              if (specialized Sequence._copyContents(initializing:)(v23, (v4 + 4), a1, v5 - a1, v5) == a1)
              {
                return v4;
              }

              __break(1u);
            }

            return MEMORY[0x277D84F90];
          }

LABEL_30:
          __break(1u);
LABEL_31:

          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_30;
      }

      v6 = (v6 - 1);
      if (!v6)
      {
        goto LABEL_13;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D84F90] + 16);
LABEL_13:
  v13 = 4;
  while (v11)
  {
    v14 = v4[v13++];
    --v11;
    if (!v14)
    {

      v5 = a2;
      if (one-time initialization token for speculativeDecode != -1)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }
  }

  return v4;
}

uint64_t outlined init with take of LogitIndexSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TopKTreeSpeculator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TopKTreeSpeculator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  return MEMORY[0x2822009F8](TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:), 0, 0);
}

uint64_t TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)()
{
  v1 = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6target_Si5drafttGMd);
  inited = swift_initStackObject();
  v0[65] = inited;
  *(inited + 16) = xmmword_220AE8A30;
  v3 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  swift_beginAccess();
  v4 = *(v3 + 176);
  if (!*(v4 + 16))
  {
    goto LABEL_19;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v0[63]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = v0[63];
  v7 = v0[64];
  v9 = *(*(v4 + 56) + 8 * v5);
  swift_endAccess();
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  v10 = *v7;
  v0[66] = *v7;
  if (v10 < 0)
  {
    __break(1u);
LABEL_19:
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  if (v10)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84FA0];
    while (1)
    {
      v0[70] = v12;
      v0[69] = v11;
      v0[68] = inited;
      v0[67] = v12;
      v13 = *(inited + 16);
      v0[71] = v13;
      if (v13)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_8;
      }
    }

    v17 = __swift_project_boxed_opaque_existential_1(v0[62], *(v0[62] + 24));
    v0[57] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v18 = v0[57];
    v19 = *(v18 + 16);
    v20 = (inited + 40);
    do
    {
      v22 = *v20;
      v20 += 2;
      v21 = v22;
      v0[57] = v18;
      v23 = *(v18 + 24);
      if (v19 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v19 + 1, 1);
        v18 = v0[57];
      }

      v0[75] = v18;
      *(v18 + 16) = v19 + 1;
      *(v18 + 8 * v19++ + 32) = v21;
      --v13;
    }

    while (v13);
    outlined init with copy of DeterministicLanguageModelProtocol(v0[64] + 24, (v0 + 33));
    v24 = *(*v17 + 96);
    v25 = *(*v17 + 104);
    __swift_project_boxed_opaque_existential_1((*v17 + 72), v24);
    v26 = swift_task_alloc();
    v0[72] = v26;
    *v26 = v0;
    v26[1] = TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);

    return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v18, (v0 + 33), v24, v25);
  }

  else
  {
LABEL_8:

    v14 = v0[1];
    v15 = MEMORY[0x277D84FA0];

    return v14(v15);
  }
}

{
  outlined destroy of [Int](v0 + 264, &_s24TokenGenerationInference15LogitPresampler_pSgMd);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 568);
  outlined destroy of [Int](v0 + 264, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 464) = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = 0;
  v4 = *(v0 + 464);
  v5 = *(v4 + 16);
  v6 = 32;
  do
  {
    v7 = *(*(v0 + 544) + v6);
    *(v0 + 464) = v4;
    v8 = *(v4 + 24);
    if (v5 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v5 + 1, 1);
      v4 = *(v0 + 464);
    }

    v9 = *(v0 + 568);
    ++v3;
    *(v4 + 16) = v5 + 1;
    *(v4 + 8 * v5 + 32) = v7;
    v6 += 16;
    ++v5;
  }

  while (v3 != v9);
  v10 = *(v0 + 584);

  v99 = *(v10 + 16);
  if (!v99)
  {
    v107 = *(v0 + 560);
    v14 = *(v0 + 536);
    v15 = MEMORY[0x277D84F90];
LABEL_70:

LABEL_71:
    v81 = *(v0 + 528);
    for (i = *(v0 + 552) + 1; v81 != i; ++i)
    {
      *(v0 + 560) = v107;
      *(v0 + 552) = i;
      *(v0 + 544) = v15;
      *(v0 + 536) = v14;
      v83 = *(v15 + 2);
      *(v0 + 568) = v83;
      if (v83)
      {
        v84 = __swift_project_boxed_opaque_existential_1(*(v0 + 496), *(*(v0 + 496) + 24));
        *(v0 + 456) = v2;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
        v85 = *(v0 + 456);
        v86 = *(v85 + 16);
        v87 = (v15 + 40);
        do
        {
          v89 = *v87;
          v87 += 2;
          v88 = v89;
          *(v0 + 456) = v85;
          v90 = *(v85 + 24);
          if (v86 >= v90 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v86 + 1, 1);
            v85 = *(v0 + 456);
          }

          *(v0 + 600) = v85;
          *(v85 + 16) = v86 + 1;
          *(v85 + 8 * v86++ + 32) = v88;
          --v83;
        }

        while (v83);
        outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 512) + 24, v0 + 264);
        v92 = *v84;
        v93 = *(*v84 + 96);
        v94 = *(*v84 + 104);
        __swift_project_boxed_opaque_existential_1((v92 + 72), v93);
        v95 = swift_task_alloc();
        *(v0 + 576) = v95;
        *v95 = v0;
        v95[1] = TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);

        return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v85, v0 + 264, v93, v94);
      }
    }

    v91 = *(v0 + 8);

    return v91(v107);
  }

  v11 = 0;
  v12 = v4 + 32;
  v13 = *(v0 + 584) + 32;
  v107 = *(v0 + 560);
  v14 = *(v0 + 536);
  v15 = v2;
  v97 = v10;
  v98 = v13;
  while (v11 < *(v10 + 16))
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v13 + 40 * v11, v0 + 304);
    v16 = *(v4 + 16);
    if (v11 == v16)
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 304);
      goto LABEL_71;
    }

    if (v11 >= v16)
    {
      goto LABEL_95;
    }

    v17 = v14;
    v18 = *(v0 + 512);
    v19 = *(v12 + 8 * v11);
    outlined init with take of RandomNumberGenerator((v0 + 304), v0 + 120);
    *(v0 + 160) = v19;
    *(v0 + 56) = *(v0 + 152);
    *(v0 + 24) = *(v0 + 120);
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 16) = v11;
    v20 = *(v0 + 64);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 24, v0 + 168);
    *(v0 + 208) = v20;
    outlined init with copy of (LogitCollection, Int)(v0 + 168, v0 + 216);
    v104 = *(v0 + 256);
    outlined init with take of RandomNumberGenerator((v0 + 216), v0 + 344);
    v21 = *(v0 + 368);
    v22 = *(v0 + 376);
    __swift_project_boxed_opaque_existential_1((v0 + 344), v21);
    v100 = v11;
    v23 = 16;
    if (!v11)
    {
      v23 = 8;
    }

    v24 = (*(v22 + 40))(*(v18 + v23), v21, v22);
    v25 = *(v24 + 16);
    if (v25)
    {
      v96 = v15;
      *(v0 + 472) = v2;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v26 = 0;
      v2 = *(v0 + 472);
      v103 = v24 + 32;
      v14 = v17;
      v27 = v107;
      v101 = v25;
      v102 = v24;
      while (1)
      {
        if (v26 >= *(v24 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        v105 = v2;
        v28 = v27;
        v106 = v26;
        v108 = v14;
        v29 = *(v103 + 4 * v26);
        v30 = __swift_project_boxed_opaque_existential_1(*(v0 + 496), *(*(v0 + 496) + 24));
        v31 = *v30;
        v32 = *(*v30 + 56);
        v33 = *(*v30 + 64);
        __swift_project_boxed_opaque_existential_1((*v30 + 32), v32);
        v34 = (*(v33 + 16))(v104, v29, 0, v32, v33);
        swift_beginAccess();
        v35 = v31[22];
        if (!*(v35 + 16))
        {
          goto LABEL_100;
        }

        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
        if (v37)
        {
          v38 = *(*(v35 + 56) + 8 * v36);
          v27 = v28;
        }

        else
        {
          swift_endAccess();
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v104);
          if ((v40 & 1) == 0)
          {
            goto LABEL_91;
          }

          v41 = *(*(v35 + 56) + 8 * v39);
          v42 = v31[12];
          v43 = v31[13];
          __swift_project_boxed_opaque_existential_1(v31 + 9, v42);
          v38 = (*(v43 + 16))(v41, v29, 0, v42, v43);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v31[22];
          *(v0 + 480) = v45;
          v31[22] = 0x8000000000000000;
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
          v48 = *(v45 + 16);
          v49 = (v46 & 1) == 0;
          v50 = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            goto LABEL_92;
          }

          v51 = v46;
          if (*(v45 + 24) >= v50)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
            if ((v51 & 1) != (v53 & 1))
            {

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

            v47 = v52;
          }

          v27 = v28;
          v54 = *(v0 + 480);
          if (v51)
          {
            *(v54[7] + 8 * v47) = v38;
          }

          else
          {
            v54[(v47 >> 6) + 8] |= 1 << v47;
            *(v54[6] + 8 * v47) = v34;
            *(v54[7] + 8 * v47) = v38;
            v55 = v54[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_93;
            }

            v54[2] = v57;
          }

          v31[22] = v54;
        }

        swift_endAccess();
        v58 = MEMORY[0x223D8F400](*(v27 + 40), v34);
        v59 = -1 << *(v27 + 32);
        v60 = v58 & ~v59;
        v14 = v108;
        if ((*(v27 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          v61 = ~v59;
          while (*(*(v27 + 48) + 8 * v60) != v34)
          {
            v60 = (v60 + 1) & v61;
            if (((*(v27 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 488) = v108;
          if (*(v108 + 24) <= *(v108 + 16))
          {
            if (v62)
            {
              specialized _NativeSet.resize(capacity:)();
            }

            else
            {
              specialized _NativeSet.copyAndResize(capacity:)();
            }

            v14 = *(v0 + 488);
            v63 = MEMORY[0x223D8F400](*(v14 + 40), v34);
            v64 = -1 << *(v14 + 32);
            v60 = v63 & ~v64;
            if ((*(v14 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
            {
              v65 = ~v64;
              while (*(*(v14 + 48) + 8 * v60) != v34)
              {
                v60 = (v60 + 1) & v65;
                if (((*(v14 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
                {
                  goto LABEL_44;
                }
              }

              return ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }
          }

          else if ((v62 & 1) == 0)
          {
            specialized _NativeSet.copy()();
            v14 = *(v0 + 488);
          }

LABEL_44:
          *(v14 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v60;
          *(*(v14 + 48) + 8 * v60) = v34;
          v66 = *(v14 + 16);
          v56 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v56)
          {
            goto LABEL_90;
          }

          *(v14 + 16) = v67;
          v27 = v14;
        }

        v2 = v105;
        *(v0 + 472) = v105;
        v69 = *(v105 + 16);
        v68 = *(v105 + 24);
        v70 = v106;
        if (v69 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
          v70 = v106;
          v2 = *(v0 + 472);
        }

        v26 = v70 + 1;
        *(v2 + 16) = v69 + 1;
        v71 = v2 + 16 * v69;
        *(v71 + 32) = v34;
        *(v71 + 40) = v38;
        v24 = v102;
        if (v26 == v101)
        {
          v107 = v27;

          v15 = v96;
          goto LABEL_51;
        }
      }
    }

    v14 = v17;
LABEL_51:
    outlined destroy of [Int](v0 + 168, &_s24TokenGenerationInference15LogitCollection_p_SitMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 344);
    outlined destroy of [Int](v0 + 16, &_sSi6offset_24TokenGenerationInference15LogitCollection_p_Sit7elementtMd);
    v72 = *(v2 + 16);
    v73 = *(v15 + 2);
    v74 = v73 + v72;
    if (__OFADD__(v73, v72))
    {
      goto LABEL_96;
    }

    v75 = swift_isUniquelyReferenced_nonNull_native();
    if ((v75 & 1) == 0 || v74 > *(v15 + 3) >> 1)
    {
      if (v73 <= v74)
      {
        v76 = v73 + v72;
      }

      else
      {
        v76 = v73;
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v75, v76, 1, v15);
    }

    v13 = v98;
    v12 = v4 + 32;
    if (*(v2 + 16))
    {
      v77 = *(v15 + 2);
      if ((*(v15 + 3) >> 1) - v77 < v72)
      {
        goto LABEL_98;
      }

      memcpy(&v15[16 * v77 + 32], (v2 + 32), 16 * v72);

      v2 = MEMORY[0x277D84F90];
      v10 = v97;
      if (v72)
      {
        v78 = *(v15 + 2);
        v56 = __OFADD__(v78, v72);
        v79 = v78 + v72;
        if (v56)
        {
          goto LABEL_99;
        }

        *(v15 + 2) = v79;
      }
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
      v10 = v97;
      if (v72)
      {
        goto LABEL_97;
      }
    }

    v11 = v100 + 1;
    if (v100 + 1 == v99)
    {
      goto LABEL_70;
    }
  }

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
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  if (v1)
  {

    v4 = TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);
  }

  else
  {
    v4 = TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t protocol witness for LanguageModelSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:) in conformance TopKTreeSpeculator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return TopKTreeSpeculator.speculateNextTargetNodes(languageModel:firstTargetNode:)(a1, a2);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScCyyts5NeverOGGMd);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF40], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF20], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF48], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVGMd);
}

{
  v3 = v2;
  v5 = type metadata accessor for DataStreamState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV24TokenGenerationInference15DataStreamStateVGMd);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v27 + v28 * v24, v47, type metadata accessor for DataStreamState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(v29 + v28 * v24, v47, type metadata accessor for DataStreamState);
      }

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v47, *(v12 + 56) + v28 * v20, type metadata accessor for DataStreamState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v28, v41, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
      }

      else
      {
        outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(v28, v41, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v41, *(v9 + 56) + v27 * v17, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF30], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVGMd);
}

{
  v3 = v2;
  v45 = type metadata accessor for NDArray.Buffer();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayC6BufferVGMd);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for Prompt.SpecialToken();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of Any((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of Any(*(v9 + 56) + 32 * v23, v44);
      }

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, MEMORY[0x277D71DB0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = outlined init with take of Any(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for Prompt.SpecialToken();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, MEMORY[0x277D71DB0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v54 = a3(0);
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v42 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v49 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v11;
    v21 = v19 & *(v13 + 64);
    v22 = (v18 + 63) >> 6;
    v45 = (v20 + 16);
    v46 = v20;
    v43 = v4;
    v44 = v8 + 16;
    v47 = v13;
    v48 = v8;
    v50 = (v8 + 32);
    v51 = (v20 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 48);
      v52 = *(v20 + 72);
      v30 = v29 + v52 * v28;
      if (v49)
      {
        (*v51)(v55, v30, v10);
        v31 = *(v13 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 32))(v53, v31 + v32 * v28, v54);
      }

      else
      {
        (*v45)(v55, v30, v10);
        v33 = *(v13 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 16))(v53, v33 + v32 * v28, v54);
      }

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v23 + 8 * v36);
          if (v40 != -1)
          {
            v24 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v51)((*(v15 + 48) + v52 * v24), v55, v10);
      result = (*v50)(*(v15 + 56) + v32 * v24, v53, v54);
      ++*(v15 + 16);
      v20 = v46;
      v13 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v22)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v6 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v13 + 32);
    v6 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v6 = v15;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277D0DF40]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277D0DF20]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277D0DF48]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for DataStreamState(0);
  result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for DataStreamState);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277D0DF30]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Prompt.SpecialToken();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference15LogitCollection_pGMd);
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
        outlined init with copy of DeterministicLanguageModelProtocol(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of RandomNumberGenerator(v19, *(v4 + 56) + 40 * v17);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi10logitCount_Sbs13OpaquePointerV_SPySiGSgSiSpySfGSitXC8callbackAE9cbContexttGMd);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 8);
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v25;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCGMd);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference08OnDeviceE11AssetObject_pGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of DeterministicLanguageModelProtocol(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of RandomNumberGenerator(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GAC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GGMd);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

{
  v1 = v0;
  v2 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(v21 + v27, v32, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v26, *(v28 + 56) + v27, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = *(v4 + 56) + v17;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;

        result = outlined copy of MetadataSpecialToken(v22, v23, v24);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMd);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVGMd);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
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

{
  v1 = v0;
  v26 = type metadata accessor for Prompt.SpecialToken();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        outlined init with copy of Any(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = outlined init with take of Any(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayCGMd);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5Int32VGMd);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScCyyts5NeverOGGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x277D0DF40], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVGMd);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x277D0DF20], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVGMd);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x277D0DF48], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVGMd);
}

{
  v1 = v0;
  v2 = type metadata accessor for DataStreamState(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV24TokenGenerationInference15DataStreamStateVGMd);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(v26 + v28, v37, type metadata accessor for DataStreamState);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v29, *(v18 + 56) + v28, type metadata accessor for DataStreamState);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x277D0DF30], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVGMd);
}

{
  v1 = v0;
  v35 = type metadata accessor for NDArray.Buffer();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayC6BufferVGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v33 = type metadata accessor for Prompt.SpecialToken();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}