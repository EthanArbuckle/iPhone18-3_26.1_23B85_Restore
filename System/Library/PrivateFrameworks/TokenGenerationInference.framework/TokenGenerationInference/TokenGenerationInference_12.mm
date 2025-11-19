uint64_t OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v16 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:)();
  static String.Encoding.utf8.getter();
  String.init(contentsOf:encoding:)();
  if (!v1)
  {
    v15[1] = a1;
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    v12 = v11;

    (*(v16 + 8))(v6, v3);
    if (v12 >> 60 == 15)
    {
      lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }

    else
    {
      ModelConfiguration.init(modelConfigurationData:)();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t OnDeviceInferenceAssetRepository.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t OnDeviceInferenceAssetRepository.__deallocating_deinit()
{
  OnDeviceInferenceAssetRepository.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x223D8F400](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x223D8F400](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v30 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v31 = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(a1, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  v11 = *a5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = v19[7] + 40 * v13;
      __swift_destroy_boxed_opaque_existential_1(v20);
      return outlined init with take of RandomNumberGenerator(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v24);
  v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, v26, v19);

  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v18 = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(a4, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  result = outlined init with take of RandomNumberGenerator(&v16, a5[7] + 40 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NDArray.Buffer();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return outlined copy of MetadataSpecialToken(v3, v4, v5);
}

uint64_t specialized static OnDeviceInferenceAssetObjectBaseModel.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Asset();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSg_ADtMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v26 = v7;
    v15 = *(type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0) + 20);
    v16 = *(v11 + 48);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v15, v13, &_s24TokenGenerationInference5AssetVSgMd);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v15, &v13[v16], &_s24TokenGenerationInference5AssetVSgMd);
    v17 = *(v5 + 48);
    if (v17(v13, 1, v4) == 1)
    {
      if (v17(&v13[v16], 1, v4) == 1)
      {
        outlined destroy of [Int](v13, &_s24TokenGenerationInference5AssetVSgMd);
        v14 = 1;
        return v14 & 1;
      }

LABEL_9:
      outlined destroy of [Int](v13, &_s24TokenGenerationInference5AssetVSg_ADtMd);
      v14 = 0;
      return v14 & 1;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v13, v10, &_s24TokenGenerationInference5AssetVSgMd);
    if (v17(&v13[v16], 1, v4) == 1)
    {
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v10, type metadata accessor for Asset);
      goto LABEL_9;
    }

    v18 = v26;
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(&v13[v16], v26, type metadata accessor for Asset);
    if (static URL.== infix(_:_:)())
    {
      v19 = *(v4 + 20);
      v20 = *&v10[v19];
      v21 = *&v10[v19 + 8];
      v22 = (v18 + v19);
      if (v20 == *v22 && v21 == v22[1])
      {
        v14 = 1;
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v14 = 0;
    }

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v18, type metadata accessor for Asset);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v10, type metadata accessor for Asset);
    outlined destroy of [Int](v13, &_s24TokenGenerationInference5AssetVSgMd);
  }

  return v14 & 1;
}

uint64_t specialized static OnDeviceInferenceAssetObjectTokenizer.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Asset();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSg_ADtMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  type metadata accessor for TokenizerRunner();
  v14 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  if ((static TokenizerRunner.== infix(_:_:)() & 1) == 0 || *(a1 + v14[7]) != *(a2 + v14[7]))
  {
    goto LABEL_25;
  }

  v15 = v14[5];
  v16 = *(v11 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v15, v13, &_s24TokenGenerationInference5AssetVSgMd);
  v39 = v16;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v15, &v13[v16], &_s24TokenGenerationInference5AssetVSgMd);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v13, v10, &_s24TokenGenerationInference5AssetVSgMd);
    v18 = v39;
    if (v17(&v13[v39], 1, v4) != 1)
    {
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(&v13[v18], v7, type metadata accessor for Asset);
      if (static URL.== infix(_:_:)())
      {
        v20 = *(v4 + 20);
        v21 = *&v10[v20];
        v22 = *&v10[v20 + 8];
        v23 = &v7[v20];
        v24 = v21 == *v23 && v22 == *(v23 + 1);
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v7, type metadata accessor for Asset);
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v10, type metadata accessor for Asset);
          goto LABEL_19;
        }
      }

      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v7, type metadata accessor for Asset);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v10, type metadata accessor for Asset);
      v19 = &_s24TokenGenerationInference5AssetVSgMd;
LABEL_24:
      outlined destroy of [Int](v13, v19);
      goto LABEL_25;
    }

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v10, type metadata accessor for Asset);
LABEL_11:
    v19 = &_s24TokenGenerationInference5AssetVSg_ADtMd;
    goto LABEL_24;
  }

  if (v17(&v13[v39], 1, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_19:
  outlined destroy of [Int](v13, &_s24TokenGenerationInference5AssetVSgMd);
  v25 = v14[8];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_25;
    }

    v28 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v26, v27);

    if ((v28 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v27)
  {
    goto LABEL_25;
  }

  v31 = v14[9];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (!v32)
  {
    if (!v33)
    {
      goto LABEL_33;
    }

LABEL_25:
    v29 = 0;
    return v29 & 1;
  }

  if (!v33)
  {
    goto LABEL_25;
  }

  v34 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v32, v33);

  if ((v34 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_33:
  v35 = v14[10];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  v29 = (v36 | v37) == 0;
  if (v36 && v37)
  {
    v29 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v36, v37);
  }

  return v29 & 1;
}

BOOL specialized static OnDeviceE5ImageTokenizerConfiguration.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1])
  {
    return a1[3].i64[0] == a2[3].i64[0];
  }

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

uint64_t getEnumTagSinglePayload for OnDeviceE5ImageTokenizerConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OnDeviceE5ImageTokenizerConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

void type metadata completion function for OnDeviceInferenceSuspendedFetch()
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<(), Never>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Never>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Never>)
  {
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(), Never>);
    }
  }
}

uint64_t specialized static OnDeviceInferenceAssetObjectE5Runner.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v104 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v99 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSg_ADtMd);
  MEMORY[0x28223BE20](v106);
  v107 = &v99 - v9;
  v10 = type metadata accessor for Asset();
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v108 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v109 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v99 - v17;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSg_ADtMd);
  v18 = MEMORY[0x28223BE20](v116);
  v111 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v113 = &v99 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v99 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v28);
  v30 = &v99 - v29;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v31 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  if (*(a1 + v31[7]) != *(a2 + v31[7]) || *(a1 + v31[8]) != *(a2 + v31[8]))
  {
    goto LABEL_9;
  }

  v101 = v5;
  v102 = v4;
  v34 = v31[10];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_9;
    }

    v103 = v31;

    v37 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_24TokenGenerationInference015MetadataSpecialB0OTt1g5(v35, v36);

    v31 = v103;
    if ((v37 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v36)
  {
    goto LABEL_9;
  }

  if (*(a1 + v31[11]) != *(a2 + v31[11]))
  {
    goto LABEL_9;
  }

  v38 = v31[12];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39)
  {
    if (!v40)
    {
      goto LABEL_9;
    }

    v103 = v31;

    v41 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SDySS24TokenGenerationInference015MetadataSpecialB0OGTt1g5(v39, v40);

    v31 = v103;
    if ((v41 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v40)
  {
    goto LABEL_9;
  }

  v103 = v31;
  v42 = v31[13];
  v43 = *(v28 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v42, v30, &_s10Foundation4UUIDVSgMd);
  v100 = v43;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v42, &v30[v43], &_s10Foundation4UUIDVSgMd);
  v44 = v22;
  v45 = *(v22 + 48);
  if (v45(v30, 1, v21) == 1)
  {
    if (v45(&v30[v100], 1, v21) == 1)
    {
      outlined destroy of [Int](v30, &_s10Foundation4UUIDVSgMd);
      goto LABEL_29;
    }

LABEL_27:
    v47 = &_s10Foundation4UUIDVSg_ADtMd;
    v48 = v30;
LABEL_48:
    outlined destroy of [Int](v48, v47);
    goto LABEL_9;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v30, v27, &_s10Foundation4UUIDVSgMd);
  v46 = v100;
  if (v45(&v30[v100], 1, v21) == 1)
  {
    (*(v44 + 8))(v27, v21);
    goto LABEL_27;
  }

  (*(v44 + 32))(v24, &v30[v46], v21);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v44 + 8);
  v50(v24, v21);
  v50(v27, v21);
  outlined destroy of [Int](v30, &_s10Foundation4UUIDVSgMd);
  if ((v49 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  v51 = v103[6];
  v52 = *(v116 + 48);
  v53 = v113;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v51, v113, &_s24TokenGenerationInference5AssetVSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v51, v53 + v52, &_s24TokenGenerationInference5AssetVSgMd);
  v54 = v115;
  v55 = *(v114 + 48);
  if (v55(v53, 1, v115) != 1)
  {
    v56 = v112;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v53, v112, &_s24TokenGenerationInference5AssetVSgMd);
    if (v55(v53 + v52, 1, v54) != 1)
    {
      v57 = v53 + v52;
      v58 = v110;
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v57, v110, type metadata accessor for Asset);
      if (static URL.== infix(_:_:)())
      {
        if (v59 = *(v54 + 20), v60 = *(v56 + v59), v61 = *(v56 + v59 + 8), v62 = (v58 + v59), v60 == *v62) && v61 == v62[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v58, type metadata accessor for Asset);
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v56, type metadata accessor for Asset);
          goto LABEL_40;
        }
      }

      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v58, type metadata accessor for Asset);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v56, type metadata accessor for Asset);
      v47 = &_s24TokenGenerationInference5AssetVSgMd;
LABEL_47:
      v48 = v53;
      goto LABEL_48;
    }

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v56, type metadata accessor for Asset);
LABEL_34:
    v47 = &_s24TokenGenerationInference5AssetVSg_ADtMd;
    goto LABEL_47;
  }

  if (v55(v53 + v52, 1, v54) != 1)
  {
    goto LABEL_34;
  }

LABEL_40:
  outlined destroy of [Int](v53, &_s24TokenGenerationInference5AssetVSgMd);
  v63 = v103[14];
  v64 = *(v116 + 48);
  v65 = v111;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v63, v111, &_s24TokenGenerationInference5AssetVSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v63, v65 + v64, &_s24TokenGenerationInference5AssetVSgMd);
  if (v55(v65, 1, v54) == 1)
  {
    if (v55(v65 + v64, 1, v54) == 1)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  v66 = v109;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v65, v109, &_s24TokenGenerationInference5AssetVSgMd);
  if (v55(v65 + v64, 1, v54) == 1)
  {
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v66, type metadata accessor for Asset);
LABEL_45:
    v47 = &_s24TokenGenerationInference5AssetVSg_ADtMd;
    v48 = v65;
    goto LABEL_48;
  }

  v67 = v108;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v65 + v64, v108, type metadata accessor for Asset);
  if ((static URL.== infix(_:_:)() & 1) == 0 || ((v68 = *(v54 + 20), v69 = *(v66 + v68), v70 = *(v66 + v68 + 8), v71 = (v67 + v68), v69 != *v71) || v70 != v71[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v67, type metadata accessor for Asset);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v66, type metadata accessor for Asset);
    v47 = &_s24TokenGenerationInference5AssetVSgMd;
    v48 = v65;
    goto LABEL_48;
  }

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v67, type metadata accessor for Asset);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v66, type metadata accessor for Asset);
LABEL_54:
  outlined destroy of [Int](v65, &_s24TokenGenerationInference5AssetVSgMd);
  v72 = v103[16];
  v73 = (a1 + v72);
  v74 = *(a1 + v72 + 8);
  v75 = (a2 + v72);
  v32 = v75[1];
  if (!v74)
  {
    if (v32)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

  if (!v32)
  {
    return v32 & 1;
  }

  v76 = *v73;
  v77 = v73[2];
  v78 = *v75;
  v79 = v75[2];

  v80 = specialized static ClassifierMetadata.== infix(_:_:)(v76, v74, v77, v78, v32, v79);

  if (v80)
  {
LABEL_60:
    v81 = v103[17];
    v82 = (a1 + v81);
    v83 = *(a1 + v81 + 24);
    v84 = (a2 + v81);
    v85 = v84[3];
    if (v83 == 1)
    {
      if (v85 != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v85 == 1)
      {
        goto LABEL_9;
      }

      v90 = v84[1];
      if (v82[1])
      {
        if ((v90 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v90 & 1 | (*v82 != *v84))
      {
        goto LABEL_9;
      }

      if (v83)
      {
        if (!v85 || (v82[2] != v84[2] || v83 != v85) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v85)
      {
        goto LABEL_9;
      }
    }

    v86 = v103[18];
    v87 = v107;
    v88 = *(v106 + 48);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v86, v107, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v86, v87 + v88, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    v89 = *(v101 + 48);
    if (v89(v87, 1, v102) == 1)
    {
      if (v89(v107 + v88, 1, v102) == 1)
      {
        outlined destroy of [Int](v107, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
        LOBYTE(v32) = 1;
        return v32 & 1;
      }
    }

    else
    {
      v91 = v107;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v107, v105, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
      if (v89(v91 + v88, 1, v102) != 1)
      {
        v92 = v101;
        v93 = v107;
        v94 = v107 + v88;
        v95 = v104;
        v96 = v102;
        (*(v101 + 32))(v104, v94, v102);
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, 255, MEMORY[0x277D71ED8]);
        v97 = v105;
        LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
        v98 = *(v92 + 8);
        v98(v95, v96);
        v98(v97, v96);
        outlined destroy of [Int](v93, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
        return v32 & 1;
      }

      (*(v101 + 8))(v105, v102);
    }

    v47 = &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSg_ADtMd;
    v48 = v107;
    goto LABEL_48;
  }

LABEL_9:
  LOBYTE(v32) = 0;
  return v32 & 1;
}

uint64_t lazy protocol witness table accessor for type InferenceError and conformance InferenceError(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v58 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v45 = v10;
  v46 = v6;
  while (v9)
  {
    v50 = a4;
    v16 = v11;
LABEL_14:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(a1 + 56) + 24 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v56[0] = *v19;
    v56[1] = v20;
    v56[2] = v22;
    v56[3] = v23;
    v57 = v24;

    outlined copy of MetadataSpecialToken(v22, v23, v24);
    a2(&v51, v56);

    outlined consume of MetadataSpecialToken(v22, v23, v24);
    v25 = v51;
    v26 = v52;
    v28 = v53;
    v27 = v54;
    v49 = v55;
    v29 = *v58;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_25;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if ((v50 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v50 & 1);
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v31 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v58;
    if (v35)
    {

      v12 = v38[7] + 24 * v31;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      *v12 = v28;
      *(v12 + 8) = v27;
      *(v12 + 16) = v49;
      outlined consume of MetadataSpecialToken(v13, v14, v15);
    }

    else
    {
      v38[(v31 >> 6) + 8] |= 1 << v31;
      v39 = (v38[6] + 16 * v31);
      *v39 = v25;
      v39[1] = v26;
      v40 = v38[7] + 24 * v31;
      *v40 = v28;
      *(v40 + 8) = v27;
      *(v40 + 16) = v49;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v16;
    v10 = v45;
    v6 = v46;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized OnDeviceInferenceAssetRepository.specialTokensMap(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1, &v12 - v5, &_s24TokenGenerationInference13ModelMetadataVSgMd);
  v7 = type metadata accessor for ModelMetadata();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of [Int](v6, &_s24TokenGenerationInference13ModelMetadataVSgMd);
    return 0;
  }

  v8 = *(v6 + 4);

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v6, type metadata accessor for ModelMetadata);
  if (!v8)
  {
    return 0;
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 16);
  }

  else
  {
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v8;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v9, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v13);

  return v13;
}

uint64_t outlined copy of StopToken?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of TokenizerMetadata?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined copy of ClassifierMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata completion function for OnDeviceInferenceAssetInUsePlaceHolder()
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_108Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceAssetObjectImageTokenizer()
{
  type metadata accessor for BaseModel(319, &lazy cache variable for type metadata for ImageEncoderRunner);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImageEmbeddingCache();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for BaseModel(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OnDeviceInferenceContext.maximumContextLength.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength);
  if (*(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength + 8) != 1)
  {
    return *v1;
  }

  result = closure #1 in OnDeviceInferenceContext.maximumContextLength.getter(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t closure #1 in OnDeviceInferenceContext.maximumContextLength.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v44 = &v39 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 296);
  v17 = *(v16 + 16);
  v18 = v16 + 32;
  v20 = (v19 + 56);
  v21 = (v19 + 48);

  v45 = v16;
  if (v17)
  {
    v41 = v5;
    v42 = v15;
    v43 = v12;
    v22 = 0;
    v40 = v16 + 32;
    while (1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v18, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v23 = swift_dynamicCast();
      (*v20)(v10, v23 ^ 1u, 1, v13);
      v24 = (*v21)(v10, 1, v13);
      outlined destroy of [Int](v10, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
      if (v24 != 1)
      {
        break;
      }

      ++v22;
      v18 += 40;
      if (v17 == v22)
      {
        goto LABEL_7;
      }
    }

    v17 = v22;
LABEL_7:
    v15 = v42;
    v12 = v43;
    v18 = v40;
    v5 = v41;
    v16 = v45;
  }

  v25 = *(v16 + 16);
  if (v17 == v25)
  {
    (*v20)(v12, 1, 1, v13);

    v26 = (*v21)(v12, 1, v13);
  }

  else
  {
    if (v17 >= v25)
    {
      __break(1u);
LABEL_16:
      outlined destroy of [Int](v12, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
      if (one-time initialization token for device != -1)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Log.device);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_220940000, v36, v37, "No E5RunnerAssetObjects present in the OnDeviceInferenceContext.", v38, 2u);
          MEMORY[0x223D90A10](v38, -1, -1);
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        swift_once();
      }
    }

    outlined init with copy of DeterministicLanguageModelProtocol(v18 + 40 * v17, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v27 = v44;
    v28 = swift_dynamicCast();
    v29 = *v20;
    (*v20)(v27, v28 ^ 1u, 1, v13);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v27, v5, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
    v30 = *v21;
    if ((*v21)(v5, 1, v13) == 1)
    {
      goto LABEL_20;
    }

    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v5, v12);
    outlined destroy of [Int](v27, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
    v29(v12, 0, 1, v13);

    v26 = v30(v12, 1, v13);
  }

  if (v26 == 1)
  {
    goto LABEL_16;
  }

  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v12, v15);
  v31 = *&v15[*(v13 + 28) + 8];
  ObjectType = swift_getObjectType();
  v33 = (*(v31 + 80))(ObjectType, v31);
  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v15, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  return v33;
}

uint64_t OnDeviceInferenceContext.assets.getter()
{
  v1 = OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets;
  if (*(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets);
  }

  else
  {
    v2 = closure #1 in OnDeviceInferenceContext.assets.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in OnDeviceInferenceContext.assets.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v24 = type metadata accessor for ModelInformation.Asset();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 296);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v28;
    v11 = v8 + 32;
    v22[1] = v5 + 32;
    v23 = v5;
    do
    {
      v12 = v7;
      outlined init with copy of DeterministicLanguageModelProtocol(v11, v25);
      v13 = v26;
      v14 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v14 + 8))(v13, v14);
      v15 = v26;
      v16 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v16 + 16))(v15, v16);
      v17 = type metadata accessor for Asset();
      if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
      {
        outlined destroy of [Int](v4, &_s24TokenGenerationInference5AssetVSgMd);
      }

      else
      {

        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v4, type metadata accessor for Asset);
      }

      ModelInformation.Asset.init(identifier:version:metadata:)();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v28 = v10;
      v7 = v12;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = v23;
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v10 = v28;
      }

      *(v10 + 16) = v19 + 1;
      (*(v20 + 32))(v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v19, v7, v24);
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t OnDeviceInferenceContext.modelVersion.getter()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion);
  v3 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion);
  v4 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion + 8);
  v5 = v3;
  if (v4 == 1)
  {
    v5 = closure #1 in OnDeviceInferenceContext.modelVersion.getter(v1);
    v6 = *v2;
    v7 = v2[1];
    *v2 = v5;
    v2[1] = v8;

    outlined consume of String??(v6, v7);
  }

  outlined copy of String??(v3, v4);
  return v5;
}

uint64_t closure #1 in OnDeviceInferenceContext.modelVersion.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v47 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v18);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 296);
  v21 = *(v20 + 16);
  v23 = (v22 + 56);
  v24 = (v22 + 48);

  v55 = v20;
  v51 = v20 + 32;
  if (v21)
  {
    v48 = v10;
    v49 = v17;
    v50 = v6;
    v25 = 0;
    v26 = v20 + 32;
    while (1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v26, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v27 = swift_dynamicCast();
      (*v23)(v15, v27 ^ 1u, 1, v18);
      v28 = (*v24)(v15, 1, v18);
      outlined destroy of [Int](v15, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
      if (v28 != 1)
      {
        break;
      }

      ++v25;
      v26 += 40;
      if (v21 == v25)
      {
        goto LABEL_8;
      }
    }

    v21 = v25;
LABEL_8:
    v29 = v54;
    v20 = v55;
    v17 = v49;
    v6 = v50;
    v10 = v48;
  }

  else
  {
    v29 = v54;
  }

  v30 = *(v20 + 16);
  v31 = v53;
  if (v21 == v30)
  {
    (*v23)(v17, 1, 1, v18);

    v32 = (*v24)(v17, 1, v18);
  }

  else
  {
    if (v21 >= v30)
    {
      __break(1u);
LABEL_23:
      outlined destroy of [Int](v17, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
      if (one-time initialization token for device != -1)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Log.device);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_220940000, v44, v45, "No E5RunnerAssetObjects present in the OnDeviceInferenceContext.", v46, 2u);
          MEMORY[0x223D90A10](v46, -1, -1);
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        swift_once();
      }
    }

    outlined init with copy of DeterministicLanguageModelProtocol(v51 + 40 * v21, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v33 = swift_dynamicCast();
    v34 = *v23;
    (*v23)(v31, v33 ^ 1u, 1, v18);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v31, v10, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
    v35 = *v24;
    if ((*v24)(v10, 1, v18) == 1)
    {
      goto LABEL_27;
    }

    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v10, v17);
    outlined destroy of [Int](v31, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
    v34(v17, 0, 1, v18);

    v32 = v35(v17, 1, v18);
  }

  v36 = v52;
  if (v32 == 1)
  {
    goto LABEL_23;
  }

  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v17, v52);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v36 + *(v18 + 56), v6, &_s24TokenGenerationInference5AssetVSgMd);
  v37 = type metadata accessor for Asset();
  v38 = *(*(v37 - 8) + 48);
  if (v38(v6, 1, v37) != 1)
  {
    v39 = *&v6[*(v37 + 20)];

    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v6, type metadata accessor for Asset);
    v40 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner;
    v41 = v36;
LABEL_20:
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v41, v40);
    return v39;
  }

  outlined destroy of [Int](v6, &_s24TokenGenerationInference5AssetVSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v36 + *(v18 + 24), v29, &_s24TokenGenerationInference5AssetVSgMd);
  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v36, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  if (v38(v29, 1, v37) != 1)
  {
    v39 = *(v29 + *(v37 + 20));

    v40 = type metadata accessor for Asset;
    v41 = v29;
    goto LABEL_20;
  }

  outlined destroy of [Int](v29, &_s24TokenGenerationInference5AssetVSgMd);
  return 0;
}

uint64_t *OnDeviceInferenceContext.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  outlined destroy of [Int]((v0 + 7), &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  outlined consume of ClassifierMetadata?(v0[41], v0[42]);
  outlined consume of StopToken?(v0[44], v0[45], v0[46], v0[47]);

  v1 = OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion;
  v2 = type metadata accessor for PromptPreprocessingTemplateVersion();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of [Int](v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);

  outlined consume of String??(*(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion), *(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion + 8));
  return v0;
}

uint64_t OnDeviceInferenceContext.__deallocating_deinit()
{
  OnDeviceInferenceContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnDeviceInferenceContext()
{
  result = type metadata singleton initialization cache for OnDeviceInferenceContext;
  if (!type metadata singleton initialization cache for OnDeviceInferenceContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceContext()
{
  type metadata accessor for PromptPreprocessingTemplateVersion();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GuidedGenerationVocabularyManager?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for GuidedGenerationVocabularyManager?()
{
  if (!lazy cache variable for type metadata for GuidedGenerationVocabularyManager?)
  {
    type metadata accessor for GuidedGenerationVocabularyManager();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GuidedGenerationVocabularyManager?);
    }
  }
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined init with take of OnDeviceInferenceAssetObjectE5Runner(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a2)
  {
    v12 = *a5;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(a4, v19);
    v18[3] = v12;
    v18[4] = MEMORY[0x277D71E08];
    v18[0] = a5;
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    outlined init with copy of DeterministicLanguageModelProtocol(v19, a6 + 24);
    outlined init with copy of DeterministicLanguageModelProtocol(v18, a6 + 64);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v15 = *(v14 + 8);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v16 = v15(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v18);
    *(a6 + 104) = v16;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
  }
}

uint64_t OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 4304) = v3;
  *(v4 + 321) = a3;
  *(v4 + 4296) = a2;
  *(v4 + 4288) = a1;
  *(v4 + 4312) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  *(v4 + 4320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  *(v4 + 4328) = swift_task_alloc();
  *(v4 + 4336) = swift_task_alloc();
  *(v4 + 4344) = swift_task_alloc();
  *(v4 + 4352) = swift_task_alloc();
  *(v4 + 4360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21SpeculationParametersVSgMd);
  *(v4 + 4368) = swift_task_alloc();
  *(v4 + 4376) = swift_task_alloc();
  v5 = type metadata accessor for SpeculationParameters();
  *(v4 + 4384) = v5;
  *(v4 + 4392) = *(v5 - 8);
  *(v4 + 4400) = swift_task_alloc();
  *(v4 + 4408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd);
  *(v4 + 4416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
  *(v4 + 4424) = swift_task_alloc();
  *(v4 + 4432) = swift_task_alloc();
  v6 = type metadata accessor for Grammar();
  *(v4 + 4440) = v6;
  *(v4 + 4448) = *(v6 - 8);
  *(v4 + 4456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  *(v4 + 4464) = swift_task_alloc();
  *(v4 + 4472) = swift_task_alloc();
  v7 = type metadata accessor for PromptPreprocessingTemplateVersion();
  *(v4 + 4480) = v7;
  *(v4 + 4488) = *(v7 - 8);
  *(v4 + 4496) = swift_task_alloc();
  *(v4 + 4504) = swift_task_alloc();
  *(v4 + 4512) = swift_task_alloc();
  *(v4 + 4520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd);
  *(v4 + 4528) = swift_task_alloc();
  *(v4 + 4536) = swift_task_alloc();
  v8 = type metadata accessor for Constraints();
  *(v4 + 4544) = v8;
  *(v4 + 4552) = *(v8 - 8);
  *(v4 + 4560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
  *(v4 + 4568) = swift_task_alloc();
  *(v4 + 4576) = swift_task_alloc();
  *(v4 + 4584) = swift_task_alloc();
  *(v4 + 4592) = swift_task_alloc();
  v9 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  *(v4 + 4600) = v9;
  *(v4 + 4608) = *(v9 - 8);
  *(v4 + 4616) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  *(v4 + 4624) = swift_task_alloc();
  v10 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  *(v4 + 4632) = v10;
  *(v4 + 4640) = *(v10 - 8);
  *(v4 + 4648) = swift_task_alloc();
  *(v4 + 4656) = swift_task_alloc();
  *(v4 + 4664) = swift_task_alloc();
  *(v4 + 4672) = swift_task_alloc();
  *(v4 + 4680) = swift_task_alloc();
  *(v4 + 4688) = type metadata accessor for InferenceRequest();
  *(v4 + 4696) = swift_task_alloc();
  v11 = type metadata accessor for TokenGenerationError.Context();
  *(v4 + 4704) = v11;
  *(v4 + 4712) = *(v11 - 8);
  *(v4 + 4720) = swift_task_alloc();
  v12 = type metadata accessor for InferenceError();
  *(v4 + 4728) = v12;
  *(v4 + 4736) = *(v12 - 8);
  *(v4 + 4744) = swift_task_alloc();
  *(v4 + 4752) = swift_task_alloc();
  *(v4 + 4760) = swift_task_alloc();
  *(v4 + 4768) = swift_task_alloc();
  *(v4 + 4776) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v4 + 4784) = v13;
  *(v4 + 4792) = *(v13 - 8);
  *(v4 + 4800) = swift_task_alloc();
  *(v4 + 4808) = swift_task_alloc();
  *(v4 + 4816) = swift_task_alloc();
  *(v4 + 4824) = swift_task_alloc();
  *(v4 + 4832) = swift_task_alloc();
  *(v4 + 4840) = swift_task_alloc();
  *(v4 + 4848) = swift_task_alloc();
  *(v4 + 4856) = swift_task_alloc();
  *(v4 + 4864) = swift_task_alloc();
  *(v4 + 4872) = swift_task_alloc();
  *(v4 + 4880) = swift_task_alloc();
  *(v4 + 4888) = swift_task_alloc();
  *(v4 + 4896) = swift_task_alloc();
  *(v4 + 4904) = swift_task_alloc();
  *(v4 + 4912) = swift_task_alloc();
  *(v4 + 4920) = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), 0, 0);
}

uint64_t OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)()
{
  v74 = v0;
  v1 = 4216;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v2 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
  v4 = v3;
  v71 = v2;
  *(v0 + 4928) = v2;
  *(v0 + 4936) = v3;
  if (one-time initialization token for device != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v5 = (v0 + v1);
    v6 = *(v0 + 4920);
    v7 = *(v0 + 4912);
    v8 = *(v0 + 4792);
    v9 = *(v0 + 4784);
    v10 = type metadata accessor for Logger();
    v72 = v0;
    *(v0 + 4944) = __swift_project_value_buffer(v10, static Log.device);
    v11 = *(v8 + 16);
    *(v0 + 4952) = v11;
    *(v0 + 4960) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v7, v6, v9);

    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v12[614];
    v17 = v12[599];
    v18 = v12[598];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73[0] = v69;
      *v19 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v20 = v5;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v68 = v14;
      v24 = *(v17 + 8);
      v24(v16, v18);
      v25 = v21;
      v5 = v20;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v23, v73);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2082;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v4, v73);
      _os_log_impl(&dword_220940000, v13, v68, "Creating inference context for request %{public}s asset bundle %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v69, -1, -1);
      v27 = v19;
      v12 = v72;
      MEMORY[0x223D90A10](v27, -1, -1);
    }

    else
    {

      v24 = *(v17 + 8);
      v24(v16, v18);
    }

    v12[621] = v24;
    v28 = InferenceProviderRequestConfiguration.assetIdentifiers.getter();
    v29 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v28);
    v12[622] = v29;
    v12[527] = 0xD000000000000017;
    v12[528] = 0x8000000220AFD6C0;
    v30 = swift_task_alloc();
    *(v30 + 16) = v5;
    v31 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v30, v29);

    v32 = v12[538];
    if ((v31 & 1) == 0)
    {
      break;
    }

    outlined init with copy of DeterministicLanguageModelProtocol((v32 + 2), (v12 + 138));
    __swift_project_boxed_opaque_existential_1(v12 + 138, v12[141]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v33 = swift_allocObject();
    __swift_project_boxed_opaque_existential_1(v32 + 7, v32[10]);
    v34 = off_283451290;
    type metadata accessor for OnDeviceInferenceOverrides();
    v35 = v34();
    v37 = 0xD00000000000001DLL;
    if (v36)
    {
      v37 = v35;
    }

    v33[4] = v37;
    v38 = 0x8000000220AFD790;
    if (v36)
    {
      v38 = v36;
    }

    v33[5] = v38;
    __swift_project_boxed_opaque_existential_1(v32 + 7, v32[10]);
    v39 = off_2834512A8();
    v41 = 0x8000000220AFD7B0;
    v42 = 0xD00000000000001ALL;
    if (v40)
    {
      v42 = v39;
      v41 = v40;
    }

    v33[6] = v42;
    v33[7] = v41;
    __swift_project_boxed_opaque_existential_1(v32 + 7, v32[10]);
    v43 = off_2834512C0();
    v45 = v33 + 5;
    v46 = 0;
    v47 = 0x8000000220AFD7D0;
    v48 = 0xD000000000000022;
    if (v44)
    {
      v48 = v43;
      v47 = v44;
    }

    v33[8] = v48;
    v33[9] = v47;
    v49 = MEMORY[0x277D84F90];
    v4 = &selRef__encodedImageByteCount;
    v1 = &selRef__encodedImageByteCount;
    v70 = v45;
LABEL_15:
    v71 = v49;
    v50 = 3;
    if (v46 > 3)
    {
      v50 = v46;
    }

    v51 = &v45[2 * v46++];
    v0 = -v50;
    while (v0 + v46 != 1)
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v54 = objc_opt_self();

      v55 = [v54 defaultManager];
      v56 = MEMORY[0x223D8E6B0](v53, v52);
      v57 = [v55 fileExistsAtPath_];

      if (v57)
      {
        v49 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 16) + 1, 1);
          v49 = v73[0];
        }

        v45 = v70;
        v60 = *(v49 + 16);
        v59 = *(v49 + 24);
        if (v60 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v45 = v70;
          v49 = v73[0];
        }

        *(v49 + 16) = v60 + 1;
        v61 = v49 + 16 * v60;
        *(v61 + 32) = v53;
        *(v61 + 40) = v52;
        if (v46 == 3)
        {
          goto LABEL_29;
        }

        goto LABEL_15;
      }

      ++v46;
      v51 += 2;
      if (v46 == 4)
      {
        v49 = v71;
LABEL_29:
        v72[623] = v49;
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v66 = swift_task_alloc();
        v72[624] = v66;
        *v66 = v72;
        v66[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
        v63 = v72[596];
        v64 = v72[537];
        v65 = v49;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(v32 + 2, v32[5]);
  v62 = swift_task_alloc();
  v12[628] = v62;
  *v62 = v12;
  v62[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  v63 = v12[594];
  v64 = v12[537];
  v65 = v29;
LABEL_30:

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKF(v65, v64, v63);
}

{
  v839 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 1104);
  v798 = *(v0 + 5000);
  v1 = *(v0 + 4304);
  v809 = *(v0 + 4160);
  *(v0 + 5056) = v809;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v2 = off_283451310[0];
  *(v0 + 5064) = type metadata accessor for OnDeviceInferenceOverrides();
  v3 = v2();
  if (v4)
  {
    v5 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = v3;
  }

  *(v0 + 5072) = v7;
  v8 = *(v0 + 4288);
  v9 = *(*(v0 + 4688) + 20);
  *(v0 + 324) = v9;
  SamplingParameters.priorInferenceOutput.getter();
  v814 = v0;
  if (v10)
  {

    if (v7 >= 1)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_220940000, v11, v12, "Invalid speculation options. Cannot mix promptLookup and priorInferenceOutput options", v13, 2u);
        MEMORY[0x223D90A10](v13, -1, -1);
      }

      v815 = *(v0 + 4968);
      v14 = *(v0 + 4920);
      v15 = *(v0 + 4784);
      v16 = *(v0 + 4720);
      v17 = *(v0 + 4712);
      v18 = *(v0 + 4704);

      TokenGenerationError.Context.init(debugDescription:underlyingError:)();
      v19 = type metadata accessor for TokenGenerationError();
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
      v20 = swift_allocError();
      v22 = v21;
      (*(v17 + 16))(v21, v16, v18);
      (*(*(v19 - 8) + 104))(v22, *MEMORY[0x277D71AE0], v19);
      swift_willThrow();
      v23 = v18;
      v24 = v0;
      (*(v17 + 8))(v16, v23);
      v815(v14, v15);
      goto LABEL_94;
    }
  }

  v797 = v9;
  v804 = v8;
  v805 = v7;
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 4288), *(v0 + 4696), type metadata accessor for InferenceRequest);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v836 = v28;
    *v27 = 136315650;
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v29 = v2();
    if (v30)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
      v33 = v814;
    }

    else
    {
      v33 = v814;
      *(v814 + 4272) = v29;
      lazy protocol witness table accessor for type Int and conformance Int();
      v32 = BinaryInteger.description.getter();
      v31 = v47;
    }

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v836);

    *(v27 + 4) = v48;
    *(v27 + 12) = 2080;
    v49 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v50)
    {
      v51 = 0xE300000000000000;
      v36 = v809;
      v52 = 7104878;
    }

    else
    {
      v33[533] = v49;
      lazy protocol witness table accessor for type Int and conformance Int();
      v52 = BinaryInteger.description.getter();
      v51 = v53;
      v36 = v809;
    }

    outlined destroy of InferenceRequest(v33[587], type metadata accessor for InferenceRequest);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v836);

    *(v27 + 14) = v54;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v805;
    _os_log_impl(&dword_220940000, v25, v26, "inferenceOverrides.promptLookupDraftSteps = %s, request.parameters.promptLookupDraftSteps = %s, promptLookupDraftSteps = %ld", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v28, -1, -1);
    MEMORY[0x223D90A10](v27, -1, -1);

    v24 = v33;
    v37 = *(v36 + 16);
    if (!v37)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v34 = *(v0 + 4696);

    v35 = outlined destroy of InferenceRequest(v34, type metadata accessor for InferenceRequest);
    v24 = v0;
    v36 = v809;
    v37 = *(v809 + 16);
    if (!v37)
    {
LABEL_30:
      v816 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }
  }

  v38 = v24[580];
  v39 = v36 + 32;
  v816 = MEMORY[0x277D84F90];
  do
  {
    v40 = v24[579];
    v41 = v24[578];
    outlined init with copy of DeterministicLanguageModelProtocol(v39, (v24 + 413));
    outlined init with take of RandomNumberGenerator((v24 + 413), (v24 + 393));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v42 = swift_dynamicCast();
    (*(v38 + 56))(v41, v42 ^ 1u, 1, v40);
    if ((*(v38 + 48))(v41, 1, v40) == 1)
    {
      v35 = outlined destroy of [Int](v24[578], &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
    }

    else
    {
      _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v24[578], v24[585], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v43 = v816;
      }

      else
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v816[2] + 1, 1, v816);
      }

      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v43);
      }

      v46 = v24[585];
      v43[2] = v45 + 1;
      v816 = v43;
      v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v46, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v45, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    v39 += 40;
    --v37;
  }

  while (v37);
LABEL_31:
  v55 = v816;
  v56 = v816[2];
  if (v56)
  {
    v57 = 0;
    v58 = v24[584] + 8;
    v59 = v24[580];
    v60 = v24[579];
    v61 = MEMORY[0x277D84F90];
    v810 = v58;
    while (v57 < v55[2])
    {
      v62 = v24[584];
      v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v64 = v24;
      v65 = *(v59 + 72);
      outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v55 + v63 + v65 * v57, v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      v66 = v64[584];
      if (*(v58 + *(v60 + 36)) == 2)
      {
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v66, v64[583], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v836 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1);
          v61 = v836;
        }

        v69 = v61[2];
        v68 = v61[3];
        if (v69 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1);
          v61 = v836;
        }

        v70 = *(v814 + 4664);
        v61[2] = v69 + 1;
        v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v70, v61 + v63 + v69 * v65, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        v58 = v810;
      }

      else
      {
        v35 = outlined destroy of InferenceRequest(v66, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      }

      ++v57;
      v24 = v814;
      v55 = v816;
      if (v56 == v57)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_140;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_43:
  if (v805 > 0 || (v71 = SamplingParameters.speculativeDecoding.getter(), v71 == 2))
  {
    if (!v56)
    {
      v76 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
    if (!v56 || (v71 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v72 = v24[580];
  v811 = v24[579];
  v73 = v24[582] + *(v811 + 36);
  v74 = v816 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v75 = *(v72 + 72);
  v76 = MEMORY[0x277D84F90];
  do
  {
    outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v74, v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v77 = *(v73 + 8);
    v78 = v24[582];
    if (v77 == 2)
    {
      outlined destroy of InferenceRequest(v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    else
    {
      v79 = *v73;
      v80 = *(v73 + 32);
      v831 = *(v73 + 16);
      v832 = v80;
      *v833 = *(v73 + 48);
      *&v833[9] = *(v73 + 57);
      v81 = *(v78 + *(v811 + 32));

      outlined destroy of InferenceRequest(v78, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
      }

      v83 = v76[2];
      v82 = v76[3];
      v84 = v76;
      if (v83 >= v82 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v76);
      }

      *(v838 + 9) = *&v833[9];
      v837 = v832;
      v838[0] = *v833;
      v836 = v831;
      v84[2] = v83 + 1;
      v76 = v84;
      v85 = &v84[11 * v83];
      v85[4] = v81;
      v85[5] = v79;
      v85[6] = v77;
      v86 = v836;
      v87 = v837;
      v88 = v838[0];
      *(v85 + 97) = *(v838 + 9);
      *(v85 + 11) = v88;
      *(v85 + 9) = v87;
      *(v85 + 7) = v86;
      v24 = v814;
    }

    v74 += v75;
    --v56;
  }

  while (v56);
LABEL_56:
  if (v61[2])
  {

    v89 = v61;
  }

  else
  {

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = v24[617];
      v93 = v24[616];
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v836 = v95;
      *v94 = 136446210;
      *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, &v836);
      _os_log_impl(&dword_220940000, v90, v91, "Using draft model as target model for %{public}s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x223D90A10](v95, -1, -1);
      MEMORY[0x223D90A10](v94, -1, -1);
    }

    v76 = MEMORY[0x277D84F90];
    v89 = v816;
  }

  v24[636] = v76;
  v24[635] = v89;
  v812 = v76;
  if (!v89[2])
  {
    v120 = v24[619];
    v121 = v24[615];
    v122 = v24[600];
    v123 = v24[598];

    v120(v122, v121, v123);

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v24[621];
    if (v126)
    {
      v817 = v24[617];
      v806 = v24[616];
      v128 = v24[600];
      v129 = v24[598];
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v836 = v131;
      *v130 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      v127(v128, v129);
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v836);

      *(v130 + 4) = v135;
      *(v130 + 12) = 2082;
      *(v130 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v806, v817, &v836);
      _os_log_impl(&dword_220940000, v124, v125, "Failed to create inference context for request %{public}s, inference runner not loaded for asset bundle %{public}s", v130, 0x16u);
      swift_arrayDestroy();
      v136 = v131;
      v24 = v814;
      MEMORY[0x223D90A10](v136, -1, -1);
      MEMORY[0x223D90A10](v130, -1, -1);
    }

    else
    {
      v185 = v24[600];
      v186 = v24[598];

      v127(v185, v186);
    }

    v187 = v24[621];
    v188 = v24[617];
    v189 = v24[616];
    v190 = v24[615];
    v191 = v24[598];
    v192 = *(v814 + 4720);
    v193 = *(v814 + 4712);
    v194 = *(v814 + 4704);
    *&v836 = 0;
    *(&v836 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    *&v836 = 0xD000000000000022;
    *(&v836 + 1) = 0x8000000220AFD700;
    MEMORY[0x223D8E780](v189, v188);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v195 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v20 = swift_allocError();
    v197 = v196;
    (*(v193 + 16))(v196, v192, v194);
    (*(*(v195 - 8) + 104))(v197, *MEMORY[0x277D71AF0], v195);
    swift_willThrow();
    v198 = v192;
    v24 = v814;
    (*(v193 + 8))(v198, v194);
    v187(v190, v191);
    goto LABEL_93;
  }

  v96 = v24[621];
  v97 = v24[613];
  v98 = v24[599];
  v99 = v76;
  v100 = v24[598];
  v101 = v24[581];
  v102 = v24[579];
  v103 = *(v24[580] + 80);
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v89 + ((v103 + 32) & ~v103), v101, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v104 = UUID.uuidString.getter();
  v106 = v105;
  v24[637] = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96(v97, v100);
  v107 = *(v102 + 28);
  v108 = v104;
  v109 = (v101 + v107);
  v24[638] = *v109;
  v110 = v109[1];
  v24[639] = v110;
  ObjectType = swift_getObjectType();
  v24[640] = ObjectType;
  (*(v110 + 120))(v104, v106, ObjectType, v110);
  if (v99[2])
  {
    v112 = *(v99[4] + 48);
    v113 = swift_getObjectType();
    v114 = *(v112 + 120);
    swift_unknownObjectRetain();
    v114(v104, v106, v113, v112);
    swift_unknownObjectRelease();
  }

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&v836 = v118;
    *v117 = 136446210;
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v106, &v836);

    *(v117 + 4) = v119;
    _os_log_impl(&dword_220940000, v115, v116, "Setting E5Runner telemetry identifier to %{public}s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x223D90A10](v118, -1, -1);
    MEMORY[0x223D90A10](v117, -1, -1);
  }

  else
  {
  }

  v137 = v24[576];
  v138 = v809;
  v139 = *(v809 + 16);
  v140 = v809 + 32;
  v141 = (v137 + 56);
  v142 = (v137 + 48);

  v146 = 0;
  if (v139)
  {
    v147 = v809 + 32;
    while (1)
    {
      v148 = v24[575];
      v149 = v24[573];
      outlined init with copy of DeterministicLanguageModelProtocol(v147, (v24 + 388));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v150 = swift_dynamicCast();
      (*v141)(v149, v150 ^ 1u, 1, v148);
      LODWORD(v149) = (*v142)(v149, 1, v148);
      v143 = outlined destroy of [Int](v24[573], &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
      if (v149 != 1)
      {
        break;
      }

      ++v146;
      v147 += 40;
      if (v139 == v146)
      {
        v146 = v139;
        break;
      }
    }

    v138 = v809;
    v140 = v809 + 32;
  }

  v151 = *(v138 + 16);
  if (v146 == v151)
  {
    (*v141)(v24[574], 1, 1, v24[575]);

    v152 = *v142;
  }

  else
  {
    if (v146 >= v151)
    {
      __break(1u);
      goto LABEL_257;
    }

    v153 = v140;
    v154 = v24[575];
    v155 = v24[572];
    v156 = v24[571];
    outlined init with copy of DeterministicLanguageModelProtocol(v153 + 40 * v146, (v24 + 333));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v157 = swift_dynamicCast();
    v158 = v24;
    v159 = *v141;
    (*v141)(v155, v157 ^ 1u, 1, v154);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v155, v156, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    v152 = *v142;
    v143 = (*v142)(v156, 1, v154);
    if (v143 == 1)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v160 = v158[575];
    v161 = v158[574];
    v162 = v158[572];
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v158[571], v161, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    outlined destroy of [Int](v162, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    v159(v161, 0, 1, v160);

    v24 = v158;
  }

  v163 = v24[575];
  v164 = v24[574];
  if (v152(v164, 1, v163) == 1)
  {
    v165 = v24[619];
    v166 = v24[615];
    v167 = v24[601];
    v168 = v24[598];

    outlined destroy of [Int](v164, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    v165(v167, v166, v168);

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();

    v171 = os_log_type_enabled(v169, v170);
    v172 = v24[621];
    if (v171)
    {
      v818 = v24[617];
      v807 = v24[616];
      v173 = v24[601];
      v174 = v24[598];
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v836 = v176;
      *v175 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v177 = dispatch thunk of CustomStringConvertible.description.getter();
      v179 = v178;
      v172(v173, v174);
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v179, &v836);

      *(v175 + 4) = v180;
      *(v175 + 12) = 2082;
      *(v175 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v807, v818, &v836);
      _os_log_impl(&dword_220940000, v169, v170, "Failed to create inference context for request %{public}s, tokenizer not loaded for asset bundle %{public}s", v175, 0x16u);
      swift_arrayDestroy();
      v181 = v176;
      v24 = v814;
      MEMORY[0x223D90A10](v181, -1, -1);
      MEMORY[0x223D90A10](v175, -1, -1);
    }

    else
    {
      v199 = v24[601];
      v200 = v24[598];

      v172(v199, v200);
    }

    v201 = v24[621];
    v202 = v24[617];
    v203 = v24[616];
    v204 = v24[615];
    v205 = *(v814 + 4784);
    v206 = *(v814 + 4720);
    v207 = *(v814 + 4712);
    v208 = *(v814 + 4704);
    v209 = *(v814 + 4648);
    *&v836 = 0;
    *(&v836 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    *&v836 = 0xD00000000000001CLL;
    *(&v836 + 1) = 0x8000000220AFD6E0;
    MEMORY[0x223D8E780](v203, v202);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v210 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v20 = swift_allocError();
    v212 = v211;
    (*(v207 + 16))(v211, v206, v208);
    (*(*(v210 - 8) + 104))(v212, *MEMORY[0x277D71AF0], v210);
    swift_willThrow();
    (*(v207 + 8))(v206, v208);
    v213 = v205;
    v24 = v814;
    v201(v204, v213);
    v214 = v209;
    goto LABEL_92;
  }

  v182 = v24 + 321;
  v183 = v24[577];

  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v164, v183, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v184 = *(v163 + 24);
  *(v24 + 103) = v184;
  v24[641] = *(v183 + v184);
  if (!*(v183 + *(v163 + 36)))
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:));
    outlined destroy of [Int](&unk_28344E320, &_sSS_SStMd);
  }

  v217 = v24[581];
  v218 = v24[579];
  v24[642] = type metadata accessor for TokenIDToTextConverter();
  swift_allocObject();

  v24[643] = TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)();
  v219 = *(v217 + *(v218 + 32));
  if (v812[2])
  {
    v24[281] = type metadata accessor for E5TransformerLanguageModel();
    v24[282] = &protocol witness table for E5TransformerLanguageModel;
    v24[278] = v219;
  }

  else
  {
    v248 = v24[615];
    v24[196] = type metadata accessor for E5TransformerLanguageModel();
    v24[197] = &protocol witness table for E5TransformerLanguageModel;
    v24[193] = v219;

    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 193), v805, v248, (v24 + 198));
    __swift_destroy_boxed_opaque_existential_1((v24 + 193));
    addPriorOutputSpeculation #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 198), v24 + 278);
    if (v798)
    {
      v20 = v798;
      v249 = v24[621];
      v250 = v24[615];
      v251 = v24[598];
      v252 = v24[581];
      v253 = v24[577];

      __swift_destroy_boxed_opaque_existential_1((v24 + 198));
      v249(v250, v251);
      outlined destroy of InferenceRequest(v253, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      v214 = v252;
LABEL_92:
      outlined destroy of InferenceRequest(v214, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
LABEL_93:

LABEL_94:
      v215 = v809;
      goto LABEL_95;
    }

    __swift_destroy_boxed_opaque_existential_1((v24 + 198));
    v798 = 0;
    v182 = v24 + 321;
  }

  v220 = (v24 + 253);
  v221 = v24[586];
  v222 = v24[569];
  v223 = v24[568];
  v224 = v24[567];
  v225 = v24[536];
  outlined init with take of RandomNumberGenerator(v24 + 139, (v24 + 293));
  *(v24 + 253) = 0u;
  *(v24 + 255) = 0u;
  v24[257] = 0;
  v226 = *(v221 + 28);
  *(v24 + 125) = v226;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v225 + v226, v224, &_s15TokenGeneration11ConstraintsOSgMd);
  if ((*(v222 + 48))(v224, 1, v223) == 1)
  {
    v227 = (v24 + 218);
    outlined destroy of [Int](v24[567], &_s15TokenGeneration11ConstraintsOSgMd);
    v228 = v24[593];
    v229 = v24[586];
    v230 = v24[536];
    *(v24 + 109) = 0u;
    *(v24 + 110) = 0u;
    v24[222] = 0;
    v231 = _s24TokenGenerationInference08OnDeviceC14ContextFactoryC14supportedTools33_6E70D024FF4C54BC34814633D058F7394fromSay29GenerativeFunctionsFoundation4ToolV8FunctionVGSay0aB00U11DescriptionVG_t20ModelManagerServices0C5ErrorOYKF(*(v230 + *(v229 + 24)), v228);
    if (v798)
    {
      v808 = v24[621];
      v232 = *(v814 + 4920);
      v233 = v227;
      v234 = *(v814 + 4784);
      v235 = *(v814 + 4744);
      v236 = *(v814 + 4736);
      v237 = v220;
      v238 = *(v814 + 4728);
      v813 = *(v814 + 4648);
      v239 = *(v814 + 4616);

      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
      v20 = swift_allocError();
      (*(v236 + 32))(v240, v235, v238);

      outlined destroy of [Int](v233, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      outlined destroy of [Int](v237, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      v241 = v232;
      v24 = v814;
      v808(v241, v234);
      outlined destroy of InferenceRequest(v239, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      __swift_destroy_boxed_opaque_existential_1(v814 + 2344);
      outlined destroy of InferenceRequest(v813, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

      v215 = *(v814 + 5056);
LABEL_95:
      v24[652] = v215;
      v24[651] = v20;
      v216 = __swift_project_boxed_opaque_existential_1((v24[538] + 16), *(v24[538] + 40));
      v24[653] = v216;
      v144 = *v216;
      v143 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v145 = 0;

      return MEMORY[0x2822009F8](v143, v144, v145);
    }

    v254 = v231;
    v255 = v24[581];
    v256 = v24[561];
    v257 = v24[560];
    v258 = v24[559];
    v259 = *(v24[579] + 72);
    *(v24 + 147) = v259;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v255 + v259, v258, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    v260 = *(v256 + 48);
    v24[646] = v260;
    v24[647] = (v256 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v261 = v260(v258, 1, v257);
    v262 = v24[565];
    v263 = v24[561];
    v264 = v24[560];
    v265 = v24[559];
    v804 = (v24 + 218);
    v792 = v182;
    if (v261 == 1)
    {
      (*(v263 + 104))(v262, *MEMORY[0x277D71EC8], v264);
      if (v260(v265, 1, v264) != 1)
      {
        outlined destroy of [Int](v24[559], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
      }
    }

    else
    {
      (*(v263 + 32))(v262, v265, v264);
    }

    v266 = v24;
    __swift_project_boxed_opaque_existential_1((v266[538] + 56), *(v266[538] + 80));
    v267 = off_283451338();
    v24[648] = specialized static OnDeviceInferenceContextFactory.startToolCallTokenIntValue(startToolCallTokenOverride:tokenizer:version:)(v267, v268 & 1);
    if (v254[2])
    {
      (*(v24[561] + 104))(v24[564], *MEMORY[0x277D71ED0], v24[560]);
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v24[525] == v24[529] && v24[526] == v24[530])
      {
        v269 = 1;
      }

      else
      {
        v269 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v266 = v814;
      (*(*(v814 + 4488) + 8))(*(v814 + 4512), *(v814 + 4480));

      if (v269)
      {
        (*(*(v814 + 4488) + 16))(*(v814 + 4504), *(v814 + 4520), *(v814 + 4480));
        Grammar.init(tools:version:)();
        *(v814 + 5192) = 0;
        v336 = *(v814 + 4304);
        v337 = swift_task_alloc();
        *(v814 + 5200) = v337;
        *v337 = v814;
        v337[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
        v338 = *(v814 + 4648);
        v339 = *(v814 + 4616);
        v340 = *(v814 + 4456);

        return OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(v814 + 1944, v340, v339, v338, v336 + 16);
      }
    }

    v270 = v266[648];
    v271 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v220, (v266 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v804, (v266 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    type metadata accessor for ToolCallLanguageModel();
    v272 = swift_allocObject();
    v272[2] = 0;
    v272[3] = v270;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v272 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v272 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v819 = v272;
    v272[4] = v271;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd);
    v273 = swift_allocObject();
    v782 = xmmword_220AE8A30;
    *(v273 + 16) = xmmword_220AE8A30;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v274 = v266[151];
    v24 = v266;
    if (v274)
    {
      v275 = v266[152];
      __swift_project_boxed_opaque_existential_1(v266 + 148, v266[151]);
      v276 = (*(v275 + 8))(v274, v275);
      __swift_destroy_boxed_opaque_existential_1((v266 + 148));
    }

    else
    {
      outlined destroy of [Int]((v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      v276 = 0;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v277 = v266[156];
    v797 = v220;
    if (v277)
    {
      v278 = v266[157];
      __swift_project_boxed_opaque_existential_1(v266 + 153, v277);
      v279 = (*(v278 + 8))(v277, v278);
      __swift_destroy_boxed_opaque_existential_1((v266 + 153));
    }

    else
    {
      outlined destroy of [Int]((v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      v279 = 0;
    }

    v280 = v277 == 0;
    v281 = v274 == 0;
    v282 = v266[619];
    v283 = v266[615];
    v284 = v266[612];
    v285 = v24[598];
    v286 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v273 + 32) = v276;
    *(v273 + 40) = v281;
    *(v273 + 48) = v279;
    *(v273 + 56) = v280;
    *(v273 + 57) = 2;
    *(v273 + 64) = v286;
    outlined destroy of [Int]((v24 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined destroy of [Int]((v24 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v819[5] = v273;
    outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 163));
    v287 = type metadata accessor for MaskedLanguageModel();
    v288 = swift_allocObject();

    v290 = specialized MaskedLanguageModel.init(_:_:)(v289, v24 + 163, v288);
    v24[161] = v287;
    v24[162] = &protocol witness table for MaskedLanguageModel;
    v24[158] = v290;
    __swift_destroy_boxed_opaque_existential_1((v24 + 293));
    outlined init with take of RandomNumberGenerator(v24 + 79, (v24 + 293));
    v282(v284, v283, v285);
    v291 = Logger.logObject.getter();
    v292 = static os_log_type_t.default.getter();
    v293 = os_log_type_enabled(v291, v292);
    v294 = v24[621];
    v295 = v24[612];
    v296 = v24[598];
    v798 = v287;
    if (v293)
    {
      v297 = swift_slowAlloc();
      v298 = swift_slowAlloc();
      *&v836 = v298;
      *v297 = 136446466;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v814 + 2344, v814 + 2064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd);
      v299 = String.init<A>(describing:)();
      v301 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v299, v300, &v836);

      *(v297 + 4) = v301;
      *(v297 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v302 = dispatch thunk of CustomStringConvertible.description.getter();
      v304 = v303;
      v294(v295, v296);
      v305 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v302, v304, &v836);

      *(v297 + 14) = v305;
      _os_log_impl(&dword_220940000, v291, v292, "Using base language model %{public}s for request %{public}s", v297, 0x16u);
      swift_arrayDestroy();
      v306 = v298;
      v24 = v814;
      MEMORY[0x223D90A10](v306, -1, -1);
      MEMORY[0x223D90A10](v297, -1, -1);
    }

    else
    {

      v294(v295, v296);
    }

    v307 = v24[581];
    v308 = v24[579];
    v309 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
    if (v310)
    {
      v311 = 1.0;
    }

    else
    {
      v311 = v309;
    }

    v312 = SamplingParameters.randomSeed.getter();
    v314 = (v307 + *(v308 + 64));
    v316 = *v314;
    v315 = v314[1];
    v805 = v314[2];
    v810 = v315;
    v809 = *v314;
    if (v315)
    {
      v59 = type metadata accessor for ClassificationSampling();
      swift_allocObject();

      v35 = ClassificationSampling.init(defaultClass:outputClasses:)(v316, v315);
LABEL_140:
      v24[286] = v59;
      v24[287] = &protocol witness table for ClassificationSampling;
      v24[283] = v35;
      v327 = (v24 + 283);
LABEL_141:
      outlined init with take of RandomNumberGenerator(v327, (v24 + 168));
LABEL_151:
      (v24[619])(v24[611], v24[615], v24[598]);
      v344 = Logger.logObject.getter();
      v345 = static os_log_type_t.info.getter();
      v346 = os_log_type_enabled(v344, v345);
      v347 = v24[621];
      v348 = v24[611];
      v349 = v24[598];
      if (v346)
      {
        v350 = swift_slowAlloc();
        v351 = swift_slowAlloc();
        *&v836 = v351;
        *v350 = 136446466;
        swift_beginAccess();
        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 1344, v814 + 2824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd);
        v352 = String.init<A>(describing:)();
        v354 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v352, v353, &v836);

        *(v350 + 4) = v354;
        *(v350 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v355 = dispatch thunk of CustomStringConvertible.description.getter();
        v357 = v356;
        v347(v348, v349);
        v358 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v355, v357, &v836);

        *(v350 + 14) = v358;
        _os_log_impl(&dword_220940000, v344, v345, "Using sampling %{public}s for request %{public}s", v350, 0x16u);
        swift_arrayDestroy();
        v359 = v351;
        v24 = v814;
        MEMORY[0x223D90A10](v359, -1, -1);
        MEMORY[0x223D90A10](v350, -1, -1);
      }

      else
      {

        v347(v348, v349);
      }

      v790 = v24 + 96;
      *(v24 + 48) = xmmword_220AED900;
      *(v24 + 49) = 0u;
      *(v24 + 50) = 0u;
      *(v24 + 51) = 0u;
      *(v24 + 825) = 0u;
      v360 = SamplingParameters.tokenHealing.getter();
      if (v360 == 2 || (v360 & 1) == 0)
      {
        (v24[619])(v24[606], v24[615], v24[598]);
        v374 = Logger.logObject.getter();
        v375 = static os_log_type_t.default.getter();
        v376 = os_log_type_enabled(v374, v375);
        v377 = v24[621];
        v378 = v24[606];
        v379 = v24[598];
        v793 = v24 + 188;
        if (v376)
        {
          v380 = swift_slowAlloc();
          v381 = swift_slowAlloc();
          *&v836 = v381;
          *v380 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v382 = dispatch thunk of CustomStringConvertible.description.getter();
          v384 = v383;
          v377(v378, v379);
          v385 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v382, v384, &v836);

          *(v380 + 4) = v385;
          _os_log_impl(&dword_220940000, v374, v375, "Not using token healing for request %{public}s", v380, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v381);
          v386 = v381;
          v24 = v814;
          MEMORY[0x223D90A10](v386, -1, -1);
          MEMORY[0x223D90A10](v380, -1, -1);
        }

        else
        {

          v377(v378, v379);
        }

        v387 = v24[581];
        v388 = v24[579];
        v825 = 0;
        v826 = 1;
        v389 = *(v387 + *(v388 + 44));
        if (v389 < 1)
        {
          v408 = v24[636];
          if (*(v408 + 16))
          {
            v409 = v24[549];
            v410 = v24[548];
            v411 = v24[546];
            v412 = *(v408 + 48);
            *(v24 + 85) = *(v408 + 32);
            *(v24 + 87) = v412;
            v414 = *(v408 + 80);
            v413 = *(v408 + 96);
            v415 = *(v408 + 64);
            *(v24 + 760) = *(v408 + 112);
            *(v24 + 91) = v414;
            *(v24 + 93) = v413;
            *(v24 + 89) = v415;
            v763 = v24[85];
            v416 = (v24 + 86);
            v784 = (v24 + 85);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v24 + 85), (v24 + 74), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            SamplingParameters.speculationParameters.getter();
            if ((*(v409 + 48))(v411, 1, v410) == 1)
            {
              outlined destroy of [Int](v24[546], &_s15TokenGeneration21SpeculationParametersVSgMd);
              v820 = *v416;
              v821 = *(v24 + 44);
              v822 = *(v24 + 45);
              v823 = v24[92];
              v417 = v24[93];
              v418 = v24[94];
              v419 = *(v24 + 760);
            }

            else
            {
              (*(v24[549] + 32))(v24[550], v24[546], v24[548]);
              v498 = Logger.logObject.getter();
              v499 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v498, v499))
              {
                v500 = swift_slowAlloc();
                *v500 = 0;
                _os_log_impl(&dword_220940000, v498, v499, "Overriding default speculation behavior from sampling parameters", v500, 2u);
                MEMORY[0x223D90A10](v500, -1, -1);
              }

              v24 = v814;
              v501 = *(v814 + 4400);
              v502 = *(v814 + 4392);
              v503 = *(v814 + 4384);

              v504 = v416[3];
              v838[0] = v416[2];
              v838[1] = v504;
              *(&v838[1] + 9) = *(v416 + 57);
              v505 = v416[1];
              v836 = *v416;
              v837 = v505;
              DraftingBehavior.updated(with:)(&v831);
              (*(v502 + 8))(v501, v503);
              v820 = v831;
              v821 = v832;
              v822 = *v833;
              v417 = *&v833[24];
              v823 = *&v833[16];
              v418 = v834;
              v419 = v835;
            }

            v506 = v24[634];
            v507 = v24[619];
            v508 = v24[615];
            v509 = v24[604];
            v510 = v24[598];
            swift_beginAccess();
            *v790 = v820;
            *(v790 + 1) = v821;
            *(v790 + 2) = v822;
            v790[6] = v823;
            v779 = v417;
            v24[103] = v417;
            v773 = v418;
            v24[104] = v418;
            v768 = v419;
            *(v24 + 840) = v419;
            v24[216] = type metadata accessor for E5TransformerLanguageModel();
            v24[217] = &protocol witness table for E5TransformerLanguageModel;
            v24[213] = v763;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v784, (v24 + 63), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 213), v506, v508, (v24 + 208));
            __swift_destroy_boxed_opaque_existential_1((v24 + 213));
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 208), (v24 + 223));
            v511 = v798;
            v512 = swift_allocObject();

            v514 = specialized MaskedLanguageModel.init(_:_:)(v513, v24 + 223, v512);
            v507(v509, v508, v510);

            v515 = Logger.logObject.getter();
            v516 = static os_log_type_t.default.getter();

            v517 = os_log_type_enabled(v515, v516);
            v518 = v24[621];
            v519 = v24[604];
            v520 = v24[598];
            if (v517)
            {
              v521 = swift_slowAlloc();
              v760 = swift_slowAlloc();
              *&v836 = v760;
              *v521 = 136446466;
              v24[531] = v514;

              v522 = String.init<A>(describing:)();
              v524 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v522, v523, &v836);

              *(v521 + 4) = v524;
              *(v521 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v525 = dispatch thunk of CustomStringConvertible.description.getter();
              v527 = v526;
              v518(v519, v520);
              v528 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v525, v527, &v836);
              v511 = v798;

              *(v521 + 14) = v528;
              _os_log_impl(&dword_220940000, v515, v516, "Using draft language model %{public}s for request %{public}s", v521, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v760, -1, -1);
              MEMORY[0x223D90A10](v521, -1, -1);
            }

            else
            {

              v518(v519, v520);
            }

            v24[231] = v511;
            v24[232] = &protocol witness table for MaskedLanguageModel;
            v24[228] = v514;
            v529 = v779;
            if (v779 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 233));

              v542 = v773;
            }

            else
            {
              (v24[619])(v24[603], v24[615], v24[598]);

              v530 = Logger.logObject.getter();
              v531 = static os_log_type_t.default.getter();
              v532 = os_log_type_enabled(v530, v531);
              v533 = v24[621];
              v534 = v24[603];
              v535 = v24[598];
              if (v532)
              {
                v536 = swift_slowAlloc();
                v537 = swift_slowAlloc();
                *&v836 = v537;
                *v536 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                v538 = dispatch thunk of CustomStringConvertible.description.getter();
                v540 = v539;
                v533(v534, v535);
                v541 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v538, v540, &v836);
                v529 = v779;

                *(v536 + 4) = v541;
                *(v536 + 12) = 2050;
                *(v536 + 14) = v779;
                *(v536 + 22) = 2050;
                v542 = v773;
                *(v536 + 24) = v773;
                _os_log_impl(&dword_220940000, v530, v531, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v536, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v537);
                v543 = v537;
                v24 = v814;
                MEMORY[0x223D90A10](v543, -1, -1);
                MEMORY[0x223D90A10](v536, -1, -1);
              }

              else
              {

                v533(v534, v535);
                v542 = v773;
              }

              v554 = (*(v24[639] + 88))(v24[640]);

              v555 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v529, v554);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 318));
              v556 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v557 = swift_allocObject();
              v558 = MEMORY[0x277D84F90];
              v557[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v557[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v558);
              outlined init with take of RandomNumberGenerator(v24 + 159, (v557 + 2));
              v557[7] = v542;
              v557[8] = v555;
              v24[236] = v556;
              v24[237] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[233] = v557;
            }

            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 238));
            SamplingParameters.priorInferenceOutput.getter();
            if (v559)
            {
              v560 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v560, &v836);
              v563 = v836;
              v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
              v565 = swift_allocObject();
              *(v565 + 16) = v563;
              *(v565 + 32) = 2;
              v24[251] = v564;
              v24[252] = &protocol witness table for LookupLanguageModel<A>;

              v24[248] = v565;
            }

            else
            {
              v24[252] = 0;
              *(v24 + 124) = 0u;
              *(v24 + 125) = 0u;
            }

            v566 = v24[581];
            v567 = v24[538];
            v836 = v820;
            v837 = v821;
            v838[0] = v822;
            *&v838[1] = v823;
            *(&v838[1] + 1) = v529;
            *&v838[2] = v542;
            BYTE8(v838[2]) = v768;
            swift_beginAccess();
            v568 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v825, v567, v566);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 233), (v24 + 238), (v24 + 248), (v24 + 168), v568, v24 + 132);
            v569 = v24[135];
            v570 = v24[136];
            v571 = __swift_project_boxed_opaque_existential_1(v24 + 132, v569);
            v24[191] = v569;
            v24[192] = v570;
            v430 = v793;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v793);
            (*(*(v569 - 8) + 16))(boxed_opaque_existential_1, v571, v569);

            outlined destroy of [Int](v784, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 238));
            __swift_destroy_boxed_opaque_existential_1((v24 + 228));
            __swift_destroy_boxed_opaque_existential_1((v24 + 208));
            outlined destroy of [Int]((v24 + 248), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 233));
            __swift_destroy_boxed_opaque_existential_1((v24 + 132));
          }

          else
          {
            v474 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 328));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 343));
            v475 = v24[331];
            v476 = v24[332];
            v477 = __swift_mutable_project_boxed_opaque_existential_1((v24 + 328), v475);
            v478 = *(v475 - 8);
            v479 = swift_task_alloc();
            (*(v478 + 16))(v479, v477, v475);
            v480 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v479, v24 + 343, v474, v475, v476);
            __swift_destroy_boxed_opaque_existential_1((v24 + 328));

            v24[191] = v474;
            v24[192] = &protocol witness table for BasicDecoder;
            v24[188] = v480;
            v430 = v793;
          }
        }

        else
        {
          v390 = v387 + *(v388 + 36);
          v391 = *(v390 + 8);
          v392 = *(v390 + 64);
          if (v391 == 2)
          {
            v393 = 1;
          }

          else
          {
            v393 = v392;
          }

          (v24[619])(v24[605], v24[615], v24[598]);
          v394 = Logger.logObject.getter();
          v395 = static os_log_type_t.default.getter();
          v396 = os_log_type_enabled(v394, v395);
          v397 = v24[621];
          v398 = v24[605];
          v399 = v24[598];
          if (v396)
          {
            v400 = swift_slowAlloc();
            v799 = swift_slowAlloc();
            *&v836 = v799;
            *v400 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v783 = v395;
            v401 = dispatch thunk of CustomStringConvertible.description.getter();
            v402 = v393;
            v403 = v389;
            v405 = v404;
            v397(v398, v399);
            v406 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v401, v405, &v836);
            v389 = v403;
            v393 = v402;

            *(v400 + 4) = v406;
            *(v400 + 12) = 2050;
            *(v400 + 14) = v389;
            *(v400 + 22) = 2050;
            *(v400 + 24) = v402;
            _os_log_impl(&dword_220940000, v394, v783, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v400, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v799);
            MEMORY[0x223D90A10](v799, -1, -1);
            v407 = v400;
            v24 = v814;
            MEMORY[0x223D90A10](v407, -1, -1);
          }

          else
          {

            v397(v398, v399);
          }

          v420 = v24[640];
          v421 = v24[639];
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 348));
          v422 = (*(v421 + 88))(v420, v421);

          v423 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v389, v422);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 348), (v24 + 358));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v424 = swift_allocObject();
          v425 = MEMORY[0x277D84F90];
          v424[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v424[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v425);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 179, (v424 + 2));
          v424[7] = v393;
          v424[8] = v423;
          if (v393 < 1)
          {
            goto LABEL_258;
          }

          LOBYTE(v831) = 1;
          LOBYTE(v836) = 1;
          v24[116] = v389;
          *(v24 + 936) = 0;
          v24[118] = v393;
          v24[119] = 0;
          *(v24 + 960) = 1;
          *(v24 + 241) = 0;
          *(v24 + 968) = 1;
          *(v24 + 969) = 0;
          *(v24 + 243) = 0;
          *(v24 + 488) = 1;
          v24[123] = 0;
          v24[124] = 1;
          *(v24 + 1000) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 368));
          v426 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v427 = swift_allocObject();

          v429 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v428, v24 + 116, v24 + 368, v427);
          v24[191] = v426;
          v24[192] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[188] = v429;
          __swift_destroy_boxed_opaque_existential_1((v24 + 348));
          v430 = v793;
        }
      }

      else
      {
        (v24[619])(v24[610], v24[615], v24[598]);
        v361 = Logger.logObject.getter();
        v362 = static os_log_type_t.default.getter();
        v363 = os_log_type_enabled(v361, v362);
        v364 = v24[621];
        v365 = v24[610];
        v366 = v24[598];
        if (v363)
        {
          v367 = swift_slowAlloc();
          v368 = swift_slowAlloc();
          *&v836 = v368;
          *v367 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v369 = dispatch thunk of CustomStringConvertible.description.getter();
          v371 = v370;
          v364(v365, v366);
          v372 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v369, v371, &v836);

          *(v367 + 4) = v372;
          _os_log_impl(&dword_220940000, v361, v362, "Using token healing for request %{public}s", v367, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v368);
          v373 = v368;
          v24 = v814;
          MEMORY[0x223D90A10](v373, -1, -1);
          MEMORY[0x223D90A10](v367, -1, -1);
        }

        else
        {

          v364(v365, v366);
        }

        v434 = *(v24 + 125);
        v435 = v24[641];
        v777 = v24[581];
        v772 = v24[579];
        v436 = v24[566];
        v437 = v24[538];
        v438 = v24[536];
        v439 = (v777 + *(v772 + 68));
        v440 = *v439;
        v441 = v439[1];
        v442 = v439[2];
        v443 = v439[3];
        __swift_project_boxed_opaque_existential_1((v437 + 56), *(v437 + 80));
        v444 = off_2834512B0[0]();
        v446 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v444, v445, v440, v441, v442, v443);

        v447 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
        v448 = swift_allocObject();
        *(v448 + 32) = 1;
        *(v448 + 40) = 0;
        *(v448 + 48) = 513;
        *(v448 + 16) = v435;
        *(v448 + 24) = 0;
        *(v814 + 3048) = v447;
        *(v814 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
        *(v814 + 3024) = v448;
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v438 + v434, v436, &_s15TokenGeneration11ConstraintsOSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v449 = swift_allocObject();
        *(v449 + 16) = v782;
        *(v449 + 32) = v446;
        v24 = v814;
        v450 = type metadata accessor for TokenHealingDecoder();
        v451 = swift_allocObject();
        v452 = (v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
        v453 = MEMORY[0x277D84F90];
        *v452 = MEMORY[0x277D84F90];
        v452[1] = v453;
        v452[2] = v453;
        *(v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 3024, v451 + 16);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v436, v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd);
        *(v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v449;
        v824 = v453;
        v825 = 0;
        v826 = 1;
        v454 = *(v777 + *(v772 + 44));
        if (v454 < 1)
        {
          v481 = *(v814 + 5088);
          if (*(v481 + 16))
          {
            v764 = v450;
            v482 = *(v814 + 4392);
            v483 = *(v814 + 4384);
            v484 = *(v814 + 4376);
            v485 = *(v481 + 48);
            *(v814 + 416) = *(v481 + 32);
            *(v814 + 432) = v485;
            v487 = *(v481 + 80);
            v486 = *(v481 + 96);
            v488 = *(v481 + 64);
            *(v814 + 496) = *(v481 + 112);
            *(v814 + 464) = v487;
            *(v814 + 480) = v486;
            *(v814 + 448) = v488;
            v489 = v814;
            v767 = *(v814 + 416);
            v490 = (v814 + 424);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v814 + 416, v814 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            SamplingParameters.speculationParameters.getter();
            v786 = v451;
            if ((*(v482 + 48))(v484, 1, v483) == 1)
            {
              outlined destroy of [Int](*(v814 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd);
              v491 = *(v814 + 440);
              v827 = *v490;
              v828 = v491;
              v829 = *(v814 + 456);
              v830 = *(v814 + 472);
              v493 = *(v814 + 480);
              v492 = *(v814 + 488);
              v494 = *(v814 + 496);
            }

            else
            {
              (*(*(v814 + 4392) + 32))(*(v814 + 4408), *(v814 + 4376), *(v814 + 4384));
              v580 = Logger.logObject.getter();
              v581 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v580, v581))
              {
                v582 = swift_slowAlloc();
                *v582 = 0;
                _os_log_impl(&dword_220940000, v580, v581, "Overriding default speculation behavior from sampling parameters", v582, 2u);
                MEMORY[0x223D90A10](v582, -1, -1);
              }

              v489 = v814;
              v583 = *(v814 + 4408);
              v584 = *(v814 + 4392);
              v585 = *(v814 + 4384);

              v586 = *(v814 + 472);
              v838[0] = *(v814 + 456);
              v838[1] = v586;
              *(&v838[1] + 9) = *(v814 + 481);
              v587 = *(v814 + 440);
              v836 = *v490;
              v837 = v587;
              DraftingBehavior.updated(with:)(&v831);
              (*(v584 + 8))(v583, v585);
              v827 = v831;
              v828 = v832;
              v829 = *v833;
              v493 = *&v833[24];
              v830 = *&v833[16];
              v492 = v834;
              v494 = v835;
            }

            v588 = *(v489 + 5072);
            v589 = *(v489 + 4952);
            v590 = *(v489 + 4920);
            v591 = *(v489 + 4864);
            v592 = *(v489 + 4784);
            swift_beginAccess();
            v593 = v828;
            *v790 = v827;
            *(v790 + 1) = v593;
            *(v790 + 2) = v829;
            v790[6] = v830;
            v774 = v493;
            *(v489 + 824) = v493;
            *(v489 + 832) = v492;
            v761 = v494;
            *(v489 + 840) = v494;
            *(v489 + 3288) = type metadata accessor for E5TransformerLanguageModel();
            *(v489 + 3296) = &protocol witness table for E5TransformerLanguageModel;
            *(v489 + 3264) = v767;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v489 + 416, v489 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v489 + 3264, v588, v590, v489 + 3224);
            __swift_destroy_boxed_opaque_existential_1(v489 + 3264);
            outlined init with copy of DeterministicLanguageModelProtocol(v489 + 3224, v489 + 3344);
            v594 = swift_allocObject();

            v596 = specialized MaskedLanguageModel.init(_:_:)(v595, (v489 + 3344), v594);
            v589(v591, v590, v592);
            v597 = v596;

            v598 = Logger.logObject.getter();
            v599 = static os_log_type_t.default.getter();

            v600 = os_log_type_enabled(v598, v599);
            v601 = *(v489 + 4968);
            v602 = *(v489 + 4864);
            v603 = *(v489 + 4784);
            v769 = v597;
            if (v600)
            {
              v604 = swift_slowAlloc();
              v759 = swift_slowAlloc();
              *&v836 = v759;
              *v604 = 136446466;
              *(v489 + 4280) = v597;

              v605 = String.init<A>(describing:)();
              v607 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v605, v606, &v836);

              *(v604 + 4) = v607;
              *(v604 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v608 = dispatch thunk of CustomStringConvertible.description.getter();
              v610 = v609;
              v601(v602, v603);
              v611 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v608, v610, &v836);
              v597 = v769;

              *(v604 + 14) = v611;
              _os_log_impl(&dword_220940000, v598, v599, "Using draft language model %{public}s for request %{public}s", v604, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v759, -1, -1);
              MEMORY[0x223D90A10](v604, -1, -1);
            }

            else
            {

              v601(v602, v603);
            }

            *(v489 + 3448) = v798;
            *(v489 + 3456) = &protocol witness table for MaskedLanguageModel;
            *(v489 + 3424) = v597;

            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v489 + 3424, &v824, (v489 + 3384));
            __swift_destroy_boxed_opaque_existential_1(v489 + 3424);
            v612 = v774;
            v24 = v489;
            v613 = v792;
            if (v774 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol(v489 + 3384, v489 + 3464);
            }

            else
            {
              (*(v489 + 4952))(*(v489 + 4856), *(v489 + 4920), *(v489 + 4784));
              v614 = Logger.logObject.getter();
              v615 = static os_log_type_t.default.getter();
              v616 = os_log_type_enabled(v614, v615);
              v617 = *(v489 + 4968);
              v618 = v24[607];
              v619 = v24[598];
              if (v616)
              {
                v620 = swift_slowAlloc();
                v801 = swift_slowAlloc();
                *&v836 = v801;
                *v620 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                v621 = dispatch thunk of CustomStringConvertible.description.getter();
                v623 = v622;
                v617(v618, v619);
                v624 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v621, v623, &v836);
                v613 = v792;

                *(v620 + 4) = v624;
                *(v620 + 12) = 2050;
                v612 = v774;
                *(v620 + 14) = v774;
                *(v620 + 22) = 2050;
                *(v620 + 24) = v492;
                _os_log_impl(&dword_220940000, v614, v615, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v620, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v801);
                v24 = v814;
                MEMORY[0x223D90A10](v801, -1, -1);
                MEMORY[0x223D90A10](v620, -1, -1);
              }

              else
              {

                v617(v618, v619);
                v612 = v774;
              }

              v625 = (*(v24[639] + 88))(v24[640]);

              v626 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v612, v625);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 423), (v24 + 143));
              v627 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v628 = swift_allocObject();
              v629 = MEMORY[0x277D84F90];
              v628[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v628[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v629);
              outlined init with take of RandomNumberGenerator((v24 + 143), (v628 + 2));
              v628[7] = v492;
              v628[8] = v626;
              v24[436] = v627;
              v24[437] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[433] = v628;
            }

            v450 = v764;
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v824, v24 + 438);
            SamplingParameters.priorInferenceOutput.getter();
            if (v630)
            {
              v631 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v631, &v836);
              v632 = v836;
              v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
              v634 = swift_allocObject();
              *(v634 + 16) = v632;
              *(v634 + 32) = 2;
              v24[451] = v633;
              v24[452] = &protocol witness table for LookupLanguageModel<A>;

              v24[448] = v634;
            }

            else
            {
              v24[452] = 0;
              *(v24 + 224) = 0u;
              *(v24 + 225) = 0u;
            }

            v635 = v24[581];
            v636 = v24[538];
            v836 = v827;
            v837 = v828;
            v838[0] = v829;
            *&v838[1] = v830;
            *(&v838[1] + 1) = v612;
            *&v838[2] = v492;
            BYTE8(v838[2]) = v761;
            swift_beginAccess();
            v637 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v825, v636, v635);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 433), (v24 + 438), (v24 + 448), (v24 + 168), v637, v24 + 126);
            v802 = *(v613 + 711);
            v638 = *(v613 + 711);
            v639 = __swift_project_boxed_opaque_existential_1(v24 + 126, v638);
            *(v24 + 193) = v802;
            v640 = __swift_allocate_boxed_opaque_existential_1(v24 + 383);
            (*(*(v638 - 8) + 16))(v640, v639, v638);

            outlined destroy of [Int]((v24 + 52), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 438));
            __swift_destroy_boxed_opaque_existential_1((v24 + 423));
            __swift_destroy_boxed_opaque_existential_1((v24 + 403));
            outlined destroy of [Int]((v24 + 448), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 433));
            __swift_destroy_boxed_opaque_existential_1((v24 + 126));
            v451 = v786;
          }

          else
          {
            v573 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v814 + 2344, &v824, (v814 + 3664));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol(v814 + 1344, v814 + 3624);
            v574 = *(v814 + 3688);
            v575 = *(v814 + 3696);
            v576 = __swift_mutable_project_boxed_opaque_existential_1(v814 + 3664, v574);
            v577 = *(v574 - 8);
            v578 = swift_task_alloc();
            (*(v577 + 16))(v578, v576, v574);
            v579 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v578, (v814 + 3624), v573, v574, v575);
            __swift_destroy_boxed_opaque_existential_1(v814 + 3664);

            *(v814 + 3088) = v573;
            *(v814 + 3096) = &protocol witness table for BasicDecoder;
            *(v814 + 3064) = v579;
          }
        }

        else
        {
          v785 = v451;
          v455 = *(v814 + 4648) + *(*(v814 + 4632) + 36);
          v456 = *(v455 + 8);
          v457 = *(v455 + 64);
          if (v456 == 2)
          {
            v458 = 1;
          }

          else
          {
            v458 = v457;
          }

          (*(v814 + 4952))(*(v814 + 4872), *(v814 + 4920), *(v814 + 4784));
          v459 = Logger.logObject.getter();
          v460 = static os_log_type_t.default.getter();
          v461 = os_log_type_enabled(v459, v460);
          v462 = *(v814 + 4968);
          v463 = *(v814 + 4872);
          v464 = *(v814 + 4784);
          if (v461)
          {
            v465 = swift_slowAlloc();
            v800 = swift_slowAlloc();
            *&v836 = v800;
            *v465 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v778 = v458;
            v466 = dispatch thunk of CustomStringConvertible.description.getter();
            v794 = v460;
            v467 = v454;
            v468 = v450;
            v470 = v469;
            v462(v463, v464);
            v471 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v466, v470, &v836);
            v450 = v468;
            v454 = v467;

            *(v465 + 4) = v471;
            *(v465 + 12) = 2050;
            *(v465 + 14) = v467;
            *(v465 + 22) = 2050;
            v472 = v778;
            *(v465 + 24) = v778;
            _os_log_impl(&dword_220940000, v459, v794, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v465, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v800);
            MEMORY[0x223D90A10](v800, -1, -1);
            v473 = v465;
            v24 = v814;
            MEMORY[0x223D90A10](v473, -1, -1);
          }

          else
          {

            v462(v463, v464);
            v472 = v458;
          }

          v544 = v24[640];
          v545 = v24[639];
          swift_beginAccess();
          closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v824, v24 + 443);
          v546 = (*(v545 + 88))(v544, v545);

          v547 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v454, v546);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 443), (v24 + 398));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v548 = swift_allocObject();
          v549 = MEMORY[0x277D84F90];
          v548[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v548[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v549);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 199, (v548 + 2));
          v548[7] = v472;
          v548[8] = v547;
          v451 = v785;
          if (v472 < 1)
          {
            goto LABEL_259;
          }

          LOBYTE(v831) = 1;
          LOBYTE(v836) = 1;
          v24[106] = v454;
          *(v24 + 856) = 0;
          v24[108] = v472;
          v24[109] = 0;
          *(v24 + 880) = 1;
          *(v24 + 221) = 0;
          *(v24 + 888) = 1;
          *(v24 + 889) = 0;
          *(v24 + 223) = 0;
          *(v24 + 448) = 1;
          v24[113] = 0;
          v24[114] = 1;
          *(v24 + 920) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 363));
          v550 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v551 = swift_allocObject();

          v553 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v552, v24 + 106, v24 + 363, v551);
          v24[386] = v550;
          v24[387] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[383] = v553;
          __swift_destroy_boxed_opaque_existential_1((v24 + 443));
        }

        v430 = (v24 + 373);
        outlined destroy of [Int](v24[566], &_s15TokenGeneration11ConstraintsOSgMd);
        __swift_destroy_boxed_opaque_existential_1((v24 + 378));
        outlined init with take of RandomNumberGenerator((v24 + 383), v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
        *(v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v824;
        v24[376] = v450;
        v24[377] = &protocol witness table for TokenHealingDecoder;
        v24[373] = v451;
      }

      outlined init with take of RandomNumberGenerator(v430, (v24 + 183));
      v641 = v24[619];
      v642 = v24[615];
      v643 = v24[602];
      v644 = v24[598];
      outlined init with copy of DeterministicLanguageModelProtocol((v24 + 183), (v24 + 263));
      v641(v643, v642, v644);
      v645 = Logger.logObject.getter();
      v646 = static os_log_type_t.info.getter();
      v647 = os_log_type_enabled(v645, v646);
      v648 = v24[621];
      v649 = v24[602];
      v650 = v24[598];
      if (v647)
      {
        v651 = swift_slowAlloc();
        v652 = swift_slowAlloc();
        *&v836 = v652;
        *v651 = 136446466;
        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 2104, v814 + 2504);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd);
        v653 = String.init<A>(describing:)();
        v655 = v654;
        __swift_destroy_boxed_opaque_existential_1(v814 + 2104);
        v656 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v653, v655, &v836);

        *(v651 + 4) = v656;
        *(v651 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v657 = dispatch thunk of CustomStringConvertible.description.getter();
        v659 = v658;
        v648(v649, v650);
        v660 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v657, v659, &v836);

        *(v651 + 14) = v660;
        _os_log_impl(&dword_220940000, v645, v646, "Using decoder %{public}s for request %{public}s", v651, 0x16u);
        swift_arrayDestroy();
        v661 = v652;
        v24 = v814;
        MEMORY[0x223D90A10](v661, -1, -1);
        MEMORY[0x223D90A10](v651, -1, -1);
      }

      else
      {

        v648(v649, v650);
        __swift_destroy_boxed_opaque_existential_1((v24 + 263));
      }

      v662 = *(v24[632] + 16);

      v663 = 0;
      if (v662)
      {
        v664 = 32;
        while (1)
        {
          v665 = v24[544];
          outlined init with copy of DeterministicLanguageModelProtocol(v24[632] + v664, (v24 + 268));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
          v666 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
          v667 = swift_dynamicCast();
          v668 = *(v666 - 8);
          (*(v668 + 56))(v665, v667 ^ 1u, 1, v666);
          v669 = (*(v668 + 48))(v665, 1, v666);
          v24 = v814;
          LODWORD(v665) = v669;
          v143 = outlined destroy of [Int](*(v814 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          if (v665 != 1)
          {
            break;
          }

          ++v663;
          v664 += 40;
          if (v662 == v663)
          {
            v663 = v662;
            break;
          }
        }
      }

      v670 = v24[632];
      v671 = *(v670 + 16);
      if (v663 == v671)
      {
        v672 = v24[545];
        v673 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        (*(*(v673 - 8) + 56))(v672, 1, 1, v673);
LABEL_246:
        v682 = v24[577];
        v683 = *(v814 + 4600);
        v684 = *(v814 + 4360);
        v685 = *(v814 + 4328);

        v686 = v814;
        v687 = *(v682 + *(v683 + 28));

        v795 = SamplingParameters.useHighQualityImageTokenization.getter();
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v684, v685, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
        type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v688 = (*(*(v673 - 8) + 48))(v685, 1, v673);
        v689 = *(v814 + 4328);
        v803 = v687;
        if (v688 == 1)
        {
          outlined destroy of [Int](v689, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          v690 = 0;
        }

        else
        {
          v691 = *(v673 + 32);
          v692 = (v689 + *(v673 + 28));
          v694 = *v692;
          v693 = v692[1];
          v695 = v692[2];
          v765 = v695;
          v770 = *v692;
          v757 = v692[3];
          v696 = v692[4];
          v697 = v692[5];
          v698 = v692[6];
          v780 = *(v814 + 4328);
          v787 = *(v689 + v691);
          v699 = type metadata accessor for OnDeviceImagePreprocessor();
          v700 = swift_allocObject();
          type metadata accessor for ImageTokenizer();
          v775 = *(v780 + 16);
          v700[2] = v694;
          v700[3] = v693;
          v700[4] = v695;
          v700[5] = v757;
          v700[6] = v696;
          v700[7] = v697;
          v700[8] = v698;
          *(v814 + 2488) = v699;
          *(v814 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v814 + 2464) = v700;
          v690 = swift_allocObject();
          v701 = __swift_mutable_project_boxed_opaque_existential_1(v814 + 2464, v699);
          v702 = *(v699 - 8);
          v703 = swift_task_alloc();
          (*(v702 + 16))(v703, v701, v699);
          v704 = *v703;
          *(v690 + 40) = v699;
          *(v690 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v690 + 16) = v704;
          *(v690 + 56) = v770;
          *(v690 + 64) = v693;
          *(v690 + 72) = v765;
          *(v690 + 80) = v757;
          *(v690 + 88) = v696;
          *(v690 + 96) = v697;
          *(v690 + 104) = v698;
          *(v690 + 112) = v775;
          *(v690 + 128) = v787;
          swift_unknownObjectRetain();

          __swift_destroy_boxed_opaque_existential_1(v814 + 2464);

          outlined destroy of InferenceRequest(v780, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        }

        v758 = *(v814 + 5168);
        v705 = *(v814 + 5144);
        v788 = *(v814 + 412);
        v706 = *(v814 + 4648);
        v707 = *(v814 + 4632);
        v708 = *(v814 + 4616);
        v755 = *(v814 + 588);
        v756 = *(v814 + 4480);
        v709 = *(v814 + 4464);

        v796 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v710, v795 & 1, v690);

        outlined copy of ClassifierMetadata?(v809, v810);
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v809, v810, v805, v814 + 2344, v705, v814 + 128);

        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 1464, v814 + 2304);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v814 + 128, v814 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
        swift_beginAccess();
        v711 = *(v790 + 3);
        v838[0] = *(v790 + 2);
        v838[1] = v711;
        *(&v838[1] + 9) = *(v790 + 57);
        v712 = *(v790 + 1);
        v836 = *v790;
        v837 = v712;
        v713 = *(v708 + v788);
        v714 = *(v706 + v707[10]);
        v715 = *(v706 + v707[12]);
        v716 = (v706 + v707[17]);
        v717 = *v716;
        v718 = v716[1];
        v719 = v716[2];
        v720 = v716[3];
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v706 + v755, v709, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
        LODWORD(v706) = v758(v709, 1, v756);

        outlined copy of StopToken?(v717, v718, v719, v720);
        v791 = v714;
        v781 = v717;
        v789 = v715;
        v771 = v719;
        v776 = v718;
        v762 = v720;
        v766 = v713;
        if (v706 == 1)
        {
          v721 = *(v814 + 5168);
          v722 = *(v814 + 4520);
          v723 = *(v814 + 4488);
          v724 = *(v814 + 4480);
          v725 = *(v814 + 4464);
          v726 = *(v814 + 4360);
          static PromptPreprocessingTemplateVersion.default.getter();

          outlined destroy of [Int](v814 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
          outlined destroy of [Int](v726, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          __swift_destroy_boxed_opaque_existential_1(v814 + 1464);
          (*(v723 + 8))(v722, v724);
          v686 = v814;
          outlined destroy of [Int](v804, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          outlined destroy of [Int](v797, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          if (v721(v725, 1, v724) != 1)
          {
            outlined destroy of [Int](*(v814 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
          }
        }

        else
        {
          v727 = *(v814 + 4520);
          v728 = *(v814 + 4496);
          v729 = *(v814 + 4488);
          v730 = *(v814 + 4480);
          v731 = *(v814 + 4464);
          v732 = *(v814 + 4360);

          outlined destroy of [Int](v814 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
          outlined destroy of [Int](v732, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          __swift_destroy_boxed_opaque_existential_1(v814 + 1464);
          (*(v729 + 8))(v727, v730);
          outlined destroy of [Int](v804, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          outlined destroy of [Int](v797, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          (*(v729 + 32))(v728, v731, v730);
        }

        v733 = *(v686 + 643);
        v734 = *(v686 + 642);
        v735 = v686;
        v754 = *(v686 + 632);
        v736 = *(v686 + 621);
        v737 = *(v735 + 615);
        v738 = *(v735 + 598);
        v753 = *(v735 + 581);
        v751 = *(v735 + 577);
        v739 = *(v735 + 562);
        v740 = *(v735 + 561);
        v752 = *(v735 + 560);
        v741 = *(v735 + 540);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v751 + *(*(v735 + 575) + 44), v741, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
        *(v735 + 306) = v734;
        *(v735 + 307) = MEMORY[0x277D71E08];
        *(v735 + 303) = v733;
        v736(v737, v738);
        type metadata accessor for OnDeviceInferenceContext();
        v742 = swift_allocObject();
        v743 = v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
        *v743 = 0;
        *(v743 + 8) = 1;
        *(v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
        *(v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
        outlined init with take of RandomNumberGenerator(v735 + 144, v742 + 16);
        v744 = v735[3];
        *(v742 + 104) = v735[4];
        v745 = v735[6];
        *(v742 + 120) = v735[5];
        *(v742 + 136) = v745;
        *(v742 + 152) = v735[7];
        v746 = v735[2];
        *(v742 + 56) = v735[1];
        *(v742 + 72) = v746;
        *(v742 + 88) = v744;
        v747 = v837;
        *(v742 + 168) = v836;
        v748 = v838[0];
        v749 = v838[1];
        *(v742 + 225) = *(&v838[1] + 9);
        *(v742 + 216) = v749;
        *(v742 + 200) = v748;
        *(v742 + 184) = v747;
        *(v742 + 248) = v766;
        *(v742 + 304) = v803;
        outlined init with take of RandomNumberGenerator((v735 + 2424), v742 + 256);
        *(v742 + 296) = v754;
        *(v742 + 312) = v791;
        *(v742 + 320) = v789;
        *(v742 + 328) = v809;
        *(v742 + 336) = v810;
        *(v742 + 344) = v805;
        *(v742 + 352) = v781;
        *(v742 + 360) = v776;
        *(v742 + 368) = v771;
        *(v742 + 376) = v762;
        *(v742 + 384) = v796;
        (*(v740 + 32))(v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v739, v752);
        outlined init with take of Asset?(v741, v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
        outlined destroy of InferenceRequest(v751, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        __swift_destroy_boxed_opaque_existential_1((v735 + 84));
        __swift_destroy_boxed_opaque_existential_1(v735 + 2344);
        outlined destroy of InferenceRequest(v753, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

        v750 = *(v735 + 1);

        return v750(v742);
      }

      if (v663 < v671)
      {
        v674 = v24[543];
        v675 = v24[542];
        outlined init with copy of DeterministicLanguageModelProtocol(v670 + 40 * v663 + 32, (v24 + 273));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
        v673 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v676 = swift_dynamicCast();
        v677 = v24;
        v678 = *(v673 - 8);
        v679 = *(v678 + 56);
        v679(v674, v676 ^ 1u, 1, v673);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v674, v675, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
        v143 = (*(v678 + 48))(v675, 1, v673);
        if (v143 != 1)
        {
          v680 = v677[545];
          v681 = v677[543];
          _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v677[542], v680, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
          outlined destroy of [Int](v681, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          v679(v680, 0, 1, v673);
          v24 = v677;
          goto LABEL_246;
        }

LABEL_261:
        __break(1u);
        return MEMORY[0x2822009F8](v143, v144, v145);
      }

LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    v317 = v24;
    v318 = v313;
    v319 = v312;
    v320 = v317[552];
    SamplingParameters.strategy.getter();
    v321 = type metadata accessor for SamplingStrategy();
    v322 = *(v321 - 8);
    v323 = (*(v322 + 48))(v320, 1, v321);
    v324 = v317[554];
    if (v323 == 1)
    {
      outlined destroy of [Int](v317[552], &_s15TokenGeneration16SamplingStrategyVSgMd);
      v325 = type metadata accessor for SamplingStrategy.Choice();
      (*(*(v325 - 8) + 56))(v324, 1, 1, v325);
      outlined destroy of [Int](v324, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
    }

    else
    {
      v328 = v317[553];
      v329 = v317[552];
      SamplingStrategy.choice.getter();
      (*(v322 + 8))(v329, v321);
      v330 = type metadata accessor for SamplingStrategy.Choice();
      v331 = *(v330 - 8);
      (*(v331 + 56))(v324, 0, 1, v330);
      outlined init with take of Asset?(v324, v328, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
      v332 = (*(v331 + 88))(v328, v330);
      if (v332 == *MEMORY[0x277D71C40])
      {
        v333 = v317[553];
        (*(v331 + 96))(v333, v330);
        v334 = *v333;
        if (v318)
        {
          v335 = 0;
        }

        else
        {
          v335 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v814;
        *(&v837 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v838[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v836 = v335;
        v495 = type metadata accessor for NucleusSampling();
        swift_allocObject();
        v496 = NucleusSampling.init(p:temperature:generator:)(&v836, v334, v311);
        *(v814 + 2408) = v495;
        *(v814 + 2416) = &protocol witness table for NucleusSampling;
        *(v814 + 2384) = v496;
        v327 = (v814 + 2384);
        goto LABEL_141;
      }

      if (v332 == *MEMORY[0x277D71C48])
      {
        v431 = *(v814 + 4424);
        (*(v331 + 96))(v431, v330);
        v432 = *v431;
        if (v318)
        {
          v433 = 0;
        }

        else
        {
          v433 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v814;
        *(&v837 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v838[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v836 = v433;
        v561 = type metadata accessor for TopK();
        swift_allocObject();
        v562 = TopK.init(k:temperature:generator:)(v432, &v836, v311);
        *(v814 + 2608) = v561;
        *(v814 + 2616) = &protocol witness table for TopK;
        *(v814 + 2584) = v562;
        v327 = (v814 + 2584);
        goto LABEL_141;
      }

      if (v332 != *MEMORY[0x277D71C50])
      {
        (*(v331 + 8))(*(v814 + 4424), v330);
        if (v318)
        {
          v497 = 0;
        }

        else
        {
          v497 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v814;
        *(v814 + 2728) = &type metadata for SeedableRandomNumberGenerator;
        *(v814 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *(v814 + 2704) = v497;
        v341 = type metadata accessor for GreedySampling();
        v342 = swift_allocObject();
        v343 = (v814 + 2704);
        goto LABEL_150;
      }
    }

    if (v318)
    {
      v326 = 0;
    }

    else
    {
      v326 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v24 = v814;
    *(v814 + 1408) = &type metadata for SeedableRandomNumberGenerator;
    *(v814 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *(v814 + 1384) = v326;
    v341 = type metadata accessor for GreedySampling();
    v342 = swift_allocObject();
    v343 = (v814 + 1384);
LABEL_150:
    outlined init with take of RandomNumberGenerator(v343, v342 + 16);
    v24[171] = v341;
    v24[172] = &protocol witness table for GreedySampling;
    v24[168] = v342;
    goto LABEL_151;
  }

  v242 = v24[538];
  (*(v24[569] + 32))(v24[570], v24[567], v24[568]);
  v243 = swift_task_alloc();
  v24[644] = v243;
  *v243 = v24;
  v243[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  v244 = v24[581];
  v245 = v24[577];
  v246 = v24[570];

  return OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:)((v24 + 203), v246, v245, v244, v242 + 16);
}

{
  v1 = v0[626];
  v2 = v0[621];
  v3 = v0[615];
  v4 = v0[598];
  v5 = v0[597];
  v6 = v0[591];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  v7 = swift_allocError();
  v1(v8, v5, v6);
  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 138));
  v0[652] = MEMORY[0x277D84F90];
  v0[651] = v7;
  v9 = __swift_project_boxed_opaque_existential_1((v0[538] + 16), *(v0[538] + 40));
  v0[653] = v9;
  v10 = *v9;

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), v10, 0);
}

{
  v839 = v0;
  v798 = *(v0 + 5032);
  v1 = *(v0 + 4304);
  v809 = *(v0 + 4184);
  *(v0 + 5056) = v809;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v2 = off_283451310[0];
  *(v0 + 5064) = type metadata accessor for OnDeviceInferenceOverrides();
  v3 = v2();
  if (v4)
  {
    v5 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = v3;
  }

  *(v0 + 5072) = v7;
  v8 = *(v0 + 4288);
  v9 = *(*(v0 + 4688) + 20);
  *(v0 + 324) = v9;
  SamplingParameters.priorInferenceOutput.getter();
  v814 = v0;
  if (v10)
  {

    if (v7 >= 1)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_220940000, v11, v12, "Invalid speculation options. Cannot mix promptLookup and priorInferenceOutput options", v13, 2u);
        MEMORY[0x223D90A10](v13, -1, -1);
      }

      v815 = *(v0 + 4968);
      v14 = *(v0 + 4920);
      v15 = *(v0 + 4784);
      v16 = *(v0 + 4720);
      v17 = *(v0 + 4712);
      v18 = *(v0 + 4704);

      TokenGenerationError.Context.init(debugDescription:underlyingError:)();
      v19 = type metadata accessor for TokenGenerationError();
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
      v20 = swift_allocError();
      v22 = v21;
      (*(v17 + 16))(v21, v16, v18);
      (*(*(v19 - 8) + 104))(v22, *MEMORY[0x277D71AE0], v19);
      swift_willThrow();
      v23 = v18;
      v24 = v0;
      (*(v17 + 8))(v16, v23);
      v815(v14, v15);
      goto LABEL_94;
    }
  }

  v797 = v9;
  v804 = v8;
  v805 = v7;
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 4288), *(v0 + 4696), type metadata accessor for InferenceRequest);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v836 = v28;
    *v27 = 136315650;
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v29 = v2();
    if (v30)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
      v33 = v814;
    }

    else
    {
      v33 = v814;
      *(v814 + 4272) = v29;
      lazy protocol witness table accessor for type Int and conformance Int();
      v32 = BinaryInteger.description.getter();
      v31 = v47;
    }

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v836);

    *(v27 + 4) = v48;
    *(v27 + 12) = 2080;
    v49 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v50)
    {
      v51 = 0xE300000000000000;
      v36 = v809;
      v52 = 7104878;
    }

    else
    {
      v33[533] = v49;
      lazy protocol witness table accessor for type Int and conformance Int();
      v52 = BinaryInteger.description.getter();
      v51 = v53;
      v36 = v809;
    }

    outlined destroy of InferenceRequest(v33[587], type metadata accessor for InferenceRequest);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v836);

    *(v27 + 14) = v54;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v805;
    _os_log_impl(&dword_220940000, v25, v26, "inferenceOverrides.promptLookupDraftSteps = %s, request.parameters.promptLookupDraftSteps = %s, promptLookupDraftSteps = %ld", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v28, -1, -1);
    MEMORY[0x223D90A10](v27, -1, -1);

    v24 = v33;
    v37 = *(v36 + 16);
    if (!v37)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v34 = *(v0 + 4696);

    v35 = outlined destroy of InferenceRequest(v34, type metadata accessor for InferenceRequest);
    v24 = v0;
    v36 = v809;
    v37 = *(v809 + 16);
    if (!v37)
    {
LABEL_30:
      v816 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }
  }

  v38 = v24[580];
  v39 = v36 + 32;
  v816 = MEMORY[0x277D84F90];
  do
  {
    v40 = v24[579];
    v41 = v24[578];
    outlined init with copy of DeterministicLanguageModelProtocol(v39, (v24 + 413));
    outlined init with take of RandomNumberGenerator((v24 + 413), (v24 + 393));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v42 = swift_dynamicCast();
    (*(v38 + 56))(v41, v42 ^ 1u, 1, v40);
    if ((*(v38 + 48))(v41, 1, v40) == 1)
    {
      v35 = outlined destroy of [Int](v24[578], &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
    }

    else
    {
      _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v24[578], v24[585], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v43 = v816;
      }

      else
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v816[2] + 1, 1, v816);
      }

      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v43);
      }

      v46 = v24[585];
      v43[2] = v45 + 1;
      v816 = v43;
      v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v46, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v45, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    v39 += 40;
    --v37;
  }

  while (v37);
LABEL_31:
  v55 = v816;
  v56 = v816[2];
  if (v56)
  {
    v57 = 0;
    v58 = v24[584] + 8;
    v59 = v24[580];
    v60 = v24[579];
    v61 = MEMORY[0x277D84F90];
    v810 = v58;
    while (v57 < v55[2])
    {
      v62 = v24[584];
      v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v64 = v24;
      v65 = *(v59 + 72);
      outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v55 + v63 + v65 * v57, v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      v66 = v64[584];
      if (*(v58 + *(v60 + 36)) == 2)
      {
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v66, v64[583], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v836 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1);
          v61 = v836;
        }

        v69 = v61[2];
        v68 = v61[3];
        if (v69 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1);
          v61 = v836;
        }

        v70 = *(v814 + 4664);
        v61[2] = v69 + 1;
        v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v70, v61 + v63 + v69 * v65, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        v58 = v810;
      }

      else
      {
        v35 = outlined destroy of InferenceRequest(v66, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      }

      ++v57;
      v24 = v814;
      v55 = v816;
      if (v56 == v57)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_140;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_43:
  if (v805 > 0 || (v71 = SamplingParameters.speculativeDecoding.getter(), v71 == 2))
  {
    if (!v56)
    {
      v76 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
    if (!v56 || (v71 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v72 = v24[580];
  v811 = v24[579];
  v73 = v24[582] + *(v811 + 36);
  v74 = v816 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v75 = *(v72 + 72);
  v76 = MEMORY[0x277D84F90];
  do
  {
    outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v74, v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v77 = *(v73 + 8);
    v78 = v24[582];
    if (v77 == 2)
    {
      outlined destroy of InferenceRequest(v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    else
    {
      v79 = *v73;
      v80 = *(v73 + 32);
      v831 = *(v73 + 16);
      v832 = v80;
      *v833 = *(v73 + 48);
      *&v833[9] = *(v73 + 57);
      v81 = *(v78 + *(v811 + 32));

      outlined destroy of InferenceRequest(v78, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
      }

      v83 = v76[2];
      v82 = v76[3];
      v84 = v76;
      if (v83 >= v82 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v76);
      }

      *(v838 + 9) = *&v833[9];
      v837 = v832;
      v838[0] = *v833;
      v836 = v831;
      v84[2] = v83 + 1;
      v76 = v84;
      v85 = &v84[11 * v83];
      v85[4] = v81;
      v85[5] = v79;
      v85[6] = v77;
      v86 = v836;
      v87 = v837;
      v88 = v838[0];
      *(v85 + 97) = *(v838 + 9);
      *(v85 + 11) = v88;
      *(v85 + 9) = v87;
      *(v85 + 7) = v86;
      v24 = v814;
    }

    v74 += v75;
    --v56;
  }

  while (v56);
LABEL_56:
  if (v61[2])
  {

    v89 = v61;
  }

  else
  {

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = v24[617];
      v93 = v24[616];
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v836 = v95;
      *v94 = 136446210;
      *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, &v836);
      _os_log_impl(&dword_220940000, v90, v91, "Using draft model as target model for %{public}s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x223D90A10](v95, -1, -1);
      MEMORY[0x223D90A10](v94, -1, -1);
    }

    v76 = MEMORY[0x277D84F90];
    v89 = v816;
  }

  v24[636] = v76;
  v24[635] = v89;
  v812 = v76;
  if (!v89[2])
  {
    v120 = v24[619];
    v121 = v24[615];
    v122 = v24[600];
    v123 = v24[598];

    v120(v122, v121, v123);

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v24[621];
    if (v126)
    {
      v817 = v24[617];
      v806 = v24[616];
      v128 = v24[600];
      v129 = v24[598];
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v836 = v131;
      *v130 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      v127(v128, v129);
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v836);

      *(v130 + 4) = v135;
      *(v130 + 12) = 2082;
      *(v130 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v806, v817, &v836);
      _os_log_impl(&dword_220940000, v124, v125, "Failed to create inference context for request %{public}s, inference runner not loaded for asset bundle %{public}s", v130, 0x16u);
      swift_arrayDestroy();
      v136 = v131;
      v24 = v814;
      MEMORY[0x223D90A10](v136, -1, -1);
      MEMORY[0x223D90A10](v130, -1, -1);
    }

    else
    {
      v185 = v24[600];
      v186 = v24[598];

      v127(v185, v186);
    }

    v187 = v24[621];
    v188 = v24[617];
    v189 = v24[616];
    v190 = v24[615];
    v191 = v24[598];
    v192 = *(v814 + 4720);
    v193 = *(v814 + 4712);
    v194 = *(v814 + 4704);
    *&v836 = 0;
    *(&v836 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    *&v836 = 0xD000000000000022;
    *(&v836 + 1) = 0x8000000220AFD700;
    MEMORY[0x223D8E780](v189, v188);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v195 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v20 = swift_allocError();
    v197 = v196;
    (*(v193 + 16))(v196, v192, v194);
    (*(*(v195 - 8) + 104))(v197, *MEMORY[0x277D71AF0], v195);
    swift_willThrow();
    v198 = v192;
    v24 = v814;
    (*(v193 + 8))(v198, v194);
    v187(v190, v191);
    goto LABEL_93;
  }

  v96 = v24[621];
  v97 = v24[613];
  v98 = v24[599];
  v99 = v76;
  v100 = v24[598];
  v101 = v24[581];
  v102 = v24[579];
  v103 = *(v24[580] + 80);
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v89 + ((v103 + 32) & ~v103), v101, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v104 = UUID.uuidString.getter();
  v106 = v105;
  v24[637] = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96(v97, v100);
  v107 = *(v102 + 28);
  v108 = v104;
  v109 = (v101 + v107);
  v24[638] = *v109;
  v110 = v109[1];
  v24[639] = v110;
  ObjectType = swift_getObjectType();
  v24[640] = ObjectType;
  (*(v110 + 120))(v104, v106, ObjectType, v110);
  if (v99[2])
  {
    v112 = *(v99[4] + 48);
    v113 = swift_getObjectType();
    v114 = *(v112 + 120);
    swift_unknownObjectRetain();
    v114(v104, v106, v113, v112);
    swift_unknownObjectRelease();
  }

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&v836 = v118;
    *v117 = 136446210;
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v106, &v836);

    *(v117 + 4) = v119;
    _os_log_impl(&dword_220940000, v115, v116, "Setting E5Runner telemetry identifier to %{public}s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x223D90A10](v118, -1, -1);
    MEMORY[0x223D90A10](v117, -1, -1);
  }

  else
  {
  }

  v137 = v24[576];
  v138 = v809;
  v139 = *(v809 + 16);
  v140 = v809 + 32;
  v141 = (v137 + 56);
  v142 = (v137 + 48);

  v146 = 0;
  if (v139)
  {
    v147 = v809 + 32;
    while (1)
    {
      v148 = v24[575];
      v149 = v24[573];
      outlined init with copy of DeterministicLanguageModelProtocol(v147, (v24 + 388));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v150 = swift_dynamicCast();
      (*v141)(v149, v150 ^ 1u, 1, v148);
      LODWORD(v149) = (*v142)(v149, 1, v148);
      v143 = outlined destroy of [Int](v24[573], &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
      if (v149 != 1)
      {
        break;
      }

      ++v146;
      v147 += 40;
      if (v139 == v146)
      {
        v146 = v139;
        break;
      }
    }

    v138 = v809;
    v140 = v809 + 32;
  }

  v151 = *(v138 + 16);
  if (v146 == v151)
  {
    (*v141)(v24[574], 1, 1, v24[575]);

    v152 = *v142;
  }

  else
  {
    if (v146 >= v151)
    {
      __break(1u);
      goto LABEL_257;
    }

    v153 = v140;
    v154 = v24[575];
    v155 = v24[572];
    v156 = v24[571];
    outlined init with copy of DeterministicLanguageModelProtocol(v153 + 40 * v146, (v24 + 333));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v157 = swift_dynamicCast();
    v158 = v24;
    v159 = *v141;
    (*v141)(v155, v157 ^ 1u, 1, v154);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v155, v156, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    v152 = *v142;
    v143 = (*v142)(v156, 1, v154);
    if (v143 == 1)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v160 = v158[575];
    v161 = v158[574];
    v162 = v158[572];
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v158[571], v161, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    outlined destroy of [Int](v162, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    v159(v161, 0, 1, v160);

    v24 = v158;
  }

  v163 = v24[575];
  v164 = v24[574];
  if (v152(v164, 1, v163) == 1)
  {
    v165 = v24[619];
    v166 = v24[615];
    v167 = v24[601];
    v168 = v24[598];

    outlined destroy of [Int](v164, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
    v165(v167, v166, v168);

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();

    v171 = os_log_type_enabled(v169, v170);
    v172 = v24[621];
    if (v171)
    {
      v818 = v24[617];
      v807 = v24[616];
      v173 = v24[601];
      v174 = v24[598];
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v836 = v176;
      *v175 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v177 = dispatch thunk of CustomStringConvertible.description.getter();
      v179 = v178;
      v172(v173, v174);
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v179, &v836);

      *(v175 + 4) = v180;
      *(v175 + 12) = 2082;
      *(v175 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v807, v818, &v836);
      _os_log_impl(&dword_220940000, v169, v170, "Failed to create inference context for request %{public}s, tokenizer not loaded for asset bundle %{public}s", v175, 0x16u);
      swift_arrayDestroy();
      v181 = v176;
      v24 = v814;
      MEMORY[0x223D90A10](v181, -1, -1);
      MEMORY[0x223D90A10](v175, -1, -1);
    }

    else
    {
      v199 = v24[601];
      v200 = v24[598];

      v172(v199, v200);
    }

    v201 = v24[621];
    v202 = v24[617];
    v203 = v24[616];
    v204 = v24[615];
    v205 = *(v814 + 4784);
    v206 = *(v814 + 4720);
    v207 = *(v814 + 4712);
    v208 = *(v814 + 4704);
    v209 = *(v814 + 4648);
    *&v836 = 0;
    *(&v836 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    *&v836 = 0xD00000000000001CLL;
    *(&v836 + 1) = 0x8000000220AFD6E0;
    MEMORY[0x223D8E780](v203, v202);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v210 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    v20 = swift_allocError();
    v212 = v211;
    (*(v207 + 16))(v211, v206, v208);
    (*(*(v210 - 8) + 104))(v212, *MEMORY[0x277D71AF0], v210);
    swift_willThrow();
    (*(v207 + 8))(v206, v208);
    v213 = v205;
    v24 = v814;
    v201(v204, v213);
    v214 = v209;
    goto LABEL_92;
  }

  v182 = v24 + 321;
  v183 = v24[577];

  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v164, v183, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v184 = *(v163 + 24);
  *(v24 + 103) = v184;
  v24[641] = *(v183 + v184);
  if (!*(v183 + *(v163 + 36)))
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:));
    outlined destroy of [Int](&unk_28344E320, &_sSS_SStMd);
  }

  v217 = v24[581];
  v218 = v24[579];
  v24[642] = type metadata accessor for TokenIDToTextConverter();
  swift_allocObject();

  v24[643] = TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)();
  v219 = *(v217 + *(v218 + 32));
  if (v812[2])
  {
    v24[281] = type metadata accessor for E5TransformerLanguageModel();
    v24[282] = &protocol witness table for E5TransformerLanguageModel;
    v24[278] = v219;
  }

  else
  {
    v248 = v24[615];
    v24[196] = type metadata accessor for E5TransformerLanguageModel();
    v24[197] = &protocol witness table for E5TransformerLanguageModel;
    v24[193] = v219;

    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 193), v805, v248, (v24 + 198));
    __swift_destroy_boxed_opaque_existential_1((v24 + 193));
    addPriorOutputSpeculation #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 198), v24 + 278);
    if (v798)
    {
      v20 = v798;
      v249 = v24[621];
      v250 = v24[615];
      v251 = v24[598];
      v252 = v24[581];
      v253 = v24[577];

      __swift_destroy_boxed_opaque_existential_1((v24 + 198));
      v249(v250, v251);
      outlined destroy of InferenceRequest(v253, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      v214 = v252;
LABEL_92:
      outlined destroy of InferenceRequest(v214, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
LABEL_93:

LABEL_94:
      v215 = v809;
      goto LABEL_95;
    }

    __swift_destroy_boxed_opaque_existential_1((v24 + 198));
    v798 = 0;
    v182 = v24 + 321;
  }

  v220 = (v24 + 253);
  v221 = v24[586];
  v222 = v24[569];
  v223 = v24[568];
  v224 = v24[567];
  v225 = v24[536];
  outlined init with take of RandomNumberGenerator(v24 + 139, (v24 + 293));
  *(v24 + 253) = 0u;
  *(v24 + 255) = 0u;
  v24[257] = 0;
  v226 = *(v221 + 28);
  *(v24 + 125) = v226;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v225 + v226, v224, &_s15TokenGeneration11ConstraintsOSgMd);
  if ((*(v222 + 48))(v224, 1, v223) == 1)
  {
    v227 = (v24 + 218);
    outlined destroy of [Int](v24[567], &_s15TokenGeneration11ConstraintsOSgMd);
    v228 = v24[593];
    v229 = v24[586];
    v230 = v24[536];
    *(v24 + 109) = 0u;
    *(v24 + 110) = 0u;
    v24[222] = 0;
    v231 = _s24TokenGenerationInference08OnDeviceC14ContextFactoryC14supportedTools33_6E70D024FF4C54BC34814633D058F7394fromSay29GenerativeFunctionsFoundation4ToolV8FunctionVGSay0aB00U11DescriptionVG_t20ModelManagerServices0C5ErrorOYKF(*(v230 + *(v229 + 24)), v228);
    if (v798)
    {
      v808 = v24[621];
      v232 = *(v814 + 4920);
      v233 = v227;
      v234 = *(v814 + 4784);
      v235 = *(v814 + 4744);
      v236 = *(v814 + 4736);
      v237 = v220;
      v238 = *(v814 + 4728);
      v813 = *(v814 + 4648);
      v239 = *(v814 + 4616);

      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
      v20 = swift_allocError();
      (*(v236 + 32))(v240, v235, v238);

      outlined destroy of [Int](v233, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      outlined destroy of [Int](v237, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      v241 = v232;
      v24 = v814;
      v808(v241, v234);
      outlined destroy of InferenceRequest(v239, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      __swift_destroy_boxed_opaque_existential_1(v814 + 2344);
      outlined destroy of InferenceRequest(v813, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

      v215 = *(v814 + 5056);
LABEL_95:
      v24[652] = v215;
      v24[651] = v20;
      v216 = __swift_project_boxed_opaque_existential_1((v24[538] + 16), *(v24[538] + 40));
      v24[653] = v216;
      v144 = *v216;
      v143 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v145 = 0;

      return MEMORY[0x2822009F8](v143, v144, v145);
    }

    v254 = v231;
    v255 = v24[581];
    v256 = v24[561];
    v257 = v24[560];
    v258 = v24[559];
    v259 = *(v24[579] + 72);
    *(v24 + 147) = v259;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v255 + v259, v258, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    v260 = *(v256 + 48);
    v24[646] = v260;
    v24[647] = (v256 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v261 = v260(v258, 1, v257);
    v262 = v24[565];
    v263 = v24[561];
    v264 = v24[560];
    v265 = v24[559];
    v804 = (v24 + 218);
    v792 = v182;
    if (v261 == 1)
    {
      (*(v263 + 104))(v262, *MEMORY[0x277D71EC8], v264);
      if (v260(v265, 1, v264) != 1)
      {
        outlined destroy of [Int](v24[559], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
      }
    }

    else
    {
      (*(v263 + 32))(v262, v265, v264);
    }

    v266 = v24;
    __swift_project_boxed_opaque_existential_1((v266[538] + 56), *(v266[538] + 80));
    v267 = off_283451338();
    v24[648] = specialized static OnDeviceInferenceContextFactory.startToolCallTokenIntValue(startToolCallTokenOverride:tokenizer:version:)(v267, v268 & 1);
    if (v254[2])
    {
      (*(v24[561] + 104))(v24[564], *MEMORY[0x277D71ED0], v24[560]);
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v24[525] == v24[529] && v24[526] == v24[530])
      {
        v269 = 1;
      }

      else
      {
        v269 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v266 = v814;
      (*(*(v814 + 4488) + 8))(*(v814 + 4512), *(v814 + 4480));

      if (v269)
      {
        (*(*(v814 + 4488) + 16))(*(v814 + 4504), *(v814 + 4520), *(v814 + 4480));
        Grammar.init(tools:version:)();
        *(v814 + 5192) = 0;
        v336 = *(v814 + 4304);
        v337 = swift_task_alloc();
        *(v814 + 5200) = v337;
        *v337 = v814;
        v337[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
        v338 = *(v814 + 4648);
        v339 = *(v814 + 4616);
        v340 = *(v814 + 4456);

        return OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(v814 + 1944, v340, v339, v338, v336 + 16);
      }
    }

    v270 = v266[648];
    v271 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v220, (v266 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v804, (v266 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    type metadata accessor for ToolCallLanguageModel();
    v272 = swift_allocObject();
    v272[2] = 0;
    v272[3] = v270;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v272 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v272 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v819 = v272;
    v272[4] = v271;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd);
    v273 = swift_allocObject();
    v782 = xmmword_220AE8A30;
    *(v273 + 16) = xmmword_220AE8A30;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v274 = v266[151];
    v24 = v266;
    if (v274)
    {
      v275 = v266[152];
      __swift_project_boxed_opaque_existential_1(v266 + 148, v266[151]);
      v276 = (*(v275 + 8))(v274, v275);
      __swift_destroy_boxed_opaque_existential_1((v266 + 148));
    }

    else
    {
      outlined destroy of [Int]((v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      v276 = 0;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v277 = v266[156];
    v797 = v220;
    if (v277)
    {
      v278 = v266[157];
      __swift_project_boxed_opaque_existential_1(v266 + 153, v277);
      v279 = (*(v278 + 8))(v277, v278);
      __swift_destroy_boxed_opaque_existential_1((v266 + 153));
    }

    else
    {
      outlined destroy of [Int]((v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      v279 = 0;
    }

    v280 = v277 == 0;
    v281 = v274 == 0;
    v282 = v266[619];
    v283 = v266[615];
    v284 = v266[612];
    v285 = v24[598];
    v286 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v273 + 32) = v276;
    *(v273 + 40) = v281;
    *(v273 + 48) = v279;
    *(v273 + 56) = v280;
    *(v273 + 57) = 2;
    *(v273 + 64) = v286;
    outlined destroy of [Int]((v24 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined destroy of [Int]((v24 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v819[5] = v273;
    outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 163));
    v287 = type metadata accessor for MaskedLanguageModel();
    v288 = swift_allocObject();

    v290 = specialized MaskedLanguageModel.init(_:_:)(v289, v24 + 163, v288);
    v24[161] = v287;
    v24[162] = &protocol witness table for MaskedLanguageModel;
    v24[158] = v290;
    __swift_destroy_boxed_opaque_existential_1((v24 + 293));
    outlined init with take of RandomNumberGenerator(v24 + 79, (v24 + 293));
    v282(v284, v283, v285);
    v291 = Logger.logObject.getter();
    v292 = static os_log_type_t.default.getter();
    v293 = os_log_type_enabled(v291, v292);
    v294 = v24[621];
    v295 = v24[612];
    v296 = v24[598];
    v798 = v287;
    if (v293)
    {
      v297 = swift_slowAlloc();
      v298 = swift_slowAlloc();
      *&v836 = v298;
      *v297 = 136446466;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v814 + 2344, v814 + 2064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd);
      v299 = String.init<A>(describing:)();
      v301 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v299, v300, &v836);

      *(v297 + 4) = v301;
      *(v297 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v302 = dispatch thunk of CustomStringConvertible.description.getter();
      v304 = v303;
      v294(v295, v296);
      v305 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v302, v304, &v836);

      *(v297 + 14) = v305;
      _os_log_impl(&dword_220940000, v291, v292, "Using base language model %{public}s for request %{public}s", v297, 0x16u);
      swift_arrayDestroy();
      v306 = v298;
      v24 = v814;
      MEMORY[0x223D90A10](v306, -1, -1);
      MEMORY[0x223D90A10](v297, -1, -1);
    }

    else
    {

      v294(v295, v296);
    }

    v307 = v24[581];
    v308 = v24[579];
    v309 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
    if (v310)
    {
      v311 = 1.0;
    }

    else
    {
      v311 = v309;
    }

    v312 = SamplingParameters.randomSeed.getter();
    v314 = (v307 + *(v308 + 64));
    v316 = *v314;
    v315 = v314[1];
    v805 = v314[2];
    v810 = v315;
    v809 = *v314;
    if (v315)
    {
      v59 = type metadata accessor for ClassificationSampling();
      swift_allocObject();

      v35 = ClassificationSampling.init(defaultClass:outputClasses:)(v316, v315);
LABEL_140:
      v24[286] = v59;
      v24[287] = &protocol witness table for ClassificationSampling;
      v24[283] = v35;
      v327 = (v24 + 283);
LABEL_141:
      outlined init with take of RandomNumberGenerator(v327, (v24 + 168));
LABEL_151:
      (v24[619])(v24[611], v24[615], v24[598]);
      v344 = Logger.logObject.getter();
      v345 = static os_log_type_t.info.getter();
      v346 = os_log_type_enabled(v344, v345);
      v347 = v24[621];
      v348 = v24[611];
      v349 = v24[598];
      if (v346)
      {
        v350 = swift_slowAlloc();
        v351 = swift_slowAlloc();
        *&v836 = v351;
        *v350 = 136446466;
        swift_beginAccess();
        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 1344, v814 + 2824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd);
        v352 = String.init<A>(describing:)();
        v354 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v352, v353, &v836);

        *(v350 + 4) = v354;
        *(v350 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v355 = dispatch thunk of CustomStringConvertible.description.getter();
        v357 = v356;
        v347(v348, v349);
        v358 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v355, v357, &v836);

        *(v350 + 14) = v358;
        _os_log_impl(&dword_220940000, v344, v345, "Using sampling %{public}s for request %{public}s", v350, 0x16u);
        swift_arrayDestroy();
        v359 = v351;
        v24 = v814;
        MEMORY[0x223D90A10](v359, -1, -1);
        MEMORY[0x223D90A10](v350, -1, -1);
      }

      else
      {

        v347(v348, v349);
      }

      v790 = v24 + 96;
      *(v24 + 48) = xmmword_220AED900;
      *(v24 + 49) = 0u;
      *(v24 + 50) = 0u;
      *(v24 + 51) = 0u;
      *(v24 + 825) = 0u;
      v360 = SamplingParameters.tokenHealing.getter();
      if (v360 == 2 || (v360 & 1) == 0)
      {
        (v24[619])(v24[606], v24[615], v24[598]);
        v374 = Logger.logObject.getter();
        v375 = static os_log_type_t.default.getter();
        v376 = os_log_type_enabled(v374, v375);
        v377 = v24[621];
        v378 = v24[606];
        v379 = v24[598];
        v793 = v24 + 188;
        if (v376)
        {
          v380 = swift_slowAlloc();
          v381 = swift_slowAlloc();
          *&v836 = v381;
          *v380 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v382 = dispatch thunk of CustomStringConvertible.description.getter();
          v384 = v383;
          v377(v378, v379);
          v385 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v382, v384, &v836);

          *(v380 + 4) = v385;
          _os_log_impl(&dword_220940000, v374, v375, "Not using token healing for request %{public}s", v380, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v381);
          v386 = v381;
          v24 = v814;
          MEMORY[0x223D90A10](v386, -1, -1);
          MEMORY[0x223D90A10](v380, -1, -1);
        }

        else
        {

          v377(v378, v379);
        }

        v387 = v24[581];
        v388 = v24[579];
        v825 = 0;
        v826 = 1;
        v389 = *(v387 + *(v388 + 44));
        if (v389 < 1)
        {
          v408 = v24[636];
          if (*(v408 + 16))
          {
            v409 = v24[549];
            v410 = v24[548];
            v411 = v24[546];
            v412 = *(v408 + 48);
            *(v24 + 85) = *(v408 + 32);
            *(v24 + 87) = v412;
            v414 = *(v408 + 80);
            v413 = *(v408 + 96);
            v415 = *(v408 + 64);
            *(v24 + 760) = *(v408 + 112);
            *(v24 + 91) = v414;
            *(v24 + 93) = v413;
            *(v24 + 89) = v415;
            v763 = v24[85];
            v416 = (v24 + 86);
            v784 = (v24 + 85);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v24 + 85), (v24 + 74), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            SamplingParameters.speculationParameters.getter();
            if ((*(v409 + 48))(v411, 1, v410) == 1)
            {
              outlined destroy of [Int](v24[546], &_s15TokenGeneration21SpeculationParametersVSgMd);
              v820 = *v416;
              v821 = *(v24 + 44);
              v822 = *(v24 + 45);
              v823 = v24[92];
              v417 = v24[93];
              v418 = v24[94];
              v419 = *(v24 + 760);
            }

            else
            {
              (*(v24[549] + 32))(v24[550], v24[546], v24[548]);
              v498 = Logger.logObject.getter();
              v499 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v498, v499))
              {
                v500 = swift_slowAlloc();
                *v500 = 0;
                _os_log_impl(&dword_220940000, v498, v499, "Overriding default speculation behavior from sampling parameters", v500, 2u);
                MEMORY[0x223D90A10](v500, -1, -1);
              }

              v24 = v814;
              v501 = *(v814 + 4400);
              v502 = *(v814 + 4392);
              v503 = *(v814 + 4384);

              v504 = v416[3];
              v838[0] = v416[2];
              v838[1] = v504;
              *(&v838[1] + 9) = *(v416 + 57);
              v505 = v416[1];
              v836 = *v416;
              v837 = v505;
              DraftingBehavior.updated(with:)(&v831);
              (*(v502 + 8))(v501, v503);
              v820 = v831;
              v821 = v832;
              v822 = *v833;
              v417 = *&v833[24];
              v823 = *&v833[16];
              v418 = v834;
              v419 = v835;
            }

            v506 = v24[634];
            v507 = v24[619];
            v508 = v24[615];
            v509 = v24[604];
            v510 = v24[598];
            swift_beginAccess();
            *v790 = v820;
            *(v790 + 1) = v821;
            *(v790 + 2) = v822;
            v790[6] = v823;
            v779 = v417;
            v24[103] = v417;
            v773 = v418;
            v24[104] = v418;
            v768 = v419;
            *(v24 + 840) = v419;
            v24[216] = type metadata accessor for E5TransformerLanguageModel();
            v24[217] = &protocol witness table for E5TransformerLanguageModel;
            v24[213] = v763;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v784, (v24 + 63), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 213), v506, v508, (v24 + 208));
            __swift_destroy_boxed_opaque_existential_1((v24 + 213));
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 208), (v24 + 223));
            v511 = v798;
            v512 = swift_allocObject();

            v514 = specialized MaskedLanguageModel.init(_:_:)(v513, v24 + 223, v512);
            v507(v509, v508, v510);

            v515 = Logger.logObject.getter();
            v516 = static os_log_type_t.default.getter();

            v517 = os_log_type_enabled(v515, v516);
            v518 = v24[621];
            v519 = v24[604];
            v520 = v24[598];
            if (v517)
            {
              v521 = swift_slowAlloc();
              v760 = swift_slowAlloc();
              *&v836 = v760;
              *v521 = 136446466;
              v24[531] = v514;

              v522 = String.init<A>(describing:)();
              v524 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v522, v523, &v836);

              *(v521 + 4) = v524;
              *(v521 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v525 = dispatch thunk of CustomStringConvertible.description.getter();
              v527 = v526;
              v518(v519, v520);
              v528 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v525, v527, &v836);
              v511 = v798;

              *(v521 + 14) = v528;
              _os_log_impl(&dword_220940000, v515, v516, "Using draft language model %{public}s for request %{public}s", v521, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v760, -1, -1);
              MEMORY[0x223D90A10](v521, -1, -1);
            }

            else
            {

              v518(v519, v520);
            }

            v24[231] = v511;
            v24[232] = &protocol witness table for MaskedLanguageModel;
            v24[228] = v514;
            v529 = v779;
            if (v779 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 233));

              v542 = v773;
            }

            else
            {
              (v24[619])(v24[603], v24[615], v24[598]);

              v530 = Logger.logObject.getter();
              v531 = static os_log_type_t.default.getter();
              v532 = os_log_type_enabled(v530, v531);
              v533 = v24[621];
              v534 = v24[603];
              v535 = v24[598];
              if (v532)
              {
                v536 = swift_slowAlloc();
                v537 = swift_slowAlloc();
                *&v836 = v537;
                *v536 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                v538 = dispatch thunk of CustomStringConvertible.description.getter();
                v540 = v539;
                v533(v534, v535);
                v541 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v538, v540, &v836);
                v529 = v779;

                *(v536 + 4) = v541;
                *(v536 + 12) = 2050;
                *(v536 + 14) = v779;
                *(v536 + 22) = 2050;
                v542 = v773;
                *(v536 + 24) = v773;
                _os_log_impl(&dword_220940000, v530, v531, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v536, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v537);
                v543 = v537;
                v24 = v814;
                MEMORY[0x223D90A10](v543, -1, -1);
                MEMORY[0x223D90A10](v536, -1, -1);
              }

              else
              {

                v533(v534, v535);
                v542 = v773;
              }

              v554 = (*(v24[639] + 88))(v24[640]);

              v555 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v529, v554);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 318));
              v556 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v557 = swift_allocObject();
              v558 = MEMORY[0x277D84F90];
              v557[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v557[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v558);
              outlined init with take of RandomNumberGenerator(v24 + 159, (v557 + 2));
              v557[7] = v542;
              v557[8] = v555;
              v24[236] = v556;
              v24[237] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[233] = v557;
            }

            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 238));
            SamplingParameters.priorInferenceOutput.getter();
            if (v559)
            {
              v560 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v560, &v836);
              v563 = v836;
              v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
              v565 = swift_allocObject();
              *(v565 + 16) = v563;
              *(v565 + 32) = 2;
              v24[251] = v564;
              v24[252] = &protocol witness table for LookupLanguageModel<A>;

              v24[248] = v565;
            }

            else
            {
              v24[252] = 0;
              *(v24 + 124) = 0u;
              *(v24 + 125) = 0u;
            }

            v566 = v24[581];
            v567 = v24[538];
            v836 = v820;
            v837 = v821;
            v838[0] = v822;
            *&v838[1] = v823;
            *(&v838[1] + 1) = v529;
            *&v838[2] = v542;
            BYTE8(v838[2]) = v768;
            swift_beginAccess();
            v568 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v825, v567, v566);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 233), (v24 + 238), (v24 + 248), (v24 + 168), v568, v24 + 132);
            v569 = v24[135];
            v570 = v24[136];
            v571 = __swift_project_boxed_opaque_existential_1(v24 + 132, v569);
            v24[191] = v569;
            v24[192] = v570;
            v430 = v793;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v793);
            (*(*(v569 - 8) + 16))(boxed_opaque_existential_1, v571, v569);

            outlined destroy of [Int](v784, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 238));
            __swift_destroy_boxed_opaque_existential_1((v24 + 228));
            __swift_destroy_boxed_opaque_existential_1((v24 + 208));
            outlined destroy of [Int]((v24 + 248), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 233));
            __swift_destroy_boxed_opaque_existential_1((v24 + 132));
          }

          else
          {
            v474 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 328));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 343));
            v475 = v24[331];
            v476 = v24[332];
            v477 = __swift_mutable_project_boxed_opaque_existential_1((v24 + 328), v475);
            v478 = *(v475 - 8);
            v479 = swift_task_alloc();
            (*(v478 + 16))(v479, v477, v475);
            v480 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v479, v24 + 343, v474, v475, v476);
            __swift_destroy_boxed_opaque_existential_1((v24 + 328));

            v24[191] = v474;
            v24[192] = &protocol witness table for BasicDecoder;
            v24[188] = v480;
            v430 = v793;
          }
        }

        else
        {
          v390 = v387 + *(v388 + 36);
          v391 = *(v390 + 8);
          v392 = *(v390 + 64);
          if (v391 == 2)
          {
            v393 = 1;
          }

          else
          {
            v393 = v392;
          }

          (v24[619])(v24[605], v24[615], v24[598]);
          v394 = Logger.logObject.getter();
          v395 = static os_log_type_t.default.getter();
          v396 = os_log_type_enabled(v394, v395);
          v397 = v24[621];
          v398 = v24[605];
          v399 = v24[598];
          if (v396)
          {
            v400 = swift_slowAlloc();
            v799 = swift_slowAlloc();
            *&v836 = v799;
            *v400 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v783 = v395;
            v401 = dispatch thunk of CustomStringConvertible.description.getter();
            v402 = v393;
            v403 = v389;
            v405 = v404;
            v397(v398, v399);
            v406 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v401, v405, &v836);
            v389 = v403;
            v393 = v402;

            *(v400 + 4) = v406;
            *(v400 + 12) = 2050;
            *(v400 + 14) = v389;
            *(v400 + 22) = 2050;
            *(v400 + 24) = v402;
            _os_log_impl(&dword_220940000, v394, v783, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v400, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v799);
            MEMORY[0x223D90A10](v799, -1, -1);
            v407 = v400;
            v24 = v814;
            MEMORY[0x223D90A10](v407, -1, -1);
          }

          else
          {

            v397(v398, v399);
          }

          v420 = v24[640];
          v421 = v24[639];
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 348));
          v422 = (*(v421 + 88))(v420, v421);

          v423 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v389, v422);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 348), (v24 + 358));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v424 = swift_allocObject();
          v425 = MEMORY[0x277D84F90];
          v424[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v424[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v425);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 179, (v424 + 2));
          v424[7] = v393;
          v424[8] = v423;
          if (v393 < 1)
          {
            goto LABEL_258;
          }

          LOBYTE(v831) = 1;
          LOBYTE(v836) = 1;
          v24[116] = v389;
          *(v24 + 936) = 0;
          v24[118] = v393;
          v24[119] = 0;
          *(v24 + 960) = 1;
          *(v24 + 241) = 0;
          *(v24 + 968) = 1;
          *(v24 + 969) = 0;
          *(v24 + 243) = 0;
          *(v24 + 488) = 1;
          v24[123] = 0;
          v24[124] = 1;
          *(v24 + 1000) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 368));
          v426 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v427 = swift_allocObject();

          v429 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v428, v24 + 116, v24 + 368, v427);
          v24[191] = v426;
          v24[192] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[188] = v429;
          __swift_destroy_boxed_opaque_existential_1((v24 + 348));
          v430 = v793;
        }
      }

      else
      {
        (v24[619])(v24[610], v24[615], v24[598]);
        v361 = Logger.logObject.getter();
        v362 = static os_log_type_t.default.getter();
        v363 = os_log_type_enabled(v361, v362);
        v364 = v24[621];
        v365 = v24[610];
        v366 = v24[598];
        if (v363)
        {
          v367 = swift_slowAlloc();
          v368 = swift_slowAlloc();
          *&v836 = v368;
          *v367 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v369 = dispatch thunk of CustomStringConvertible.description.getter();
          v371 = v370;
          v364(v365, v366);
          v372 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v369, v371, &v836);

          *(v367 + 4) = v372;
          _os_log_impl(&dword_220940000, v361, v362, "Using token healing for request %{public}s", v367, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v368);
          v373 = v368;
          v24 = v814;
          MEMORY[0x223D90A10](v373, -1, -1);
          MEMORY[0x223D90A10](v367, -1, -1);
        }

        else
        {

          v364(v365, v366);
        }

        v434 = *(v24 + 125);
        v435 = v24[641];
        v777 = v24[581];
        v772 = v24[579];
        v436 = v24[566];
        v437 = v24[538];
        v438 = v24[536];
        v439 = (v777 + *(v772 + 68));
        v440 = *v439;
        v441 = v439[1];
        v442 = v439[2];
        v443 = v439[3];
        __swift_project_boxed_opaque_existential_1((v437 + 56), *(v437 + 80));
        v444 = off_2834512B0[0]();
        v446 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v444, v445, v440, v441, v442, v443);

        v447 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
        v448 = swift_allocObject();
        *(v448 + 32) = 1;
        *(v448 + 40) = 0;
        *(v448 + 48) = 513;
        *(v448 + 16) = v435;
        *(v448 + 24) = 0;
        *(v814 + 3048) = v447;
        *(v814 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
        *(v814 + 3024) = v448;
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v438 + v434, v436, &_s15TokenGeneration11ConstraintsOSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v449 = swift_allocObject();
        *(v449 + 16) = v782;
        *(v449 + 32) = v446;
        v24 = v814;
        v450 = type metadata accessor for TokenHealingDecoder();
        v451 = swift_allocObject();
        v452 = (v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
        v453 = MEMORY[0x277D84F90];
        *v452 = MEMORY[0x277D84F90];
        v452[1] = v453;
        v452[2] = v453;
        *(v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 3024, v451 + 16);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v436, v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd);
        *(v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v449;
        v824 = v453;
        v825 = 0;
        v826 = 1;
        v454 = *(v777 + *(v772 + 44));
        if (v454 < 1)
        {
          v481 = *(v814 + 5088);
          if (*(v481 + 16))
          {
            v764 = v450;
            v482 = *(v814 + 4392);
            v483 = *(v814 + 4384);
            v484 = *(v814 + 4376);
            v485 = *(v481 + 48);
            *(v814 + 416) = *(v481 + 32);
            *(v814 + 432) = v485;
            v487 = *(v481 + 80);
            v486 = *(v481 + 96);
            v488 = *(v481 + 64);
            *(v814 + 496) = *(v481 + 112);
            *(v814 + 464) = v487;
            *(v814 + 480) = v486;
            *(v814 + 448) = v488;
            v489 = v814;
            v767 = *(v814 + 416);
            v490 = (v814 + 424);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v814 + 416, v814 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            SamplingParameters.speculationParameters.getter();
            v786 = v451;
            if ((*(v482 + 48))(v484, 1, v483) == 1)
            {
              outlined destroy of [Int](*(v814 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd);
              v491 = *(v814 + 440);
              v827 = *v490;
              v828 = v491;
              v829 = *(v814 + 456);
              v830 = *(v814 + 472);
              v493 = *(v814 + 480);
              v492 = *(v814 + 488);
              v494 = *(v814 + 496);
            }

            else
            {
              (*(*(v814 + 4392) + 32))(*(v814 + 4408), *(v814 + 4376), *(v814 + 4384));
              v580 = Logger.logObject.getter();
              v581 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v580, v581))
              {
                v582 = swift_slowAlloc();
                *v582 = 0;
                _os_log_impl(&dword_220940000, v580, v581, "Overriding default speculation behavior from sampling parameters", v582, 2u);
                MEMORY[0x223D90A10](v582, -1, -1);
              }

              v489 = v814;
              v583 = *(v814 + 4408);
              v584 = *(v814 + 4392);
              v585 = *(v814 + 4384);

              v586 = *(v814 + 472);
              v838[0] = *(v814 + 456);
              v838[1] = v586;
              *(&v838[1] + 9) = *(v814 + 481);
              v587 = *(v814 + 440);
              v836 = *v490;
              v837 = v587;
              DraftingBehavior.updated(with:)(&v831);
              (*(v584 + 8))(v583, v585);
              v827 = v831;
              v828 = v832;
              v829 = *v833;
              v493 = *&v833[24];
              v830 = *&v833[16];
              v492 = v834;
              v494 = v835;
            }

            v588 = *(v489 + 5072);
            v589 = *(v489 + 4952);
            v590 = *(v489 + 4920);
            v591 = *(v489 + 4864);
            v592 = *(v489 + 4784);
            swift_beginAccess();
            v593 = v828;
            *v790 = v827;
            *(v790 + 1) = v593;
            *(v790 + 2) = v829;
            v790[6] = v830;
            v774 = v493;
            *(v489 + 824) = v493;
            *(v489 + 832) = v492;
            v761 = v494;
            *(v489 + 840) = v494;
            *(v489 + 3288) = type metadata accessor for E5TransformerLanguageModel();
            *(v489 + 3296) = &protocol witness table for E5TransformerLanguageModel;
            *(v489 + 3264) = v767;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v489 + 416, v489 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v489 + 3264, v588, v590, v489 + 3224);
            __swift_destroy_boxed_opaque_existential_1(v489 + 3264);
            outlined init with copy of DeterministicLanguageModelProtocol(v489 + 3224, v489 + 3344);
            v594 = swift_allocObject();

            v596 = specialized MaskedLanguageModel.init(_:_:)(v595, (v489 + 3344), v594);
            v589(v591, v590, v592);
            v597 = v596;

            v598 = Logger.logObject.getter();
            v599 = static os_log_type_t.default.getter();

            v600 = os_log_type_enabled(v598, v599);
            v601 = *(v489 + 4968);
            v602 = *(v489 + 4864);
            v603 = *(v489 + 4784);
            v769 = v597;
            if (v600)
            {
              v604 = swift_slowAlloc();
              v759 = swift_slowAlloc();
              *&v836 = v759;
              *v604 = 136446466;
              *(v489 + 4280) = v597;

              v605 = String.init<A>(describing:)();
              v607 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v605, v606, &v836);

              *(v604 + 4) = v607;
              *(v604 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v608 = dispatch thunk of CustomStringConvertible.description.getter();
              v610 = v609;
              v601(v602, v603);
              v611 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v608, v610, &v836);
              v597 = v769;

              *(v604 + 14) = v611;
              _os_log_impl(&dword_220940000, v598, v599, "Using draft language model %{public}s for request %{public}s", v604, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v759, -1, -1);
              MEMORY[0x223D90A10](v604, -1, -1);
            }

            else
            {

              v601(v602, v603);
            }

            *(v489 + 3448) = v798;
            *(v489 + 3456) = &protocol witness table for MaskedLanguageModel;
            *(v489 + 3424) = v597;

            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v489 + 3424, &v824, (v489 + 3384));
            __swift_destroy_boxed_opaque_existential_1(v489 + 3424);
            v612 = v774;
            v24 = v489;
            v613 = v792;
            if (v774 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol(v489 + 3384, v489 + 3464);
            }

            else
            {
              (*(v489 + 4952))(*(v489 + 4856), *(v489 + 4920), *(v489 + 4784));
              v614 = Logger.logObject.getter();
              v615 = static os_log_type_t.default.getter();
              v616 = os_log_type_enabled(v614, v615);
              v617 = *(v489 + 4968);
              v618 = v24[607];
              v619 = v24[598];
              if (v616)
              {
                v620 = swift_slowAlloc();
                v801 = swift_slowAlloc();
                *&v836 = v801;
                *v620 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                v621 = dispatch thunk of CustomStringConvertible.description.getter();
                v623 = v622;
                v617(v618, v619);
                v624 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v621, v623, &v836);
                v613 = v792;

                *(v620 + 4) = v624;
                *(v620 + 12) = 2050;
                v612 = v774;
                *(v620 + 14) = v774;
                *(v620 + 22) = 2050;
                *(v620 + 24) = v492;
                _os_log_impl(&dword_220940000, v614, v615, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v620, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v801);
                v24 = v814;
                MEMORY[0x223D90A10](v801, -1, -1);
                MEMORY[0x223D90A10](v620, -1, -1);
              }

              else
              {

                v617(v618, v619);
                v612 = v774;
              }

              v625 = (*(v24[639] + 88))(v24[640]);

              v626 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v612, v625);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 423), (v24 + 143));
              v627 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v628 = swift_allocObject();
              v629 = MEMORY[0x277D84F90];
              v628[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v628[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v629);
              outlined init with take of RandomNumberGenerator((v24 + 143), (v628 + 2));
              v628[7] = v492;
              v628[8] = v626;
              v24[436] = v627;
              v24[437] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[433] = v628;
            }

            v450 = v764;
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v824, v24 + 438);
            SamplingParameters.priorInferenceOutput.getter();
            if (v630)
            {
              v631 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v631, &v836);
              v632 = v836;
              v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
              v634 = swift_allocObject();
              *(v634 + 16) = v632;
              *(v634 + 32) = 2;
              v24[451] = v633;
              v24[452] = &protocol witness table for LookupLanguageModel<A>;

              v24[448] = v634;
            }

            else
            {
              v24[452] = 0;
              *(v24 + 224) = 0u;
              *(v24 + 225) = 0u;
            }

            v635 = v24[581];
            v636 = v24[538];
            v836 = v827;
            v837 = v828;
            v838[0] = v829;
            *&v838[1] = v830;
            *(&v838[1] + 1) = v612;
            *&v838[2] = v492;
            BYTE8(v838[2]) = v761;
            swift_beginAccess();
            v637 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v825, v636, v635);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 433), (v24 + 438), (v24 + 448), (v24 + 168), v637, v24 + 126);
            v802 = *(v613 + 711);
            v638 = *(v613 + 711);
            v639 = __swift_project_boxed_opaque_existential_1(v24 + 126, v638);
            *(v24 + 193) = v802;
            v640 = __swift_allocate_boxed_opaque_existential_1(v24 + 383);
            (*(*(v638 - 8) + 16))(v640, v639, v638);

            outlined destroy of [Int]((v24 + 52), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 438));
            __swift_destroy_boxed_opaque_existential_1((v24 + 423));
            __swift_destroy_boxed_opaque_existential_1((v24 + 403));
            outlined destroy of [Int]((v24 + 448), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
            __swift_destroy_boxed_opaque_existential_1((v24 + 433));
            __swift_destroy_boxed_opaque_existential_1((v24 + 126));
            v451 = v786;
          }

          else
          {
            v573 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v814 + 2344, &v824, (v814 + 3664));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol(v814 + 1344, v814 + 3624);
            v574 = *(v814 + 3688);
            v575 = *(v814 + 3696);
            v576 = __swift_mutable_project_boxed_opaque_existential_1(v814 + 3664, v574);
            v577 = *(v574 - 8);
            v578 = swift_task_alloc();
            (*(v577 + 16))(v578, v576, v574);
            v579 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v578, (v814 + 3624), v573, v574, v575);
            __swift_destroy_boxed_opaque_existential_1(v814 + 3664);

            *(v814 + 3088) = v573;
            *(v814 + 3096) = &protocol witness table for BasicDecoder;
            *(v814 + 3064) = v579;
          }
        }

        else
        {
          v785 = v451;
          v455 = *(v814 + 4648) + *(*(v814 + 4632) + 36);
          v456 = *(v455 + 8);
          v457 = *(v455 + 64);
          if (v456 == 2)
          {
            v458 = 1;
          }

          else
          {
            v458 = v457;
          }

          (*(v814 + 4952))(*(v814 + 4872), *(v814 + 4920), *(v814 + 4784));
          v459 = Logger.logObject.getter();
          v460 = static os_log_type_t.default.getter();
          v461 = os_log_type_enabled(v459, v460);
          v462 = *(v814 + 4968);
          v463 = *(v814 + 4872);
          v464 = *(v814 + 4784);
          if (v461)
          {
            v465 = swift_slowAlloc();
            v800 = swift_slowAlloc();
            *&v836 = v800;
            *v465 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v778 = v458;
            v466 = dispatch thunk of CustomStringConvertible.description.getter();
            v794 = v460;
            v467 = v454;
            v468 = v450;
            v470 = v469;
            v462(v463, v464);
            v471 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v466, v470, &v836);
            v450 = v468;
            v454 = v467;

            *(v465 + 4) = v471;
            *(v465 + 12) = 2050;
            *(v465 + 14) = v467;
            *(v465 + 22) = 2050;
            v472 = v778;
            *(v465 + 24) = v778;
            _os_log_impl(&dword_220940000, v459, v794, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v465, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v800);
            MEMORY[0x223D90A10](v800, -1, -1);
            v473 = v465;
            v24 = v814;
            MEMORY[0x223D90A10](v473, -1, -1);
          }

          else
          {

            v462(v463, v464);
            v472 = v458;
          }

          v544 = v24[640];
          v545 = v24[639];
          swift_beginAccess();
          closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v824, v24 + 443);
          v546 = (*(v545 + 88))(v544, v545);

          v547 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v454, v546);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 443), (v24 + 398));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v548 = swift_allocObject();
          v549 = MEMORY[0x277D84F90];
          v548[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v548[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v549);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 199, (v548 + 2));
          v548[7] = v472;
          v548[8] = v547;
          v451 = v785;
          if (v472 < 1)
          {
            goto LABEL_259;
          }

          LOBYTE(v831) = 1;
          LOBYTE(v836) = 1;
          v24[106] = v454;
          *(v24 + 856) = 0;
          v24[108] = v472;
          v24[109] = 0;
          *(v24 + 880) = 1;
          *(v24 + 221) = 0;
          *(v24 + 888) = 1;
          *(v24 + 889) = 0;
          *(v24 + 223) = 0;
          *(v24 + 448) = 1;
          v24[113] = 0;
          v24[114] = 1;
          *(v24 + 920) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 363));
          v550 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v551 = swift_allocObject();

          v553 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v552, v24 + 106, v24 + 363, v551);
          v24[386] = v550;
          v24[387] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[383] = v553;
          __swift_destroy_boxed_opaque_existential_1((v24 + 443));
        }

        v430 = (v24 + 373);
        outlined destroy of [Int](v24[566], &_s15TokenGeneration11ConstraintsOSgMd);
        __swift_destroy_boxed_opaque_existential_1((v24 + 378));
        outlined init with take of RandomNumberGenerator((v24 + 383), v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
        *(v451 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v824;
        v24[376] = v450;
        v24[377] = &protocol witness table for TokenHealingDecoder;
        v24[373] = v451;
      }

      outlined init with take of RandomNumberGenerator(v430, (v24 + 183));
      v641 = v24[619];
      v642 = v24[615];
      v643 = v24[602];
      v644 = v24[598];
      outlined init with copy of DeterministicLanguageModelProtocol((v24 + 183), (v24 + 263));
      v641(v643, v642, v644);
      v645 = Logger.logObject.getter();
      v646 = static os_log_type_t.info.getter();
      v647 = os_log_type_enabled(v645, v646);
      v648 = v24[621];
      v649 = v24[602];
      v650 = v24[598];
      if (v647)
      {
        v651 = swift_slowAlloc();
        v652 = swift_slowAlloc();
        *&v836 = v652;
        *v651 = 136446466;
        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 2104, v814 + 2504);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd);
        v653 = String.init<A>(describing:)();
        v655 = v654;
        __swift_destroy_boxed_opaque_existential_1(v814 + 2104);
        v656 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v653, v655, &v836);

        *(v651 + 4) = v656;
        *(v651 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v657 = dispatch thunk of CustomStringConvertible.description.getter();
        v659 = v658;
        v648(v649, v650);
        v660 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v657, v659, &v836);

        *(v651 + 14) = v660;
        _os_log_impl(&dword_220940000, v645, v646, "Using decoder %{public}s for request %{public}s", v651, 0x16u);
        swift_arrayDestroy();
        v661 = v652;
        v24 = v814;
        MEMORY[0x223D90A10](v661, -1, -1);
        MEMORY[0x223D90A10](v651, -1, -1);
      }

      else
      {

        v648(v649, v650);
        __swift_destroy_boxed_opaque_existential_1((v24 + 263));
      }

      v662 = *(v24[632] + 16);

      v663 = 0;
      if (v662)
      {
        v664 = 32;
        while (1)
        {
          v665 = v24[544];
          outlined init with copy of DeterministicLanguageModelProtocol(v24[632] + v664, (v24 + 268));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
          v666 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
          v667 = swift_dynamicCast();
          v668 = *(v666 - 8);
          (*(v668 + 56))(v665, v667 ^ 1u, 1, v666);
          v669 = (*(v668 + 48))(v665, 1, v666);
          v24 = v814;
          LODWORD(v665) = v669;
          v143 = outlined destroy of [Int](*(v814 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          if (v665 != 1)
          {
            break;
          }

          ++v663;
          v664 += 40;
          if (v662 == v663)
          {
            v663 = v662;
            break;
          }
        }
      }

      v670 = v24[632];
      v671 = *(v670 + 16);
      if (v663 == v671)
      {
        v672 = v24[545];
        v673 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        (*(*(v673 - 8) + 56))(v672, 1, 1, v673);
LABEL_246:
        v682 = v24[577];
        v683 = *(v814 + 4600);
        v684 = *(v814 + 4360);
        v685 = *(v814 + 4328);

        v686 = v814;
        v687 = *(v682 + *(v683 + 28));

        v795 = SamplingParameters.useHighQualityImageTokenization.getter();
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v684, v685, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
        type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v688 = (*(*(v673 - 8) + 48))(v685, 1, v673);
        v689 = *(v814 + 4328);
        v803 = v687;
        if (v688 == 1)
        {
          outlined destroy of [Int](v689, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          v690 = 0;
        }

        else
        {
          v691 = *(v673 + 32);
          v692 = (v689 + *(v673 + 28));
          v694 = *v692;
          v693 = v692[1];
          v695 = v692[2];
          v765 = v695;
          v770 = *v692;
          v757 = v692[3];
          v696 = v692[4];
          v697 = v692[5];
          v698 = v692[6];
          v780 = *(v814 + 4328);
          v787 = *(v689 + v691);
          v699 = type metadata accessor for OnDeviceImagePreprocessor();
          v700 = swift_allocObject();
          type metadata accessor for ImageTokenizer();
          v775 = *(v780 + 16);
          v700[2] = v694;
          v700[3] = v693;
          v700[4] = v695;
          v700[5] = v757;
          v700[6] = v696;
          v700[7] = v697;
          v700[8] = v698;
          *(v814 + 2488) = v699;
          *(v814 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v814 + 2464) = v700;
          v690 = swift_allocObject();
          v701 = __swift_mutable_project_boxed_opaque_existential_1(v814 + 2464, v699);
          v702 = *(v699 - 8);
          v703 = swift_task_alloc();
          (*(v702 + 16))(v703, v701, v699);
          v704 = *v703;
          *(v690 + 40) = v699;
          *(v690 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v690 + 16) = v704;
          *(v690 + 56) = v770;
          *(v690 + 64) = v693;
          *(v690 + 72) = v765;
          *(v690 + 80) = v757;
          *(v690 + 88) = v696;
          *(v690 + 96) = v697;
          *(v690 + 104) = v698;
          *(v690 + 112) = v775;
          *(v690 + 128) = v787;
          swift_unknownObjectRetain();

          __swift_destroy_boxed_opaque_existential_1(v814 + 2464);

          outlined destroy of InferenceRequest(v780, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        }

        v758 = *(v814 + 5168);
        v705 = *(v814 + 5144);
        v788 = *(v814 + 412);
        v706 = *(v814 + 4648);
        v707 = *(v814 + 4632);
        v708 = *(v814 + 4616);
        v755 = *(v814 + 588);
        v756 = *(v814 + 4480);
        v709 = *(v814 + 4464);

        v796 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v710, v795 & 1, v690);

        outlined copy of ClassifierMetadata?(v809, v810);
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v809, v810, v805, v814 + 2344, v705, v814 + 128);

        outlined init with copy of DeterministicLanguageModelProtocol(v814 + 1464, v814 + 2304);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v814 + 128, v814 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
        swift_beginAccess();
        v711 = *(v790 + 3);
        v838[0] = *(v790 + 2);
        v838[1] = v711;
        *(&v838[1] + 9) = *(v790 + 57);
        v712 = *(v790 + 1);
        v836 = *v790;
        v837 = v712;
        v713 = *(v708 + v788);
        v714 = *(v706 + v707[10]);
        v715 = *(v706 + v707[12]);
        v716 = (v706 + v707[17]);
        v717 = *v716;
        v718 = v716[1];
        v719 = v716[2];
        v720 = v716[3];
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v706 + v755, v709, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
        LODWORD(v706) = v758(v709, 1, v756);

        outlined copy of StopToken?(v717, v718, v719, v720);
        v791 = v714;
        v781 = v717;
        v789 = v715;
        v771 = v719;
        v776 = v718;
        v762 = v720;
        v766 = v713;
        if (v706 == 1)
        {
          v721 = *(v814 + 5168);
          v722 = *(v814 + 4520);
          v723 = *(v814 + 4488);
          v724 = *(v814 + 4480);
          v725 = *(v814 + 4464);
          v726 = *(v814 + 4360);
          static PromptPreprocessingTemplateVersion.default.getter();

          outlined destroy of [Int](v814 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
          outlined destroy of [Int](v726, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          __swift_destroy_boxed_opaque_existential_1(v814 + 1464);
          (*(v723 + 8))(v722, v724);
          v686 = v814;
          outlined destroy of [Int](v804, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          outlined destroy of [Int](v797, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          if (v721(v725, 1, v724) != 1)
          {
            outlined destroy of [Int](*(v814 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
          }
        }

        else
        {
          v727 = *(v814 + 4520);
          v728 = *(v814 + 4496);
          v729 = *(v814 + 4488);
          v730 = *(v814 + 4480);
          v731 = *(v814 + 4464);
          v732 = *(v814 + 4360);

          outlined destroy of [Int](v814 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
          outlined destroy of [Int](v732, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          __swift_destroy_boxed_opaque_existential_1(v814 + 1464);
          (*(v729 + 8))(v727, v730);
          outlined destroy of [Int](v804, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          outlined destroy of [Int](v797, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          (*(v729 + 32))(v728, v731, v730);
        }

        v733 = *(v686 + 643);
        v734 = *(v686 + 642);
        v735 = v686;
        v754 = *(v686 + 632);
        v736 = *(v686 + 621);
        v737 = *(v735 + 615);
        v738 = *(v735 + 598);
        v753 = *(v735 + 581);
        v751 = *(v735 + 577);
        v739 = *(v735 + 562);
        v740 = *(v735 + 561);
        v752 = *(v735 + 560);
        v741 = *(v735 + 540);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v751 + *(*(v735 + 575) + 44), v741, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
        *(v735 + 306) = v734;
        *(v735 + 307) = MEMORY[0x277D71E08];
        *(v735 + 303) = v733;
        v736(v737, v738);
        type metadata accessor for OnDeviceInferenceContext();
        v742 = swift_allocObject();
        v743 = v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
        *v743 = 0;
        *(v743 + 8) = 1;
        *(v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
        *(v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
        outlined init with take of RandomNumberGenerator(v735 + 144, v742 + 16);
        v744 = v735[3];
        *(v742 + 104) = v735[4];
        v745 = v735[6];
        *(v742 + 120) = v735[5];
        *(v742 + 136) = v745;
        *(v742 + 152) = v735[7];
        v746 = v735[2];
        *(v742 + 56) = v735[1];
        *(v742 + 72) = v746;
        *(v742 + 88) = v744;
        v747 = v837;
        *(v742 + 168) = v836;
        v748 = v838[0];
        v749 = v838[1];
        *(v742 + 225) = *(&v838[1] + 9);
        *(v742 + 216) = v749;
        *(v742 + 200) = v748;
        *(v742 + 184) = v747;
        *(v742 + 248) = v766;
        *(v742 + 304) = v803;
        outlined init with take of RandomNumberGenerator((v735 + 2424), v742 + 256);
        *(v742 + 296) = v754;
        *(v742 + 312) = v791;
        *(v742 + 320) = v789;
        *(v742 + 328) = v809;
        *(v742 + 336) = v810;
        *(v742 + 344) = v805;
        *(v742 + 352) = v781;
        *(v742 + 360) = v776;
        *(v742 + 368) = v771;
        *(v742 + 376) = v762;
        *(v742 + 384) = v796;
        (*(v740 + 32))(v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v739, v752);
        outlined init with take of Asset?(v741, v742 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
        outlined destroy of InferenceRequest(v751, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        __swift_destroy_boxed_opaque_existential_1((v735 + 84));
        __swift_destroy_boxed_opaque_existential_1(v735 + 2344);
        outlined destroy of InferenceRequest(v753, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

        v750 = *(v735 + 1);

        return v750(v742);
      }

      if (v663 < v671)
      {
        v674 = v24[543];
        v675 = v24[542];
        outlined init with copy of DeterministicLanguageModelProtocol(v670 + 40 * v663 + 32, (v24 + 273));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
        v673 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v676 = swift_dynamicCast();
        v677 = v24;
        v678 = *(v673 - 8);
        v679 = *(v678 + 56);
        v679(v674, v676 ^ 1u, 1, v673);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v674, v675, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
        v143 = (*(v678 + 48))(v675, 1, v673);
        if (v143 != 1)
        {
          v680 = v677[545];
          v681 = v677[543];
          _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v677[542], v680, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
          outlined destroy of [Int](v681, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
          v679(v680, 0, 1, v673);
          v24 = v677;
          goto LABEL_246;
        }

LABEL_261:
        __break(1u);
        return MEMORY[0x2822009F8](v143, v144, v145);
      }

LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    v317 = v24;
    v318 = v313;
    v319 = v312;
    v320 = v317[552];
    SamplingParameters.strategy.getter();
    v321 = type metadata accessor for SamplingStrategy();
    v322 = *(v321 - 8);
    v323 = (*(v322 + 48))(v320, 1, v321);
    v324 = v317[554];
    if (v323 == 1)
    {
      outlined destroy of [Int](v317[552], &_s15TokenGeneration16SamplingStrategyVSgMd);
      v325 = type metadata accessor for SamplingStrategy.Choice();
      (*(*(v325 - 8) + 56))(v324, 1, 1, v325);
      outlined destroy of [Int](v324, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
    }

    else
    {
      v328 = v317[553];
      v329 = v317[552];
      SamplingStrategy.choice.getter();
      (*(v322 + 8))(v329, v321);
      v330 = type metadata accessor for SamplingStrategy.Choice();
      v331 = *(v330 - 8);
      (*(v331 + 56))(v324, 0, 1, v330);
      outlined init with take of Asset?(v324, v328, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
      v332 = (*(v331 + 88))(v328, v330);
      if (v332 == *MEMORY[0x277D71C40])
      {
        v333 = v317[553];
        (*(v331 + 96))(v333, v330);
        v334 = *v333;
        if (v318)
        {
          v335 = 0;
        }

        else
        {
          v335 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v814;
        *(&v837 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v838[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v836 = v335;
        v495 = type metadata accessor for NucleusSampling();
        swift_allocObject();
        v496 = NucleusSampling.init(p:temperature:generator:)(&v836, v334, v311);
        *(v814 + 2408) = v495;
        *(v814 + 2416) = &protocol witness table for NucleusSampling;
        *(v814 + 2384) = v496;
        v327 = (v814 + 2384);
        goto LABEL_141;
      }

      if (v332 == *MEMORY[0x277D71C48])
      {
        v431 = *(v814 + 4424);
        (*(v331 + 96))(v431, v330);
        v432 = *v431;
        if (v318)
        {
          v433 = 0;
        }

        else
        {
          v433 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v814;
        *(&v837 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v838[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v836 = v433;
        v561 = type metadata accessor for TopK();
        swift_allocObject();
        v562 = TopK.init(k:temperature:generator:)(v432, &v836, v311);
        *(v814 + 2608) = v561;
        *(v814 + 2616) = &protocol witness table for TopK;
        *(v814 + 2584) = v562;
        v327 = (v814 + 2584);
        goto LABEL_141;
      }

      if (v332 != *MEMORY[0x277D71C50])
      {
        (*(v331 + 8))(*(v814 + 4424), v330);
        if (v318)
        {
          v497 = 0;
        }

        else
        {
          v497 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v814;
        *(v814 + 2728) = &type metadata for SeedableRandomNumberGenerator;
        *(v814 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *(v814 + 2704) = v497;
        v341 = type metadata accessor for GreedySampling();
        v342 = swift_allocObject();
        v343 = (v814 + 2704);
        goto LABEL_150;
      }
    }

    if (v318)
    {
      v326 = 0;
    }

    else
    {
      v326 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v24 = v814;
    *(v814 + 1408) = &type metadata for SeedableRandomNumberGenerator;
    *(v814 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *(v814 + 1384) = v326;
    v341 = type metadata accessor for GreedySampling();
    v342 = swift_allocObject();
    v343 = (v814 + 1384);
LABEL_150:
    outlined init with take of RandomNumberGenerator(v343, v342 + 16);
    v24[171] = v341;
    v24[172] = &protocol witness table for GreedySampling;
    v24[168] = v342;
    goto LABEL_151;
  }

  v242 = v24[538];
  (*(v24[569] + 32))(v24[570], v24[567], v24[568]);
  v243 = swift_task_alloc();
  v24[644] = v243;
  *v243 = v24;
  v243[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  v244 = v24[581];
  v245 = v24[577];
  v246 = v24[570];

  return OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:)((v24 + 203), v246, v245, v244, v242 + 16);
}

{
  v1 = v0[630];
  v2 = v0[621];
  v3 = v0[615];
  v4 = v0[598];
  v5 = v0[595];
  v6 = v0[591];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
  v7 = swift_allocError();
  v1(v8, v5, v6);
  v2(v3, v4);
  v0[652] = MEMORY[0x277D84F90];
  v0[651] = v7;
  v9 = __swift_project_boxed_opaque_existential_1((v0[538] + 16), *(v0[538] + 40));
  v0[653] = v9;
  v10 = *v9;

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), v10, 0);
}

{
  *(*v1 + 5160) = v0;

  if (v0)
  {

    v2 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  else
  {
    v2 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v586 = v0;
  (*(*(v0 + 4552) + 8))(*(v0 + 4560), *(v0 + 4544));
  outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v1 = *(v0 + 1640);
  *(v0 + 2024) = *(v0 + 1624);
  *(v0 + 2040) = v1;
  *(v0 + 2056) = *(v0 + 1656);
  v2 = *(v0 + 5160);
  v3 = *(v0 + 4744);
  v4 = *(v0 + 4688);
  v5 = *(v0 + 4288);
  *(v0 + 1744) = 0u;
  *(v0 + 1760) = 0u;
  *(v0 + 1776) = 0;
  v6 = _s24TokenGenerationInference08OnDeviceC14ContextFactoryC14supportedTools33_6E70D024FF4C54BC34814633D058F7394fromSay29GenerativeFunctionsFoundation4ToolV8FunctionVGSay0aB00U11DescriptionVG_t20ModelManagerServices0C5ErrorOYKF(*(v5 + *(v4 + 24)), v3);
  if (v2)
  {
    v557 = *(v0 + 4968);
    v7 = *(v0 + 4920);
    v8 = *(v0 + 4784);
    v9 = *(v0 + 4744);
    v10 = *(v0 + 4736);
    v11 = *(v0 + 4728);
    v560 = *(v0 + 4648);
    v12 = *(v0 + 4616);

    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0]);
    v13 = swift_allocError();
    (*(v10 + 32))(v14, v9, v11);

    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v557(v7, v8);
    outlined destroy of InferenceRequest(v12, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2344);
    outlined destroy of InferenceRequest(v560, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

    *(v0 + 5216) = *(v0 + 5056);
    *(v0 + 5208) = v13;
    v15 = __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 16), *(*(v0 + 4304) + 40));
    *(v0 + 5224) = v15;
    v16 = *v15;
    v17 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
    v18 = 0;

    return MEMORY[0x2822009F8](v17, v16, v18);
  }

  v19 = v6;
  v20 = *(v0 + 4648);
  v21 = *(v0 + 4488);
  v22 = *(v0 + 4480);
  v23 = *(v0 + 4472);
  v24 = *(*(v0 + 4632) + 72);
  *(v0 + 588) = v24;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v20 + v24, v23, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  v25 = *(v21 + 48);
  *(v0 + 5168) = v25;
  *(v0 + 5176) = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v26 = v25(v23, 1, v22);
  v27 = *(v0 + 4520);
  v28 = *(v0 + 4488);
  v29 = *(v0 + 4480);
  v30 = *(v0 + 4472);
  if (v26 == 1)
  {
    (*(v28 + 104))(v27, *MEMORY[0x277D71EC8], *(v0 + 4480));
    if (v25(v30, 1, v29) != 1)
    {
      outlined destroy of [Int](*(v0 + 4472), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    }
  }

  else
  {
    (*(v28 + 32))(v27, *(v0 + 4472), *(v0 + 4480));
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 56), *(*(v0 + 4304) + 80));
  v31 = off_283451338();
  *(v0 + 5184) = specialized static OnDeviceInferenceContextFactory.startToolCallTokenIntValue(startToolCallTokenOverride:tokenizer:version:)(v31, v32 & 1);
  if (v19[2])
  {
    (*(*(v0 + 4488) + 104))(*(v0 + 4512), *MEMORY[0x277D71ED0], *(v0 + 4480));
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 4200) == *(v0 + 4232) && *(v0 + 4208) == *(v0 + 4240))
    {
      v33 = 1;
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(*(v0 + 4488) + 8))(*(v0 + 4512), *(v0 + 4480));

    if (v33)
    {
      (*(*(v0 + 4488) + 16))(*(v0 + 4504), *(v0 + 4520), *(v0 + 4480));
      Grammar.init(tools:version:)();
      *(v0 + 5192) = 0;
      v99 = *(v0 + 4304);
      v100 = swift_task_alloc();
      *(v0 + 5200) = v100;
      *v100 = v0;
      v100[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v101 = *(v0 + 4648);
      v102 = *(v0 + 4616);
      v103 = *(v0 + 4456);

      return OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(v0 + 1944, v103, v102, v101, v99 + 16);
    }
  }

  v34 = *(v0 + 5184);
  v35 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 2024, v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1744, v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  type metadata accessor for ToolCallLanguageModel();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = v34;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, (v36 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, (v36 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v559 = v36;
  v36[4] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_220AE8A30;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v38 = *(v0 + 1208);
  if (v38)
  {
    v39 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), *(v0 + 1208));
    v40 = (*(v39 + 8))(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1184);
  }

  else
  {
    outlined destroy of [Int](v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v40 = 0;
  }

  v556 = v0 + 2024;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v41 = *(v0 + 1248);
  if (v41)
  {
    v42 = *(v0 + 1256);
    __swift_project_boxed_opaque_existential_1((v0 + 1224), *(v0 + 1248));
    v43 = (*(v42 + 8))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1224);
  }

  else
  {
    outlined destroy of [Int](v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v43 = 0;
  }

  v44 = v41 == 0;
  v45 = v38 == 0;
  v46 = *(v0 + 4952);
  v47 = *(v0 + 4920);
  v48 = *(v0 + 4896);
  v49 = *(v0 + 4784);
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v37 + 32) = v40;
  *(v37 + 40) = v45;
  *(v37 + 48) = v43;
  *(v37 + 56) = v44;
  *(v37 + 57) = 2;
  *(v37 + 64) = v50;
  outlined destroy of [Int](v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  outlined destroy of [Int](v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v559[5] = v37;
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1304);
  v51 = type metadata accessor for MaskedLanguageModel();
  v52 = swift_allocObject();

  v54 = specialized MaskedLanguageModel.init(_:_:)(v53, (v0 + 1304), v52);
  *(v0 + 1288) = v51;
  *(v0 + 1296) = &protocol witness table for MaskedLanguageModel;
  *(v0 + 1264) = v54;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2344);
  outlined init with take of RandomNumberGenerator((v0 + 1264), v0 + 2344);
  v46(v48, v47, v49);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 4968);
  v59 = *(v0 + 4896);
  v60 = *(v0 + 4784);
  v549 = v51;
  if (v57)
  {
    v61 = swift_slowAlloc();
    v562 = swift_slowAlloc();
    *&v582 = v562;
    *v61 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd);
    v62 = String.init<A>(describing:)();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v582);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v58(v59, v60);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v582);

    *(v61 + 14) = v68;
    _os_log_impl(&dword_220940000, v55, v56, "Using base language model %{public}s for request %{public}s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v562, -1, -1);
    MEMORY[0x223D90A10](v61, -1, -1);
  }

  else
  {

    v58(v59, v60);
  }

  v69 = *(v0 + 4648);
  v70 = *(v0 + 4632);
  v71 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
  if (v72)
  {
    v73 = 1.0;
  }

  else
  {
    v73 = v71;
  }

  v74 = SamplingParameters.randomSeed.getter();
  v76 = (v69 + *(v70 + 64));
  v78 = *v76;
  v77 = v76[1];
  v558 = v76[2];
  v563 = v77;
  v561 = *v76;
  if (v77)
  {
    v79 = type metadata accessor for ClassificationSampling();
    swift_allocObject();

    v80 = ClassificationSampling.init(defaultClass:outputClasses:)(v78, v77);
    *(v0 + 2288) = v79;
    *(v0 + 2296) = &protocol witness table for ClassificationSampling;
    *(v0 + 2264) = v80;
    v90 = (v0 + 2264);
LABEL_34:
    outlined init with take of RandomNumberGenerator(v90, v0 + 1344);
    goto LABEL_44;
  }

  v81 = v75;
  v82 = v74;
  v83 = *(v0 + 4416);
  SamplingParameters.strategy.getter();
  v84 = type metadata accessor for SamplingStrategy();
  v85 = *(v84 - 8);
  v86 = (*(v85 + 48))(v83, 1, v84);
  v87 = *(v0 + 4432);
  if (v86 == 1)
  {
    outlined destroy of [Int](*(v0 + 4416), &_s15TokenGeneration16SamplingStrategyVSgMd);
    v88 = type metadata accessor for SamplingStrategy.Choice();
    (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
    outlined destroy of [Int](v87, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
  }

  else
  {
    v91 = *(v0 + 4424);
    v92 = *(v0 + 4416);
    SamplingStrategy.choice.getter();
    (*(v85 + 8))(v92, v84);
    v93 = type metadata accessor for SamplingStrategy.Choice();
    v94 = *(v93 - 8);
    (*(v94 + 56))(v87, 0, 1, v93);
    outlined init with take of Asset?(v87, v91, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
    v95 = (*(v94 + 88))(v91, v93);
    if (v95 == *MEMORY[0x277D71C40])
    {
      v96 = *(v0 + 4424);
      (*(v94 + 96))(v96, v93);
      v97 = *v96;
      if (v81)
      {
        v98 = 0;
      }

      else
      {
        v98 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
      }

      *(&v583 + 1) = &type metadata for SeedableRandomNumberGenerator;
      *&v584 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
      *&v582 = v98;
      v252 = type metadata accessor for NucleusSampling();
      swift_allocObject();
      v253 = NucleusSampling.init(p:temperature:generator:)(&v582, v97, v73);
      *(v0 + 2408) = v252;
      *(v0 + 2416) = &protocol witness table for NucleusSampling;
      *(v0 + 2384) = v253;
      v90 = (v0 + 2384);
      goto LABEL_34;
    }

    if (v95 == *MEMORY[0x277D71C48])
    {
      v191 = *(v0 + 4424);
      (*(v94 + 96))(v191, v93);
      v192 = *v191;
      if (v81)
      {
        v193 = 0;
      }

      else
      {
        v193 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
      }

      *(&v583 + 1) = &type metadata for SeedableRandomNumberGenerator;
      *&v584 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
      *&v582 = v193;
      v317 = type metadata accessor for TopK();
      swift_allocObject();
      v318 = TopK.init(k:temperature:generator:)(v192, &v582, v73);
      *(v0 + 2608) = v317;
      *(v0 + 2616) = &protocol witness table for TopK;
      *(v0 + 2584) = v318;
      v90 = (v0 + 2584);
      goto LABEL_34;
    }

    if (v95 != *MEMORY[0x277D71C50])
    {
      (*(v94 + 8))(*(v0 + 4424), v93);
      if (v81)
      {
        v254 = 0;
      }

      else
      {
        v254 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
      }

      *(v0 + 2728) = &type metadata for SeedableRandomNumberGenerator;
      *(v0 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
      *(v0 + 2704) = v254;
      v105 = type metadata accessor for GreedySampling();
      v106 = swift_allocObject();
      v107 = (v0 + 2704);
      goto LABEL_43;
    }
  }

  if (v81)
  {
    v89 = 0;
  }

  else
  {
    v89 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
  }

  *(v0 + 1408) = &type metadata for SeedableRandomNumberGenerator;
  *(v0 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
  *(v0 + 1384) = v89;
  v105 = type metadata accessor for GreedySampling();
  v106 = swift_allocObject();
  v107 = (v0 + 1384);
LABEL_43:
  outlined init with take of RandomNumberGenerator(v107, v106 + 16);
  *(v0 + 1368) = v105;
  *(v0 + 1376) = &protocol witness table for GreedySampling;
  *(v0 + 1344) = v106;
LABEL_44:
  (*(v0 + 4952))(*(v0 + 4888), *(v0 + 4920), *(v0 + 4784));
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.info.getter();
  v110 = os_log_type_enabled(v108, v109);
  v111 = *(v0 + 4968);
  v112 = *(v0 + 4888);
  v113 = *(v0 + 4784);
  if (v110)
  {
    v114 = swift_slowAlloc();
    v546 = swift_slowAlloc();
    *&v582 = v546;
    *v114 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2824);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd);
    v115 = String.init<A>(describing:)();
    v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &v582);

    *(v114 + 4) = v117;
    *(v114 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v119;
    v111(v112, v113);
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, &v582);

    *(v114 + 14) = v121;
    _os_log_impl(&dword_220940000, v108, v109, "Using sampling %{public}s for request %{public}s", v114, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v546, -1, -1);
    MEMORY[0x223D90A10](v114, -1, -1);
  }

  else
  {

    v111(v112, v113);
  }

  v547 = (v0 + 768);
  *(v0 + 768) = xmmword_220AED900;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 825) = 0u;
  v122 = SamplingParameters.tokenHealing.getter();
  if (v122 != 2 && (v122 & 1) != 0)
  {
    (*(v0 + 4952))(*(v0 + 4880), *(v0 + 4920), *(v0 + 4784));
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();
    v125 = os_log_type_enabled(v123, v124);
    v126 = *(v0 + 4968);
    v127 = *(v0 + 4880);
    v128 = *(v0 + 4784);
    if (v125)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v582 = v130;
      *v129 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v131 = dispatch thunk of CustomStringConvertible.description.getter();
      v133 = v132;
      v126(v127, v128);
      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, &v582);

      *(v129 + 4) = v134;
      _os_log_impl(&dword_220940000, v123, v124, "Using token healing for request %{public}s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x223D90A10](v130, -1, -1);
      MEMORY[0x223D90A10](v129, -1, -1);
    }

    else
    {

      v126(v127, v128);
    }

    v520 = *(v0 + 500);
    v194 = *(v0 + 5128);
    v527 = *(v0 + 4632);
    v537 = *(v0 + 4648);
    v195 = *(v0 + 4528);
    v196 = *(v0 + 4288);
    v197 = (v537 + *(v527 + 68));
    v198 = *v197;
    v199 = v197[1];
    v200 = v197[2];
    v201 = v197[3];
    __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 56), *(*(v0 + 4304) + 80));
    v202 = off_2834512B0[0]();
    v204 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v202, v203, v198, v199, v200, v201);

    v205 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
    v206 = swift_allocObject();
    *(v206 + 32) = 1;
    *(v206 + 40) = 0;
    *(v206 + 48) = 513;
    *(v206 + 16) = v194;
    *(v206 + 24) = 0;
    *(v0 + 3048) = v205;
    *(v0 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
    *(v0 + 3024) = v206;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v196 + v520, v195, &_s15TokenGeneration11ConstraintsOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v207 = swift_allocObject();
    *(v207 + 16) = xmmword_220AE8A30;
    *(v207 + 32) = v204;
    v208 = type metadata accessor for TokenHealingDecoder();
    v209 = swift_allocObject();
    v210 = (v209 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
    v211 = MEMORY[0x277D84F90];
    *v210 = MEMORY[0x277D84F90];
    v210[1] = v211;
    v210[2] = v211;
    *(v209 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3024, v209 + 16);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v195, v209 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd);
    *(v209 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v207;
    v568 = v211;
    v569 = 0;
    v570 = 1;
    v212 = *(v537 + *(v527 + 44));
    if (v212 < 1)
    {
      v539 = v208;
      v238 = *(v0 + 5088);
      if (!*(v238 + 16))
      {
        v329 = type metadata accessor for BasicDecoder();
        swift_beginAccess();
        closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v568, (v0 + 3664));
        swift_beginAccess();
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 3624);
        v330 = *(v0 + 3688);
        v331 = *(v0 + 3696);
        v332 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 3664, v330);
        v333 = *(v330 - 8);
        v334 = swift_task_alloc();
        (*(v333 + 16))(v334, v332, v330);
        v335 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v334, (v0 + 3624), v329, v330, v331);
        __swift_destroy_boxed_opaque_existential_1(v0 + 3664);

        *(v0 + 3088) = v329;
        *(v0 + 3096) = &protocol witness table for BasicDecoder;
        *(v0 + 3064) = v335;
        v208 = v539;
LABEL_126:
        v190 = (v0 + 2984);
        outlined destroy of [Int](*(v0 + 4528), &_s15TokenGeneration11ConstraintsOSgMd);
        __swift_destroy_boxed_opaque_existential_1(v0 + 3024);
        outlined init with take of RandomNumberGenerator((v0 + 3064), v209 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
        *(v209 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v568;
        *(v0 + 3008) = v208;
        *(v0 + 3016) = &protocol witness table for TokenHealingDecoder;
        *(v0 + 2984) = v209;
        goto LABEL_127;
      }

      v239 = *(v0 + 4392);
      v240 = *(v0 + 4384);
      v241 = *(v0 + 4376);
      v242 = *(v238 + 48);
      *(v0 + 416) = *(v238 + 32);
      *(v0 + 432) = v242;
      v244 = *(v238 + 80);
      v243 = *(v238 + 96);
      v245 = *(v238 + 64);
      *(v0 + 496) = *(v238 + 112);
      *(v0 + 464) = v244;
      *(v0 + 480) = v243;
      *(v0 + 448) = v245;
      v246 = *(v0 + 416);
      v247 = (v0 + 424);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
      SamplingParameters.speculationParameters.getter();
      v543 = v209;
      v529 = v246;
      if ((*(v239 + 48))(v241, 1, v240) == 1)
      {
        outlined destroy of [Int](*(v0 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd);
        v248 = *(v0 + 440);
        v571 = *v247;
        v572 = v248;
        v573 = *(v0 + 456);
        v574 = *(v0 + 472);
        v249 = *(v0 + 480);
        v250 = *(v0 + 488);
        v251 = *(v0 + 496);
      }

      else
      {
        (*(*(v0 + 4392) + 32))(*(v0 + 4408), *(v0 + 4376), *(v0 + 4384));
        v336 = Logger.logObject.getter();
        v337 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v336, v337))
        {
          v338 = swift_slowAlloc();
          *v338 = 0;
          _os_log_impl(&dword_220940000, v336, v337, "Overriding default speculation behavior from sampling parameters", v338, 2u);
          MEMORY[0x223D90A10](v338, -1, -1);
        }

        v339 = *(v0 + 4408);
        v340 = *(v0 + 4392);
        v341 = *(v0 + 4384);

        v342 = *(v0 + 472);
        v584 = *(v0 + 456);
        v585[0] = v342;
        *(v585 + 9) = *(v0 + 481);
        v343 = *(v0 + 440);
        v582 = *v247;
        v583 = v343;
        DraftingBehavior.updated(with:)(&v575);
        (*(v340 + 8))(v339, v341);
        v571 = v575;
        v572 = v576;
        v573 = v577;
        v249 = v579;
        v574 = v578;
        v250 = v580;
        v251 = v581;
      }

      v344 = *(v0 + 5072);
      v345 = *(v0 + 4952);
      v346 = *(v0 + 4920);
      v347 = *(v0 + 4864);
      v348 = *(v0 + 4784);
      swift_beginAccess();
      v349 = v572;
      *v547 = v571;
      *(v0 + 784) = v349;
      *(v0 + 800) = v573;
      *(v0 + 816) = v574;
      v516 = v250;
      v522 = v249;
      *(v0 + 824) = v249;
      *(v0 + 832) = v250;
      *(v0 + 840) = v251;
      *(v0 + 3288) = type metadata accessor for E5TransformerLanguageModel();
      *(v0 + 3296) = &protocol witness table for E5TransformerLanguageModel;
      *(v0 + 3264) = v529;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
      addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 3264, v344, v346, v0 + 3224);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3264);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3224, v0 + 3344);
      v350 = swift_allocObject();

      v352 = specialized MaskedLanguageModel.init(_:_:)(v351, (v0 + 3344), v350);
      v345(v347, v346, v348);

      v353 = Logger.logObject.getter();
      v354 = static os_log_type_t.default.getter();

      v355 = os_log_type_enabled(v353, v354);
      v356 = *(v0 + 4968);
      v357 = *(v0 + 4864);
      v358 = *(v0 + 4784);
      v531 = v352;
      v509 = v251;
      if (v355)
      {
        v359 = swift_slowAlloc();
        v360 = swift_slowAlloc();
        *&v582 = v360;
        *v359 = 136446466;
        *(v0 + 4280) = v352;

        v361 = String.init<A>(describing:)();
        v363 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v361, v362, &v582);

        *(v359 + 4) = v363;
        *(v359 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v364 = dispatch thunk of CustomStringConvertible.description.getter();
        v366 = v365;
        v356(v357, v358);
        v367 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v364, v366, &v582);
        v352 = v531;

        *(v359 + 14) = v367;
        _os_log_impl(&dword_220940000, v353, v354, "Using draft language model %{public}s for request %{public}s", v359, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v360, -1, -1);
        MEMORY[0x223D90A10](v359, -1, -1);
      }

      else
      {

        v356(v357, v358);
      }

      *(v0 + 3448) = v549;
      *(v0 + 3456) = &protocol witness table for MaskedLanguageModel;
      *(v0 + 3424) = v352;

      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 3424, &v568, (v0 + 3384));
      __swift_destroy_boxed_opaque_existential_1(v0 + 3424);
      v368 = v522;
      if (v522 < 1)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 3464);
        v208 = v539;
        v209 = v543;
        v380 = v516;
      }

      else
      {
        (*(v0 + 4952))(*(v0 + 4856), *(v0 + 4920), *(v0 + 4784));
        v369 = Logger.logObject.getter();
        v370 = static os_log_type_t.default.getter();
        v371 = os_log_type_enabled(v369, v370);
        v372 = *(v0 + 4968);
        v373 = *(v0 + 4856);
        v374 = *(v0 + 4784);
        if (v371)
        {
          v375 = swift_slowAlloc();
          v552 = swift_slowAlloc();
          *&v582 = v552;
          *v375 = 136446722;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v376 = dispatch thunk of CustomStringConvertible.description.getter();
          v378 = v377;
          v372(v373, v374);
          v379 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v376, v378, &v582);
          v368 = v522;

          *(v375 + 4) = v379;
          *(v375 + 12) = 2050;
          *(v375 + 14) = v522;
          *(v375 + 22) = 2050;
          v380 = v516;
          *(v375 + 24) = v516;
          _os_log_impl(&dword_220940000, v369, v370, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v375, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v552);
          MEMORY[0x223D90A10](v552, -1, -1);
          MEMORY[0x223D90A10](v375, -1, -1);
        }

        else
        {

          v372(v373, v374);
          v380 = v516;
        }

        v381 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

        v382 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v368, v381);

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 1144);
        v383 = type metadata accessor for SpeculativeStreamingLanguageModel();
        v384 = swift_allocObject();
        v385 = MEMORY[0x277D84F90];
        v384[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v384[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v385);
        outlined init with take of RandomNumberGenerator((v0 + 1144), (v384 + 2));
        v384[7] = v380;
        v384[8] = v382;
        *(v0 + 3488) = v383;
        *(v0 + 3496) = &protocol witness table for SpeculativeStreamingLanguageModel;
        *(v0 + 3464) = v384;
        v208 = v539;
        v209 = v543;
      }

      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v568, (v0 + 3504));
      SamplingParameters.priorInferenceOutput.getter();
      if (v386)
      {
        v387 = dispatch thunk of TokenizerRunner.tokenize(_:)();
        LookupLanguageModelState<>.init(priorOutputTokens:)(v387, &v582);
        v389 = *(&v582 + 1);
        v388 = v582;
        v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
        v391 = swift_allocObject();
        *(v391 + 16) = __PAIR128__(v389, v388);
        v208 = v539;
        *(v391 + 32) = 2;
        *(v0 + 3608) = v390;
        *(v0 + 3616) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 3584) = v391;
      }

      else
      {
        *(v0 + 3616) = 0;
        *(v0 + 3584) = 0u;
        *(v0 + 3600) = 0u;
      }

      v392 = *(v0 + 4648);
      v393 = *(v0 + 4304);
      v582 = v571;
      v583 = v572;
      v584 = v573;
      *&v585[0] = v574;
      *(&v585[0] + 1) = v368;
      *&v585[1] = v380;
      BYTE8(v585[1]) = v509;
      swift_beginAccess();
      v394 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v569, v393, v392);
      DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 3464, v0 + 3504, v0 + 3584, v0 + 1344, v394, (v0 + 1008));
      v553 = *(v0 + 1032);
      v395 = *(v0 + 1032);
      v396 = __swift_project_boxed_opaque_existential_1((v0 + 1008), v395);
      *(v0 + 3088) = v553;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3064));
      (*(*(v395 - 8) + 16))(boxed_opaque_existential_1, v396, v395);

      outlined destroy of [Int](v0 + 416, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3504);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3384);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3224);
      outlined destroy of [Int](v0 + 3584, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3464);
      v309 = v0 + 1008;
    }

    else
    {
      v542 = v209;
      v213 = *(v0 + 4648) + *(*(v0 + 4632) + 36);
      v214 = *(v213 + 8);
      v215 = *(v213 + 64);
      if (v214 == 2)
      {
        v216 = 1;
      }

      else
      {
        v216 = v215;
      }

      (*(v0 + 4952))(*(v0 + 4872), *(v0 + 4920), *(v0 + 4784));
      v217 = Logger.logObject.getter();
      v218 = static os_log_type_t.default.getter();
      v219 = os_log_type_enabled(v217, v218);
      v220 = *(v0 + 4968);
      v221 = *(v0 + 4872);
      v222 = *(v0 + 4784);
      if (v219)
      {
        v538 = v208;
        v223 = swift_slowAlloc();
        v551 = swift_slowAlloc();
        *&v582 = v551;
        *v223 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v521 = v216;
        v224 = dispatch thunk of CustomStringConvertible.description.getter();
        v528 = v218;
        v225 = v212;
        v227 = v226;
        v220(v221, v222);
        v228 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v227, &v582);
        v212 = v225;

        *(v223 + 4) = v228;
        *(v223 + 12) = 2050;
        *(v223 + 14) = v225;
        *(v223 + 22) = 2050;
        v229 = v521;
        *(v223 + 24) = v521;
        _os_log_impl(&dword_220940000, v217, v528, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v223, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v551);
        MEMORY[0x223D90A10](v551, -1, -1);
        v230 = v223;
        v208 = v538;
        MEMORY[0x223D90A10](v230, -1, -1);
      }

      else
      {

        v220(v221, v222);
        v229 = v216;
      }

      v299 = *(v0 + 5120);
      v300 = *(v0 + 5112);
      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v568, (v0 + 3544));
      v301 = (*(v300 + 88))(v299, v300);

      v302 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v212, v301);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3544, v0 + 3184);
      type metadata accessor for SpeculativeStreamingLanguageModel();
      v303 = swift_allocObject();
      v304 = MEMORY[0x277D84F90];
      v303[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v303[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v304);
      v17 = outlined init with take of RandomNumberGenerator((v0 + 3184), (v303 + 2));
      v303[7] = v229;
      v303[8] = v302;
      v209 = v542;
      if (v229 < 1)
      {
        goto LABEL_152;
      }

      LOBYTE(v575) = 1;
      LOBYTE(v582) = 1;
      *(v0 + 848) = v212;
      *(v0 + 856) = 0;
      *(v0 + 864) = v229;
      *(v0 + 872) = 0;
      *(v0 + 880) = 1;
      *(v0 + 884) = 0;
      *(v0 + 888) = 1;
      *(v0 + 889) = 0;
      *(v0 + 892) = 0;
      *(v0 + 896) = 1;
      *(v0 + 904) = 0;
      *(v0 + 912) = 1;
      *(v0 + 920) = 0;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2904);
      v305 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
      v306 = swift_allocObject();

      v308 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v307, (v0 + 848), (v0 + 2904), v306);
      *(v0 + 3088) = v305;
      *(v0 + 3096) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

      *(v0 + 3064) = v308;
      v309 = v0 + 3544;
    }

    __swift_destroy_boxed_opaque_existential_1(v309);
    goto LABEL_126;
  }

  (*(v0 + 4952))(*(v0 + 4848), *(v0 + 4920), *(v0 + 4784));
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  v137 = os_log_type_enabled(v135, v136);
  v138 = *(v0 + 4968);
  v139 = *(v0 + 4848);
  v140 = *(v0 + 4784);
  if (v137)
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v582 = v142;
    *v141 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v143 = dispatch thunk of CustomStringConvertible.description.getter();
    v145 = v144;
    v138(v139, v140);
    v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, &v582);

    *(v141 + 4) = v146;
    _os_log_impl(&dword_220940000, v135, v136, "Not using token healing for request %{public}s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v142);
    MEMORY[0x223D90A10](v142, -1, -1);
    MEMORY[0x223D90A10](v141, -1, -1);
  }

  else
  {

    v138(v139, v140);
  }

  v147 = *(v0 + 4648);
  v148 = *(v0 + 4632);
  v569 = 0;
  v570 = 1;
  v149 = *(v147 + *(v148 + 44));
  if (v149 < 1)
  {
    v167 = *(v0 + 5088);
    if (*(v167 + 16))
    {
      v168 = *(v0 + 4392);
      v169 = *(v0 + 4384);
      v170 = *(v0 + 4368);
      v171 = *(v167 + 48);
      *(v0 + 680) = *(v167 + 32);
      *(v0 + 696) = v171;
      v173 = *(v167 + 80);
      v172 = *(v167 + 96);
      v174 = *(v167 + 64);
      *(v0 + 760) = *(v167 + 112);
      *(v0 + 728) = v173;
      *(v0 + 744) = v172;
      *(v0 + 712) = v174;
      v175 = *(v0 + 680);
      v176 = (v0 + 688);
      v536 = v0 + 680;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 680, v0 + 592, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
      SamplingParameters.speculationParameters.getter();
      v513 = v175;
      if ((*(v168 + 48))(v170, 1, v169) == 1)
      {
        outlined destroy of [Int](*(v0 + 4368), &_s15TokenGeneration21SpeculationParametersVSgMd);
        v564 = *v176;
        v565 = *(v0 + 704);
        v566 = *(v0 + 720);
        v567 = *(v0 + 736);
        v177 = *(v0 + 744);
        v178 = *(v0 + 752);
        v179 = *(v0 + 760);
      }

      else
      {
        (*(*(v0 + 4392) + 32))(*(v0 + 4400), *(v0 + 4368), *(v0 + 4384));
        v255 = Logger.logObject.getter();
        v256 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v255, v256))
        {
          v257 = swift_slowAlloc();
          *v257 = 0;
          _os_log_impl(&dword_220940000, v255, v256, "Overriding default speculation behavior from sampling parameters", v257, 2u);
          MEMORY[0x223D90A10](v257, -1, -1);
        }

        v258 = *(v0 + 4400);
        v259 = *(v0 + 4392);
        v260 = *(v0 + 4384);

        v261 = *(v0 + 736);
        v584 = *(v0 + 720);
        v585[0] = v261;
        *(v585 + 9) = *(v0 + 745);
        v262 = *(v0 + 704);
        v582 = *v176;
        v583 = v262;
        DraftingBehavior.updated(with:)(&v575);
        (*(v259 + 8))(v258, v260);
        v564 = v575;
        v565 = v576;
        v566 = v577;
        v177 = v579;
        v567 = v578;
        v178 = v580;
        v179 = v581;
      }

      v263 = *(v0 + 5072);
      v264 = *(v0 + 4952);
      v265 = *(v0 + 4920);
      v266 = *(v0 + 4832);
      v267 = *(v0 + 4784);
      swift_beginAccess();
      *v547 = v564;
      *(v0 + 784) = v565;
      *(v0 + 800) = v566;
      *(v0 + 816) = v567;
      v530 = v177;
      *(v0 + 824) = v177;
      v504 = v178;
      *(v0 + 832) = v178;
      *(v0 + 840) = v179;
      *(v0 + 1728) = type metadata accessor for E5TransformerLanguageModel();
      *(v0 + 1736) = &protocol witness table for E5TransformerLanguageModel;
      *(v0 + 1704) = v513;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v536, v0 + 504, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
      addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 1704, v263, v265, v0 + 1664);
      __swift_destroy_boxed_opaque_existential_1(v0 + 1704);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1664, v0 + 1784);
      v268 = v549;
      v269 = swift_allocObject();

      v271 = specialized MaskedLanguageModel.init(_:_:)(v270, (v0 + 1784), v269);
      v264(v266, v265, v267);

      v272 = Logger.logObject.getter();
      v273 = static os_log_type_t.default.getter();

      v274 = os_log_type_enabled(v272, v273);
      v275 = *(v0 + 4968);
      v276 = *(v0 + 4832);
      v277 = *(v0 + 4784);
      if (v274)
      {
        v506 = *(v0 + 4968);
        v278 = swift_slowAlloc();
        v514 = swift_slowAlloc();
        *&v582 = v514;
        *v278 = 136446466;
        *(v0 + 4248) = v271;

        v279 = String.init<A>(describing:)();
        v281 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v279, v280, &v582);

        *(v278 + 4) = v281;
        *(v278 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v282 = dispatch thunk of CustomStringConvertible.description.getter();
        v284 = v283;
        v506(v276, v277);
        v285 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v282, v284, &v582);
        v268 = v549;

        *(v278 + 14) = v285;
        _os_log_impl(&dword_220940000, v272, v273, "Using draft language model %{public}s for request %{public}s", v278, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v514, -1, -1);
        MEMORY[0x223D90A10](v278, -1, -1);
      }

      else
      {

        v275(v276, v277);
      }

      *(v0 + 1848) = v268;
      *(v0 + 1856) = &protocol witness table for MaskedLanguageModel;
      *(v0 + 1824) = v271;
      v286 = v530;
      if (v530 < 1)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 1864);

        v298 = v504;
      }

      else
      {
        (*(v0 + 4952))(*(v0 + 4824), *(v0 + 4920), *(v0 + 4784));

        v287 = Logger.logObject.getter();
        v288 = static os_log_type_t.default.getter();
        v289 = os_log_type_enabled(v287, v288);
        v290 = *(v0 + 4968);
        v291 = *(v0 + 4824);
        v292 = *(v0 + 4784);
        if (v289)
        {
          v293 = swift_slowAlloc();
          v515 = swift_slowAlloc();
          *&v582 = v515;
          *v293 = 136446722;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v294 = dispatch thunk of CustomStringConvertible.description.getter();
          v296 = v295;
          v290(v291, v292);
          v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v294, v296, &v582);
          v286 = v530;

          *(v293 + 4) = v297;
          *(v293 + 12) = 2050;
          *(v293 + 14) = v530;
          *(v293 + 22) = 2050;
          v298 = v504;
          *(v293 + 24) = v504;
          _os_log_impl(&dword_220940000, v287, v288, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v293, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v515);
          MEMORY[0x223D90A10](v515, -1, -1);
          MEMORY[0x223D90A10](v293, -1, -1);
        }

        else
        {

          v290(v291, v292);
          v298 = v504;
        }

        v310 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

        v311 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v286, v310);

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 2544);
        v312 = type metadata accessor for SpeculativeStreamingLanguageModel();
        v313 = swift_allocObject();
        v314 = MEMORY[0x277D84F90];
        v313[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v313[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v314);
        outlined init with take of RandomNumberGenerator((v0 + 2544), (v313 + 2));
        v313[7] = v298;
        v313[8] = v311;
        *(v0 + 1888) = v312;
        *(v0 + 1896) = &protocol witness table for SpeculativeStreamingLanguageModel;
        *(v0 + 1864) = v313;
      }

      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1904);
      SamplingParameters.priorInferenceOutput.getter();
      if (v315)
      {
        v316 = dispatch thunk of TokenizerRunner.tokenize(_:)();
        LookupLanguageModelState<>.init(priorOutputTokens:)(v316, &v582);
        v319 = v582;
        v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
        v321 = swift_allocObject();
        *(v321 + 16) = v319;
        *(v321 + 32) = 2;
        *(v0 + 2008) = v320;
        *(v0 + 2016) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 1984) = v321;
      }

      else
      {
        *(v0 + 2016) = 0;
        *(v0 + 1984) = 0u;
        *(v0 + 2000) = 0u;
      }

      v322 = *(v0 + 4648);
      v323 = *(v0 + 4304);
      v582 = v564;
      v583 = v565;
      v584 = v566;
      *&v585[0] = v567;
      *(&v585[0] + 1) = v286;
      *&v585[1] = v298;
      BYTE8(v585[1]) = v179;
      swift_beginAccess();
      v324 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v569, v323, v322);
      DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 1864, v0 + 1904, v0 + 1984, v0 + 1344, v324, (v0 + 1056));
      v325 = *(v0 + 1080);
      v326 = *(v0 + 1088);
      v327 = __swift_project_boxed_opaque_existential_1((v0 + 1056), v325);
      *(v0 + 1528) = v325;
      *(v0 + 1536) = v326;
      v190 = (v0 + 1504);
      v328 = __swift_allocate_boxed_opaque_existential_1((v0 + 1504));
      (*(*(v325 - 8) + 16))(v328, v327, v325);

      outlined destroy of [Int](v536, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
      __swift_destroy_boxed_opaque_existential_1(v0 + 1904);
      __swift_destroy_boxed_opaque_existential_1(v0 + 1824);
      __swift_destroy_boxed_opaque_existential_1(v0 + 1664);
      outlined destroy of [Int](v0 + 1984, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v0 + 1864);
      __swift_destroy_boxed_opaque_existential_1(v0 + 1056);
    }

    else
    {
      v231 = type metadata accessor for BasicDecoder();
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2624);
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2744);
      v232 = *(v0 + 2648);
      v233 = *(v0 + 2656);
      v234 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2624, v232);
      v235 = *(v232 - 8);
      v236 = swift_task_alloc();
      (*(v235 + 16))(v236, v234, v232);
      v237 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v236, (v0 + 2744), v231, v232, v233);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2624);

      *(v0 + 1528) = v231;
      *(v0 + 1536) = &protocol witness table for BasicDecoder;
      *(v0 + 1504) = v237;
      v190 = (v0 + 1504);
    }
  }

  else
  {
    v150 = v147 + *(v148 + 36);
    v151 = *(v150 + 8);
    v152 = *(v150 + 64);
    if (v151 == 2)
    {
      v153 = 1;
    }

    else
    {
      v153 = v152;
    }

    (*(v0 + 4952))(*(v0 + 4840), *(v0 + 4920), *(v0 + 4784));
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.default.getter();
    v156 = os_log_type_enabled(v154, v155);
    v157 = *(v0 + 4968);
    v158 = *(v0 + 4840);
    v159 = *(v0 + 4784);
    if (v156)
    {
      v550 = v153;
      v160 = swift_slowAlloc();
      v535 = swift_slowAlloc();
      *&v582 = v535;
      *v160 = 136446722;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v526 = v155;
      v161 = dispatch thunk of CustomStringConvertible.description.getter();
      v162 = v149;
      v164 = v163;
      v157(v158, v159);
      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v164, &v582);
      v149 = v162;

      *(v160 + 4) = v165;
      *(v160 + 12) = 2050;
      *(v160 + 14) = v162;
      *(v160 + 22) = 2050;
      *(v160 + 24) = v550;
      _os_log_impl(&dword_220940000, v154, v526, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v160, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v535);
      MEMORY[0x223D90A10](v535, -1, -1);
      v166 = v160;
      v153 = v550;
      MEMORY[0x223D90A10](v166, -1, -1);
    }

    else
    {

      v157(v158, v159);
    }

    v180 = *(v0 + 5120);
    v181 = *(v0 + 5112);
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2784);
    v182 = (*(v181 + 88))(v180, v181);

    v183 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v149, v182);

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2784, v0 + 2864);
    type metadata accessor for SpeculativeStreamingLanguageModel();
    v184 = swift_allocObject();
    v185 = MEMORY[0x277D84F90];
    v184[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v184[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v185);
    v17 = outlined init with take of RandomNumberGenerator((v0 + 2864), (v184 + 2));
    v184[7] = v153;
    v184[8] = v183;
    if (v153 < 1)
    {
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    LOBYTE(v575) = 1;
    LOBYTE(v582) = 1;
    *(v0 + 928) = v149;
    *(v0 + 936) = 0;
    *(v0 + 944) = v153;
    *(v0 + 952) = 0;
    *(v0 + 960) = 1;
    *(v0 + 964) = 0;
    *(v0 + 968) = 1;
    *(v0 + 969) = 0;
    *(v0 + 972) = 0;
    *(v0 + 976) = 1;
    *(v0 + 984) = 0;
    *(v0 + 992) = 1;
    *(v0 + 1000) = 0;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2944);
    v186 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
    v187 = swift_allocObject();

    v189 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v188, (v0 + 928), (v0 + 2944), v187);
    *(v0 + 1528) = v186;
    *(v0 + 1536) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

    *(v0 + 1504) = v189;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2784);
    v190 = (v0 + 1504);
  }

LABEL_127:
  outlined init with take of RandomNumberGenerator(v190, v0 + 1464);
  v398 = *(v0 + 4952);
  v399 = *(v0 + 4920);
  v400 = *(v0 + 4816);
  v401 = *(v0 + 4784);
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2104);
  v398(v400, v399, v401);
  v402 = Logger.logObject.getter();
  v403 = static os_log_type_t.info.getter();
  v404 = os_log_type_enabled(v402, v403);
  v405 = *(v0 + 4968);
  v406 = *(v0 + 4816);
  v407 = *(v0 + 4784);
  if (v404)
  {
    v408 = swift_slowAlloc();
    v554 = swift_slowAlloc();
    *&v582 = v554;
    *v408 = 136446466;
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2104, v0 + 2504);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd);
    v409 = String.init<A>(describing:)();
    v411 = v410;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2104);
    v412 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v409, v411, &v582);

    *(v408 + 4) = v412;
    *(v408 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v413 = dispatch thunk of CustomStringConvertible.description.getter();
    v415 = v414;
    v405(v406, v407);
    v416 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v413, v415, &v582);

    *(v408 + 14) = v416;
    _os_log_impl(&dword_220940000, v402, v403, "Using decoder %{public}s for request %{public}s", v408, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v554, -1, -1);
    MEMORY[0x223D90A10](v408, -1, -1);
  }

  else
  {

    v405(v406, v407);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2104);
  }

  v417 = *(*(v0 + 5056) + 16);

  v418 = 0;
  if (v417)
  {
    v419 = 32;
    while (1)
    {
      v420 = *(v0 + 4352);
      outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 5056) + v419, v0 + 2144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v421 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v422 = swift_dynamicCast();
      v423 = *(v421 - 8);
      (*(v423 + 56))(v420, v422 ^ 1u, 1, v421);
      LODWORD(v420) = (*(v423 + 48))(v420, 1, v421);
      v17 = outlined destroy of [Int](*(v0 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
      if (v420 != 1)
      {
        break;
      }

      ++v418;
      v419 += 40;
      if (v417 == v418)
      {
        v418 = v417;
        break;
      }
    }
  }

  v424 = *(v0 + 5056);
  v425 = *(v424 + 16);
  if (v418 != v425)
  {
    if (v418 < v425)
    {
      v428 = *(v0 + 4344);
      v429 = *(v0 + 4336);
      outlined init with copy of DeterministicLanguageModelProtocol(v424 + 40 * v418 + 32, v0 + 2184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v427 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v430 = swift_dynamicCast();
      v431 = *(v427 - 8);
      v432 = *(v431 + 56);
      v432(v428, v430 ^ 1u, 1, v427);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v428, v429, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
      v17 = (*(v431 + 48))(v429, 1, v427);
      if (v17 != 1)
      {
        v433 = *(v0 + 4360);
        v434 = *(v0 + 4344);
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(*(v0 + 4336), v433, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        outlined destroy of [Int](v434, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
        v432(v433, 0, 1, v427);
        goto LABEL_140;
      }

LABEL_153:
      __break(1u);
      return MEMORY[0x2822009F8](v17, v16, v18);
    }

    __break(1u);
    goto LABEL_151;
  }

  v426 = *(v0 + 4360);
  v427 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  (*(*(v427 - 8) + 56))(v426, 1, 1, v427);
LABEL_140:
  v435 = *(v0 + 4616);
  v436 = *(v0 + 4600);
  v437 = *(v0 + 4360);
  v438 = *(v0 + 4328);

  v555 = *(v435 + *(v436 + 28));

  v544 = SamplingParameters.useHighQualityImageTokenization.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v437, v438, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v439 = (*(*(v427 - 8) + 48))(v438, 1, v427);
  v440 = *(v0 + 4328);
  if (v439 == 1)
  {
    outlined destroy of [Int](v440, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    v441 = 0;
  }

  else
  {
    v442 = (v440 + *(v427 + 28));
    v443 = *v442;
    v444 = v442[1];
    v445 = v442[2];
    v446 = v442[3];
    v510 = v446;
    v517 = *v442;
    v448 = v442[4];
    v447 = v442[5];
    v505 = v442[6];
    v507 = v445;
    v532 = *(v0 + 4328);
    v540 = *(v440 + *(v427 + 32));
    v449 = type metadata accessor for OnDeviceImagePreprocessor();
    v450 = swift_allocObject();
    type metadata accessor for ImageTokenizer();
    v523 = *(v532 + 16);
    v450[2] = v443;
    v450[3] = v444;
    v450[4] = v445;
    v450[5] = v446;
    v450[6] = v448;
    v450[7] = v447;
    v450[8] = v505;
    *(v0 + 2488) = v449;
    *(v0 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v0 + 2464) = v450;
    v441 = swift_allocObject();
    v451 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2464, v449);
    v452 = *(v449 - 8);
    v453 = swift_task_alloc();
    (*(v452 + 16))(v453, v451, v449);
    v454 = *v453;
    *(v441 + 40) = v449;
    *(v441 + 16) = v454;
    *(v441 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v441 + 56) = v517;
    *(v441 + 64) = v444;
    *(v441 + 72) = v507;
    *(v441 + 80) = v510;
    *(v441 + 88) = v448;
    *(v441 + 96) = v447;
    *(v441 + 104) = v505;
    *(v441 + 112) = v523;
    *(v441 + 128) = v540;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2464);

    outlined destroy of InferenceRequest(v532, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  }

  v533 = *(v0 + 5168);
  v455 = *(v0 + 5144);
  v456 = *(v0 + 412);
  v457 = *(v0 + 4648);
  v458 = *(v0 + 4632);
  v459 = *(v0 + 4616);
  v518 = *(v0 + 588);
  v524 = *(v0 + 4480);
  v511 = *(v0 + 4464);

  v545 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v460, v544 & 1, v441);

  outlined copy of ClassifierMetadata?(v561, v563);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v561, v563, v558, v0 + 2344, v455, v0 + 128);

  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2304);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 128, v0 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
  swift_beginAccess();
  v461 = *(v0 + 816);
  v584 = *(v0 + 800);
  v585[0] = v461;
  *(v585 + 9) = *(v0 + 825);
  v462 = *(v0 + 784);
  v582 = *v547;
  v583 = v462;
  v463 = *(v459 + v456);
  v464 = *(v457 + v458[10]);
  v465 = *(v457 + v458[12]);
  v466 = (v457 + v458[17]);
  v467 = *v466;
  v468 = v466[1];
  v470 = v466[2];
  v469 = v466[3];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v457 + v518, v511, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  LODWORD(v455) = v533(v511, 1, v524);
  v541 = v465;

  v512 = v463;

  v548 = v464;

  v534 = v467;
  v519 = v470;
  v525 = v468;
  v508 = v469;
  outlined copy of StopToken?(v467, v468, v470, v469);
  if (v455 == 1)
  {
    v471 = *(v0 + 5168);
    v472 = *(v0 + 4520);
    v473 = *(v0 + 4488);
    v474 = *(v0 + 4480);
    v475 = *(v0 + 4464);
    v476 = *(v0 + 4360);
    static PromptPreprocessingTemplateVersion.default.getter();

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
    outlined destroy of [Int](v476, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1464);
    (*(v473 + 8))(v472, v474);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined destroy of [Int](v556, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    if (v471(v475, 1, v474) != 1)
    {
      outlined destroy of [Int](*(v0 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    }
  }

  else
  {
    v477 = *(v0 + 4520);
    v478 = *(v0 + 4496);
    v479 = *(v0 + 4488);
    v480 = *(v0 + 4480);
    v481 = *(v0 + 4464);
    v482 = *(v0 + 4360);

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
    outlined destroy of [Int](v482, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1464);
    (*(v479 + 8))(v477, v480);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined destroy of [Int](v556, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    (*(v479 + 32))(v478, v481, v480);
  }

  v483 = *(v0 + 5144);
  v484 = *(v0 + 5136);
  v503 = *(v0 + 5056);
  v485 = *(v0 + 4968);
  v486 = *(v0 + 4920);
  v487 = *(v0 + 4784);
  v502 = *(v0 + 4648);
  v500 = *(v0 + 4616);
  v488 = *(v0 + 4496);
  v489 = *(v0 + 4488);
  v501 = *(v0 + 4480);
  v490 = *(v0 + 4320);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v500 + *(*(v0 + 4600) + 44), v490, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  *(v0 + 2448) = v484;
  *(v0 + 2456) = MEMORY[0x277D71E08];
  *(v0 + 2424) = v483;
  v485(v486, v487);
  type metadata accessor for OnDeviceInferenceContext();
  v491 = swift_allocObject();
  v492 = v491 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
  *v492 = 0;
  *(v492 + 8) = 1;
  *(v491 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
  *(v491 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
  outlined init with take of RandomNumberGenerator((v0 + 2304), v491 + 16);
  v493 = *(v0 + 48);
  *(v491 + 104) = *(v0 + 64);
  v494 = *(v0 + 96);
  *(v491 + 120) = *(v0 + 80);
  *(v491 + 136) = v494;
  *(v491 + 152) = *(v0 + 112);
  v495 = *(v0 + 32);
  *(v491 + 56) = *(v0 + 16);
  *(v491 + 72) = v495;
  *(v491 + 88) = v493;
  v496 = v583;
  *(v491 + 168) = v582;
  v497 = v584;
  v498 = v585[0];
  *(v491 + 225) = *(v585 + 9);
  *(v491 + 216) = v498;
  *(v491 + 200) = v497;
  *(v491 + 184) = v496;
  *(v491 + 248) = v512;
  *(v491 + 304) = v555;
  outlined init with take of RandomNumberGenerator((v0 + 2424), v491 + 256);
  *(v491 + 296) = v503;
  *(v491 + 312) = v548;
  *(v491 + 320) = v541;
  *(v491 + 328) = v561;
  *(v491 + 336) = v563;
  *(v491 + 344) = v558;
  *(v491 + 352) = v534;
  *(v491 + 360) = v525;
  *(v491 + 368) = v519;
  *(v491 + 376) = v508;
  *(v491 + 384) = v545;
  (*(v489 + 32))(v491 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v488, v501);
  outlined init with take of Asset?(v490, v491 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  outlined destroy of InferenceRequest(v500, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1344);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2344);
  outlined destroy of InferenceRequest(v502, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v499 = *(v0 + 8);

  return v499(v491);
}

{
  v1 = *(*v0 + 4456);
  v2 = *(*v0 + 4448);
  v3 = *(*v0 + 4440);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), 0, 0);
}

{
  v566 = v0;
  outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v1 = *(v0 + 1960);
  *(v0 + 1744) = *(v0 + 1944);
  *(v0 + 1760) = v1;
  *(v0 + 1776) = *(v0 + 1976);
  v541 = *(v0 + 5192);
  v2 = *(v0 + 5184);
  v3 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 2024, v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1744, v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  type metadata accessor for ToolCallLanguageModel();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = v2;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, (v4 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, (v4 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v543 = v4;
  v4[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220AE8A30;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v6 = *(v0 + 1208);
  if (v6)
  {
    v7 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), *(v0 + 1208));
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1184);
  }

  else
  {
    outlined destroy of [Int](v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v8 = 0;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v9 = *(v0 + 1248);
  if (v9)
  {
    v10 = *(v0 + 1256);
    __swift_project_boxed_opaque_existential_1((v0 + 1224), *(v0 + 1248));
    v11 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1224);
  }

  else
  {
    outlined destroy of [Int](v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v11 = 0;
  }

  v12 = v9 == 0;
  v13 = v6 == 0;
  v14 = *(v0 + 4952);
  v15 = *(v0 + 4920);
  v16 = *(v0 + 4896);
  v17 = *(v0 + 4784);
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v5 + 32) = v8;
  *(v5 + 40) = v13;
  *(v5 + 48) = v11;
  *(v5 + 56) = v12;
  *(v5 + 57) = 2;
  *(v5 + 64) = v18;
  outlined destroy of [Int](v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  outlined destroy of [Int](v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v543[5] = v5;
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1304);
  v19 = type metadata accessor for MaskedLanguageModel();
  v20 = swift_allocObject();

  v22 = specialized MaskedLanguageModel.init(_:_:)(v21, (v0 + 1304), v20);
  v528 = v19;
  *(v0 + 1288) = v19;
  *(v0 + 1296) = &protocol witness table for MaskedLanguageModel;
  *(v0 + 1264) = v22;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2344);
  outlined init with take of RandomNumberGenerator((v0 + 1264), v0 + 2344);
  v14(v16, v15, v17);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 4968);
  v27 = *(v0 + 4896);
  v28 = *(v0 + 4784);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v538 = swift_slowAlloc();
    *&v562 = v538;
    *v29 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd);
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v562);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v26(v27, v28);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v562);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_220940000, v23, v24, "Using base language model %{public}s for request %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v538, -1, -1);
    MEMORY[0x223D90A10](v29, -1, -1);
  }

  else
  {

    v26(v27, v28);
  }

  v37 = *(v0 + 4648);
  v38 = *(v0 + 4632);
  v39 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
  if (v40)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = v39;
  }

  v42 = SamplingParameters.randomSeed.getter();
  v44 = (v37 + *(v38 + 64));
  v46 = *v44;
  v45 = v44[1];
  v539 = v44[2];
  if (v45)
  {
    v47 = type metadata accessor for ClassificationSampling();
    swift_allocObject();

    v48 = v541;
    v49 = ClassificationSampling.init(defaultClass:outputClasses:)(v46, v45);
    if (v541)
    {
LABEL_15:
      v50 = *(v0 + 4968);
      v51 = *(v0 + 4920);
      v52 = *(v0 + 4784);
      v540 = *(v0 + 4648);
      v536 = *(v0 + 4616);
      v53 = *(v0 + 4520);
      v54 = *(v0 + 4488);
      v55 = *(v0 + 4480);

      (*(v54 + 8))(v53, v55);
      outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      v50(v51, v52);
      outlined destroy of InferenceRequest(v536, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2344);
      outlined destroy of InferenceRequest(v540, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

      *(v0 + 5216) = *(v0 + 5056);
      *(v0 + 5208) = v48;
      v56 = __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 16), *(*(v0 + 4304) + 40));
      *(v0 + 5224) = v56;
      v57 = *v56;
      v58 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v59 = 0;

      return MEMORY[0x2822009F8](v58, v57, v59);
    }

    *(v0 + 2288) = v47;
    *(v0 + 2296) = &protocol witness table for ClassificationSampling;
    *(v0 + 2264) = v49;
    v69 = (v0 + 2264);
    goto LABEL_23;
  }

  v60 = v43;
  v61 = v42;
  v62 = *(v0 + 4416);
  SamplingParameters.strategy.getter();
  v63 = type metadata accessor for SamplingStrategy();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 48))(v62, 1, v63);
  v66 = *(v0 + 4432);
  if (v65 == 1)
  {
    outlined destroy of [Int](*(v0 + 4416), &_s15TokenGeneration16SamplingStrategyVSgMd);
    v67 = type metadata accessor for SamplingStrategy.Choice();
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
    outlined destroy of [Int](v66, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
    goto LABEL_20;
  }

  v70 = *(v0 + 4424);
  v71 = *(v0 + 4416);
  SamplingStrategy.choice.getter();
  (*(v64 + 8))(v71, v63);
  v72 = type metadata accessor for SamplingStrategy.Choice();
  v73 = *(v72 - 8);
  (*(v73 + 56))(v66, 0, 1, v72);
  outlined init with take of Asset?(v66, v70, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd);
  v74 = (*(v73 + 88))(v70, v72);
  if (v74 == *MEMORY[0x277D71C40])
  {
    v75 = *(v0 + 4424);
    (*(v73 + 96))(v75, v72);
    v76 = *v75;
    if (v60)
    {
      v77 = 0;
    }

    else
    {
      v77 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v48 = v541;
    *(&v563 + 1) = &type metadata for SeedableRandomNumberGenerator;
    *&v564 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *&v562 = v77;
    v227 = type metadata accessor for NucleusSampling();
    swift_allocObject();
    v228 = NucleusSampling.init(p:temperature:generator:)(&v562, v76, v41);
    if (v541)
    {
      goto LABEL_15;
    }

    *(v0 + 2408) = v227;
    *(v0 + 2416) = &protocol witness table for NucleusSampling;
    *(v0 + 2384) = v228;
    v69 = (v0 + 2384);
    goto LABEL_23;
  }

  if (v74 == *MEMORY[0x277D71C48])
  {
    v164 = *(v0 + 4424);
    (*(v73 + 96))(v164, v72);
    v165 = *v164;
    if (v60)
    {
      v166 = 0;
    }

    else
    {
      v166 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v48 = v541;
    *(&v563 + 1) = &type metadata for SeedableRandomNumberGenerator;
    *&v564 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *&v562 = v166;
    v293 = type metadata accessor for TopK();
    swift_allocObject();
    v294 = TopK.init(k:temperature:generator:)(v165, &v562, v41);
    if (v541)
    {
      goto LABEL_15;
    }

    *(v0 + 2608) = v293;
    *(v0 + 2616) = &protocol witness table for TopK;
    *(v0 + 2584) = v294;
    v69 = (v0 + 2584);
LABEL_23:
    outlined init with take of RandomNumberGenerator(v69, v0 + 1344);
    v541 = 0;
    goto LABEL_30;
  }

  if (v74 != *MEMORY[0x277D71C50])
  {
    (*(v73 + 8))(*(v0 + 4424), v72);
    if (v60)
    {
      v229 = 0;
    }

    else
    {
      v229 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    *(v0 + 2728) = &type metadata for SeedableRandomNumberGenerator;
    *(v0 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *(v0 + 2704) = v229;
    v78 = type metadata accessor for GreedySampling();
    v79 = swift_allocObject();
    v80 = (v0 + 2704);
    goto LABEL_29;
  }

LABEL_20:
  if (v60)
  {
    v68 = 0;
  }

  else
  {
    v68 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
  }

  *(v0 + 1408) = &type metadata for SeedableRandomNumberGenerator;
  *(v0 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
  *(v0 + 1384) = v68;
  v78 = type metadata accessor for GreedySampling();
  v79 = swift_allocObject();
  v80 = (v0 + 1384);
LABEL_29:
  outlined init with take of RandomNumberGenerator(v80, v79 + 16);
  *(v0 + 1368) = v78;
  *(v0 + 1376) = &protocol witness table for GreedySampling;
  *(v0 + 1344) = v79;
LABEL_30:
  (*(v0 + 4952))(*(v0 + 4888), *(v0 + 4920), *(v0 + 4784));
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.info.getter();
  v83 = os_log_type_enabled(v81, v82);
  v84 = *(v0 + 4968);
  v85 = *(v0 + 4888);
  v86 = *(v0 + 4784);
  v537 = v45;
  v535 = v46;
  if (v83)
  {
    v87 = swift_slowAlloc();
    v525 = swift_slowAlloc();
    *&v562 = v525;
    *v87 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2824);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd);
    v88 = String.init<A>(describing:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v562);

    *(v87 + 4) = v90;
    *(v87 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v84(v85, v86);
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v562);

    *(v87 + 14) = v94;
    _os_log_impl(&dword_220940000, v81, v82, "Using sampling %{public}s for request %{public}s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v525, -1, -1);
    MEMORY[0x223D90A10](v87, -1, -1);
  }

  else
  {

    v84(v85, v86);
  }

  v526 = (v0 + 768);
  *(v0 + 768) = xmmword_220AED900;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 825) = 0u;
  v95 = SamplingParameters.tokenHealing.getter();
  if (v95 != 2 && (v95 & 1) != 0)
  {
    (*(v0 + 4952))(*(v0 + 4880), *(v0 + 4920), *(v0 + 4784));
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 4968);
    v100 = *(v0 + 4880);
    v101 = *(v0 + 4784);
    if (v98)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v562 = v103;
      *v102 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      v99(v100, v101);
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v562);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_220940000, v96, v97, "Using token healing for request %{public}s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x223D90A10](v103, -1, -1);
      MEMORY[0x223D90A10](v102, -1, -1);
    }

    else
    {

      v99(v100, v101);
    }

    v499 = *(v0 + 500);
    v167 = *(v0 + 5128);
    v508 = *(v0 + 4632);
    v516 = *(v0 + 4648);
    v168 = *(v0 + 4528);
    v169 = *(v0 + 4288);
    v170 = (v516 + *(v508 + 68));
    v171 = *v170;
    v172 = v170[1];
    v173 = v170[2];
    v174 = v170[3];
    __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 56), *(*(v0 + 4304) + 80));
    v175 = off_2834512B0[0]();
    v177 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v175, v176, v171, v172, v173, v174);

    v178 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
    v179 = swift_allocObject();
    *(v179 + 32) = 1;
    *(v179 + 40) = 0;
    *(v179 + 48) = 513;
    *(v179 + 16) = v167;
    *(v179 + 24) = 0;
    *(v0 + 3048) = v178;
    *(v0 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
    *(v0 + 3024) = v179;
    v180 = v168;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v169 + v499, v168, &_s15TokenGeneration11ConstraintsOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_220AE8A30;
    *(v181 + 32) = v177;
    v182 = type metadata accessor for TokenHealingDecoder();
    v183 = swift_allocObject();
    v184 = (v183 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
    v185 = MEMORY[0x277D84F90];
    *v184 = MEMORY[0x277D84F90];
    v184[1] = v185;
    v184[2] = v185;
    *(v183 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3024, v183 + 16);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v180, v183 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd);
    v522 = v183;
    *(v183 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v181;
    v548 = v185;
    v549 = 0;
    v550 = 1;
    v186 = *(v516 + *(v508 + 44));
    if (v186 >= 1)
    {
      v500 = v182;
      v187 = *(v0 + 4648) + *(*(v0 + 4632) + 36);
      v188 = *(v187 + 8);
      v189 = *(v187 + 64);
      if (v188 == 2)
      {
        v190 = 1;
      }

      else
      {
        v190 = v189;
      }

      (*(v0 + 4952))(*(v0 + 4872), *(v0 + 4920), *(v0 + 4784));
      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.default.getter();
      v193 = os_log_type_enabled(v191, v192);
      v194 = *(v0 + 4968);
      v195 = *(v0 + 4872);
      v196 = *(v0 + 4784);
      if (v193)
      {
        v197 = swift_slowAlloc();
        v530 = swift_slowAlloc();
        *&v562 = v530;
        *v197 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v517 = v192;
        v198 = v186;
        v199 = dispatch thunk of CustomStringConvertible.description.getter();
        v509 = v190;
        v201 = v200;
        v194(v195, v196);
        v202 = v199;
        v186 = v198;
        v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202, v201, &v562);

        *(v197 + 4) = v203;
        *(v197 + 12) = 2050;
        *(v197 + 14) = v198;
        *(v197 + 22) = 2050;
        v204 = v509;
        *(v197 + 24) = v509;
        _os_log_impl(&dword_220940000, v191, v517, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v197, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v530);
        MEMORY[0x223D90A10](v530, -1, -1);
        MEMORY[0x223D90A10](v197, -1, -1);
      }

      else
      {

        v194(v195, v196);
        v204 = v190;
      }

      v274 = *(v0 + 5120);
      v275 = *(v0 + 5112);
      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v548, (v0 + 3544));
      v276 = (*(v275 + 88))(v274, v275);

      v277 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v186, v276);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3544, v0 + 3184);
      type metadata accessor for SpeculativeStreamingLanguageModel();
      v278 = swift_allocObject();
      v279 = MEMORY[0x277D84F90];
      v278[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v278[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v279);
      v58 = outlined init with take of RandomNumberGenerator((v0 + 3184), (v278 + 2));
      v278[7] = v204;
      v278[8] = v277;
      v280 = v500;
      if (v204 < 1)
      {
        goto LABEL_144;
      }

      LOBYTE(v555) = 1;
      LOBYTE(v562) = 1;
      *(v0 + 848) = v186;
      *(v0 + 856) = 0;
      *(v0 + 864) = v204;
      *(v0 + 872) = 0;
      *(v0 + 880) = 1;
      *(v0 + 884) = 0;
      *(v0 + 888) = 1;
      *(v0 + 889) = 0;
      *(v0 + 892) = 0;
      *(v0 + 896) = 1;
      *(v0 + 904) = 0;
      *(v0 + 912) = 1;
      *(v0 + 920) = 0;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2904);
      v281 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
      v282 = swift_allocObject();

      v284 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v283, (v0 + 848), (v0 + 2904), v282);
      *(v0 + 3088) = v281;
      *(v0 + 3096) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

      *(v0 + 3064) = v284;
      v285 = v0 + 3544;
      goto LABEL_117;
    }

    v212 = v182;
    v213 = *(v0 + 5088);
    if (!*(v213 + 16))
    {
      v305 = type metadata accessor for BasicDecoder();
      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v548, (v0 + 3664));
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 3624);
      v306 = *(v0 + 3688);
      v307 = *(v0 + 3696);
      v308 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 3664, v306);
      v309 = *(v306 - 8);
      v310 = swift_task_alloc();
      (*(v309 + 16))(v310, v308, v306);
      v311 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v310, (v0 + 3624), v305, v306, v307);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3664);

      *(v0 + 3088) = v305;
      *(v0 + 3096) = &protocol witness table for BasicDecoder;
      *(v0 + 3064) = v311;
      v280 = v212;
LABEL_118:
      v163 = (v0 + 2984);
      outlined destroy of [Int](*(v0 + 4528), &_s15TokenGeneration11ConstraintsOSgMd);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3024);
      outlined init with take of RandomNumberGenerator((v0 + 3064), v522 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
      *(v522 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v548;
      *(v0 + 3008) = v280;
      *(v0 + 3016) = &protocol witness table for TokenHealingDecoder;
      *(v0 + 2984) = v522;
      goto LABEL_119;
    }

    v214 = *(v0 + 4392);
    v215 = *(v0 + 4384);
    v216 = *(v0 + 4376);
    v217 = *(v213 + 48);
    *(v0 + 416) = *(v213 + 32);
    *(v0 + 432) = v217;
    v219 = *(v213 + 80);
    v218 = *(v213 + 96);
    v220 = *(v213 + 64);
    *(v0 + 496) = *(v213 + 112);
    *(v0 + 464) = v219;
    *(v0 + 480) = v218;
    *(v0 + 448) = v220;
    v221 = *(v0 + 416);
    v222 = (v0 + 424);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
    SamplingParameters.speculationParameters.getter();
    v492 = v221;
    v501 = v212;
    if ((*(v214 + 48))(v216, 1, v215) == 1)
    {
      outlined destroy of [Int](*(v0 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd);
      v223 = *(v0 + 440);
      v551 = *v222;
      v552 = v223;
      v553 = *(v0 + 456);
      v554 = *(v0 + 472);
      v224 = *(v0 + 480);
      v225 = *(v0 + 488);
      v226 = *(v0 + 496);
    }

    else
    {
      (*(*(v0 + 4392) + 32))(*(v0 + 4408), *(v0 + 4376), *(v0 + 4384));
      v312 = Logger.logObject.getter();
      v313 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v312, v313))
      {
        v314 = swift_slowAlloc();
        *v314 = 0;
        _os_log_impl(&dword_220940000, v312, v313, "Overriding default speculation behavior from sampling parameters", v314, 2u);
        MEMORY[0x223D90A10](v314, -1, -1);
      }

      v315 = *(v0 + 4408);
      v316 = *(v0 + 4392);
      v317 = *(v0 + 4384);

      v318 = *(v0 + 472);
      v564 = *(v0 + 456);
      v565[0] = v318;
      *(v565 + 9) = *(v0 + 481);
      v319 = *(v0 + 440);
      v562 = *v222;
      v563 = v319;
      DraftingBehavior.updated(with:)(&v555);
      (*(v316 + 8))(v315, v317);
      v551 = v555;
      v552 = v556;
      v553 = v557;
      v224 = v559;
      v554 = v558;
      v225 = v560;
      v226 = v561;
    }

    v320 = *(v0 + 5072);
    v321 = *(v0 + 4952);
    v322 = *(v0 + 4920);
    v323 = *(v0 + 4864);
    v324 = *(v0 + 4784);
    swift_beginAccess();
    v325 = v552;
    *v526 = v551;
    *(v0 + 784) = v325;
    *(v0 + 800) = v553;
    *(v0 + 816) = v554;
    v519 = v224;
    *(v0 + 824) = v224;
    v485 = v225;
    *(v0 + 832) = v225;
    *(v0 + 840) = v226;
    *(v0 + 3288) = type metadata accessor for E5TransformerLanguageModel();
    *(v0 + 3296) = &protocol witness table for E5TransformerLanguageModel;
    *(v0 + 3264) = v492;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 3264, v320, v322, v0 + 3224);
    __swift_destroy_boxed_opaque_existential_1(v0 + 3264);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3224, v0 + 3344);
    v326 = v528;
    v327 = swift_allocObject();

    v329 = specialized MaskedLanguageModel.init(_:_:)(v328, (v0 + 3344), v327);
    v321(v323, v322, v324);

    v330 = Logger.logObject.getter();
    v331 = static os_log_type_t.default.getter();

    v332 = os_log_type_enabled(v330, v331);
    v333 = *(v0 + 4968);
    v334 = *(v0 + 4864);
    v335 = *(v0 + 4784);
    v510 = v226;
    if (v332)
    {
      v336 = swift_slowAlloc();
      v494 = swift_slowAlloc();
      *&v562 = v494;
      *v336 = 136446466;
      *(v0 + 4280) = v329;

      v337 = String.init<A>(describing:)();
      v339 = v329;
      v340 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v337, v338, &v562);

      *(v336 + 4) = v340;
      *(v336 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v341 = dispatch thunk of CustomStringConvertible.description.getter();
      v343 = v342;
      v333(v334, v335);
      v344 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v343, &v562);
      v329 = v339;

      *(v336 + 14) = v344;
      _os_log_impl(&dword_220940000, v330, v331, "Using draft language model %{public}s for request %{public}s", v336, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v494, -1, -1);
      v345 = v336;
      v326 = v528;
      MEMORY[0x223D90A10](v345, -1, -1);
    }

    else
    {

      v333(v334, v335);
    }

    *(v0 + 3448) = v326;
    *(v0 + 3456) = &protocol witness table for MaskedLanguageModel;
    *(v0 + 3424) = v329;

    closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 3424, &v548, (v0 + 3384));
    __swift_destroy_boxed_opaque_existential_1(v0 + 3424);
    v346 = v519;
    if (v519 < 1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 3464);
      v280 = v501;
      v358 = v485;
    }

    else
    {
      (*(v0 + 4952))(*(v0 + 4856), *(v0 + 4920), *(v0 + 4784));
      v347 = Logger.logObject.getter();
      v348 = static os_log_type_t.default.getter();
      v349 = os_log_type_enabled(v347, v348);
      v350 = *(v0 + 4968);
      v351 = *(v0 + 4856);
      v352 = *(v0 + 4784);
      if (v349)
      {
        v353 = swift_slowAlloc();
        v495 = swift_slowAlloc();
        *&v562 = v495;
        *v353 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v354 = dispatch thunk of CustomStringConvertible.description.getter();
        v356 = v355;
        v350(v351, v352);
        v357 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v354, v356, &v562);
        v346 = v519;

        *(v353 + 4) = v357;
        *(v353 + 12) = 2050;
        *(v353 + 14) = v519;
        *(v353 + 22) = 2050;
        v358 = v485;
        *(v353 + 24) = v485;
        _os_log_impl(&dword_220940000, v347, v348, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v353, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v495);
        MEMORY[0x223D90A10](v495, -1, -1);
        MEMORY[0x223D90A10](v353, -1, -1);
      }

      else
      {

        v350(v351, v352);
        v358 = v485;
      }

      v359 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

      v360 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v346, v359);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 1144);
      v361 = type metadata accessor for SpeculativeStreamingLanguageModel();
      v362 = swift_allocObject();
      v363 = MEMORY[0x277D84F90];
      v362[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v362[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v363);
      outlined init with take of RandomNumberGenerator((v0 + 1144), (v362 + 2));
      v362[7] = v358;
      v362[8] = v360;
      *(v0 + 3488) = v361;
      *(v0 + 3496) = &protocol witness table for SpeculativeStreamingLanguageModel;
      *(v0 + 3464) = v362;
      v280 = v501;
    }

    swift_beginAccess();
    closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v548, (v0 + 3504));
    SamplingParameters.priorInferenceOutput.getter();
    if (v364)
    {
      v365 = dispatch thunk of TokenizerRunner.tokenize(_:)();
      if (!v541)
      {
        LookupLanguageModelState<>.init(priorOutputTokens:)(v365, &v562);
        v366 = v562;
        v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
        v368 = swift_allocObject();
        *(v368 + 16) = v366;
        *(v368 + 32) = 2;
        *(v0 + 3608) = v367;
        *(v0 + 3616) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 3584) = v368;
        goto LABEL_116;
      }
    }

    *(v0 + 3616) = 0;
    *(v0 + 3584) = 0u;
    *(v0 + 3600) = 0u;
LABEL_116:
    v369 = *(v0 + 4648);
    v370 = *(v0 + 4304);
    v562 = v551;
    v563 = v552;
    v564 = v553;
    *&v565[0] = v554;
    *(&v565[0] + 1) = v346;
    *&v565[1] = v358;
    BYTE8(v565[1]) = v510;
    swift_beginAccess();
    v371 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v549, v370, v369);
    DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 3464, v0 + 3504, v0 + 3584, v0 + 1344, v371, (v0 + 1008));
    v532 = *(v0 + 1032);
    v372 = *(v0 + 1032);
    v373 = __swift_project_boxed_opaque_existential_1((v0 + 1008), v372);
    *(v0 + 3088) = v532;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3064));
    (*(*(v372 - 8) + 16))(boxed_opaque_existential_1, v373, v372);

    outlined destroy of [Int](v0 + 416, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 3504);
    __swift_destroy_boxed_opaque_existential_1(v0 + 3384);
    __swift_destroy_boxed_opaque_existential_1(v0 + 3224);
    outlined destroy of [Int](v0 + 3584, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 3464);
    v285 = v0 + 1008;
LABEL_117:
    __swift_destroy_boxed_opaque_existential_1(v285);
    goto LABEL_118;
  }

  (*(v0 + 4952))(*(v0 + 4848), *(v0 + 4920), *(v0 + 4784));
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  v110 = os_log_type_enabled(v108, v109);
  v111 = *(v0 + 4968);
  v112 = *(v0 + 4848);
  v113 = *(v0 + 4784);
  if (v110)
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v562 = v115;
    *v114 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    v111(v112, v113);
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, &v562);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_220940000, v108, v109, "Not using token healing for request %{public}s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x223D90A10](v115, -1, -1);
    MEMORY[0x223D90A10](v114, -1, -1);
  }

  else
  {

    v111(v112, v113);
  }

  v120 = *(v0 + 4648);
  v121 = *(v0 + 4632);
  v549 = 0;
  v550 = 1;
  v122 = *(v120 + *(v121 + 44));
  if (v122 < 1)
  {
    v140 = *(v0 + 5088);
    if (!*(v140 + 16))
    {
      v205 = type metadata accessor for BasicDecoder();
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2624);
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2744);
      v206 = *(v0 + 2648);
      v207 = *(v0 + 2656);
      v208 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2624, v206);
      v209 = *(v206 - 8);
      v210 = swift_task_alloc();
      (*(v209 + 16))(v210, v208, v206);
      v211 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v210, (v0 + 2744), v205, v206, v207);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2624);

      *(v0 + 1528) = v205;
      *(v0 + 1536) = &protocol witness table for BasicDecoder;
      *(v0 + 1504) = v211;
      v163 = (v0 + 1504);
      goto LABEL_119;
    }

    v141 = *(v0 + 4392);
    v142 = *(v0 + 4384);
    v143 = *(v0 + 4368);
    v144 = *(v140 + 48);
    *(v0 + 680) = *(v140 + 32);
    *(v0 + 696) = v144;
    v146 = *(v140 + 80);
    v145 = *(v140 + 96);
    v147 = *(v140 + 64);
    *(v0 + 760) = *(v140 + 112);
    *(v0 + 728) = v146;
    *(v0 + 744) = v145;
    *(v0 + 712) = v147;
    v148 = *(v0 + 680);
    v149 = (v0 + 688);
    v507 = v0 + 680;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 680, v0 + 592, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
    SamplingParameters.speculationParameters.getter();
    v515 = v148;
    if ((*(v141 + 48))(v143, 1, v142) == 1)
    {
      outlined destroy of [Int](*(v0 + 4368), &_s15TokenGeneration21SpeculationParametersVSgMd);
      v544 = *v149;
      v545 = *(v0 + 704);
      v546 = *(v0 + 720);
      v547 = *(v0 + 736);
      v150 = *(v0 + 744);
      v151 = *(v0 + 752);
      v152 = *(v0 + 760);
    }

    else
    {
      (*(*(v0 + 4392) + 32))(*(v0 + 4400), *(v0 + 4368), *(v0 + 4384));
      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        *v232 = 0;
        _os_log_impl(&dword_220940000, v230, v231, "Overriding default speculation behavior from sampling parameters", v232, 2u);
        MEMORY[0x223D90A10](v232, -1, -1);
      }

      v233 = *(v0 + 4400);
      v234 = *(v0 + 4392);
      v235 = *(v0 + 4384);

      v236 = *(v0 + 736);
      v564 = *(v0 + 720);
      v565[0] = v236;
      *(v565 + 9) = *(v0 + 745);
      v237 = *(v0 + 704);
      v562 = *v149;
      v563 = v237;
      DraftingBehavior.updated(with:)(&v555);
      (*(v234 + 8))(v233, v235);
      v544 = v555;
      v545 = v556;
      v546 = v557;
      v150 = v559;
      v547 = v558;
      v151 = v560;
      v152 = v561;
    }

    v238 = *(v0 + 5072);
    v239 = *(v0 + 4952);
    v240 = *(v0 + 4920);
    v241 = *(v0 + 4832);
    v242 = *(v0 + 4784);
    swift_beginAccess();
    *v526 = v544;
    *(v0 + 784) = v545;
    *(v0 + 800) = v546;
    *(v0 + 816) = v547;
    v493 = v151;
    v502 = v150;
    *(v0 + 824) = v150;
    *(v0 + 832) = v151;
    v488 = v152;
    *(v0 + 840) = v152;
    *(v0 + 1728) = type metadata accessor for E5TransformerLanguageModel();
    *(v0 + 1736) = &protocol witness table for E5TransformerLanguageModel;
    *(v0 + 1704) = v515;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v507, v0 + 504, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 1704, v238, v240, v0 + 1664);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1704);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1664, v0 + 1784);
    v243 = v528;
    v244 = swift_allocObject();

    v246 = specialized MaskedLanguageModel.init(_:_:)(v245, (v0 + 1784), v244);
    v239(v241, v240, v242);

    v247 = Logger.logObject.getter();
    v248 = static os_log_type_t.default.getter();

    v249 = os_log_type_enabled(v247, v248);
    v250 = *(v0 + 4968);
    v251 = *(v0 + 4832);
    v252 = *(v0 + 4784);
    v518 = v246;
    if (v249)
    {
      v253 = swift_slowAlloc();
      v486 = swift_slowAlloc();
      *&v562 = v486;
      *v253 = 136446466;
      *(v0 + 4248) = v246;

      v254 = String.init<A>(describing:)();
      v256 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v254, v255, &v562);

      *(v253 + 4) = v256;
      *(v253 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v257 = dispatch thunk of CustomStringConvertible.description.getter();
      v259 = v258;
      v250(v251, v252);
      v260 = v257;
      v246 = v518;
      v261 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v260, v259, &v562);
      v243 = v528;

      *(v253 + 14) = v261;
      _os_log_impl(&dword_220940000, v247, v248, "Using draft language model %{public}s for request %{public}s", v253, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v486, -1, -1);
      MEMORY[0x223D90A10](v253, -1, -1);
    }

    else
    {

      v250(v251, v252);
    }

    *(v0 + 1848) = v243;
    *(v0 + 1856) = &protocol witness table for MaskedLanguageModel;
    *(v0 + 1824) = v246;
    v262 = v502;
    if (v502 < 1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 1864);
    }

    else
    {
      (*(v0 + 4952))(*(v0 + 4824), *(v0 + 4920), *(v0 + 4784));

      v263 = Logger.logObject.getter();
      v264 = static os_log_type_t.default.getter();
      v265 = os_log_type_enabled(v263, v264);
      v266 = *(v0 + 4968);
      v267 = *(v0 + 4824);
      v268 = *(v0 + 4784);
      if (v265)
      {
        v269 = swift_slowAlloc();
        v531 = swift_slowAlloc();
        *&v562 = v531;
        *v269 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v270 = dispatch thunk of CustomStringConvertible.description.getter();
        v272 = v271;
        v266(v267, v268);
        v273 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v270, v272, &v562);
        v262 = v502;

        *(v269 + 4) = v273;
        *(v269 + 12) = 2050;
        *(v269 + 14) = v502;
        *(v269 + 22) = 2050;
        v151 = v493;
        *(v269 + 24) = v493;
        _os_log_impl(&dword_220940000, v263, v264, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v269, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v531);
        MEMORY[0x223D90A10](v531, -1, -1);
        MEMORY[0x223D90A10](v269, -1, -1);
      }

      else
      {

        v266(v267, v268);
        v151 = v493;
      }

      v286 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

      v287 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v262, v286);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 2544);
      v288 = type metadata accessor for SpeculativeStreamingLanguageModel();
      v289 = swift_allocObject();
      v290 = MEMORY[0x277D84F90];
      v289[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v289[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v290);
      outlined init with take of RandomNumberGenerator((v0 + 2544), (v289 + 2));
      v289[7] = v151;
      v289[8] = v287;
      *(v0 + 1888) = v288;
      *(v0 + 1896) = &protocol witness table for SpeculativeStreamingLanguageModel;
      *(v0 + 1864) = v289;
    }

    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1904);
    SamplingParameters.priorInferenceOutput.getter();
    if (v291)
    {
      v292 = dispatch thunk of TokenizerRunner.tokenize(_:)();
      if (!v541)
      {
        LookupLanguageModelState<>.init(priorOutputTokens:)(v292, &v562);
        v295 = v562;
        v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd);
        v297 = swift_allocObject();
        *(v297 + 16) = v295;
        *(v297 + 32) = 2;
        *(v0 + 2008) = v296;
        *(v0 + 2016) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 1984) = v297;
        goto LABEL_95;
      }
    }

    *(v0 + 2016) = 0;
    *(v0 + 1984) = 0u;
    *(v0 + 2000) = 0u;
LABEL_95:
    v298 = *(v0 + 4648);
    v299 = *(v0 + 4304);
    v562 = v544;
    v563 = v545;
    v564 = v546;
    *&v565[0] = v547;
    *(&v565[0] + 1) = v262;
    *&v565[1] = v151;
    BYTE8(v565[1]) = v488;
    swift_beginAccess();
    v300 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v549, v299, v298);
    DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 1864, v0 + 1904, v0 + 1984, v0 + 1344, v300, (v0 + 1056));
    v301 = *(v0 + 1080);
    v302 = *(v0 + 1088);
    v303 = __swift_project_boxed_opaque_existential_1((v0 + 1056), v301);
    *(v0 + 1528) = v301;
    *(v0 + 1536) = v302;
    v163 = (v0 + 1504);
    v304 = __swift_allocate_boxed_opaque_existential_1((v0 + 1504));
    (*(*(v301 - 8) + 16))(v304, v303, v301);

    outlined destroy of [Int](v507, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1904);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1824);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1664);
    outlined destroy of [Int](v0 + 1984, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1864);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1056);
    goto LABEL_119;
  }

  v123 = v120 + *(v121 + 36);
  v124 = *(v123 + 8);
  v125 = *(v123 + 64);
  if (v124 == 2)
  {
    v126 = 1;
  }

  else
  {
    v126 = v125;
  }

  (*(v0 + 4952))(*(v0 + 4840), *(v0 + 4920), *(v0 + 4784));
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();
  v129 = os_log_type_enabled(v127, v128);
  v130 = *(v0 + 4968);
  v131 = *(v0 + 4840);
  v132 = *(v0 + 4784);
  if (v129)
  {
    v529 = v126;
    v133 = swift_slowAlloc();
    v514 = swift_slowAlloc();
    *&v562 = v514;
    *v133 = 136446722;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v506 = v128;
    v134 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = v122;
    v137 = v136;
    v130(v131, v132);
    v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v137, &v562);
    v122 = v135;

    *(v133 + 4) = v138;
    *(v133 + 12) = 2050;
    *(v133 + 14) = v135;
    *(v133 + 22) = 2050;
    *(v133 + 24) = v529;
    _os_log_impl(&dword_220940000, v127, v506, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v133, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v514);
    MEMORY[0x223D90A10](v514, -1, -1);
    v139 = v133;
    v126 = v529;
    MEMORY[0x223D90A10](v139, -1, -1);
  }

  else
  {

    v130(v131, v132);
  }

  v153 = *(v0 + 5120);
  v154 = *(v0 + 5112);
  swift_beginAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2784);
  v155 = (*(v154 + 88))(v153, v154);

  v156 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v122, v155);

  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2784, v0 + 2864);
  type metadata accessor for SpeculativeStreamingLanguageModel();
  v157 = swift_allocObject();
  v158 = MEMORY[0x277D84F90];
  v157[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v157[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v158);
  v58 = outlined init with take of RandomNumberGenerator((v0 + 2864), (v157 + 2));
  v157[7] = v126;
  v157[8] = v156;
  if (v126 < 1)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  LOBYTE(v555) = 1;
  LOBYTE(v562) = 1;
  *(v0 + 928) = v122;
  *(v0 + 936) = 0;
  *(v0 + 944) = v126;
  *(v0 + 952) = 0;
  *(v0 + 960) = 1;
  *(v0 + 964) = 0;
  *(v0 + 968) = 1;
  *(v0 + 969) = 0;
  *(v0 + 972) = 0;
  *(v0 + 976) = 1;
  *(v0 + 984) = 0;
  *(v0 + 992) = 1;
  *(v0 + 1000) = 0;
  swift_beginAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2944);
  v159 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
  v160 = swift_allocObject();

  v162 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v161, (v0 + 928), (v0 + 2944), v160);
  *(v0 + 1528) = v159;
  *(v0 + 1536) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

  *(v0 + 1504) = v162;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2784);
  v163 = (v0 + 1504);
LABEL_119:
  outlined init with take of RandomNumberGenerator(v163, v0 + 1464);
  v375 = *(v0 + 4952);
  v376 = *(v0 + 4920);
  v377 = *(v0 + 4816);
  v378 = *(v0 + 4784);
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2104);
  v375(v377, v376, v378);
  v379 = Logger.logObject.getter();
  v380 = static os_log_type_t.info.getter();
  v381 = os_log_type_enabled(v379, v380);
  v382 = *(v0 + 4968);
  v383 = *(v0 + 4816);
  v384 = *(v0 + 4784);
  if (v381)
  {
    v385 = swift_slowAlloc();
    v533 = swift_slowAlloc();
    *&v562 = v533;
    *v385 = 136446466;
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2104, v0 + 2504);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd);
    v386 = String.init<A>(describing:)();
    v388 = v387;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2104);
    v389 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v386, v388, &v562);

    *(v385 + 4) = v389;
    *(v385 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v390 = dispatch thunk of CustomStringConvertible.description.getter();
    v392 = v391;
    v382(v383, v384);
    v393 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v390, v392, &v562);

    *(v385 + 14) = v393;
    _os_log_impl(&dword_220940000, v379, v380, "Using decoder %{public}s for request %{public}s", v385, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v533, -1, -1);
    MEMORY[0x223D90A10](v385, -1, -1);
  }

  else
  {

    v382(v383, v384);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2104);
  }

  v394 = *(*(v0 + 5056) + 16);

  v395 = 0;
  if (v394)
  {
    v396 = 32;
    while (1)
    {
      v397 = *(v0 + 4352);
      outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 5056) + v396, v0 + 2144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v398 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v399 = swift_dynamicCast();
      v400 = *(v398 - 8);
      (*(v400 + 56))(v397, v399 ^ 1u, 1, v398);
      LODWORD(v397) = (*(v400 + 48))(v397, 1, v398);
      v58 = outlined destroy of [Int](*(v0 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
      if (v397 != 1)
      {
        break;
      }

      ++v395;
      v396 += 40;
      if (v394 == v395)
      {
        v395 = v394;
        break;
      }
    }
  }

  v401 = *(v0 + 5056);
  v402 = *(v401 + 16);
  if (v395 != v402)
  {
    if (v395 < v402)
    {
      v405 = *(v0 + 4344);
      v406 = *(v0 + 4336);
      outlined init with copy of DeterministicLanguageModelProtocol(v401 + 40 * v395 + 32, v0 + 2184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v404 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v407 = swift_dynamicCast();
      v408 = *(v404 - 8);
      v409 = *(v408 + 56);
      v409(v405, v407 ^ 1u, 1, v404);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v405, v406, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
      v58 = (*(v408 + 48))(v406, 1, v404);
      if (v58 != 1)
      {
        v410 = *(v0 + 4360);
        v411 = *(v0 + 4344);
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(*(v0 + 4336), v410, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        outlined destroy of [Int](v411, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
        v409(v410, 0, 1, v404);
        goto LABEL_132;
      }

LABEL_145:
      __break(1u);
      return MEMORY[0x2822009F8](v58, v57, v59);
    }

    __break(1u);
    goto LABEL_143;
  }

  v403 = *(v0 + 4360);
  v404 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  (*(*(v404 - 8) + 56))(v403, 1, 1, v404);
LABEL_132:
  v412 = *(v0 + 4616);
  v413 = *(v0 + 4600);
  v414 = *(v0 + 4360);
  v415 = *(v0 + 4328);

  v534 = *(v412 + *(v413 + 28));

  v416 = SamplingParameters.useHighQualityImageTokenization.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v414, v415, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v417 = (*(*(v404 - 8) + 48))(v415, 1, v404);
  v418 = *(v0 + 4328);
  if (v417 == 1)
  {
    outlined destroy of [Int](v418, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    v419 = 0;
  }

  else
  {
    v420 = *(v404 + 32);
    v421 = (v418 + *(v404 + 28));
    v422 = *v421;
    v423 = v421[1];
    v523 = v416;
    v424 = v421[3];
    v484 = v421[2];
    v426 = v421[4];
    v425 = v421[5];
    v487 = v426;
    v489 = v425;
    v496 = *v421;
    v427 = v421[6];
    v511 = *(v0 + 4328);
    v520 = *(v418 + v420);
    v428 = type metadata accessor for OnDeviceImagePreprocessor();
    v429 = swift_allocObject();
    type metadata accessor for ImageTokenizer();
    v503 = *(v511 + 16);
    v429[2] = v422;
    v429[3] = v423;
    v429[4] = v484;
    v429[5] = v424;
    v429[6] = v426;
    v429[7] = v425;
    v429[8] = v427;
    *(v0 + 2488) = v428;
    *(v0 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v0 + 2464) = v429;
    v419 = swift_allocObject();
    v430 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2464, v428);
    v431 = *(v428 - 8);
    v432 = swift_task_alloc();
    (*(v431 + 16))(v432, v430, v428);
    v433 = *v432;
    *(v419 + 40) = v428;
    *(v419 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v419 + 16) = v433;
    *(v419 + 56) = v496;
    *(v419 + 64) = v423;
    v416 = v523;
    *(v419 + 72) = v484;
    *(v419 + 80) = v424;
    *(v419 + 88) = v487;
    *(v419 + 96) = v489;
    *(v419 + 104) = v427;
    *(v419 + 112) = v503;
    *(v419 + 128) = v520;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2464);

    outlined destroy of InferenceRequest(v511, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  }

  v512 = *(v0 + 5168);
  v434 = *(v0 + 5144);
  v490 = *(v0 + 412);
  v497 = *(v0 + 588);
  v435 = *(v0 + 4648);
  v436 = *(v0 + 4632);
  v437 = *(v0 + 4616);
  v504 = *(v0 + 4480);
  v438 = *(v0 + 4464);

  v524 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v439, v416 & 1, v419);

  outlined copy of ClassifierMetadata?(v535, v537);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v535, v537, v539, v0 + 2344, v434, v0 + 128);

  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2304);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 128, v0 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
  swift_beginAccess();
  v440 = *(v0 + 816);
  v564 = *(v0 + 800);
  v565[0] = v440;
  *(v565 + 9) = *(v0 + 825);
  v441 = *(v0 + 784);
  v562 = *v526;
  v563 = v441;
  v442 = *(v437 + v490);
  v443 = *(v435 + v436[10]);
  v444 = *(v435 + v436[12]);
  v445 = (v435 + v436[17]);
  v446 = *v445;
  v447 = v445[1];
  v448 = v445[2];
  v449 = v445[3];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v435 + v497, v438, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  LODWORD(v435) = v512(v438, 1, v504);
  v527 = v444;

  v498 = v442;

  v542 = v443;

  v513 = v447;
  v521 = v446;
  v505 = v448;
  v491 = v449;
  outlined copy of StopToken?(v446, v447, v448, v449);
  if (v435 == 1)
  {
    v450 = *(v0 + 5168);
    v451 = *(v0 + 4520);
    v452 = *(v0 + 4488);
    v453 = *(v0 + 4480);
    v454 = *(v0 + 4464);
    v455 = *(v0 + 4360);
    static PromptPreprocessingTemplateVersion.default.getter();

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
    outlined destroy of [Int](v455, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1464);
    (*(v452 + 8))(v451, v453);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    if (v450(v454, 1, v453) != 1)
    {
      outlined destroy of [Int](*(v0 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    }
  }

  else
  {
    v456 = *(v0 + 4520);
    v457 = *(v0 + 4496);
    v458 = *(v0 + 4488);
    v459 = *(v0 + 4480);
    v460 = *(v0 + 4464);
    v461 = *(v0 + 4360);

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd);
    outlined destroy of [Int](v461, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1464);
    (*(v458 + 8))(v456, v459);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    (*(v458 + 32))(v457, v460, v459);
  }

  v462 = *(v0 + 5144);
  v463 = *(v0 + 5136);
  v483 = *(v0 + 5056);
  v464 = *(v0 + 4968);
  v465 = *(v0 + 4920);
  v466 = *(v0 + 4784);
  v482 = *(v0 + 4648);
  v480 = *(v0 + 4616);
  v467 = *(v0 + 4496);
  v468 = *(v0 + 4488);
  v481 = *(v0 + 4480);
  v469 = *(v0 + 4320);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v480 + *(*(v0 + 4600) + 44), v469, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  *(v0 + 2448) = v463;
  *(v0 + 2456) = MEMORY[0x277D71E08];
  *(v0 + 2424) = v462;
  v464(v465, v466);
  type metadata accessor for OnDeviceInferenceContext();
  v470 = swift_allocObject();
  v471 = v470 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
  *v471 = 0;
  *(v471 + 8) = 1;
  *(v470 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
  *(v470 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
  outlined init with take of RandomNumberGenerator((v0 + 2304), v470 + 16);
  v472 = *(v0 + 48);
  *(v470 + 104) = *(v0 + 64);
  v473 = *(v0 + 96);
  *(v470 + 120) = *(v0 + 80);
  *(v470 + 136) = v473;
  *(v470 + 152) = *(v0 + 112);
  v474 = *(v0 + 32);
  *(v470 + 56) = *(v0 + 16);
  *(v470 + 72) = v474;
  *(v470 + 88) = v472;
  v475 = v563;
  *(v470 + 168) = v562;
  v476 = v564;
  v477 = v565[0];
  *(v470 + 225) = *(v565 + 9);
  *(v470 + 216) = v477;
  *(v470 + 200) = v476;
  *(v470 + 184) = v475;
  *(v470 + 248) = v498;
  *(v470 + 304) = v534;
  outlined init with take of RandomNumberGenerator((v0 + 2424), v470 + 256);
  *(v470 + 296) = v483;
  *(v470 + 312) = v542;
  *(v470 + 320) = v527;
  *(v470 + 328) = v535;
  *(v470 + 336) = v537;
  *(v470 + 344) = v539;
  *(v470 + 352) = v521;
  *(v470 + 360) = v513;
  *(v470 + 368) = v505;
  *(v470 + 376) = v491;
  *(v470 + 384) = v524;
  (*(v468 + 32))(v470 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v467, v481);
  outlined init with take of Asset?(v469, v470 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  outlined destroy of InferenceRequest(v480, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1344);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2344);
  outlined destroy of InferenceRequest(v482, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v478 = *(v0 + 8);

  return v478(v470);
}

{
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[652]);

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), 0, 0);
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[621];
  v2 = v0[615];
  v3 = v0[598];
  v4 = v0[581];
  v5 = v0[577];
  v6 = v0[570];
  v7 = v0[569];
  v8 = v0[568];

  (*(v7 + 8))(v6, v8);
  outlined destroy of [Int]((v0 + 253), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v1(v2, v3);
  outlined destroy of InferenceRequest(v5, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  __swift_destroy_boxed_opaque_existential_1((v0 + 293));
  outlined destroy of InferenceRequest(v4, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v9 = v0[645];
  v0[652] = v0[632];
  v0[651] = v9;
  v10 = __swift_project_boxed_opaque_existential_1((v0[538] + 16), *(v0[538] + 40));
  v0[653] = v10;
  v11 = *v10;

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), v11, 0);
}