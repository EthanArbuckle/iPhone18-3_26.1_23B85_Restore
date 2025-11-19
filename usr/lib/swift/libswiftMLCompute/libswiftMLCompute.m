void MLCEmbeddingDescriptor.embeddingCount.getter(SEL *a1)
{
  v2 = [v1 *a1];
  Int.init(exactly:)();
  v4 = v3;

  if (v4)
  {
    __break(1u);
  }
}

uint64_t MLCEmbeddingDescriptor.paddingIndex.getter()
{
  v1 = [v0 paddingIndex];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  result = Int.init(exactly:)();
  if ((v4 & 1) == 0)
  {
    v5 = result;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t MLCEmbeddingDescriptor.maximumNorm.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (!v2)
  {
    v7 = 0;
    return v7 | ((v3 == 0) << 32);
  }

  v4 = v2;
  result = Float.init(exactly:)();
  if ((result & 0x100000000) == 0)
  {
    v6 = result;

    v7 = v6;
    return v7 | ((v3 == 0) << 32);
  }

  __break(1u);
  return result;
}

MLCEmbeddingDescriptor_optional __swiftcall MLCEmbeddingDescriptor.init(embeddingCount:embeddingDimension:)(Swift::Int embeddingCount, Swift::Int embeddingDimension)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  v5 = [ObjCClassFromMetadata descriptorWithEmbeddingCount:isa embeddingDimension:v4];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

MLCEmbeddingDescriptor_optional __swiftcall MLCEmbeddingDescriptor.init(embeddingCount:embeddingDimension:paddingIndex:maximumNorm:pNorm:scalesGradientByFrequency:)(Swift::Int embeddingCount, Swift::Int embeddingDimension, Swift::Int_optional paddingIndex, Swift::Float_optional *maximumNorm, Swift::Float_optional *pNorm, Swift::Bool scalesGradientByFrequency)
{
  is_nil = paddingIndex.is_nil;
  v10.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v11.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  if (is_nil)
  {
    v12 = 0;
    if ((maximumNorm & 0x100000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    if ((pNorm & 0x100000000) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = Float._bridgeToObjectiveC()().super.super.isa;
    goto LABEL_8;
  }

  v12 = Int._bridgeToObjectiveC()().super.super.isa;
  if ((maximumNorm & 0x100000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  isa = 0;
  if ((pNorm & 0x100000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = 0;
LABEL_8:
  v15 = [swift_getObjCClassFromMetadata() descriptorWithEmbeddingCount:v10.super.super.isa embeddingDimension:v11.super.super.isa paddingIndex:v12 maximumNorm:isa pNorm:v14 scalesGradientByFrequency:scalesGradientByFrequency];

  v17 = v15;
  result.value.super.isa = v17;
  result.is_nil = v16;
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v11 = MEMORY[0x29EDCA190];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        isa = v6.super.super.isa;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6.super.super.isa = isa;
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 8 * v8 + 32) = v6;
      --v1;
    }

    while (v1);
  }

  return v2;
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

id MLCPaddingLayer.init(reflectionPadding:)(uint64_t a1, SEL *a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(a1);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [ObjCClassFromMetadata *a2];

  return v6;
}

MLCPaddingLayer __swiftcall MLCPaddingLayer.init(constantPadding:constantValue:)(Swift::OpaquePointer constantPadding, Swift::Float constantValue)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(constantPadding._rawValue);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v6 = constantValue;
  v7 = [ObjCClassFromMetadata layerWithConstantPadding:isa constantValue:v6];

  return v7;
}

uint64_t MLCLayerNormalizationLayer.normalizedShape.getter()
{
  v1 = [v0 normalizedShape];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v15;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        result = Int.init(exactly:)();
        if (v10)
        {
          goto LABEL_24;
        }

        v11 = result;

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        ++v5;
        if (v7 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (v2 < 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2AB080](v14);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

MLCLayerNormalizationLayer_optional __swiftcall MLCLayerNormalizationLayer.init(normalizedShape:beta:gamma:varianceEpsilon:)(Swift::OpaquePointer normalizedShape, MLCTensor beta, MLCTensor gamma, Swift::Float varianceEpsilon)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(normalizedShape._rawValue);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = beta.super.isa;
  v11 = gamma.super.isa;
  *&v12 = varianceEpsilon;
  v13 = [ObjCClassFromMetadata layerWithNormalizedShape:isa beta:v10 gamma:v11 varianceEpsilon:v12];

  v15 = v13;
  result.value.super.super.isa = v15;
  result.is_nil = v14;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for NSNumber();
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.subscript.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v6 = 0xD000000000000046;
    v5 = 0x8000000299AF73E0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  _StringGuts.grow(_:)(82);
  v5 = 0x8000000299AF7390;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29C2AAFE0](v6, v5);
  v8 = _typeName(_:qualified:)();
  MEMORY[0x29C2AAFE0](v8);

  MEMORY[0x29C2AAFE0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  MEMORY[0x29C2AAFE0](v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for NSNumber();
    swift_arrayInitWithCopy();
  }

  return v10;
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

uint64_t MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  return MEMORY[0x2A1C73D48](MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:), 0, 0);
}

uint64_t MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:)()
{
  v1 = v0[18];
  isa = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:);
  v14 = swift_continuation_init();
  type metadata accessor for MLCTensorData();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    v4 = v0[19];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (v0[20])
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (v0[21])
    {
LABEL_5:
      v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      goto LABEL_8;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (v0[21])
    {
      goto LABEL_5;
    }
  }

  v6.super.isa = 0;
LABEL_8:
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  v0[14] = partial apply for closure #1 in closure #1 in MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:);
  v0[15] = v10;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed MLCTensor?, @guaranteed Error?, @unowned Double) -> ();
  v0[13] = &block_descriptor;
  v11 = _Block_copy(v0 + 10);
  v12 = v0[15];

  [v7 executeWithInputsData:v3.super.isa lossLabelsData:isa lossLabelWeightsData:v5.super.isa outputsData:v6.super.isa batchSize:v9 options:v8 completionHandler:v11];
  _Block_release(v11);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:)(__n128 a1)
{
  v2 = *v1;
  v3 = *v1;
  if (*(*v1 + 48))
  {
    v4 = *(*v1 + 48);
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 128);
    a1.n128_u64[0] = *(v2 + 136);
    v8 = *(v3 + 8);
    v9 = *v1;

    return v8(v7, a1);
  }
}

unint64_t type metadata accessor for MLCTensorData()
{
  result = lazy cache variable for type metadata for MLCTensorData;
  if (!lazy cache variable for type metadata for MLCTensorData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLCTensorData);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:)(void *a1, void *a2, uint64_t a3, double a4)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return MEMORY[0x2A1C73CE0](a3, v6);
  }

  else
  {
    v9 = *(*(a3 + 64) + 40);
    *v9 = a1;
    *(v9 + 8) = a4;
    v10 = a1;

    return MEMORY[0x2A1C73CD8](a3);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed MLCTensor?, @guaranteed Error?, @unowned Double) -> ()(uint64_t a1, void *a2, void *a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a3;
  v8(a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MLCTrainingGraph.executeForward(batchSize:options:outputsData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2A1C73D48](MLCTrainingGraph.executeForward(batchSize:options:outputsData:), 0, 0);
}

uint64_t MLCTrainingGraph.executeForward(batchSize:options:outputsData:)()
{
  isa = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:);
  v2 = swift_continuation_init();
  if (isa)
  {
    v3 = v0[20];
    type metadata accessor for MLCTensorData();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v0[14] = partial apply for closure #1 in closure #1 in MLCInferenceGraph.execute(inputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:);
  v0[15] = v7;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed MLCTensor?, @guaranteed Error?, @unowned Double) -> ();
  v0[13] = &block_descriptor_0;
  v8 = _Block_copy(v0 + 10);
  v9 = v0[15];

  [v4 executeForwardWithBatchSize:v6 options:v5 outputsData:isa completionHandler:v8];
  _Block_release(v8);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MLCTrainingGraph.executeGradient(batchSize:options:outputsData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2A1C73D48](MLCTrainingGraph.executeGradient(batchSize:options:outputsData:), 0, 0);
}

uint64_t MLCTrainingGraph.executeGradient(batchSize:options:outputsData:)()
{
  isa = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = MLCTrainingGraph.executeGradient(batchSize:options:outputsData:);
  v2 = swift_continuation_init();
  if (isa)
  {
    v3 = v0[19];
    type metadata accessor for MLCTensorData();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v0[14] = partial apply for closure #1 in closure #1 in MLCTrainingGraph.executeGradient(batchSize:options:outputsData:);
  v0[15] = v7;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed MLCTensor?, @guaranteed Error?, @unowned Double) -> ();
  v0[13] = &block_descriptor_7;
  v8 = _Block_copy(v0 + 10);
  v9 = v0[15];

  [v4 executeGradientWithBatchSize:v6 options:v5 outputsData:isa completionHandler:v8];
  _Block_release(v8);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t MLCTrainingGraph.executeGradient(batchSize:options:outputsData:)(__n128 a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    v3 = *(*v1 + 48);
    swift_willThrow();
  }

  else
  {
    a1.n128_u64[0] = *(*v1 + 128);
  }

  v4 = *(v2 + 8);

  return v4(a1);
}

uint64_t MLCTrainingGraph.executeOptimizerUpdate(options:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x2A1C73D48](MLCTrainingGraph.executeOptimizerUpdate(options:), 0, 0);
}

uint64_t MLCTrainingGraph.executeOptimizerUpdate(options:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v8 = v0 + 17;
  v7 = v0[17];
  v6 = v8[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = MLCTrainingGraph.executeOptimizerUpdate(options:);
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v1[14] = partial apply for closure #1 in closure #1 in MLCTrainingGraph.executeOptimizerUpdate(options:);
  v1[15] = v10;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed (@guaranteed MLCTensor?, @guaranteed Error?, @unowned Double) -> ();
  v1[13] = &block_descriptor_14;
  v11 = _Block_copy(v4);
  v12 = v1[15];

  [v6 executeOptimizerUpdateWithOptions:v7 completionHandler:v11];
  _Block_release(v11);

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t closure #1 in closure #1 in MLCTrainingGraph.executeGradient(batchSize:options:outputsData:)(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x2A1C73CE0](a4, v6);
  }

  else
  {
    **(*(a4 + 64) + 40) = a1;

    return MEMORY[0x2A1C73CD8](a4);
  }
}

uint64_t MLCSplitLayer.splitSectionLengths.getter()
{
  v1 = [v0 splitSectionLengths];
  if (!v1)
  {
    return v1;
  }

  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_22:

    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v14 = MEMORY[0x29EDCA190];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      break;
    }

    v5 = 0;
    v1 = v14;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      result = Int.init(exactly:)();
      if (v9)
      {
        goto LABEL_25;
      }

      v10 = result;

      v12 = v14[2];
      v11 = v14[3];
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      v14[2] = v12 + 1;
      v14[v12 + 4] = v10;
      ++v5;
      if (v6 == v3)
      {

        return v1;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (v2 < 0)
    {
      v13 = v2;
    }

    else
    {
      v13 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x29C2AB080](v13);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

MLCSplitLayer __swiftcall MLCSplitLayer.init(splitSectionLengths:dimension:)(Swift::OpaquePointer splitSectionLengths, Swift::Int dimension)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(splitSectionLengths._rawValue);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [ObjCClassFromMetadata layerWithSplitSectionLengths:isa dimension:dimension];

  return v6;
}

uint64_t MLCUpsampleLayer.shape.getter()
{
  v1 = [v0 shape];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v15;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        result = Int.init(exactly:)();
        if (v10)
        {
          goto LABEL_24;
        }

        v11 = result;

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        ++v5;
        if (v7 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (v2 < 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2AB080](v14);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

MLCUpsampleLayer_optional __swiftcall MLCUpsampleLayer.init(shape:)(Swift::OpaquePointer shape)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(shape._rawValue);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [ObjCClassFromMetadata layerWithShape_];

  v6 = v4;
  result.value.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t MLCSliceLayer.start.getter(SEL *a1)
{
  v2 = [v1 *a1];
  type metadata accessor for NSNumber();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v16 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v16;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(v6, v3);
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v10 = v9;
        result = Int.init(exactly:)();
        if (v11)
        {
          goto LABEL_24;
        }

        v12 = result;

        v14 = *(v16 + 16);
        v13 = *(v16 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        *(v16 + 16) = v14 + 1;
        *(v16 + 8 * v14 + 32) = v12;
        ++v6;
        if (v8 == v4)
        {

          return v7;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (v3 < 0)
      {
        v15 = v3;
      }

      else
      {
        v15 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x29C2AB080](v15);
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t MLCSliceLayer.stride.getter()
{
  v1 = [v0 stride];
  if (!v1)
  {
    return v1;
  }

  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_22:

    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v14 = MEMORY[0x29EDCA190];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      break;
    }

    v5 = 0;
    v1 = v14;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      result = Int.init(exactly:)();
      if (v9)
      {
        goto LABEL_25;
      }

      v10 = result;

      v12 = v14[2];
      v11 = v14[3];
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      v14[2] = v12 + 1;
      v14[v12 + 4] = v10;
      ++v5;
      if (v6 == v3)
      {

        return v1;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (v2 < 0)
    {
      v13 = v2;
    }

    else
    {
      v13 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x29C2AB080](v13);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

MLCSliceLayer_optional __swiftcall MLCSliceLayer.init(start:end:stride:)(Swift::OpaquePointer start, Swift::OpaquePointer end, Swift::OpaquePointer_optional stride)
{
  rawValue = stride.value._rawValue;
  specialized _arrayForceCast<A, B>(_:)(start._rawValue);

  type metadata accessor for NSNumber();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  specialized _arrayForceCast<A, B>(_:)(end._rawValue);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (rawValue)
  {
    specialized _arrayForceCast<A, B>(_:)(rawValue);

    rawValue = Array._bridgeToObjectiveC()().super.isa;
  }

  v7 = [swift_getObjCClassFromMetadata() sliceLayerWithStart:v5.super.isa end:v6.super.isa stride:rawValue];

  v9 = v7;
  result.value.super.super.isa = v9;
  result.is_nil = v8;
  return result;
}

id MLCConvolutionDescriptor.kernelSizes.getter(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  [v2 *a2];
  return v4;
}

id MLCConvolutionDescriptor.paddingPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 paddingPolicy];
  switch(result)
  {
    case 2:
      v4 = [v1 paddingSizeInY];
      result = [v1 paddingSizeInX];
      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = 0;
      return result;
    case 1:
      *a1 = xmmword_299AF72F0;
LABEL_7:
      *(a1 + 16) = 1;
      return result;
    case 0:
      *a1 = 0;
      *(a1 + 8) = 0;
      goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id MLCConvolutionDescriptor.init(type:kernelSizes:inputFeatureChannelCount:outputFeatureChannelCount:groupCount:strides:dilationRates:paddingPolicy:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_299AF7300;
  *(v11 + 32) = Int._bridgeToObjectiveC()();
  *(v11 + 40) = Int._bridgeToObjectiveC()();
  type metadata accessor for NSNumber();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_299AF7300;
  *(v13 + 32) = Int._bridgeToObjectiveC()();
  *(v13 + 40) = Int._bridgeToObjectiveC()();
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_299AF7300;
  *(v15 + 32) = Int._bridgeToObjectiveC()();
  *(v15 + 40) = Int._bridgeToObjectiveC()();
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (*(a11 + 16) != 1)
  {
    v17 = 2;
    if (MLCPaddingPolicy.objcSizes.getter())
    {
      goto LABEL_3;
    }

LABEL_5:
    v18.super.isa = 0;
    goto LABEL_6;
  }

  v17 = *a11 != 0;
  if (!MLCPaddingPolicy.objcSizes.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  LODWORD(v21) = v17;
  v19 = [swift_getObjCClassFromMetadata() descriptorWithType:a1 kernelSizes:v12.super.isa inputFeatureChannelCount:a4 outputFeatureChannelCount:a5 groupCount:a6 strides:v14.super.isa dilationRates:v16.super.isa paddingPolicy:v21 paddingSizes:v18.super.isa];

  return v19;
}

uint64_t MLCReductionLayer.dimensions.getter()
{
  v1 = [v0 dimensions];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v15;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        result = Int.init(exactly:)();
        if (v10)
        {
          goto LABEL_24;
        }

        v11 = result;

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        ++v5;
        if (v7 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (v2 < 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2AB080](v14);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t MLCTransposeLayer.dimensions.getter()
{
  v1 = [v0 dimensions];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v15;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        result = Int.init(exactly:)();
        if (v10)
        {
          goto LABEL_24;
        }

        v11 = result;

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        ++v5;
        if (v7 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (v2 < 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2AB080](v14);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

MLCTransposeLayer_optional __swiftcall MLCTransposeLayer.init(dimensions:)(Swift::OpaquePointer dimensions)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(dimensions._rawValue);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [ObjCClassFromMetadata layerWithDimensions_];

  v6 = v4;
  result.value.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t MLCPaddingPolicy.objcPolicy.getter()
{
  if (*(v0 + 16) == 1)
  {
    return *v0 != 0;
  }

  else
  {
    return 2;
  }
}

uint64_t MLCPaddingPolicy.objcSizes.getter()
{
  if (v0[2])
  {
    return 0;
  }

  v4 = v0;
  v3 = *v0;
  v2 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_299AF7300;
  *(v5 + 32) = Int._bridgeToObjectiveC()();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  result = v5;
  *(v5 + 40) = isa;
  return result;
}

uint64_t MLCPaddingPolicy.debugDescription.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v2 = *v0 != 0;
  }

  else
  {
    v2 = MLCPaddingPolicyUsePaddingSize;
  }

  v3 = MLCPaddingPolicyDebugDescription(v2);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v1 & 1) == 0)
  {
    v5 = v0[1];
    v9 = *v0;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AAFE0](v6);

    MEMORY[0x29C2AAFE0](0x203A78202CLL, 0xE500000000000000);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AAFE0](v7);

    MEMORY[0x29C2AAFE0](41, 0xE100000000000000);

    MEMORY[0x29C2AAFE0](0x203A792820, 0xE500000000000000);
  }

  return v4;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLCPaddingPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLCPaddingPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for MLCPaddingPolicy(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for MLCPaddingPolicy(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

MLCTensor __swiftcall MLCTensor.init(shape:)(Swift::OpaquePointer shape)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(shape._rawValue);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [ObjCClassFromMetadata tensorWithShape_];

  return v4;
}

id MLCTensor.init(shape:randomInitializerType:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(a1);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [ObjCClassFromMetadata *a3];

  return v8;
}

id MLCTensor.init(shape:data:dataType:)(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(a1);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [ObjCClassFromMetadata *a4];

  return v10;
}

MLCTensor_optional __swiftcall MLCTensor.init(sequenceLengths:sortedSequences:featureChannelCount:batchSize:data:)(Swift::OpaquePointer sequenceLengths, Swift::Bool sortedSequences, Swift::Int featureChannelCount, Swift::Int batchSize, MLCTensorData_optional data)
{
  isa = data.value.super.isa;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(sequenceLengths._rawValue);

  type metadata accessor for NSNumber();
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [ObjCClassFromMetadata tensorWithSequenceLengths:v11 sortedSequences:sortedSequences featureChannelCount:featureChannelCount batchSize:batchSize data:isa];

  v14 = v12;
  result.value.super.isa = v14;
  result.is_nil = v13;
  return result;
}

Swift::OpaquePointer_optional __swiftcall MLCGraph.split(source:splitSectionLengths:dimension:)(MLCTensor source, Swift::OpaquePointer splitSectionLengths, Swift::Int dimension)
{
  specialized _arrayForceCast<A, B>(_:)(splitSectionLengths._rawValue);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 splitWithSource:source.super.isa splitSectionLengths:isa dimension:dimension];

  if (v7)
  {
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MLCTensor, 0x29EDBB258);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  result.value._rawValue = v10;
  result.is_nil = v8;
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

MLCTensor_optional __swiftcall MLCGraph.reshape(shape:source:)(Swift::OpaquePointer shape, MLCTensor source)
{
  v2 = MLCGraph.reshape(shape:source:)(shape._rawValue, source.super.isa, &selRef_reshapeWithShape_source_);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

MLCTensor_optional __swiftcall MLCGraph.transpose(dimensions:source:)(Swift::OpaquePointer dimensions, MLCTensor source)
{
  v2 = MLCGraph.reshape(shape:source:)(dimensions._rawValue, source.super.isa, &selRef_transposeWithDimensions_source_);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id MLCGraph.reshape(shape:source:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  specialized _arrayForceCast<A, B>(_:)(a1);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 *a3];

  return v7;
}

MLCReshapeLayer_optional __swiftcall MLCReshapeLayer.init(shape:)(Swift::OpaquePointer shape)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized _arrayForceCast<A, B>(_:)(shape._rawValue);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [ObjCClassFromMetadata layerWithShape_];

  v6 = v4;
  result.value.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t MLCReshapeLayer.shape.getter()
{
  v1 = [v0 shape];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x29EDCA190];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v15;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        result = Int.init(exactly:)();
        if (v10)
        {
          goto LABEL_24;
        }

        v11 = result;

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        ++v5;
        if (v7 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (v2 < 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x29C2AB080](v14);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t MLCTensorDescriptor.sequenceLengths.getter(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return v2;
  }

  type metadata accessor for NSNumber();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_22:

    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v15 = MEMORY[0x29EDCA190];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      break;
    }

    v6 = 0;
    v2 = v15;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      result = Int.init(exactly:)();
      if (v10)
      {
        goto LABEL_25;
      }

      v11 = result;

      v13 = v15[2];
      v12 = v15[3];
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      v15[2] = v13 + 1;
      v15[v13 + 4] = v11;
      ++v6;
      if (v7 == v4)
      {

        return v2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (v3 < 0)
    {
      v14 = v3;
    }

    else
    {
      v14 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x29C2AB080](v14);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t MLCPoolingType.objcPoolingType.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (v1 == 2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t MLCPoolingType.debugDescription.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (v1 == 2)
  {
    v3 = MLCPoolingTypeMax;
  }

  else
  {
    v3 = v2;
  }

  v4 = MLCPoolingTypeDebugDescription(v3);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v1 & 0xFE) != 2)
  {
    _StringGuts.grow(_:)(28);

    if (v1)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x29C2AAFE0](v6, v7);

    MEMORY[0x29C2AAFE0](41, 0xE100000000000000);

    MEMORY[0x29C2AAFE0](0xD000000000000019, 0x8000000299AF74F0);
  }

  return v5;
}

uint64_t MLCPoolingDescriptor.poolingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 poolingType];
  switch(result)
  {
    case 1:
      result = 2;
      goto LABEL_6;
    case 3:
LABEL_6:
      *a1 = result;
      return result;
    case 2:
      result = [v1 countIncludesPadding];
      goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id MLCPoolingDescriptor.paddingPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 paddingPolicy];
  switch(result)
  {
    case 2:
      v4 = [v1 paddingSizeInY];
      result = [v1 paddingSizeInX];
      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = 0;
      return result;
    case 1:
      *a1 = xmmword_299AF72F0;
LABEL_7:
      *(a1 + 16) = 1;
      return result;
    case 0:
      *a1 = 0;
      *(a1 + 8) = 0;
      goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id MLCPoolingDescriptor.init(type:kernelSizes:strides:dilationRates:paddingPolicy:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_299AF7300;
  *(v10 + 32) = Int._bridgeToObjectiveC()();
  *(v10 + 40) = Int._bridgeToObjectiveC()();
  type metadata accessor for NSNumber();
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_299AF7300;
  *(v12 + 32) = Int._bridgeToObjectiveC()();
  *(v12 + 40) = Int._bridgeToObjectiveC()();
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_299AF7300;
  *(v14 + 32) = Int._bridgeToObjectiveC()();
  *(v14 + 40) = Int._bridgeToObjectiveC()();
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = *(a8 + 16);
  if (v9 != 3)
  {
    if (v9 == 2)
    {
      if (*(a8 + 16))
      {
        v17 = *a8 != 0;
      }

      else
      {
        v17 = 2;
      }

      if (MLCPaddingPolicy.objcSizes.getter())
      {
        v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v20.super.isa = 0;
      }

      v21 = [swift_getObjCClassFromMetadata() maxPoolingDescriptorWithKernelSizes:v11.super.isa strides:v13.super.isa dilationRates:v15.super.isa paddingPolicy:v17 paddingSizes:v20.super.isa];
      goto LABEL_23;
    }

    if (*(a8 + 16))
    {
      v19 = *a8 != 0;
      if (MLCPaddingPolicy.objcSizes.getter())
      {
LABEL_9:
        v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_18:
        v21 = [swift_getObjCClassFromMetadata() averagePoolingDescriptorWithKernelSizes:v11.super.isa strides:v13.super.isa dilationRates:v15.super.isa paddingPolicy:v19 paddingSizes:v20.super.isa countIncludesPadding:v9 & 1];
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 2;
      if (MLCPaddingPolicy.objcSizes.getter())
      {
        goto LABEL_9;
      }
    }

    v20.super.isa = 0;
    goto LABEL_18;
  }

  if (*(a8 + 16))
  {
    v18 = *a8 != 0;
  }

  else
  {
    v18 = 2;
  }

  if (MLCPaddingPolicy.objcSizes.getter())
  {
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v21 = [swift_getObjCClassFromMetadata() l2NormPoolingDescriptorWithKernelSizes:v11.super.isa strides:v13.super.isa dilationRates:v15.super.isa paddingPolicy:v18 paddingSizes:v20.super.isa];
LABEL_23:
  v22 = v21;

  return v22;
}

uint64_t getEnumTagSinglePayload for MLCPoolingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for MLCPoolingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for MLCPoolingType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for MLCPoolingType(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}