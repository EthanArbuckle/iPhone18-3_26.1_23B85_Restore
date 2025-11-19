uint64_t AVAsynchronousKeyValueLoading.value<A>(of:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 136);
  v5 = type metadata accessor for AVAsyncProperty.Status();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  AVAsynchronousKeyValueLoading.status<A>(of:)(a1, (v14 - v10));
  (*(v6 + 16))(v9, v11, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      swift_willThrow();
      return (*(v6 + 8))(v11, v5);
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      MEMORY[0x1CCA86740](0xD000000000000013, 0x80000001C9391F90);
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x1CCA86740](41, 0xE100000000000000);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    (*(v6 + 8))(v11, v5);
    return (*(*(v4 - 8) + 32))(a2, v9, v4);
  }

  return result;
}

uint64_t closure #1 in AVAsyncProperty<>.init(key:)(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = MEMORY[0x1CCA866B0](a2, a3);
  v5 = [v3 valueForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  return swift_dynamicCast();
}

void AVAsynchronousKeyValueLoading.status<A>(of:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v29[2] = *MEMORY[0x1E69E9840];
  v26 = *a1;
  v5 = type metadata accessor for CancellationError();
  v24 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v26 + 136);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = a1[2];
  v13 = a1[3];
  v14 = MEMORY[0x1CCA866B0](v12, v13);
  v29[0] = 0;
  v15 = [v3 statusOfValueForKey:v14 error:v29];

  v16 = v29[0];
  if (v15 <= 1)
  {
    if (!v15 || v15 == 1)
    {
      type metadata accessor for AVAsyncProperty.Status();
LABEL_18:
      swift_storeEnumTagMultiPayload();
      return;
    }
  }

  else
  {
    switch(v15)
    {
      case 2:
        v18 = a1[4];
        v29[0] = v3;
        v19 = v16;
        v18(v29);
        (*(v9 + 32))(v27, v11, v25);
        type metadata accessor for AVAsyncProperty.Status();
        swift_storeEnumTagMultiPayload();

        return;
      case 3:
        if (v29[0])
        {
          v17 = v29[0];
LABEL_17:
          *v27 = v17;
          type metadata accessor for AVAsyncProperty.Status();
          goto LABEL_18;
        }

        v17 = AVLocalizedError();
        if (v17)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      case 4:
        v12 = v29[0];
        AVFall2022OSVersions();
        if (!dyld_program_sdk_at_least())
        {
          CancellationError.init()();
          lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
          v21 = swift_allocError();
          (*(v24 + 32))(v22, v8, v5);
          *v27 = _convertErrorToNSError(_:)();
          type metadata accessor for AVAsyncProperty.Status();
          swift_storeEnumTagMultiPayload();

          return;
        }

        v20 = AVLocalizedError();
        if (v20)
        {
          *v27 = v20;
          type metadata accessor for AVAsyncProperty.Status();
          swift_storeEnumTagMultiPayload();

          return;
        }

        __break(1u);
LABEL_20:
        __break(1u);
        break;
    }
  }

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  v23 = v16;
  _StringGuts.grow(_:)(33);
  MEMORY[0x1CCA86740](0xD000000000000014, 0x80000001C9391F50);
  v28 = v15;
  type metadata accessor for AVKeyValueStatus(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1CCA86740](0x79656B20726F6620, 0xE900000000000020);
  MEMORY[0x1CCA86740](v12, v13);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AVAsynchronousKeyValueLoading.load<A>(_:isolation:)()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  AVAsynchronousKeyValueLoading.value<A>(of:)(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[19];
  v1 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C9390590;
  v4 = *(v2 + 24);
  *(v3 + 32) = *(v2 + 16);
  *(v3 + 40) = v4;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v0[2] = v0;
  v0[3] = AVAsynchronousKeyValueLoading.load<A>(_:isolation:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_4;
  v0[14] = v6;
  [v1 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A>(_:isolation:), v2, v1);
}

uint64_t type metadata completion function for AVAsyncProperty.Status()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSValue(319, &lazy cache variable for type metadata for NSError);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for NSValue(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CMTime(void *a1, uint64_t a2)
{
  result = strcmp([a1 objCType], "{?=qiIq}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 CMTimeValue];
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t AVAsyncProperty.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void *AVAsyncProperty<>.init(key:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = *(v2 + 128);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = swift_allocObject();
  v6[4] = partial apply for closure #1 in AVAsyncProperty<>.init(key:);
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a2;

  return v6;
}

uint64_t sub_1C935848C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t _sSo7CGPointVwet_0(uint64_t a1, int a2)
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

uint64_t _sSo7CGPointVwst_0(uint64_t result, int a2, int a3)
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

uint64_t _sSo17CGAffineTransformVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *_sSo7AVErrorVSYSCSY8rawValuexSg03RawC0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo27AVMetadataExtraAttributeKeyaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_OWORD *_sypWOb_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C9358608()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C9358650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C93586C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C9358750(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AsyncStream();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for AsyncStream.Continuation();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = type metadata accessor for AsyncStream.Iterator();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_1C93588CC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AsyncStream();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for AsyncStream.Continuation();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = type metadata accessor for AsyncStream.Iterator();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C9358A58(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v7 = *(a3 + 16);
    if (v7 == 1)
    {
      TupleTypeMetadata = type metadata accessor for AVMetrics();
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      if (v7)
      {
        v11 = *(a3 + 40) & 0xFFFFFFFFFFFFFFFELL;
        v12 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        v13 = v7;
        do
        {
          v11 += 8;
          *v12++ = type metadata accessor for AVMetrics();
          --v13;
        }

        while (v13);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    return (*(*(TupleTypeMetadata - 8) + 48))(&a1[*(a3 + 56)], a2);
  }
}

char *sub_1C9358BA0(char *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    if (v7 == 1)
    {
      TupleTypeMetadata = type metadata accessor for AVMetrics();
    }

    else
    {
      MEMORY[0x1EEE9AC00](result);
      if (v7)
      {
        v10 = *(a4 + 40) & 0xFFFFFFFFFFFFFFFELL;
        v11 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
        v12 = v7;
        do
        {
          v10 += 8;
          *v11++ = type metadata accessor for AVMetrics();
          --v12;
        }

        while (v12);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    return (*(*(TupleTypeMetadata - 8) + 56))(&v5[*(a4 + 56)], a2, a2);
  }

  return result;
}

uint64_t sub_1C9358CE0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo13AVMetricEventC_So0aB15StreamPublisher_ptGMd);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[15];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[16];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[17]];

  return v15(v16, a2, v14);
}

char *sub_1C9358E70(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo13AVMetricEventC_So0aB15StreamPublisher_ptGMd);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[15];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[16];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[17]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C9359004()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1C935903C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 animationTool];
  *a2 = result;
  return result;
}

void sub_1C9359078(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized AVVideoComposition.Configuration.animationTool.setter(v1);
}

id sub_1C9359170@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 customVideoCompositorClass];
  if (result)
  {
    result = swift_getObjCClassMetadata();
  }

  *a2 = result;
  return result;
}

double sub_1C93591D4@<D0>(id *a1@<X0>, double *a2@<X8>)
{
  [*a1 frameDuration];
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C935925C@<X0>(uint64_t *a1@<X8>)
{
  result = AVVideoComposition.outputBufferDescription.getter();
  *a1 = result;
  return result;
}

size_t sub_1C935928C@<X0>(size_t *a1@<X8>)
{
  result = AVVideoComposition.Configuration.spatialVideoConfigurations.getter();
  *a1 = result;
  return result;
}

id sub_1C93592F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 perFrameHDRDisplayMetadataPolicy];
  *a2 = result;
  return result;
}

void sub_1C9359330(id *a1)
{
  v1 = *a1;
  specialized AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.setter(v1);
}

id sub_1C935937C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 renderScale];
  *a2 = v4;
  return result;
}

id sub_1C93593B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 renderSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1C935941C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sourceTrackIDForFrameTiming];
  *a2 = result;
  return result;
}

id sub_1C93594B8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 trackID];
  *a2 = result;
  return result;
}

uint64_t sub_1C935952C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C9359588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33AVAssetWriterInputPassDescriptionC_GMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C9359658()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVySo16os_unfair_lock_sVGMd);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVySiGMd);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1C9359710@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForMoreMediaData];
  *a2 = result;
  return result;
}

uint64_t sub_1C9359744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C9359814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo33AVAssetWriterInputPassDescriptionC_GMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C93598DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo33AVAssetWriterInputPassDescriptionC_GMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C93599A0@<X0>(uint64_t *a1@<X8>)
{
  result = AVAnnotationPathRepresentation.paths.getter();
  *a1 = result;
  return result;
}

char *sub_1C93599F8@<X0>(char **a1@<X8>)
{
  result = AVCaptureSlider.prominentValues.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C9359A5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C9359B08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C9359BA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NSFastEnumerationIterator();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C9359C54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NSFastEnumerationIterator();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

char *sub_1C9359CF8@<X0>(char **a1@<X8>)
{
  result = AVPlayerItem.speedRamp.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C9359D50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C9359DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C9359E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C9359ED8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C9359F24()
{
  v1 = *(type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 3, v5))
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

uint64_t sub_1C935A074()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C935A138()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C935A170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo26AVAssetExportSessionStatusV_GMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1C935A204@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_1C935A238()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C935A278()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C935A2B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C935A328(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1C935A3B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1C935A474(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C935A524()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C935A560(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

AVPlayerInterstitialEvent __swiftcall AVPlayerInterstitialEvent.init(primaryItem:identifier:time:templateItems:restrictions:resumptionOffset:playoutLimit:userDefinedAttributes:)(AVPlayerItem primaryItem, Swift::String_optional identifier, CMTime time, Swift::OpaquePointer templateItems, AVPlayerInterstitialEventRestrictions restrictions, CMTime resumptionOffset, CMTime playoutLimit, Swift::OpaquePointer userDefinedAttributes)
{
  isa = primaryItem.super.isa;
  v16 = *&time.timescale;
  value = time.value;
  object = identifier.value._object;
  if (identifier.value._countAndFlagsBits)
  {
    v9 = MEMORY[0x1CCA866B0](primaryItem._playerItem, identifier.value._countAndFlagsBits);
  }

  else
  {
    v9 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for AVPlayerItem();
  v10 = Array._bridgeToObjectiveC()().super.isa;

  specialized _dictionaryUpCast<A, B, C, D>(_:)(playoutLimit.epoch);

  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v21[0] = object;
  v21[1] = value;
  v21[2] = v16;
  v20[1] = resumptionOffset.value;
  v20[2] = *&resumptionOffset.timescale;
  v19[0] = resumptionOffset.epoch;
  v19[1] = playoutLimit.value;
  v19[2] = *&playoutLimit.timescale;
  v20[0] = restrictions;
  v12 = [ObjCClassFromMetadata interstitialEventWithPrimaryItem:isa identifier:v9 time:v21 templateItems:v10 restrictions:templateItems._rawValue resumptionOffset:v20 playoutLimit:v19 userDefinedAttributes:v11];

  return v12;
}

unint64_t type metadata accessor for AVPlayerItem()
{
  result = lazy cache variable for type metadata for AVPlayerItem;
  if (!lazy cache variable for type metadata for AVPlayerItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVPlayerItem);
  }

  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Sendable(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    _sypWOb_0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    _sypWOb_0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    _sypWOb_0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = _sypWOb_0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        outlined init with copy of Sendable(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        _sypWOb_0(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
        swift_dynamicCast();
        _sypWOb_0(&v23, v25);
        _sypWOb_0(v25, v26);
        _sypWOb_0(v26, &v24);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = _sypWOb_0(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = _sypWOb_0(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id AVPlayerInterstitialEvent.init(primaryItem:identifier:date:templateItems:restrictions:resumptionOffset:playoutLimit:userDefinedAttributes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a3)
  {
    v15 = MEMORY[0x1CCA866B0](a2, a3);
  }

  else
  {
    v15 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = Date._bridgeToObjectiveC()().super.isa;
  type metadata accessor for AVPlayerItem();
  v17 = Array._bridgeToObjectiveC()().super.isa;

  specialized _dictionaryUpCast<A, B, C, D>(_:)(a13);

  v18 = Dictionary._bridgeToObjectiveC()().super.isa;

  v27[1] = a8;
  v27[2] = a9;
  v26[0] = a10;
  v26[1] = a11;
  v26[2] = a12;
  v27[0] = a7;
  v19 = [ObjCClassFromMetadata interstitialEventWithPrimaryItem:a1 identifier:v15 date:isa templateItems:v17 restrictions:a6 resumptionOffset:v27 playoutLimit:v26 userDefinedAttributes:v18];

  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 8))(a4, v20);
  return v19;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy96_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTimeMapping(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMTimeMapping(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for CMTimeRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
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

uint64_t protocol witness for Error._domain.getter in conformance related decl e for AVError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for AVError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for AVError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance NSKeyValueObservingOptions(void *a1, uint64_t *a2)
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

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AVMetadataExtraAttributeKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AVMetadataExtraAttributeKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AVMetadataExtraAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1CCA866B0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for AVError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for AVError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for AVError(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for AVError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for AVError()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVMetadataExtraAttributeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey, type metadata accessor for AVMetadataExtraAttributeKey);
  v3 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey, type metadata accessor for AVMetadataExtraAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for AVError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError, type metadata accessor for related decl 'e' for AVError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVMediaType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMediaType and conformance AVMediaType, type metadata accessor for AVMediaType);
  v3 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMediaType and conformance AVMediaType, type metadata accessor for AVMediaType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVFileType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVFileType and conformance AVFileType, type metadata accessor for AVFileType);
  v3 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVFileType and conformance AVFileType, type metadata accessor for AVFileType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVMetadataFormat(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMetadataFormat and conformance AVMetadataFormat, type metadata accessor for AVMetadataFormat);
  v3 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMetadataFormat and conformance AVMetadataFormat, type metadata accessor for AVMetadataFormat);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVMetadataKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMetadataKey and conformance AVMetadataKey, type metadata accessor for AVMetadataKey);
  v3 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMetadataKey and conformance AVMetadataKey, type metadata accessor for AVMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVMediaCharacteristic(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMediaCharacteristic and conformance AVMediaCharacteristic, type metadata accessor for AVMediaCharacteristic);
  v3 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVMediaCharacteristic and conformance AVMediaCharacteristic, type metadata accessor for AVMediaCharacteristic);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AVMetadataExtraAttributeKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1CCA866B0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVTrackAssociationType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVTrackAssociationType and conformance AVTrackAssociationType, type metadata accessor for AVTrackAssociationType);
  v3 = lazy protocol witness table accessor for type AVMetadataExtraAttributeKey and conformance AVMetadataExtraAttributeKey(&lazy protocol witness table cache variable for type AVTrackAssociationType and conformance AVTrackAssociationType, type metadata accessor for AVTrackAssociationType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AVMetadataExtraAttributeKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1CCA86750](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AVMetadataExtraAttributeKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AVMetadataExtraAttributeKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AVMetadataExtraAttributeKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CMVideoDimensions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMVideoDimensions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void type metadata accessor for CGRect(uint64_t a1, unint64_t *a2)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *static AVPartialAsyncProperty<A>.extraAttributes.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a1);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(a3, a4);
}

void *static AVPartialAsyncProperty<A>.tracks.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19AVMutableMovieTrackCGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x736B63617274, 0xE600000000000000);
}

{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo22AVFragmentedMovieTrackCGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x736B63617274, 0xE600000000000000);
}

{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo18AVCompositionTrackCGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x736B63617274, 0xE600000000000000);
}

{
  return static AVPartialAsyncProperty<A>.extraAttributes.getter(&_sSaySo12AVAssetTrackCGMd, &_sSaySo12AVAssetTrackCGMR, 0x736B63617274, 0xE600000000000000);
}

{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo25AVMutableCompositionTrackCGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x736B63617274, 0xE600000000000000);
}

{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo22AVFragmentedAssetTrackCGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x736B63617274, 0xE600000000000000);
}

{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12AVMovieTrackCGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x736B63617274, 0xE600000000000000);
}

{
  return static AVPartialAsyncProperty<A>.extraAttributes.getter(&_sSaySo12AVAssetTrackCGMd, &_sSaySo12AVAssetTrackCGMR, 0x736B63617274, 0xE600000000000000);
}

Swift::Void __swiftcall AVAssetReaderOutput.RandomAccessController.resetForReading(timeRanges:)(Swift::OpaquePointer timeRanges)
{
  v2 = *(v1 + 16);
  v3 = *(timeRanges._rawValue + 2);
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v5 = v2;
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = objc_opt_self();
    v7 = timeRanges._rawValue + 32;
    do
    {
      v8 = v7[1];
      v12[0] = *v7;
      v12[1] = v8;
      v12[2] = v7[2];
      v9 = [v6 valueWithCMTimeRange_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v10 = v2;
  }

  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSValue);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 resetForReadingTimeRanges_];
}

uint64_t AVAssetReaderOutput.RandomAccessController.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t AVAssetReaderOutput.Provider.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(*v2 + 80);
  v5 = type metadata accessor for Optional();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return MEMORY[0x1EEE6DFA0](AVAssetReaderOutput.Provider.next(), v6, v8);
}

uint64_t AVAssetReaderOutput.Provider.next()()
{
  v4 = (*(v0[3] + 64) + **(v0[3] + 64));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = AVAssetReaderOutput.Provider.next();
  v2 = v0[7];

  return v4(v2);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = AVAssetReaderOutput.Provider.next();
  }

  else
  {
    v5 = AVAssetReaderOutput.Provider.next();
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[3];
    (*(v0[6] + 8))(v1, v0[5]);
    if ([*(v4 + 16) error])
    {
      swift_willThrow();

      v5 = v0[1];
      goto LABEL_7;
    }

    v6 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
    v6 = 0;
  }

  (*(v3 + 56))(v0[2], v6, 1, v0[4]);

  v5 = v0[1];
LABEL_7:

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AVAssetReaderOutput.Provider.deinit()
{
  outlined destroy of Any?(v0 + 32);

  return v0;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AVAssetReaderOutput.Provider.__deallocating_deinit()
{
  AVAssetReaderOutput.Provider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

id AVAssetReader.outputProvider(for:)(void *a1)
{
  result = [a1 hasProvider];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setAlwaysCopiesSampleData_];
    [a1 setHasProvider_];
    [v1 addOutput_];
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19AVAssetReaderOutputC12AVFoundationE8ProviderCy_9CoreMedia19CMReadySampleBufferVySo08CMSampleJ3RefaAFE14DynamicContentOGGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = &async function pointer to partial apply for closure #1 in AVAssetReader.outputProvider(for:);
    *(v5 + 72) = v4;
    v6 = a1;
    v7 = v1;
    return v5;
  }

  return result;
}

uint64_t closure #1 in AVAssetReader.outputProvider(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in AVAssetReader.outputProvider(for:), 0, 0);
}

uint64_t closure #1 in AVAssetReader.outputProvider(for:)()
{
  if ([*(v0 + 24) copyNextSampleBuffer])
  {
    CMReadySampleBuffer<>.init(unsafeBuffer:)();
    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVySo08CMSampleE3RefaAAE14DynamicContentOGMd);
  (*(*(v3 - 8) + 56))(v2, v1, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t partial apply for closure #1 in AVAssetReader.outputProvider(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return closure #1 in AVAssetReader.outputProvider(for:)(a1, v4);
}

id AVAssetReader.outputProviderWithRandomAccess(for:)(void *a1)
{
  [a1 setSupportsRandomAccess_];
  type metadata accessor for AVAssetReaderOutput.RandomAccessController();
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  result = [v3 hasProvider];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [v3 setAlwaysCopiesSampleData_];
    [v3 setHasProvider_];
    [v1 addOutput_];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19AVAssetReaderOutputC12AVFoundationE8ProviderCy_9CoreMedia19CMReadySampleBufferVySo08CMSampleJ3RefaAFE14DynamicContentOGGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v3;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = &closure #1 in AVAssetReader.outputProvider(for:)partial apply;
    *(v6 + 72) = v5;
    v7 = v3;
    v8 = v1;
    return v6;
  }

  return result;
}

uint64_t closure #1 in AVAssetReader.outputProvider(for:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return closure #1 in AVAssetReader.outputProvider(for:)(a1, v4);
}

uint64_t closure #1 in AVAssetReader.outputProvider(for:)partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id AVAssetReader.outputMetadataProvider(for:)(void *a1)
{
  v2 = a1;
  result = [v2 hasProvider];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [v2 setAlwaysCopiesSampleData_];
    [v2 setHasProvider_];
    [v1 addOutput_];
    v4 = [objc_allocWithZone(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput_];
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19AVAssetReaderOutputC12AVFoundationE8ProviderCy_So20AVTimedMetadataGroupCGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = &async function pointer to partial apply for closure #1 in AVAssetReader.outputMetadataProvider(for:);
    *(v6 + 72) = v5;
    v7 = v1;
    return v6;
  }

  return result;
}

uint64_t closure #1 in AVAssetReader.outputMetadataProvider(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in AVAssetReader.outputMetadataProvider(for:), 0, 0);
}

uint64_t closure #1 in AVAssetReader.outputMetadataProvider(for:)()
{
  v1 = *(v0 + 16);
  *v1 = [*(v0 + 24) nextTimedMetadataGroup];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in AVAssetReader.outputMetadataProvider(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return closure #1 in AVAssetReader.outputMetadataProvider(for:)(a1, v4);
}

id AVAssetReader.outputMetadataProviderWithRandomAccess(for:)(void *a1)
{
  [a1 setSupportsRandomAccess_];
  type metadata accessor for AVAssetReaderOutput.RandomAccessController();
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  result = [v3 hasProvider];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [v3 setAlwaysCopiesSampleData_];
    [v3 setHasProvider_];
    [v1 addOutput_];
    v5 = [objc_allocWithZone(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput_];
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19AVAssetReaderOutputC12AVFoundationE8ProviderCy_So20AVTimedMetadataGroupCGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v3;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = &closure #1 in AVAssetReader.outputMetadataProvider(for:)partial apply;
    *(v7 + 72) = v6;
    v8 = v1;
    return v7;
  }

  return result;
}

void *AVAssetReader.outputCaptionProvider(for:validationDelegate:)(void *a1, uint64_t a2)
{
  result = [a1 hasProvider];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setAlwaysCopiesSampleData_];
    [a1 setHasProvider_];
    [v2 addOutput_];
    v6 = [objc_allocWithZone(MEMORY[0x1E6987E90]) initWithAssetReaderTrackOutput_];
    v7 = v6;
    if (a2)
    {
      [v6 setValidationDelegate_];
    }

    v8 = type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVAssetReaderOutputCaptionAdaptor);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19AVAssetReaderOutputC12AVFoundationE8ProviderCy_So14AVCaptionGroupCGMd);
    v10 = swift_allocObject();
    v10[2] = v2;
    v10[3] = a1;
    v10[4] = v7;
    v10[7] = v8;
    v10[8] = &async function pointer to partial apply for closure #1 in AVAssetReader.outputCaptionProvider(for:validationDelegate:);
    v10[9] = v9;
    v11 = v7;
    v12 = a1;
    v13 = v2;
    return v10;
  }

  return result;
}

uint64_t closure #1 in AVAssetReader.outputCaptionProvider(for:validationDelegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in AVAssetReader.outputCaptionProvider(for:validationDelegate:), 0, 0);
}

uint64_t closure #1 in AVAssetReader.outputCaptionProvider(for:validationDelegate:)()
{
  v1 = *(v0 + 16);
  *v1 = [*(v0 + 24) nextCaptionGroup];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in AVAssetReader.outputCaptionProvider(for:validationDelegate:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return closure #1 in AVAssetReader.outputCaptionProvider(for:validationDelegate:)(a1, v4);
}

void *AVAssetReader.outputCaptionProviderWithRandomAccess(for:validationDelegate:)(void *a1, uint64_t a2)
{
  [a1 setSupportsRandomAccess_];
  type metadata accessor for AVAssetReaderOutput.RandomAccessController();
  *(swift_allocObject() + 16) = a1;
  return AVAssetReader.outputCaptionProvider(for:validationDelegate:)(a1, a2);
}

uint64_t AVAssetReaderOutput.Provider<>.captionsNotPresentInPreviousGroups(in:)(uint64_t a1)
{
  outlined init with copy of Any?(v1 + 32, v7);
  if (v8)
  {
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVAssetReaderOutputCaptionAdaptor);
    if (swift_dynamicCast())
    {
      v3 = [v6 captionsNotPresentInPreviousGroupsInCaptionGroup_];
      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVCaption);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  else
  {
    outlined destroy of Any?(v7);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AVAssetReaderOutput.Provider.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 136) + **(*v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return v10(a1, a2, a3);
}

uint64_t related decl e for AVError.device.getter()
{
  return 0;
}

{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  outlined init with copy of Sendable(*(v0 + 56) + 32 * v3, v8);

  type metadata accessor for AVCaptureDevice();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type related decl e for AVError and conformance related decl e for AVError()
{
  result = lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError;
  if (!lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError)
  {
    type metadata accessor for related decl 'e' for AVError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type related decl 'e' for AVError and conformance related decl 'e' for AVError);
  }

  return result;
}

CMTimeValue related decl e for AVError.time.getter(CMTimeValue a1)
{
  v17.value = a1;
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v2 = _BridgedStoredNSError.userInfo.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  outlined init with copy of Sendable(*(v2 + 56) + 32 * v5, v20);

  type metadata accessor for CMTime(0);
  if (swift_dynamicCast())
  {
    return v19;
  }

LABEL_7:
  v17.value = a1;
  v9 = _BridgedStoredNSError.userInfo.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v14 = v13;

    if (v14)
    {
      outlined init with copy of Sendable(*(v9 + 56) + 32 * v12, &v19);

      outlined init with take of Any(&v19, v20);
      outlined init with copy of Sendable(v20, &v19);
      type metadata accessor for CFDictionaryRef(0);
      swift_dynamicCast();
      v15 = dictionaryRepresentation;
      CMTimeMakeFromDictionary(&v17, dictionaryRepresentation);
      value = v17.value;

      __swift_destroy_boxed_opaque_existential_0(v20);
      return value;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t related decl e for AVError.fileSize.getter()
{
  return related decl 'e' for AVError.fileSize.getter();
}

{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  outlined init with copy of Sendable(*(v0 + 56) + 32 * v3, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t related decl e for AVError.recordingSuccessfullyFinished.getter()
{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_7:

    return 2;
  }

  outlined init with copy of Sendable(*(v0 + 56) + 32 * v3, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t related decl e for AVError.mediaType.getter()
{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  outlined init with copy of Sendable(*(v0 + 56) + 32 * v3, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t related decl e for AVError.mediaSubtypes.getter()
{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  outlined init with copy of Sendable(*(v0 + 56) + 32 * v3, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t related decl e for AVError.presentationTimeStamp.getter()
{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  outlined init with copy of Sendable(*(v0 + 56) + 32 * v3, v8);

  type metadata accessor for CMTime(0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t related decl e for AVError.persistentTrackID.getter()
{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_7:

    v7 = 0;
    v8 = 1;
    return v7 | (v8 << 32);
  }

  outlined init with copy of Sendable(*(v0 + 56) + 32 * v3, v11);

  v6 = swift_dynamicCast();
  v7 = v10;
  v8 = v6 ^ 1;
  if (!v6)
  {
    v7 = 0;
  }

  return v7 | (v8 << 32);
}

uint64_t related decl e for AVError.mediaType.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for related decl 'e' for AVError(0);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  v4 = _BridgedStoredNSError.userInfo.getter();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v4 + 16))
  {

    goto LABEL_7;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  outlined init with copy of Sendable(*(v4 + 56) + 32 * v7, v12);

  a3(0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t type metadata accessor for AVCaptureDevice()
{
  result = lazy cache variable for type metadata for AVCaptureDevice;
  if (!lazy cache variable for type metadata for AVCaptureDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVCaptureDevice);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1CCA86AC0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
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

void AVCaptureIndexPicker.setActionQueue(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@unowned Int) -> ();
  v6[3] = &block_descriptor;
  v5 = _Block_copy(v6);

  [v3 setActionQueue:a1 action:v5];
  _Block_release(v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AVPlayerLayer.displayedReadOnlyPixelBuffer()()
{
  result = [v0 copyDisplayedPixelBuffer];
  if (result)
  {
    type metadata accessor for CVReadOnlyPixelBuffer();
    swift_allocObject();
    return CVReadOnlyPixelBuffer.init(unsafeBuffer:)();
  }

  return result;
}

uint64_t AVAssetWriterInput.MetadataReceiver.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.MetadataReceiver.append(_:), v5, v7);
}

uint64_t AVAssetWriterInput.MetadataReceiver.append(_:)()
{
  v1 = *(v0[5] + 24);
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = AVAssetWriterInput.MetadataReceiver.append(_:);
  v5 = v0[2];
  v4 = v0[3];

  return untilReadyForMoreMediaData(for:)(v5, v4, v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.MetadataReceiver.append(_:), v4, v3);
}

{
  if (![*(v0[5] + 24) isReadyForMoreMediaData])
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = v0[5];
  if (([*(v1 + 32) appendTimedMetadataGroup_] & 1) == 0)
  {
    v3 = *(v1 + 16);
    if ([v3 error])
    {
      swift_willThrow();

      v2 = v0[1];
      goto LABEL_6;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v0[1];
LABEL_6:

  return v2();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAssetWriterInput.MetadataReceiver.appendImmediately(_:)(AVTimedMetadataGroup a1)
{
  isa = a1.super.super.isa;
  if (![v1[3] isReadyForMoreMediaData])
  {
    goto LABEL_7;
  }

  if (([v1[4] appendTimedMetadataGroup_] & 1) == 0)
  {
    v4 = v1[2];
    if ([v4 error])
    {
      swift_willThrow();

      return v3 & 1;
    }

LABEL_7:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t AVAssetWriterInput.MetadataReceiver.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *AVAssetWriter.inputMetadataReceiver(for:)(void *a1)
{
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v1 addInput_];
    v4 = [objc_allocWithZone(MEMORY[0x1E6987EF8]) initWithAssetWriterInput_];
    type metadata accessor for AVAssetWriterInput.MetadataReceiver();
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = a1;
    v5[4] = v4;
    v6 = v1;
    v7 = a1;
    return v5;
  }

  return result;
}

void *AVAssetWriter.inputMetadataReceiverRequestingMultiPass(for:)(void *a1)
{
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v1 addInput_];
    v4 = [objc_allocWithZone(MEMORY[0x1E6987EF8]) initWithAssetWriterInput_];
    type metadata accessor for AVAssetWriterInput.MetadataReceiver();
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = a1;
    v5[4] = v4;
    v6 = v1;
    v7 = a1;
    [v7 setPerformsMultiPassEncodingIfSupported_];
    type metadata accessor for AVAssetWriterInput.MultiPassController();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v9 = v7;
    return v5;
  }

  return result;
}

uint64_t dispatch thunk of AVAssetWriterInput.MetadataReceiver.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return v10(a1, a2, a3);
}

uint64_t AVRenderedCaptionImage.readOnlyPixelBuffer.getter()
{
  v1 = [v0 pixelBuffer];
  type metadata accessor for CVReadOnlyPixelBuffer();
  swift_allocObject();
  return CVReadOnlyPixelBuffer.init(unsafeBuffer:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMReadySampleBuffer.attach(contentKey:)(AVContentKey contentKey)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = CMReadySampleBuffer.formatDescription.getter();
  v6[0] = 0;
  v3 = [(objc_class *)contentKey.super.isa cryptorForFormatDescription:v2 error:v6];

  v4 = v6[0];
  if (v3)
  {
    CMReadySampleBuffer.rawDecryptor.setter();
  }

  else
  {
    v5 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id AVTimedMetadataGroup.init(sampleBuffer:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVySo08CMSampleE3RefaAAE14DynamicContentOGMd);
  type metadata accessor for CMSampleBufferRef(0);
  _s9CoreMedia19CMReadySampleBufferV010withUnsafedE0yqd__qd__So08CMSampleE3RefaKYTXEKRi_d__lF();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSampleBuffer_];

  (*(*(v2 - 8) + 8))(a1, v2);
  return v3;
}

uint64_t AVAssetWriterInput.CaptionReceiver.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.CaptionReceiver.append(_:), v5, v7);
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.CaptionReceiver.append(_:), v5, v7);
}

uint64_t AVAssetWriterInput.CaptionReceiver.append(_:)()
{
  v1 = *(v0[5] + 24);
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = AVAssetWriterInput.CaptionReceiver.append(_:);
  v5 = v0[2];
  v4 = v0[3];

  return untilReadyForMoreMediaData(for:)(v5, v4, v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.CaptionReceiver.append(_:), v4, v3);
}

{
  if (![*(v0[5] + 24) isReadyForMoreMediaData])
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = v0[5];
  if (([*(v1 + 32) appendCaption_] & 1) == 0)
  {
    v3 = *(v1 + 16);
    if ([v3 error])
    {
      swift_willThrow();

      v2 = v0[1];
      goto LABEL_6;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v0[1];
LABEL_6:

  return v2();
}

{
  v1 = *(v0[5] + 24);
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = AVAssetWriterInput.CaptionReceiver.append(_:);
  v5 = v0[2];
  v4 = v0[3];

  return untilReadyForMoreMediaData(for:)(v5, v4, v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.CaptionReceiver.append(_:), v4, v3);
}

{
  if (![*(v0[5] + 24) isReadyForMoreMediaData])
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = v0[5];
  if (([*(v1 + 32) appendCaptionGroup_] & 1) == 0)
  {
    v3 = *(v1 + 16);
    if ([v3 error])
    {
      swift_willThrow();

      v2 = v0[1];
      goto LABEL_6;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v0[1];
LABEL_6:

  return v2();
}

uint64_t AVAssetWriterInput.CaptionReceiver.appendImmediately(_:)(uint64_t a1)
{
  return AVAssetWriterInput.CaptionReceiver.appendImmediately(_:)(a1, &selRef_appendCaption_) & 1;
}

{
  return AVAssetWriterInput.CaptionReceiver.appendImmediately(_:)(a1, &selRef_appendCaptionGroup_) & 1;
}

uint64_t AVAssetWriterInput.CaptionReceiver.appendImmediately(_:)(uint64_t a1, SEL *a2)
{
  if (![v2[3] isReadyForMoreMediaData])
  {
    goto LABEL_7;
  }

  if (([v2[4] *a2] & 1) == 0)
  {
    v6 = v2[2];
    if ([v6 error])
    {
      swift_willThrow();

      return v5 & 1;
    }

LABEL_7:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t AVAssetWriterInput.CaptionReceiver.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *AVAssetWriter.inputCaptionReceiver(for:)(void *a1)
{
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v1 addInput_];
    v4 = [objc_allocWithZone(MEMORY[0x1E6987EE8]) initWithAssetWriterInput_];
    type metadata accessor for AVAssetWriterInput.CaptionReceiver();
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = a1;
    v5[4] = v4;
    v6 = v1;
    v7 = a1;
    return v5;
  }

  return result;
}

void *AVAssetWriter.inputCaptionReceiverRequestingMultiPass(for:)(void *a1)
{
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v1 addInput_];
    v4 = [objc_allocWithZone(MEMORY[0x1E6987EE8]) initWithAssetWriterInput_];
    type metadata accessor for AVAssetWriterInput.CaptionReceiver();
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = a1;
    v5[4] = v4;
    v6 = v1;
    v7 = a1;
    [v7 setPerformsMultiPassEncodingIfSupported_];
    type metadata accessor for AVAssetWriterInput.MultiPassController();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v9 = v7;
    return v5;
  }

  return result;
}

uint64_t dispatch thunk of AVAssetWriterInput.CaptionReceiver.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 192) + **(*v3 + 192));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AVAssetWriterInput.CaptionReceiver.appendImmediately(_:)()
{
  return (*(*v0 + 200))() & 1;
}

{
  return (*(*v0 + 208))() & 1;
}

uint64_t outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AVSpatialVideoConfiguration()
{
  result = type metadata singleton initialization cache for AVSpatialVideoConfiguration;
  if (!type metadata singleton initialization cache for AVSpatialVideoConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AVSpatialVideoConfiguration.horizontalFieldOfView.setter(uint64_t a1)
{
  result = type metadata accessor for AVSpatialVideoConfiguration();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t AVSpatialVideoConfiguration.cameraSystemBaseline.setter(uint64_t a1)
{
  result = type metadata accessor for AVSpatialVideoConfiguration();
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t AVSpatialVideoConfiguration.disparityAdjustment.setter(uint64_t a1)
{
  result = type metadata accessor for AVSpatialVideoConfiguration();
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

void AVSpatialVideoConfiguration.init(formatDescription:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  AVSpatialVideoConfiguration.init(_:)([objc_allocWithZone(MEMORY[0x1E6988150]) initWithFormatDescription_], a2);
}

void AVSpatialVideoConfiguration.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
  (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  v8 = type metadata accessor for AVSpatialVideoConfiguration();
  v9 = a2 + v8[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + v8[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  if ([a1 cameraCalibrationDataLensCollection])
  {
    CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.init(rawValue:)();
    outlined assign with take of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v6, a2);
  }

  v12 = [a1 horizontalFieldOfView];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 unsignedIntValue];

    *v9 = v14;
    *(v9 + 4) = 0;
  }

  v15 = [a1 cameraSystemBaseline];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 unsignedIntValue];

    *v10 = v17;
    *(v10 + 4) = 0;
  }

  v18 = [a1 disparityAdjustment];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 intValue];

    *v11 = v20;
    *(v11 + 4) = 0;
  }

  else
  {
  }
}

id AVSpatialVideoConfiguration.configuration.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E6988150]) init];
  outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v4);
    goto LABEL_9;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.rawValue.getter();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_7;
  }

  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v21)
  {
LABEL_7:
    v11.super.isa = 0;
    goto LABEL_8;
  }

  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_8:
  [v9 setCameraCalibrationDataLensCollection_];

  (*(v6 + 8))(v8, v5);
LABEL_9:
  v12 = type metadata accessor for AVSpatialVideoConfiguration();
  v13 = (v1 + v12[5]);
  if ((v13[1] & 1) == 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    [v9 setHorizontalFieldOfView_];
  }

  v15 = (v1 + v12[6]);
  if ((v15[1] & 1) == 0)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    [v9 setCameraSystemBaseline_];
  }

  v17 = (v1 + v12[7]);
  if ((v17[1] & 1) == 0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    [v9 setDisparityAdjustment_];
  }

  return v9;
}

int *AVSpatialVideoConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for AVSpatialVideoConfiguration();
  v4 = a1 + result[5];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[6];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

void type metadata completion function for AVSpatialVideoConfiguration()
{
  type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Int32?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?()
{
  if (!lazy cache variable for type metadata for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?)
  {
    type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?);
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t AVAsynchronousKeyValueLoading.load<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = *(*a2 + 136);
  v4 = type metadata accessor for AVAsyncProperty.Status();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A>(_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A>(_:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C9390590;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[26] = isa;

  v0[2] = v0;
  v0[3] = AVAsynchronousKeyValueLoading.load<A>(_:);
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_0;
  v0[14] = v7;
  [v2 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A>(_:), 0, 0);
}

{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v5, v1);
  (*(v3 + 16))(v2, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 200);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 176);
    swift_willThrow();
    (*(v12 + 8))(v7, v13);

    v11 = *(v0 + 8);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      _StringGuts.grow(_:)(20);
      MEMORY[0x1CCA86740](0xD000000000000012, 0x80000001C9391F70);
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v8 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 144);
    (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
    (*(*(v9 - 8) + 32))(v10, v8, v9);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a2;
  v4[20] = v3;
  v4[18] = a1;
  if (a3)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  v4[21] = v5;
  v4[22] = a3;

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A>(_:isolation:), v5, a3);
}

uint64_t AVPartialAsyncProperty.backDeployedKey.getter()
{
  v0 = _s12AVFoundation22AVPartialAsyncPropertyC19usableFromInlineKeySSvgTf4n_g_0();

  return v0;
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8[25] = v33;
  v8[26] = v7;
  v8[23] = a6;
  v8[24] = v32;
  v8[21] = a4;
  v8[22] = a5;
  v8[19] = a2;
  v8[20] = a3;
  v8[18] = a1;
  v10 = *a4;
  v11 = *a5;
  v12 = swift_task_alloc();
  v13 = *(v10 + 136);
  v8[27] = v13;
  *v12 = v13;
  v14 = *(v11 + 136);
  v8[28] = v14;
  v12[1] = v14;
  if (!v32)
  {
    goto LABEL_7;
  }

  v15 = v33 & 0xFFFFFFFFFFFFFFFELL;
  if (v32 >= 6 && v12 - v15 + 16 >= 0x20)
  {
    v16 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = (v15 + 16);
    v27 = v12 + 4;
    v28 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v29 = *v26;
      *(v27 - 1) = *(v26 - 1);
      *v27 = v29;
      v26 += 2;
      v27 += 2;
      v28 -= 4;
    }

    while (v28);
    if (v16 == v32)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v32 - v16;
  v18 = v16;
  v19 = (v15 + v18 * 8);
  v20 = &v12[v18 + 2];
  do
  {
    v21 = *v19++;
    *v20++ = v21;
    --v17;
  }

  while (v17);
LABEL_7:
  TupleTypeMetadata = swift_getTupleTypeMetadata();

  v8[29] = TupleTypeMetadata;
  v8[30] = *(TupleTypeMetadata - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = *(v14 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = *(v13 - 8);
  v8[36] = swift_task_alloc();
  if (a7)
  {
    swift_getObjectType();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v8[37] = v23;
  v8[38] = v25;

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:), v23, v25);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:)()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C93905A0;
  v5 = *(v3 + 24);
  *(v4 + 32) = *(v3 + 16);
  *(v4 + 40) = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;

  if (v1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v0[23] + 8 * v9);
      v12 = *(*v10 + 16);
      v11 = *(*v10 + 24);
      v13 = *(v4 + 24);

      if (v9 + 2 >= v13 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v9 + 3, 1, v4);
      }

      v14 = v0[24];

      *(v4 + 16) = v9 + 3;
      v15 = v4 + v8;
      *(v15 + 64) = v12;
      *(v15 + 72) = v11;
      ++v9;
      v8 += 16;
    }

    while (v9 != v14);
  }

  v16 = v0[26];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[39] = isa;

  v0[2] = v0;
  v0[3] = AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:);
  v18 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_8;
  v0[14] = v18;
  [v16 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:isolation:), v2, v1);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 168);

  AVAsynchronousKeyValueLoading.value<A>(of:)(v2, v1);
  AVAsynchronousKeyValueLoading.value<A>(of:)(*(v0 + 176), *(v0 + 272));
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  v9 = *(v0 + 192);
  v10 = *(v8 + 48);
  (*(*(v0 + 280) + 16))(v6 + *(v8 + 32), *(v0 + 288), *(v0 + 216));
  (*(v5 + 16))(v6 + v10, v4, v7);
  if (v9)
  {
    v11 = 0;
    v12 = 64;
    do
    {
      v13 = *(v0 + 256);
      v14 = *(*(v0 + 232) + v12);

      AVAsynchronousKeyValueLoading.value<A>(of:)(v15, v13 + v14);
      v16 = *(v0 + 192);

      ++v11;
      v12 += 16;
    }

    while (v11 != v16);
  }

  v17 = *(v0 + 280);
  v18 = *(v0 + 264);
  v19 = *(v0 + 248);
  v20 = *(v0 + 224);
  v21 = *(v0 + 216);
  v22 = *(v0 + 192);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);
  (*(*(v0 + 240) + 16))(v19, *(v0 + 256), *(v0 + 232));
  v25 = *(v8 + 32);
  v26 = *(v8 + 48);
  (*(v17 + 32))(v24, v19 + v25, v21);
  (*(v18 + 32))(v23, v19 + v26, v20);
  if (v22)
  {
    v27 = 0;
    v28 = *(v0 + 200) & 0xFFFFFFFFFFFFFFFELL;
    v29 = 64;
    do
    {
      v30 = *(v0 + 192);
      (*(*(*(v28 + 8 * v27) - 8) + 32))(*(*(v0 + 160) + 8 * v27), *(v0 + 248) + *(*(v0 + 232) + v29));
      ++v27;
      v29 += 16;
    }

    while (v27 != v30);
  }

  v32 = *(v0 + 280);
  v31 = *(v0 + 288);
  v33 = *(v0 + 256);
  v34 = *(v0 + 232);
  v35 = *(v0 + 240);
  v36 = *(v0 + 216);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 224));
  (*(v32 + 8))(v31, v36);
  (*(v35 + 8))(v33, v34);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t AVPartialAsyncProperty.key.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AVPartialAsyncProperty.keyFromDescription.getter()
{
  v0 = AVPartialAsyncProperty.description.getter();
  v14 = 46;
  v15 = 0xE100000000000000;
  v13 = &v14;
  v2 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v12, v0, v1, &v14);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];

    v9 = MEMORY[0x1CCA86700](v5, v6, v7, v8);

    return v9;
  }

  else
  {

    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    MEMORY[0x1CCA86740](0xD000000000000041, 0x80000001C9391FB0);
    v11 = AVPartialAsyncProperty.description.getter();
    MEMORY[0x1CCA86740](v11);

    MEMORY[0x1CCA86740](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AVPartialAsyncProperty.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AVPartialAsyncProperty.description.getter()
{
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1CCA86740](46, 0xE100000000000000);
  MEMORY[0x1CCA86740](*(v0 + 16), *(v0 + 24));
  return v2;
}

uint64_t AVPartialAsyncProperty.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *AVAsyncProperty.__allocating_init(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[4] = a3;
  result[5] = a4;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void *AVAsyncProperty.init(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

uint64_t AVAsyncProperty.deinit()
{

  return v0;
}

uint64_t static AVAsyncProperty.Status<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a1;
  v42 = a2;
  v6 = *(a4 - 8);
  v38 = a5;
  v39 = v6;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v35 - v9;
  v10 = type metadata accessor for AVAsyncProperty.Status();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v35 - v20;
  v22 = *(v19 + 48);
  v40 = v11;
  v23 = *(v11 + 16);
  v23(&v35 - v20, v41, v10);
  v23(&v21[v22], v42, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_13:
      v27 = 0;
      v10 = TupleTypeMetadata2;
      goto LABEL_14;
    }

    v27 = 1;
    v18 = v40;
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    v23(v16, v21, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = v39;
      v30 = *(v39 + 32);
      v31 = v36;
      v30(v36, v16, a4);
      v32 = &v21[v22];
      v33 = v37;
      v30(v37, v32, a4);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v29 + 8);
      v34(v33, a4);
      v34(v31, a4);
      v18 = v40;
      goto LABEL_14;
    }

    (*(v39 + 8))(v16, a4);
    goto LABEL_13;
  }

  v23(v14, v21, v10);
  v25 = *v14;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_13;
  }

  v26 = *&v21[v22];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSObject);
  v27 = static NSObject.== infix(_:_:)();

  v18 = v40;
LABEL_14:
  (*(v18 + 8))(v21, v10);
  return v27 & 1;
}

uint64_t AVAsyncProperty.Status.description.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x2074657920746F4ELL;
    }

    else
    {
      return 0x676E6964616F4CLL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = *v7;
    v17 = 0x282064656C696146;
    v18 = 0xE800000000000000;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    MEMORY[0x1CCA86740](v14, v16);

    MEMORY[0x1CCA86740](41, 0xE100000000000000);

    return v17;
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x1CCA86740](0x2820646564616F4CLL, 0xE800000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1CCA86740](41, 0xE100000000000000);
    v10 = v17;
    (*(v2 + 8))(v5, v1);
    return v10;
  }
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *a4;
  v5[23] = *(*a3 + 136);
  v7 = type metadata accessor for AVAsyncProperty.Status();
  v5[24] = v7;
  v5[25] = *(v6 + 136);
  v8 = type metadata accessor for AVAsyncProperty.Status();
  v5[26] = v8;
  v5[27] = swift_getTupleTypeMetadata2();
  v5[28] = swift_task_alloc();
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B>(_:_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B>(_:_:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C93905A0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[3] = AVAsynchronousKeyValueLoading.load<A, B>(_:_:);
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_12;
  v0[14] = v10;
  [v2 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B>(_:_:), 0, 0);
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v8 = *(v0 + 160);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v8, v1);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v7, v2);
  v9 = *(v34 + 48);
  v10 = *(v3 + 16);
  v10(v5, v1, v6);
  (*(v4 + 16))(v5 + v9, v2, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v10(*(v0 + 256), *(v0 + 224), *(v0 + 192));
    (*(v13 + 8))(v5 + v9, v14);
    v32 = *(v0 + 208);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v10(*(v0 + 264), *(v0 + 224), *(v0 + 192));
      if (!swift_getEnumCaseMultiPayload())
      {
        v22 = *(v0 + 264);
        v23 = *(v0 + 272);
        v24 = *(v0 + 248);
        v31 = v5;
        v33 = *(v0 + 224);
        v25 = *(v0 + 200);
        v27 = *(v0 + 184);
        v26 = *(v0 + 192);
        v28 = *(v0 + 144);
        v30 = *(v0 + 152);
        (*(*(v0 + 232) + 8))();
        v29 = *(v24 + 8);
        v29(v23, v26);
        (*(*(v27 - 8) + 32))(v28, v22, v27);
        (*(*(v25 - 8) + 32))(v30, v31 + v9, v25);
        v29(v33, v26);

        v20 = *(v0 + 8);
        goto LABEL_9;
      }

      (*(*(*(v0 + 184) - 8) + 8))(*(v0 + 264));
    }

    v12 = *(v0 + 208);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _StringGuts.grow(_:)(28);
      MEMORY[0x1CCA86740](0xD000000000000015, 0x80000001C9392000);
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x1CCA86740](8236, 0xE200000000000000);
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x1CCA86740](41, 0xE100000000000000);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v32 = v12;
  }

  v15 = *(v0 + 272);
  v16 = *(v0 + 232);
  v17 = *(v0 + 240);
  v18 = *(v0 + 192);
  v19 = *(*(v0 + 248) + 8);
  v19(*(v0 + 224), v18);
  swift_willThrow();
  (*(v16 + 8))(v17, v32);
  v19(v15, v18);

  v20 = *(v0 + 8);
LABEL_9:

  return v20();
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = *a5;
  v9 = *a6;
  v7[25] = *(*a4 + 136);
  v10 = type metadata accessor for AVAsyncProperty.Status();
  v7[26] = v10;
  v7[27] = *(v8 + 136);
  v11 = type metadata accessor for AVAsyncProperty.Status();
  v7[28] = v11;
  v7[29] = *(v9 + 136);
  v12 = type metadata accessor for AVAsyncProperty.Status();
  v7[30] = v12;
  v7[31] = swift_getTupleTypeMetadata3();
  v7[32] = swift_task_alloc();
  v7[33] = *(v12 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = *(v11 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = *(v10 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:)()
{
  v1 = v0[23];
  v14 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C93905B0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v7;
  *(v10 + 56) = v6;
  *(v10 + 64) = v8;
  *(v10 + 72) = v9;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[42] = isa;

  v0[2] = v0;
  v0[3] = AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:);
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_16;
  v0[14] = v12;
  [v14 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C>(_:_:_:), 0, 0);
}

{
  v1 = *(v0 + 328);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v48 = v1;
  v57 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v52 = *(v0 + 240);
  v54 = *(v0 + 224);
  v50 = *(v0 + 208);
  v44 = *(v0 + 184);
  v47 = *(v0 + 272);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v7, v1);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v8, v3);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v44, v47);
  v9 = (v4 + *(v6 + 48));
  v10 = (v4 + *(v6 + 64));
  v11 = *(v2 + 16);
  v11(v4, v48, v50);
  v12 = *(v57 + 16);
  v58 = v9;
  v12(v9, v3, v54);
  v55 = v10;
  (*(v5 + 16))(v10, v47, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 240);
    v11(*(v0 + 312), *(v0 + 256), *(v0 + 208));
    (*(v17 + 8))(v10, v18);
    v51 = *(v0 + 240);
    v56 = *(v0 + 224);
    v16 = v0 + 280;
    v15 = v9;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11(*(v0 + 320), *(v0 + 256), *(v0 + 208));
      if (!swift_getEnumCaseMultiPayload())
      {
        v12(*(v0 + 288), v9, *(v0 + 224));
        if (!swift_getEnumCaseMultiPayload())
        {
          v30 = *(v0 + 328);
          v31 = *(v0 + 304);
          v53 = *(v0 + 320);
          v32 = *(v0 + 296);
          v33 = *(v0 + 280);
          v49 = *(v0 + 256);
          v42 = *(v0 + 232);
          v43 = *(v0 + 288);
          v34 = *(v0 + 224);
          v35 = *(v0 + 200);
          v36 = *(v0 + 208);
          v46 = *(v0 + 160);
          v40 = *(v0 + 216);
          v41 = *(v0 + 152);
          v39 = *(v0 + 144);
          (*(*(v0 + 264) + 8))();
          v37 = *(v33 + 8);
          v37(v32, v34);
          v38 = *(v31 + 8);
          v38(v30, v36);
          (*(*(v35 - 8) + 32))(v39, v53, v35);
          (*(*(v40 - 8) + 32))(v41, v43);
          (*(*(v42 - 8) + 32))(v46, v55);
          v37(v58, v34);
          v38(v49, v36);

          v28 = *(v0 + 8);
          goto LABEL_13;
        }

        (*(*(*(v0 + 216) - 8) + 8))(*(v0 + 288));
      }

      (*(*(*(v0 + 200) - 8) + 8))(*(v0 + 320));
    }

    v14 = *(v0 + 224);
    v15 = v58;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v0 + 264;
      v51 = *(v0 + 240);
      v15 = v10;
      v56 = v14;
    }

    else
    {
      v19 = *(v0 + 240);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        _StringGuts.grow(_:)(32);
        MEMORY[0x1CCA86740](0xD000000000000015, 0x80000001C9392000);
        swift_getWitnessTable();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x1CCA86740](8236, 0xE200000000000000);
        swift_getWitnessTable();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x1CCA86740](8236, 0xE200000000000000);
        swift_getWitnessTable();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x1CCA86740](41, 0xE100000000000000);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v56 = v14;
      v16 = v0 + 280;
      v51 = v19;
    }
  }

  v20 = *(v0 + 328);
  v21 = *(v0 + 304);
  v45 = *(v0 + 296);
  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  v24 = *(v0 + 256);
  v25 = *(v0 + 264);
  v26 = *(v0 + 208);
  (*(*v16 + 8))(v15);
  v27 = *(v21 + 8);
  v27(v24, v26);
  swift_willThrow();
  (*(v25 + 8))(v23, v51);
  (*(v22 + 8))(v45, v56);
  v27(v20, v26);

  v28 = *(v0 + 8);
LABEL_13:

  return v28();
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9[29] = a8;
  v9[30] = v8;
  v9[27] = a6;
  v9[28] = a7;
  v9[25] = a4;
  v9[26] = a5;
  v9[23] = a2;
  v9[24] = a3;
  v9[22] = a1;
  v10 = *a6;
  v11 = *a7;
  v12 = *a8;
  v9[31] = *(*a5 + 136);
  v9[18] = type metadata accessor for AVAsyncProperty.Status();
  v9[32] = *(v10 + 136);
  v9[19] = type metadata accessor for AVAsyncProperty.Status();
  v9[33] = *(v11 + 136);
  v9[20] = type metadata accessor for AVAsyncProperty.Status();
  v9[34] = *(v12 + 136);
  v9[21] = type metadata accessor for AVAsyncProperty.Status();
  v9[35] = swift_getTupleTypeMetadata();
  v9[36] = swift_task_alloc();
  v13 = type metadata accessor for AVAsyncProperty.Status();
  v9[37] = v13;
  v9[38] = *(v13 - 8);
  v9[39] = swift_task_alloc();
  v14 = type metadata accessor for AVAsyncProperty.Status();
  v9[40] = v14;
  v9[41] = *(v14 - 8);
  v9[42] = swift_task_alloc();
  v9[43] = swift_task_alloc();
  v15 = type metadata accessor for AVAsyncProperty.Status();
  v9[44] = v15;
  v9[45] = *(v15 - 8);
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v16 = type metadata accessor for AVAsyncProperty.Status();
  v9[48] = v16;
  v9[49] = *(v16 - 8);
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();
  v9[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D>(_:_:_:_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D>(_:_:_:_:)()
{
  v1 = v0;
  v18 = v0 + 2;
  v2 = v0[29];
  v19 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C93905C0;
  *(v14 + 32) = v7;
  *(v14 + 40) = v6;
  *(v14 + 48) = v8;
  *(v14 + 56) = v9;
  *(v14 + 64) = v10;
  *(v14 + 72) = v11;
  *(v14 + 80) = v12;
  *(v14 + 88) = v13;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[53] = isa;

  v1[2] = v1;
  v1[3] = AVAsynchronousKeyValueLoading.load<A, B, C, D>(_:_:_:_:);
  v16 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v1[13] = &block_descriptor_20;
  v1[14] = v16;
  [v19 loadValuesAsynchronouslyForKeys:isa completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v18);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D>(_:_:_:_:), 0, 0);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v63 = *(v0 + 384);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v69 = *(v0 + 352);
  v76 = *(v0 + 344);
  v78 = *(v0 + 328);
  v65 = *(v0 + 320);
  v74 = *(v0 + 312);
  v66 = *(v0 + 304);
  v5 = *(v0 + 288);
  v68 = *(v0 + 296);
  v6 = *(v0 + 280);
  v72 = *(v0 + 232);
  v7 = *(v0 + 216);
  v61 = *(v0 + 224);
  v8 = *(v0 + 208);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v8, v1);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v7, v3);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v61, v76);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v72, v74);
  v9 = (v5 + v6[12]);
  v10 = (v5 + v6[20]);
  v11 = v1;
  v12 = *(v2 + 16);
  v13 = (v5 + v6[16]);
  v12(v5, v11, v63);
  v14 = *(v4 + 16);
  v73 = v9;
  v14(v9, v3, v69);
  v15 = *(v78 + 16);
  v70 = v13;
  v15(v13, v76, v65);
  v16 = v10;
  (*(v66 + 16))(v10, v74, v68);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(v0 + 296);
    v23 = *(v0 + 304);
    v12(*(v0 + 400), *(v0 + 288), *(v0 + 384));
    (*(v23 + 8))(v10, v22);
    v77 = *(v0 + 296);
    v18 = (v0 + 328);
    v75 = *(v0 + 320);
    v21 = v13;
    v71 = *(v0 + 352);
    v59 = v71;
    v20 = (v0 + 360);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12(*(v0 + 408), *(v0 + 288), *(v0 + 384));
      if (!swift_getEnumCaseMultiPayload())
      {
        v14(*(v0 + 368), v9, *(v0 + 352));
        if (!swift_getEnumCaseMultiPayload())
        {
          v15(*(v0 + 336), v13, *(v0 + 320));
          if (!swift_getEnumCaseMultiPayload())
          {
            v79 = *(v0 + 416);
            v53 = *(v0 + 408);
            v49 = *(v0 + 392);
            v38 = *(v0 + 376);
            v39 = *(v0 + 384);
            v40 = *(v0 + 360);
            v58 = *(v0 + 368);
            v42 = *(v0 + 344);
            v41 = *(v0 + 352);
            v43 = *(v0 + 328);
            v62 = *(v0 + 336);
            v44 = *(v0 + 320);
            v67 = *(v0 + 288);
            v60 = *(v0 + 272);
            v52 = *(v0 + 264);
            v45 = *(v0 + 248);
            v64 = *(v0 + 200);
            v54 = *(v0 + 192);
            v50 = *(v0 + 256);
            v51 = *(v0 + 184);
            v48 = *(v0 + 176);
            (*(*(v0 + 304) + 8))();
            v55 = *(v43 + 8);
            v55(v42, v44);
            v46 = *(v40 + 8);
            v46(v38, v41);
            v47 = *(v49 + 8);
            v47(v79, v39);
            (*(*(v45 - 8) + 32))(v48, v53, v45);
            (*(*(v50 - 8) + 32))(v51, v58);
            (*(*(v52 - 8) + 32))(v54, v62);
            (*(*(v60 - 8) + 32))(v64, v16);
            v55(v70, v44);
            v46(v73, v41);
            v47(v67, v39);

            v36 = *(v0 + 8);
            goto LABEL_18;
          }

          (*(*(*(v0 + 264) - 8) + 8))(*(v0 + 336));
        }

        (*(*(*(v0 + 256) - 8) + 8))(*(v0 + 368));
      }

      (*(*(*(v0 + 248) - 8) + 8))(*(v0 + 408));
    }

    v18 = (v0 + 304);
    v19 = *(v0 + 352);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v77 = *(v0 + 296);
      v20 = (v0 + 328);
      v75 = *(v0 + 320);
      v59 = v75;
      v71 = v19;
      v73 = v13;
      v21 = v16;
    }

    else
    {
      v24 = *(v0 + 320);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = *(v0 + 296);
        v59 = v19;
        v21 = v16;
      }

      else
      {
        v77 = *(v0 + 296);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          _StringGuts.grow(_:)(36);
          MEMORY[0x1CCA86740](0xD000000000000015, 0x80000001C9392000);
          swift_getWitnessTable();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1CCA86740](8236, 0xE200000000000000);
          swift_getWitnessTable();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1CCA86740](8236, 0xE200000000000000);
          swift_getWitnessTable();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1CCA86740](8236, 0xE200000000000000);
          swift_getWitnessTable();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1CCA86740](41, 0xE100000000000000);
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v18 = (v0 + 328);
        v21 = v13;
        v59 = v19;
      }

      v20 = (v0 + 360);
      v71 = v19;
      v75 = v24;
    }
  }

  v25 = *v20;
  v26 = *v18;
  v27 = *(v0 + 416);
  v28 = *(v0 + 392);
  v29 = *(v0 + 384);
  v30 = *(v0 + 360);
  v56 = *(v0 + 344);
  v57 = *(v0 + 376);
  v31 = *(v0 + 328);
  v33 = *(v0 + 304);
  v32 = *(v0 + 312);
  v34 = *(v0 + 288);
  (*(v26 + 8))(v21);
  (*(v25 + 8))(v73, v59);
  v35 = *(v28 + 8);
  v35(v34, v29);
  swift_willThrow();
  (*(v33 + 8))(v32, v77);
  (*(v31 + 8))(v56, v75);
  (*(v30 + 8))(v57, v71);
  v35(v27, v29);

  v36 = *(v0 + 8);
LABEL_18:

  return v36();
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v9[32] = v22;
  v9[33] = v8;
  v9[30] = a8;
  v9[31] = v21;
  v9[28] = a6;
  v9[29] = a7;
  v9[26] = a4;
  v9[27] = a5;
  v9[24] = a2;
  v9[25] = a3;
  v9[23] = a1;
  v10 = *a7;
  v11 = *a8;
  v12 = *v21;
  v19 = *v22;
  v9[34] = *(*a6 + 136);
  v9[18] = type metadata accessor for AVAsyncProperty.Status();
  v9[35] = *(v10 + 136);
  v9[19] = type metadata accessor for AVAsyncProperty.Status();
  v9[36] = *(v11 + 136);
  v9[20] = type metadata accessor for AVAsyncProperty.Status();
  v9[37] = *(v12 + 136);
  v9[21] = type metadata accessor for AVAsyncProperty.Status();
  v9[38] = *(v19 + 136);
  v9[22] = type metadata accessor for AVAsyncProperty.Status();
  v9[39] = swift_getTupleTypeMetadata();
  v9[40] = swift_task_alloc();
  v13 = type metadata accessor for AVAsyncProperty.Status();
  v9[41] = v13;
  v9[42] = *(v13 - 8);
  v9[43] = swift_task_alloc();
  v14 = type metadata accessor for AVAsyncProperty.Status();
  v9[44] = v14;
  v9[45] = *(v14 - 8);
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v15 = type metadata accessor for AVAsyncProperty.Status();
  v9[48] = v15;
  v9[49] = *(v15 - 8);
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();
  v16 = type metadata accessor for AVAsyncProperty.Status();
  v9[52] = v16;
  v9[53] = *(v16 - 8);
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  v17 = type metadata accessor for AVAsyncProperty.Status();
  v9[56] = v17;
  v9[57] = *(v17 - 8);
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v9[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E>(_:_:_:_:_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E>(_:_:_:_:_:)()
{
  v1 = v0;
  v21 = v0 + 2;
  v2 = v0[32];
  v22 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v3 + 24);
  v14 = *(v2 + 24);
  v19 = *(v2 + 16);
  v20 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C93905D0;
  *(v15 + 32) = v7;
  *(v15 + 40) = v8;
  *(v15 + 48) = v9;
  *(v15 + 56) = v10;
  *(v15 + 64) = v11;
  *(v15 + 72) = v12;
  *(v15 + 80) = v20;
  *(v15 + 88) = v13;
  *(v15 + 96) = v19;
  *(v15 + 104) = v14;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[61] = isa;

  v1[2] = v1;
  v1[3] = AVAsynchronousKeyValueLoading.load<A, B, C, D, E>(_:_:_:_:_:);
  v17 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v1[13] = &block_descriptor_24;
  v1[14] = v17;
  [v22 loadValuesAsynchronouslyForKeys:isa completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v21);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E>(_:_:_:_:_:), 0, 0);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v82 = *(v0 + 448);
  v3 = *(v0 + 440);
  v78 = v1;
  v81 = v3;
  v107 = *(v0 + 424);
  v84 = *(v0 + 416);
  v4 = *(v0 + 408);
  v104 = *(v0 + 392);
  v87 = *(v0 + 384);
  v99 = *(v0 + 376);
  v86 = *(v0 + 360);
  v101 = *(v0 + 344);
  v88 = *(v0 + 352);
  v91 = *(v0 + 336);
  v5 = *(v0 + 320);
  v6 = *(v0 + 312);
  v94 = *(v0 + 328);
  v97 = *(v0 + 256);
  v72 = *(v0 + 240);
  v75 = *(v0 + 248);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v8, v1);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v7, v3);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v72, v4);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v75, v99);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v97, v101);
  v9 = (v5 + v6[12]);
  v10 = (v5 + v6[16]);
  v11 = (v5 + v6[20]);
  v12 = (v5 + v6[24]);
  v13 = *(v2 + 16);
  v13(v5, v78, v82);
  v98 = v9;
  v14 = v84;
  v85 = *(v107 + 16);
  v85(v9, v81, v14);
  v15 = *(v104 + 16);
  v16 = v10;
  v15(v10, v4, v87);
  v17 = *(v86 + 16);
  v18 = v11;
  v17(v11, v99, v88);
  v100 = v12;
  (*(v91 + 16))(v12, v101, v94);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v27 = *(v0 + 328);
    v28 = *(v0 + 336);
    v13(*(v0 + 464), *(v0 + 320), *(v0 + 448));
    (*(v28 + 8))(v12, v27);
    v22 = (v0 + 360);
    v89 = *(v0 + 352);
    v25 = v11;
    v105 = *(v0 + 328);
    v26 = (v0 + 392);
    v92 = *(v0 + 384);
    v79 = v92;
    v95 = v16;
    v102 = *(v0 + 416);
    v73 = v102;
    v24 = (v0 + 424);
  }

  else
  {
    v20 = v16;
    v21 = v11;
    if (!EnumCaseMultiPayload)
    {
      v13(*(v0 + 472), *(v0 + 320), *(v0 + 448));
      if (!swift_getEnumCaseMultiPayload())
      {
        v85(*(v0 + 432), v98, *(v0 + 416));
        if (!swift_getEnumCaseMultiPayload())
        {
          v15(*(v0 + 400), v16, *(v0 + 384));
          if (!swift_getEnumCaseMultiPayload())
          {
            v17(*(v0 + 368), v11, *(v0 + 352));
            if (!swift_getEnumCaseMultiPayload())
            {
              v90 = *(v0 + 480);
              v60 = *(v0 + 472);
              v103 = *(v0 + 456);
              v44 = *(v0 + 440);
              v57 = *(v0 + 448);
              v62 = *(v0 + 432);
              v106 = *(v0 + 424);
              v45 = *(v0 + 416);
              v63 = v45;
              v93 = *(v0 + 408);
              v69 = *(v0 + 400);
              v108 = *(v0 + 392);
              v47 = *(v0 + 376);
              v46 = *(v0 + 384);
              v77 = *(v0 + 368);
              v96 = v21;
              v48 = *(v0 + 352);
              v49 = *(v0 + 360);
              v83 = *(v0 + 320);
              v61 = *(v0 + 296);
              v55 = *(v0 + 280);
              v50 = *(v0 + 272);
              v71 = *(v0 + 304);
              v74 = *(v0 + 216);
              v65 = *(v0 + 208);
              v58 = *(v0 + 288);
              v59 = *(v0 + 200);
              v56 = *(v0 + 192);
              v80 = v20;
              v54 = *(v0 + 184);
              (*(*(v0 + 336) + 8))();
              v51 = *(v49 + 8);
              v51(v47, v48);
              v52 = *(v108 + 8);
              v52(v93, v46);
              v64 = *(v106 + 8);
              v64(v44, v45);
              v53 = *(v103 + 8);
              v53(v90, v57);
              (*(*(v50 - 8) + 32))(v54, v60, v50);
              (*(*(v55 - 8) + 32))(v56, v62);
              (*(*(v58 - 8) + 32))(v59, v69);
              (*(*(v61 - 8) + 32))(v65, v77);
              (*(*(v71 - 8) + 32))(v74, v100);
              v51(v96, v48);
              v52(v80, v46);
              v64(v98, v63);
              v53(v83, v57);

              v42 = *(v0 + 8);
              goto LABEL_22;
            }

            (*(*(*(v0 + 296) - 8) + 8))(*(v0 + 368));
          }

          (*(*(*(v0 + 288) - 8) + 8))(*(v0 + 400));
        }

        (*(*(*(v0 + 280) - 8) + 8))(*(v0 + 432));
      }

      (*(*(*(v0 + 272) - 8) + 8))(*(v0 + 472));
    }

    v22 = (v0 + 336);
    v23 = *(v0 + 416);
    v102 = v23;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v105 = *(v0 + 328);
      v89 = *(v0 + 352);
      v79 = v89;
      v24 = (v0 + 392);
      v92 = *(v0 + 384);
      v73 = v92;
      v95 = v18;
      v98 = v16;
      v25 = v100;
      v26 = (v0 + 360);
    }

    else
    {
      v29 = *(v0 + 384);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v105 = *(v0 + 328);
        v89 = *(v0 + 352);
        v79 = v89;
        v73 = v23;
        v95 = v18;
        v25 = v100;
        v24 = (v0 + 424);
        v26 = (v0 + 360);
        v92 = v29;
      }

      else
      {
        v30 = *(v0 + 352);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v105 = *(v0 + 328);
          v26 = (v0 + 392);
          v79 = v29;
          v95 = v16;
          v73 = v23;
          v25 = v100;
        }

        else
        {
          v105 = *(v0 + 328);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            _StringGuts.grow(_:)(40);
            MEMORY[0x1CCA86740](0xD000000000000015, 0x80000001C9392000);
            swift_getWitnessTable();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            MEMORY[0x1CCA86740](8236, 0xE200000000000000);
            swift_getWitnessTable();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            MEMORY[0x1CCA86740](8236, 0xE200000000000000);
            swift_getWitnessTable();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            MEMORY[0x1CCA86740](8236, 0xE200000000000000);
            swift_getWitnessTable();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            MEMORY[0x1CCA86740](8236, 0xE200000000000000);
            swift_getWitnessTable();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            MEMORY[0x1CCA86740](41, 0xE100000000000000);
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v22 = (v0 + 360);
          v25 = v21;
          v26 = (v0 + 392);
          v79 = v29;
          v95 = v16;
          v73 = v23;
        }

        v24 = (v0 + 424);
        v89 = v30;
        v92 = v29;
      }
    }
  }

  v31 = *v24;
  v32 = *v26;
  v33 = *v22;
  v76 = *(v0 + 480);
  v34 = *(v0 + 456);
  v35 = *(v0 + 448);
  v70 = *(v0 + 440);
  v36 = *(v0 + 424);
  v68 = *(v0 + 408);
  v37 = *(v0 + 392);
  v67 = *(v0 + 376);
  v38 = *(v0 + 360);
  v39 = *(v0 + 336);
  v66 = *(v0 + 344);
  v40 = *(v0 + 320);
  (*(v33 + 8))(v25);
  (*(v32 + 8))(v95, v79);
  (*(v31 + 8))(v98, v73);
  v41 = *(v34 + 8);
  v41(v40, v35);
  swift_willThrow();
  (*(v39 + 8))(v66, v105);
  (*(v38 + 8))(v67, v89);
  (*(v37 + 8))(v68, v92);
  (*(v36 + 8))(v70, v102);
  v41(v76, v35);

  v42 = *(v0 + 8);
LABEL_22:

  return v42();
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9[35] = v26;
  v9[36] = v8;
  v9[33] = v24;
  v9[34] = v25;
  v9[31] = a8;
  v9[32] = v23;
  v9[29] = a6;
  v9[30] = a7;
  v9[27] = a4;
  v9[28] = a5;
  v9[25] = a2;
  v9[26] = a3;
  v9[24] = a1;
  v10 = *a8;
  v11 = *v23;
  v19 = *v24;
  v20 = *v25;
  v21 = *v26;
  v9[37] = *(*a7 + 136);
  v9[18] = type metadata accessor for AVAsyncProperty.Status();
  v9[38] = *(v10 + 136);
  v9[19] = type metadata accessor for AVAsyncProperty.Status();
  v9[39] = *(v11 + 136);
  v9[20] = type metadata accessor for AVAsyncProperty.Status();
  v9[40] = *(v19 + 136);
  v9[21] = type metadata accessor for AVAsyncProperty.Status();
  v9[41] = *(v20 + 136);
  v9[22] = type metadata accessor for AVAsyncProperty.Status();
  v9[42] = *(v21 + 136);
  v9[23] = type metadata accessor for AVAsyncProperty.Status();
  v9[43] = swift_getTupleTypeMetadata();
  v9[44] = swift_task_alloc();
  v12 = type metadata accessor for AVAsyncProperty.Status();
  v9[45] = v12;
  v9[46] = *(v12 - 8);
  v9[47] = swift_task_alloc();
  v13 = type metadata accessor for AVAsyncProperty.Status();
  v9[48] = v13;
  v9[49] = *(v13 - 8);
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();
  v14 = type metadata accessor for AVAsyncProperty.Status();
  v9[52] = v14;
  v9[53] = *(v14 - 8);
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  v15 = type metadata accessor for AVAsyncProperty.Status();
  v9[56] = v15;
  v9[57] = *(v15 - 8);
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v16 = type metadata accessor for AVAsyncProperty.Status();
  v9[60] = v16;
  v9[61] = *(v16 - 8);
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v17 = type metadata accessor for AVAsyncProperty.Status();
  v9[64] = v17;
  v9[65] = *(v17 - 8);
  v9[66] = swift_task_alloc();
  v9[67] = swift_task_alloc();
  v9[68] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F>(_:_:_:_:_:_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F>(_:_:_:_:_:_:)()
{
  v1 = v0;
  v24 = v0 + 2;
  v25 = v0[36];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);
  v12 = *(v5 + 24);
  v13 = *(v4 + 24);
  v22 = *(v4 + 16);
  v23 = *(v5 + 16);
  v14 = *(v3 + 24);
  v15 = *(v2 + 24);
  v20 = *(v2 + 16);
  v21 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C93905E0;
  *(v16 + 32) = v8;
  *(v16 + 40) = v9;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;
  *(v16 + 64) = v23;
  *(v16 + 72) = v12;
  *(v16 + 80) = v22;
  *(v16 + 88) = v13;
  *(v16 + 96) = v21;
  *(v16 + 104) = v14;
  *(v16 + 112) = v20;
  *(v16 + 120) = v15;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[69] = isa;

  v1[2] = v1;
  v1[3] = AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F>(_:_:_:_:_:_:);
  v18 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v1[13] = &block_descriptor_28;
  v1[14] = v18;
  [v25 loadValuesAsynchronouslyForKeys:isa completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v24);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F>(_:_:_:_:_:_:), 0, 0);
}

{
  v1 = *(v0 + 544);
  v81 = v1;
  v127 = *(v0 + 520);
  v2 = *(v0 + 504);
  v91 = *(v0 + 512);
  v85 = v2;
  v124 = *(v0 + 488);
  v92 = *(v0 + 480);
  v3 = *(v0 + 472);
  v88 = v3;
  v121 = *(v0 + 456);
  v95 = *(v0 + 448);
  v110 = *(v0 + 440);
  v118 = *(v0 + 424);
  v98 = *(v0 + 416);
  v113 = *(v0 + 408);
  v97 = *(v0 + 392);
  v99 = *(v0 + 384);
  v78 = *(v0 + 376);
  v4 = *(v0 + 352);
  v100 = *(v0 + 368);
  v103 = *(v0 + 360);
  v5 = *(v0 + 344);
  v116 = *(v0 + 280);
  v106 = *(v0 + 264);
  v108 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v8, v1);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v6, v2);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v7, v3);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v106, v110);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v108, v113);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v116, v78);
  v9 = (v4 + v5[12]);
  v10 = (v4 + v5[16]);
  v11 = (v4 + v5[20]);
  v12 = (v4 + v5[24]);
  v13 = (v4 + v5[28]);
  v14 = v81;
  v82 = *(v127 + 16);
  v82(v4, v14, v91);
  v15 = *(v124 + 16);
  v109 = v9;
  v15(v9, v85, v92);
  v16 = v10;
  v17 = v95;
  v96 = *(v121 + 16);
  v96(v10, v88, v17);
  v18 = *(v118 + 16);
  v117 = v11;
  v18(v11, v110, v98);
  v19 = *(v97 + 16);
  v107 = v12;
  v19(v12, v113, v99);
  v105 = v13;
  (*(v100 + 16))(v13, v78, v103);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    v82(*(v0 + 528), *(v0 + 352), *(v0 + 512));
    (*(v27 + 8))(v13, v26);
    v22 = (v0 + 392);
    v111 = *(v0 + 384);
    v25 = v12;
    v28 = (v0 + 424);
    v125 = *(v0 + 416);
    v101 = v125;
    v107 = v117;
    v122 = *(v0 + 360);
    v29 = (v0 + 456);
    v119 = *(v0 + 448);
    v93 = v119;
    v114 = *(v0 + 480);
    v117 = v16;
    v86 = v114;
    v24 = (v0 + 488);
  }

  else
  {
    v21 = v16;
    if (!EnumCaseMultiPayload)
    {
      v82(*(v0 + 536), *(v0 + 352), *(v0 + 512));
      if (!swift_getEnumCaseMultiPayload())
      {
        v15(*(v0 + 496), v109, *(v0 + 480));
        if (!swift_getEnumCaseMultiPayload())
        {
          v96(*(v0 + 464), v16, *(v0 + 448));
          if (!swift_getEnumCaseMultiPayload())
          {
            v18(*(v0 + 432), v117, *(v0 + 416));
            if (!swift_getEnumCaseMultiPayload())
            {
              v19(*(v0 + 400), v12, *(v0 + 384));
              if (!swift_getEnumCaseMultiPayload())
              {
                v115 = *(v0 + 544);
                v61 = *(v0 + 536);
                v120 = *(v0 + 520);
                v112 = *(v0 + 512);
                v102 = *(v0 + 504);
                v64 = *(v0 + 496);
                v123 = *(v0 + 488);
                v45 = *(v0 + 472);
                v104 = *(v0 + 480);
                v67 = *(v0 + 464);
                v126 = *(v0 + 456);
                v46 = *(v0 + 440);
                v47 = *(v0 + 448);
                v66 = v47;
                v77 = *(v0 + 432);
                v128 = *(v0 + 424);
                v48 = *(v0 + 408);
                v49 = *(v0 + 416);
                v50 = *(v0 + 392);
                v87 = *(v0 + 400);
                v51 = *(v0 + 384);
                v74 = v51;
                v94 = *(v0 + 352);
                v65 = *(v0 + 328);
                v59 = *(v0 + 312);
                v52 = *(v0 + 296);
                v57 = *(v0 + 304);
                v80 = *(v0 + 336);
                v84 = *(v0 + 232);
                v69 = *(v0 + 224);
                v62 = *(v0 + 320);
                v63 = *(v0 + 216);
                v60 = *(v0 + 208);
                v58 = *(v0 + 200);
                v90 = v21;
                v53 = *(v0 + 192);
                (*(*(v0 + 368) + 8))();
                v54 = *(v50 + 8);
                v54(v48, v51);
                v72 = *(v128 + 8);
                v72(v46, v49);
                v68 = *(v126 + 8);
                v68(v45, v47);
                v55 = *(v123 + 8);
                v55(v102, v104);
                v56 = *(v120 + 8);
                v56(v115, v112);
                (*(*(v52 - 8) + 32))(v53, v61, v52);
                (*(*(v57 - 8) + 32))(v58, v64);
                (*(*(v59 - 8) + 32))(v60, v67);
                (*(*(v62 - 8) + 32))(v63, v77);
                (*(*(v65 - 8) + 32))(v69, v87);
                (*(*(v80 - 8) + 32))(v84, v105);
                v54(v107, v74);
                v72(v117, v49);
                v68(v90, v66);
                v55(v109, v104);
                v56(v94, v112);

                v42 = *(v0 + 8);
                goto LABEL_20;
              }

              (*(*(*(v0 + 328) - 8) + 8))(*(v0 + 400));
            }

            (*(*(*(v0 + 320) - 8) + 8))(*(v0 + 432));
          }

          (*(*(*(v0 + 312) - 8) + 8))(*(v0 + 464));
        }

        (*(*(*(v0 + 304) - 8) + 8))(*(v0 + 496));
      }

      (*(*(*(v0 + 296) - 8) + 8))(*(v0 + 536));
    }

    v22 = (v0 + 368);
    v23 = *(v0 + 480);
    v114 = v23;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v122 = *(v0 + 360);
      v111 = *(v0 + 384);
      v101 = v111;
      v125 = *(v0 + 416);
      v93 = v125;
      v24 = (v0 + 456);
      v119 = *(v0 + 448);
      v86 = v119;
      v109 = v16;
      v25 = v105;
    }

    else
    {
      v30 = *(v0 + 448);
      v119 = v30;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v125 = *(v0 + 416);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v122 = *(v0 + 360);
          v111 = *(v0 + 384);
          v101 = v111;
          v29 = (v0 + 456);
          v93 = v30;
          v117 = v16;
          v86 = v23;
          v25 = v105;
          v24 = (v0 + 488);
          v28 = (v0 + 392);
        }

        else
        {
          v44 = *(v0 + 384);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v122 = *(v0 + 360);
            v28 = (v0 + 424);
            v101 = v125;
            v107 = v117;
            v29 = (v0 + 456);
            v93 = v30;
            v117 = v16;
            v86 = v23;
            v25 = v105;
          }

          else
          {
            v122 = *(v0 + 360);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              _StringGuts.grow(_:)(44);
              MEMORY[0x1CCA86740](0xD000000000000015, 0x80000001C9392000);
              swift_getWitnessTable();
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x1CCA86740](8236, 0xE200000000000000);
              swift_getWitnessTable();
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x1CCA86740](8236, 0xE200000000000000);
              swift_getWitnessTable();
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x1CCA86740](8236, 0xE200000000000000);
              swift_getWitnessTable();
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x1CCA86740](8236, 0xE200000000000000);
              swift_getWitnessTable();
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x1CCA86740](8236, 0xE200000000000000);
              swift_getWitnessTable();
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x1CCA86740](41, 0xE100000000000000);
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v22 = (v0 + 392);
            v25 = v12;
            v28 = (v0 + 424);
            v101 = v125;
            v107 = v117;
            v29 = (v0 + 456);
            v93 = v30;
            v117 = v16;
            v86 = v23;
          }

          v24 = (v0 + 488);
          v111 = v44;
        }

        goto LABEL_19;
      }

      v122 = *(v0 + 360);
      v111 = *(v0 + 384);
      v101 = v111;
      v125 = *(v0 + 416);
      v93 = v125;
      v86 = v23;
      v25 = v105;
      v24 = (v0 + 488);
    }

    v29 = (v0 + 424);
    v28 = (v0 + 392);
  }

LABEL_19:
  v31 = *v24;
  v32 = *v29;
  v33 = *v28;
  v34 = *v22;
  v89 = *(v0 + 544);
  v35 = *(v0 + 520);
  v71 = *(v0 + 512);
  v83 = *(v0 + 504);
  v76 = *(v0 + 472);
  v79 = *(v0 + 488);
  v36 = *(v0 + 456);
  v75 = *(v0 + 440);
  v37 = *(v0 + 424);
  v73 = *(v0 + 408);
  v38 = *(v0 + 392);
  v39 = *(v0 + 368);
  v70 = *(v0 + 376);
  v40 = *(v0 + 352);
  (*(v34 + 8))(v25);
  (*(v33 + 8))(v107, v101);
  (*(v32 + 8))(v117, v93);
  (*(v31 + 8))(v109, v86);
  v41 = *(v35 + 8);
  v41(v40, v71);
  swift_willThrow();
  (*(v39 + 8))(v70, v122);
  (*(v38 + 8))(v73, v111);
  (*(v37 + 8))(v75, v125);
  (*(v36 + 8))(v76, v119);
  (*(v79 + 8))(v83, v114);
  v41(v89, v71);

  v42 = *(v0 + 8);
LABEL_20:

  return v42();
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[38] = v30;
  v9[39] = v8;
  v9[36] = v28;
  v9[37] = v29;
  v9[34] = v26;
  v9[35] = v27;
  v9[32] = a8;
  v9[33] = v25;
  v9[30] = a6;
  v9[31] = a7;
  v9[28] = a4;
  v9[29] = a5;
  v9[26] = a2;
  v9[27] = a3;
  v9[25] = a1;
  v10 = *v25;
  v11 = *v26;
  v20 = *v27;
  v21 = *v28;
  v22 = *v29;
  v23 = *v30;
  v9[40] = *(*a8 + 136);
  v9[18] = type metadata accessor for AVAsyncProperty.Status();
  v9[41] = *(v10 + 136);
  v9[19] = type metadata accessor for AVAsyncProperty.Status();
  v9[42] = *(v11 + 136);
  v9[20] = type metadata accessor for AVAsyncProperty.Status();
  v9[43] = *(v20 + 136);
  v9[21] = type metadata accessor for AVAsyncProperty.Status();
  v9[44] = *(v21 + 136);
  v9[22] = type metadata accessor for AVAsyncProperty.Status();
  v9[45] = *(v22 + 136);
  v9[23] = type metadata accessor for AVAsyncProperty.Status();
  v9[46] = *(v23 + 136);
  v9[24] = type metadata accessor for AVAsyncProperty.Status();
  v9[47] = swift_getTupleTypeMetadata();
  v9[48] = swift_task_alloc();
  v12 = type metadata accessor for AVAsyncProperty.Status();
  v9[49] = v12;
  v9[50] = *(v12 - 8);
  v9[51] = swift_task_alloc();
  v13 = type metadata accessor for AVAsyncProperty.Status();
  v9[52] = v13;
  v9[53] = *(v13 - 8);
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  v14 = type metadata accessor for AVAsyncProperty.Status();
  v9[56] = v14;
  v9[57] = *(v14 - 8);
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v15 = type metadata accessor for AVAsyncProperty.Status();
  v9[60] = v15;
  v9[61] = *(v15 - 8);
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v16 = type metadata accessor for AVAsyncProperty.Status();
  v9[64] = v16;
  v9[65] = *(v16 - 8);
  v9[66] = swift_task_alloc();
  v9[67] = swift_task_alloc();
  v17 = type metadata accessor for AVAsyncProperty.Status();
  v9[68] = v17;
  v9[69] = *(v17 - 8);
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  v18 = type metadata accessor for AVAsyncProperty.Status();
  v9[72] = v18;
  v9[73] = *(v18 - 8);
  v9[74] = swift_task_alloc();
  v9[75] = swift_task_alloc();
  v9[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)()
{
  v1 = v0;
  v2 = v0[38];
  v28 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = *(v7 + 24);
  v12 = *(v6 + 24);
  v26 = *(v6 + 16);
  v27 = *(v7 + 16);
  v13 = *(v5 + 24);
  v14 = *(v4 + 24);
  v24 = *(v4 + 16);
  v25 = *(v5 + 16);
  v15 = *(v3 + 24);
  v16 = *(v2 + 24);
  v22 = *(v2 + 16);
  v23 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C93905F0;
  *(v17 + 32) = v9;
  *(v17 + 40) = v10;
  *(v17 + 48) = v27;
  *(v17 + 56) = v11;
  *(v17 + 64) = v26;
  *(v17 + 72) = v12;
  *(v17 + 80) = v25;
  *(v17 + 88) = v13;
  *(v17 + 96) = v24;
  *(v17 + 104) = v14;
  *(v17 + 112) = v23;
  *(v17 + 120) = v15;
  *(v17 + 128) = v22;
  *(v17 + 136) = v16;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[77] = isa;

  v19 = v0 + 2;
  v0[2] = v0;
  v0[3] = AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:);
  v20 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v1[13] = &block_descriptor_32;
  v1[14] = v20;
  [v28 loadValuesAsynchronouslyForKeys:isa completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v19);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:), 0, 0);
}

{
  v1 = *(v0 + 608);
  v87 = v1;
  v146 = *(v0 + 584);
  v96 = *(v0 + 576);
  v2 = *(v0 + 568);
  v90 = v2;
  v144 = *(v0 + 552);
  v98 = *(v0 + 544);
  v3 = *(v0 + 536);
  v93 = v3;
  v141 = *(v0 + 520);
  v100 = *(v0 + 512);
  v119 = *(v0 + 504);
  v134 = *(v0 + 488);
  v102 = *(v0 + 480);
  v128 = *(v0 + 472);
  v131 = *(v0 + 456);
  v104 = *(v0 + 448);
  v122 = *(v0 + 440);
  v103 = *(v0 + 424);
  v125 = *(v0 + 408);
  v105 = *(v0 + 416);
  v107 = *(v0 + 400);
  v4 = *(v0 + 384);
  v110 = *(v0 + 392);
  v5 = *(v0 + 376);
  v137 = *(v0 + 296);
  v139 = *(v0 + 304);
  v117 = *(v0 + 288);
  v6 = *(v0 + 272);
  v115 = *(v0 + 280);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v7, v1);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v8, v2);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v6, v3);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v115, v119);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v117, v128);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v137, v122);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v139, v125);
  v9 = (v4 + v5[12]);
  v10 = (v4 + v5[16]);
  v11 = (v4 + v5[20]);
  v12 = (v4 + v5[24]);
  v13 = (v4 + v5[28]);
  v14 = (v4 + v5[32]);
  v15 = *(v146 + 16);
  v15(v4, v87, v96);
  v140 = v9;
  v16 = v98;
  v99 = *(v144 + 16);
  v99(v9, v90, v16);
  v17 = *(v141 + 16);
  v114 = v10;
  v17(v10, v93, v100);
  v18 = *(v134 + 16);
  v138 = v11;
  v18(v11, v119, v102);
  v19 = *(v131 + 16);
  v118 = v12;
  v19(v12, v128, v104);
  v20 = *(v103 + 16);
  v116 = v13;
  v20(v13, v122, v105);
  v113 = v14;
  (*(v107 + 16))(v14, v125, v110);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(v0 + 392);
    v27 = *(v0 + 400);
    v15(*(v0 + 592), *(v0 + 384), *(v0 + 576));
    (*(v27 + 8))(v113, v26);
    v22 = (v0 + 424);
    v142 = *(v0 + 416);
    v28 = (v0 + 456);
    v120 = *(v0 + 448);
    v123 = v120;
    v25 = v13;
    v116 = v118;
    v29 = (v0 + 488);
    v129 = *(v0 + 480);
    v111 = v129;
    v118 = v138;
    v135 = *(v0 + 392);
    v30 = (v0 + 520);
    v132 = *(v0 + 512);
    v106 = *(v0 + 544);
    v108 = v132;
    v138 = v114;
    v126 = v106;
    v24 = (v0 + 552);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v15(*(v0 + 600), *(v0 + 384), *(v0 + 576));
      if (!swift_getEnumCaseMultiPayload())
      {
        v99(*(v0 + 560), v140, *(v0 + 544));
        if (!swift_getEnumCaseMultiPayload())
        {
          v17(*(v0 + 528), v114, *(v0 + 512));
          if (!swift_getEnumCaseMultiPayload())
          {
            v18(*(v0 + 496), v138, *(v0 + 480));
            if (!swift_getEnumCaseMultiPayload())
            {
              v19(*(v0 + 464), v118, *(v0 + 448));
              if (!swift_getEnumCaseMultiPayload())
              {
                v20(*(v0 + 432), v13, *(v0 + 416));
                if (!swift_getEnumCaseMultiPayload())
                {
                  v124 = *(v0 + 608);
                  v127 = *(v0 + 600);
                  v121 = *(v0 + 576);
                  v130 = *(v0 + 568);
                  v133 = *(v0 + 584);
                  v67 = *(v0 + 560);
                  v136 = *(v0 + 552);
                  v109 = *(v0 + 536);
                  v112 = *(v0 + 544);
                  v70 = *(v0 + 528);
                  v143 = *(v0 + 520);
                  v49 = *(v0 + 504);
                  v48 = *(v0 + 512);
                  v71 = v48;
                  v77 = *(v0 + 496);
                  v145 = *(v0 + 488);
                  v50 = *(v0 + 472);
                  v51 = *(v0 + 480);
                  v73 = v51;
                  v89 = *(v0 + 464);
                  v148 = *(v0 + 456);
                  v53 = *(v0 + 440);
                  v52 = *(v0 + 448);
                  v54 = *(v0 + 424);
                  v97 = *(v0 + 432);
                  v55 = *(v0 + 416);
                  v83 = v55;
                  v101 = *(v0 + 384);
                  v74 = *(v0 + 360);
                  v65 = *(v0 + 344);
                  v63 = *(v0 + 336);
                  v56 = *(v0 + 320);
                  v61 = *(v0 + 328);
                  v92 = *(v0 + 368);
                  v95 = *(v0 + 248);
                  v81 = *(v0 + 240);
                  v68 = *(v0 + 352);
                  v69 = *(v0 + 232);
                  v66 = *(v0 + 224);
                  v64 = *(v0 + 216);
                  v62 = *(v0 + 208);
                  v60 = *(v0 + 200);
                  (*(*(v0 + 400) + 8))();
                  v86 = *(v54 + 8);
                  v86(v53, v55);
                  v79 = *(v148 + 8);
                  v79(v50, v52);
                  v72 = *(v145 + 8);
                  v72(v49, v51);
                  v57 = *(v143 + 8);
                  v57(v109, v48);
                  v58 = *(v136 + 8);
                  v58(v130, v112);
                  v59 = *(v133 + 8);
                  v59(v124, v121);
                  (*(*(v56 - 8) + 32))(v60, v127, v56);
                  (*(*(v61 - 8) + 32))(v62, v67);
                  (*(*(v63 - 8) + 32))(v64, v70);
                  (*(*(v65 - 8) + 32))(v66, v77);
                  (*(*(v68 - 8) + 32))(v69, v89);
                  (*(*(v74 - 8) + 32))(v81, v97);
                  (*(*(v92 - 8) + 32))(v95, v113);
                  v86(v116, v83);
                  v79(v118, v52);
                  v72(v138, v73);
                  v57(v114, v71);
                  v58(v140, v112);
                  v59(v101, v121);

                  v43 = *(v0 + 8);
                  goto LABEL_22;
                }

                (*(*(*(v0 + 360) - 8) + 8))(*(v0 + 432));
              }

              (*(*(*(v0 + 352) - 8) + 8))(*(v0 + 464));
            }

            (*(*(*(v0 + 344) - 8) + 8))(*(v0 + 496));
          }

          (*(*(*(v0 + 336) - 8) + 8))(*(v0 + 528));
        }

        (*(*(*(v0 + 328) - 8) + 8))(*(v0 + 560));
      }

      (*(*(*(v0 + 320) - 8) + 8))(*(v0 + 600));
    }

    v22 = (v0 + 400);
    v23 = *(v0 + 544);
    v126 = v23;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v135 = *(v0 + 392);
      v142 = *(v0 + 416);
      v120 = v142;
      v123 = *(v0 + 448);
      v129 = *(v0 + 480);
      v108 = v129;
      v111 = v123;
      v24 = (v0 + 520);
      v132 = *(v0 + 512);
      v106 = v132;
      v140 = v114;
      v25 = v14;
    }

    else
    {
      v31 = *(v0 + 512);
      v132 = v31;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v45 = *(v0 + 480);
        v129 = v45;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v135 = *(v0 + 392);
          v142 = *(v0 + 416);
          v120 = v142;
          v123 = *(v0 + 448);
          v111 = v123;
          v30 = (v0 + 520);
          v106 = v23;
          v108 = v31;
          v138 = v114;
          v25 = v14;
          v24 = (v0 + 552);
          v29 = (v0 + 456);
          v28 = (v0 + 424);
        }

        else
        {
          v46 = *(v0 + 448);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v135 = *(v0 + 392);
            v142 = *(v0 + 416);
            v120 = v142;
            v29 = (v0 + 488);
            v111 = v45;
            v118 = v138;
            v30 = (v0 + 520);
            v106 = v23;
            v108 = v31;
            v25 = v14;
            v138 = v114;
            v24 = (v0 + 552);
            v28 = (v0 + 424);
            v123 = v46;
          }

          else
          {
            v142 = *(v0 + 416);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v135 = *(v0 + 392);
              v28 = (v0 + 456);
              v120 = v46;
              v116 = v118;
              v29 = (v0 + 488);
              v111 = v45;
              v118 = v138;
              v30 = (v0 + 520);
              v106 = v23;
              v108 = v31;
              v25 = v14;
              v47 = v114;
            }

            else
            {
              v135 = *(v0 + 392);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                _StringGuts.grow(_:)(48);
                MEMORY[0x1CCA86740](0xD000000000000015, 0x80000001C9392000);
                swift_getWitnessTable();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                swift_getWitnessTable();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                swift_getWitnessTable();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                swift_getWitnessTable();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                swift_getWitnessTable();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                swift_getWitnessTable();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                swift_getWitnessTable();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                MEMORY[0x1CCA86740](41, 0xE100000000000000);
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v22 = (v0 + 424);
              v25 = v13;
              v28 = (v0 + 456);
              v120 = v46;
              v116 = v118;
              v29 = (v0 + 488);
              v111 = v45;
              v118 = v138;
              v30 = (v0 + 520);
              v106 = v23;
              v108 = v31;
              v47 = v114;
            }

            v138 = v47;
            v24 = (v0 + 552);
            v123 = v46;
          }
        }

        goto LABEL_21;
      }

      v135 = *(v0 + 392);
      v142 = *(v0 + 416);
      v120 = v142;
      v123 = *(v0 + 448);
      v108 = *(v0 + 480);
      v111 = v123;
      v129 = v108;
      v106 = v23;
      v25 = v14;
      v24 = (v0 + 552);
    }

    v29 = (v0 + 456);
    v28 = (v0 + 424);
    v30 = (v0 + 488);
  }

LABEL_21:
  v32 = *v24;
  v33 = *v30;
  v34 = *v29;
  v35 = *v28;
  v36 = *v22;
  v94 = *(v0 + 608);
  v147 = *(v0 + 584);
  v76 = *(v0 + 576);
  v88 = *(v0 + 552);
  v91 = *(v0 + 568);
  v84 = *(v0 + 520);
  v85 = *(v0 + 536);
  v37 = *(v0 + 488);
  v80 = *(v0 + 472);
  v82 = *(v0 + 504);
  v38 = *(v0 + 456);
  v78 = *(v0 + 440);
  v39 = *(v0 + 424);
  v40 = *(v0 + 400);
  v75 = *(v0 + 408);
  v41 = *(v0 + 384);
  (*(v36 + 8))(v25);
  (*(v35 + 8))(v116, v120);
  (*(v34 + 8))(v118, v111);
  (*(v33 + 8))(v138, v108);
  (*(v32 + 8))(v140, v106);
  v42 = *(v147 + 8);
  v42(v41, v76);
  swift_willThrow();
  (*(v40 + 8))(v75, v135);
  (*(v39 + 8))(v78, v142);
  (*(v38 + 8))(v80, v123);
  (*(v37 + 8))(v82, v129);
  (*(v84 + 8))(v85, v132);
  (*(v88 + 8))(v91, v126);
  v42(v94, v76);

  v43 = *(v0 + 8);
LABEL_22:

  return v43();
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[41] = v34;
  v9[42] = v8;
  v9[39] = v32;
  v9[40] = v33;
  v9[37] = v30;
  v9[38] = v31;
  v9[35] = v28;
  v9[36] = v29;
  v9[33] = a8;
  v9[34] = v27;
  v9[31] = a6;
  v9[32] = a7;
  v9[29] = a4;
  v9[30] = a5;
  v9[27] = a2;
  v9[28] = a3;
  v9[26] = a1;
  v10 = *v28;
  v11 = *v29;
  v21 = *v30;
  v22 = *v31;
  v23 = *v32;
  v24 = *v33;
  v25 = *v34;
  v9[43] = *(*v27 + 136);
  v9[10] = type metadata accessor for AVAsyncProperty.Status();
  v9[44] = *(v10 + 136);
  v9[11] = type metadata accessor for AVAsyncProperty.Status();
  v9[45] = *(v11 + 136);
  v9[12] = type metadata accessor for AVAsyncProperty.Status();
  v9[46] = *(v21 + 136);
  v9[13] = type metadata accessor for AVAsyncProperty.Status();
  v9[47] = *(v22 + 136);
  v9[14] = type metadata accessor for AVAsyncProperty.Status();
  v9[48] = *(v23 + 136);
  v9[15] = type metadata accessor for AVAsyncProperty.Status();
  v9[49] = *(v24 + 136);
  v9[16] = type metadata accessor for AVAsyncProperty.Status();
  v9[50] = *(v25 + 136);
  v9[17] = type metadata accessor for AVAsyncProperty.Status();
  v9[51] = swift_getTupleTypeMetadata();
  v9[52] = swift_task_alloc();
  v12 = type metadata accessor for AVAsyncProperty.Status();
  v9[53] = v12;
  v9[54] = *(v12 - 8);
  v9[55] = swift_task_alloc();
  v13 = type metadata accessor for AVAsyncProperty.Status();
  v9[56] = v13;
  v9[57] = *(v13 - 8);
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v14 = type metadata accessor for AVAsyncProperty.Status();
  v9[60] = v14;
  v9[61] = *(v14 - 8);
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v15 = type metadata accessor for AVAsyncProperty.Status();
  v9[64] = v15;
  v9[65] = *(v15 - 8);
  v9[66] = swift_task_alloc();
  v9[67] = swift_task_alloc();
  v16 = type metadata accessor for AVAsyncProperty.Status();
  v9[68] = v16;
  v9[69] = *(v16 - 8);
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  v17 = type metadata accessor for AVAsyncProperty.Status();
  v9[72] = v17;
  v9[73] = *(v17 - 8);
  v9[74] = swift_task_alloc();
  v9[75] = swift_task_alloc();
  v18 = type metadata accessor for AVAsyncProperty.Status();
  v9[76] = v18;
  v9[77] = *(v18 - 8);
  v9[78] = swift_task_alloc();
  v9[79] = swift_task_alloc();
  v19 = type metadata accessor for AVAsyncProperty.Status();
  v9[80] = v19;
  v9[81] = *(v19 - 8);
  v9[82] = swift_task_alloc();
  v9[83] = swift_task_alloc();
  v9[84] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:), 0, 0);
}

uint64_t AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)()
{
  v1 = v0;
  v30 = v0 + 2;
  v31 = v0[42];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v10 = *(v9 + 24);
  v11 = *(v8 + 24);
  v28 = *(v8 + 16);
  v29 = *(v9 + 16);
  v12 = *(v7 + 24);
  v13 = *(v6 + 24);
  v26 = *(v6 + 16);
  v27 = *(v7 + 16);
  v14 = *(v5 + 24);
  v15 = *(v4 + 24);
  v24 = *(v4 + 16);
  v25 = *(v5 + 16);
  v16 = *(v3 + 24);
  v17 = *(v2 + 24);
  v22 = *(v2 + 16);
  v23 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C9390600;
  *(v18 + 32) = v29;
  *(v18 + 40) = v10;
  *(v18 + 48) = v28;
  *(v18 + 56) = v11;
  *(v18 + 64) = v27;
  *(v18 + 72) = v12;
  *(v18 + 80) = v26;
  *(v18 + 88) = v13;
  *(v18 + 96) = v25;
  *(v18 + 104) = v14;
  *(v18 + 112) = v24;
  *(v18 + 120) = v15;
  *(v18 + 128) = v23;
  *(v18 + 136) = v16;
  *(v18 + 144) = v22;
  *(v18 + 152) = v17;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[85] = isa;

  v1[2] = v1;
  v1[3] = AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:);
  v20 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v1[21] = &block_descriptor_36;
  v1[22] = v20;
  [v31 loadValuesAsynchronouslyForKeys:isa completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v30);
}

{

  return MEMORY[0x1EEE6DFA0](AVAsynchronousKeyValueLoading.load<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:), 0, 0);
}

{
  v1 = *(v0 + 672);
  v94 = v1;
  v162 = *(v0 + 648);
  v99 = *(v0 + 640);
  v133 = *(v0 + 632);
  v160 = *(v0 + 616);
  v102 = *(v0 + 608);
  v2 = *(v0 + 600);
  v157 = *(v0 + 584);
  v103 = *(v0 + 576);
  v129 = *(v0 + 568);
  v151 = *(v0 + 552);
  v105 = *(v0 + 544);
  v142 = *(v0 + 536);
  v148 = *(v0 + 520);
  v107 = *(v0 + 512);
  v145 = *(v0 + 504);
  v106 = *(v0 + 488);
  v109 = *(v0 + 480);
  v137 = *(v0 + 472);
  v108 = *(v0 + 456);
  v112 = *(v0 + 448);
  v139 = *(v0 + 440);
  v3 = *(v0 + 416);
  v115 = *(v0 + 432);
  v118 = *(v0 + 424);
  v4 = *(v0 + 408);
  v154 = *(v0 + 328);
  v125 = *(v0 + 312);
  v127 = *(v0 + 320);
  v5 = *(v0 + 296);
  v123 = *(v0 + 304);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 272);

  AVAsynchronousKeyValueLoading.status<A>(of:)(v8, v1);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v7, v133);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v6, v2);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v5, v129);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v123, v142);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v125, v145);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v127, v137);
  AVAsynchronousKeyValueLoading.status<A>(of:)(v154, v139);
  v9 = (v3 + v4[12]);
  v10 = (v3 + v4[16]);
  v11 = (v3 + v4[20]);
  v12 = (v3 + v4[24]);
  v13 = (v3 + v4[28]);
  v14 = (v3 + v4[32]);
  v15 = (v3 + v4[36]);
  v16 = v94;
  v95 = *(v162 + 16);
  v95(v3, v16, v99);
  v128 = v9;
  v17 = v133;
  v134 = *(v160 + 16);
  v134(v9, v17, v102);
  v121 = v10;
  v18 = v10;
  v19 = *(v157 + 16);
  v19(v18, v2, v103);
  v155 = v11;
  v20 = v129;
  v130 = *(v151 + 16);
  v130(v11, v20, v105);
  v21 = *(v148 + 16);
  v126 = v12;
  v21(v12, v142, v107);
  v22 = *(v106 + 16);
  v124 = v13;
  v22(v13, v145, v109);
  v23 = *(v108 + 16);
  v122 = v14;
  v23(v14, v137, v112);
  v138 = v15;
  (*(v115 + 16))(v15, v139, v118);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(v0 + 424);
    v30 = *(v0 + 432);
    v95(*(v0 + 656), *(v0 + 416), *(v0 + 640));
    (*(v30 + 8))(v15, v29);
    v25 = (v0 + 456);
    v143 = *(v0 + 448);
    v31 = (v0 + 488);
    v146 = *(v0 + 480);
    v131 = v146;
    v28 = v14;
    v122 = v13;
    v32 = (v0 + 520);
    v149 = *(v0 + 512);
    v119 = v149;
    v124 = v126;
    v33 = (v0 + 552);
    v158 = *(v0 + 544);
    v116 = v158;
    v126 = v155;
    v140 = *(v0 + 424);
    v34 = (v0 + 584);
    v152 = *(v0 + 576);
    v113 = v152;
    v155 = v121;
    v135 = *(v0 + 608);
    v110 = v135;
    v27 = (v0 + 616);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v95(*(v0 + 664), *(v0 + 416), *(v0 + 640));
      if (!swift_getEnumCaseMultiPayload())
      {
        v134(*(v0 + 624), v128, *(v0 + 608));
        if (!swift_getEnumCaseMultiPayload())
        {
          v19(*(v0 + 592), v121, *(v0 + 576));
          if (!swift_getEnumCaseMultiPayload())
          {
            v130(*(v0 + 560), v155, *(v0 + 544));
            if (!swift_getEnumCaseMultiPayload())
            {
              v21(*(v0 + 528), v126, *(v0 + 512));
              if (!swift_getEnumCaseMultiPayload())
              {
                v22(*(v0 + 496), v13, *(v0 + 480));
                if (!swift_getEnumCaseMultiPayload())
                {
                  v23(*(v0 + 464), v14, *(v0 + 448));
                  if (!swift_getEnumCaseMultiPayload())
                  {
                    v136 = *(v0 + 672);
                    v64 = *(v0 + 664);
                    v147 = *(v0 + 648);
                    v132 = *(v0 + 640);
                    v141 = *(v0 + 632);
                    v67 = *(v0 + 624);
                    v150 = *(v0 + 616);
                    v120 = *(v0 + 608);
                    v144 = *(v0 + 600);
                    v68 = *(v0 + 592);
                    v153 = *(v0 + 584);
                    v117 = *(v0 + 576);
                    v114 = *(v0 + 568);
                    v72 = *(v0 + 560);
                    v159 = *(v0 + 552);
                    v111 = *(v0 + 544);
                    v48 = *(v0 + 536);
                    v89 = *(v0 + 528);
                    v161 = *(v0 + 520);
                    v49 = *(v0 + 504);
                    v50 = *(v0 + 512);
                    v93 = *(v0 + 496);
                    v164 = *(v0 + 488);
                    v52 = *(v0 + 472);
                    v51 = *(v0 + 480);
                    v53 = *(v0 + 456);
                    v54 = *(v0 + 448);
                    v104 = *(v0 + 416);
                    v98 = *(v0 + 400);
                    v101 = *(v0 + 464);
                    v84 = *(v0 + 392);
                    v86 = v54;
                    v63 = *(v0 + 368);
                    v61 = *(v0 + 360);
                    v55 = *(v0 + 344);
                    v59 = *(v0 + 352);
                    v97 = *(v0 + 264);
                    v82 = *(v0 + 256);
                    v69 = *(v0 + 248);
                    v70 = *(v0 + 384);
                    v65 = *(v0 + 240);
                    v66 = *(v0 + 376);
                    v62 = *(v0 + 232);
                    v60 = *(v0 + 224);
                    v58 = *(v0 + 216);
                    v56 = *(v0 + 208);
                    (*(*(v0 + 432) + 8))();
                    v91 = *(v53 + 8);
                    v91(v52, v54);
                    v80 = *(v164 + 8);
                    v80(v49, v51);
                    v77 = *(v161 + 8);
                    v77(v48, v50);
                    v74 = *(v159 + 8);
                    v74(v114, v111);
                    v73 = *(v153 + 8);
                    v73(v144, v117);
                    v71 = *(v150 + 8);
                    v71(v141, v120);
                    v57 = *(v147 + 8);
                    v57(v136, v132);
                    (*(*(v55 - 8) + 32))(v56, v64, v55);
                    (*(*(v59 - 8) + 32))(v58, v67);
                    (*(*(v61 - 8) + 32))(v60, v68);
                    (*(*(v63 - 8) + 32))(v62, v72);
                    (*(*(v66 - 8) + 32))(v65, v89);
                    (*(*(v70 - 8) + 32))(v69, v93);
                    (*(*(v84 - 8) + 32))(v82, v101);
                    (*(*(v98 - 8) + 32))(v97, v138);
                    v91(v122, v86);
                    v80(v124, v51);
                    v77(v126, v50);
                    v74(v155, v111);
                    v73(v121, v117);
                    v71(v128, v120);
                    v57(v104, v132);

                    v46 = *(v0 + 8);
                    goto LABEL_24;
                  }

                  (*(*(*(v0 + 392) - 8) + 8))(*(v0 + 464));
                }

                (*(*(*(v0 + 384) - 8) + 8))(*(v0 + 496));
              }

              (*(*(*(v0 + 376) - 8) + 8))(*(v0 + 528));
            }

            (*(*(*(v0 + 368) - 8) + 8))(*(v0 + 560));
          }

          (*(*(*(v0 + 360) - 8) + 8))(*(v0 + 592));
        }

        (*(*(*(v0 + 352) - 8) + 8))(*(v0 + 624));
      }

      (*(*(*(v0 + 344) - 8) + 8))(*(v0 + 664));
    }

    v25 = (v0 + 432);
    v26 = *(v0 + 608);
    v135 = v26;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v140 = *(v0 + 424);
      v143 = *(v0 + 448);
      v131 = v143;
      v146 = *(v0 + 480);
      v149 = *(v0 + 512);
      v116 = v149;
      v119 = v146;
      v158 = *(v0 + 544);
      v113 = v158;
      v27 = (v0 + 584);
      v152 = *(v0 + 576);
      v110 = v152;
      v128 = v121;
      v28 = v15;
    }

    else
    {
      v35 = *(v0 + 576);
      v152 = v35;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v158 = *(v0 + 544);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v140 = *(v0 + 424);
          v143 = *(v0 + 448);
          v131 = v143;
          v146 = *(v0 + 480);
          v149 = *(v0 + 512);
          v116 = v149;
          v119 = v146;
          v34 = (v0 + 584);
          v113 = v35;
          v155 = v121;
          v110 = v26;
          v28 = v15;
          v27 = (v0 + 616);
          v32 = (v0 + 488);
          v31 = (v0 + 456);
          v33 = (v0 + 520);
        }

        else
        {
          v149 = *(v0 + 512);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v140 = *(v0 + 424);
            v143 = *(v0 + 448);
            v131 = v143;
            v146 = *(v0 + 480);
            v119 = v146;
            v33 = (v0 + 552);
            v116 = v158;
            v126 = v155;
            v34 = (v0 + 584);
            v113 = v35;
            v155 = v121;
            v110 = v26;
            v28 = v15;
            v27 = (v0 + 616);
            v32 = (v0 + 488);
            v31 = (v0 + 456);
          }

          else
          {
            v146 = *(v0 + 480);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v140 = *(v0 + 424);
              v143 = *(v0 + 448);
              v131 = v143;
              v32 = (v0 + 520);
              v119 = v149;
              v124 = v126;
              v33 = (v0 + 552);
              v116 = v158;
              v126 = v155;
              v34 = (v0 + 584);
              v113 = v35;
              v155 = v121;
              v110 = v26;
              v28 = v15;
              v27 = (v0 + 616);
              v31 = (v0 + 456);
            }

            else
            {
              v143 = *(v0 + 448);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v140 = *(v0 + 424);
                v31 = (v0 + 488);
                v131 = v146;
                v122 = v13;
                v32 = (v0 + 520);
                v119 = v149;
                v124 = v126;
                v33 = (v0 + 552);
                v116 = v158;
                v126 = v155;
                v34 = (v0 + 584);
                v113 = v35;
                v155 = v121;
                v110 = v26;
                v28 = v15;
                v27 = (v0 + 616);
              }

              else
              {
                v140 = *(v0 + 424);
                if (swift_getEnumCaseMultiPayload() != 1)
                {
                  _StringGuts.grow(_:)(52);
                  MEMORY[0x1CCA86740](0xD000000000000015, 0x80000001C9392000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](8236, 0xE200000000000000);
                  swift_getWitnessTable();
                  DefaultStringInterpolation.appendInterpolation<A>(_:)();
                  MEMORY[0x1CCA86740](41, 0xE100000000000000);
                  return _assertionFailure(_:_:file:line:flags:)();
                }

                v25 = (v0 + 456);
                v28 = v14;
                v31 = (v0 + 488);
                v131 = v146;
                v122 = v13;
                v32 = (v0 + 520);
                v119 = v149;
                v124 = v126;
                v33 = (v0 + 552);
                v116 = v158;
                v126 = v155;
                v34 = (v0 + 584);
                v113 = v35;
                v155 = v121;
                v110 = v26;
                v27 = (v0 + 616);
              }
            }
          }
        }

        goto LABEL_23;
      }

      v140 = *(v0 + 424);
      v143 = *(v0 + 448);
      v131 = v143;
      v146 = *(v0 + 480);
      v149 = *(v0 + 512);
      v116 = v149;
      v119 = v146;
      v158 = *(v0 + 544);
      v110 = v26;
      v113 = v158;
      v28 = v15;
      v27 = (v0 + 616);
    }

    v32 = (v0 + 488);
    v31 = (v0 + 456);
    v34 = (v0 + 552);
    v33 = (v0 + 520);
  }

LABEL_23:
  v36 = *v27;
  v37 = *v34;
  v38 = *v33;
  v39 = *v32;
  v40 = *v31;
  v41 = *v25;
  v100 = *(v0 + 672);
  v163 = *(v0 + 648);
  v76 = *(v0 + 640);
  v92 = *(v0 + 616);
  v96 = *(v0 + 632);
  v88 = *(v0 + 584);
  v90 = *(v0 + 600);
  v85 = *(v0 + 552);
  v87 = *(v0 + 568);
  v81 = *(v0 + 520);
  v83 = *(v0 + 536);
  v79 = *(v0 + 504);
  v42 = *(v0 + 488);
  v78 = *(v0 + 472);
  v43 = *(v0 + 456);
  v44 = *(v0 + 432);
  v75 = *(v0 + 440);
  v45 = *(v0 + 416);
  (*(v41 + 8))(v28);
  (*(v40 + 8))(v122, v131);
  (*(v39 + 8))(v124, v119);
  (*(v38 + 8))(v126, v116);
  (*(v37 + 8))(v155, v113);
  (*(v36 + 8))(v128, v110);
  v156 = *(v163 + 8);
  v156(v45, v76);
  swift_willThrow();
  (*(v44 + 8))(v75, v140);
  (*(v43 + 8))(v78, v143);
  (*(v42 + 8))(v79, v146);
  (*(v81 + 8))(v83, v149);
  (*(v85 + 8))(v87, v158);
  (*(v88 + 8))(v90, v152);
  (*(v92 + 8))(v96, v135);
  v156(v100, v76);

  v46 = *(v0 + 8);
LABEL_24:

  return v46();
}

uint64_t @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ()(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1)
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

uint64_t getEnumTagSinglePayload for AVAsyncProperty.Status(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for AVAsyncProperty.Status(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t AVAssetWriterInput.SampleBufferReceiver.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.SampleBufferReceiver.append(_:), v5, v7);
}

uint64_t AVAssetWriterInput.SampleBufferReceiver.append(_:)()
{
  v1 = *(v0[5] + 24);
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = AVAssetWriterInput.SampleBufferReceiver.append(_:);
  v5 = v0[2];
  v4 = v0[3];

  return untilReadyForMoreMediaData(for:)(v5, v4, v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.SampleBufferReceiver.append(_:), v4, v3);
}

{
  if (![*(*(v0 + 40) + 24) isReadyForMoreMediaData])
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVySo08CMSampleE3RefaAAE14DynamicContentOGMd);
  _s9CoreMedia19CMReadySampleBufferV010withUnsafedE0yqd__qd__So08CMSampleE3RefaKYTXEKRi_d__lF();
  if (*(v0 + 80) != 1)
  {
    v3 = *(v1 + 16);
    if ([v3 error])
    {
      swift_willThrow();

      v2 = *(v0 + 8);
      goto LABEL_6;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = *(v0 + 8);
LABEL_6:

  return v2();
}

uint64_t AVAssetWriterInput.SampleBufferReceiver.appendImmediately(_:)()
{
  if (![*(v0 + 24) isReadyForMoreMediaData])
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVySo08CMSampleE3RefaAAE14DynamicContentOGMd);
  _s9CoreMedia19CMReadySampleBufferV010withUnsafedE0yqd__qd__So08CMSampleE3RefaKYTXEKRi_d__lF();
  if ((v4 & 1) == 0)
  {
    v2 = *(v0 + 16);
    if ([v2 error])
    {
      swift_willThrow();

      return v1 & 1;
    }

LABEL_7:
    v1 = 0;
    return v1 & 1;
  }

  v1 = 1;
  return v1 & 1;
}

id _sSo18AVAssetWriterInputC12AVFoundationE20SampleBufferReceiverC17appendImmediatelyySb9CoreMedia07CMReadyeF0VySo08CMSampleF3RefaAGE14DynamicContentOGKFSbAKYTXEfU_TA@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(v2 + 24) appendSampleBuffer_];
  *a2 = result;
  return result;
}

uint64_t AVAssetWriterInput.SampleBufferReceiver.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id AVAssetWriter.inputReceiver(for:)(void *a1)
{
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v1 addInput_];
    type metadata accessor for AVAssetWriterInput.SampleBufferReceiver();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v5 = v1;
    v6 = a1;
    return v4;
  }

  return result;
}

id AVAssetWriter.inputReceiverRequestingMultiPass(for:)(void *a1)
{
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v1 addInput_];
    type metadata accessor for AVAssetWriterInput.SampleBufferReceiver();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v5 = v1;
    v6 = a1;
    [v6 setPerformsMultiPassEncodingIfSupported_];
    type metadata accessor for AVAssetWriterInput.MultiPassController();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v8 = v6;
    return v4;
  }

  return result;
}

uint64_t dispatch thunk of AVAssetWriterInput.SampleBufferReceiver.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return v10(a1, a2, a3);
}

uint64_t AVMetadataMachineReadableCodeObject.corners.getter()
{
  v1 = [v0 corners];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = 0;
    v6 = v15;
    while (v5 < *(v2 + 16))
    {

      v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(&result - 2) = CGPoint.init(dictionaryRepresentation:)(v7.super.isa);
      if (v9)
      {
        goto LABEL_12;
      }

      v10 = result;
      v11 = v8;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      if (v3 == v5)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo7CGPointVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int32VGMd);
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt32VGMd);
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo18AVCaptureFlashModeVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo19AVCaptureColorSpaceVGMd);
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySNy12CoreGraphics7CGFloatVGGMd);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay9CoreMedia5CMTagCGGMd, &_ss23_ContiguousArrayStorageCySay9CoreMedia5CMTagCGGMR, &_sSay9CoreMedia5CMTagCGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR, &_sSDySSypGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySDySSSo8NSNumberCGGGMd, &_ss23_ContiguousArrayStorageCySaySDySSSo8NSNumberCGGGMR, &_sSaySDySSSo8NSNumberCGGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySDySSSo8NSNumberCGGMd, &_ss23_ContiguousArrayStorageCySDySSSo8NSNumberCGGMR, &_sSDySSSo8NSNumberCGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySo7CGPointVGGMd, &_ss23_ContiguousArrayStorageCySaySo7CGPointVGGMR, &_sSaySo7CGPointVGMd);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CMTimeRangeaGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13CMTimeMappingaGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17CMVideoDimensionsaGMd);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12AVFoundation27AVSpatialVideoConfigurationVGMd);
  v10 = *(type metadata accessor for AVSpatialVideoConfiguration() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AVSpatialVideoConfiguration() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

double AVMutableMovieTrack.append(_:)@<D0>(uint64_t a1@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0;
  v14 = &v11;
  v15 = &v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVySo08CMSampleE3RefaAAE14DynamicContentOGMd);
  _s9CoreMedia19CMReadySampleBufferV010withUnsafedE0yqd__qd__So08CMSampleE3RefaKYTXEKRi_d__lF();
  if (!v1)
  {
    v4 = v10;
    v5 = v13;
    v6 = v8;
    result = v9;
    v7 = v12;
    *a1 = v11;
    *(a1 + 8) = v7;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = result;
    *(a1 + 40) = v4;
  }

  return result;
}

id _sSo19AVMutableMovieTrackC12AVFoundationE6appendySo6CMTimea10decodeTime_AF012presentationH0t9CoreMedia19CMReadySampleBufferVySo08CMSampleN3RefaAIE14DynamicContentOGKFyAMKYTXEfU_(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ([a2 appendSampleBuffer:a1 decodeTime:a3 presentationTime:a4 error:v6])
  {
    return v6[0];
  }

  v5 = v6[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *static AVPartialAsyncProperty<A>.duration.getter()
{
  type metadata accessor for CMTime(255);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x6E6F697461727564, 0xE800000000000000);
}

void *static AVPartialAsyncProperty<A>.preferredVolume.getter()
{
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x6572726566657270, 0xEF656D756C6F5664);
}

{
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x6572726566657270, 0xEF656D756C6F5664);
}

void *static AVPartialAsyncProperty<A>.preferredTransform.getter()
{
  type metadata accessor for CGAffineTransform(255);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000012, 0x80000001C93920F0);
}

{
  type metadata accessor for CGAffineTransform(255);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000012, 0x80000001C93920F0);
}

void *static AVPartialAsyncProperty<A>.minimumTimeOffsetFromLive.getter()
{
  type metadata accessor for CMTime(255);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000019, 0x80000001C9392110);
}

void *static AVPartialAsyncProperty<A>.commonMetadata.getter()
{
  return static AVPartialAsyncProperty<A>.extraAttributes.getter(&_sSaySo14AVMetadataItemCGMd, &_sSaySo14AVMetadataItemCGMR, 0x654D6E6F6D6D6F63, 0xEE00617461646174);
}

{
  return static AVPartialAsyncProperty<A>.extraAttributes.getter(&_sSaySo14AVMetadataItemCGMd, &_sSaySo14AVMetadataItemCGMR, 0x654D6E6F6D6D6F63, 0xEE00617461646174);
}

void *static AVPartialAsyncProperty<A>.metadata.getter()
{
  return static AVPartialAsyncProperty<A>.extraAttributes.getter(&_sSaySo14AVMetadataItemCGMd, &_sSaySo14AVMetadataItemCGMR, 0x617461646174656DLL, 0xE800000000000000);
}

{
  return static AVPartialAsyncProperty<A>.extraAttributes.getter(&_sSaySo14AVMetadataItemCGMd, &_sSaySo14AVMetadataItemCGMR, 0x617461646174656DLL, 0xE800000000000000);
}

void *static AVPartialAsyncProperty<A>.availableMetadataFormats.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16AVMetadataFormataGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000018, 0x80000001C9392160);
}

{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16AVMetadataFormataGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000018, 0x80000001C9392160);
}

void *static AVPartialAsyncProperty<A>.availableChapterLocales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleVGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000017, 0x80000001C9392180);
}

uint64_t AVAsset.loadChapterMetadataGroups(withTitleLocale:containingItemsWithCommonKeys:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](AVAsset.loadChapterMetadataGroups(withTitleLocale:containingItemsWithCommonKeys:), 0, 0);
}

uint64_t AVAsset.loadChapterMetadataGroups(withTitleLocale:containingItemsWithCommonKeys:)()
{
  v1 = v0[21];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;
  type metadata accessor for AVMetadataKey(0);
  v3 = Array._bridgeToObjectiveC()().super.isa;
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AVAsset.loadChapterMetadataGroups(withTitleLocale:containingItemsWithCommonKeys:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo20AVTimedMetadataGroupCGs5Error_pGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [AVTimedMetadataGroup];
  v0[13] = &block_descriptor_1;
  v0[14] = v4;
  [v1 loadChapterMetadataGroupsWithTitleLocale:isa containingItemsWithCommonKeys:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = AVAsset.loadChapterMetadataGroups(withTitleLocale:containingItemsWithCommonKeys:);
  }

  else
  {
    v2 = AVAsset.loadChapterMetadataGroups(withTitleLocale:containingItemsWithCommonKeys:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v1 = v0[23];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [AVTimedMetadataGroup](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVTimedMetadataGroup);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  return outlined init with copy of Sendable(a2 + 32, a1 + 32);
}

{
  return outlined init with copy of Sendable(a2 + 32, a1 + 32);
}

void *static AVPartialAsyncProperty<A>.availableMediaCharacteristicsWithMediaSelectionOptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo21AVMediaCharacteristicaGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000036, 0x80000001C93921C0);
}

void *static AVPartialAsyncProperty<A>.preferredMediaSelection.getter()
{
  type metadata accessor for NSValue(255, &lazy cache variable for type metadata for AVMediaSelection);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000017, 0x80000001C9392200);
}

void *static AVPartialAsyncProperty<A>.allMediaSelections.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16AVMediaSelectionCGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000012, 0x80000001C9392220);
}

void *static AVPartialAsyncProperty<A>.overallDurationHint.getter()
{
  type metadata accessor for CMTime(255);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000013, 0x80000001C93922A0);
}

void *static AVPartialAsyncProperty<A>.isPlayable.getter()
{
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x656C626179616C70, 0xE800000000000000);
}

{
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0x656C626179616C70, 0xE800000000000000);
}

id AVPlayerItemVideoOutput.init(pixelBufferAttributes:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MEMORY[0x1CCA86600]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithPixelBufferAttributes_];

  v5 = type metadata accessor for CVPixelBufferAttributes();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id AVPlayerItemVideoOutput.pixelBufferAndDisplayTime(forItemTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v7[2] = a3;
  v8[0] = v4;
  v8[1] = *(MEMORY[0x1E6960C70] + 8);
  v8[2] = v5;
  v7[0] = a1;
  v7[1] = a2;
  result = [v3 copyPixelBufferForItemTime:v7 itemTimeForDisplay:v8];
  if (result)
  {
    type metadata accessor for CVReadOnlyPixelBuffer();
    swift_allocObject();
    return CVReadOnlyPixelBuffer.init(unsafeBuffer:)();
  }

  return result;
}

id AVCaption.textColor(at:)(uint64_t a1)
{

  return AVCaption.textColor(at:)(a1, &selRef_textColorAtIndex_range_);
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

id AVCaption.backgroundColor(at:)(uint64_t a1)
{

  return AVCaption.textColor(at:)(a1, &selRef_backgroundColorAtIndex_range_);
}

id AVCaption.textColor(at:)(uint64_t a1, SEL *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v9[1] = 0;
  v4 = [v2 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v5 = String.Index.utf16Offset<A>(in:)();

  v6 = [v2 *a2];
  v7 = [v2 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Range<>.init(_:in:)();

  return v6;
}

id AVCaption.fontWeight(at:)(uint64_t a1)
{

  return AVCaption.textColor(at:)(a1, &selRef_fontWeightAtIndex_range_);
}

id AVCaption.fontStyle(at:)(uint64_t a1)
{

  return AVCaption.textColor(at:)(a1, &selRef_fontStyleAtIndex_range_);
}

id AVCaption.decoration(at:)(uint64_t a1)
{

  return AVCaption.textColor(at:)(a1, &selRef_decorationAtIndex_range_);
}

id AVCaption.textCombine(at:)(uint64_t a1)
{

  return AVCaption.textColor(at:)(a1, &selRef_textCombineAtIndex_range_);
}

id AVCaption.ruby(at:)()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v1 = [v0 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v2 = String.Index.utf16Offset<A>(in:)();

  v3 = [v0 rubyAtIndex:v2 range:v6];
  v4 = [v0 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Range<>.init(_:in:)();

  return v3;
}

uint64_t AVMetricEventStreamPublisher.metrics<A>(forType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return swift_unknownObjectRetain();
}

uint64_t AVMetrics.init(forType:publisher:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t AVMetricEventStreamPublisher.allMetrics()@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return swift_unknownObjectRetain();
}

uint64_t AVMetrics.SubscriberDelegate.__allocating_init(streamContinuation:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(*v2 + 88);
  v4 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t AVMetrics.SubscriberDelegate.init(streamContinuation:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t @objc AVMetrics.SubscriberDelegate.publisher(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v5 = a4;

  specialized AVMetrics.SubscriberDelegate.publisher(_:didReceive:)(v5);
  swift_unknownObjectRelease();
}

uint64_t AVMetrics.SubscriberDelegate.deinit()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AVMetrics.SubscriberDelegate.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t AVMetrics.makeAsyncIterator()@<X0>(void **a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16) == 1)
  {
    v4 = swift_unknownObjectRetain();

    return AVMetrics.AsyncIterator.init(allMetricsForPublisher:)(v4, a1);
  }

  else if (*(v1 + 8))
  {
    swift_unknownObjectRetain();

    return AVMetrics.AsyncIterator.init(forType:publisher:)(v3, a1);
  }

  else
  {

    return AVMetrics.AsyncIterator.init()(a1);
  }
}

uint64_t AVMetrics.AsyncIterator.init(allMetricsForPublisher:)@<X0>(uint64_t a1@<X0>, void **a2@<X8>)
{
  AVMetrics.AsyncIterator.init()(a2);
  v4 = *a2;
  [v4 addPublisher_];
  [v4 subscribeToAllMetricEvents];

  return swift_unknownObjectRelease();
}

uint64_t AVMetrics.AsyncIterator.init(forType:publisher:)@<X0>(uint64_t a1@<X1>, void **a2@<X8>)
{
  AVMetrics.AsyncIterator.init()(a2);
  v4 = *a2;
  [v4 addPublisher_];
  [v4 subscribeToMetricEvent_];

  return swift_unknownObjectRelease();
}

uint64_t AVMetrics.AsyncIterator.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for AsyncStream.Continuation();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v23 - v3;
  v4 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - v5;
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = [objc_opt_self() eventStream];
  *a1 = v11;
  v23 = type metadata accessor for NSValue(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v24 = v11;
  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v25);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a1[2] = v12;
  v14 = v26;
  v13 = v27;
  v15 = v28;
  (*(v27 + 104))(v26, *MEMORY[0x1E69E8650], v28);
  v16 = *(type metadata accessor for AVMetrics.AsyncIterator() + 40);
  v17 = v12;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v13 + 8))(v14, v15);
  type metadata accessor for AVMetrics.SubscriberDelegate();
  v18 = a1 + v16;
  v19 = v29;
  (*(v30 + 16))(v29, v18, v31);
  v20 = AVMetrics.SubscriberDelegate.__allocating_init(streamContinuation:)(v19);
  a1[1] = v20;
  v21 = v24;
  [v24 setSubscriber:v20 queue:v17];

  type metadata accessor for AsyncStream();
  return AsyncStream.makeAsyncIterator()();
}

uint64_t AVMetrics.AsyncIterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = type metadata accessor for AsyncStream.Iterator();
  *v1 = v0;
  v1[1] = AVMetrics.AsyncIterator.next();

  return MEMORY[0x1EEE6D9D0](v0 + 16, v2);
}

{

  return MEMORY[0x1EEE6DFA0](AVMetrics.AsyncIterator.next(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVMetrics<A>.AsyncIterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AVMetrics<A>.AsyncIterator;

  return AVMetrics.AsyncIterator.next()();
}

{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t _s12AVFoundation9AVMetricsV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = _s12AVFoundation9AVMetricsV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

id AVMetrics.enableSubscription(forMetricEventStream:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  result = [a1 addPublisher_];
  if (v5 == 1)
  {
    v7 = sel_subscribeToAllMetricEvents;
    v8 = a1;

    return [v8 v7];
  }

  if (v4)
  {
    swift_getObjCClassFromMetadata();
    v7 = sel_subscribeToMetricEvent_;
    v8 = a1;

    return [v8 v7];
  }

  return result;
}

uint64_t AVMetrics.chronologicalMerge<A, B>(with:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a3;
  v12 = 8 * a4;
  v39 = a5;
  v40 = a6;
  v38 = a7;
  if (a4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for AVMetrics();
  }

  else
  {
    v37 = a3;
    MEMORY[0x1EEE9AC00](a1);
    if (a4)
    {
      v14 = v40 & 0xFFFFFFFFFFFFFFFELL;
      v15 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = a4;
      do
      {
        v14 += 8;
        *v15++ = type metadata accessor for AVMetrics();
        --v16;
      }

      while (v16);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = v37;
  }

  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &v37;
  v21 = *a1;
  v20 = *(a1 + 8);
  v22 = *(a1 + 16);
  v23 = *(v7 + 8);
  v24 = *(v7 + 16);
  v43[0] = *v7;
  v43[1] = v23;
  v44 = v24;
  v41[0] = v21;
  v41[1] = v20;
  v42 = v22;
  v25 = MEMORY[0x1EEE9AC00](v17);
  v26 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    v27 = (v25 + 32);
    v28 = v26;
    v29 = a4;
    do
    {
      if (a4 == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = *v27;
      }

      v31 = &v19[v30];
      v32 = *a2++;
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
      *v31 = *v32;
      *(v31 + 1) = v33;
      v31[16] = v34;
      *v28++ = v31;
      swift_unknownObjectRetain();
      v27 += 4;
      --v29;
    }

    while (v29);
  }

  v35 = *(v9 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return AVMergedMetrics.init(chronologicallyMerging:_:_:)(v43, v41, v26, a4, v35, v39, v40, v38);
}

uint64_t AVMergedMetrics.init(chronologicallyMerging:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a4;
  v44 = a8;
  v45 = a3;
  if (a4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for AVMetrics();
    v15 = TupleTypeMetadata;
  }

  else
  {
    v43 = &v42;
    MEMORY[0x1EEE9AC00](a1);
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v11)
    {
      v18 = a7 & 0xFFFFFFFFFFFFFFFELL;
      v19 = (&v42 - v17);
      v20 = v11;
      do
      {
        v18 += 8;
        *v19++ = type metadata accessor for AVMetrics();
        --v20;
      }

      while (v20);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = TupleTypeMetadata;
  }

  v21 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v11;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v24 = type metadata accessor for AVMergedMetrics();
  v43 = &v42;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v42 - v26;
  v28 = *(a1 + 8);
  v29 = *(a1 + 16);
  v30 = *a2;
  v31 = a2[1];
  v32 = *(a2 + 16);
  *v27 = *a1;
  *(v27 + 1) = v28;
  v27[16] = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = v32;
  if (v11)
  {
    v33 = (v15 + 32);
    v34 = v45;
    v35 = v11;
    do
    {
      if (v11 == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = *v33;
      }

      v37 = &v23[v36];
      v38 = *v34++;
      v39 = *(v38 + 8);
      v40 = *(v38 + 16);
      *v37 = *v38;
      *(v37 + 1) = v39;
      v37[16] = v40;
      swift_unknownObjectRetain();
      v33 += 4;
      --v35;
    }

    while (v35);
  }

  (*(v21 + 32))(&v27[*(v24 + 56)], v23, v15);
  for (result = (*(v25 + 32))(v44, v27, v24); v11; --v11)
  {
    result = swift_unknownObjectRelease();
  }

  return result;
}