void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey();
  result = MEMORY[0x1AC5A5E90](v2, &type metadata for ModelCatalogStub.AssetKey, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      specialized Set._Variant.insert(_:)(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClassifyPromptResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ClassifyPromptTemplateRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ClassifyPromptRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of OneShotRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ClassificationResponse()
{
  result = type metadata singleton initialization cache for ClassificationResponse;
  if (!type metadata singleton initialization cache for ClassificationResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys);
  }

  return result;
}

uint64_t dispatch thunk of ClassificationGenerator.classify(prompt:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v14(a1, a2, a3, a4);
}

void type metadata completion function for ClassificationResponse()
{
  type metadata accessor for [String : Bool]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Prompt.Rendering?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Prompt.Rendering?()
{
  if (!lazy cache variable for type metadata for Prompt.Rendering?)
  {
    type metadata accessor for Prompt.Rendering();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Prompt.Rendering?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClassificationParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassificationParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassificationParameters.ThresholdConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClassificationParameters.ThresholdConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC5A5E90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey()
{
  result = lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey;
  if (!lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey;
  if (!lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey);
  }

  return result;
}

TokenGeneration::ImageTokenizationRecommendations::DimensionRequirements::ExactSizeRequirement __swiftcall ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.init(pixelWidth:pixelHeight:)(Swift::UInt pixelWidth, Swift::UInt pixelHeight)
{
  *v2 = pixelWidth;
  v2[1] = pixelHeight;
  result.pixelHeight = pixelHeight;
  result.pixelWidth = pixelWidth;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys()
{
  if (*v0)
  {
    result = 0x6965486C65786970;
  }

  else
  {
    result = 0x6469576C65786970;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69736E656D6964 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static ImageTokenizationRecommendations.DimensionRequirements.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  if (*(a1 + 16))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E656D694478616DLL;
  }

  else
  {
    result = 0x7A69537463617865;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7A69537463617865 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D694478616DLL && a2 == 0xEC0000006E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v22 - v13;
  v15 = v1[1];
  v28 = *v1;
  v23 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v16)
  {
    LOBYTE(v30) = 1;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();
    v18 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v28;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement();
    v19 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v6, v19);
  }

  else
  {
    LOBYTE(v30) = 0;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();
    v18 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v28;
    v31 = v23;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement();
    v20 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v10, v20);
  }

  return (*(v11 + 8))(v14, v18);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33[-v15];
  v18 = a1[3];
  v17 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();
  v19 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v39 = v13;
    v20 = v38;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v42 = v21;
    v43 = v21 + 32;
    v44 = 0;
    v45 = v22;
    v23 = specialized Collection<>.popFirst()();
    if (v23 == 2 || v44 != v45 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v26 = &type metadata for ImageTokenizationRecommendations.DimensionRequirements;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v39 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v23;
      if (v23)
      {
        LOBYTE(v40) = 1;
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement();
        v29 = v36;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v37 + 8))(v7, v29);
        (*(v39 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = v40;
      }

      else
      {
        LOBYTE(v40) = 0;
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v32 = v39;
        (*(v35 + 8))(v11, v8);
        (*(v32 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v31 = v40;
        v30 = v41;
      }

      *v20 = v31;
      *(v20 + 8) = v30;
      *(v20 + 16) = v34 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageTokenizationRecommendations.DimensionRequirements(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  if (*(a1 + 16))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

__n128 ImageTokenizationRecommendations.dimensions.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ImageTokenizationRecommendations.dimensions.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

__n128 ImageTokenizationRecommendations.init(dimensions:pixelFormat:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u32[1] = a2;
  return result;
}

BOOL static ImageTokenizationRecommendations.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (a1[2])
  {
    if (v2 == v3)
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    if (v2 != v3 || a1[1] != a2[1])
    {
      return 0;
    }
  }

  return *(a1 + 5) == *(a2 + 5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageTokenizationRecommendations.CodingKeys()
{
  if (*v0)
  {
    result = 0x726F466C65786970;
  }

  else
  {
    result = 0x6F69736E656D6964;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEB0000000074616DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = *(v1 + 16);
  v18 = *(v1 + 5);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v19 = 0;
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements();
  v11 = v13[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v14 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = 0;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v16;
    v12 = v17;
    v19 = v18;
    LOBYTE(v16) = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v19;
    *(a2 + 20) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ImageTokenizationRecommendations(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (a1[2])
  {
    if (v2 == v3)
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    if (v2 != v3 || a1[1] != a2[1])
    {
      return 0;
    }
  }

  return *(a1 + 5) == *(a2 + 5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageTokenizationRecommendations(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageTokenizationRecommendations(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement(uint64_t result, int a2, int a3)
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

uint64_t InferenceRequestHandler.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v31 = swift_allocObject();
  v31[2] = a27;
  v31[3] = a28;
  v31[4] = a29;
  v31[5] = a30;
  v31[6] = a13;
  v31[7] = a14;
  *(a9 + 96) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 104) = v31;
  v32 = swift_allocObject();
  v32[2] = a27;
  v32[3] = a28;
  v32[4] = a29;
  v32[5] = a30;
  v32[6] = a15;
  v32[7] = a16;
  *(a9 + 112) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 120) = v32;
  v33 = swift_allocObject();
  v33[2] = a27;
  v33[3] = a28;
  v33[4] = a29;
  v33[5] = a30;
  v33[6] = a17;
  v33[7] = a18;
  *(a9 + 128) = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 136) = v33;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 144) = a19;
  *(a9 + 152) = a20;
  v34 = swift_allocObject();
  *(v34 + 16) = a21;
  *(v34 + 24) = a22;
  *(a9 + 160) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse);
  *(a9 + 168) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = a23;
  *(v35 + 24) = a24;
  *(a9 + 176) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse);
  *(a9 + 184) = v35;
  result = swift_allocObject();
  *(result + 16) = a25;
  *(result + 24) = a26;
  *(a9 + 192) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse);
  *(a9 + 200) = result;
  return result;
}

uint64_t (*InferenceRequestHandler.ResponseStream.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t *a1@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v8 + 32))(&v11[v10], a1, a3);
  return partial apply for closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(a1, a2, a3, v9, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(a1, a2, a3, v9, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse)(a1, a2, a3, v9);
}

uint64_t InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 472) = a2;
  *(v4 + 480) = a3;
  *(v4 + 464) = a1;
  v5 = type metadata accessor for InferenceError();
  *(v4 + 488) = v5;
  v6 = *(v5 - 8);
  *(v4 + 496) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 504) = swift_task_alloc();
  v8 = type metadata accessor for InferenceError.Context();
  *(v4 + 512) = v8;
  v9 = *(v8 - 8);
  *(v4 + 520) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  v11 = type metadata accessor for InferenceProviderRequestConfiguration();
  *(v4 + 536) = v11;
  v12 = *(v11 - 8);
  *(v4 + 544) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 552) = swift_task_alloc();
  v14 = type metadata accessor for InferenceRequest(0);
  *(v4 + 560) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v4 + 568) = swift_task_alloc();
  v16 = type metadata accessor for OneShotRequest(0);
  *(v4 + 576) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  v18 = v3[11];
  *(v4 + 176) = v3[10];
  *(v4 + 192) = v18;
  *(v4 + 208) = v3[12];
  v19 = v3[7];
  *(v4 + 112) = v3[6];
  *(v4 + 128) = v19;
  v20 = v3[9];
  *(v4 + 144) = v3[8];
  *(v4 + 160) = v20;
  v21 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v21;
  v22 = v3[5];
  *(v4 + 80) = v3[4];
  *(v4 + 96) = v22;
  v23 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v23;

  return MEMORY[0x1EEE6DFA0](InferenceRequestHandler.handleRequest(data:configuration:), 0, 0);
}

uint64_t InferenceRequestHandler.handleRequest(data:configuration:)()
{
  v29 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.inference);
  outlined init with copy of InferenceRequestHandler((v0 + 2), (v0 + 28));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28[0] = v5;
    *v4 = 136315394;
    v6 = v0[2];
    v7 = v0[3];

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v28);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v28);
    _os_log_impl(&dword_1AB828000, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
    MEMORY[0x1AC5A6CD0](v4, -1, -1);
  }

  if (one-time initialization token for decoder != -1)
  {
    swift_once();
  }

  v9 = v0[73];
  v10 = v0[72];
  v12 = v0[58];
  v11 = v0[59];
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type OneShotRequest and conformance OneShotRequest, type metadata accessor for OneShotRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v13 = v0[74];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[60];
  outlined init with take of OneShotRequest(v0[73], v13, type metadata accessor for OneShotRequest);
  v20 = v0[2];
  v21 = v0[3];
  outlined init with copy of OneShotRequest(v13, v14, type metadata accessor for OneShotRequest);
  swift_storeEnumTagMultiPayload();
  (*(v17 + 16))(v16, v19, v18);
  v22 = type metadata accessor for InferenceRequestInstrumentation(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v0[75] = InferenceRequestInstrumentation.init(inferenceRequestHandlerIdentifier:inferenceRequest:configuration:)(v20, v21, v14, v16);
  v25 = swift_task_alloc();
  v0[76] = v25;
  v25[2] = v13;
  v25[3] = v0 + 2;
  v25[4] = v19;
  v26 = swift_task_alloc();
  v0[77] = v26;
  *v26 = v0;
  v26[1] = InferenceRequestHandler.handleRequest(data:configuration:);

  return InferenceRequestInstrumentation.measure(_:)(&async function pointer to partial apply for closure #1 in InferenceRequestHandler.handleRequest(data:configuration:), v25);
}

{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[71];
  v5 = v0[69];
  v6 = v0[66];
  v7 = v0[63];

  _s15TokenGeneration14OneShotRequestOWOhTm_0(v2, type metadata accessor for OneShotRequest);

  v8 = v0[1];
  v9 = v0[80];
  v10 = v0[79];

  return v8(v9, v10);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];

  _s15TokenGeneration14OneShotRequestOWOhTm_0(v3, type metadata accessor for OneShotRequest);
  v4 = v0[78];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[71];
  v8 = v0[69];
  v9 = v0[66];
  v10 = v0[63];

  v11 = v0[1];

  return v11();
}

uint64_t InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 616);
  v8 = *v3;
  *(*v3 + 624) = v2;

  if (v2)
  {
    v9 = InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v10 = v6[76];
    v6[79] = a2;
    v6[80] = a1;

    v9 = InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[427] = a5;
  v5[426] = a4;
  v5[425] = a3;
  v5[424] = a2;
  v5[423] = a1;
  v6 = type metadata accessor for TokenGenerationError(0);
  v5[428] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[429] = swift_task_alloc();
  v5[430] = swift_task_alloc();
  v5[431] = swift_task_alloc();
  v8 = *(*(type metadata accessor for CompileAdapterRequest(0) - 8) + 64) + 15;
  v5[432] = swift_task_alloc();
  v9 = *(*(type metadata accessor for ClassifyPromptTemplateRequest(0) - 8) + 64) + 15;
  v5[433] = swift_task_alloc();
  v10 = type metadata accessor for ClassifyPromptResponse(0);
  v5[434] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[435] = swift_task_alloc();
  v5[436] = swift_task_alloc();
  v12 = *(*(type metadata accessor for ClassifyPromptRequest(0) - 8) + 64) + 15;
  v5[437] = swift_task_alloc();
  v13 = *(*(type metadata accessor for CountTokensPromptTemplateRequest(0) - 8) + 64) + 15;
  v5[438] = swift_task_alloc();
  v14 = *(*(type metadata accessor for CompletePromptTemplateRequest(0) - 8) + 64) + 15;
  v5[439] = swift_task_alloc();
  v15 = type metadata accessor for CompletePromptResponse(0);
  v5[440] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[441] = swift_task_alloc();
  v5[442] = swift_task_alloc();
  v17 = *(*(type metadata accessor for CompletePromptRequest(0) - 8) + 64) + 15;
  v5[443] = swift_task_alloc();
  v18 = *(*(type metadata accessor for CountTokensRequest(0) - 8) + 64) + 15;
  v5[444] = swift_task_alloc();
  v19 = type metadata accessor for OneShotRequest(0);
  v5[445] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v5[446] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.handleRequest(data:configuration:), 0, 0);
}

uint64_t closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)()
{
  v1 = v0[445];
  outlined init with copy of OneShotRequest(v0[425], v0[446], type metadata accessor for OneShotRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = v0[426];
        outlined init with take of OneShotRequest(v0[446], v0[438], type metadata accessor for CountTokensPromptTemplateRequest);
        v25 = *(v24 + 48);
        v26 = *(v24 + 56);
        v68 = (v25 + *v25);
        v27 = v25[1];
        v28 = swift_task_alloc();
        v0[459] = v28;
        *v28 = v0;
        v28[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
        v9 = v0[438];
        v23 = v0[427];
        v8 = v0 + 302;
        goto LABEL_17;
      }

      v44 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[443], type metadata accessor for CompletePromptRequest);
      v45 = *(v44 + 64);
      v46 = *(v44 + 72);
      v68 = (v45 + *v45);
      v47 = v45[1];
      v48 = swift_task_alloc();
      v0[455] = v48;
      *v48 = v0;
      v48[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v9 = v0[443];
      v8 = v0[442];
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload)
    {
      v39 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[444], type metadata accessor for CountTokensRequest);
      v40 = *(v39 + 32);
      v41 = *(v39 + 40);
      v68 = (v40 + *v40);
      v42 = v40[1];
      v43 = swift_task_alloc();
      v0[453] = v43;
      *v43 = v0;
      v43[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v9 = v0[444];
      v23 = v0[427];
      v8 = v0 + 358;
    }

    else
    {
      v10 = v0[446];
      v11 = v0[426];
      v12 = *v10;
      v13 = v10[1];
      v0[447] = v13;
      v14 = v10[2];
      v15 = v10[3];
      v0[448] = v15;
      v16 = v10[4];
      v17 = v10[5];
      v0[449] = v17;
      v18 = v10[6];
      v0[450] = v18;
      v19 = *(v11 + 16);
      v20 = *(v11 + 24);
      v0[400] = v12;
      v0[401] = v13;
      v0[402] = v14;
      v0[403] = v15;
      v0[404] = v16;
      v0[405] = v17;
      v0[406] = v18;
      v68 = (v19 + *v19);
      v21 = v19[1];
      v22 = swift_task_alloc();
      v0[451] = v22;
      *v22 = v0;
      v22[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v23 = v0[427];
      v8 = v0 + 421;
      v9 = v0 + 400;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v29 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[439], type metadata accessor for CompletePromptTemplateRequest);
      v30 = *(v29 + 80);
      v31 = *(v29 + 88);
      v68 = (v30 + *v30);
      v32 = v30[1];
      v33 = swift_task_alloc();
      v0[457] = v33;
      *v33 = v0;
      v33[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v8 = v0[441];
      v9 = v0[439];
      goto LABEL_16;
    }

    v55 = v0[446];
    v56 = v0[426];
    v57 = *v55;
    v58 = v55[1];
    v0[461] = v58;
    v59 = v55[2];
    v60 = v55[3];
    v0[462] = v60;
    v61 = v55[4];
    v62 = v55[5];
    v0[463] = v62;
    v63 = v55[6];
    v0[464] = v63;
    v64 = *(v56 + 144);
    v65 = *(v56 + 152);
    v0[407] = v57;
    v0[408] = v58;
    v0[409] = v59;
    v0[410] = v60;
    v0[411] = v61;
    v0[412] = v62;
    v0[413] = v63;
    v68 = (v64 + *v64);
    v66 = v64[1];
    v67 = swift_task_alloc();
    v0[465] = v67;
    *v67 = v0;
    v67[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
    v23 = v0[427];
    v8 = v0 + 414;
    v9 = v0 + 407;
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v34 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[437], type metadata accessor for ClassifyPromptRequest);
      v35 = *(v34 + 160);
      v36 = *(v34 + 168);
      v68 = (v35 + *v35);
      v37 = v35[1];
      v38 = swift_task_alloc();
      v0[467] = v38;
      *v38 = v0;
      v38[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v9 = v0[437];
      v8 = v0[436];
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v3 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[433], type metadata accessor for ClassifyPromptTemplateRequest);
      v4 = *(v3 + 176);
      v5 = *(v3 + 184);
      v68 = (v4 + *v4);
      v6 = v4[1];
      v7 = swift_task_alloc();
      v0[469] = v7;
      *v7 = v0;
      v7[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v8 = v0[435];
      v9 = v0[433];
LABEL_16:
      v23 = v0[427];
      goto LABEL_17;
    }

    v50 = v0[426];
    outlined init with take of OneShotRequest(v0[446], v0[432], type metadata accessor for CompileAdapterRequest);
    v51 = *(v50 + 192);
    v52 = *(v50 + 200);
    v68 = (v51 + *v51);
    v53 = v51[1];
    v54 = swift_task_alloc();
    v0[471] = v54;
    *v54 = v0;
    v54[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
    v9 = v0[432];
    v23 = v0[427];
    v8 = (v0 + 3785);
  }

LABEL_17:

  return (v68)(v8, v9, v23);
}

{
  v2 = *v1;
  v3 = *(*v1 + 3608);
  v10 = *v1;
  *(*v1 + 3616) = v0;

  if (v0)
  {
    v4 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v5 = v2[450];
    v6 = v2[449];
    v7 = v2[448];
    v8 = v2[447];

    v4 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v77 = v0;
  v1 = *(v0 + 3368);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 16);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v76[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v76);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v76);
    *(v7 + 22) = 2050;
    *(v7 + 24) = v1;
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:fetchModelMetadata:response\ncontexteSize: %{public}ld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  *(v0 + 3360) = v1;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3616);
  lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v9)
  {
    v12 = v9;
    v13 = *(v0 + 3448);
    v14 = *(v0 + 3424);
    *(v0 + 3376) = v12;
    MEMORY[0x1AC5A6AE0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 3448);
      v16 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v15, v16, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 3440);
      v18 = *(v0 + 3432);
      v19 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v17, v18, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v19, v0 + 432);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v19);
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 3432);
      if (v22)
      {
        v24 = *(v0 + 3424);
        v25 = *(v0 + 3408);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v76[0] = v28;
        *v26 = 136315394;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v76);
        *(v26 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v23, v29, type metadata accessor for TokenGenerationError);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v23, type metadata accessor for TokenGenerationError);
        *(v26 + 14) = v30;
        *v27 = v30;
        _os_log_impl(&dword_1AB828000, v20, v21, "%s: Request failed %@", v26, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x1AC5A6CD0](v28, -1, -1);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v23, type metadata accessor for TokenGenerationError);
      }

      v51 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v52);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v51, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v43, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v43);

      if (os_log_type_enabled(v44, v45))
      {
        v46 = *(v0 + 3408);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v76[0] = v49;
        *v47 = 136315394;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v46, *(v46 + 8), v76);
        *(v47 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 14) = v50;
        *v48 = v50;
        _os_log_impl(&dword_1AB828000, v44, v45, "%s: Received unexpected non-TokenGenerationError: %@", v47, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v48, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1AC5A6CD0](v49, -1, -1);
        MEMORY[0x1AC5A6CD0](v47, -1, -1);
      }

      swift_willThrow();
    }

    v53 = *(v0 + 3568);
    v54 = *(v0 + 3552);
    v55 = *(v0 + 3544);
    v56 = *(v0 + 3536);
    v57 = *(v0 + 3528);
    v58 = *(v0 + 3512);
    v59 = *(v0 + 3504);
    v60 = *(v0 + 3496);
    v61 = *(v0 + 3488);
    v62 = *(v0 + 3480);
    v66 = *(v0 + 3464);
    v68 = *(v0 + 3456);
    v70 = *(v0 + 3448);
    v72 = *(v0 + 3440);
    v74 = *(v0 + 3432);

    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v31 = *(v0 + 3568);
    v32 = *(v0 + 3552);
    v33 = *(v0 + 3544);
    v34 = *(v0 + 3536);
    v35 = *(v0 + 3528);
    v36 = *(v0 + 3512);
    v37 = *(v0 + 3504);
    v38 = *(v0 + 3496);
    v39 = *(v0 + 3488);
    v40 = *(v0 + 3480);
    v64 = *(v0 + 3464);
    v65 = *(v0 + 3456);
    v67 = *(v0 + 3448);
    v69 = *(v0 + 3440);
    v71 = *(v0 + 3432);
    v73 = v11;
    v75 = v10;

    v41 = *(v0 + 8);

    return v41(v75, v73);
  }
}

{
  v2 = *(*v1 + 3624);
  v5 = *v1;
  *(*v1 + 3632) = v0;

  if (v0)
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v80 = v0;
  *(v0 + 3024) = *(v0 + 2912);
  *(v0 + 3040) = *(v0 + 2928);
  *(v0 + 3056) = *(v0 + 2944);
  *(v0 + 3072) = *(v0 + 2960);
  *(v0 + 2976) = *(v0 + 2864);
  *(v0 + 2992) = *(v0 + 2880);
  *(v0 + 3008) = *(v0 + 2896);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 2096);
  outlined init with copy of CountTokensResponse(v0 + 2976, v0 + 3088);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v79);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v79);
    *(v6 + 22) = 2048;
    *(v6 + 24) = *(v0 + 2976);
    outlined destroy of CountTokensResponse(v0 + 2976);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:countTokens:response\ncount: %ld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 2976);
  }

  v8 = *(v0 + 3056);
  *(v0 + 2368) = *(v0 + 3040);
  *(v0 + 2384) = v8;
  *(v0 + 2400) = *(v0 + 3072);
  v9 = *(v0 + 2992);
  *(v0 + 2304) = *(v0 + 2976);
  *(v0 + 2320) = v9;
  v10 = *(v0 + 3024);
  *(v0 + 2336) = *(v0 + 3008);
  *(v0 + 2352) = v10;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 3632);
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v15 = v11;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3552), type metadata accessor for CountTokensRequest);
  outlined destroy of CountTokensResponse(v0 + 2976);
  if (v11)
  {
    v16 = *(v0 + 3448);
    v17 = *(v0 + 3424);
    *(v0 + 3376) = v15;
    MEMORY[0x1AC5A6AE0](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 3448);
      v19 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v18, v19, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 3440);
      v21 = *(v0 + 3432);
      v22 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v20, v21, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v22, v0 + 432);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v22);
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 3432);
      if (v25)
      {
        v27 = *(v0 + 3424);
        v28 = *(v0 + 3408);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v79[0] = v31;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v28, *(v28 + 8), v79);
        *(v29 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v26, v32, type metadata accessor for TokenGenerationError);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
        *(v29 + 14) = v33;
        *v30 = v33;
        _os_log_impl(&dword_1AB828000, v23, v24, "%s: Request failed %@", v29, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1AC5A6CD0](v31, -1, -1);
        MEMORY[0x1AC5A6CD0](v29, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
      }

      v54 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v55);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v54, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v46, v0 + 224);
      MEMORY[0x1AC5A6AE0](v15);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v46);

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 3408);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v79[0] = v52;
        *v50 = 136315394;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v49, *(v49 + 8), v79);
        *(v50 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v15);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v53;
        *v51 = v53;
        _os_log_impl(&dword_1AB828000, v47, v48, "%s: Received unexpected non-TokenGenerationError: %@", v50, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v51, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1AC5A6CD0](v52, -1, -1);
        MEMORY[0x1AC5A6CD0](v50, -1, -1);
      }

      swift_willThrow();
    }

    v56 = *(v0 + 3568);
    v57 = *(v0 + 3552);
    v58 = *(v0 + 3544);
    v59 = *(v0 + 3536);
    v60 = *(v0 + 3528);
    v61 = *(v0 + 3512);
    v62 = *(v0 + 3504);
    v63 = *(v0 + 3496);
    v64 = *(v0 + 3488);
    v65 = *(v0 + 3480);
    v69 = *(v0 + 3464);
    v71 = *(v0 + 3456);
    v73 = *(v0 + 3448);
    v75 = *(v0 + 3440);
    v77 = *(v0 + 3432);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v34 = *(v0 + 3568);
    v76 = v12;
    v78 = v14;
    v35 = *(v0 + 3552);
    v36 = *(v0 + 3544);
    v37 = *(v0 + 3536);
    v38 = *(v0 + 3528);
    v39 = *(v0 + 3512);
    v40 = *(v0 + 3504);
    v41 = *(v0 + 3496);
    v42 = *(v0 + 3488);
    v43 = *(v0 + 3480);
    v67 = *(v0 + 3464);
    v68 = *(v0 + 3456);
    v70 = *(v0 + 3448);
    v72 = *(v0 + 3440);
    v74 = *(v0 + 3432);

    v44 = *(v0 + 8);

    return v44(v76, v78);
  }
}

{
  v2 = *(*v1 + 3640);
  v5 = *v1;
  *(*v1 + 3648) = v0;

  if (v0)
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v81 = v0;
  v1 = *(v0 + 3392);
  (*(v0 + 3384))(*(v0 + 3536));
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 1888);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v80);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v80);
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:completePrompt:response", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3648);
  v10 = *(v0 + 3536);
  v11 = *(v0 + 3520);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v15 = v9;
  v16 = *(v0 + 3544);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3536), type metadata accessor for CompletePromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v16, type metadata accessor for CompletePromptRequest);
  if (v15)
  {
    v17 = *(v0 + 3448);
    v18 = *(v0 + 3424);
    *(v0 + 3376) = v15;
    MEMORY[0x1AC5A6AE0](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 3448);
      v20 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v19, v20, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 3440);
      v22 = *(v0 + 3432);
      v23 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v21, v22, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v23, v0 + 432);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v23);
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 3432);
      if (v26)
      {
        v28 = *(v0 + 3424);
        v29 = *(v0 + 3408);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v80[0] = v32;
        *v30 = 136315394;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v29, *(v29 + 8), v80);
        *(v30 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v27, v33, type metadata accessor for TokenGenerationError);
        v34 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
        *(v30 + 14) = v34;
        *v31 = v34;
        _os_log_impl(&dword_1AB828000, v24, v25, "%s: Request failed %@", v30, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1AC5A6CD0](v32, -1, -1);
        MEMORY[0x1AC5A6CD0](v30, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
      }

      v55 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v56);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v55, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v47, v0 + 224);
      MEMORY[0x1AC5A6AE0](v15);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v47);

      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 3408);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v80[0] = v53;
        *v51 = 136315394;
        *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v50, *(v50 + 8), v80);
        *(v51 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v15);
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 14) = v54;
        *v52 = v54;
        _os_log_impl(&dword_1AB828000, v48, v49, "%s: Received unexpected non-TokenGenerationError: %@", v51, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v52, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v52, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1AC5A6CD0](v53, -1, -1);
        MEMORY[0x1AC5A6CD0](v51, -1, -1);
      }

      swift_willThrow();
    }

    v57 = *(v0 + 3568);
    v58 = *(v0 + 3552);
    v59 = *(v0 + 3544);
    v60 = *(v0 + 3536);
    v61 = *(v0 + 3528);
    v62 = *(v0 + 3512);
    v63 = *(v0 + 3504);
    v64 = *(v0 + 3496);
    v65 = *(v0 + 3488);
    v66 = *(v0 + 3480);
    v70 = *(v0 + 3464);
    v72 = *(v0 + 3456);
    v74 = *(v0 + 3448);
    v76 = *(v0 + 3440);
    v78 = *(v0 + 3432);

    v67 = *(v0 + 8);

    return v67();
  }

  else
  {
    v35 = *(v0 + 3568);
    v77 = v12;
    v79 = v14;
    v36 = *(v0 + 3552);
    v37 = *(v0 + 3544);
    v38 = *(v0 + 3536);
    v39 = *(v0 + 3528);
    v40 = *(v0 + 3512);
    v41 = *(v0 + 3504);
    v42 = *(v0 + 3496);
    v43 = *(v0 + 3488);
    v44 = *(v0 + 3480);
    v68 = *(v0 + 3464);
    v69 = *(v0 + 3456);
    v71 = *(v0 + 3448);
    v73 = *(v0 + 3440);
    v75 = *(v0 + 3432);

    v45 = *(v0 + 8);

    return v45(v77, v79);
  }
}

{
  v2 = *(*v1 + 3656);
  v5 = *v1;
  *(*v1 + 3664) = v0;

  if (v0)
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v81 = v0;
  v1 = *(v0 + 3392);
  (*(v0 + 3384))(*(v0 + 3528));
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 1680);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v80);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v80);
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:completePromptTemplate:response", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3664);
  v10 = *(v0 + 3528);
  v11 = *(v0 + 3520);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v15 = v9;
  v16 = *(v0 + 3512);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3528), type metadata accessor for CompletePromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v16, type metadata accessor for CompletePromptTemplateRequest);
  if (v15)
  {
    v17 = *(v0 + 3448);
    v18 = *(v0 + 3424);
    *(v0 + 3376) = v15;
    MEMORY[0x1AC5A6AE0](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 3448);
      v20 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v19, v20, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 3440);
      v22 = *(v0 + 3432);
      v23 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v21, v22, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v23, v0 + 432);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v23);
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 3432);
      if (v26)
      {
        v28 = *(v0 + 3424);
        v29 = *(v0 + 3408);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v80[0] = v32;
        *v30 = 136315394;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v29, *(v29 + 8), v80);
        *(v30 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v27, v33, type metadata accessor for TokenGenerationError);
        v34 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
        *(v30 + 14) = v34;
        *v31 = v34;
        _os_log_impl(&dword_1AB828000, v24, v25, "%s: Request failed %@", v30, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1AC5A6CD0](v32, -1, -1);
        MEMORY[0x1AC5A6CD0](v30, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
      }

      v55 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v56);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v55, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v47, v0 + 224);
      MEMORY[0x1AC5A6AE0](v15);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v47);

      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 3408);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v80[0] = v53;
        *v51 = 136315394;
        *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v50, *(v50 + 8), v80);
        *(v51 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v15);
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 14) = v54;
        *v52 = v54;
        _os_log_impl(&dword_1AB828000, v48, v49, "%s: Received unexpected non-TokenGenerationError: %@", v51, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v52, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v52, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1AC5A6CD0](v53, -1, -1);
        MEMORY[0x1AC5A6CD0](v51, -1, -1);
      }

      swift_willThrow();
    }

    v57 = *(v0 + 3568);
    v58 = *(v0 + 3552);
    v59 = *(v0 + 3544);
    v60 = *(v0 + 3536);
    v61 = *(v0 + 3528);
    v62 = *(v0 + 3512);
    v63 = *(v0 + 3504);
    v64 = *(v0 + 3496);
    v65 = *(v0 + 3488);
    v66 = *(v0 + 3480);
    v70 = *(v0 + 3464);
    v72 = *(v0 + 3456);
    v74 = *(v0 + 3448);
    v76 = *(v0 + 3440);
    v78 = *(v0 + 3432);

    v67 = *(v0 + 8);

    return v67();
  }

  else
  {
    v35 = *(v0 + 3568);
    v77 = v12;
    v79 = v14;
    v36 = *(v0 + 3552);
    v37 = *(v0 + 3544);
    v38 = *(v0 + 3536);
    v39 = *(v0 + 3528);
    v40 = *(v0 + 3512);
    v41 = *(v0 + 3504);
    v42 = *(v0 + 3496);
    v43 = *(v0 + 3488);
    v44 = *(v0 + 3480);
    v68 = *(v0 + 3464);
    v69 = *(v0 + 3456);
    v71 = *(v0 + 3448);
    v73 = *(v0 + 3440);
    v75 = *(v0 + 3432);

    v45 = *(v0 + 8);

    return v45(v77, v79);
  }
}

{
  v2 = *(*v1 + 3672);
  v5 = *v1;
  *(*v1 + 3680) = v0;

  if (v0)
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v80 = v0;
  *(v0 + 2576) = *(v0 + 2464);
  *(v0 + 2592) = *(v0 + 2480);
  *(v0 + 2608) = *(v0 + 2496);
  *(v0 + 2624) = *(v0 + 2512);
  *(v0 + 2528) = *(v0 + 2416);
  *(v0 + 2544) = *(v0 + 2432);
  *(v0 + 2560) = *(v0 + 2448);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 1472);
  outlined init with copy of CountTokensResponse(v0 + 2528, v0 + 2640);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v79);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v79);
    *(v6 + 22) = 2048;
    *(v6 + 24) = *(v0 + 2528);
    outlined destroy of CountTokensResponse(v0 + 2528);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:countTokens:response\ncount: %ld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 2528);
  }

  v8 = *(v0 + 2608);
  *(v0 + 2816) = *(v0 + 2592);
  *(v0 + 2832) = v8;
  *(v0 + 2848) = *(v0 + 2624);
  v9 = *(v0 + 2544);
  *(v0 + 2752) = *(v0 + 2528);
  *(v0 + 2768) = v9;
  v10 = *(v0 + 2576);
  *(v0 + 2784) = *(v0 + 2560);
  *(v0 + 2800) = v10;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 3680);
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v15 = v11;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3504), type metadata accessor for CountTokensPromptTemplateRequest);
  outlined destroy of CountTokensResponse(v0 + 2528);
  if (v11)
  {
    v16 = *(v0 + 3448);
    v17 = *(v0 + 3424);
    *(v0 + 3376) = v15;
    MEMORY[0x1AC5A6AE0](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 3448);
      v19 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v18, v19, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 3440);
      v21 = *(v0 + 3432);
      v22 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v20, v21, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v22, v0 + 432);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v22);
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 3432);
      if (v25)
      {
        v27 = *(v0 + 3424);
        v28 = *(v0 + 3408);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v79[0] = v31;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v28, *(v28 + 8), v79);
        *(v29 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v26, v32, type metadata accessor for TokenGenerationError);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
        *(v29 + 14) = v33;
        *v30 = v33;
        _os_log_impl(&dword_1AB828000, v23, v24, "%s: Request failed %@", v29, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1AC5A6CD0](v31, -1, -1);
        MEMORY[0x1AC5A6CD0](v29, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
      }

      v54 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v55);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v54, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v46, v0 + 224);
      MEMORY[0x1AC5A6AE0](v15);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v46);

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 3408);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v79[0] = v52;
        *v50 = 136315394;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v49, *(v49 + 8), v79);
        *(v50 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v15);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v53;
        *v51 = v53;
        _os_log_impl(&dword_1AB828000, v47, v48, "%s: Received unexpected non-TokenGenerationError: %@", v50, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v51, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1AC5A6CD0](v52, -1, -1);
        MEMORY[0x1AC5A6CD0](v50, -1, -1);
      }

      swift_willThrow();
    }

    v56 = *(v0 + 3568);
    v57 = *(v0 + 3552);
    v58 = *(v0 + 3544);
    v59 = *(v0 + 3536);
    v60 = *(v0 + 3528);
    v61 = *(v0 + 3512);
    v62 = *(v0 + 3504);
    v63 = *(v0 + 3496);
    v64 = *(v0 + 3488);
    v65 = *(v0 + 3480);
    v69 = *(v0 + 3464);
    v71 = *(v0 + 3456);
    v73 = *(v0 + 3448);
    v75 = *(v0 + 3440);
    v77 = *(v0 + 3432);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v34 = *(v0 + 3568);
    v76 = v12;
    v78 = v14;
    v35 = *(v0 + 3552);
    v36 = *(v0 + 3544);
    v37 = *(v0 + 3536);
    v38 = *(v0 + 3528);
    v39 = *(v0 + 3512);
    v40 = *(v0 + 3504);
    v41 = *(v0 + 3496);
    v42 = *(v0 + 3488);
    v43 = *(v0 + 3480);
    v67 = *(v0 + 3464);
    v68 = *(v0 + 3456);
    v70 = *(v0 + 3448);
    v72 = *(v0 + 3440);
    v74 = *(v0 + 3432);

    v44 = *(v0 + 8);

    return v44(v76, v78);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 3720);
  v10 = *v1;
  *(*v1 + 3728) = v0;

  if (v0)
  {
    v4 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v5 = v2[464];
    v6 = v2[463];
    v7 = v2[462];
    v8 = v2[461];

    v4 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v78 = v0;
  v75 = *(v0 + 3312);
  v1 = *(v0 + 3328);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 1264);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v77[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v77);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v77);
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:fetchTokenizerMetadata:response", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  *(v0 + 3336) = v75;
  *(v0 + 3352) = v1;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3728);
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v9)
  {
    v12 = v9;
    v13 = *(v0 + 3448);
    v14 = *(v0 + 3424);
    *(v0 + 3376) = v12;
    MEMORY[0x1AC5A6AE0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 3448);
      v16 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v15, v16, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 3440);
      v18 = *(v0 + 3432);
      v19 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v17, v18, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v19, v0 + 432);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v19);
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 3432);
      if (v22)
      {
        v24 = *(v0 + 3424);
        v25 = *(v0 + 3408);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v77[0] = v28;
        *v26 = 136315394;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v77);
        *(v26 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v23, v29, type metadata accessor for TokenGenerationError);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v23, type metadata accessor for TokenGenerationError);
        *(v26 + 14) = v30;
        *v27 = v30;
        _os_log_impl(&dword_1AB828000, v20, v21, "%s: Request failed %@", v26, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x1AC5A6CD0](v28, -1, -1);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v23, type metadata accessor for TokenGenerationError);
      }

      v51 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v52);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v51, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v43, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v43);

      if (os_log_type_enabled(v44, v45))
      {
        v46 = *(v0 + 3408);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v77[0] = v49;
        *v47 = 136315394;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v46, *(v46 + 8), v77);
        *(v47 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 14) = v50;
        *v48 = v50;
        _os_log_impl(&dword_1AB828000, v44, v45, "%s: Received unexpected non-TokenGenerationError: %@", v47, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v48, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1AC5A6CD0](v49, -1, -1);
        MEMORY[0x1AC5A6CD0](v47, -1, -1);
      }

      swift_willThrow();
    }

    v53 = *(v0 + 3568);
    v54 = *(v0 + 3552);
    v55 = *(v0 + 3544);
    v56 = *(v0 + 3536);
    v57 = *(v0 + 3528);
    v58 = *(v0 + 3512);
    v59 = *(v0 + 3504);
    v60 = *(v0 + 3496);
    v61 = *(v0 + 3488);
    v62 = *(v0 + 3480);
    v66 = *(v0 + 3464);
    v68 = *(v0 + 3456);
    v70 = *(v0 + 3448);
    v72 = *(v0 + 3440);
    v74 = *(v0 + 3432);

    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v31 = *(v0 + 3568);
    v32 = *(v0 + 3552);
    v33 = *(v0 + 3544);
    v34 = *(v0 + 3536);
    v35 = *(v0 + 3528);
    v36 = *(v0 + 3512);
    v37 = *(v0 + 3504);
    v38 = *(v0 + 3496);
    v39 = *(v0 + 3488);
    v40 = *(v0 + 3480);
    v64 = *(v0 + 3464);
    v65 = *(v0 + 3456);
    v67 = *(v0 + 3448);
    v69 = *(v0 + 3440);
    v71 = *(v0 + 3432);
    v73 = v11;
    v76 = v10;

    v41 = *(v0 + 8);

    return v41(v76, v73);
  }
}

{
  v2 = *(*v1 + 3736);
  v5 = *v1;
  *(*v1 + 3744) = v0;

  if (v0)
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v80 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 1056);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v79);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v79);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:classifyPrompt:response", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 3744);
  v9 = *(v0 + 3488);
  v10 = *(v0 + 3472);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, type metadata accessor for ClassifyPromptResponse);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;
  v14 = v8;
  v15 = *(v0 + 3496);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3488), type metadata accessor for ClassifyPromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v15, type metadata accessor for ClassifyPromptRequest);
  if (v14)
  {
    v16 = *(v0 + 3448);
    v17 = *(v0 + 3424);
    *(v0 + 3376) = v14;
    MEMORY[0x1AC5A6AE0](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 3448);
      v19 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v18, v19, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 3440);
      v21 = *(v0 + 3432);
      v22 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v20, v21, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v22, v0 + 432);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v22);
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 3432);
      if (v25)
      {
        v27 = *(v0 + 3424);
        v28 = *(v0 + 3408);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v79[0] = v31;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v28, *(v28 + 8), v79);
        *(v29 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v26, v32, type metadata accessor for TokenGenerationError);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
        *(v29 + 14) = v33;
        *v30 = v33;
        _os_log_impl(&dword_1AB828000, v23, v24, "%s: Request failed %@", v29, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1AC5A6CD0](v31, -1, -1);
        MEMORY[0x1AC5A6CD0](v29, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
      }

      v54 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v55);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v54, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v46, v0 + 224);
      MEMORY[0x1AC5A6AE0](v14);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v46);

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 3408);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v79[0] = v52;
        *v50 = 136315394;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v49, *(v49 + 8), v79);
        *(v50 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v14);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v53;
        *v51 = v53;
        _os_log_impl(&dword_1AB828000, v47, v48, "%s: Received unexpected non-TokenGenerationError: %@", v50, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v51, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1AC5A6CD0](v52, -1, -1);
        MEMORY[0x1AC5A6CD0](v50, -1, -1);
      }

      swift_willThrow();
    }

    v56 = *(v0 + 3568);
    v57 = *(v0 + 3552);
    v58 = *(v0 + 3544);
    v59 = *(v0 + 3536);
    v60 = *(v0 + 3528);
    v61 = *(v0 + 3512);
    v62 = *(v0 + 3504);
    v63 = *(v0 + 3496);
    v64 = *(v0 + 3488);
    v65 = *(v0 + 3480);
    v69 = *(v0 + 3464);
    v71 = *(v0 + 3456);
    v73 = *(v0 + 3448);
    v75 = *(v0 + 3440);
    v77 = *(v0 + 3432);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v34 = *(v0 + 3568);
    v76 = v11;
    v78 = v13;
    v35 = *(v0 + 3552);
    v36 = *(v0 + 3544);
    v37 = *(v0 + 3536);
    v38 = *(v0 + 3528);
    v39 = *(v0 + 3512);
    v40 = *(v0 + 3504);
    v41 = *(v0 + 3496);
    v42 = *(v0 + 3488);
    v43 = *(v0 + 3480);
    v67 = *(v0 + 3464);
    v68 = *(v0 + 3456);
    v70 = *(v0 + 3448);
    v72 = *(v0 + 3440);
    v74 = *(v0 + 3432);

    v44 = *(v0 + 8);

    return v44(v76, v78);
  }
}

{
  v2 = *(*v1 + 3752);
  v5 = *v1;
  *(*v1 + 3760) = v0;

  if (v0)
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v80 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 848);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v79);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v79);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:_classifyPromptTemplate:response", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 3760);
  v9 = *(v0 + 3480);
  v10 = *(v0 + 3472);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, type metadata accessor for ClassifyPromptResponse);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;
  v14 = v8;
  v15 = *(v0 + 3464);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3480), type metadata accessor for ClassifyPromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v15, type metadata accessor for ClassifyPromptTemplateRequest);
  if (v14)
  {
    v16 = *(v0 + 3448);
    v17 = *(v0 + 3424);
    *(v0 + 3376) = v14;
    MEMORY[0x1AC5A6AE0](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 3448);
      v19 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v18, v19, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 3440);
      v21 = *(v0 + 3432);
      v22 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v20, v21, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v22, v0 + 432);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v22);
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 3432);
      if (v25)
      {
        v27 = *(v0 + 3424);
        v28 = *(v0 + 3408);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v79[0] = v31;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v28, *(v28 + 8), v79);
        *(v29 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v26, v32, type metadata accessor for TokenGenerationError);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
        *(v29 + 14) = v33;
        *v30 = v33;
        _os_log_impl(&dword_1AB828000, v23, v24, "%s: Request failed %@", v29, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1AC5A6CD0](v31, -1, -1);
        MEMORY[0x1AC5A6CD0](v29, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v26, type metadata accessor for TokenGenerationError);
      }

      v54 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v55);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v54, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v46, v0 + 224);
      MEMORY[0x1AC5A6AE0](v14);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v46);

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 3408);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v79[0] = v52;
        *v50 = 136315394;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v49, *(v49 + 8), v79);
        *(v50 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v14);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v53;
        *v51 = v53;
        _os_log_impl(&dword_1AB828000, v47, v48, "%s: Received unexpected non-TokenGenerationError: %@", v50, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v51, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1AC5A6CD0](v52, -1, -1);
        MEMORY[0x1AC5A6CD0](v50, -1, -1);
      }

      swift_willThrow();
    }

    v56 = *(v0 + 3568);
    v57 = *(v0 + 3552);
    v58 = *(v0 + 3544);
    v59 = *(v0 + 3536);
    v60 = *(v0 + 3528);
    v61 = *(v0 + 3512);
    v62 = *(v0 + 3504);
    v63 = *(v0 + 3496);
    v64 = *(v0 + 3488);
    v65 = *(v0 + 3480);
    v69 = *(v0 + 3464);
    v71 = *(v0 + 3456);
    v73 = *(v0 + 3448);
    v75 = *(v0 + 3440);
    v77 = *(v0 + 3432);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v34 = *(v0 + 3568);
    v76 = v11;
    v78 = v13;
    v35 = *(v0 + 3552);
    v36 = *(v0 + 3544);
    v37 = *(v0 + 3536);
    v38 = *(v0 + 3528);
    v39 = *(v0 + 3512);
    v40 = *(v0 + 3504);
    v41 = *(v0 + 3496);
    v42 = *(v0 + 3488);
    v43 = *(v0 + 3480);
    v67 = *(v0 + 3464);
    v68 = *(v0 + 3456);
    v70 = *(v0 + 3448);
    v72 = *(v0 + 3440);
    v74 = *(v0 + 3432);

    v44 = *(v0 + 8);

    return v44(v76, v78);
  }
}

{
  v2 = *(*v1 + 3768);
  v5 = *v1;
  *(*v1 + 3776) = v0;

  if (v0)
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v3 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v77 = v0;
  v1 = *(v0 + 3785);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 640);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v76[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v76);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v76);
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:_compileAdapter:response", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  *(v0 + 3784) = v1;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3776);
  lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;
  v13 = v9;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3456), type metadata accessor for CompileAdapterRequest);
  if (v9)
  {
    v14 = *(v0 + 3448);
    v15 = *(v0 + 3424);
    *(v0 + 3376) = v13;
    MEMORY[0x1AC5A6AE0](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 3448);
      v17 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 3440);
      v19 = *(v0 + 3432);
      v20 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v18, v19, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v20, v0 + 432);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v20);
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 3432);
      if (v23)
      {
        v25 = *(v0 + 3424);
        v26 = *(v0 + 3408);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v76[0] = v29;
        *v27 = 136315394;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v26, *(v26 + 8), v76);
        *(v27 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v24, v30, type metadata accessor for TokenGenerationError);
        v31 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v24, type metadata accessor for TokenGenerationError);
        *(v27 + 14) = v31;
        *v28 = v31;
        _os_log_impl(&dword_1AB828000, v21, v22, "%s: Request failed %@", v27, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v28, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x1AC5A6CD0](v29, -1, -1);
        MEMORY[0x1AC5A6CD0](v27, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v24, type metadata accessor for TokenGenerationError);
      }

      v51 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v52);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v51, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v43, v0 + 224);
      MEMORY[0x1AC5A6AE0](v13);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v43);

      if (os_log_type_enabled(v44, v45))
      {
        v46 = *(v0 + 3408);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v76[0] = v49;
        *v47 = 136315394;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v46, *(v46 + 8), v76);
        *(v47 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v13);
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 14) = v50;
        *v48 = v50;
        _os_log_impl(&dword_1AB828000, v44, v45, "%s: Received unexpected non-TokenGenerationError: %@", v47, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v48, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1AC5A6CD0](v49, -1, -1);
        MEMORY[0x1AC5A6CD0](v47, -1, -1);
      }

      swift_willThrow();
    }

    v53 = *(v0 + 3568);
    v54 = *(v0 + 3552);
    v55 = *(v0 + 3544);
    v56 = *(v0 + 3536);
    v57 = *(v0 + 3528);
    v58 = *(v0 + 3512);
    v59 = *(v0 + 3504);
    v60 = *(v0 + 3496);
    v61 = *(v0 + 3488);
    v62 = *(v0 + 3480);
    v66 = *(v0 + 3464);
    v68 = *(v0 + 3456);
    v70 = *(v0 + 3448);
    v72 = *(v0 + 3440);
    v74 = *(v0 + 3432);

    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v32 = *(v0 + 3568);
    v33 = *(v0 + 3552);
    v34 = *(v0 + 3544);
    v35 = *(v0 + 3536);
    v36 = *(v0 + 3528);
    v37 = *(v0 + 3512);
    v38 = *(v0 + 3504);
    v39 = *(v0 + 3496);
    v75 = v10;
    v40 = *(v0 + 3488);
    v64 = *(v0 + 3480);
    v65 = *(v0 + 3464);
    v67 = *(v0 + 3456);
    v69 = *(v0 + 3448);
    v71 = *(v0 + 3440);
    v73 = *(v0 + 3432);

    v41 = *(v0 + 8);

    return v41(v75, v12);
  }
}

{
  v54 = v0;
  v1 = *(v0 + 3600);
  v2 = *(v0 + 3592);
  v3 = *(v0 + 3584);
  v4 = *(v0 + 3576);

  v5 = *(v0 + 3616);
  v6 = *(v0 + 3448);
  v7 = *(v0 + 3424);
  *(v0 + 3376) = v5;
  MEMORY[0x1AC5A6AE0](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 3448);
    v9 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v8, v9, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 3440);
    v11 = *(v0 + 3432);
    v12 = *(v0 + 3408);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.inference);
    outlined init with copy of OneShotRequest(v10, v11, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v12, v0 + 432);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v12);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 3432);
    if (v16)
    {
      v18 = *(v0 + 3424);
      v19 = *(v0 + 3408);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53[0] = v22;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v19, *(v19 + 8), v53);
      *(v20 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v17, v23, type metadata accessor for TokenGenerationError);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v17, type metadata accessor for TokenGenerationError);
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_1AB828000, v14, v15, "%s: Request failed %@", v20, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1AC5A6CD0](v22, -1, -1);
      MEMORY[0x1AC5A6CD0](v20, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v17, type metadata accessor for TokenGenerationError);
    }

    v34 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v35);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v34, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 3408);
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v25, v0 + 224);
    MEMORY[0x1AC5A6AE0](v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v25);

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 3408);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53[0] = v32;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v29, *(v29 + 8), v53);
      *(v30 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v5);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1AB828000, v27, v28, "%s: Received unexpected non-TokenGenerationError: %@", v30, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1AC5A6CD0](v32, -1, -1);
      MEMORY[0x1AC5A6CD0](v30, -1, -1);
    }

    swift_willThrow();
  }

  v36 = *(v0 + 3568);
  v37 = *(v0 + 3552);
  v38 = *(v0 + 3544);
  v39 = *(v0 + 3536);
  v40 = *(v0 + 3528);
  v41 = *(v0 + 3512);
  v42 = *(v0 + 3504);
  v43 = *(v0 + 3496);
  v44 = *(v0 + 3488);
  v45 = *(v0 + 3480);
  v48 = *(v0 + 3464);
  v49 = *(v0 + 3456);
  v50 = *(v0 + 3448);
  v51 = *(v0 + 3440);
  v52 = *(v0 + 3432);

  v46 = *(v0 + 8);

  return v46();
}

{
  v50 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3552), type metadata accessor for CountTokensRequest);
  v1 = *(v0 + 3632);
  v2 = *(v0 + 3448);
  v3 = *(v0 + 3424);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 3448);
    v5 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 3440);
    v7 = *(v0 + 3432);
    v8 = *(v0 + 3408);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.inference);
    outlined init with copy of OneShotRequest(v6, v7, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v8, v0 + 432);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v8);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3432);
    if (v12)
    {
      v14 = *(v0 + 3424);
      v15 = *(v0 + 3408);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v15, *(v15 + 8), v49);
      *(v16 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v13, v19, type metadata accessor for TokenGenerationError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1AB828000, v10, v11, "%s: Request failed %@", v16, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1AC5A6CD0](v18, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
    }

    v30 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v31);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v30, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 3408);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v21, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v21);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 3408);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v49);
      *(v26 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1AB828000, v23, v24, "%s: Received unexpected non-TokenGenerationError: %@", v26, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *(v0 + 3568);
  v33 = *(v0 + 3552);
  v34 = *(v0 + 3544);
  v35 = *(v0 + 3536);
  v36 = *(v0 + 3528);
  v37 = *(v0 + 3512);
  v38 = *(v0 + 3504);
  v39 = *(v0 + 3496);
  v40 = *(v0 + 3488);
  v41 = *(v0 + 3480);
  v44 = *(v0 + 3464);
  v45 = *(v0 + 3456);
  v46 = *(v0 + 3448);
  v47 = *(v0 + 3440);
  v48 = *(v0 + 3432);

  v42 = *(v0 + 8);

  return v42();
}

{
  v50 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3544), type metadata accessor for CompletePromptRequest);
  v1 = *(v0 + 3648);
  v2 = *(v0 + 3448);
  v3 = *(v0 + 3424);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 3448);
    v5 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 3440);
    v7 = *(v0 + 3432);
    v8 = *(v0 + 3408);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.inference);
    outlined init with copy of OneShotRequest(v6, v7, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v8, v0 + 432);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v8);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3432);
    if (v12)
    {
      v14 = *(v0 + 3424);
      v15 = *(v0 + 3408);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v15, *(v15 + 8), v49);
      *(v16 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v13, v19, type metadata accessor for TokenGenerationError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1AB828000, v10, v11, "%s: Request failed %@", v16, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1AC5A6CD0](v18, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
    }

    v30 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v31);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v30, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 3408);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v21, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v21);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 3408);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v49);
      *(v26 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1AB828000, v23, v24, "%s: Received unexpected non-TokenGenerationError: %@", v26, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *(v0 + 3568);
  v33 = *(v0 + 3552);
  v34 = *(v0 + 3544);
  v35 = *(v0 + 3536);
  v36 = *(v0 + 3528);
  v37 = *(v0 + 3512);
  v38 = *(v0 + 3504);
  v39 = *(v0 + 3496);
  v40 = *(v0 + 3488);
  v41 = *(v0 + 3480);
  v44 = *(v0 + 3464);
  v45 = *(v0 + 3456);
  v46 = *(v0 + 3448);
  v47 = *(v0 + 3440);
  v48 = *(v0 + 3432);

  v42 = *(v0 + 8);

  return v42();
}

{
  v50 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3512), type metadata accessor for CompletePromptTemplateRequest);
  v1 = *(v0 + 3664);
  v2 = *(v0 + 3448);
  v3 = *(v0 + 3424);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 3448);
    v5 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 3440);
    v7 = *(v0 + 3432);
    v8 = *(v0 + 3408);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.inference);
    outlined init with copy of OneShotRequest(v6, v7, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v8, v0 + 432);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v8);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3432);
    if (v12)
    {
      v14 = *(v0 + 3424);
      v15 = *(v0 + 3408);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v15, *(v15 + 8), v49);
      *(v16 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v13, v19, type metadata accessor for TokenGenerationError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1AB828000, v10, v11, "%s: Request failed %@", v16, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1AC5A6CD0](v18, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
    }

    v30 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v31);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v30, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 3408);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v21, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v21);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 3408);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v49);
      *(v26 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1AB828000, v23, v24, "%s: Received unexpected non-TokenGenerationError: %@", v26, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *(v0 + 3568);
  v33 = *(v0 + 3552);
  v34 = *(v0 + 3544);
  v35 = *(v0 + 3536);
  v36 = *(v0 + 3528);
  v37 = *(v0 + 3512);
  v38 = *(v0 + 3504);
  v39 = *(v0 + 3496);
  v40 = *(v0 + 3488);
  v41 = *(v0 + 3480);
  v44 = *(v0 + 3464);
  v45 = *(v0 + 3456);
  v46 = *(v0 + 3448);
  v47 = *(v0 + 3440);
  v48 = *(v0 + 3432);

  v42 = *(v0 + 8);

  return v42();
}

{
  v50 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3504), type metadata accessor for CountTokensPromptTemplateRequest);
  v1 = *(v0 + 3680);
  v2 = *(v0 + 3448);
  v3 = *(v0 + 3424);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 3448);
    v5 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 3440);
    v7 = *(v0 + 3432);
    v8 = *(v0 + 3408);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.inference);
    outlined init with copy of OneShotRequest(v6, v7, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v8, v0 + 432);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v8);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3432);
    if (v12)
    {
      v14 = *(v0 + 3424);
      v15 = *(v0 + 3408);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v15, *(v15 + 8), v49);
      *(v16 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v13, v19, type metadata accessor for TokenGenerationError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1AB828000, v10, v11, "%s: Request failed %@", v16, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1AC5A6CD0](v18, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
    }

    v30 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v31);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v30, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 3408);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v21, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v21);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 3408);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v49);
      *(v26 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1AB828000, v23, v24, "%s: Received unexpected non-TokenGenerationError: %@", v26, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *(v0 + 3568);
  v33 = *(v0 + 3552);
  v34 = *(v0 + 3544);
  v35 = *(v0 + 3536);
  v36 = *(v0 + 3528);
  v37 = *(v0 + 3512);
  v38 = *(v0 + 3504);
  v39 = *(v0 + 3496);
  v40 = *(v0 + 3488);
  v41 = *(v0 + 3480);
  v44 = *(v0 + 3464);
  v45 = *(v0 + 3456);
  v46 = *(v0 + 3448);
  v47 = *(v0 + 3440);
  v48 = *(v0 + 3432);

  v42 = *(v0 + 8);

  return v42();
}

{
  v54 = v0;
  v1 = *(v0 + 3712);
  v2 = *(v0 + 3704);
  v3 = *(v0 + 3696);
  v4 = *(v0 + 3688);

  v5 = *(v0 + 3728);
  v6 = *(v0 + 3448);
  v7 = *(v0 + 3424);
  *(v0 + 3376) = v5;
  MEMORY[0x1AC5A6AE0](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 3448);
    v9 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v8, v9, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 3440);
    v11 = *(v0 + 3432);
    v12 = *(v0 + 3408);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.inference);
    outlined init with copy of OneShotRequest(v10, v11, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v12, v0 + 432);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v12);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 3432);
    if (v16)
    {
      v18 = *(v0 + 3424);
      v19 = *(v0 + 3408);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53[0] = v22;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v19, *(v19 + 8), v53);
      *(v20 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v17, v23, type metadata accessor for TokenGenerationError);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v17, type metadata accessor for TokenGenerationError);
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_1AB828000, v14, v15, "%s: Request failed %@", v20, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1AC5A6CD0](v22, -1, -1);
      MEMORY[0x1AC5A6CD0](v20, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v17, type metadata accessor for TokenGenerationError);
    }

    v34 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v35);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v34, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 3408);
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v25, v0 + 224);
    MEMORY[0x1AC5A6AE0](v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v25);

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 3408);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53[0] = v32;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v29, *(v29 + 8), v53);
      *(v30 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v5);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1AB828000, v27, v28, "%s: Received unexpected non-TokenGenerationError: %@", v30, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1AC5A6CD0](v32, -1, -1);
      MEMORY[0x1AC5A6CD0](v30, -1, -1);
    }

    swift_willThrow();
  }

  v36 = *(v0 + 3568);
  v37 = *(v0 + 3552);
  v38 = *(v0 + 3544);
  v39 = *(v0 + 3536);
  v40 = *(v0 + 3528);
  v41 = *(v0 + 3512);
  v42 = *(v0 + 3504);
  v43 = *(v0 + 3496);
  v44 = *(v0 + 3488);
  v45 = *(v0 + 3480);
  v48 = *(v0 + 3464);
  v49 = *(v0 + 3456);
  v50 = *(v0 + 3448);
  v51 = *(v0 + 3440);
  v52 = *(v0 + 3432);

  v46 = *(v0 + 8);

  return v46();
}

{
  v50 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3496), type metadata accessor for ClassifyPromptRequest);
  v1 = *(v0 + 3744);
  v2 = *(v0 + 3448);
  v3 = *(v0 + 3424);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 3448);
    v5 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 3440);
    v7 = *(v0 + 3432);
    v8 = *(v0 + 3408);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.inference);
    outlined init with copy of OneShotRequest(v6, v7, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v8, v0 + 432);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v8);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3432);
    if (v12)
    {
      v14 = *(v0 + 3424);
      v15 = *(v0 + 3408);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v15, *(v15 + 8), v49);
      *(v16 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v13, v19, type metadata accessor for TokenGenerationError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1AB828000, v10, v11, "%s: Request failed %@", v16, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1AC5A6CD0](v18, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
    }

    v30 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v31);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v30, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 3408);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v21, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v21);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 3408);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v49);
      *(v26 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1AB828000, v23, v24, "%s: Received unexpected non-TokenGenerationError: %@", v26, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *(v0 + 3568);
  v33 = *(v0 + 3552);
  v34 = *(v0 + 3544);
  v35 = *(v0 + 3536);
  v36 = *(v0 + 3528);
  v37 = *(v0 + 3512);
  v38 = *(v0 + 3504);
  v39 = *(v0 + 3496);
  v40 = *(v0 + 3488);
  v41 = *(v0 + 3480);
  v44 = *(v0 + 3464);
  v45 = *(v0 + 3456);
  v46 = *(v0 + 3448);
  v47 = *(v0 + 3440);
  v48 = *(v0 + 3432);

  v42 = *(v0 + 8);

  return v42();
}

{
  v50 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3464), type metadata accessor for ClassifyPromptTemplateRequest);
  v1 = *(v0 + 3760);
  v2 = *(v0 + 3448);
  v3 = *(v0 + 3424);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 3448);
    v5 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 3440);
    v7 = *(v0 + 3432);
    v8 = *(v0 + 3408);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.inference);
    outlined init with copy of OneShotRequest(v6, v7, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v8, v0 + 432);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v8);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3432);
    if (v12)
    {
      v14 = *(v0 + 3424);
      v15 = *(v0 + 3408);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v15, *(v15 + 8), v49);
      *(v16 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v13, v19, type metadata accessor for TokenGenerationError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1AB828000, v10, v11, "%s: Request failed %@", v16, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1AC5A6CD0](v18, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
    }

    v30 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v31);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v30, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 3408);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v21, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v21);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 3408);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v49);
      *(v26 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1AB828000, v23, v24, "%s: Received unexpected non-TokenGenerationError: %@", v26, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *(v0 + 3568);
  v33 = *(v0 + 3552);
  v34 = *(v0 + 3544);
  v35 = *(v0 + 3536);
  v36 = *(v0 + 3528);
  v37 = *(v0 + 3512);
  v38 = *(v0 + 3504);
  v39 = *(v0 + 3496);
  v40 = *(v0 + 3488);
  v41 = *(v0 + 3480);
  v44 = *(v0 + 3464);
  v45 = *(v0 + 3456);
  v46 = *(v0 + 3448);
  v47 = *(v0 + 3440);
  v48 = *(v0 + 3432);

  v42 = *(v0 + 8);

  return v42();
}

{
  v50 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3456), type metadata accessor for CompileAdapterRequest);
  v1 = *(v0 + 3776);
  v2 = *(v0 + 3448);
  v3 = *(v0 + 3424);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 3448);
    v5 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 3440);
    v7 = *(v0 + 3432);
    v8 = *(v0 + 3408);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.inference);
    outlined init with copy of OneShotRequest(v6, v7, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v8, v0 + 432);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v8);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 3432);
    if (v12)
    {
      v14 = *(v0 + 3424);
      v15 = *(v0 + 3408);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v15, *(v15 + 8), v49);
      *(v16 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v13, v19, type metadata accessor for TokenGenerationError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1AB828000, v10, v11, "%s: Request failed %@", v16, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1AC5A6CD0](v18, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for TokenGenerationError);
    }

    v30 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v31);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v30, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 3408);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v21, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v21);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 3408);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v49);
      *(v26 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1AB828000, v23, v24, "%s: Received unexpected non-TokenGenerationError: %@", v26, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *(v0 + 3568);
  v33 = *(v0 + 3552);
  v34 = *(v0 + 3544);
  v35 = *(v0 + 3536);
  v36 = *(v0 + 3528);
  v37 = *(v0 + 3512);
  v38 = *(v0 + 3504);
  v39 = *(v0 + 3496);
  v40 = *(v0 + 3488);
  v41 = *(v0 + 3480);
  v44 = *(v0 + 3464);
  v45 = *(v0 + 3456);
  v46 = *(v0 + 3448);
  v47 = *(v0 + 3440);
  v48 = *(v0 + 3432);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t InferenceRequestHandler.handleStreamingRequest(data:configuration:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v105 = a1;
  v106 = a2;
  v3 = type metadata accessor for CompletePromptTemplateRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR);
  v103 = *(v100 - 8);
  v101 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v87 - v6;
  v7 = type metadata accessor for CompletePromptRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InferenceProviderRequestConfiguration();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v96 = v12;
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StreamingRequest(0);
  v93 = *(v13 - 8);
  v14 = *(v93 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v94 = &v87 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v87 - v21;
  v22 = v2[11];
  v119 = v2[10];
  v120 = v22;
  v121 = v2[12];
  v23 = v2[7];
  v115 = v2[6];
  v116 = v23;
  v24 = v2[9];
  v117 = v2[8];
  v118 = v24;
  v25 = v2[3];
  v114[2] = v2[2];
  v114[3] = v25;
  v26 = v2[5];
  v114[4] = v2[4];
  v114[5] = v26;
  v27 = v2[1];
  v114[0] = *v2;
  v114[1] = v27;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v114, &v108);
  v95 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v114);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v104 = v13;
    v89 = v33;
    v108 = v33;
    *v32 = 136315394;
    v90 = v20;
    v34 = *(&v114[0] + 1);
    v35 = *&v114[0];

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v108);

    *(v32 + 4) = v36;
    v20 = v90;
    *(v32 + 12) = 2080;
    *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001ABA40EA0, &v108);
    _os_log_impl(&dword_1AB828000, v30, v31, "%s:%s", v32, 0x16u);
    v37 = v89;
    swift_arrayDestroy();
    v38 = v37;
    v13 = v104;
    MEMORY[0x1AC5A6CD0](v38, -1, -1);
    MEMORY[0x1AC5A6CD0](v32, -1, -1);
  }

  if (one-time initialization token for decoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v88 = type metadata accessor for StreamingRequest;
  v39 = v107;
  outlined init with take of OneShotRequest(v20, v107, type metadata accessor for StreamingRequest);
  v40 = v114[0];
  v41 = v98;
  v89 = type metadata accessor for StreamingRequest;
  v42 = v94;
  outlined init with copy of OneShotRequest(v39, v94, type metadata accessor for StreamingRequest);
  v43 = *(v41 + 16);
  v44 = v97;
  v90 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v99;
  v43(v97, v105, v99);
  v46 = *(v93 + 80);
  v104 = v13;
  v47 = (v46 + 32) & ~v46;
  v48 = (v14 + *(v41 + 80) + v47) & ~*(v41 + 80);
  v49 = swift_allocObject();
  v93 = v40;
  *(v49 + 16) = v40;
  v96 = *(&v40 + 1);
  outlined init with take of OneShotRequest(v42, v49 + v47, v88);
  v50 = *(v41 + 32);
  v98 = v49;
  v51 = v90;
  v50(v49 + v48, v44, v45);
  outlined init with copy of OneShotRequest(v107, v51, v89);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v53 = v91;
    outlined init with take of OneShotRequest(v51, v91, type metadata accessor for CompletePromptRequest);
    outlined init with copy of InferenceRequestHandler(v114, &v108);
    v54 = v96;

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    outlined destroy of InferenceRequestHandler(v114);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v108 = v58;
      *v57 = 136315394;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v54, &v108);
      *(v57 + 12) = 2080;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001ABA40EA0, &v108);
      _os_log_impl(&dword_1AB828000, v55, v56, "%s:%s:completePrompt", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v58, -1, -1);
      MEMORY[0x1AC5A6CD0](v57, -1, -1);
    }

    v59 = v115;
    v60 = v98;

    v108 = v59(v53, v105);
    v109 = v61;
    v110 = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:);
    v111 = v60;
    v112 = closure #1 in InstrumentedStream.init<>(using:on:);
    v113 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
    v62 = v102;
    AsyncMapSequence.init(_:transform:)();
    v63 = v103;
    v64 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v65 = swift_allocObject();
    (*(v63 + 32))(v65 + v64, v62, v100);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR);
    v67 = v106;
    v106[3] = v66;
    v67[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<Data> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR);

    *v67 = closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
    v67[1] = v65;
    v68 = type metadata accessor for CompletePromptRequest;
LABEL_15:
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v53, v68);
    return _s15TokenGeneration14OneShotRequestOWOhTm_0(v107, type metadata accessor for StreamingRequest);
  }

  v69 = v96;
  if (EnumCaseMultiPayload == 1)
  {
    v53 = v92;
    outlined init with take of OneShotRequest(v51, v92, type metadata accessor for CompletePromptTemplateRequest);
    outlined init with copy of InferenceRequestHandler(v114, &v108);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    outlined destroy of InferenceRequestHandler(v114);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v108 = v73;
      *v72 = 136315394;
      *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v69, &v108);
      *(v72 + 12) = 2080;
      *(v72 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001ABA40EA0, &v108);
      _os_log_impl(&dword_1AB828000, v70, v71, "%s:%s:completePromptTemplate", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v73, -1, -1);
      MEMORY[0x1AC5A6CD0](v72, -1, -1);
    }

    v74 = v116;
    v75 = v98;

    v108 = v74(v53, v105);
    v109 = v76;
    v110 = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:);
    v111 = v75;
    v112 = closure #1 in InstrumentedStream.init<>(using:on:);
    v113 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
    v77 = v102;
    AsyncMapSequence.init(_:transform:)();
    v78 = v103;
    v79 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v80 = swift_allocObject();
    (*(v78 + 32))(v80 + v79, v77, v100);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR);
    v82 = v106;
    v106[3] = v81;
    v82[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<Data> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR);

    *v82 = partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
    v82[1] = v80;
    v68 = type metadata accessor for CompletePromptTemplateRequest;
    goto LABEL_15;
  }

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1AB828000, v84, v85, "Incorrect streaming request handler used when registering document. Please use the one which supports the clientData type.", v86, 2u);
    MEMORY[0x1AC5A6CD0](v86, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1)
{
  v1[6] = a1;
  v2 = type metadata accessor for InferenceError();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for InferenceError.Context();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:), 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error);

  return v6();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (!v0)
  {
    **(v2 + 16) = 0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #3 in InferenceRequestHandler.handleStreamingRequest(data:configuration:), 0, 0);
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v0[2];
  *v3 = v2;
  v3[1] = v4;
  v5 = v0[1];

  return v5();
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.handleStreamingRequest(data:configuration:), 0, 0);
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v0[2];
  *v3 = v2;
  v3[1] = v4;
  v5 = v0[1];

  return v5();
}

uint64_t InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v172 = a2;
  v173 = a3;
  v185 = type metadata accessor for URL();
  v155 = *(v185 - 8);
  v5 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DocumentResource();
  v186 = *(v156 - 8);
  v7 = *(v186 + 64);
  v8 = MEMORY[0x1EEE9AC00](v156);
  v164 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v184 = &v150 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR);
  v160 = *(v11 - 8);
  v158 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v150 - v12;
  v13 = type metadata accessor for CompletePromptTemplateRequest(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v163 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR);
  v168 = *(v16 - 8);
  v169 = v16;
  v166 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v167 = &v150 - v17;
  v18 = type metadata accessor for CompletePromptRequest(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v162 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for InferenceProviderRequestConfiguration();
  v177 = *(v181 - 8);
  v21 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v179 = v22;
  v180 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for XPCDictionary();
  v153 = *(v23 - 1);
  v154 = v23;
  v24 = *(v153 + 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v161 = &v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v150 - v31;
  v33 = type metadata accessor for XPCCodableObject();
  v170 = *(v33 - 8);
  v171 = v33;
  v34 = *(v170 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v165 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v150 - v37;
  v183 = type metadata accessor for StreamingRequest(0);
  v176 = *(v183 - 1);
  v39 = *(v176 + 64);
  v40 = MEMORY[0x1EEE9AC00](v183);
  v178 = (&v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v40);
  v175 = (&v150 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v150 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v174 = &v150 - v46;
  v47 = v3[11];
  v203 = v3[10];
  v204 = v47;
  v205 = v3[12];
  v48 = v3[7];
  v199 = v3[6];
  v200 = v48;
  v49 = v3[9];
  v201 = v3[8];
  v202 = v49;
  v50 = v3[3];
  v198[2] = v3[2];
  v198[3] = v50;
  v51 = v3[5];
  v198[4] = v3[4];
  v198[5] = v51;
  v52 = v3[1];
  v198[0] = *v3;
  v198[1] = v52;
  v182 = a1;
  v53 = ClientData.data.getter();
  if (v54 >> 60 == 15)
  {
    __break(1u);
    while (1)
    {
LABEL_40:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_41:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
    }
  }

  v55 = v53;
  v56 = v54;
  v157 = v11;
  if (one-time initialization token for decoder != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v55, v56);
    ClientData.xpcData.getter();
    v58 = v170;
    v57 = v171;
    v59 = v170 + 48;
    v151 = *(v170 + 48);
    v60 = v151(v32, 1, v171);
    v152 = v59;
    if (v60 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
    }

    else
    {
      (*(v58 + 32))(v38, v32, v57);
      v61 = v57;
      XPCCodableObject.copyUnderlyingXPCObject()();
      v62 = MEMORY[0x1AC5A6DF0]();
      if (v62 == XPC_TYPE_DICTIONARY.getter())
      {
        swift_unknownObjectRetain();
        XPCDictionary.init(_:)();
        StreamingRequest.revive(withXpcData:)(v26);
        swift_unknownObjectRelease();
        (*(v153 + 1))(v26, v154);
        (*(v58 + 8))(v38, v61);
      }

      else
      {
        (*(v58 + 8))(v38, v61);
        swift_unknownObjectRelease();
      }
    }

    v153 = type metadata accessor for StreamingRequest;
    v63 = v174;
    outlined init with take of OneShotRequest(v45, v174, type metadata accessor for StreamingRequest);
    v64 = v198[0];
    v154 = type metadata accessor for StreamingRequest;
    v26 = v175;
    outlined init with copy of OneShotRequest(v63, v175, type metadata accessor for StreamingRequest);
    v65 = v177;
    v67 = v180;
    v66 = v181;
    (*(v177 + 16))(v180, v172, v181);
    v68 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v69 = (v39 + *(v65 + 80) + v68) & ~*(v65 + 80);
    v70 = swift_allocObject();
    v176 = v64;
    *(v70 + 16) = v64;
    v179 = *(&v64 + 1);
    outlined init with take of OneShotRequest(v26, v70 + v68, v153);
    v71 = *(v65 + 32);
    v153 = v70;
    v71(v70 + v69, v67, v66);
    v72 = v178;
    outlined init with copy of OneShotRequest(v174, v178, v154);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v94 = v162;
      outlined init with take of OneShotRequest(v72, v162, type metadata accessor for CompletePromptRequest);
      v95 = one-time initialization token for inference;
      v96 = v179;

      if (v95 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      __swift_project_value_buffer(v97, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v198, &v190);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      outlined destroy of InferenceRequestHandler(v198);
      v100 = os_log_type_enabled(v98, v99);
      v101 = v172;
      if (v100)
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v190 = v103;
        *v102 = 136315394;
        *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v96, &v190);
        *(v102 + 12) = 2080;
        *(v102 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x80000001ABA40F50, &v190);
        _os_log_impl(&dword_1AB828000, v98, v99, "%s:%s:completePrompt", v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5A6CD0](v103, -1, -1);
        MEMORY[0x1AC5A6CD0](v102, -1, -1);
      }

      v104 = v199;
      v105 = v153;

      *&v190 = v104(v94, v101);
      *(&v190 + 1) = v106;
      v191._countAndFlagsBits = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:);
      v191._object = v105;
      v192._countAndFlagsBits = closure #1 in InstrumentedStream.init<>(using:on:);
      v192._object = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
      type metadata accessor for ClientData();
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
      v107 = v167;
      AsyncMapSequence.init(_:transform:)();
      v108 = v168;
      v109 = (*(v168 + 80) + 16) & ~*(v168 + 80);
      v110 = swift_allocObject();
      (*(v108 + 32))(v110 + v109, v107, v169);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);
      v112 = v173;
      v173[3] = v111;
      v112[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<ClientData> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);

      *v112 = closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
      v112[1] = v110;
      v92 = type metadata accessor for CompletePromptRequest;
      v93 = v94;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v74 = v163;
      outlined init with take of OneShotRequest(v72, v163, type metadata accessor for CompletePromptTemplateRequest);
      v75 = one-time initialization token for inference;
      v76 = v179;

      v77 = v172;
      if (v75 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      __swift_project_value_buffer(v78, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v198, &v190);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      outlined destroy of InferenceRequestHandler(v198);
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v190 = v82;
        *v81 = 136315394;
        *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v76, &v190);
        *(v81 + 12) = 2080;
        *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x80000001ABA40F50, &v190);
        _os_log_impl(&dword_1AB828000, v79, v80, "%s:%s:completePromptTemplate", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5A6CD0](v82, -1, -1);
        MEMORY[0x1AC5A6CD0](v81, -1, -1);
      }

      v83 = v200;
      v84 = v153;

      *&v190 = v83(v74, v77);
      *(&v190 + 1) = v85;
      v191._countAndFlagsBits = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:);
      v191._object = v84;
      v192._countAndFlagsBits = closure #1 in InstrumentedStream.init<>(using:on:);
      v192._object = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
      type metadata accessor for ClientData();
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
      v86 = v167;
      AsyncMapSequence.init(_:transform:)();
      v87 = v168;
      v88 = (*(v168 + 80) + 16) & ~*(v168 + 80);
      v89 = swift_allocObject();
      (*(v87 + 32))(v89 + v88, v86, v169);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);
      v91 = v173;
      v173[3] = v90;
      v91[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<ClientData> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);

      *v91 = partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
      v91[1] = v89;
      v92 = type metadata accessor for CompletePromptTemplateRequest;
      v93 = v74;
LABEL_20:
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v93, v92);
      return _s15TokenGeneration14OneShotRequestOWOhTm_0(v174, type metadata accessor for StreamingRequest);
    }

    v113 = v72[1];
    v194 = *v72;
    v195 = v113;
    v114 = v72[3];
    v196 = v72[2];
    v197 = v114;
    v115 = one-time initialization token for inference;
    v116 = v179;

    if (v115 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    __swift_project_value_buffer(v117, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v198, &v190);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    outlined destroy of InferenceRequestHandler(v198);
    v120 = os_log_type_enabled(v118, v119);
    v56 = v187;
    v55 = v152;
    if (v120)
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v190 = v122;
      *v121 = 136315394;
      *(v121 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v116, &v190);
      *(v121 + 12) = 2080;
      *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x80000001ABA40F50, &v190);
      _os_log_impl(&dword_1AB828000, v118, v119, "%s:%s:registerDocument", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v122, -1, -1);
      MEMORY[0x1AC5A6CD0](v121, -1, -1);
    }

    v45 = v164;
    v32 = v161;
    ClientData.xpcData.getter();
    v123 = v171;
    if (v151(v32, 1, v171) == 1)
    {
      goto LABEL_41;
    }

    (*(v170 + 32))(v165, v32, v123);
    v183 = XPCCodableObject.copyUnderlyingXPCObject()();
    v190 = v194;
    v191 = v195;
    v192 = v196;
    v193 = v197;
    v124 = RegisterDocumentRequest.documents.getter();
    v32 = *(v124 + 16);
    if (!v32)
    {
      break;
    }

    v189._documents._rawValue = MEMORY[0x1E69E7CC0];
    v125 = v124;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v126 = v125;
    v39 = 0;
    v180 = ((*(v186 + 80) + 32) & ~*(v186 + 80));
    v181 = v32;
    v179 = &v180[v125];
    rawValue = v189._documents._rawValue;
    v38 = v156;
    v177 = v155 + 8;
    v178 = (v186 + 16);
    v175 = (v186 + 32);
    v176 = v186 + 8;
    v182 = v126;
    while (v39 < *(v126 + 16))
    {
      v26 = *(v186 + 72);
      (*(v186 + 16))(v45, &v179[v26 * v39], v38);
      DocumentResource.url.getter();
      URL.path(percentEncoded:)(1);
      (*v177)(v56, v185);
      v128 = String.utf8CString.getter();

      v129 = xpc_dictionary_get_value(v183, (v128 + 32));

      if (!v129)
      {
        goto LABEL_40;
      }

      xpc_fd_dup(v129);
      DocumentResource.url.getter();
      DocumentResource.metadata.getter();
      v130 = v184;
      DocumentResource.init(_:_:_:)();
      swift_unknownObjectRelease();
      (*v176)(v45, v38);
      v131 = rawValue;
      v189._documents._rawValue = rawValue;
      v133 = rawValue[2];
      v132 = rawValue[3];
      v55 = v133 + 1;
      if (v133 >= v132 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v132 > 1, v133 + 1, 1);
        v38 = v156;
        v131 = v189._documents._rawValue;
      }

      ++v39;
      *(v131 + 2) = v55;
      rawValue = v131;
      (*v175)(&v180[v131 + v133 * v26], v130, v38);
      v32 = v181;
      v126 = v182;
      v56 = v187;
      if (v181 == v39)
      {

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  rawValue = MEMORY[0x1E69E7CC0];
LABEL_35:
  v134 = *(&v194 + 1);
  v135 = v195;
  v136 = v196;
  v137 = v197;

  outlined destroy of RegisterDocumentRequest(&v194);
  v188._documents._rawValue = v134;
  v188._metadata.invocationIdentifier = v135;
  v188._metadata.functionIdentifier = v136;
  v188._metadata.clientRequestIdentifier = v137;
  RegisterDocumentRequest.init(documents:metadata:)(&v189, rawValue, &v188);
  v138 = v201;
  v188 = v189;
  v139 = v153;

  v140 = v138(&v188, v172);
  v142 = v141;
  outlined destroy of RegisterDocumentRequest(&v189);
  v188._documents._rawValue = v140;
  v188._metadata.invocationIdentifier._countAndFlagsBits = v142;
  v188._metadata.invocationIdentifier._object = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:);
  v188._metadata.functionIdentifier._countAndFlagsBits = v139;
  *&v188._metadata.functionIdentifier._object = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMR);
  type metadata accessor for ClientData();
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<DocumentRegistration>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMR);
  v143 = v159;
  AsyncMapSequence.init(_:transform:)();
  v144 = v160;
  v145 = (*(v160 + 80) + 16) & ~*(v160 + 80);
  v146 = swift_allocObject();
  (*(v144 + 32))(v146 + v145, v143, v157);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);
  v148 = v173;
  v173[3] = v147;
  v148[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<ClientData> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);

  swift_unknownObjectRelease();
  *v148 = partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
  v148[1] = v146;
  (*(v170 + 8))(v165, v171);
  return _s15TokenGeneration14OneShotRequestOWOhTm_0(v174, type metadata accessor for StreamingRequest);
}

uint64_t closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1)
{
  v1[6] = a1;
  v2 = type metadata accessor for InferenceError();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for InferenceError.Context();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  MEMORY[0x1AC5A6AE0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1AC5A6AE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1AB828000, v3, v4, "Failed to decode request data! %@", v6, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[6];

  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  Error.localizedDescription.getter();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v10 + 16))(v11, v9, v12);
  (*(v14 + 104))(v11, *MEMORY[0x1E69B2628], v13);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  (*(v14 + 16))(v19, v11, v13);
  swift_willThrow();
  (*(v14 + 8))(v11, v13);
  (*(v10 + 8))(v9, v12);

  v20 = v0[1];

  return v20();
}

uint64_t closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for InferenceProviderRequestConfiguration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InferenceRequest(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OneShotRequest(a3, v16, type metadata accessor for StreamingRequest);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 16))(v12, a4, v8);
  v17 = type metadata accessor for InferenceRequestInstrumentation(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  return InferenceRequestInstrumentation.init(inferenceRequestHandlerIdentifier:inferenceRequest:configuration:)(a1, a2, v16, v12);
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #3 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v0[2];
  MEMORY[0x1AC5A3B40](v2);
  v4 = v0[1];

  return v4();
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v0[2];
  MEMORY[0x1AC5A3B40](v2);
  v4 = v0[1];

  return v4();
}

uint64_t closure #6 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for DocumentRegistration.InternalStatus() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for DocumentRegistration();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for RegisterDocumentResponseElement(0);
  v2[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #6 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #6 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = *(v5 + 16);
  v7(v3, v0[3], v4);
  v7(v2, v3, v4);
  DocumentRegistration.internalStatus.getter();
  DocumentRegistrationStatusEnvelope.init(sealing:)(v6, v1);
  v8 = v1 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
  DocumentRegistration.url.getter();
  v9 = *(v5 + 8);
  v9(v2, v4);
  v9(v3, v4);
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v10 = v0[10];
  v11 = v0[11];
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type RegisterDocumentResponseElement and conformance RegisterDocumentResponseElement, type metadata accessor for RegisterDocumentResponseElement);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v16 = v0[4];
  v15 = v0[5];
  v17 = v0[2];
  v18 = type metadata accessor for XPCCodableObject();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  ClientData.init(data:xpcData:)();
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v12, type metadata accessor for RegisterDocumentResponseElement);

  v19 = v0[1];

  return v19();
}

void *InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v25 = swift_allocObject();
  v25[2] = a21;
  v25[3] = a22;
  v25[4] = a23;
  v25[5] = a24;
  v25[6] = a13;
  v25[7] = a14;
  *(a9 + 96) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 104) = v25;
  v26 = swift_allocObject();
  v26[2] = a21;
  v26[3] = a22;
  v26[4] = a23;
  v26[5] = a24;
  v26[6] = a15;
  v26[7] = a16;
  *(a9 + 112) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 120) = v26;
  result = swift_allocObject();
  result[2] = a21;
  result[3] = a22;
  result[4] = a23;
  result[5] = a24;
  result[6] = a17;
  result[7] = a18;
  *(a9 + 128) = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 136) = result;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 144) = a19;
  *(a9 + 152) = a20;
  *(a9 + 160) = &async function pointer to closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 168) = 0;
  *(a9 + 176) = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 184) = 0;
  *(a9 + 192) = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 200) = 0;
  return result;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #5 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:), 0, 0);
}

uint64_t closure #6 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #7 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

void *InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v23 = swift_allocObject();
  v23[2] = a19;
  v23[3] = a20;
  v23[4] = a21;
  v23[5] = a22;
  v23[6] = a13;
  v23[7] = a14;
  *(a9 + 96) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 104) = v23;
  v24 = swift_allocObject();
  v24[2] = a19;
  v24[3] = a20;
  v24[4] = a21;
  v24[5] = a22;
  v24[6] = a15;
  v24[7] = a16;
  *(a9 + 112) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 120) = v24;
  result = swift_allocObject();
  result[2] = a19;
  result[3] = a20;
  result[4] = a21;
  result[5] = a22;
  result[6] = a17;
  result[7] = a18;
  *(a9 + 128) = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 136) = result;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 144) = &async function pointer to closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 152) = 0;
  *(a9 + 160) = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 168) = 0;
  *(a9 + 176) = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 184) = 0;
  *(a9 + 192) = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 200) = 0;
  return result;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

void *InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  a9[10] = a7;
  a9[11] = a8;
  v22 = swift_allocObject();
  v22[2] = a18;
  v22[3] = a19;
  v22[4] = a20;
  v22[5] = a21;
  v22[6] = a10;
  v22[7] = a11;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[13] = v22;
  v23 = swift_allocObject();
  v23[2] = a18;
  v23[3] = a19;
  v23[4] = a20;
  v23[5] = a21;
  v23[6] = a12;
  v23[7] = a13;
  a9[14] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[15] = v23;
  result = swift_allocObject();
  result[2] = a18;
  result[3] = a19;
  result[4] = a20;
  result[5] = a21;
  result[6] = a14;
  result[7] = a15;
  a9[16] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  a9[17] = result;
  a9[6] = a16;
  a9[7] = a17;
  a9[2] = &async function pointer to closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[25] = 0;
  return result;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

uint64_t InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  a9[10] = a7;
  a9[11] = a8;
  v22 = swift_allocObject();
  v22[2] = a16;
  v22[3] = a17;
  v22[4] = a18;
  v22[5] = a19;
  v22[6] = a10;
  v22[7] = a11;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[13] = v22;
  v23 = swift_allocObject();
  v23[2] = a16;
  v23[3] = a17;
  v23[4] = a18;
  v23[5] = a19;
  v23[6] = a12;
  v23[7] = a13;
  a9[14] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[15] = v23;
  v24 = swift_allocObject();
  v24[2] = a16;
  v24[3] = a17;
  v24[4] = a18;
  v24[5] = a19;
  v24[6] = a14;
  v24[7] = a15;
  a9[16] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  a9[17] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[7] = v25;
  a9[2] = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[25] = 0;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for InferenceError.Context();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

uint64_t InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v20 = swift_allocObject();
  v20[2] = a12;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a7;
  v20[7] = a8;
  a9[12] = partial apply for closure #1 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[13] = v20;
  v21 = swift_allocObject();
  v21[2] = a12;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a10;
  v21[7] = a11;
  a9[16] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  a9[17] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[11] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  a9[14] = partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[15] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[7] = v24;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #1 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[11] = v20;
  v21 = swift_allocObject();
  v21[2] = a12;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a7;
  v21[7] = a8;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[13] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  a9[14] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[15] = v22;
  v23 = swift_allocObject();
  v23[2] = a12;
  v23[3] = a13;
  v23[4] = a14;
  v23[5] = a15;
  v23[6] = a10;
  v23[7] = a11;
  a9[16] = partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[17] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[7] = v24;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t (*closure #1 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t *a1@<X8>)
{
  v9 = *(*(a5 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  v14 = type metadata accessor for CompletePromptResponseElement(0);
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v12, v14, a5, a7);
}

uint64_t (*closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

uint64_t closure #1 in closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for InferenceError.Context();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

uint64_t InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[11] = v16;
  v17 = swift_allocObject();
  v17[2] = a10;
  v17[3] = a11;
  v17[4] = a7;
  v17[5] = a8;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[13] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  a9[14] = partial apply for closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[15] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  a9[16] = partial apply for closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[17] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[7] = v20;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[11] = v16;
  v17 = swift_allocObject();
  v17[2] = a10;
  v17[3] = a11;
  v17[4] = a7;
  v17[5] = a8;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[13] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  a9[14] = partial apply for closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[15] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  a9[16] = partial apply for closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[17] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[7] = v20;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for InferenceError();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for InferenceError.Context();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t (*closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5))@<X0>(uint64_t *a1@<X8>)
{
  v23 = a4;
  v24 = a3;
  v8 = type metadata accessor for CompletePromptResponseElement(255);
  v9 = type metadata accessor for AsyncMapSequence();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  v24(a1, a2);
  (*(v14 + 16))(v18, v20, a5);
  AsyncSequence.map<A>(_:)();
  (*(v14 + 8))(v20, a5);
  WitnessTable = swift_getWitnessTable();
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v13, v8, v9, WitnessTable);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Token();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 16))(v1, v0[3], v0[4]);
  CompletePromptResponseElement.init(token:)(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t (*closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

uint64_t closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for InferenceError();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for InferenceError.Context();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t (*closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  type metadata accessor for DocumentRegistration();

  AsyncThrowingStream.init<>(unfolding:)();
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  type metadata accessor for DocumentRegistration();

  AsyncThrowingStream.init<>(unfolding:)();
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
}

uint64_t closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for InferenceError.Context();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for InferenceError.Context();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  _StringGuts.grow(_:)(61);
  MEMORY[0x1AC5A5BC0](v5, v3);
  MEMORY[0x1AC5A5BC0](0xD00000000000003BLL, 0x80000001ABA410F0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v6 = type metadata accessor for InferenceError();
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  v8 = v7;
  (*(v2 + 16))(v7, v1, v4);
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69B25F0], v6);
  swift_willThrow();
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t (*closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))@<X0>(uint64_t *a1@<X8>)
{
  v8 = *(*(a5 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = type metadata accessor for CompletePromptResponseElement(0);
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v11, v13, a5, a6);
}

uint64_t (*closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5))@<X0>(uint64_t *a1@<X8>)
{
  v8 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = type metadata accessor for CompletePromptResponseElement(255);
  v10 = type metadata accessor for AsyncMapSequence();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  a3(a1, a2);
  AsyncSequence.map<A>(_:)();
  WitnessTable = swift_getWitnessTable();
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v13, v9, v10, WitnessTable);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v20 = v0[17];
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v18 = v7;
  v19 = v6;
  v8 = *(v4 + 8);
  v8(v2, v3);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v8(v1, v3);
  v12 = Token.text.getter();
  v14 = v13;
  v0[5] = &type metadata for PromptCompletionEventCandidateTextDelta;
  v0[6] = &protocol witness table for PromptCompletionEventCandidateTextDelta;
  v15 = swift_allocObject();
  v0[2] = v15;
  *(v15 + 16) = v19;
  *(v15 + 24) = v18;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = 0;
  *(v15 + 56) = v12;
  *(v15 + 64) = v14;
  *(v15 + 72) = xmmword_1ABA1D8C0;
  outlined init with copy of PromptCompletionEvent((v0 + 2), (v0 + 7));
  outlined init with copy of PromptCompletionEvent((v0 + 7), (v0 + 12));
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v0 + 12, v20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t (*closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
}

uint64_t closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for InferenceError();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for InferenceError.Context();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  _StringGuts.grow(_:)(56);
  MEMORY[0x1AC5A5BC0](v8, v7);
  MEMORY[0x1AC5A5BC0](0xD000000000000036, 0x80000001ABA410B0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  (*(v6 + 16))(v9, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t (*closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t *a1@<X8>)
{
  v10 = *(*(a6 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[1];
  v19[0] = *v11;
  v19[1] = v14;
  v15 = v11[3];
  v19[2] = v11[2];
  v19[3] = v15;
  v16(v19);
  v17 = type metadata accessor for DocumentRegistration();
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v13, v17, a6, a8);
}

uint64_t closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for InferenceError.Context();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  _StringGuts.grow(_:)(56);
  MEMORY[0x1AC5A5BC0](v5, v3);
  MEMORY[0x1AC5A5BC0](0xD000000000000036, 0x80000001ABA410B0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v6 = type metadata accessor for InferenceError();
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  v8 = v7;
  (*(v2 + 16))(v7, v1, v4);
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69B25F0], v6);
  swift_willThrow();
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(85);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD000000000000038, 0x80000001ABA41070);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(89);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD00000000000003CLL, 0x80000001ABA41030);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(88);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD00000000000003BLL, 0x80000001ABA40FF0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v1 = type metadata accessor for InferenceError();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(88);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD00000000000003BLL, 0x80000001ABA40FB0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, Data>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMR);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, Data> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<DocumentRegistration>>, ClientData>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMR);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<DocumentRegistration>>, ClientData> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, ClientData>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMR);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, ClientData> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<CompletePromptResponseElement, Error>.Iterator and conformance AsyncThrowingStream<A, B>.Iterator, &_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMR);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<CompletePromptResponseElement, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<DocumentRegistration, Error>.Iterator and conformance AsyncThrowingStream<A, B>.Iterator, &_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<DocumentRegistration, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

uint64_t closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

uint64_t InferenceRequestHandler.ResponseStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for TokenGenerationError(0);
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InferenceRequestHandler.ResponseStream.AsyncIterator.next(), 0, 0);
}

uint64_t InferenceRequestHandler.ResponseStream.AsyncIterator.next()()
{
  static Task<>.checkCancellation()();
  v1 = v0[9];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v0[13] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = InferenceRequestHandler.ResponseStream.AsyncIterator.next();

  return MEMORY[0x1EEE6D8C8](v7, v2, v3);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = InferenceRequestHandler.ResponseStream.AsyncIterator.next();
  }

  else
  {
    v3 = InferenceRequestHandler.ResponseStream.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(v1, *(v0 + 112));

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    *(v0 + 40) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = *(v8 + 16);
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v7, v10 ^ 1u, 1, v9);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);
  *(v0 + 48) = v2;
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  MEMORY[0x1AC5A6AE0](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);

    outlined init with take of OneShotRequest(v5, v6, type metadata accessor for TokenGenerationError);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v7);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v6, type metadata accessor for TokenGenerationError);
  }

  else
  {

    swift_willThrow();
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance InferenceRequestHandler.ResponseStream<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return InferenceRequestHandler.ResponseStream.AsyncIterator.next()(a1, a2);
}

uint64_t _s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLV13AsyncIteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = _s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLV13AsyncIteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLV13AsyncIteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance InferenceRequestHandler.ResponseStream<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(a1 + 16);
  InferenceRequestHandler.ResponseStream.makeAsyncIterator()(*v2, a2);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(a1, v5);
}

uint64_t partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)()
{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

uint64_t partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(v2);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(type metadata accessor for StreamingRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for InferenceProviderRequestConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v69 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_37;
      }

      v67 = v4;
      v68 = (v2 + 32) & ~v2;
      v11 = type metadata accessor for XPCDictionary();
      (*(*(v11 - 8) + 8))(v0 + v3, v11);
      v12 = type metadata accessor for CompletePromptRequest(0);
      v13 = (v9 + v12[5]);
      v14 = v13[1];

      v15 = v13[2];

      v16 = v13[3];

      v17 = v12[6];
      type metadata accessor for PromptVariantEnvelope(0);
      v18 = type metadata accessor for OverridableConfigurationStorage();
      (*(*(v18 - 8) + 8))(v9 + v17, v18);
      v19 = v9 + v12[7];
      v20 = *(v19 + 10);

      v21 = *(v19 + 18);

      v22 = v9 + v12[8];
      v23 = type metadata accessor for Constraints(0);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23))
      {
        goto LABEL_32;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 1)
      {
        if (!v24)
        {
          v64 = type metadata accessor for GenerationSchema();
          (*(*(v64 - 8) + 8))(v22, v64);
          goto LABEL_32;
        }

        if (v24 != 1)
        {
LABEL_32:
          v55 = *(v9 + v12[9]);

          if (*(v9 + v12[10] + 8) >= 4uLL)
          {
          }

          v56 = *(v9 + v12[11]);

          v53 = v12[12];
          goto LABEL_35;
        }
      }

      else if (v24 != 2 && v24 != 3 && v24 != 4)
      {
        goto LABEL_32;
      }

      v54 = *(v22 + 1);

      goto LABEL_32;
    }

    v68 = (v2 + 32) & ~v2;
    v25 = type metadata accessor for XPCDictionary();
    (*(*(v25 - 8) + 8))(v0 + v3, v25);
    v26 = type metadata accessor for CompletePromptTemplateRequest(0);
    v27 = (v9 + v26[5]);
    if (v27[1])
    {

      v28 = v27[2];

      v29 = v27[3];
    }

    v66 = v5;
    v67 = v4;
    v30 = v26[6];
    v31 = type metadata accessor for PromptVariantEnvelope(0);
    if (!(*(*(v31 - 8) + 48))(v9 + v30, 1, v31))
    {
      v32 = type metadata accessor for OverridableConfigurationStorage();
      (*(*(v32 - 8) + 8))(v9 + v30, v32);
    }

    v33 = v9 + v26[7];
    v34 = *v33;

    v35 = *(v33 + 2);

    v36 = *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
    v37 = type metadata accessor for Locale();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(&v33[v36], 1, v37))
    {
      (*(v38 + 8))(&v33[v36], v37);
    }

    v39 = v9 + v26[8];
    v40 = *(v39 + 10);

    v41 = *(v39 + 18);

    v42 = *(v9 + v26[9]);

    v5 = v66;
    if (*(v9 + v26[10] + 8) >= 4uLL)
    {
    }

    v43 = *(v9 + v26[11]);

    v44 = v9 + v26[12];
    v45 = type metadata accessor for Constraints(0);
    if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
    {
      v46 = swift_getEnumCaseMultiPayload();
      if (v46 > 1)
      {
        if (v46 != 2 && v46 != 3 && v46 != 4)
        {
          goto LABEL_28;
        }

LABEL_27:
        v52 = *(v44 + 1);

        goto LABEL_28;
      }

      if (!v46)
      {
        v63 = type metadata accessor for GenerationSchema();
        (*(*(v63 - 8) + 8))(v44, v63);
        goto LABEL_28;
      }

      if (v46 == 1)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    v53 = v26[13];
LABEL_35:
    v57 = (v9 + v53);
    v58 = *(v9 + v53 + 8);

    v59 = v57[3];

    v60 = v57[5];

    v51 = v57 + 6;
    v4 = v67;
    v3 = v68;
    goto LABEL_36;
  }

  v47 = *v9;

  v48 = v9[2];

  v49 = v9[4];

  v50 = v9[6];

  v51 = v9 + 7;
LABEL_36:
  v61 = *v51;

LABEL_37:
  v62 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v62, v5);

  return MEMORY[0x1EEE6BDD0](v0, v62 + v69, v2 | v7 | 7);
}

uint64_t partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)()
{
  v1 = *(type metadata accessor for StreamingRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for InferenceProviderRequestConfiguration() - 8);
  return closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(*(v0 + 16), *(v0 + 24), v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(a1, a2, a3, v9, v8);
}

{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, a3, v9, v8);
}

{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, a3, v9, v8);
}

uint64_t (*partial apply for closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2))@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v2 + 24);
  return closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 16));
}

{
  return closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, v2[4], v2[5], v2[2], v2[3]);
}

uint64_t (*partial apply for closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2))()
{
  return closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t (*partial apply for closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2))()
{
  return closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for closure #5 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(a1, a2, a3, v9, v8);
}

{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, a3, v9, v8);
}

uint64_t (*partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2))@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(a1, a2, *(v2 + 48), *(v2 + 56), *(v2 + 16));
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for InferenceRequestHandler(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t storeEnumTagSinglePayload for InferenceRequestHandler(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for InferenceRequestHandler.ResponseStream()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for InferenceRequestHandler.ResponseStream(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for InferenceRequestHandler.ResponseStream(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(v1 + ((*(*(v1[3] - 8) + 80) + 40) & ~*(*(v1[3] - 8) + 80)), v1[3], a1);
}

uint64_t partial apply for closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, v5, v4);
}

{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, v5, v4);
}

{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(a1, v5, v4);
}

uint64_t objectdestroy_35Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t outlined init with copy of OneShotRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse()
{
  result = lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse;
  if (!lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse;
  if (!lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of OneShotRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration14OneShotRequestOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse);
  }

  return result;
}

uint64_t type metadata instantiation function for InferenceRequestHandler.ResponseStream.AsyncIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for InferenceRequestHandler.ResponseStream.AsyncIterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceRequestHandler.ResponseStream.AsyncIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t InferenceRequestInstrumentation.measure(_:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InferenceRequestInstrumentation.measure(_:), 0, 0);
}

{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[13];
  v9 = *v3;
  v5[14] = v2;

  if (v2)
  {
    v7 = InferenceRequestInstrumentation.measure(_:);
  }

  else
  {
    v7 = InferenceRequestInstrumentation.measure(_:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t InferenceRequestInstrumentation.measure(_:)()
{
  v1 = v0[11];
  v0[12] = *(v0[8] + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  v2 = v0[11];
  v3 = v0[6];
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = InferenceRequestInstrumentation.measure(_:);
  v8 = v0[7];
  v7 = v0[8];

  return v10(partial apply for closure #1 in InferenceRequestInstrumentation.measure(_:), v7);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  if (v1)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[3];
  v8 = v0[4];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  v12 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v12 - 8) + 56))(v10, v6, 1, v12);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);

  v13 = v0[1];

  return v13(v7, v8);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);

  v9 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  swift_willThrow();

  v10 = *(v0 + 8);
  v11 = *(v0 + 112);

  return v10();
}

uint64_t InferenceRequestInstrumentation.init(inferenceRequestHandlerIdentifier:inferenceRequest:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v59 = a4;
  v51 = a3;
  v56 = a1;
  v57 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v48 - v9;
  v10 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v53 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for InferenceProviderRequestConfiguration();
  v49 = v13;
  v52 = *(v13 - 8);
  v14 = v52;
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for InferenceRequest(0);
  v18 = *(*(v50 - 1) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount) = 0;
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount) = 0;
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount) = 0;
  v48 = *(v14 + 16);
  v48(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_configuration, a4, v13);
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v62 = 0xD00000000000001BLL;
  v63 = 0x80000001ABA41250;
  v26 = v51;
  countAndFlagsBits = InferenceRequest.eventTypeSuffix()()._countAndFlagsBits;
  MEMORY[0x1AC5A5BC0](countAndFlagsBits);

  v28 = v63;
  v29 = (v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType);
  *v29 = v62;
  v29[1] = v28;
  v30 = v26;
  outlined init with copy of PromptCompletion.Segment(v26, v20, type metadata accessor for InferenceRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = MEMORY[0x1E69AA548];
  if (EnumCaseMultiPayload != 1)
  {
    v32 = MEMORY[0x1E69AA550];
  }

  (*(v22 + 104))(v25, *v32, v21);
  v50 = type metadata accessor for InferenceRequest;
  outlined destroy of PromptCompletion(v20, type metadata accessor for InferenceRequest);
  (*(v22 + 32))(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_requestType, v25, v21);
  v33 = type metadata accessor for EventReporter();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter) = EventReporter.init()();
  v36 = v48;
  v37 = v49;
  v48(v17, v59, v49);
  v38 = type metadata accessor for InferenceRequestTransparency();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = v53;
  static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.from(inferenceRequestHandlerIdentifier:configuration:)(v56, v57, v53);

  (*(v54 + 32))(v41 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_executionEnvironment, v42, v55);
  v36(v41 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_configuration, v17, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15TokenGeneration28InferenceRequestTransparencyC12MutableStateVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15TokenGeneration28InferenceRequestTransparencyC12MutableStateVSo16os_unfair_lock_sVGMR);
  v43 = swift_allocObject();
  *(v43 + 48) = 0;
  v44 = *(v52 + 8);
  v44(v17, v37);
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0u;
  *(v41 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState) = v43;
  *(v5 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) = v41;
  v45 = v58;
  InferenceRequest.prompt()(v58);
  v46 = *(v41 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
  v60 = v45;
  v61 = v41;
  os_unfair_lock_lock((v46 + 48));
  partial apply for closure #1 in InferenceRequestTransparency.record(prompt:)((v46 + 16));
  os_unfair_lock_unlock((v46 + 48));
  v44(v59, v37);
  outlined destroy of PromptCompletion(v30, v50);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v45, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  return v5;
}

Swift::String __swiftcall InferenceRequest.eventTypeSuffix()()
{
  v1 = v0;
  v2 = type metadata accessor for OneShotRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StreamingRequest(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for InferenceRequest(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Segment(v1, v16, type metadata accessor for InferenceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PromptCompletion.Content(v16, v5, type metadata accessor for OneShotRequest);
    v17 = OneShotRequest.eventTypeSuffix()();
    countAndFlagsBits = v17._countAndFlagsBits;
    object = v17._object;
    v20 = type metadata accessor for OneShotRequest;
    v21 = v5;
LABEL_8:
    outlined destroy of PromptCompletion(v21, v20);
    goto LABEL_9;
  }

  outlined init with take of PromptCompletion.Content(v16, v12, type metadata accessor for StreamingRequest);
  outlined init with copy of PromptCompletion.Segment(v12, v10, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      countAndFlagsBits = 0xD000000000000010;
      outlined destroy of PromptCompletion(v10, type metadata accessor for StreamingRequest);
      object = 0x80000001ABA41270;
      v21 = v12;
      v20 = type metadata accessor for StreamingRequest;
      goto LABEL_8;
    }

    object = 0x80000001ABA41290;
    outlined destroy of PromptCompletion(v12, type metadata accessor for StreamingRequest);
    outlined destroy of PromptCompletion(v10, type metadata accessor for StreamingRequest);
    countAndFlagsBits = 0xD000000000000016;
  }

  else
  {
    outlined destroy of PromptCompletion(v12, type metadata accessor for StreamingRequest);
    outlined destroy of PromptCompletion(v10, type metadata accessor for StreamingRequest);
    object = 0xEE0074706D6F7250;
    countAndFlagsBits = 0x6574656C706D6F63;
  }

LABEL_9:
  v23 = countAndFlagsBits;
  v24 = object;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t InferenceRequest.prompt()@<X0>(uint64_t a1@<X8>)
{
  v141 = a1;
  v138 = type metadata accessor for StreamingRequest(0);
  v1 = *(*(v138 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v138);
  v4 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v128 - v5;
  v132 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v7 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v135 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for ClassifyPromptRequest(0);
  v9 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for CompletePromptRequest(0);
  v11 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v137 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v13 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v133 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CountTokensRequest(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v139 = &v128 - v20;
  v21 = type metadata accessor for CompletePromptTemplateRequest(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v128 - v26;
  v27 = type metadata accessor for OneShotRequest(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v128 - v32;
  v34 = type metadata accessor for InferenceRequest(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Segment(v140, v37, type metadata accessor for InferenceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PromptCompletion.Content(v37, v33, type metadata accessor for OneShotRequest);
    outlined init with copy of PromptCompletion.Segment(v33, v31, type metadata accessor for OneShotRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v39 = v129;
          outlined init with take of PromptCompletion.Content(v31, v129, type metadata accessor for CompletePromptTemplateRequest);
          v95 = (v39 + *(v21 + 20));
          v96 = v95[1];
          if (v96)
          {
            v98 = v95[2];
            v97 = v95[3];
            v99 = *v95;
            v100 = type metadata accessor for XPCDictionary();
            v101 = *(v100 - 8);
            v102 = v139;
            (*(v101 + 16))(v139, v39, v100);
            (*(v101 + 56))(v102, 0, 1, v100);
            v103 = v141;
            PromptEnvelope.unseal(_:)(v102, v99, v96, v98, v97, v141);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v102, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
            v104 = 0;
          }

          else
          {
            v104 = 1;
            v103 = v141;
          }

          outlined destroy of PromptCompletion(v33, type metadata accessor for OneShotRequest);
          v127 = type metadata accessor for Prompt();
          (*(*(v127 - 8) + 56))(v103, v104, 1, v127);
          v125 = type metadata accessor for CompletePromptTemplateRequest;
          return outlined destroy of PromptCompletion(v39, v125);
        }

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v39 = v135;
          outlined init with take of PromptCompletion.Content(v31, v135, type metadata accessor for ClassifyPromptTemplateRequest);
          v40 = (v39 + *(v132 + 20));
          v41 = v40[1];
          if (v41)
          {
            v43 = v40[2];
            v42 = v40[3];
            v44 = *v40;
            v45 = type metadata accessor for XPCDictionary();
            v46 = *(v45 - 8);
            v47 = v139;
            (*(v46 + 16))(v139, v39, v45);
            (*(v46 + 56))(v47, 0, 1, v45);
            v48 = v141;
            PromptEnvelope.unseal(_:)(v47, v44, v41, v43, v42, v141);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v47, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
            v49 = 0;
          }

          else
          {
            v49 = 1;
            v48 = v141;
          }

          outlined destroy of PromptCompletion(v33, type metadata accessor for OneShotRequest);
          v126 = type metadata accessor for Prompt();
          (*(*(v126 - 8) + 56))(v48, v49, 1, v126);
          v125 = type metadata accessor for ClassifyPromptTemplateRequest;
          return outlined destroy of PromptCompletion(v39, v125);
        }

        goto LABEL_23;
      }

      v61 = v134;
      outlined init with take of PromptCompletion.Content(v31, v134, type metadata accessor for ClassifyPromptRequest);
      v108 = (v61 + *(v131 + 20));
      v109 = *v108;
      v110 = v108[1];
      v111 = v108[2];
      v112 = v108[3];
      v113 = type metadata accessor for XPCDictionary();
      v114 = *(v113 - 8);
      v115 = v139;
      (*(v114 + 16))(v139, v61, v113);
      (*(v114 + 56))(v115, 0, 1, v113);
      v70 = v141;
      PromptEnvelope.unseal(_:)(v115, v109, v110, v111, v112, v141);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v115, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
      outlined destroy of PromptCompletion(v33, type metadata accessor for OneShotRequest);
      v71 = type metadata accessor for ClassifyPromptRequest;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
LABEL_23:
        outlined destroy of PromptCompletion(v33, type metadata accessor for OneShotRequest);
        outlined destroy of PromptCompletion(v31, type metadata accessor for OneShotRequest);
        v82 = type metadata accessor for Prompt();
        v83 = *(*(v82 - 8) + 56);
        v84 = v141;
        goto LABEL_24;
      }

      v61 = v130;
      outlined init with take of PromptCompletion.Content(v31, v130, type metadata accessor for CountTokensRequest);
      v62 = (v61 + *(v15 + 20));
      v63 = *v62;
      v64 = v62[1];
      v65 = v62[2];
      v66 = v62[3];
      v67 = type metadata accessor for XPCDictionary();
      v68 = *(v67 - 8);
      v69 = v139;
      (*(v68 + 16))(v139, v61, v67);
      (*(v68 + 56))(v69, 0, 1, v67);
      v70 = v141;
      PromptEnvelope.unseal(_:)(v69, v63, v64, v65, v66, v141);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
      outlined destroy of PromptCompletion(v33, type metadata accessor for OneShotRequest);
      v71 = type metadata accessor for CountTokensRequest;
LABEL_30:
      outlined destroy of PromptCompletion(v61, v71);
      v82 = type metadata accessor for Prompt();
      v83 = *(*(v82 - 8) + 56);
      v84 = v70;
      v105 = 0;
      return v83(v84, v105, 1, v82);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v39 = v133;
      outlined init with take of PromptCompletion.Content(v31, v133, type metadata accessor for CountTokensPromptTemplateRequest);
      v85 = (v39 + *(v128 + 20));
      v86 = v85[1];
      if (v86)
      {
        v88 = v85[2];
        v87 = v85[3];
        v89 = *v85;
        v90 = type metadata accessor for XPCDictionary();
        v91 = *(v90 - 8);
        v92 = v139;
        (*(v91 + 16))(v139, v39, v90);
        (*(v91 + 56))(v92, 0, 1, v90);
        v93 = v141;
        PromptEnvelope.unseal(_:)(v92, v89, v86, v88, v87, v141);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v92, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
        v94 = 0;
      }

      else
      {
        v94 = 1;
        v93 = v141;
      }

      outlined destroy of PromptCompletion(v33, type metadata accessor for OneShotRequest);
      v124 = type metadata accessor for Prompt();
      (*(*(v124 - 8) + 56))(v93, v94, 1, v124);
      v125 = type metadata accessor for CountTokensPromptTemplateRequest;
      return outlined destroy of PromptCompletion(v39, v125);
    }

    v61 = v137;
    outlined init with take of PromptCompletion.Content(v31, v137, type metadata accessor for CompletePromptRequest);
    v116 = (v61 + *(v136 + 20));
    v117 = *v116;
    v118 = v116[1];
    v119 = v116[2];
    v120 = v116[3];
    v121 = type metadata accessor for XPCDictionary();
    v122 = *(v121 - 8);
    v123 = v139;
    (*(v122 + 16))(v139, v61, v121);
    (*(v122 + 56))(v123, 0, 1, v121);
    v70 = v141;
    PromptEnvelope.unseal(_:)(v123, v117, v118, v119, v120, v141);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v123, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v81 = type metadata accessor for OneShotRequest;
LABEL_29:
    outlined destroy of PromptCompletion(v33, v81);
    v71 = type metadata accessor for CompletePromptRequest;
    goto LABEL_30;
  }

  outlined init with take of PromptCompletion.Content(v37, v6, type metadata accessor for StreamingRequest);
  outlined init with copy of PromptCompletion.Segment(v6, v4, type metadata accessor for StreamingRequest);
  v50 = swift_getEnumCaseMultiPayload();
  v33 = v6;
  if (!v50)
  {
    v72 = v4;
    v61 = v137;
    outlined init with take of PromptCompletion.Content(v72, v137, type metadata accessor for CompletePromptRequest);
    v73 = (v61 + *(v136 + 20));
    v74 = *v73;
    v75 = v73[1];
    v76 = v73[2];
    v77 = v73[3];
    v78 = type metadata accessor for XPCDictionary();
    v79 = *(v78 - 8);
    v80 = v139;
    (*(v79 + 16))(v139, v61, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    v70 = v141;
    PromptEnvelope.unseal(_:)(v80, v74, v75, v76, v77, v141);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v80, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v81 = type metadata accessor for StreamingRequest;
    goto LABEL_29;
  }

  v51 = v141;
  if (v50 != 1)
  {
    outlined destroy of PromptCompletion(v6, type metadata accessor for StreamingRequest);
    outlined destroy of PromptCompletion(v4, type metadata accessor for StreamingRequest);
    v82 = type metadata accessor for Prompt();
    v83 = *(*(v82 - 8) + 56);
    v84 = v51;
LABEL_24:
    v105 = 1;
    return v83(v84, v105, 1, v82);
  }

  outlined init with take of PromptCompletion.Content(v4, v25, type metadata accessor for CompletePromptTemplateRequest);
  v52 = &v25[*(v21 + 20)];
  v53 = v52[1];
  if (v53)
  {
    v55 = v52[2];
    v54 = v52[3];
    v56 = *v52;
    v57 = type metadata accessor for XPCDictionary();
    v58 = *(v57 - 8);
    v59 = v139;
    (*(v58 + 16))(v139, v25, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    PromptEnvelope.unseal(_:)(v59, v56, v53, v55, v54, v51);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v59, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  outlined destroy of PromptCompletion(v33, type metadata accessor for StreamingRequest);
  v106 = type metadata accessor for Prompt();
  (*(*(v106 - 8) + 56))(v51, v60, 1, v106);
  return outlined destroy of PromptCompletion(v25, type metadata accessor for CompletePromptTemplateRequest);
}

uint64_t InferenceRequestInstrumentation.handleCompletePromptResponse(_:)(_OWORD *a1)
{
  v140 = type metadata accessor for PromptCompletion.Content(0);
  v2 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v4 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v122 - v6;
  v8 = type metadata accessor for PromptCompletion.Segment(0);
  v138 = *(v8 - 8);
  v9 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v139 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v122 - v12;
  v14 = type metadata accessor for PromptCompletion(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v122 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v122 - v23;
  v25 = a1[6];
  v206[7] = a1[7];
  v26 = a1[7];
  v206[8] = a1[8];
  v27 = a1[8];
  v206[9] = a1[9];
  v28 = a1[9];
  v206[10] = a1[10];
  v29 = a1[2];
  v206[3] = a1[3];
  v30 = a1[3];
  v206[4] = a1[4];
  v31 = a1[4];
  v206[5] = a1[5];
  v32 = a1[5];
  v206[6] = a1[6];
  v33 = a1[1];
  v206[0] = *a1;
  v34 = *a1;
  v206[1] = a1[1];
  v206[2] = a1[2];
  v216 = v26;
  v217 = v27;
  v218 = v28;
  v219 = a1[10];
  v212 = v30;
  v213 = v31;
  v214 = v32;
  v215 = v25;
  v209 = v34;
  v210 = v33;
  v211 = v29;
  outlined init with copy of PromptCompletionEnvelope(v206, v208);
  PromptCompletionEnvelope.unseal()(v24);
  v207[7] = v216;
  v207[8] = v217;
  v207[9] = v218;
  v207[10] = v219;
  v207[3] = v212;
  v207[4] = v213;
  v207[5] = v214;
  v207[6] = v215;
  v207[0] = v209;
  v207[1] = v210;
  v207[2] = v211;
  outlined destroy of PromptCompletionEnvelope(v207);
  v35 = *(v24 + 6);
  v122 = v24;
  outlined destroy of PromptCompletion(v24, type metadata accessor for PromptCompletion);
  v36 = a1[6];
  v208[7] = a1[7];
  v37 = a1[7];
  v208[8] = a1[8];
  v38 = a1[8];
  v208[9] = a1[9];
  v39 = a1[9];
  v208[10] = a1[10];
  v40 = a1[2];
  v208[3] = a1[3];
  v41 = a1[3];
  v208[4] = a1[4];
  v42 = a1[4];
  v208[5] = a1[5];
  v43 = a1[5];
  v208[6] = a1[6];
  v44 = a1[1];
  v208[0] = *a1;
  v45 = *a1;
  v208[1] = a1[1];
  v208[2] = a1[2];
  v202 = v37;
  v203 = v38;
  v204 = v39;
  v125 = a1;
  v205 = a1[10];
  v198 = v41;
  v199 = v42;
  v200 = v43;
  v201 = v36;
  v195 = v45;
  v196 = v44;
  *(v126 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount) = v35;
  v197 = v40;
  outlined init with copy of PromptCompletionEnvelope(v208, &v209);
  PromptCompletionEnvelope.unseal()(v21);
  v216 = v202;
  v217 = v203;
  v218 = v204;
  v219 = v205;
  v212 = v198;
  v213 = v199;
  v214 = v200;
  v215 = v201;
  v209 = v195;
  v210 = v196;
  v211 = v197;
  outlined destroy of PromptCompletionEnvelope(&v209);
  v46 = *(v21 + 4);

  result = outlined destroy of PromptCompletion(v21, type metadata accessor for PromptCompletion);
  v48 = 0;
  v49 = 0;
  v128 = *(v46 + 16);
  v129 = v46;
  v127 = v46 + 32;
  while (v48 != v128)
  {
    if (v48 >= *(v129 + 16))
    {
      goto LABEL_29;
    }

    v51 = (v127 + 56 * v48);
    v52 = *v51;
    v53 = *(*v51 + 16);
    if (v53)
    {
      v134 = v49;
      v54 = v51[4];
      v56 = v51[5];
      v55 = v51[6];
      v136 = v51[3];
      v137 = v56;
      v135 = v55;
      v57 = v51[1];
      v58 = v52 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v130 = v51[2];

      v131 = v57;

      v132 = v54;
      outlined copy of FinishReason(v136, v54);
      outlined copy of Data._Representation(v137, v135);
      v133 = v52;

      v59 = 0;
      v60 = *(v138 + 72);
      while (1)
      {
        outlined init with copy of PromptCompletion.Segment(v58, v13, type metadata accessor for PromptCompletion.Segment);
        outlined init with take of PromptCompletion.Content(v13, v7, type metadata accessor for PromptCompletion.Content);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        result = outlined destroy of PromptCompletion(v7, type metadata accessor for PromptCompletion.Content);
        if (EnumCaseMultiPayload == 1)
        {
          v50 = __OFADD__(v59++, 1);
          if (v50)
          {
            break;
          }
        }

        v58 += v60;
        if (!--v53)
        {

          outlined consume of FinishReason(v136, v132);
          outlined consume of Data._Representation(v137, v135);

          v49 = v134;
          goto LABEL_3;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    v59 = 0;
LABEL_3:
    ++v48;
    v50 = __OFADD__(v49, v59);
    v49 += v59;
    if (v50)
    {
      goto LABEL_30;
    }
  }

  v62 = v125[8];
  v63 = v125[6];
  v191 = v125[7];
  v192 = v62;
  v64 = v125[8];
  v193 = v125[9];
  v65 = v125[9];
  v194 = v125[10];
  v66 = v125[4];
  v68 = v125[2];
  v187 = v125[3];
  v67 = v187;
  v188 = v66;
  v69 = v125[4];
  v70 = v125[6];
  v189 = v125[5];
  v190 = v70;
  v71 = *v125;
  v72 = v125[2];
  v185 = v125[1];
  v186 = v72;
  v73 = *v125;
  v181 = v64;
  v182 = v65;
  v183 = v125[10];
  v184 = v73;
  v177 = v69;
  v178 = v189;
  v179 = v63;
  v180 = v191;
  v173 = v71;
  v174 = v185;
  *(v126 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount) = v49;
  v175 = v68;
  v176 = v67;
  outlined init with copy of PromptCompletionEnvelope(&v184, &v195);
  v74 = v124;
  PromptCompletionEnvelope.unseal()(v124);
  v202 = v180;
  v203 = v181;
  v204 = v182;
  v205 = v183;
  v198 = v176;
  v199 = v177;
  v200 = v178;
  v201 = v179;
  v195 = v173;
  v196 = v174;
  v197 = v175;
  outlined destroy of PromptCompletionEnvelope(&v195);
  v75 = *(v74 + 32);

  result = outlined destroy of PromptCompletion(v74, type metadata accessor for PromptCompletion);
  v76 = 0;
  v77 = 0;
  v129 = *(v75 + 16);
  v130 = v75;
  v128 = v75 + 32;
  while (1)
  {
    if (v76 == v129)
    {

      v89 = v125;
      v90 = v125[7];
      v91 = v125[9];
      v159 = v125[8];
      v160 = v91;
      v92 = v125[9];
      v161 = v125[10];
      v93 = v125[3];
      v94 = v125[5];
      v155 = v125[4];
      v156 = v94;
      v95 = v125[5];
      v96 = v125[7];
      v157 = v125[6];
      v158 = v96;
      v97 = v125[1];
      v152[0] = *v125;
      v152[1] = v97;
      v98 = v125[3];
      v100 = *v125;
      v99 = v125[1];
      v153 = v125[2];
      v101 = v153;
      v154 = v98;
      v181 = v159;
      v182 = v92;
      v183 = v125[10];
      v177 = v155;
      v178 = v95;
      v179 = v157;
      v180 = v90;
      v173 = v100;
      v174 = v99;
      v102 = v126;
      *(v126 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount) = v77;
      v175 = v101;
      v176 = v93;
      outlined init with copy of PromptCompletionEnvelope(v152, v163);
      v103 = v122;
      PromptCompletionEnvelope.unseal()(v122);
      v162[8] = v181;
      v162[9] = v182;
      v162[10] = v183;
      v162[4] = v177;
      v162[5] = v178;
      v162[6] = v179;
      v162[7] = v180;
      v162[0] = v173;
      v162[1] = v174;
      v162[2] = v175;
      v162[3] = v176;
      outlined destroy of PromptCompletionEnvelope(v162);
      v104 = *v103;
      v105 = v103[1];
      v106 = v103[2];

      outlined destroy of PromptCompletion(v103, type metadata accessor for PromptCompletion);
      *&v173 = v104;
      *(&v173 + 1) = v105;
      *&v174 = v106;
      InferenceRequestInstrumentation.reportModelInformation(_:)(&v173);

      v107 = v89[7];
      v108 = v89[9];
      v170 = v89[8];
      v171 = v108;
      v109 = v89[9];
      v172 = v89[10];
      v110 = v89[3];
      v111 = v89[5];
      v166 = v89[4];
      v167 = v111;
      v112 = v89[5];
      v113 = v89[7];
      v168 = v89[6];
      v169 = v113;
      v114 = v89[1];
      v163[0] = *v89;
      v163[1] = v114;
      v115 = v89[3];
      v117 = *v89;
      v116 = v89[1];
      v164 = v89[2];
      v165 = v115;
      v149 = v170;
      v150 = v109;
      v151 = v89[10];
      v145 = v166;
      v146 = v112;
      v147 = v168;
      v148 = v107;
      v141 = v117;
      v142 = v116;
      v118 = *(v102 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency);
      v143 = v164;
      v144 = v110;
      outlined init with copy of PromptCompletionEnvelope(v163, &v173);
      v119 = v123;
      PromptCompletionEnvelope.unseal()(v123);
      v181 = v149;
      v182 = v150;
      v183 = v151;
      v177 = v145;
      v178 = v146;
      v179 = v147;
      v180 = v148;
      v173 = v141;
      v174 = v142;
      v175 = v143;
      v176 = v144;
      v120 = outlined destroy of PromptCompletionEnvelope(&v173);
      v121 = *(v118 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
      MEMORY[0x1EEE9AC00](v120);
      *(&v122 - 2) = v119;
      *(&v122 - 1) = v118;
      os_unfair_lock_lock((v121 + 48));
      partial apply for closure #1 in InferenceRequestTransparency.record(completion:)((v121 + 16));
      os_unfair_lock_unlock((v121 + 48));
      return outlined destroy of PromptCompletion(v119, type metadata accessor for PromptCompletion);
    }

    if (v76 >= *(v130 + 16))
    {
      goto LABEL_31;
    }

    v78 = (v128 + 56 * v76);
    v79 = *v78;
    v80 = *(*v78 + 16);
    if (v80)
    {
      break;
    }

    v86 = 0;
LABEL_16:
    ++v76;
    v50 = __OFADD__(v77, v86);
    v77 += v86;
    if (v50)
    {
      goto LABEL_32;
    }
  }

  v134 = v77;
  v82 = v78[3];
  v81 = v78[4];
  v83 = v78[6];
  v137 = v78[5];
  v84 = v78[1];
  v85 = v79 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
  v131 = v78[2];

  v132 = v84;

  v136 = v82;
  v133 = v81;
  outlined copy of FinishReason(v82, v81);
  v135 = v83;
  outlined copy of Data._Representation(v137, v83);

  v86 = 0;
  v87 = *(v138 + 72);
  while (1)
  {
    v88 = v139;
    outlined init with copy of PromptCompletion.Segment(v85, v139, type metadata accessor for PromptCompletion.Segment);
    outlined init with take of PromptCompletion.Content(v88, v4, type metadata accessor for PromptCompletion.Content);
    LODWORD(v88) = swift_getEnumCaseMultiPayload();
    result = outlined destroy of PromptCompletion(v4, type metadata accessor for PromptCompletion.Content);
    if (v88 == 3)
    {
      v50 = __OFADD__(v86++, 1);
      if (v50)
      {
        break;
      }
    }

    v85 += v87;
    if (!--v80)
    {

      outlined consume of FinishReason(v136, v133);
      outlined consume of Data._Representation(v137, v135);

      v77 = v134;
      goto LABEL_16;
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}