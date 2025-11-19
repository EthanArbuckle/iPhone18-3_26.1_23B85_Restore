uint64_t *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v29 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }

    v8 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v9 = *result;
    v10 = v4;

    outlined consume of Data._Representation(v5, v10);
    *v3 = xmmword_22E0F1110;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v11 = v5;
    v12 = *(v5 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_24;
    }

    v13 = result;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v12, v14))
    {
      v15 = (v13 + v12 - v14);
      result = MEMORY[0x2318E24F0]();
      v16 = *(a2 + 96);
      *v15 = *(a2 + 80);
      v15[1] = v16;
      v15[2] = *(a2 + 112);
      *v3 = v11;
      v3[1] = v8 | 0x8000000000000000;
      goto LABEL_17;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v6)
  {
    result = outlined consume of Data._Representation(*result, v4);
    v7 = *(a2 + 88) | (*(a2 + 92) << 32) | (*(a2 + 93) << 40) | (*(a2 + 94) << 48);
    *v3 = *(a2 + 80);
    v3[1] = v7;
LABEL_17:
    v28 = *MEMORY[0x277D85DE8];
    return result;
  }

  v17 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v18 = result[1];

  outlined consume of Data._Representation(v5, v18);
  *v3 = xmmword_22E0F1110;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v19 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v5)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
    {
LABEL_22:
      __break(1u);
    }

    v20 = type metadata accessor for __DataStorage();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v17 = v23;
  }

  if (v19 < v5)
  {
    goto LABEL_19;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v24 = result;
    v25 = __DataStorage._offset.getter();
    if (!__OFSUB__(v5, v25))
    {
      v26 = (v24 + v5 - v25);
      MEMORY[0x2318E24F0]();
      v27 = *(a2 + 96);
      *v26 = *(a2 + 80);
      v26[1] = v27;
      v26[2] = *(a2 + 112);

      *v3 = v5;
      v3[1] = v17 | 0x4000000000000000;
      goto LABEL_17;
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, char a2, uint64_t a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a1 + 1);

  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  v12 = v6 - v11;
  if (__OFSUB__(v6, v11))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v7 - v6;
  v14 = MEMORY[0x2318E24F0]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.rawValue.getter(v10 + v12, v10 + v12 + v15, a2, a3);
}

void specialized _NativeDictionary.index(after:)(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      type metadata accessor for CFStringRef(0);
      swift_dynamicCast();
      specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v6 = v5;

      if (v6)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  _HashTable.occupiedBucket(after:)();
  v7 = *(a4 + 36);
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 72 * v5);
    v4 += 72 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 16 * v5);
    v4 += 16 * v5;
  }

  return v4;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
      if (v1 != 3)
      {
        v5 = *(result + 44);
      }
    }
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  result = *a1;
  v8 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v6)
    {
      result = MEMORY[0x2318E2B50](result, v8, v4, v5);
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6)
  {
    goto LABEL_18;
  }

  if (v8 != v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  result = *(a2 + 24);
  v8 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (*(a1 + 40))
    {
      result = MEMORY[0x2318E2B50](result, v8, v4, v5);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_19;
  }

  if (v8 != v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < v4)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (a3)
  {
    if (*(a4 + 16))
    {
      v9 = result;
      result = MEMORY[0x2318E2B50](result, a2, v6, v7);
      if (result)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if (*(a4 + 40))
      {
        result = MEMORY[0x2318E2B50](v9, a2, *(a4 + 24), *(a4 + 32));
        if (result)
        {
          return result;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(a4 + 16))
  {
    goto LABEL_18;
  }

  if (a2 != v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 > result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a4 + 40))
  {
    goto LABEL_19;
  }

  if (*(a4 + 32) != a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 24) <= result)
  {
    goto LABEL_13;
  }

  return result;
}

{
  v7 = result;
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (a3)
  {
    if (*(a4 + 16))
    {
      result = MEMORY[0x2318E2B50](result, a2, v8, v9);
      if ((result & 1) == 0)
      {
        if (*(a4 + 40))
        {
          result = MEMORY[0x2318E2B50](*(a4 + 24), *(a4 + 32), v7, a2);
          if ((result & 1) == 0)
          {
            return result;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_18:
        __break(1u);
        return result;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 16))
  {
    goto LABEL_17;
  }

  if (a2 != v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 > result)
  {
    goto LABEL_14;
  }

  if (*(a4 + 40))
  {
    goto LABEL_18;
  }

  if (*(a4 + 32) != a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a4 + 24) < result)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t _sSo11CFStringRefaABSHSCWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionO0I0VSgWOi0_(uint64_t a1)
{
  *a1 = 0x300000000;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
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

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind);
  }

  return result;
}

double _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgWOi0_(_OWORD *a1)
{
  result = NAN;
  *a1 = xmmword_22E0F1120;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  return result;
}

uint64_t _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionO0I0VSgWOg(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOWOi0_Tm(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(result + 128);
  v4 = *(result + 240);
  v5 = *(result + 304);
  v6 = *(result + 176) & 0x3FFFFFFFFLL;
  *result &= 0x3FFFFFFFFuLL;
  *(result + 8) = 0;
  *(result + 64) = v2;
  *(result + 72) = 0;
  *(result + 128) = v3;
  *(result + 152) = 0;
  *(result + 176) = v6;
  *(result + 184) = 0;
  *(result + 240) = v4;
  *(result + 248) = 0;
  *(result + 304) = v5;
  *(result + 328) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions);
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = MEMORY[0x2318E24F0]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v11)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a4(a6, v16, v11);
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FieldDetail and conformance CMFormatDescriptionRef.Extensions.Value.FieldDetail);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ColorPrimaries);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.TransferFunction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix and conformance CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ChromaLocation and conformance CMFormatDescriptionRef.Extensions.Value.ChromaLocation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile and conformance CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.Vendor and conformance CMFormatDescriptionRef.Extensions.Value.Vendor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode and conformance CMFormatDescriptionRef.Extensions.Value.AlphaChannelMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.FontFace and conformance CMFormatDescriptionRef.Extensions.Value.FontFace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags and conformance CMFormatDescriptionRef.Extensions.Value.TextDisplayFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.TextJustification and conformance CMFormatDescriptionRef.Extensions.Value.TextJustification);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.LogTransferFunction and conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.HeroEye and conformance CMFormatDescriptionRef.Extensions.Value.HeroEye);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ContentColorVolume and conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ProjectionKind and conformance CMFormatDescriptionRef.Extensions.Value.ProjectionKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.ViewPackingKind and conformance CMFormatDescriptionRef.Extensions.Value.ViewPackingKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value and conformance CMFormatDescriptionRef.Extensions.Value()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value and conformance CMFormatDescriptionRef.Extensions.Value;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value and conformance CMFormatDescriptionRef.Extensions.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value and conformance CMFormatDescriptionRef.Extensions.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaType and conformance CMFormatDescriptionRef.MediaType);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CMFormatDescriptionRef.Extensions.Value.MPEG2VideoProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.MediaSubType and conformance CMFormatDescriptionRef.MediaSubType);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CMFormatDescriptionRef.Extensions.Key(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.EqualityMask and conformance CMFormatDescriptionRef.EqualityMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.ParameterSetCollection and conformance CMFormatDescriptionRef.ParameterSetCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<CMFormatDescriptionRef.ParameterSetCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo22CMFormatDescriptionRefa9CoreMediaE22ParameterSetCollectionVGMd, &_ss5SliceVySo22CMFormatDescriptionRefa9CoreMediaE22ParameterSetCollectionVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.TimeCode.Flag and conformance CMFormatDescriptionRef.TimeCode.Flag);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.FontFace(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.FontFace(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

__n128 __swift_memcpy49_4(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.ContentColorVolume(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.ContentColorVolume(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 34) | (*(a1 + 8) << 30);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 344) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 352) = 1;
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
      v4 = -a2;
      *a1 = v4 << 34;
      *(a1 + 8) = v4 >> 30;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 336) = 0u;
      return result;
    }

    *(a1 + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(result + 128);
  v4 = *(result + 240);
  v5 = *(result + 304);
  v6 = *(result + 176) & 0x3FFFFFFFFLL;
  *result &= 0x3FFFFFFFFuLL;
  *(result + 8) = 0;
  *(result + 64) = v2;
  *(result + 72) = 0;
  *(result + 128) = v3;
  *(result + 152) = 0;
  *(result + 176) = v6;
  *(result + 184) = 0;
  *(result + 240) = v4;
  *(result + 248) = 0;
  *(result + 304) = v5;
  *(result + 328) = a2 << 63;
  return result;
}

uint64_t getEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy176_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 176))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 168) = 0;
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
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Index(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for CMFormatDescriptionRef.Extensions.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

void CMSampleBufferRef.SampleAttachments.init(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

void specialized TypedCFDictionary.subscript.setter(__int128 *a1, void *a2)
{
  if (*(a1 + 5) >> 60 == 11)
  {
    v3 = a1[3];
    v12 = a1[2];
    v13 = v3;
    v14 = *(a1 + 8);
    v4 = a1[1];
    v10 = *a1;
    v11 = v4;
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v10, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMR);
    v5 = 0;
    v6 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v5 = CMSampleBufferRef.HEVCTemporalInfo.rawCFValue.getter();
    v8 = a1[3];
    v12 = a1[2];
    v13 = v8;
    v14 = *(a1 + 8);
    v9 = a1[1];
    v10 = *a1;
    v11 = v9;
    outlined destroy of CMSampleBufferRef.HEVCTemporalInfo(&v10);
    v6 = &type metadata for TypedCFDictionary;
  }

  v15[0] = v5;
  v15[3] = v6;
  specialized Dictionary.subscript.setter(v15, a2);
}

uint64_t CMSampleBufferRef.SampleAttachments.dictionaryRepresentation.getter()
{
  v1 = *v0;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  Dictionary._bridgeToObjectiveC()();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t CMSampleBufferRef.SampleAttachments.subscript.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = MEMORY[0x2318E2770]();
  v5 = TypedCFDictionary.subscript.getter(v4, v3);

  if (v5)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs8Sendable_pGMd, &_sSDySSs8Sendable_pGMR);
  }

  else
  {
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = result;
  return result;
}

uint64_t key path getter for CMSampleBufferRef.SampleAttachments.subscript(rawAttachment:) : CMSampleBufferRef.SampleAttachments@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = MEMORY[0x2318E2770](*a2, a2[1]);
  v6 = TypedCFDictionary.subscript.getter(v5, v4);

  if (v6)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs8Sendable_pGMd, &_sSDySSs8Sendable_pGMR);
  }

  else
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v6;
  a3[3] = result;
  return result;
}

uint64_t key path setter for CMSampleBufferRef.SampleAttachments.subscript(rawAttachment:) : CMSampleBufferRef.SampleAttachments(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, v6, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);

  return CMSampleBufferRef.SampleAttachments.subscript.setter(v6, v3, v4);
}

uint64_t CMSampleBufferRef.SampleAttachments.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x2318E2770](a2, a3);

  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, v10, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  v5 = v9[0];
  if (swift_dynamicCast())
  {
    v6 = v9[0] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    ObjectType = 0;
    v5 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    ObjectType = swift_getObjectType();
  }

  v9[3] = ObjectType;
  v9[0] = v5;
  specialized Dictionary.subscript.setter(v9, v4);
  return outlined destroy of CMAttachmentBearerAttachments.Value?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
}

void (*CMSampleBufferRef.SampleAttachments.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  v9 = *v3;
  v10 = MEMORY[0x2318E2770](a2, a3);
  v11 = TypedCFDictionary.subscript.getter(v10, v9);

  if (v11)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs8Sendable_pGMd, &_sSDySSs8Sendable_pGMR);
  }

  else
  {
    v12 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *v8 = v11;
  v8[3] = v12;
  return CMSampleBufferRef.SampleAttachments.subscript.modify;
}

void CMSampleBufferRef.SampleAttachments.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  if (a2)
  {
    outlined init with copy of CMAttachmentBearerAttachments.Value?(*a1, v2 + 32, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);

    CMSampleBufferRef.SampleAttachments.subscript.setter(v2 + 32, v5, v4);
    outlined destroy of CMAttachmentBearerAttachments.Value?(v2, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  else
  {

    CMSampleBufferRef.SampleAttachments.subscript.setter(v2, v5, v4);
  }

  free(v2);
}

uint64_t (*CMSampleBufferRef.SampleAttachments.isNotSync.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC06A0];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3) & 1;
  return CMSampleBufferRef.SampleAttachments.isNotSync.modify;
}

uint64_t (*CMSampleBufferRef.SampleAttachments.isPartialSync.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC06A8];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3) & 1;
  return CMSampleBufferRef.SampleAttachments.isNotSync.modify;
}

uint64_t (*CMSampleBufferRef.SampleAttachments.hasRedundantCoding.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0688];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3);
  return CMSampleBufferRef.SampleAttachments.isDependedOnByOthers.modify;
}

uint64_t (*CMSampleBufferRef.SampleAttachments.isDependedOnByOthers.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0690];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3);
  return CMSampleBufferRef.SampleAttachments.isDependedOnByOthers.modify;
}

uint64_t (*CMSampleBufferRef.SampleAttachments.dependsOnOthers.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0640];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3);
  return CMSampleBufferRef.SampleAttachments.dependsOnOthers.modify;
}

uint64_t CMSampleBufferRef.SampleAttachments.hasRedundantCoding.getter(uint64_t *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

void key path setter for CMSampleBufferRef.SampleAttachments.hasRedundantCoding : CMSampleBufferRef.SampleAttachments(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = *a1;
  v6 = *a5;
  if (v5 == 2)
  {
    v7 = 0;
    memset(v8, 0, 24);
  }

  else
  {
    LOBYTE(v8[0]) = v5 & 1;
    v7 = MEMORY[0x277D839B0];
  }

  v8[3] = v7;
  specialized Dictionary.subscript.setter(v8, v6);
}

void CMSampleBufferRef.SampleAttachments.hasRedundantCoding.setter(char a1, void **a2)
{
  v2 = *a2;
  if (a1 == 2)
  {
    v3 = 0;
    memset(v4, 0, 24);
  }

  else
  {
    LOBYTE(v4[0]) = a1 & 1;
    v3 = MEMORY[0x277D839B0];
  }

  v4[3] = v3;
  specialized Dictionary.subscript.setter(v4, v2);
}

uint64_t (*CMSampleBufferRef.SampleAttachments.earlierDisplayTimesAllowed.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0658];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3);
  return CMSampleBufferRef.SampleAttachments.isDependedOnByOthers.modify;
}

void CMSampleBufferRef.SampleAttachments.hasRedundantCoding.modify(uint64_t *a1)
{
  v1 = *(a1 + 16);
  if (v1 == 2)
  {
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    LOBYTE(v5[0]) = v1 & 1;
    v2 = MEMORY[0x277D839B0];
  }

  v4 = *a1;
  v3 = a1[1];
  v5[3] = v2;
  specialized Dictionary.subscript.setter(v5, v3);
}

uint64_t (*CMSampleBufferRef.SampleAttachments.displayImmediately.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0648];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3) & 1;
  return CMSampleBufferRef.SampleAttachments.isNotSync.modify;
}

uint64_t (*CMSampleBufferRef.SampleAttachments.doNotDisplay.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0650];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3) & 1;
  return CMSampleBufferRef.SampleAttachments.doNotDisplay.modify;
}

double CMSampleBufferRef.SampleAttachments.hevcTemporalInfo.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CC0678]), (v5 & 1) != 0) && (outlined init with copy of Any(*(v3 + 56) + 32 * v4, v8), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR), swift_dynamicCast()))
  {
    CMSampleBufferRef.HEVCTemporalInfo.init(rawCFValue:)(v7, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xB000000000000000;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
  }

  return result;
}

void key path setter for CMSampleBufferRef.SampleAttachments.hevcTemporalInfo : CMSampleBufferRef.SampleAttachments(uint64_t a1)
{
  v1 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v1;
  v6 = *(a1 + 64);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v3 = *MEMORY[0x277CC0678];
  outlined init with copy of CMAttachmentBearerAttachments.Value?(v5, v4, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMR);
  specialized TypedCFDictionary.subscript.setter(v5, v3);
}

void CMSampleBufferRef.SampleAttachments.hevcTemporalInfo.setter(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v1;
  v4 = *(a1 + 64);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  specialized TypedCFDictionary.subscript.setter(v3, *MEMORY[0x277CC0678]);
}

void (*CMSampleBufferRef.SampleAttachments.hevcTemporalInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x178uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 360) = v1;
  v5 = *v1;
  v6 = *MEMORY[0x277CC0678];
  *(v4 + 368) = *MEMORY[0x277CC0678];
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0) && (outlined init with copy of Any(*(v5 + 56) + 32 * v7, v4 + 216), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR), swift_dynamicCast()))
  {
    CMSampleBufferRef.HEVCTemporalInfo.init(rawCFValue:)(*(v4 + 288), (v4 + 144));
  }

  else
  {
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0;
    *(v4 + 184) = 0xB000000000000000;
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
    *(v4 + 192) = 0;
  }

  return CMSampleBufferRef.SampleAttachments.hevcTemporalInfo.modify;
}

void CMSampleBufferRef.SampleAttachments.hevcTemporalInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 360);
  v3 = *(*a1 + 368);
  if (a2)
  {
    v5 = *(v2 + 192);
    *(v2 + 32) = *(v2 + 176);
    *(v2 + 48) = v5;
    *(v2 + 64) = *(v2 + 208);
    v6 = *(v2 + 160);
    *v2 = *(v2 + 144);
    *(v2 + 16) = v6;
    v7 = v3;
    outlined init with copy of CMAttachmentBearerAttachments.Value?(v2, v2 + 288, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMR);
    specialized TypedCFDictionary.subscript.setter(v2, v7);
    v8 = *(v2 + 144);
    *(v2 + 232) = *(v2 + 160);
    v9 = *(v2 + 192);
    *(v2 + 248) = *(v2 + 176);
    *(v2 + 264) = v9;
    *(v2 + 280) = *(v2 + 208);
    *(v2 + 216) = v8;
    outlined destroy of CMAttachmentBearerAttachments.Value?(v2 + 216, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE16HEVCTemporalInfoVSgMR);
  }

  else
  {
    v10 = *(v2 + 144);
    *(v2 + 88) = *(v2 + 160);
    v11 = *(v2 + 192);
    *(v2 + 104) = *(v2 + 176);
    *(v2 + 120) = v11;
    *(v2 + 136) = *(v2 + 208);
    *(v2 + 72) = v10;
    specialized TypedCFDictionary.subscript.setter((v2 + 72), v3);
  }

  free(v2);
}

uint64_t (*CMSampleBufferRef.SampleAttachments.hevcTemporalSubLayerAccess.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0680];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3) & 1;
  return CMSampleBufferRef.SampleAttachments.isNotSync.modify;
}

uint64_t CMSampleBufferRef.SampleAttachments.isNotSync.getter(uint64_t *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  return swift_dynamicCast() & v7;
}

void key path setter for CMSampleBufferRef.SampleAttachments.isNotSync : CMSampleBufferRef.SampleAttachments(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = *a5;
  if (*a1 == 1)
  {
    LOBYTE(v7[0]) = 1;
    v6 = MEMORY[0x277D839B0];
  }

  else
  {
    v6 = 0;
    memset(v7, 0, 24);
  }

  v7[3] = v6;
  specialized Dictionary.subscript.setter(v7, v5);
}

void CMSampleBufferRef.SampleAttachments.isNotSync.setter(char a1, void **a2)
{
  v2 = *a2;
  if (a1)
  {
    LOBYTE(v4[0]) = 1;
    v3 = MEMORY[0x277D839B0];
  }

  else
  {
    v3 = 0;
    memset(v4, 0, 24);
  }

  v4[3] = v3;
  specialized Dictionary.subscript.setter(v4, v2);
}

uint64_t (*CMSampleBufferRef.SampleAttachments.hevcStepwiseTemporalSubLayerAccess.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0668];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = specialized TypedCFDictionary.subscript.getter(v4, v3) & 1;
  return CMSampleBufferRef.SampleAttachments.isNotSync.modify;
}

void CMSampleBufferRef.SampleAttachments.isNotSync.modify(uint64_t *a1)
{
  if (*(a1 + 16))
  {
    LOBYTE(v4[0]) = 1;
    v1 = MEMORY[0x277D839B0];
  }

  else
  {
    v1 = 0;
    memset(v4, 0, 24);
  }

  v3 = *a1;
  v2 = a1[1];
  v4[3] = v1;
  specialized Dictionary.subscript.setter(v4, v2);
}

uint64_t (*CMSampleBufferRef.SampleAttachments.hevcSyncSampleNALUnitType.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0670];
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  *a1 = specialized TypedCFDictionary.subscript.getter(v4, v3);
  *(a1 + 8) = v5 & 1;
  return CMSampleBufferRef.SampleAttachments.hevcSyncSampleNALUnitType.modify;
}

uint64_t CMSampleBufferRef.SampleAttachments.hevcSyncSampleNALUnitType.getter(uint64_t *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

void key path setter for CMSampleBufferRef.SampleAttachments.hevcSyncSampleNALUnitType : CMSampleBufferRef.SampleAttachments(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = *a5;
  if (*(a1 + 8) == 1)
  {
    v6 = 0;
    v7 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v6 = *a1;
    v7 = MEMORY[0x277D83B88];
  }

  v8[0] = v6;
  v8[3] = v7;
  specialized Dictionary.subscript.setter(v8, v5);
}

void CMSampleBufferRef.SampleAttachments.hevcSyncSampleNALUnitType.setter(uint64_t a1, char a2, void **a3)
{
  v3 = *a3;
  if (a2)
  {
    a1 = 0;
    v4 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {
    v4 = MEMORY[0x277D83B88];
  }

  v5[0] = a1;
  v5[3] = v4;
  specialized Dictionary.subscript.setter(v5, v3);
}

uint64_t (*CMSampleBufferRef.SampleAttachments.audioIndependentSampleDecoderRefreshCount.modify(uint64_t a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x277CC0620];
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  *a1 = specialized TypedCFDictionary.subscript.getter(v4, v3);
  *(a1 + 8) = v5 & 1;
  return CMSampleBufferRef.SampleAttachments.audioIndependentSampleDecoderRefreshCount.modify;
}

void CMSampleBufferRef.SampleAttachments.hevcSyncSampleNALUnitType.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    v1 = 0;
    v2 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x277D83B88];
  }

  v4 = a1[2];
  v3 = a1[3];
  v5[0] = v1;
  v5[3] = v2;
  specialized Dictionary.subscript.setter(v5, v3);
}

void (*CMSampleBufferRef.SampleAttachments.cryptorSubsampleAuxiliaryData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v5 = *v1;
  *a1 = CMSampleBufferRef.SampleAttachments.cryptorSubsampleAuxiliaryData.getter();
  a1[1] = v3;
  return CMSampleBufferRef.SampleAttachments.cryptorSubsampleAuxiliaryData.modify;
}

uint64_t CMSampleBufferRef.SampleAttachments.cryptorSubsampleAuxiliaryData.getter(uint64_t *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void key path setter for CMSampleBufferRef.SampleAttachments.cryptorSubsampleAuxiliaryData : CMSampleBufferRef.SampleAttachments(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a5;
  if (v6 >> 60 == 15)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12[2] = 0;
  }

  else
  {
    v10 = MEMORY[0x277CC9318];
    v8 = *a1;
    v9 = a1[1];
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[3] = v10;
  v11 = v7;
  outlined copy of Data?(v5, v6);
  specialized Dictionary.subscript.setter(v12, v11);
}

void CMSampleBufferRef.SampleAttachments.cryptorSubsampleAuxiliaryData.setter(uint64_t a1, unint64_t a2, void **a3)
{
  v3 = *a3;
  if (a2 >> 60 == 15)
  {
    a1 = 0;
    a2 = 0;
    v4 = 0;
    v5[2] = 0;
  }

  else
  {
    v4 = MEMORY[0x277CC9318];
  }

  v5[0] = a1;
  v5[1] = a2;
  v5[3] = v4;
  specialized Dictionary.subscript.setter(v5, v3);
}

void (*CMSampleBufferRef.SampleAttachments.hdr10PlusPerFrameData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v5 = *v1;
  *a1 = CMSampleBufferRef.SampleAttachments.hdr10PlusPerFrameData.getter();
  a1[1] = v3;
  return CMSampleBufferRef.SampleAttachments.hdr10PlusPerFrameData.modify;
}

void CMSampleBufferRef.SampleAttachments.cryptorSubsampleAuxiliaryData.modify(uint64_t *a1, char a2, void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  if (a2)
  {
    if (v4 >> 60 == 15)
    {
      v7 = 0;
      v8 = 0;
      v6 = 0;
      v15 = 0;
    }

    else
    {
      v6 = MEMORY[0x277CC9318];
      v7 = *a1;
      v8 = a1[1];
    }

    v9 = a1[2];
    v13 = v7;
    v14 = v8;
    v16 = v6;
    v10 = v5;
    outlined copy of Data?(v3, v4);
    specialized Dictionary.subscript.setter(&v13, v10);

    outlined consume of Data?(v3, v4);
  }

  else
  {
    if (v4 >> 60 == 15)
    {
      v3 = 0;
      v4 = 0;
      v11 = 0;
      v15 = 0;
    }

    else
    {
      v11 = MEMORY[0x277CC9318];
    }

    v12 = a1[2];
    v13 = v3;
    v14 = v4;
    v16 = v11;
    specialized Dictionary.subscript.setter(&v13, v5);
  }
}

uint64_t CMSampleBufferRef.HEVCTemporalInfo.profileCompatibilityFlags.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t CMSampleBufferRef.HEVCTemporalInfo.profileCompatibilityFlags.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CMSampleBufferRef.HEVCTemporalInfo.constraintIndicatorFlags.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

uint64_t CMSampleBufferRef.HEVCTemporalInfo.constraintIndicatorFlags.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t CMSampleBufferRef.HEVCTemporalInfo.init(temporalLayerID:profileSpace:tierFlag:profileIndex:profileCompatibilityFlags:constraintIndicatorFlags:levelIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  outlined consume of Data?(0, 0xF000000000000000);
  a9[4] = a5;
  a9[5] = a6;
  result = outlined consume of Data?(0, 0xF000000000000000);
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t CMSampleBufferRef.HEVCTemporalInfo.init(rawCFValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0570], a1);
  v30 = v5;
  v6 = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0568], a1);
  v29 = v7;
  v28 = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0578], a1);
  v9 = v8;
  v10 = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0560], a1);
  v12 = v11;
  if (*(a1 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CC0558]), (v14 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, &v33);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  if (swift_dynamicCast())
  {
    v15 = *(&v35 + 1);
    v27 = v35;
  }

  else
  {
    v27 = 0;
    v35 = xmmword_22E0F37F0;
    v15 = 0xF000000000000000;
  }

  v26 = v15;
  if (*(a1 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CC0548]), (v17 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v16, &v33);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  if (swift_dynamicCast())
  {
    v19 = v32;
    v18 = v31;
  }

  else
  {
    v18 = 0;
    v19 = 0xF000000000000000;
  }

  if (v12)
  {
    v10 = 0;
  }

  if (v9)
  {
    v20 = 0;
  }

  else
  {
    v20 = v28;
  }

  if (v29)
  {
    v6 = 0;
  }

  if (v30)
  {
    v4 = 0;
  }

  v21 = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0550], a1);
  v23 = v22;

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  outlined consume of Data?(0, 0xF000000000000000);
  result = outlined consume of Data?(0, 0xF000000000000000);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v20;
  a2[3] = v10;
  a2[4] = v27;
  a2[5] = v26;
  a2[6] = v18;
  a2[7] = v19;
  a2[8] = v24;
  return result;
}

uint64_t CMSampleBufferRef.HEVCTemporalInfo.rawCFValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v34 = v0[3];
  *(&v35 + 1) = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  v9 = *MEMORY[0x277CC0570];
  *(inited + 32) = *MEMORY[0x277CC0570];
  v10 = MEMORY[0x277D83B88];
  *(inited + 40) = v1;
  v11 = MEMORY[0x277CC0568];
  *(inited + 16) = xmmword_22E0F3800;
  v12 = *v11;
  *(inited + 80) = v2;
  v13 = MEMORY[0x277CC0578];
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v14 = *v13;
  *(inited + 120) = v3;
  v15 = MEMORY[0x277CC0560];
  *(inited + 104) = v10;
  *(inited + 112) = v14;
  v16 = *v15;
  *(inited + 160) = v34;
  v17 = MEMORY[0x277CC0550];
  *(inited + 144) = v10;
  *(inited + 152) = v16;
  v18 = *v17;
  *(inited + 184) = v10;
  *(inited + 192) = v18;
  *(inited + 224) = v10;
  *(inited + 200) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
  *&v37 = static _DictionaryStorage.allocate(capacity:)();
  *&v35 = v4;
  outlined copy of Data?(v4, *(&v35 + 1));
  outlined copy of Data?(v5, v6);
  v19 = v9;
  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v18;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v24, 1, &v37);
  swift_setDeallocating();
  v25 = *(inited + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  v26 = v37;
  v39 = v37;
  v27 = *MEMORY[0x277CC0558];
  v28 = MEMORY[0x277CC9318];
  if (*(&v35 + 1) >> 60 == 15)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v27, &v37);
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v37, &_sypSgMd, "lR");
  }

  else
  {
    v38 = MEMORY[0x277CC9318];
    v37 = v35;
    outlined init with take of Any(&v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v27, isUniquelyReferenced_nonNull_native);
    v39 = v26;
  }

  v30 = *MEMORY[0x277CC0548];
  if (v6 >> 60 == 15)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(*MEMORY[0x277CC0548], &v37);
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v37, &_sypSgMd, "lR");
    return v39;
  }

  else
  {
    v38 = v28;
    *&v37 = v5;
    *(&v37 + 1) = v6;
    outlined init with take of Any(&v37, v36);
    v32 = v39;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v30, v33);
    return v32;
  }
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x2318E24F0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x2318E24F0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x2318E24F0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL specialized static CMSampleBufferRef.HEVCTemporalInfo.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2].i64[0];
  v3 = a1[2].u64[1];
  v6 = a1[3].i64[0];
  v5 = a1[3].u64[1];
  v7 = a1[4].i64[0];
  v9 = a2[2].i64[0];
  v8 = a2[2].u64[1];
  v11 = a2[3].i64[0];
  v10 = a2[3].u64[1];
  v12 = a2[4].i64[0];
  if (v3 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      v17 = a1[4].i64[0];
      outlined copy of Data?(v4, v3);
      outlined copy of Data?(v9, v8);
      outlined consume of Data?(v4, v3);
      goto LABEL_9;
    }

LABEL_7:
    outlined copy of Data?(a1[2].i64[0], v3);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v4, v3);
    v13 = v9;
    v14 = v8;
LABEL_14:
    outlined consume of Data?(v13, v14);
    return 0;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v17 = a1[4].i64[0];
  outlined copy of Data?(v4, v3);
  outlined copy of Data?(v9, v8);
  v15 = specialized static Data.== infix(_:_:)(v4, v3, v9, v8);
  outlined consume of Data?(v9, v8);
  outlined consume of Data?(v4, v3);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (v5 >> 60 != 15)
  {
    if (v10 >> 60 == 15)
    {
      goto LABEL_13;
    }

    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v11, v10);
    v16 = specialized static Data.== infix(_:_:)(v6, v5, v11, v10);
    outlined consume of Data?(v11, v10);
    outlined consume of Data?(v6, v5);
    if (v16)
    {
      return v17 == v12;
    }

    return 0;
  }

  if (v10 >> 60 != 15)
  {
LABEL_13:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v11, v10);
    outlined consume of Data?(v6, v5);
    v13 = v11;
    v14 = v10;
    goto LABEL_14;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v11, v10);
  outlined consume of Data?(v6, v5);
  return v17 == v12;
}

BOOL specialized static CMSampleBufferRef.SampleAttachments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16) == 0) == (*(*a2 + 16) != 0))
  {
    return 0;
  }

  type metadata accessor for CFDictionaryRef(0);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = Dictionary._bridgeToObjectiveC()().super.isa;
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  v4 = static _CFObject.== infix(_:_:)();

  return (v4 & 1) != 0;
}

uint64_t keypath_get_38Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*a2, *a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t keypath_get_42Tm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  result = a2();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMSampleBufferRef.HEVCTemporalInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 72))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 40) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.HEVCTemporalInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

CMItemCount specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(CMItemCount a1, uint64_t a2, CMItemCount a3)
{
  result = CMTaggedBufferGroupGetCount(v3);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = CMTaggedBufferGroupGetCount(v3);
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v8 = a3 - a1;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_12:
  v10 = __OFADD__(a1, a2);
  v9 = a1 + a2;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = CMTaggedBufferGroupGetCount(v3);
  if ((v9 & 0x8000000000000000) == 0 && result >= v9)
  {
    return v9;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a7(a1, a3, a4, a5, a6);
  if (a2 >= 1)
  {
    if (v12 < 0 || v12 >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v12 <= 0 && v12 > a2)
  {
    return 0;
  }

LABEL_8:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = a5 - a4;
  if (!a4)
  {
    v14 = 0;
  }

  v15 = __OFADD__(a6, v14);
  v16 = a6 + v14;
  if (v15)
  {
    goto LABEL_16;
  }

  if (result < a6 || v16 < result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (*v3 < a3 || (a3 | result) < 0 || v4 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v4 < result)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = __OFADD__(a4, v4);
  v6 = a4 + v4;
  if (v5)
  {
    __break(1u);
  }

  else if (result >= a4 && v6 > result)
  {
    return ++result;
  }

  __break(1u);
  return result;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.attachments.getter()
{
  if (*(*(v0 + 24) + 16))
  {
  }

  else
  {
    return 0;
  }
}

void specialized Sequence.allSatisfy(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v63 = a1[6];
  v66 = a1[3];
  v67 = a1[7];
  v70 = a1[8];
  v65 = a1[9];
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, time, &_ss12Zip2SequenceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVAGGMd, &_ss12Zip2SequenceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVAGGMR);
  v64 = v2;
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v68 = 0;
      v92 = 0;
      v60 = (v1 + 32);
      v48 = (v3 + 80);
      v49 = (v3 + 96);
      v46 = (v3 + 88);
      v47 = (v3 + 92);
      v59 = *MEMORY[0x277CC0918];
      v57 = *(MEMORY[0x277CC0918] + 12);
      v58 = *(MEMORY[0x277CC0918] + 8);
      v55 = *(MEMORY[0x277CC0918] + 24);
      v56 = *(MEMORY[0x277CC0918] + 16);
      v4 = *(MEMORY[0x277CC0918] + 32);
      v54 = *(MEMORY[0x277CC0918] + 40);
      v69 = 32;
      v61 = v3;
      v62 = v1;
      while (1)
      {
        v5 = *(v1 + 16);
        if (v5)
        {
          v6 = v60;
          if (v5 != 1)
          {
            if (v92 >= v5)
            {
              goto LABEL_63;
            }

            v6 = (v1 + v69);
          }

          v5 = *v6;
        }

        v7 = *(v3 + 16);
        if (v7 == 1)
        {
          v73 = *(v3 + 32);
          v12 = *(v3 + 44);
          v71 = *(v3 + 40);
          v13 = *(v3 + 48);
          v14 = *(v3 + 56);
          v16 = *(v3 + 64);
          v15 = *(v3 + 72);
          if (v92)
          {
            if (v92 >> 31)
            {
              goto LABEL_68;
            }

            *time = *(v3 + 32);
            *&time[8] = __PAIR64__(v12, v71);
            *&time[16] = v13;
            CMTimeMultiply(rhs, time, v92);
            *time = v14;
            *&time[8] = v16;
            *&time[16] = v15;
            CMTimeAdd(v77, time, rhs);
            v14 = *v77;
            v16 = *&v77[8];
            v11 = MEMORY[0x277CC0898];
            v8 = (MEMORY[0x277CC0898] + 16);
            v9 = (MEMORY[0x277CC0898] + 12);
            v10 = (MEMORY[0x277CC0898] + 8);
            v15 = *&v77[16];
          }

          else
          {
            v9 = v47;
            v11 = v48;
            v10 = v46;
            v8 = v49;
          }
        }

        else if (v7)
        {
          if (v92 >= v7)
          {
            goto LABEL_64;
          }

          v73 = *(v3 + v68 + 32);
          v12 = *(v3 + v68 + 44);
          v71 = *(v3 + v68 + 40);
          v13 = *(v3 + v68 + 48);
          v14 = *(v3 + v68 + 56);
          v11 = (v3 + v68 + 80);
          v16 = *(v3 + v68 + 64);
          v10 = (v3 + v68 + 88);
          v9 = (v3 + v68 + 92);
          v8 = (v3 + v68 + 96);
          v15 = *(v3 + v68 + 72);
        }

        else
        {
          v8 = (MEMORY[0x277CC0918] + 64);
          v9 = (MEMORY[0x277CC0918] + 60);
          v10 = (MEMORY[0x277CC0918] + 56);
          v11 = (MEMORY[0x277CC0918] + 48);
          v73 = v59;
          v12 = v57;
          v71 = v58;
          v14 = v55;
          v13 = v56;
          v15 = v54;
          v16 = v4;
        }

        v17 = *v8;
        v18 = *v9;
        v19 = *v10;
        v20 = *v11;
        v21 = *(v66 + 16);
        if (v21)
        {
          if (v92 >= v21)
          {
            goto LABEL_61;
          }

          v22 = *(v66 + 32 + 8 * v92);
        }

        else
        {
          v52 = *v8;
          v50 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
          v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          objc_opt_self();
          swift_dynamicCastObjCClassUnconditional();
          *time = 0;
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
          static Dictionary._forceBridgeFromObjectiveC(_:result:)();
          v22 = *time;
          if (!*time)
          {
            goto LABEL_70;
          }

          v13 = v50;
          v17 = v52;
        }

        v91 = v5 == 0;
        *rhs = v5;
        rhs[8] = v5 == 0;
        *&rhs[12] = v73;
        *&rhs[20] = v71;
        *&rhs[24] = v12;
        *&rhs[28] = v13;
        *&rhs[36] = v14;
        *&rhs[44] = v16;
        *&rhs[52] = v15;
        *&rhs[60] = v20;
        *&rhs[68] = v19;
        *&rhs[72] = v18;
        *&rhs[76] = v17;
        *&rhs[88] = v22;
        if (v63 == v92)
        {
          outlined destroy of CMSampleBufferRef.SampleProperties(rhs);
          goto LABEL_57;
        }

        if (v63 < 0)
        {
          break;
        }

        v24 = *(v67 + 16);
        if (v24)
        {
          v25 = (v67 + 32);
          if (v24 != 1)
          {
            if (v92 >= v24)
            {
              goto LABEL_65;
            }

            v25 = (v67 + v69);
          }

          v24 = *v25;
        }

        v26 = *(v70 + 16);
        if (v26 == 1)
        {
          v74 = *(v70 + 32);
          v31 = *(v70 + 44);
          v72 = *(v70 + 40);
          v33 = *(v70 + 48);
          value = *(v70 + 56);
          v35 = *(v70 + 64);
          epoch = *(v70 + 72);
          if (v92)
          {
            if (v92 >> 31)
            {
              goto LABEL_69;
            }

            *time = *(v70 + 32);
            *&time[8] = __PAIR64__(v31, v72);
            *&time[16] = v33;
            CMTimeMultiply(v77, time, v92);
            *time = value;
            *&time[8] = v35;
            *&time[16] = epoch;
            CMTimeAdd(&time1, time, v77);
            value = time1.value;
            v35 = *&time1.timescale;
            v30 = MEMORY[0x277CC0898];
            v27 = (MEMORY[0x277CC0898] + 16);
            v28 = (MEMORY[0x277CC0898] + 12);
            v29 = (MEMORY[0x277CC0898] + 8);
            epoch = time1.epoch;
          }

          else
          {
            v28 = (v70 + 92);
            v30 = (v70 + 80);
            v29 = (v70 + 88);
            v27 = (v70 + 96);
          }
        }

        else if (v26)
        {
          if (v92 >= v26)
          {
            goto LABEL_66;
          }

          v74 = *(v70 + v68 + 32);
          v31 = *(v70 + v68 + 44);
          v72 = *(v70 + v68 + 40);
          v33 = *(v70 + v68 + 48);
          value = *(v70 + v68 + 56);
          v30 = (v70 + v68 + 80);
          v35 = *(v70 + v68 + 64);
          v29 = (v70 + v68 + 88);
          v28 = (v70 + v68 + 92);
          v27 = (v70 + v68 + 96);
          epoch = *(v70 + v68 + 72);
        }

        else
        {
          v27 = (MEMORY[0x277CC0918] + 64);
          v28 = (MEMORY[0x277CC0918] + 60);
          v29 = (MEMORY[0x277CC0918] + 56);
          v30 = (MEMORY[0x277CC0918] + 48);
          v74 = v59;
          v31 = v57;
          v72 = v58;
          value = v55;
          v33 = v56;
          epoch = v54;
          v35 = v4;
        }

        v36 = *v27;
        v37 = *v28;
        v38 = *v29;
        v39 = *v30;
        v40 = *(v65 + 16);
        if (v40)
        {
          if (v92 >= v40)
          {
            goto LABEL_62;
          }

          v41 = *(v65 + 32 + 8 * v92);
        }

        else
        {
          v51 = *v27;
          v53 = value;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
          v42.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          objc_opt_self();
          swift_dynamicCastObjCClassUnconditional();
          *time = 0;
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
          static Dictionary._forceBridgeFromObjectiveC(_:result:)();
          v41 = *time;
          if (!*time)
          {
            goto LABEL_71;
          }

          value = v53;
          v36 = v51;
        }

        v89 = v24 == 0;
        *v77 = v24;
        v77[8] = v24 == 0;
        *&v77[12] = v74;
        *&v77[20] = v72;
        *&v77[24] = v31;
        *&v77[28] = v33;
        *&v77[36] = value;
        *&v77[44] = v35;
        *&v77[52] = epoch;
        *&v77[60] = v39;
        *&v77[68] = v38;
        *&v77[72] = v37;
        *&v77[76] = v36;
        *&v77[88] = v41;
        *time = *rhs;
        *&time[16] = *&rhs[16];
        v81 = *&rhs[64];
        v82 = *&rhs[80];
        v79 = *&rhs[32];
        v80 = *&rhs[48];
        v83 = *v77;
        v84 = *&v77[16];
        v87 = *&v77[64];
        v88 = *&v77[80];
        v85 = *&v77[32];
        v86 = *&v77[48];
        if (rhs[8])
        {
          if (v24)
          {
            goto LABEL_56;
          }
        }

        else if (!v24 || *rhs != v24)
        {
LABEL_56:
          outlined destroy of CMAttachmentBearerAttachments.Value?(time, &_sSo17CMSampleBufferRefa9CoreMediaE16SamplePropertiesV_AEtMd, _sSo17CMSampleBufferRefa9CoreMediaE16SamplePropertiesV_AEtMR);
          goto LABEL_57;
        }

        time1 = *&rhs[12];
        time2.value = v74;
        time2.timescale = v72;
        time2.flags = v31;
        time2.epoch = v33;
        if (CMTimeCompare(&time1, &time2))
        {
          goto LABEL_56;
        }

        time1 = *&rhs[60];
        time2 = *&v77[60];
        if (CMTimeCompare(&time1, &time2))
        {
          goto LABEL_56;
        }

        time1 = *&rhs[36];
        time2 = *&v77[36];
        if (CMTimeCompare(&time1, &time2) || (*(*&rhs[88] + 16) == 0) == (*(*&v77[88] + 16) != 0))
        {
          goto LABEL_56;
        }

        type metadata accessor for CFDictionaryRef(0);
        outlined init with copy of CMSampleBufferRef.SampleProperties(rhs, &time1);
        outlined init with copy of CMSampleBufferRef.SampleProperties(v77, &time1);
        type metadata accessor for CFStringRef(0);
        lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v44 = Dictionary._bridgeToObjectiveC()().super.isa;
        lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        v45 = static _CFObject.== infix(_:_:)();

        outlined destroy of CMSampleBufferRef.SampleProperties(v77);
        outlined destroy of CMSampleBufferRef.SampleProperties(rhs);
        outlined destroy of CMAttachmentBearerAttachments.Value?(time, &_sSo17CMSampleBufferRefa9CoreMediaE16SamplePropertiesV_AEtMd, _sSo17CMSampleBufferRefa9CoreMediaE16SamplePropertiesV_AEtMR);
        if (v45)
        {
          v68 += 72;
          v69 += 8;
          ++v92;
          v3 = v61;
          v1 = v62;
          if (v64 != v92)
          {
            continue;
          }
        }

        goto LABEL_57;
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
LABEL_57:
  }
}

uint64_t CMSampleBufferRef.SampleProperties.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CMSampleBufferRef.SampleProperties.size.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 CMSampleBufferRef.SampleProperties.timing.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 28);
  v3 = *(v1 + 60);
  *(a1 + 32) = *(v1 + 44);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 76);
  *a1 = *(v1 + 12);
  *(a1 + 16) = result;
  return result;
}

__n128 CMSampleBufferRef.SampleProperties.timing.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 28) = a1[1];
  result = a1[2];
  v4 = a1[3];
  *(v1 + 44) = result;
  *(v1 + 60) = v4;
  *(v1 + 76) = *(a1 + 8);
  *(v1 + 12) = v2;
  return result;
}

uint64_t CMSampleBufferRef.SampleProperties.attachments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 88);

  *(v1 + 88) = v2;
  return result;
}

__n128 CMSampleBufferRef.SampleProperties.init(size:timing:attachments:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *&v7[3] = *a3;
  *&v7[19] = *(a3 + 16);
  *&v7[35] = *(a3 + 32);
  *&v7[51] = *(a3 + 48);
  *&v7[67] = *(a3 + 64);
  *a5 = a1;
  *(a5 + 8) = a2 & 1 | (a1 == 0);
  *(a5 + 9) = *v7;
  result = *&v7[32];
  *(a5 + 68) = *&v7[59];
  *(a5 + 57) = *&v7[48];
  *(a5 + 41) = *&v7[32];
  *(a5 + 25) = *&v7[16];
  *(a5 + 88) = v5;
  return result;
}

uint64_t static CMSampleBufferRef.TimingPerSample.sequential(presentationTimeOfFirstSample:uniformDuration:decodeTimeOfFirstSample:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6;
  *(a9 + 24) = result;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = 1;
  return result;
}

void CMSampleBufferRef.SamplePropertiesCollection.init()(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.init(sampleCount:sizes:timings:attachments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a3[3];
  v19[2] = a3[2];
  *v20 = v7;
  *&v20[9] = *(a3 + 57);
  v8 = a3[1];
  v19[0] = *a3;
  v19[1] = v8;
  if (result < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  if (v6 != 255 && (v6 & 1) == 0 && *(v5 + 16) != result)
  {
    goto LABEL_25;
  }

  if (result)
  {
    if (v20[24] == 255 || (v20[24] & 1) != 0 || *(*&v19[0] + 16) == result)
    {
      if (!a4)
      {
        goto LABEL_12;
      }

      v13 = *(a4 + 16);
      if (!v13 || v13 == result)
      {
        goto LABEL_12;
      }

LABEL_27:
      __break(1u);
      return result;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_12:
  if (v6 == 255)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22E0EF920;
    *(v14 + 32) = v5;
    result = outlined consume of CMSampleBufferRef.SizePerSample?(v5, v6);
    v5 = v14;
  }

  v15 = MEMORY[0x277D84F90];
  if (v20[24] == 255)
  {
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = *&v19[0];
    if (v20[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22E0EF920;
      *(v17 + 32) = v16;
      *(v17 + 40) = *(a3 + 8);
      *(v17 + 56) = *(a3 + 24);
      *(v17 + 72) = *(a3 + 40);
      *(v17 + 88) = *(a3 + 56);
      result = outlined destroy of CMAttachmentBearerAttachments.Value?(v19, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);
      v16 = v17;
    }
  }

  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = v15;
  }

  *a5 = v11;
  *(a5 + 8) = v5;
  *(a5 + 16) = v16;
  *(a5 + 24) = v18;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  return result;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.sizes.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(result + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v3 = *(result + 32);
      v4 = 1;
    }

    else
    {
      v5 = a1;

      a1 = v5;
      v4 = 0;
      v3 = result;
    }
  }

  else
  {
    v4 = -1;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path getter for CMSampleBufferRef.SamplePropertiesCollection.sizes : CMSampleBufferRef.SamplePropertiesCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = v3;
  v13 = v4;
  v14 = v5;
  result = CMSampleBufferRef.SamplePropertiesCollection.sizes.getter(&v8);
  v7 = v9;
  *a2 = v8;
  *(a2 + 8) = v7;
  return result;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.sizes.setter(uint64_t result)
{
  v2 = *(result + 8);
  if (v2 == 255)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v3 = *result;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22E0EF920;
    *(v4 + 32) = v3;
    outlined consume of CMSampleBufferRef.SizePerSample?(v3, v2);
    v3 = v4;
LABEL_6:
    v5 = *(v1 + 8);

    *(v1 + 8) = v3;
    *(v1 + 40) = 1;
    return result;
  }

  if (*(v3 + 16) == *v1)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t (*CMSampleBufferRef.SamplePropertiesCollection.sizes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 8);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v3 + 16);
  if (v4 == 1)
  {
    v4 = *(v3 + 32);
    v5 = 1;
  }

  else if (v4)
  {

    v5 = 0;
    v4 = v6;
  }

  else
  {
    v5 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return CMSampleBufferRef.SamplePropertiesCollection.sizes.modify;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.sizes.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    if (v4 == 255)
    {
      v3 = MEMORY[0x277D84F90];
    }

    else
    {
      if ((v4 & 1) == 0)
      {
        v11 = *(a1 + 16);
        v14 = *(a1 + 24);
        v15 = *(v3 + 16);

        if (v15 != *v11)
        {
          goto LABEL_20;
        }

LABEL_18:
        *(v11 + 8) = v3;
        *(v11 + 40) = 1;
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22E0EF920;
      *(v6 + 32) = v3;
      outlined consume of CMSampleBufferRef.SizePerSample?(v3, v4);
      v3 = v6;
    }

    v9 = *(a1 + 24);

    v11 = *(a1 + 16);
    goto LABEL_18;
  }

  if (v4 == 255)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  if ((v4 & 1) == 0)
  {
    v8 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(v3 + 16);
    outlined copy of CMSampleBufferRef.SizePerSample(*a1, 0);

    if (v13 == *v8)
    {
      v5 = v3;
      goto LABEL_14;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22E0EF920;
  *(v5 + 32) = v3;
  outlined consume of CMSampleBufferRef.SizePerSample?(v3, v4);
LABEL_9:
  v7 = *(a1 + 24);

  v8 = *(a1 + 16);
LABEL_14:
  *(v8 + 8) = v5;
  *(v8 + 40) = 1;

  return outlined consume of CMSampleBufferRef.SizePerSample?(v3, v4);
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.timings.getter@<X0>(int64x2_t *a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(result + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(result + 32);
      v5 = *(result + 48);
      v6 = *(result + 64);
      v7 = *(result + 80);
      v3 = *(result + 96);
      v8 = 1;
    }

    else
    {
      v9 = a1;

      a1 = v9;
      v8 = 0;
      v4.i64[0] = result;
    }
  }

  else
  {
    v4 = vdupq_n_s64(0);
    v8 = -1;
    v5 = v4;
    v6 = v4;
    v7 = v4;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4].i64[0] = v3;
  a1[4].i8[8] = v8;
  return result;
}

_OWORD *CMSampleBufferRef.SamplePropertiesCollection.timings.setter(_OWORD *result)
{
  *&v11[9] = *(result + 57);
  v2 = result[1];
  v10[0] = *result;
  v10[1] = v2;
  v3 = result[3];
  v10[2] = result[2];
  *v11 = v3;
  if (v11[24] == 255)
  {
    v8 = *(v1 + 16);

    *(v1 + 16) = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v4 = *&v10[0];
  if (v11[24])
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22E0EF920;
    *(v6 + 32) = v4;
    *(v6 + 40) = *(v5 + 8);
    *(v6 + 56) = *(v5 + 24);
    *(v6 + 72) = *(v5 + 40);
    *(v6 + 88) = *(v5 + 56);
    outlined destroy of CMAttachmentBearerAttachments.Value?(v10, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);
    v7 = *(v1 + 16);

    *(v1 + 16) = v6;
LABEL_7:
    *(v1 + 40) = 1;
    return result;
  }

  if (*(*&v10[0] + 16) == *v1)
  {
    v9 = *(v1 + 16);

    *(v1 + 16) = *&v10[0];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void (*CMSampleBufferRef.SamplePropertiesCollection.timings.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x150uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 320) = v1;
  v5 = *(v1 + 16);
  *(v4 + 328) = v5;
  v6 = v5[1].i64[0];
  if (v6 == 1)
  {
    v7 = v5[2];
    v9 = v5[3];
    v10 = v5[4];
    v11 = v5[5];
    v6 = v5[6].i64[0];
    v8 = 1;
  }

  else if (v6)
  {

    v8 = 0;
    v7.i64[0] = v12;
  }

  else
  {
    v7 = vdupq_n_s64(0);
    v8 = -1;
    v9 = v7;
    v10 = v7;
    v11 = v7;
  }

  *v4 = v7;
  *(v4 + 16) = v9;
  *(v4 + 32) = v10;
  *(v4 + 48) = v11;
  *(v4 + 64) = v6;
  *(v4 + 72) = v8;
  return CMSampleBufferRef.SamplePropertiesCollection.timings.modify;
}

void CMSampleBufferRef.SamplePropertiesCollection.timings.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  *(v2 + 137) = *(*a1 + 57);
  v3 = v2[1];
  v2[5] = *v2;
  v2[6] = v3;
  v4 = v2[3];
  v2[7] = v2[2];
  v2[8] = v4;
  v5 = *(v2 + 10);
  v6 = *(v2 + 152);
  if ((a2 & 1) == 0)
  {
    if (v6 == 255)
    {
      v22 = *(v2 + 40);
      v21 = *(v2 + 41);

      *(v22 + 16) = MEMORY[0x277D84F90];
    }

    else
    {
      v14 = *(v2 + 40);
      v13 = *(v2 + 41);
      if (v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_22E0EF920;
        *(v15 + 32) = v5;
        v16 = *(v2 + 24);
        v17 = *(v2 + 40);
        v18 = *(v2 + 56);
        *(v15 + 40) = *(v2 + 8);
        *(v15 + 88) = v18;
        *(v15 + 72) = v17;
        *(v15 + 56) = v16;
        outlined destroy of CMAttachmentBearerAttachments.Value?((v2 + 5), &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);

        v14[2] = v15;
      }

      else
      {
        v28 = *(v5 + 16);
        v29 = *(v2 + 41);

        if (v28 != *v14)
        {
          goto LABEL_20;
        }

        *(*(v2 + 40) + 16) = v5;
      }
    }

    *(*(v2 + 40) + 40) = 1;
    goto LABEL_16;
  }

  if (v6 == 255)
  {
    v20 = *(v2 + 40);
    v19 = *(v2 + 41);

    *(v20 + 16) = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v8 = *(v2 + 40);
  v7 = *(v2 + 41);
  if ((v6 & 1) == 0)
  {
    v23 = *(v5 + 16);
    v24 = v2[3];
    v2[12] = v2[2];
    v2[13] = v24;
    *(v2 + 217) = *(v2 + 57);
    v25 = v2[1];
    v2[10] = *v2;
    v2[11] = v25;
    outlined init with copy of CMSampleBufferRef.TimingPerSample((v2 + 10), (v2 + 15));

    if (v23 == *v8)
    {
      *(*(v2 + 40) + 16) = v5;
      goto LABEL_12;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22E0EF920;
  *(v9 + 32) = v5;
  v10 = *(v2 + 24);
  v11 = *(v2 + 40);
  v12 = *(v2 + 56);
  *(v9 + 40) = *(v2 + 8);
  *(v9 + 88) = v12;
  *(v9 + 72) = v11;
  *(v9 + 56) = v10;
  outlined destroy of CMAttachmentBearerAttachments.Value?((v2 + 5), &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);

  v8[2] = v9;
LABEL_12:
  *(*(v2 + 40) + 40) = 1;
  v26 = v2[3];
  v2[12] = v2[2];
  v2[13] = v26;
  *(v2 + 217) = *(v2 + 57);
  v27 = v2[1];
  v2[10] = *v2;
  v2[11] = v27;
  outlined destroy of CMAttachmentBearerAttachments.Value?((v2 + 10), &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);
LABEL_16:

  free(v2);
}

uint64_t *key path setter for CMSampleBufferRef.SamplePropertiesCollection.attachments : CMSampleBufferRef.SamplePropertiesCollection(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (!*result)
  {
    v6 = *(a2 + 24);

    *(a2 + 24) = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if (*(v3 + 16) == *a2)
  {
    v4 = *(a2 + 24);
    v5 = *result;

    *(a2 + 24) = v3;
LABEL_5:
    *(a2 + 40) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.attachments.setter(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v2 = a1;
  if (*(a1 + 16) != *v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  *(v1 + 40) = 1;
  return result;
}

uint64_t (*CMSampleBufferRef.SamplePropertiesCollection.attachments.modify(uint64_t *a1))(void *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v3;
  if (*(v3 + 16))
  {
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return CMSampleBufferRef.SamplePropertiesCollection.attachments.modify;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.attachments.modify(void *a1, char a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v2 = v2[1];
      v9 = *(v3 + 16);

      if (v9 != *v2)
      {
        __break(1u);
        goto LABEL_8;
      }
    }

    else
    {

      v2 = v2[1];
      v3 = MEMORY[0x277D84F90];
    }

    v2[3] = v3;
    *(v2 + 40) = 1;
    return result;
  }

  if (!v3)
  {
LABEL_8:

    v5 = v2[1];
    v8 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v5 = v2[1];
  v6 = *(v3 + 16);

  if (v6 != *v5)
  {
    __break(1u);
    return result;
  }

  v8 = v3;
LABEL_9:
  *(v5 + 24) = v8;
  *(v5 + 40) = 1;
}

void CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v5 + 16);
  if (!v10)
  {
LABEL_10:
    v17 = *v2;
    v18 = v5;
    v19 = v6;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(a1, v23);
    v15[1] = v3;
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v8;
    v16 = v9;
    CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(a1, v15);
    v13 = v15[0];
    *&v14[3] = v23[0];
    *&v14[19] = v23[1];
    *&v14[35] = v23[2];
    *&v14[51] = v23[3];
    *&v14[67] = v24;
    *a2 = v10;
    *(a2 + 8) = v10 == 0;
    *(a2 + 9) = *v14;
    *(a2 + 68) = *&v14[59];
    *(a2 + 57) = *&v14[48];
    *(a2 + 41) = *&v14[32];
    *(a2 + 25) = *&v14[16];
    *(a2 + 88) = v13;
    return;
  }

  if (v10 == 1)
  {
    v11 = (v5 + 32);
LABEL_9:
    v10 = *v11;
    goto LABEL_10;
  }

  if (v10 > a1)
  {
    v11 = (v5 + 8 * a1 + 32);
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

double key path getter for CMSampleBufferRef.SamplePropertiesCollection.subscript(_:) : CMSampleBufferRef.SamplePropertiesCollection@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = a1[3];
  v11 = a1[4];
  v12 = *(a1 + 40);
  CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(*a2, v13);
  v4 = v13[3];
  a3[2] = v13[2];
  a3[3] = v4;
  v5 = v13[5];
  a3[4] = v13[4];
  a3[5] = v5;
  result = *v13;
  v7 = v13[1];
  *a3 = v13[0];
  a3[1] = v7;
  return result;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(uint64_t result, unint64_t a2)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 28);
  v6 = *(result + 60);
  v11[2] = *(result + 44);
  v11[3] = v6;
  v12 = *(result + 76);
  v11[0] = *(result + 12);
  v11[1] = v5;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*v2 <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(result + 88);
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v8, a2);
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v11, a2);
  v10 = v7;
  return CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(&v10, a2);
}

{
  v4 = result;
  v5 = *(v2 + 8);
  v6 = *(v5 + 16);
  if (v6 == 1)
  {
    v10 = *(v5 + 32);
    if (v10 == result)
    {
      return result;
    }

    v11 = *v2;
    if ((*v2 & 0x8000000000000000) != 0)
    {
LABEL_32:
      __break(1u);
      return result;
    }

    if (v11)
    {
      v12 = *v2;
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v9 = v13;
      *(v13 + 16) = v11;
      v14 = (v13 + 32);
      if (v11 > 3)
      {
        v15 = v11 & 0x7FFFFFFFFFFFFFFCLL;
        v14 += v11 & 0x7FFFFFFFFFFFFFFCLL;
        v16 = vdupq_n_s64(v10);
        v17 = (v13 + 48);
        v18 = v11 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v17[-1] = v16;
          *v17 = v16;
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        if (v11 == v15)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v15 = 0;
      }

      v19 = v11 - v15;
      do
      {
        *v14++ = v10;
        --v19;
      }

      while (v19);
LABEL_21:

      v5 = v9;
      goto LABEL_22;
    }

LABEL_15:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  if (!v6)
  {
    if (!result)
    {
      return result;
    }

    v7 = *v2;
    if ((*v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    if (v7)
    {
      v8 = *v2;
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v7;
      bzero((v9 + 32), 8 * v7);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (v6 <= a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(v5 + 8 * a2 + 32) == result)
  {
    return result;
  }

LABEL_22:
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (*(v5 + 16) <= a2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v5 + 8 * a2 + 32) = v4;
  *(v2 + 8) = v5;
  *(v2 + 40) = 1;
  return result;
}

unint64_t CMSampleBufferRef.SamplePropertiesCollection.subscript.getter@<X0>(unint64_t multiplier@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3[2];
  if (v4 == 1)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[6];
    value = v3[7];
    v9 = v3[8];
    epoch = v3[9];
    if (multiplier < 1)
    {
      v10 = v3 + 12;
      v13 = v3 + 10;
      v11 = v3 + 23;
      v12 = (v3 + 11);
      goto LABEL_10;
    }

    v15 = a2;
    if (!(multiplier >> 31))
    {
      time.value = v3[4];
      *&time.timescale = v6;
      time.epoch = v7;
      CMTimeMultiply(&rhs, &time, multiplier);
      time.value = value;
      *&time.timescale = v9;
      time.epoch = epoch;
      multiplier = CMTimeAdd(&v21, &time, &rhs);
      value = v21.value;
      v9 = *&v21.timescale;
      epoch = v21.epoch;
      v13 = MEMORY[0x277CC0898];
      v10 = (MEMORY[0x277CC0898] + 16);
      v11 = (MEMORY[0x277CC0898] + 12);
      v12 = (MEMORY[0x277CC0898] + 8);
      a2 = v15;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = *MEMORY[0x277CC0918];
      v6 = *(MEMORY[0x277CC0918] + 8);
      v7 = *(MEMORY[0x277CC0918] + 16);
      value = *(MEMORY[0x277CC0918] + 24);
      v9 = *(MEMORY[0x277CC0918] + 32);
      v10 = (MEMORY[0x277CC0918] + 64);
      v11 = (MEMORY[0x277CC0918] + 60);
      v12 = (MEMORY[0x277CC0918] + 56);
      v13 = (MEMORY[0x277CC0918] + 48);
      epoch = *(MEMORY[0x277CC0918] + 40);
LABEL_10:
      v17 = *v10;
      v18 = *v11;
      v19 = *v12;
      v20 = *v13;
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v7;
      *(a2 + 24) = value;
      *(a2 + 32) = v9;
      *(a2 + 40) = epoch;
      *(a2 + 48) = v20;
      *(a2 + 56) = v19;
      *(a2 + 60) = v18;
      *(a2 + 64) = v17;
      return multiplier;
    }

    if (v4 > multiplier)
    {
      v16 = &v3[9 * multiplier];
      v5 = v16[4];
      v6 = v16[5];
      v7 = v16[6];
      value = v16[7];
      v9 = v16[8];
      epoch = v16[9];
      v13 = v16 + 10;
      v12 = (v16 + 11);
      v11 = v16 + 23;
      v10 = v16 + 12;
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return multiplier;
}

void CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(unint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    if (v5 > a1)
    {
      v6 = *(v4 + 8 * a1 + 32);

      *a2 = v6;
      return;
    }

    __break(1u);
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    isa;
    static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  }

  __break(1u);
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(unint64_t a1, unint64_t multiplier)
{
  v10 = multiplier;
  CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(multiplier, v55);
  v12 = *a1;
  v13 = *(a1 + 16);
  time2.epoch = v55[2];
  time1.value = v12;
  *&time1.timescale = *(a1 + 8);
  time1.epoch = v13;
  time2.value = v55[0];
  *&time2.timescale = v55[1];
  if (CMTimeCompare(&time1, &time2))
  {
    goto LABEL_4;
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  time2.epoch = v55[8];
  time1.value = v14;
  *&time1.timescale = *(a1 + 56);
  time1.epoch = v15;
  time2.value = v55[6];
  *&time2.timescale = v55[7];
  if (CMTimeCompare(&time1, &time2))
  {
    goto LABEL_4;
  }

  v16 = *(a1 + 24);
  v17 = *(a1 + 40);
  time2.epoch = v55[5];
  time1.value = v16;
  *&time1.timescale = *(a1 + 32);
  time1.epoch = v17;
  time2.value = v55[3];
  *&time2.timescale = v55[4];
  result = CMTimeCompare(&time1, &time2);
  if (result)
  {
LABEL_4:
    v19 = *(v3 + 16);
    v20 = *(v19 + 16);
    if (v20 != 1)
    {
      if (!v20)
      {
        v2 = *v3;
        if ((*v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v2)
        {
          type metadata accessor for CMSampleTimingInfo(0);
          v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          epoch = v21;
          *(v21 + 16) = v2;
          v22 = 32;
          v23 = *(MEMORY[0x277CC0918] + 32);
          v24 = *(MEMORY[0x277CC0918] + 48);
          v25 = *(MEMORY[0x277CC0918] + 64);
          v27 = *MEMORY[0x277CC0918];
          v26 = *(MEMORY[0x277CC0918] + 16);
          do
          {
            v28 = v21 + v22;
            *(v28 + 32) = v23;
            *(v28 + 48) = v24;
            *(v28 + 64) = v25;
            v22 += 72;
            *v28 = v27;
            *(v28 + 16) = v26;
            --v2;
          }

          while (v2);
        }

        else
        {
          epoch = MEMORY[0x277D84F90];
        }

        v19 = epoch;
      }

      goto LABEL_19;
    }

    v6 = *v3;
    if ((*v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    if (!v6)
    {
      v30 = *(v3 + 16);

      v19 = MEMORY[0x277D84F90];
      goto LABEL_19;
    }

    v40 = v10;
    v41 = a1;
    v42 = v3;
    v43 = *(v19 + 32);
    v10 = *(v19 + 40);
    LODWORD(v2) = *(v19 + 44);
    v7 = *(v19 + 48);
    v8 = *(v19 + 56);
    a1 = *(v19 + 64);
    v50 = *(v19 + 68);
    v44 = *(v19 + 72);
    v9 = *(v19 + 88);
    v19 = *(v19 + 96);
    v52 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v3 = v52;
    epoch = *(v52 + 16);
    v20 = *(v52 + 24);
    v5 = epoch + 1;
    if (epoch >= v20 >> 1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      *(v3 + 16) = v5;
      v29 = v3 + 72 * epoch;
      *(v29 + 32) = v43;
      *(v29 + 40) = v10;
      *(v29 + 44) = v2;
      *(v29 + 48) = v7;
      *(v29 + 56) = v8;
      v49 = v8;
      *(v29 + 64) = a1;
      *(v29 + 68) = v50;
      *(v29 + 72) = v44;
      *(v29 + 88) = v9;
      *(v29 + 96) = v19;
      if (v6 == 1)
      {
LABEL_15:

        v19 = v3;
        a1 = v41;
        v3 = v42;
        v10 = v40;
LABEL_19:
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v8 = v43;
        v19 = v50;
        v9 = *(MEMORY[0x277CC0898] + 8);
        v45 = *(MEMORY[0x277CC0898] + 16);
        v46 = *MEMORY[0x277CC0898];
        v5 = 1;
        v48 = v6;
        v47 = a1;
        while (!(v5 >> 31))
        {
          time1.value = v43;
          time1.timescale = v10;
          time1.flags = v2;
          time1.epoch = v7;
          CMTimeMultiply(&time2, &time1, v5);
          time1.value = v49;
          time1.timescale = a1;
          time1.flags = v19;
          time1.epoch = v44;
          CMTimeAdd(&v51, &time1, &time2);
          value = v51.value;
          v36 = *&v51.timescale;
          epoch = v51.epoch;
          v52 = v3;
          v38 = *(v3 + 16);
          v37 = *(v3 + 24);
          if (v38 >= v37 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
            v3 = v52;
          }

          *(v3 + 16) = v38 + 1;
          v39 = v3 + 72 * v38;
          *(v39 + 32) = v43;
          ++v5;
          *(v39 + 40) = v10;
          *(v39 + 44) = v2;
          *(v39 + 48) = v7;
          *(v39 + 56) = value;
          *(v39 + 64) = v36;
          *(v39 + 72) = epoch;
          *(v39 + 80) = v46;
          *(v39 + 88) = v9;
          *(v39 + 96) = v45;
          v6 = v48;
          a1 = v47;
          v19 = v50;
          if (v48 == v5)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
      if ((v10 & 0x8000000000000000) != 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_21:
      v20 = *(v19 + 16);
      if (v20 > v10)
      {
        v31 = v19 + 72 * v10;
        *(v31 + 32) = *a1;
        v32 = *(a1 + 16);
        v33 = *(a1 + 32);
        v34 = *(a1 + 48);
        *(v31 + 96) = *(a1 + 64);
        *(v31 + 64) = v33;
        *(v31 + 80) = v34;
        *(v31 + 48) = v32;
        *(v3 + 16) = v19;
        *(v3 + 40) = 1;
        return result;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v5, 1);
      v3 = v52;
    }
  }

  return result;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 24);
  if (*(v5 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_6:
        if (*(v5 + 16) > a2)
        {
          v8 = v5 + 8 * a2;
          v9 = *(v8 + 32);
          *(v8 + 32) = v4;

          *(v2 + 24) = v5;
          *(v2 + 40) = 1;
          return result;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v4 + 16))
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    isa;
    result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = *a1;
}

void (*CMSampleBufferRef.SamplePropertiesCollection.subscript.modify(void *a1, unint64_t a2))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x228uLL);
  }

  *a1 = v5;
  v5[48] = a2;
  v5[49] = v2;
  v5[50] = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(a2, v5);
  return CMSampleBufferRef.SamplePropertiesCollection.subscript.modify;
}

void CMSampleBufferRef.SamplePropertiesCollection.subscript.modify(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 50);
  if ((a2 & 1) == 0)
  {
    v16 = *v2;
    v17 = v2[8];
    v18 = *(v2 + 28);
    v19 = *(v2 + 60);
    *(v2 + 32) = *(v2 + 44);
    *(v2 + 33) = v19;
    *(v2 + 68) = *(v2 + 76);
    *(v2 + 30) = *(v2 + 12);
    *(v2 + 31) = v18;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v20 = *(v2 + 48);
      if ((v20 & 0x8000000000000000) == 0)
      {
        if (v3 > v20)
        {
          v21 = *(v2 + 11);
          v22 = *(v2 + 49);
          if (v17)
          {
            v23 = 0;
          }

          else
          {
            v23 = v16;
          }

          CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v23, *(v2 + 48));
          CMSampleBufferRef.SamplePropertiesCollection.subscript.setter((v2 + 480), v20);
          v24 = v21;
          CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(&v24, v20);
          goto LABEL_16;
        }

LABEL_24:
        __break(1u);
        return;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v4 = *(v2 + 3);
  *(v2 + 8) = *(v2 + 2);
  *(v2 + 9) = v4;
  v5 = *(v2 + 5);
  *(v2 + 10) = *(v2 + 4);
  *(v2 + 11) = v5;
  v6 = *(v2 + 1);
  *(v2 + 6) = *v2;
  *(v2 + 7) = v6;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v2 + 48);
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v2 + 49);
  v9 = *(v2 + 12);
  if (v2[104])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v2 + 12);
  }

  outlined init with copy of CMSampleBufferRef.SampleProperties((v2 + 96), (v2 + 288));
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v10, v7);
  v11 = *(v2 + 124);
  v12 = *(v2 + 156);
  *(v2 + 440) = *(v2 + 140);
  *(v2 + 456) = v12;
  *(v2 + 59) = *(v2 + 172);
  *(v2 + 408) = *(v2 + 108);
  *(v2 + 424) = v11;
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter((v2 + 408), v7);
  v24 = *(v2 + 23);
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(&v24, v7);
  v13 = *(v2 + 3);
  *(v2 + 14) = *(v2 + 2);
  *(v2 + 15) = v13;
  v14 = *(v2 + 5);
  *(v2 + 16) = *(v2 + 4);
  *(v2 + 17) = v14;
  v15 = *(v2 + 1);
  *(v2 + 12) = *v2;
  *(v2 + 13) = v15;
  outlined destroy of CMSampleBufferRef.SampleProperties((v2 + 192));
LABEL_16:

  free(v2);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance CMSampleBufferRef.SamplePropertiesCollection(void *a1, unint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = CMSampleBufferRef.SamplePropertiesCollection.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance CMSampleBufferRef.SamplePropertiesCollection;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance CMSampleBufferRef.SamplePropertiesCollection(__int128 *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, v4, v3, v7);
  return outlined destroy of CMAttachmentBearerAttachments.Value?(v7, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMd, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMR);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for MutableCollection.subscript.modify in conformance CMSampleBufferRef.SamplePropertiesCollection;
}

void protocol witness for MutableCollection.subscript.modify in conformance CMSampleBufferRef.SamplePropertiesCollection(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*specialized MutableCollection<>.subscript.modify(void (**a1)(uint64_t *a1, char a2), uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x158uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 41) = a3;
  *(result + 42) = v3;
  *(result + 40) = a2;
  v9 = *v3;
  if (*v3 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= a3)
  {
    v10 = v3[1];
    v11 = v3[2];
    v13 = v3[3];
    v12 = v3[4];
    v14 = *(v3 + 40);
    *(v8 + 18) = v9;
    *(v8 + 19) = v10;
    *(v8 + 20) = v11;
    *(v8 + 21) = v13;
    *(v8 + 22) = v12;
    *(v8 + 184) = v14;
    *(v8 + 16) = a2;
    *(v8 + 17) = a3;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_10:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 328);
    v3 = *(v2 + 336);
    v5 = *(v2 + 320);
    v6 = *(v2 + 144);
    *v2 = *(v2 + 128);
    *(v2 + 16) = v6;
    *(v2 + 32) = *(v2 + 160);
    *(v2 + 41) = *(v2 + 169);
    outlined init with copy of CMAttachmentBearerAttachments.Value?(v2, v2 + 256, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMd, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMR);
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v3, v5, v4, v2);
    outlined destroy of CMAttachmentBearerAttachments.Value?(v2, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMd, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMR);
  }

  else
  {
    v8 = *(v2 + 328);
    v7 = *(v2 + 336);
    v9 = *(v2 + 320);
    v10 = *(v2 + 144);
    *(v2 + 64) = *(v2 + 128);
    *(v2 + 80) = v10;
    *(v2 + 96) = *(v2 + 160);
    *(v2 + 105) = *(v2 + 169);
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v7, v9, v8, (v2 + 64));
  }

  v11 = *(v2 + 144);
  *(v2 + 192) = *(v2 + 128);
  *(v2 + 208) = v11;
  *(v2 + 224) = *(v2 + 160);
  *(v2 + 233) = *(v2 + 169);
  outlined destroy of CMAttachmentBearerAttachments.Value?(v2 + 192, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMd, &_ss5SliceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVGMR);

  free(v2);
}

void protocol witness for MutableCollection.partition(by:) in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void specialized MutableCollection.swapAt(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(a1, &v12);
  v5 = v12;
  v6 = v13;
  v20[2] = v16;
  v20[3] = v17;
  v21 = v18;
  v20[0] = v14;
  v20[1] = v15;
  v7 = v19;
  CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(a2, &v12);
  v22[2] = v16;
  v22[3] = v17;
  v23 = v18;
  v22[0] = v14;
  v22[1] = v15;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*v2 <= a1)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v19;
  if (v13)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12;
  }

  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v9, a1);
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v22, a1);
  v11 = v8;
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(&v11, a1);
  if ((*v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*v2 <= a2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v10, a2);
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v20, a2);
  v12 = v7;
  CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(&v12, a2);
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance CMSampleBufferRef.SamplePropertiesCollection@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *v2)
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *v1)
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xC0uLL);
  }

  *a1 = v4;
  CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(*a2, v4);
  return protocol witness for Collection.subscript.read in conformance CMSampleBufferRef.SamplePropertiesCollection;
}

void protocol witness for Collection.subscript.read in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v1[8] = *(*a1 + 32);
  v1[9] = v2;
  v3 = v1[5];
  v1[10] = v1[4];
  v1[11] = v3;
  v4 = v1[1];
  v1[6] = *v1;
  v1[7] = v4;
  outlined destroy of CMSampleBufferRef.SampleProperties((v1 + 6));

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance CMSampleBufferRef.SamplePropertiesCollection@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (*v2 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result[1];
  if (v3 < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v2[1];
  v7 = v2[2];
  v9 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 40);
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v8;
  *(a2 + 56) = v10;
  *a2 = v4;
  *(a2 + 8) = v5;
}

void protocol witness for Collection.indices.getter in conformance CMSampleBufferRef.SamplePropertiesCollection(void *a1@<X8>)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance CMSampleBufferRef.SamplePropertiesCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *v3 >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMSampleBufferRef.SamplePropertiesCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  *v9 = v4[1];
  *&v9[9] = *(v4 + 25);
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  if (*v2 >= *a2)
  {
    v4 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && *v2 >= v4)
    {
      return (v3 - v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance CMSampleBufferRef.SamplePropertiesCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *v2)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *v1)
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance CMSampleBufferRef.SamplePropertiesCollection@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance CMSampleBufferRef.SamplePropertiesCollection()
{
  v1 = v0[1];
  v8 = *v0;
  v9[0] = v1;
  *(v9 + 9) = *(v0 + 25);
  v2 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo08CMSampleC3Refa9CoreMediaE16SamplePropertiesV_Tt1g5(v8, 0);
  specialized Sequence._copySequenceContents(initializing:)(v7, (v3 + 4), v8);
  v5 = v4;

  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    outlined destroy of CMSampleBufferRef.SamplePropertiesCollection(&v8);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void protocol witness for Sequence._copyContents(initializing:) in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *v5 = v3[1];
  *&v5[9] = *(v3 + 25);
  specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

uint64_t CMSampleBufferRef.SizePerSample.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CMSampleBufferRef.SizePerSample@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo18CMSampleTimingInfoa_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 72)
    {
      v4 = *(a1 + i + 64);
      v5 = *(a1 + i + 72);
      v6 = *(a1 + i + 80);
      v7 = *(a1 + i + 88);
      v8 = *(a1 + i + 96);
      v9 = *(a1 + i + 48);
      v10 = *(a1 + i + 56);
      v11 = *(a1 + i + 32);
      v12 = *(a2 + i + 32);
      v13 = *(a2 + i + 56);
      v14 = *(a2 + i + 64);
      v16 = *(a2 + i + 72);
      v15 = *(a2 + i + 80);
      v17 = *(a2 + i + 88);
      v18 = *(a2 + i + 96);
      time2.epoch = *(a2 + i + 48);
      time1.value = v11;
      *&time1.timescale = *(a1 + i + 40);
      time1.epoch = v9;
      time2.value = v12;
      *&time2.timescale = *(a2 + i + 40);
      if (CMTimeCompare(&time1, &time2))
      {
        break;
      }

      time2.epoch = v18;
      time1.value = v6;
      *&time1.timescale = v7;
      time1.epoch = v8;
      time2.value = v15;
      *&time2.timescale = v17;
      if (CMTimeCompare(&time1, &time2))
      {
        break;
      }

      time2.epoch = v16;
      time1.value = v10;
      *&time1.timescale = v4;
      time1.epoch = v5;
      time2.value = v13;
      *&time2.timescale = v14;
      if (CMTimeCompare(&time1, &time2))
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t CMSampleBufferRef.TimingPerSample.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 72) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CMSampleBufferRef.TimingPerSample@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 72) = 0;
  return result;
}

CMTimeEpoch _sSo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVyAExcSlRzAbCE0fG0V7ElementRtzlufCSayAGG_Tt1g5@<X0>(CMTimeEpoch result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  value = MEMORY[0x277D84F90];
  v111 = result;
  if (v2)
  {
    v4 = result;
    time1[0].value = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    value = time1[0].value;
    v5 = *(time1[0].value + 16);
    v6 = (v4 + 40);
    v7 = v2;
    do
    {
      if (*v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v6 - 1);
      }

      time1[0].value = value;
      v9 = value[3];
      v10 = v5 + 1;
      if (v5 >= v9 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v5 + 1, 1);
        value = time1[0].value;
      }

      value[2] = v10;
      value[v5 + 4] = v8;
      v6 += 96;
      ++v5;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (!v10)
    {
      v17 = MEMORY[0x277D84F90];

      value = 0;
      v94 = 1;
      v16 = -1;
      goto LABEL_27;
    }
  }

  v11 = 0;
  do
  {
    v12 = v10 == v11;
    if (v10 == v11)
    {
      v94 = 1;

      value = 0;
      v16 = -1;
      goto LABEL_20;
    }

    v13 = &value[v11++];
  }

  while (!v13[4]);
  v94 = v12;
  if (v10 == 1)
  {
LABEL_18:
    v16 = 0;
  }

  else
  {
    v14 = 4;
    while (v10)
    {
      v15 = value[v14++];
      --v10;
      if (v15 != value[4])
      {
        goto LABEL_18;
      }
    }

    v92 = value[4];

    v16 = 1;
    value = v92;
  }

LABEL_20:
  v17 = MEMORY[0x277D84F90];
  if (v2)
  {
    *time2 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v17 = *time2;
    v18 = *(*time2 + 16);
    v19 = 72 * v18 + 32;
    v20 = v111 + 44;
    v21 = v2;
    do
    {
      time1[2].epoch = *(v20 + 64);
      v22 = *(v20 + 48);
      *&time1[1].timescale = *(v20 + 32);
      *&time1[2].value = v22;
      v23 = *(v20 + 16);
      *&time1[0].value = *v20;
      *&time1[0].epoch = v23;
      *time2 = v17;
      v24 = *(v17 + 24);
      v25 = v18 + 1;
      if (v18 >= v24 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v18 + 1, 1);
        v17 = *time2;
      }

      *(v17 + 16) = v25;
      v26 = v17 + v19;
      *v26 = *&time1[0].value;
      v27 = *&time1[0].epoch;
      v28 = *&time1[1].timescale;
      v29 = *&time1[2].value;
      *(v26 + 64) = time1[2].epoch;
      *(v26 + 32) = v28;
      *(v26 + 48) = v29;
      *(v26 + 16) = v27;
      v19 += 72;
      v20 += 96;
      v18 = v25;
      --v21;
    }

    while (v21);
  }

LABEL_27:
  v30 = *(v17 + 16);
  v96 = v16;
  if (v30)
  {
    v98 = v2;
    v31 = *(MEMORY[0x277CC0918] + 8);
    v107 = *(MEMORY[0x277CC0918] + 16);
    v109 = *MEMORY[0x277CC0918];
    v32 = *(MEMORY[0x277CC0918] + 32);
    v99 = *(MEMORY[0x277CC0918] + 40);
    v101 = *(MEMORY[0x277CC0918] + 24);
    v33 = *(MEMORY[0x277CC0918] + 56);
    v34 = *(MEMORY[0x277CC0918] + 64);
    v103 = v34;
    v105 = *(MEMORY[0x277CC0918] + 48);
    v35 = (v17 + 48);
    v36 = -v30;
    v37 = -1;
    do
    {
      if (v36 + v37 == -1)
      {

        memset(time1, 0, sizeof(time1));
        v117 = -1;
        goto LABEL_54;
      }

      if (++v37 >= *(v17 + 16))
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v38 = v35[2];
      v39 = v35[3];
      v40 = v35[4];
      v41 = v35[5];
      v42 = v35[6];
      v43 = *v35;
      v44 = v35[1];
      v45 = *(v35 - 1);
      time1[0].value = *(v35 - 2);
      *&time1[0].timescale = v45;
      time1[0].epoch = v43;
      *time2 = v109;
      *&time2[8] = v31;
      *&time2[16] = v107;
      if (CMTimeCompare(time1, time2))
      {
        break;
      }

      time1[0].value = v40;
      *&time1[0].timescale = v41;
      time1[0].epoch = v42;
      *time2 = v105;
      *&time2[8] = v33;
      *&time2[16] = v103;
      if (CMTimeCompare(time1, time2))
      {
        break;
      }

      v35 += 9;
      time1[0].value = v44;
      *&time1[0].timescale = v38;
      time1[0].epoch = v39;
      *time2 = v101;
      *&time2[8] = v32;
      *&time2[16] = v99;
      result = CMTimeCompare(time1, time2);
    }

    while (!result);
    v95 = *(v17 + 16);
    if (v95 >= 2)
    {

      v46 = 0;
      v47 = (v17 + 48);
      while (v46 < *(v17 + 16))
      {
        v48 = *(v47 - 2);
        v49 = *(v47 - 1);
        v50 = *v47;
        v51 = v47[2];
        v52 = v47[3];
        v53 = v47[5];
        v54 = *(v17 + 32);
        v56 = *(v17 + 40);
        v55 = *(v17 + 44);
        result = *(v17 + 48);
        v57 = *(v17 + 56);
        v58 = *(v17 + 64);
        epoch = *(v17 + 72);
        v104 = v52;
        v106 = v47[1];
        v108 = v47[6];
        v110 = v47[4];
        if (v46)
        {
          if (v46 >> 31)
          {
            goto LABEL_90;
          }

          time1[0].value = *(v17 + 32);
          time1[0].timescale = v56;
          time1[0].flags = v55;
          time1[0].epoch = result;
          v97 = result;
          v100 = v48;
          v60 = v50;
          v61 = v54;
          v62 = v55;
          CMTimeMultiply(time2, time1, v46);
          time1[0].value = v57;
          *&time1[0].timescale = v58;
          time1[0].epoch = epoch;
          CMTimeAdd(&v112, time1, time2);
          result = v97;
          v55 = v62;
          v54 = v61;
          v50 = v60;
          v48 = v100;
          v102 = v112.value;
          v58 = *&v112.timescale;
          v63 = MEMORY[0x277CC0898];
          v64 = (MEMORY[0x277CC0898] + 16);
          v65 = (MEMORY[0x277CC0898] + 12);
          v66 = (MEMORY[0x277CC0898] + 8);
          epoch = v112.epoch;
        }

        else
        {
          v102 = *(v17 + 56);
          v63 = (v17 + 80);
          v66 = (v17 + 88);
          v65 = (v17 + 92);
          v64 = (v17 + 96);
        }

        v67 = *v64;
        v68 = *v65;
        v69 = *v66;
        v70 = *v63;
        time1[0].value = v48;
        *&time1[0].timescale = v49;
        time1[0].epoch = v50;
        *time2 = v54;
        *&time2[8] = __PAIR64__(v55, v56);
        *&time2[16] = result;
        if (CMTimeCompare(time1, time2))
        {
          goto LABEL_51;
        }

        time1[0].value = v110;
        *&time1[0].timescale = v53;
        time1[0].epoch = v108;
        *time2 = v70;
        *&time2[8] = __PAIR64__(v68, v69);
        *&time2[16] = v67;
        if (CMTimeCompare(time1, time2) || (time1[0].value = v106, *&time1[0].timescale = v51, time1[0].epoch = v104, *time2 = v102, *&time2[8] = v58, *&time2[16] = epoch, result = CMTimeCompare(time1, time2), result))
        {
LABEL_51:

          goto LABEL_52;
        }

        ++v46;
        v47 += 9;
        v2 = v98;
        if (v95 == v46)
        {

          v16 = v96;
          if (!*(v17 + 16))
          {
            goto LABEL_94;
          }

          v71 = *(v17 + 48);
          v72 = *(v17 + 80);
          v114 = *(v17 + 64);
          *&v115.value = v72;
          v115.epoch = *(v17 + 96);
          *time2 = *(v17 + 32);
          *&time2[16] = v71;

          *&time1[1].timescale = v114;
          time1[2] = v115;
          *&time1[0].value = *time2;
          *&time1[0].epoch = *&time2[16];
          v73 = 1;
          LOBYTE(v112.value) = 1;
          goto LABEL_48;
        }
      }

      goto LABEL_89;
    }

LABEL_52:
    time2[0] = 0;
    time1[0].value = v17;
    v117 = 0;
LABEL_54:
    v2 = v98;
    v16 = v96;
    if (!v98)
    {
      goto LABEL_49;
    }

LABEL_55:
    *time2 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v76 = 120;
    v74 = *time2;
    v77 = v2;
    do
    {
      v78 = *(v111 + v76);
      *time2 = v74;
      v79 = *(v74 + 16);
      v80 = *(v74 + 24);

      if (v79 >= v80 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v79 + 1, 1);
        v74 = *time2;
      }

      *(v74 + 16) = v79 + 1;
      *(v74 + 8 * v79 + 32) = v78;
      v76 += 96;
      --v77;
    }

    while (v77);

    v16 = v96;
    v75 = *(v74 + 16);
    if (!v75)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  memset(time1, 0, sizeof(time1));
  v73 = -1;
LABEL_48:
  v117 = v73;
  if (v2)
  {
    goto LABEL_55;
  }

LABEL_49:

  v74 = MEMORY[0x277D84F90];
  v75 = *(MEMORY[0x277D84F90] + 16);
  if (!v75)
  {
    goto LABEL_65;
  }

LABEL_60:
  v81 = 32;
  while (v75)
  {
    v82 = *(*(v74 + v81) + 16);
    v81 += 8;
    --v75;
    if (v82)
    {
      v83 = v94;
      if ((v94 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_68;
    }
  }

LABEL_65:

  v74 = 0;
  v83 = v94;
  if ((v94 & 1) == 0)
  {
LABEL_66:
    if ((v16 & 1) == 0 && value[2] != v2)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }
  }

LABEL_68:
  if (!v2)
  {
LABEL_75:
    if (v83)
    {
      value = MEMORY[0x277D84F90];
    }

    else if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_22E0EF920;
      *(v85 + 32) = value;
      result = outlined consume of CMSampleBufferRef.SizePerSample?(value, v16);
      value = v85;
    }

    v86 = MEMORY[0x277D84F90];
    if (v117 == 255)
    {
      v87 = MEMORY[0x277D84F90];
    }

    else
    {
      v87 = time1[0].value;
      if (v117)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_22E0EF920;
        *(v88 + 32) = v87;
        v89 = *&time1[1].value;
        *(v88 + 40) = *&time1[0].timescale;
        *(v88 + 56) = v89;
        v90 = *&time1[2].timescale;
        *(v88 + 72) = *&time1[1].epoch;
        *(v88 + 88) = v90;
        result = outlined destroy of CMAttachmentBearerAttachments.Value?(time1, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);
        v87 = v88;
      }
    }

    if (v74)
    {
      v91 = v74;
    }

    else
    {
      v91 = v86;
    }

    *a2 = v2;
    *(a2 + 8) = value;
    *(a2 + 16) = v87;
    *(a2 + 24) = v91;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    return result;
  }

  if (v117 != 255 && (v117 & 1) == 0 && *(time1[0].value + 16) != v2)
  {
    goto LABEL_92;
  }

  if (!v74)
  {
    goto LABEL_75;
  }

  v84 = *(v74 + 16);
  if (!v84 || v84 == v2)
  {
    goto LABEL_75;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t CMSampleBufferRef.SamplePropertiesCollection.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in CMSampleBufferRef.SamplePropertiesCollection.init<A>(_:), 0, a2, MEMORY[0x277D83B88], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a4);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    while (v10 != v11)
    {
      v12 = v8 + 8 * v11++;
      if (*(v12 + 32))
      {
        if (v10 == 1)
        {
LABEL_9:
          v85 = 0;
          v15 = 0;
        }

        else
        {
          v13 = 32;
          while (v10)
          {
            v14 = *(v8 + v13);
            v13 += 8;
            --v10;
            if (v14 != *(v8 + 32))
            {
              goto LABEL_9;
            }
          }

          v83 = *(v8 + 32);

          v85 = 0;
          v9 = v83;
          v15 = 1;
        }

        goto LABEL_11;
      }
    }
  }

  v9 = 0;
  v15 = -1;
  v85 = 1;
LABEL_11:
  v86 = v15;
  type metadata accessor for CMSampleTimingInfo(0);
  v89 = a1;
  v90 = a2;
  v87 = a3;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(specialized implicit closure #2 in CMSampleBufferRef.SamplePropertiesCollection.init<A>(_:), 0, a2, v16, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v17);
  v19 = result;
  v20 = *(result + 16);
  v92 = v9;
  if (v20)
  {
    v21 = *(MEMORY[0x277CC0918] + 8);
    v97 = *(MEMORY[0x277CC0918] + 16);
    v99 = *MEMORY[0x277CC0918];
    v22 = *(MEMORY[0x277CC0918] + 32);
    v23 = *(MEMORY[0x277CC0918] + 40);
    v24 = *(MEMORY[0x277CC0918] + 48);
    v93 = v23;
    v95 = *(MEMORY[0x277CC0918] + 24);
    v25 = *(MEMORY[0x277CC0918] + 56);
    v26 = *(MEMORY[0x277CC0918] + 64);
    v27 = (result + 48);
    v28 = -v20;
    v29 = -1;
    do
    {
      if (v28 + v29 == -1)
      {

        memset(time1, 0, sizeof(time1));
        v67 = 255;
        v106 = -1;
        goto LABEL_35;
      }

      if (++v29 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      v33 = v27[5];
      v34 = v27[6];
      v35 = *v27;
      v36 = v27[1];
      v37 = *(v27 - 1);
      time1[0].value = *(v27 - 2);
      *&time1[0].timescale = v37;
      time1[0].epoch = v35;
      *time2 = v99;
      *&time2[8] = v21;
      *&time2[16] = v97;
      if (CMTimeCompare(time1, time2))
      {
        break;
      }

      time1[0].value = v32;
      *&time1[0].timescale = v33;
      time1[0].epoch = v34;
      *time2 = v24;
      *&time2[8] = v25;
      *&time2[16] = v26;
      if (CMTimeCompare(time1, time2))
      {
        break;
      }

      v27 += 9;
      time1[0].value = v36;
      *&time1[0].timescale = v30;
      time1[0].epoch = v31;
      *time2 = v95;
      *&time2[8] = v22;
      *&time2[16] = v93;
      result = CMTimeCompare(time1, time2);
    }

    while (!result);
    v88 = *(v19 + 16);
    if (v88 < 2)
    {
LABEL_33:
      v67 = 0;
      time2[0] = 0;
      time1[0].value = v19;
      v106 = 0;
      goto LABEL_35;
    }

    v39 = 0;
    v40 = (v19 + 48);
    while (v39 < *(v19 + 16))
    {
      v41 = *(v40 - 2);
      v42 = *(v40 - 1);
      v43 = *v40;
      v44 = v40[2];
      v45 = v40[3];
      v46 = v40[5];
      v47 = *(v19 + 32);
      v48 = *(v19 + 40);
      result = *(v19 + 44);
      v50 = *(v19 + 48);
      value = *(v19 + 56);
      v51 = *(v19 + 64);
      epoch = *(v19 + 72);
      v94 = v45;
      v96 = v40[1];
      v98 = v40[6];
      v100 = v40[4];
      if (v39)
      {
        if (v39 >> 31)
        {
          goto LABEL_66;
        }

        time1[0].value = *(v19 + 32);
        time1[0].timescale = v48;
        time1[0].flags = result;
        time1[0].epoch = v50;
        v91 = result;
        v53 = v41;
        v54 = v43;
        v55 = v47;
        v56 = v48;
        CMTimeMultiply(time2, time1, v39);
        time1[0].value = value;
        *&time1[0].timescale = v51;
        time1[0].epoch = epoch;
        CMTimeAdd(&v101, time1, time2);
        LODWORD(result) = v91;
        v48 = v56;
        v47 = v55;
        v43 = v54;
        v41 = v53;
        value = v101.value;
        v51 = *&v101.timescale;
        v57 = MEMORY[0x277CC0898];
        v58 = (MEMORY[0x277CC0898] + 16);
        v59 = (MEMORY[0x277CC0898] + 12);
        v60 = (MEMORY[0x277CC0898] + 8);
        epoch = v101.epoch;
      }

      else
      {
        v57 = (v19 + 80);
        v60 = (v19 + 88);
        v59 = (v19 + 92);
        v58 = (v19 + 96);
      }

      v61 = *v58;
      v62 = *v59;
      v63 = *v60;
      v64 = *v57;
      time1[0].value = v41;
      *&time1[0].timescale = v42;
      time1[0].epoch = v43;
      *time2 = v47;
      *&time2[8] = __PAIR64__(result, v48);
      *&time2[16] = v50;
      if (CMTimeCompare(time1, time2))
      {
        goto LABEL_32;
      }

      time1[0].value = v100;
      *&time1[0].timescale = v46;
      time1[0].epoch = v98;
      *time2 = v64;
      *&time2[8] = __PAIR64__(v62, v63);
      *&time2[16] = v61;
      if (CMTimeCompare(time1, time2) || (time1[0].value = v96, *&time1[0].timescale = v44, time1[0].epoch = v94, *time2 = value, *&time2[8] = v51, *&time2[16] = epoch, result = CMTimeCompare(time1, time2), result))
      {
LABEL_32:

        goto LABEL_33;
      }

      ++v39;
      v40 += 9;
      if (v88 == v39)
      {

        if (!*(v19 + 16))
        {
          goto LABEL_71;
        }

        v65 = *(v19 + 48);
        v66 = *(v19 + 80);
        v103 = *(v19 + 64);
        *&v104.value = v66;
        v104.epoch = *(v19 + 96);
        *time2 = *(v19 + 32);
        *&time2[16] = v65;

        v67 = 1;
        LOBYTE(v101.value) = 1;
        *&time1[1].timescale = v103;
        time1[2] = v104;
        *&time1[0].value = *time2;
        *&time1[0].epoch = *&time2[16];
        v106 = 1;
        goto LABEL_35;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  memset(time1, 0, sizeof(time1));
  v67 = 255;
  v106 = -1;
LABEL_35:
  v68 = v89;
  v69 = v90;
  v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(specialized implicit closure #4 in CMSampleBufferRef.SamplePropertiesCollection.init<A>(_:), 0, v90, &type metadata for CMSampleBufferRef.SampleAttachments, MEMORY[0x277D84A98], v87, MEMORY[0x277D84AC0], v38);
  v71 = v70;
  v72 = *(v70 + 16);
  if (v72)
  {
    v73 = 32;
    while (v72)
    {
      v74 = *(*(v70 + v73) + 16);
      v73 += 8;
      --v72;
      if (v74)
      {
        goto LABEL_41;
      }
    }
  }

  v71 = 0;
LABEL_41:
  result = dispatch thunk of Collection.count.getter();
  if (result < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v75 = result;
  if ((v85 & 1) == 0 && (v86 & 1) == 0 && *(v92 + 16) != result)
  {
    goto LABEL_68;
  }

  if (!result)
  {
    goto LABEL_52;
  }

  if (v67 != 255 && (v67 & 1) == 0 && *(time1[0].value + 16) != result)
  {
    goto LABEL_69;
  }

  if (!v71 || (v76 = *(v71 + 16)) == 0 || v76 == result)
  {
LABEL_52:
    if (v85)
    {
      v92 = MEMORY[0x277D84F90];
    }

    else if (v86)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_22E0EF920;
      *(v77 + 32) = v92;
      outlined consume of CMSampleBufferRef.SizePerSample?(v92, v86);
      v92 = v77;
      v68 = v89;
      v69 = v90;
    }

    v78 = MEMORY[0x277D84F90];
    if (v67 == 255)
    {
      v79 = MEMORY[0x277D84F90];
    }

    else
    {
      v79 = time1[0].value;
      if (v67)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_22E0EF920;
        *(v80 + 32) = v79;
        v81 = *&time1[1].value;
        *(v80 + 40) = *&time1[0].timescale;
        *(v80 + 56) = v81;
        v82 = *&time1[2].timescale;
        *(v80 + 72) = *&time1[1].epoch;
        *(v80 + 88) = v82;
        outlined destroy of CMAttachmentBearerAttachments.Value?(time1, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);
        v79 = v80;
      }
    }

    if (v71)
    {
      v78 = v71;
    }

    result = (*(*(v69 - 8) + 8))(v68, v69);
    *a5 = v75;
    *(a5 + 8) = v92;
    *(a5 + 16) = v79;
    *(a5 + 24) = v78;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    return result;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t closure #1 in CMSampleBufferRef.SamplePropertiesCollection.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    *a2 = 0;
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

__n128 specialized implicit closure #2 in CMSampleBufferRef.SamplePropertiesCollection.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 28);
  v3 = *(a1 + 60);
  *(a2 + 32) = *(a1 + 44);
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 76);
  *a2 = *(a1 + 12);
  *(a2 + 16) = result;
  return result;
}

uint64_t static CMSampleBufferRef.SamplePropertiesCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    v3 = *(a2 + 40);
    v5 = *(a2 + 24);
    v4 = *(a2 + 32);
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    v8 = *(a1 + 40);
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v13 = a1 + 8;
    v11 = *(a1 + 8);
    v12 = *(v13 + 8);
    v17[0] = v2;
    v17[1] = v11;
    v17[2] = v12;
    v17[3] = v10;
    v17[4] = v9;
    v18 = v8;
    v19 = v2;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v24 = v3;

    specialized Sequence.allSatisfy(_:)(v17);
    v15 = v14;
    outlined destroy of CMAttachmentBearerAttachments.Value?(v17, &_ss12Zip2SequenceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVAGGMd, &_ss12Zip2SequenceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVAGGMR);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMSampleBufferRef.SamplePropertiesCollection(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    v3 = *(a2 + 40);
    v5 = *(a2 + 24);
    v4 = *(a2 + 32);
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    v8 = *(a1 + 40);
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v13 = a1 + 8;
    v11 = *(a1 + 8);
    v12 = *(v13 + 8);
    v17[0] = v2;
    v17[1] = v11;
    v17[2] = v12;
    v17[3] = v10;
    v17[4] = v9;
    v18 = v8;
    v19 = v2;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v24 = v3;

    specialized Sequence.allSatisfy(_:)(v17);
    v15 = v14;
    outlined destroy of CMAttachmentBearerAttachments.Value?(v17, &_ss12Zip2SequenceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVAGGMd, &_ss12Zip2SequenceVySo17CMSampleBufferRefa9CoreMediaE26SamplePropertiesCollectionVAGGMR);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t *specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(unint64_t *result, unint64_t a2, int64_t a3, __int128 *a4)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 < a3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = *a4 == v8;
  v10 = a2 == a3;
  if (a2 != a3 && v7 != v8)
  {
    v11 = result;
    v17 = a3 - 1;
    v12 = v8 - 1;
    v13 = *a4;
    while (1)
    {
      v14 = a4[1];
      v25 = *a4;
      v26 = v14;
      v27[0] = a4[2];
      *(v27 + 9) = *(a4 + 41);
      if (v13 >= v8)
      {
        break;
      }

      CMSampleBufferRef.SamplePropertiesCollection.subscript.getter(v13, &v19);
      *&v28[32] = v21;
      *&v28[48] = v22;
      *&v28[64] = v23;
      *&v28[80] = v24;
      *v28 = v19;
      *&v28[16] = v20;
      v29[2] = v21;
      v29[3] = v22;
      v29[4] = v23;
      v29[5] = v24;
      v29[0] = v19;
      v29[1] = v20;
      outlined init with copy of CMSampleBufferRef.SampleProperties(v28, v18);
      result = outlined destroy of CMSampleBufferRef.SampleProperties(v29);
      if (v5 >= v4)
      {
        goto LABEL_22;
      }

      if (v28[8])
      {
        v15 = 0;
      }

      else
      {
        v15 = *v28;
      }

      CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v15, v5);
      v30[2] = *&v28[44];
      v30[3] = *&v28[60];
      v31 = *&v28[76];
      v30[0] = *&v28[12];
      v30[1] = *&v28[28];
      CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(v30, v5);
      *&v19 = *&v28[88];
      result = CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(&v19, v5);
      if (v7 < 0)
      {
        goto LABEL_23;
      }

      v4 = *v11;
      if (v5 >= *v11 || v13 >= *(a4 + 2))
      {
        goto LABEL_23;
      }

      v9 = v12 == v13;
      v10 = v17 == v5;
      if (v17 != v5)
      {
        ++v5;
        if (v12 != v13++)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  if (!v10)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v9)
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_17:
    a3 = 0;
LABEL_18:
    v8 = a6;
LABEL_21:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    if (a4)
    {
      v7 = a5 - a4;
    }

    else
    {
      v7 = 0;
    }

    v8 = a6 + v7;
    v9 = __OFADD__(a6, v7);
    while (!v9)
    {
      if (v7 == v6)
      {
        a3 = v7;
        goto LABEL_21;
      }

      if (a6 + v6 >= v8)
      {
        goto LABEL_23;
      }

      *(a2 + v6) = *(a4 + v6);
      if (a3 - 1 == v6)
      {
        v8 = a6 + v6 + 1;
        goto LABEL_21;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(OpaqueCMBlockBuffer **a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v8 = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(v8, v9))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = v8;
  if (v8 + v9 < v8)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    if (a3 < 0)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v11 = 0;
    while (1)
    {
      v12 = FigBlockBufferImpliedIndicesForSwiftOverlay();
      v14 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_35;
      }

      v15 = v10 + v11;
      if (v10 + v11 == v14)
      {
        v10 += v11;
        a3 = v11;
        goto LABEL_33;
      }

      v16 = FigBlockBufferImpliedIndicesForSwiftOverlay();
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_36;
      }

      if (v18 < v16)
      {
        goto LABEL_37;
      }

      if (v15 < v16)
      {
        goto LABEL_38;
      }

      if (v15 >= v18)
      {
        goto LABEL_39;
      }

      v19 = FigBlockBufferImpliedIndicesForSwiftOverlay();
      if (__OFADD__(v19, v20))
      {
        goto LABEL_40;
      }

      if (v19 + v20 < v19)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v15, v19))
      {
        goto LABEL_42;
      }

      v31[0] = 0;
      DataPointer = CMBlockBufferGetDataPointer(a4, v15 - v19, 0, 0, v31);
      if (DataPointer != noErr.getter())
      {
        goto LABEL_43;
      }

      if (!v31[0])
      {
        goto LABEL_54;
      }

      v22 = *v31[0];
      if (v22 < 0)
      {
        goto LABEL_44;
      }

      v23 = FigBlockBufferImpliedIndicesForSwiftOverlay();
      if (__OFADD__(v23, v24))
      {
        goto LABEL_45;
      }

      v25 = v23;
      if (v23 + v24 < v23)
      {
        goto LABEL_46;
      }

      v26 = FigBlockBufferImpliedIndicesForSwiftOverlay();
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_47;
      }

      if (v28 < v26)
      {
        goto LABEL_48;
      }

      if (v15 < v25)
      {
        goto LABEL_49;
      }

      if (v15 >= v28)
      {
        goto LABEL_50;
      }

      *(a2 + v11) = v22;
      if (a3 - 1 == v11)
      {
        v10 += v11 + 1;
        goto LABEL_33;
      }

      if (__OFADD__(++v11, 1))
      {
        __break(1u);
LABEL_30:
        a3 = 0;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
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
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_33:
  *a1 = a4;
  a1[1] = v10;
  v29 = *MEMORY[0x277D85DE8];
  return a3;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v8 = a3;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    if (a4 < 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = v5;
    }

    v9 = MEMORY[0x2318E2C00](v15);
LABEL_6:
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v9 == v10)
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2318E2A60](v10, a4);
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a4 + 8 * v10 + 32);
        v13 = swift_unknownObjectRetain();
      }

      *(v4 + 8 * v10) = v13;
      if (v11 == v8)
      {
        goto LABEL_18;
      }

      ++v10;
      if (v11 >= v8)
      {
        goto LABEL_21;
      }
    }

    v8 = v9;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

{
  if (!a2)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v8 = a3;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    if (a4 < 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = v5;
    }

    v9 = MEMORY[0x2318E2C00](v14);
LABEL_6:
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v9 == v10)
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2318E2A60](v10, a4);
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a4 + 8 * v10 + 32);
      }

      *(v4 + 8 * v10) = v12;
      if (v11 == v8)
      {
        goto LABEL_18;
      }

      ++v10;
      if (v11 >= v8)
      {
        goto LABEL_21;
      }
    }

    v8 = v9;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  if (!a2)
  {
LABEL_14:
    a3 = 0;
LABEL_15:
    v13 = a5;
LABEL_18:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = v13;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v15 = a3;
    v16 = a6;
    v11 = a3 - 1;
    v12 = a6 - a5;
    while (1)
    {
      if (v12 == v10)
      {
        a6 = v16;
        v13 = v16;
        a3 = v10;
        goto LABEL_18;
      }

      v13 = a5 + v10 + 1;
      v14 = __OFADD__(a5 + v10, 1);
      result = a4;
      if (v14)
      {
        break;
      }

      *v9 = result;
      v9[1] = a5 + v10;
      if (v11 == v10)
      {
        a3 = v15;
        a6 = v16;
        goto LABEL_18;
      }

      v9 += 2;
      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v55 = *v3;
  v5 = v3[2];
  v49 = v3[3];
  v6 = v3[4];
  v7 = *(v3 + 40);
  v59 = v7;
  if (!a2)
  {
LABEL_30:
    a3 = 0;
    *a1 = v55;
    *(a1 + 8) = v4;
LABEL_35:
    *(a1 + 16) = v5;
    *(a1 + 24) = v49;
    *(a1 + 32) = v6;
    v33 = v7 & 1;
LABEL_36:
    *(a1 + 40) = v33;
    *(a1 + 48) = a3;
    return;
  }

  v48 = v4;
  if (!a3)
  {
    v8 = v4;
LABEL_34:
    *a1 = v55;
    *(a1 + 8) = v8;
    goto LABEL_35;
  }

  v8 = v4;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v35 = v6;
    v36 = a1;
    v10 = 0;
    v11 = 0;
    v40 = v5 + 12;
    v39 = v5 + 10;
    v38 = v5 + 23;
    v37 = (v5 + 11);
    v12 = *(MEMORY[0x277CC0918] + 8);
    v43 = *(MEMORY[0x277CC0918] + 16);
    v44 = *MEMORY[0x277CC0918];
    v13 = *(MEMORY[0x277CC0918] + 32);
    v41 = *(MEMORY[0x277CC0918] + 40);
    v42 = *(MEMORY[0x277CC0918] + 24);
    v46 = (v4 + 32);
    v34 = a3;
    v47 = a3 - 1;
    v14 = (v4 + 32);
    v45 = v5;
    while (1)
    {
      if (v55 == v11)
      {
        v33 = v59;
        a1 = v36;
        a3 = v55;
        *v36 = v55;
        v36[1] = v8;
        v36[2] = v5;
        v36[3] = v49;
        v36[4] = v35;
        goto LABEL_36;
      }

      if (v55 < 0)
      {
        break;
      }

      if (v11 >= v55)
      {
        goto LABEL_38;
      }

      v15 = *(v8 + 16);
      if (v15)
      {
        v16 = v46;
        if (v15 != 1)
        {
          v16 = v14;
          if (v11 >= v15)
          {
            goto LABEL_40;
          }
        }

        v15 = *v16;
      }

      v17 = v5[2];
      if (v17 == 1)
      {
        v22 = v5[4];
        v27 = v5[5];
        v23 = v5[6];
        value = v5[7];
        v26 = v5[8];
        epoch = v5[9];
        if (v11)
        {
          if (v11 >> 31)
          {
            goto LABEL_42;
          }

          time.value = v5[4];
          *&time.timescale = v27;
          time.epoch = v23;
          CMTimeMultiply(&rhs, &time, v11);
          time.value = value;
          *&time.timescale = v26;
          time.epoch = epoch;
          CMTimeAdd(&v56, &time, &rhs);
          value = v56.value;
          v26 = *&v56.timescale;
          v21 = MEMORY[0x277CC0898];
          v18 = (MEMORY[0x277CC0898] + 16);
          v19 = (MEMORY[0x277CC0898] + 12);
          v20 = (MEMORY[0x277CC0898] + 8);
          epoch = v56.epoch;
        }

        else
        {
          v19 = v38;
          v21 = v39;
          v20 = v37;
          v18 = v40;
        }
      }

      else if (v17)
      {
        if (v11 >= v17)
        {
          goto LABEL_41;
        }

        v22 = *(v5 + v10 + 32);
        v27 = *(v5 + v10 + 40);
        v23 = *(v5 + v10 + 48);
        value = *(v5 + v10 + 56);
        v21 = (v5 + v10 + 80);
        v26 = *(v5 + v10 + 64);
        v20 = (v5 + v10 + 88);
        v19 = (v5 + v10 + 92);
        v18 = (v5 + v10 + 96);
        epoch = *(v5 + v10 + 72);
      }

      else
      {
        v18 = (MEMORY[0x277CC0918] + 64);
        v19 = (MEMORY[0x277CC0918] + 60);
        v20 = (MEMORY[0x277CC0918] + 56);
        v21 = (MEMORY[0x277CC0918] + 48);
        v23 = v43;
        v22 = v44;
        epoch = v41;
        value = v42;
        v26 = v13;
        v27 = v12;
      }

      v28 = *v20;
      v29 = *(v49 + 16);
      v50 = v14;
      v51 = *v21;
      v54 = *v18;
      v52 = v28;
      v53 = *v19;
      if (v29)
      {
        if (v11 >= v29)
        {
          goto LABEL_39;
        }

        v30 = v10;
        v31 = *(v49 + 32 + 8 * v11);
      }

      else
      {
        v30 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
        v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        time.value = 0;
        type metadata accessor for CFStringRef(0);
        lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
        static Dictionary._forceBridgeFromObjectiveC(_:result:)();
        v31 = time.value;
        if (!time.value)
        {
          goto LABEL_44;
        }

        v5 = v45;
      }

      v8 = v48;
      LOBYTE(time.value) = v15 == 0;
      *v9 = v15;
      *(v9 + 8) = v15 == 0;
      *(v9 + 12) = v22;
      *(v9 + 20) = v27;
      *(v9 + 28) = v23;
      *(v9 + 36) = value;
      *(v9 + 44) = v26;
      *(v9 + 52) = epoch;
      *(v9 + 60) = v51;
      v6 = v52;
      *(v9 + 68) = v52;
      *(v9 + 72) = v53;
      *(v9 + 76) = v54;
      *(v9 + 88) = v31;
      if (v47 == v11)
      {
        v7 = v59;
        v6 = v35;
        a1 = v36;
        a3 = v34;
        goto LABEL_34;
      }

      v7 = ++v11;
      v10 = v30 + 72;
      v14 = v50 + 1;
      v9 += 96;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  CMSampleBufferRef.PerSampleAttachmentsDictionary.makeIterator()(&v35);

  if (!a2)
  {
LABEL_16:
    v22 = v35;
    v23 = v36;
    v9 = v37;
LABEL_24:
    v11 = v38;
LABEL_25:
    *a1 = v22;
    *(a1 + 16) = v23;
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    return;
  }

  if (!a3)
  {
    v22 = v35;
    v23 = v36;
    v9 = v37;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = v35;
    v27 = a1;
    v8 = v35;
    v9 = v37;
    v25 = v36;
    v10 = (v36 + 64) >> 6;
    v11 = v38;
    v12 = 1;
    while (v11)
    {
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v9 << 6);
      v17 = *(*(v8 + 48) + 8 * v16);
      outlined init with copy of Any(*(v8 + 56) + 32 * v16, v28);
      *&v29 = v17;
      outlined init with take of Any(v28, (&v29 + 8));
      a1 = v29;
      v18 = v17;
      if (!a1)
      {
        goto LABEL_21;
      }

      v19 = v30;
      v32 = v29;
      v33 = v30;
      v20 = v31;
      v34 = v31;
      *a2 = v29;
      *(a2 + 16) = v19;
      *(a2 + 32) = v20;
      if (v12 == a3)
      {
        goto LABEL_22;
      }

      a2 += 40;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    v13 = v9;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v10)
      {
        break;
      }

      v11 = *(*(&v8 + 1) + 8 * v14);
      ++v13;
      if (v11)
      {
        v9 = v14;
        goto LABEL_11;
      }
    }

    v11 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v9 = v24 - 1;
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
LABEL_21:
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v29, &_sSo17CMSampleBufferRefa9CoreMediaE30PerSampleAttachmentsDictionaryV3KeyV3key_yp5valuetSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE30PerSampleAttachmentsDictionaryV3KeyV3key_yp5valuetSgMR);
LABEL_22:
    a1 = v27;
    v22 = v26;
    v23 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v36 = (a4 & 0xC000000000000001) != 0;
  v35 = a4 & 0xC000000000000001;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.startIndex.getter();
    v9 = result;
    v11 = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_19:
    v12 = 0;
LABEL_25:
    *a1 = v4;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    *(a1 + 24) = v36;
    return v12;
  }

LABEL_18:
  v32 = -1 << *(v4 + 32);

  v9 = _HashTable.startBucket.getter();
  v11 = *(v4 + 36);

  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a3;
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v4;
      v15 = v13;
      if (v35)
      {
        result = __CocoaDictionary.endIndex.getter();
        if (!v36)
        {
          goto LABEL_28;
        }

        v17 = result;
        v18 = v16;
        v19 = MEMORY[0x2318E2B60](v9, v11, result, v16);
        outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v17, v18, 1);
        if (v19)
        {
          v36 = 1;
          a1 = v33;
          v4 = v14;
          goto LABEL_25;
        }

        v4 = v14;
        specialized Dictionary.subscript.getter(&v37, v9, v11, v36, v14);
        v21 = v20;
        a1 = v37;
        v22 = __CocoaDictionary.index(after:)();
        v24 = v23;
        v36 = 1;
        result = outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v9, v11, 1);
        v9 = v22;
        v11 = v24;
      }

      else
      {
        if (v36)
        {
          goto LABEL_28;
        }

        if (*(v4 + 36) != v11)
        {
          __break(1u);
          break;
        }

        if (v9 == 1 << *(v4 + 32))
        {
          v36 = 0;
          v12 = v13 - 1;
          goto LABEL_24;
        }

        specialized Dictionary.subscript.getter(&v37, v9, v11, 0, v4);
        v21 = v25;
        a1 = v37;
        specialized _NativeDictionary.index(after:)(v9, v11, 0, v4);
        v27 = v26;
        v29 = v28;
        v31 = v30;
        result = outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v9, v11, v36);
        v9 = v27;
        v11 = v29;
        v36 = v31;
        v4 = v14;
      }

      *a2 = v21;
      a2[1] = a1;
      a3 = v34;
      if (v34 == v15)
      {
        v12 = v34;
LABEL_24:
        a1 = v33;
        goto LABEL_25;
      }

      a2 += 2;
      v13 = v15 + 1;
      v12 = v15;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v6 = result;
      v7 = 0;
      v8 = a4;
      v9 = a4 + 32;
      v10 = a3;
      v11 = a3 - 1;
      while (1)
      {
        v12 = *(v9 + 16 * v7);
        *(a2 + 16 * v7) = v12;
        if (v11 == v7)
        {
          break;
        }

        outlined copy of Data._Representation(v12, *(&v12 + 1));
        if (v4 == ++v7)
        {
          a3 = v4;
          a4 = v8;
          result = v6;
          goto LABEL_12;
        }
      }

      outlined copy of Data._Representation(v12, *(&v12 + 1));
      a4 = v8;
      result = v6;
      a3 = v10;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

const OpaqueCMTagCollection *specialized Sequence._copySequenceContents(initializing:)(const OpaqueCMTagCollection *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_18;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_18:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      if (v7 - 1 == CMTaggedBufferGroupGetCount(v3))
      {
        v5 = v7 - 1;
        goto LABEL_18;
      }

      result = CMTaggedBufferGroupGetTagCollectionAtIndex(v3, v7 - 1);
      if (!result)
      {
        goto LABEL_21;
      }

      v8 = result;
      v9 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v3, v7 - 1);
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        result = CMTaggedBufferGroupGetCMSampleBufferAtIndex(v3, v7 - 1);
        if (!result)
        {
          goto LABEL_22;
        }

        v11 = result;
      }

      v12 = specialized Array<A>.init(tagCollection:)(v8);
      result = CMTaggedBufferGroupGetCount(v3);
      if (v7 - 1 >= result)
      {
        break;
      }

      *v6 = v12;
      *(v6 + 8) = v11;
      *(v6 + 16) = v10 != 0;
      if (v5 == v7)
      {
        goto LABEL_18;
      }

      v6 += 24;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}