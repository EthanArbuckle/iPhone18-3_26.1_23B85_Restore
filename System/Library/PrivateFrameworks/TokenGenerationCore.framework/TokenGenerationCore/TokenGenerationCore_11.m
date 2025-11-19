uint64_t partial apply for closure #12 in Npy.makeArray<A>(type:)(int *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = *(v1 + 16);
  return dispatch thunk of BinaryFloatingPoint.init(_:)();
}

uint64_t partial apply for closure #10 in Npy.makeArray<A>(type:)(__int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  lazy protocol witness table accessor for type Float16 and conformance Float16();
  return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
}

uint64_t partial apply for closure #8 in Npy.makeArray<A>(type:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v3 = *(*(v1 + 24) + 16);
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return dispatch thunk of FloatingPoint.init<A>(_:)();
}

uint64_t partial apply for closure #6 in Npy.makeArray<A>(type:)(int *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v3 = *(*(v1 + 24) + 16);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return dispatch thunk of FloatingPoint.init<A>(_:)();
}

uint64_t partial apply for closure #4 in Npy.makeArray<A>(type:)(__int16 *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v3 = *(*(v1 + 24) + 16);
  lazy protocol witness table accessor for type UInt16 and conformance UInt16();
  return dispatch thunk of FloatingPoint.init<A>(_:)();
}

uint64_t partial apply for closure #2 in Npy.makeArray<A>(type:)(char *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v3 = *(*(v1 + 24) + 16);
  lazy protocol witness table accessor for type UInt8 and conformance UInt8();
  return dispatch thunk of FloatingPoint.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness()
{
  result = lazy protocol witness table cache variable for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness;
  if (!lazy protocol witness table cache variable for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType()
{
  result = lazy protocol witness table cache variable for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType;
  if (!lazy protocol witness table cache variable for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType);
  }

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

uint64_t getEnumTagSinglePayload for Npy.Header.DataType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for Npy.Header.DataType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float16 and conformance Float16()
{
  result = lazy protocol witness table cache variable for type Float16 and conformance Float16;
  if (!lazy protocol witness table cache variable for type Float16 and conformance Float16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float16 and conformance Float16);
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Overridable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[3];
  v6 = v2[4];
  if (one-time initialization token for isInternalInstall != -1)
  {
    v9 = a1;
    v10 = a2;
    swift_once();
    a1 = v9;
    a2 = v10;
  }

  if (isInternalInstall)
  {
    return v5();
  }

  v8 = *(*(*(a1 + 16) - 8) + 56);

  return v8(a2, 1, 1);
}

void one-time initialization function for isInternalInstall()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    isInternalInstall = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    result = outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a4 = 2;
  }

  return result;
}

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 URLForKey_];

  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a4, v8, 1, v9);
}

{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a4 = 0;
    }

    v9 = result ^ 1;
  }

  else
  {
    result = outlined destroy of Any?(v12);
    *a4 = 0;
    v9 = 1;
  }

  *(a4 + 8) = v9;
  return result;
}

{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a4 = 0;
    }

    v9 = result ^ 1;
  }

  else
  {
    result = outlined destroy of Any?(v12);
    *a4 = 0;
    v9 = 1;
  }

  *(a4 + 4) = v9;
  return result;
}

void closure #1 in Overridable<A>.init(key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a4 = v8;
  a4[1] = v10;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return;
  }

  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v5 = 0;
  v2 += 3;
  while (1)
  {
    v8 = v2 - 4;
    if (v5 == v2 - 4)
    {
      goto LABEL_8;
    }

    v9 = *(v1 + 2);
    if (v5 >= v9)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v8 >= v9)
    {
      goto LABEL_17;
    }

    v10 = &v1[8 * v5];
    v11 = *(v10 + 4);
    *(v10 + 4) = *&v1[8 * v2];
    v12 = *(v1 + 2);

    if (v8 >= v12)
    {
      break;
    }

    v6 = *&v1[8 * v2];
    *&v1[8 * v2] = v11;

LABEL_8:
    ++v5;
    v7 = v2 - 5;
    --v2;
    if (v5 >= v7)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v0 = v1;
}

{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = v1 - 1;
  if (v1 == 1)
  {
    return;
  }

  v3 = *v0;
  v18 = v0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = v3;
  }

  else
  {
LABEL_18:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v5 = 0;
  v6 = 32 * v1;
  v7 = 1;
  while (1)
  {
    if ((v7 - 1) == v2)
    {
      goto LABEL_7;
    }

    v11 = *(v4 + 2);
    if (v7 - 1 >= v11)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v2 >= v11)
    {
      goto LABEL_17;
    }

    v12 = &v4[v5];
    v13 = *&v4[v5 + 32];
    v19 = *&v4[v5 + 40];
    v14 = *&v4[v5 + 56];
    v1 = &v4[v6];
    v15 = *&v4[v6 + 8];
    v16 = *&v4[v6 + 16];
    v17 = *&v4[v6 + 24];
    *(v12 + 4) = *&v4[v6];
    *(v12 + 5) = v15;
    *(v12 + 6) = v16;
    *(v12 + 7) = v17;
    v20 = *(v4 + 2);

    if (v2 >= v20)
    {
      break;
    }

    v3 = *(v1 + 1);
    v8 = *(v1 + 2);
    v9 = *(v1 + 3);
    *&v4[v6] = v13;
    *(v1 + 8) = v19;
    *(v1 + 3) = v14;

LABEL_7:
    --v2;
    v6 -= 32;
    v5 += 32;
    if (v7++ >= v2)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v18 = v4;
}

{
  v1 = type metadata accessor for Prompt.PromptFragment(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(*v0 + 16);
  if (!v7)
  {
    return;
  }

  v8 = v7 - 1;
  if (v7 == 1)
  {
    return;
  }

  v9 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  v10 = 1;
  while (1)
  {
    v12 = v10 - 1;
    if (v10 - 1 == v8)
    {
      goto LABEL_6;
    }

    v13 = v6[2];
    if (v12 >= v13)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    v16 = &v14[v15 * v12];
    outlined init with copy of Prompt.PromptFragment(v16, v5, type metadata accessor for Prompt.PromptFragment);
    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    outlined assign with copy of Prompt.PromptFragment(&v14[v15 * v8], v16);
    if (v8 >= v6[2])
    {
      break;
    }

    outlined assign with take of Prompt.RenderedPromptFragment(v5, &v14[v15 * v8], type metadata accessor for Prompt.PromptFragment);
LABEL_6:
    if (v10++ >= --v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySis5UInt8V_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1AC57C380](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1AC57C380](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[5];
          if (v13 >= v12[1])
          {
            break;
          }

          v14 = v12[2];
          v15 = v12[3];
          v16 = v12[4];
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          v12[1] = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6symbol_Si8positionSi8prioritytMd, &_sSS6symbol_Si8positionSi8prioritytMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  v7 = v6[5];
  v8 = type metadata accessor for Locale();
  result = (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = a1;
  *(a3 + 1) = a2;
  v10 = &a3[v6[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a3[v6[7]] = 0;
  return result;
}

size_t Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v134 = a3;
  v143 = a1;
  v5 = type metadata accessor for Prompt.Attachment(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v152 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v8 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v111 - v12;
  v14 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v148 = *(v14 - 8);
  v15 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v139 = (&v111 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v123 = (&v111 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v130 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v111 - v27;
  v132 = type metadata accessor for Locale();
  v137 = *(v132 - 8);
  v28 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v122 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v128 = &v111 - v32;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v33 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v135 = &v111 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v133 = &v111 - v37;
  v142 = type metadata accessor for Prompt.SpecialToken(0);
  v136 = *(v142 - 1);
  v38 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v138 = (&v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for Prompt.Delimiter(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v140 = (&v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for Prompt.PromptFragment(0);
  v150 = *(v147 - 8);
  v43 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v111 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v3;
  v151 = *(v3 + 8);
  v144 = *(v3 + 24);
  v145 = v45;
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.prompt);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  v49 = os_log_type_enabled(v47, v48);
  v131 = v13;
  v146 = v14;
  v126 = v23;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v153 = v51;
    *v50 = 136642819;
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, type metadata accessor for Prompt.SpecialToken);
    v52 = Dictionary.description.getter();
    v54 = a2;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v153);

    *(v50 + 4) = v55;
    a2 = v54;
    _os_log_impl(&dword_1A8E85000, v47, v48, "Token table: %{sensitive}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1AC57DBF0](v51, -1, -1);
    MEMORY[0x1AC57DBF0](v50, -1, -1);
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v48 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v153 = v58;
    *v48 = 136642819;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, type metadata accessor for Prompt.SpecialToken);
    v59 = Dictionary.description.getter();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v153);

    *(v48 + 4) = v61;
    _os_log_impl(&dword_1A8E85000, v56, v57, "Localization override map: %{sensitive}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x1AC57DBF0](v58, -1, -1);
    MEMORY[0x1AC57DBF0](v48, -1, -1);
  }

  v153 = v145;
  v154 = v151;
  v155 = v144;
  v62 = v141;
  *&v151 = Prompt.promptFragments()();
  if (!v62)
  {
    v120 = a2;
    v63 = *(v151 + 16);
    if (v63)
    {
      v121 = 0;
      LODWORD(v141) = 0;
      v64 = 0;
      v145 = v151 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v136 += 48;
      v65 = (v137 + 48);
      v116 = (v137 + 32);
      v117 = (v137 + 8);
      v119 = (v148 + 56);
      v118 = (v148 + 48);
      v144 = v63;
      v137 = v63 - 1;
      v48 = MEMORY[0x1E69E7CC0];
      v66 = v149;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v64 >= *(v151 + 16))
            {
              __break(1u);
LABEL_77:

              _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v140, type metadata accessor for Prompt.Delimiter);

              return v48;
            }

            outlined init with copy of Prompt.PromptFragment(v145 + *(v150 + 72) * v64, v66, type metadata accessor for Prompt.PromptFragment);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload != 2)
            {
              break;
            }

            v68 = v66;
            v69 = v152;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v68, v152, type metadata accessor for Prompt.Attachment);
            outlined init with copy of Prompt.PromptFragment(v69, v156, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 16) + 1, 1, v48);
            }

            v71 = *(v48 + 16);
            v70 = *(v48 + 24);
            if (v71 >= v70 >> 1)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v48);
            }

            ++v64;
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v152, type metadata accessor for Prompt.Attachment);
            *(v48 + 16) = v71 + 1;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v156, v48 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v71, type metadata accessor for Prompt.RenderedPromptFragment);
            v66 = v149;
            if (v144 == v64)
            {
              goto LABEL_73;
            }
          }

          if (EnumCaseMultiPayload)
          {
            break;
          }

          v73 = *v66;
          v72 = v66[1];
          if ((v141 & 1) == 0)
          {
            goto LABEL_23;
          }

          v74 = *(v48 + 16);
          if (!v74)
          {
            goto LABEL_23;
          }

          v141 = v66[1];
          v115 = v74;
          v113 = (*(v148 + 80) + 32) & ~*(v148 + 80);
          v114 = *(v148 + 72) * (v74 - 1);
          v75 = v126;
          outlined init with copy of Prompt.PromptFragment(v48 + v113 + v114, v126, type metadata accessor for Prompt.RenderedPromptFragment);
          if (swift_getEnumCaseMultiPayload())
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v75, type metadata accessor for Prompt.RenderedPromptFragment);
            v72 = v141;
LABEL_23:
            v76 = v139;
            *v139 = v73;
            v76[1] = v72;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 16) + 1, 1, v48);
            }

            v78 = *(v48 + 16);
            v77 = *(v48 + 24);
            if (v78 >= v77 >> 1)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v48);
            }

            *(v48 + 16) = v78 + 1;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v139, v48 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v78, type metadata accessor for Prompt.RenderedPromptFragment);
            v66 = v149;
            goto LABEL_28;
          }

          v89 = *v75;
          v112 = v75[1];
          v153 = v89;
          *&v154 = v112;

          MEMORY[0x1AC57C120](v73, v141);

          v90 = v154;
          v91 = v123;
          *v123 = v153;
          v91[1] = v90;
          swift_storeEnumTagMultiPayload();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
            v48 = result;
          }

          v66 = v149;
          if (v115 > *(v48 + 16))
          {
            __break(1u);
            return result;
          }

          outlined assign with take of Prompt.RenderedPromptFragment(v123, v48 + v113 + v114, type metadata accessor for Prompt.RenderedPromptFragment);
LABEL_28:
          if (v137 == v64)
          {
            goto LABEL_73;
          }

          LODWORD(v141) = 0;
          ++v64;
        }

        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v66, v140, type metadata accessor for Prompt.Delimiter);
        v79 = v133;
        outlined init with copy of (String, Any)(v134, v133, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
        if ((*v136)(v79, 1, v142) == 1)
        {
          outlined destroy of [Regex2BNF.CharacterPredicate](v79, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
          goto LABEL_56;
        }

        v80 = v79;
        v81 = v138;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v80, v138, type metadata accessor for Prompt.SpecialToken);
        if (*v140 == *v81 && v140[1] == v81[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v115 = v142[5];
          v141 = *(v127 + 48);
          v82 = v135;
          outlined init with copy of (String, Any)(v140 + v115, v135, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          outlined init with copy of (String, Any)(v138 + v115, &v141[v82], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v115 = *v65;
          if ((v115)(v82, 1, v132) == 1)
          {
            v83 = v135;
            v84 = (v115)(&v141[v135], 1, v132) == 1;
            v85 = v83;
            if (!v84)
            {
              goto LABEL_41;
            }

            outlined destroy of [Regex2BNF.CharacterPredicate](v83, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          }

          else
          {
            v86 = v135;
            outlined init with copy of (String, Any)(v135, v128, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v87 = &v141[v86];
            v88 = v132;
            if ((v115)(v87, 1, v132) == 1)
            {
              (*v117)(v128, v88);
              v85 = v135;
LABEL_41:
              outlined destroy of [Regex2BNF.CharacterPredicate](v85, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
              goto LABEL_55;
            }

            (*v116)(v122, &v141[v135], v88);
            lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
            LODWORD(v115) = dispatch thunk of static Equatable.== infix(_:_:)();
            v141 = *v117;
            (v141)(v122, v88);
            (v141)(v128, v88);
            outlined destroy of [Regex2BNF.CharacterPredicate](v135, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            if ((v115 & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          v93 = v142[6];
          v94 = (v140 + v93);
          v95 = *(v140 + v93 + 8);
          v96 = (v138 + v93);
          v97 = v96[1];
          if (v95)
          {
            if (v97 && (*v94 == *v96 && v95 == v97 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
LABEL_54:
              if (*(v140 + v142[7]) == *(v138 + v142[7]))
              {

                _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v138, type metadata accessor for Prompt.SpecialToken);
                _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v140, type metadata accessor for Prompt.Delimiter);
                return v48;
              }
            }
          }

          else if (!v97)
          {
            goto LABEL_54;
          }
        }

LABEL_55:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v138, type metadata accessor for Prompt.SpecialToken);
LABEL_56:
        v98 = v140;
        if (*(v140 + v142[7]))
        {
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v140, type metadata accessor for Prompt.Delimiter);
          if (v137 == v64)
          {
            goto LABEL_73;
          }

          LODWORD(v141) = 1;
          goto LABEL_72;
        }

        v99 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v143);
        v100 = v121;
        v101 = Prompt.renderSpecialToken(delimiter:tokenTable:localizationOverrideMap:)(v98, v99, v120);
        v141 = v102;
        v121 = v100;
        if (v100)
        {
          goto LABEL_77;
        }

        v103 = v101;

        if (String.count.getter() <= 0)
        {
          v106 = v131;
          v107 = v146;
          (*v119)(v131, 1, 1, v146);
        }

        else
        {
          v104 = v124;
          outlined init with copy of Prompt.PromptFragment(v140, &v124[*(v125 + 20)], type metadata accessor for Prompt.SpecialToken);
          v105 = v141;
          *v104 = v103;
          v104[1] = v105;
          v106 = v131;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v104, v131, type metadata accessor for Prompt.RenderedSpecialToken);
          v107 = v146;
          swift_storeEnumTagMultiPayload();
          (*v119)(v106, 0, 1, v107);
        }

        if ((*v118)(v106, 1, v107) == 1)
        {
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v140, type metadata accessor for Prompt.Delimiter);
          outlined destroy of [Regex2BNF.CharacterPredicate](v106, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
          v66 = v149;
          if (v137 == v64)
          {
            goto LABEL_73;
          }

          LODWORD(v141) = 0;
          ++v64;
        }

        else
        {
          v108 = v129;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v106, v129, type metadata accessor for Prompt.RenderedPromptFragment);
          outlined init with copy of Prompt.PromptFragment(v108, v130, type metadata accessor for Prompt.RenderedPromptFragment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 16) + 1, 1, v48);
          }

          v110 = *(v48 + 16);
          v109 = *(v48 + 24);
          if (v110 >= v109 >> 1)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v109 > 1, v110 + 1, 1, v48);
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, type metadata accessor for Prompt.RenderedPromptFragment);
          *(v48 + 16) = v110 + 1;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v130, v48 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v110, type metadata accessor for Prompt.RenderedPromptFragment);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v140, type metadata accessor for Prompt.Delimiter);
          if (v137 == v64)
          {
LABEL_73:

            return v48;
          }

          LODWORD(v141) = 0;
LABEL_72:
          v66 = v149;
          ++v64;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v283 = a1;
  v6 = 0;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  while (1)
  {
    if (v10)
    {
      v12 = __clz(__rbit64(v10));
      v285 = (v10 - 1) & v10;
      goto LABEL_13;
    }

    v13 = v6;
    do
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_210:
        v175 = a1;
        v176 = *&v3;
        v181 = v10;
        outlined copy of JSON(*&v3, v10, v5);
        outlined copy of JSON(v175, v282, 2);
        v177 = v175;
        v178 = v282;
        v179 = 2;
        goto LABEL_213;
      }

      if (v6 >= v11)
      {
        return 1;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
    }

    while (!v14);
    v12 = __clz(__rbit64(v14));
    v285 = (v14 - 1) & v14;
LABEL_13:
    v15 = v12 | (v6 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(a1 + 56) + 24 * v15;
    v20 = *v19;
    v5 = *(v19 + 8);
    v4 = *(v19 + 16);

    v286 = v20;
    outlined copy of JSON(v20, v5, v4);
    v21 = v18 == 0;
    if (!v18)
    {
      return v21;
    }

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v3 = v23;

    if ((LOBYTE(v3) & 1) == 0)
    {
      goto LABEL_251;
    }

    v24 = *(a2 + 56) + 24 * v22;
    v25 = *v24;
    v2 = *(v24 + 8);
    v26 = *(v24 + 16);
    if (v26 > 2)
    {
      break;
    }

    if (*(v24 + 16))
    {
      if (v26 == 1)
      {
        if (v4 != 1)
        {
          goto LABEL_250;
        }

        v3 = *&v286;
        outlined consume of JSON(*v24, *(v24 + 8), 1);
        outlined consume of JSON(v286, v5, 1);
        a1 = v283;
        v10 = v285;
        if (*&v25 != *&v286)
        {
          return v21;
        }

        continue;
      }

      if (v4 == 2)
      {
        v4 = v286;
        if (v25 != v286 || v2 != v5)
        {
          v33 = *v24;
          v34 = *(v24 + 8);
          v3 = COERCE_DOUBLE(_stringCompareWithSmolCheck(_:_:expecting:)());

          outlined consume of JSON(v25, v2, 2);
          v27 = v286;
          v28 = v5;
          v29 = 2;
LABEL_39:
          outlined consume of JSON(v27, v28, v29);
          a1 = v283;
          v10 = v285;
          if ((LOBYTE(v3) & 1) == 0)
          {
            return v21;
          }

          continue;
        }

        v39 = *(v24 + 8);

        outlined consume of JSON(v286, v5, 2);
        v36 = v286;
        v37 = v5;
        v38 = 2;
LABEL_51:
        outlined consume of JSON(v36, v37, v38);
        a1 = v283;
        v10 = v285;
        continue;
      }

      v172 = *(v24 + 8);
LABEL_207:
      v173 = *(v24 + 16);

      LOBYTE(v26) = v173;
      goto LABEL_250;
    }

    outlined consume of JSON(*v24, *(v24 + 8), 0);
    if (v4)
    {
      goto LABEL_251;
    }

    v2 = v286;
    outlined consume of JSON(v286, v5, 0);
    a1 = v283;
    v10 = v285;
    if ((v25 ^ v286))
    {
      return v21;
    }
  }

  if (v26 != 3)
  {
    if (v26 != 4)
    {
      *&v3 = v5 | v286;
      outlined consume of JSON(v25, v2, 5);
      if (v4 != 5 || *&v3 != 0)
      {
        goto LABEL_251;
      }

      v36 = 0;
      v37 = 0;
      v38 = 5;
      goto LABEL_51;
    }

    if (v4 == 4)
    {
      outlined copy of JSON(*v24, *(v24 + 8), 4);
      outlined copy of JSON(v25, v2, 4);
      v4 = v286;
      outlined copy of JSON(v286, v5, 4);
      v3 = COERCE_DOUBLE(_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v25, v286));
      outlined consume of JSON(v286, v5, 4);
      outlined consume of JSON(v25, v2, 4);
      outlined consume of JSON(v25, v2, 4);
      v27 = v286;
      v28 = v5;
      v29 = 4;
      goto LABEL_39;
    }

    goto LABEL_205;
  }

  if (v4 != 3)
  {
LABEL_205:
    v171 = *v24;
    goto LABEL_207;
  }

  v30 = *(v25 + 16);
  v4 = v286;
  if (v30 != *(v286 + 16))
  {
    v174 = v26;

    LOBYTE(v26) = v174;
    LOBYTE(v4) = 3;
    goto LABEL_250;
  }

  if (!v30)
  {

LABEL_49:
    outlined consume of JSON(v31, v2, 3);
    v36 = v286;
    v37 = v5;
    goto LABEL_50;
  }

  if (v25 == v286)
  {

    v31 = v286;
    goto LABEL_49;
  }

  v266 = 3;
  v280 = v25 + 32;
  outlined copy of JSON(v25, v2, 3);
  outlined copy of JSON(v25, v2, 3);
  result = outlined copy of JSON(v286, v5, 3);
  v41 = 0;
  v276 = v2;
  v277 = v25;
  v278 = v30;
  v279 = v5;
  while (2)
  {
    if (v41 >= *(v25 + 16))
    {
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      return result;
    }

    if (v41 >= *(v4 + 16))
    {
      goto LABEL_255;
    }

    v44 = v280 + 24 * v41;
    a1 = *v44;
    v282 = *(v44 + 8);
    v45 = *(v44 + 16);
    v46 = v286 + 32 + 24 * v41;
    v3 = *v46;
    v10 = *(v46 + 8);
    LODWORD(v5) = *(v46 + 16);
    if (v45 <= 2)
    {
      if (v45)
      {
        if (v45 == 1)
        {
          if (v5 == 1)
          {
            v47 = *&a1;
            v48 = *v46;
            v49 = *(v46 + 8);
            outlined consume of JSON(a1, v282, 1);
            result = outlined consume of JSON(*&v3, v49, 1);
            if (v47 != v3)
            {
              goto LABEL_249;
            }

            goto LABEL_54;
          }

          v192 = a1;
          v181 = *(v46 + 8);
          outlined copy of JSON(*v46, v181, *(v46 + 16));
          v182 = v192;
          v183 = v282;
          v184 = 1;
LABEL_216:
          outlined consume of JSON(v182, v183, v184);
          v190 = *&v3;
LABEL_217:
          outlined consume of JSON(v190, v181, v5);
          goto LABEL_249;
        }

        if (v5 != 2)
        {
          goto LABEL_210;
        }

        if (a1 == *&v3 && v282 == v10)
        {
          v3 = *&v2;
          v42 = a1;
          outlined copy of JSON(a1, v282, 2);
          outlined copy of JSON(v42, v282, 2);
          outlined consume of JSON(v42, v282, 2);
          v43 = v42;
          *&v2 = v3;
          result = outlined consume of JSON(v43, v282, 2);
          v30 = v278;
        }

        else
        {
          v62 = *v46;
          v3 = *&a1;
          v63 = *(v46 + 8);
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of JSON(v62, v63, 2);
          outlined copy of JSON(*&v3, v282, 2);
          v25 = v277;
          outlined consume of JSON(*&v3, v282, 2);
          v65 = v63;
          v2 = v276;
          result = outlined consume of JSON(v62, v65, 2);
          v30 = v278;
          if ((v64 & 1) == 0)
          {
            goto LABEL_249;
          }
        }
      }

      else
      {
        if (*(v46 + 16))
        {
          v191 = a1;
          v181 = *(v46 + 8);
          outlined copy of JSON(*v46, v181, *(v46 + 16));
          v182 = v191;
          v183 = v282;
          v184 = 0;
          goto LABEL_216;
        }

        v55 = v2;
        v56 = a1;
        v57 = *(v46 + 8);
        outlined consume of JSON(a1, v282, 0);
        result = outlined consume of JSON(*&v3, v57, 0);
        v58 = LOBYTE(v3) ^ v56;
        v2 = v55;
        v30 = v278;
        if (v58)
        {
          goto LABEL_249;
        }
      }

LABEL_54:
      ++v41;
      LOBYTE(v5) = v279;
      if (v41 != v30)
      {
        continue;
      }

      outlined consume of JSON(v25, v2, 3);
      outlined consume of JSON(v4, v279, 3);
      outlined consume of JSON(v4, v279, 3);
      v36 = v25;
      v37 = v2;
LABEL_50:
      v38 = 3;
      goto LABEL_51;
    }

    break;
  }

  v281 = a1;
  if (v45 != 3)
  {
    if (v45 != 4)
    {
      if (v5 != 5 || (v10 | *&v3) != 0)
      {
        v180 = a1;
        v181 = *(v46 + 8);
        outlined copy of JSON(*&v3, v10, v5);
        v182 = v180;
        v183 = v282;
        v184 = 5;
        goto LABEL_216;
      }

      outlined consume of JSON(a1, v282, 5);
      result = outlined consume of JSON(0, 0, 5);
      goto LABEL_54;
    }

    if (v5 == 4)
    {
      v50 = *(v46 + 8);
      outlined copy of JSON(*&v3, v10, 4);
      v51 = *&v3;
      v3 = *&v281;
      outlined copy of JSON(v281, v282, 4);
      outlined copy of JSON(v51, v50, 4);
      outlined copy of JSON(v281, v282, 4);
      v52 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v281, v51);
      outlined consume of JSON(v281, v282, 4);
      outlined consume of JSON(v51, v50, 4);
      v53 = v51;
      v30 = v278;
      v54 = v50;
      v2 = v276;
      outlined consume of JSON(v53, v54, 4);
      result = outlined consume of JSON(v281, v282, 4);
      v25 = v277;
      if ((v52 & 1) == 0)
      {
        goto LABEL_249;
      }

      goto LABEL_54;
    }

    v185 = *(v46 + 8);
    outlined copy of JSON(*&v3, v10, v5);
    outlined copy of JSON(v281, v282, 4);
    outlined consume of JSON(v281, v282, 4);
    v186 = *&v3;
    v187 = v185;
    v188 = v5;
LABEL_219:
    outlined consume of JSON(v186, v187, v188);
    goto LABEL_248;
  }

  if (v5 != 3)
  {
    v189 = a1;
    v176 = *v46;
    v181 = *(v46 + 8);
    outlined copy of JSON(*&v3, v10, v5);
    outlined copy of JSON(v189, v282, 3);
    v177 = v189;
    v178 = v282;
    v179 = 3;
LABEL_213:
    outlined consume of JSON(v177, v178, v179);
    v190 = v176;
    v25 = v277;
    goto LABEL_217;
  }

  v59 = *(a1 + 16);
  if (v59 != *(*&v3 + 16))
  {
    v193 = a1;
    v194 = *(v46 + 8);
    outlined copy of JSON(*&v3, v10, 3);
    outlined copy of JSON(v193, v282, 3);
    outlined consume of JSON(v193, v282, 3);
    v186 = *&v3;
    v187 = v194;
    v188 = 3;
    goto LABEL_219;
  }

  if (!v59)
  {
    v67 = *v46;
    v3 = *&a1;
    v68 = *(v46 + 8);
    outlined copy of JSON(*v46, v10, 3);
    outlined copy of JSON(*&v3, v282, 3);
    outlined consume of JSON(*&v3, v282, 3);
    v69 = v67;
    v30 = v278;
    v70 = v68;
    v2 = v276;
    result = outlined consume of JSON(v69, v70, 3);
    v25 = v277;
    goto LABEL_54;
  }

  if (a1 == *&v3)
  {
    v3 = *&a1;
    v60 = *(v46 + 8);
    outlined copy of JSON(a1, v10, 3);
    outlined copy of JSON(*&v3, v282, 3);
    outlined consume of JSON(*&v3, v282, 3);
    result = outlined consume of JSON(*&v3, v60, 3);
    v2 = v276;
LABEL_76:
    v25 = v277;
    v30 = v278;
    goto LABEL_54;
  }

  v271 = *&v3 + 32;
  v272 = a1 + 32;
  v71 = *(v46 + 8);
  outlined copy of JSON(*&v3, v10, 3);
  outlined copy of JSON(v281, v282, 3);
  v275 = *&v3;
  v252 = v71;
  outlined copy of JSON(*&v3, v71, 3);
  result = outlined copy of JSON(v281, v282, 3);
  v3 = *&v281;
  v72 = 0;
  v2 = v276;
  v270 = v59;
  while (2)
  {
    if (v72 >= *(*&v3 + 16))
    {
      goto LABEL_256;
    }

    if (v72 >= *(v275 + 16))
    {
      goto LABEL_257;
    }

    v77 = v272 + 24 * v72;
    v78 = *v77;
    v79 = *(v77 + 8);
    v80 = *(v77 + 16);
    v81 = v271 + 24 * v72;
    v82 = *v81;
    v83 = *(v81 + 8);
    v84 = *(v81 + 16);
    if (v80 <= 2)
    {
      if (v80)
      {
        if (v80 == 1)
        {
          if (v84 == 1)
          {
            v85 = *&v78;
            v86 = *v81;
            v87 = *v81;
            outlined consume of JSON(v78, v79, 1);
            v88 = v87;
            v59 = v270;
            result = outlined consume of JSON(v88, v83, 1);
            if (v85 != v86)
            {
              goto LABEL_247;
            }

            goto LABEL_93;
          }

          v201 = v78;
          v202 = v79;
          v197 = *v81;
          outlined copy of JSON(*v81, *(v81 + 8), *(v81 + 16));
          v198 = v201;
          v199 = v202;
          v200 = 1;
LABEL_225:
          outlined consume of JSON(v198, v199, v200);
          v205 = v197;
          v206 = v83;
LABEL_226:
          v213 = v84;
          goto LABEL_246;
        }

        if (v84 != 2)
        {
          v211 = v78;
          v212 = v79;
          v197 = *v81;
          outlined copy of JSON(*v81, *(v81 + 8), *(v81 + 16));
          outlined copy of JSON(v211, v212, 2);
          v198 = v211;
          v199 = v212;
          v200 = 2;
          goto LABEL_225;
        }

        if (v78 != v82 || v79 != v83)
        {
          v73 = v78;
          v74 = v79;
          v75 = *v81;
          v76 = *(v81 + 8);
          v273 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of JSON(v75, v83, 2);
          outlined copy of JSON(v73, v74, 2);
          outlined consume of JSON(v73, v74, 2);
          result = outlined consume of JSON(v75, v83, 2);
          v59 = v270;
          if ((v273 & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_93;
        }

        v100 = v78;
        v101 = v79;
        outlined copy of JSON(v78, v79, 2);
        outlined copy of JSON(v100, v101, 2);
        outlined consume of JSON(v100, v101, 2);
        v96 = v100;
        v97 = v101;
        v98 = 2;
LABEL_123:
        result = outlined consume of JSON(v96, v97, v98);
        v59 = v270;
        goto LABEL_93;
      }

      if (*(v81 + 16))
      {
        v209 = v78;
        v210 = v79;
        v197 = *v81;
        outlined copy of JSON(*v81, *(v81 + 8), *(v81 + 16));
        v198 = v209;
        v199 = v210;
        v200 = 0;
        goto LABEL_225;
      }

      v91 = v78;
      v92 = *v81;
      outlined consume of JSON(v78, v79, 0);
      result = outlined consume of JSON(v92, v83, 0);
      v93 = v92 ^ v91;
      v59 = v270;
      if (v93)
      {
        goto LABEL_247;
      }

LABEL_93:
      ++v72;
      v3 = *&v281;
      if (v72 == v59)
      {
        outlined consume of JSON(v281, v282, 3);
        outlined consume of JSON(v275, v252, 3);
        v2 = v276;
        outlined consume of JSON(v275, v252, 3);
        result = outlined consume of JSON(v281, v282, 3);
        v4 = v286;
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  v274 = v78;
  if (v80 != 3)
  {
    if (v80 == 4)
    {
      v89 = v79;
      if (v84 != 4)
      {
        v203 = *(v81 + 8);
        v204 = *v81;
        outlined copy of JSON(v82, v203, v84);
        outlined copy of JSON(v274, v89, 4);
        outlined consume of JSON(v274, v89, 4);
        v205 = v204;
        v206 = v203;
        goto LABEL_226;
      }

      v90 = *v81;
      outlined copy of JSON(v82, v83, 4);
      outlined copy of JSON(v274, v89, 4);
      outlined copy of JSON(v90, v83, 4);
      outlined copy of JSON(v274, v89, 4);
      v268 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v274, v90);
      outlined consume of JSON(v274, v89, 4);
      outlined consume of JSON(v90, v83, 4);
      outlined consume of JSON(v90, v83, 4);
      v59 = v270;
      result = outlined consume of JSON(v274, v89, 4);
      if ((v268 & 1) == 0)
      {
        goto LABEL_247;
      }

      goto LABEL_93;
    }

    if (v84 != 5 || (v83 | v82) != 0)
    {
      v195 = v78;
      v196 = v79;
      v197 = *v81;
      outlined copy of JSON(v82, v83, v84);
      v198 = v195;
      v199 = v196;
      v200 = 5;
      goto LABEL_225;
    }

    outlined consume of JSON(v78, v79, 5);
    v103 = 0;
    v104 = 0;
    v105 = 5;
LABEL_131:
    result = outlined consume of JSON(v103, v104, v105);
    goto LABEL_93;
  }

  if (v84 != 3)
  {
    v207 = v78;
    v208 = v79;
    v197 = *v81;
    outlined copy of JSON(v82, v83, v84);
    outlined copy of JSON(v207, v208, 3);
    v198 = v207;
    v199 = v208;
    v200 = 3;
    goto LABEL_225;
  }

  v94 = *(v78 + 16);
  if (v94 != *(v82 + 16))
  {
    v214 = v78;
    v215 = v79;
    v216 = *v81;
    outlined copy of JSON(v82, v83, 3);
    outlined copy of JSON(v214, v215, 3);
    outlined consume of JSON(v214, v215, 3);
    v205 = v216;
    v206 = v83;
    goto LABEL_245;
  }

  if (!v94)
  {
    v106 = v78;
    v107 = v79;
    v108 = *v81;
    outlined copy of JSON(v82, v83, 3);
    outlined copy of JSON(v106, v107, 3);
    v109 = v106;
    v59 = v270;
    outlined consume of JSON(v109, v107, 3);
    v103 = v108;
    v104 = v83;
    v105 = 3;
    goto LABEL_131;
  }

  v253 = v79;
  if (v78 == v82)
  {
    v95 = v78;
    outlined copy of JSON(v78, v83, 3);
    outlined copy of JSON(v95, v253, 3);
    outlined consume of JSON(v95, v253, 3);
    v96 = v95;
    v97 = v83;
LABEL_115:
    v98 = 3;
    goto LABEL_123;
  }

  v261 = v82 + 32;
  v262 = v78 + 32;
  v110 = *v81;
  outlined copy of JSON(v82, v83, 3);
  outlined copy of JSON(v274, v253, 3);
  v267 = v110;
  v247 = v83;
  outlined copy of JSON(v110, v83, 3);
  result = outlined copy of JSON(v274, v253, 3);
  v111 = v274;
  v112 = 0;
  v260 = v94;
  while (2)
  {
    if (v112 >= *(v111 + 16))
    {
      goto LABEL_258;
    }

    if (v112 >= *(v267 + 16))
    {
      goto LABEL_259;
    }

    v117 = v262 + 24 * v112;
    v119 = *v117;
    v118 = *(v117 + 8);
    v120 = *(v117 + 16);
    v121 = v261 + 24 * v112;
    v123 = *v121;
    v122 = *(v121 + 8);
    v124 = *(v121 + 16);
    v269 = v112;
    if (v120 > 2)
    {
      if (v120 != 3)
      {
        if (v120 == 4)
        {
          v125 = *v121;
          v126 = v119;
          v127 = *(v121 + 8);
          v128 = v118;
          if (v124 != 4)
          {
            v230 = *v121;
            outlined copy of JSON(*&v125, v127, v124);
            outlined copy of JSON(v126, v128, 4);
            outlined consume of JSON(v126, v128, 4);
            v231 = *&v230;
            goto LABEL_235;
          }

          v129 = *v121;
          outlined copy of JSON(*&v125, v127, 4);
          outlined copy of JSON(v126, v128, 4);
          outlined copy of JSON(*&v129, v127, 4);
          outlined copy of JSON(v126, v128, 4);
          v264 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v126, *&v129);
          outlined consume of JSON(v126, v128, 4);
          outlined consume of JSON(*&v129, v127, 4);
          outlined consume of JSON(*&v129, v127, 4);
          v130 = v126;
          v131 = v128;
          v132 = 4;
          goto LABEL_162;
        }

        if (v124 != 5 || (v122 | v123) != 0)
        {
          v232 = v119;
          v127 = *(v121 + 8);
          v233 = v118;
          outlined copy of JSON(v123, v127, v124);
          v234 = v232;
          v235 = v233;
          v236 = 5;
          goto LABEL_234;
        }

        outlined consume of JSON(v119, v118, 5);
        v114 = 0;
        v115 = 0;
        v116 = 5;
LABEL_134:
        result = outlined consume of JSON(v114, v115, v116);
        goto LABEL_135;
      }

      if (v124 != 3)
      {
        v224 = v119;
        v127 = *(v121 + 8);
        v225 = v118;
        outlined copy of JSON(v123, v127, v124);
        outlined copy of JSON(v224, v225, 3);
        v234 = v224;
        v235 = v225;
        v236 = 3;
        goto LABEL_234;
      }

      v133 = *(v119 + 16);
      if (v133 != *(v123 + 16))
      {
        v241 = v119;
        v242 = v122;
        v243 = v118;
        outlined copy of JSON(v123, v242, 3);
        outlined copy of JSON(v241, v243, 3);
        outlined consume of JSON(v241, v243, 3);
        v231 = v123;
        v239 = v242;
LABEL_242:
        v240 = 3;
        goto LABEL_243;
      }

      v255 = *(v119 + 16);
      if (!v133)
      {
        v143 = v123;
        v144 = v123;
        v145 = v119;
        v136 = v122;
        v146 = v118;
        outlined copy of JSON(v143, v136, 3);
        outlined copy of JSON(v145, v146, 3);
        outlined consume of JSON(v145, v146, 3);
        v114 = v144;
        goto LABEL_171;
      }

      v248 = v118;
      if (v119 == v123)
      {
        outlined copy of JSON(v119, v122, 3);
        v134 = v119;
        v135 = v119;
        v136 = v122;
        outlined copy of JSON(v134, v248, 3);
        outlined consume of JSON(v135, v248, 3);
        v114 = v135;
LABEL_171:
        v115 = v136;
        v116 = 3;
        goto LABEL_134;
      }

      outlined copy of JSON(v123, v122, 3);
      v256 = v119;
      outlined copy of JSON(v119, v248, 3);
      v245 = v122;
      outlined copy of JSON(v123, v122, 3);
      result = outlined copy of JSON(v119, v248, 3);
      v147 = 0;
      v148 = (v123 + 48);
      v149 = (v256 + 48);
      v254 = v123;
      while (1)
      {
        if (v147 >= *(v256 + 16))
        {
          goto LABEL_260;
        }

        if (v147 >= *(v123 + 16))
        {
          goto LABEL_261;
        }

        v156 = *(v149 - 2);
        v155 = *(v149 - 1);
        v157 = *v149;
        v158 = *(v148 - 2);
        v159 = *(v148 - 1);
        v160 = *v148;
        v263 = v148;
        v265 = v149;
        if (v157 > 2)
        {
          if (v157 == 3)
          {
            v259 = *(v149 - 1);
            if (v160 != 3)
            {
              v220 = *(v148 - 2);
              v221 = *v148;
              v223 = *(v148 - 1);
              outlined copy of JSON(v158, v159, v160);
              v217 = v156;
              v218 = v259;
              v219 = v259;
              v222 = 3;
              goto LABEL_240;
            }

            v168 = *(v148 - 2);
            v169 = v159;
            v251 = v159;
            outlined copy of JSON(v158, v159, 3);
            outlined copy of JSON(v156, v259, 3);
            outlined copy of JSON(v168, v169, 3);
            outlined copy of JSON(v156, v259, 3);
            v246 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(v156, v168);
            outlined consume of JSON(v156, v259, 3);
            outlined consume of JSON(v168, v251, 3);
            outlined consume of JSON(v168, v251, 3);
            v152 = v156;
            v153 = v259;
            v154 = 3;
            goto LABEL_174;
          }

          if (v157 == 4)
          {
            v258 = *(v149 - 1);
            if (v160 != 4)
            {
              v220 = *(v148 - 2);
              v221 = *v148;
              v223 = *(v148 - 1);
              outlined copy of JSON(v158, v159, v160);
              v217 = v156;
              v218 = v258;
              v219 = v258;
              v222 = 4;
              goto LABEL_240;
            }

            v164 = *(v148 - 2);
            v165 = *(v148 - 1);
            v250 = v159;
            outlined copy of JSON(v158, v159, 4);
            outlined copy of JSON(v156, v258, 4);
            outlined copy of JSON(v164, v165, 4);
            outlined copy of JSON(v156, v258, 4);
            v246 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v156, v164);
            outlined consume of JSON(v156, v258, 4);
            outlined consume of JSON(v164, v250, 4);
            outlined consume of JSON(v164, v250, 4);
            v152 = v156;
            v153 = v258;
            v154 = 4;
LABEL_174:
            result = outlined consume of JSON(v152, v153, v154);
            if ((v246 & 1) == 0)
            {
              goto LABEL_241;
            }

            goto LABEL_175;
          }

          if (v160 != 5 || v159 | v158)
          {
LABEL_228:
            v217 = *(v148 - 2);
            v218 = *(v149 - 1);
            v219 = v159;
            v220 = v158;
            v221 = v160;
            v222 = v160;
            v223 = v159;
LABEL_240:
            outlined copy of JSON(v217, v219, v222);
            outlined consume of JSON(v156, v218, v157);
            outlined consume of JSON(v220, v223, v221);
LABEL_241:
            outlined consume of JSON(v256, v248, 3);
            outlined consume of JSON(v254, v245, 3);
            outlined consume of JSON(v254, v245, 3);
            v231 = v256;
            v239 = v248;
            goto LABEL_242;
          }

          outlined consume of JSON(v156, v155, 5);
          result = outlined consume of JSON(0, 0, 5);
        }

        else if (*v149)
        {
          if (v157 != 1)
          {
            if (v160 != 2)
            {
              v218 = *(v149 - 1);
              v220 = v158;
              v221 = v160;
              v223 = v159;
              outlined copy of JSON(v158, v159, v160);
              v217 = v156;
              v219 = v218;
              v222 = 2;
              goto LABEL_240;
            }

            if (v156 == v158 && v155 == v159)
            {
              v170 = *(v149 - 1);
              outlined copy of JSON(v156, v155, 2);
              outlined copy of JSON(v156, v170, 2);
              outlined consume of JSON(v156, v170, 2);
              result = outlined consume of JSON(v156, v170, 2);
              goto LABEL_175;
            }

            v257 = *(v149 - 1);
            v150 = *(v148 - 2);
            v151 = *(v148 - 1);
            v249 = v159;
            v246 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined copy of JSON(v150, v151, 2);
            outlined copy of JSON(v156, v257, 2);
            outlined consume of JSON(v156, v257, 2);
            v152 = v150;
            v153 = v249;
            v154 = 2;
            goto LABEL_174;
          }

          if (v160 != 1)
          {
            goto LABEL_228;
          }

          v161 = *(v149 - 2);
          v162 = *(v148 - 2);
          v163 = *(v148 - 1);
          outlined consume of JSON(v161, v155, 1);
          result = outlined consume of JSON(v162, v163, 1);
          if (*&v161 != *&v162)
          {
            goto LABEL_241;
          }
        }

        else
        {
          if (*v148)
          {
            goto LABEL_228;
          }

          v166 = *(v148 - 2);
          v167 = *(v148 - 1);
          outlined consume of JSON(v156, v155, 0);
          result = outlined consume of JSON(v166, v167, 0);
          if ((v166 ^ v156))
          {
            goto LABEL_241;
          }
        }

LABEL_175:
        ++v147;
        v148 = v263 + 24;
        v149 = v265 + 24;
        v123 = v254;
        if (v255 == v147)
        {
          outlined consume of JSON(v256, v248, 3);
          outlined consume of JSON(v254, v245, 3);
          outlined consume of JSON(v254, v245, 3);
          v114 = v256;
          v115 = v248;
          v116 = 3;
          goto LABEL_134;
        }
      }
    }

    if (!v120)
    {
      if (*(v121 + 16))
      {
        v226 = v119;
        v127 = *(v121 + 8);
        v227 = v118;
        outlined copy of JSON(v123, v127, v124);
        v234 = v226;
        v235 = v227;
        v236 = 0;
        goto LABEL_234;
      }

      outlined consume of JSON(v119, v118, 0);
      result = outlined consume of JSON(v123, v122, 0);
      if ((v123 ^ v119))
      {
        goto LABEL_244;
      }

      goto LABEL_135;
    }

    if (v120 == 1)
    {
      if (v124 != 1)
      {
        v228 = v119;
        v127 = *(v121 + 8);
        v229 = v118;
        outlined copy of JSON(v123, v127, v124);
        v234 = v228;
        v235 = v229;
        v236 = 1;
        goto LABEL_234;
      }

      outlined consume of JSON(v119, v118, 1);
      result = outlined consume of JSON(v123, v122, 1);
      if (*&v119 != *&v123)
      {
        goto LABEL_244;
      }

LABEL_135:
      v112 = v269 + 1;
      v111 = v274;
      if (v269 + 1 == v260)
      {
        outlined consume of JSON(v274, v253, 3);
        outlined consume of JSON(v267, v247, 3);
        outlined consume of JSON(v267, v247, 3);
        v96 = v274;
        v97 = v253;
        goto LABEL_115;
      }

      continue;
    }

    break;
  }

  if (v124 == 2)
  {
    if (v119 != v123 || v118 != v122)
    {
      v138 = *v121;
      v139 = v119;
      v140 = *(v121 + 8);
      v141 = v118;
      v264 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of JSON(*&v138, v140, 2);
      outlined copy of JSON(v139, v141, 2);
      outlined consume of JSON(v139, v141, 2);
      v130 = *&v138;
      v131 = v140;
      v132 = 2;
LABEL_162:
      result = outlined consume of JSON(v130, v131, v132);
      if ((v264 & 1) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_135;
    }

    v113 = v118;
    outlined copy of JSON(v119, v118, 2);
    outlined copy of JSON(v119, v113, 2);
    outlined consume of JSON(v119, v113, 2);
    v114 = v119;
    v115 = v113;
    v116 = 2;
    goto LABEL_134;
  }

  v237 = v119;
  v127 = *(v121 + 8);
  v238 = v118;
  outlined copy of JSON(v123, v127, v124);
  outlined copy of JSON(v237, v238, 2);
  v234 = v237;
  v235 = v238;
  v236 = 2;
LABEL_234:
  outlined consume of JSON(v234, v235, v236);
  v231 = v123;
LABEL_235:
  v239 = v127;
  v240 = v124;
LABEL_243:
  outlined consume of JSON(v231, v239, v240);
LABEL_244:
  outlined consume of JSON(v274, v253, 3);
  outlined consume of JSON(v267, v247, 3);
  outlined consume of JSON(v267, v247, 3);
  v205 = v274;
  v206 = v253;
LABEL_245:
  v213 = 3;
LABEL_246:
  outlined consume of JSON(v205, v206, v213);
LABEL_247:
  outlined consume of JSON(v281, v282, 3);
  outlined consume of JSON(v275, v252, 3);
  outlined consume of JSON(v275, v252, 3);
  outlined consume of JSON(v281, v282, 3);
  v4 = v286;
LABEL_248:
  v25 = v277;
LABEL_249:
  v244 = v4;
  LOBYTE(v4) = 3;
  v5 = v279;
  outlined consume of JSON(v244, v279, 3);
  outlined consume of JSON(v25, v2, 3);
  LOBYTE(v26) = v266;
LABEL_250:
  outlined consume of JSON(v25, v2, v26);
LABEL_251:
  outlined consume of JSON(v286, v5, v4);
  return 0;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t Prompt.Attachment.description.getter()
{
  _StringGuts.grow(_:)(41);

  strcpy(v8, "<<attachment:");
  HIWORD(v8[1]) = -4864;
  v1 = Prompt.AttachmentContent.description.getter();
  MEMORY[0x1AC57C120](v1);

  MEMORY[0x1AC57C120](0x6F697469736F7020, 0xEA00000000003A6ELL);
  v2 = type metadata accessor for Prompt.Attachment(0);
  v6 = *(v0 + *(v2 + 20));
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v3);

  MEMORY[0x1AC57C120](0x7469726F69727020, 0xEA00000000003A79);
  v7 = *(v0 + *(v2 + 24));
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v4);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  return v8[0];
}

uint64_t Prompt.SpecialToken.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Prompt.SpecialToken.locale.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Prompt.SpecialToken(0) + 20);

  return outlined assign with take of Locale?(a1, v3);
}

uint64_t Prompt.SpecialToken.instance.getter()
{
  v1 = (v0 + *(type metadata accessor for Prompt.SpecialToken(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Prompt.SpecialToken.annotationOnly.setter(char a1)
{
  result = type metadata accessor for Prompt.SpecialToken(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = v8[5];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  v11 = &a4[v8[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  result = outlined assign with take of Locale?(a3, &a4[v9]);
  a4[v8[7]] = 0;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:instance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Prompt.SpecialToken(0);
  v11 = v10[5];
  v12 = type metadata accessor for Locale();
  result = (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = a1;
  *(a5 + 1) = a2;
  v14 = &a5[v10[6]];
  *v14 = a3;
  *(v14 + 1) = a4;
  a5[v10[7]] = 0;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:instance:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for Prompt.SpecialToken(0);
  v13 = v12[5];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  *(a6 + 1) = a2;
  v15 = &a6[v12[6]];
  *v15 = a3;
  *(v15 + 1) = a4;
  result = outlined assign with take of Locale?(a5, &a6[v13]);
  a6[v12[7]] = 0;
  return result;
}

uint64_t Prompt.SpecialToken.description.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Prompt.SpecialToken(0);
  v11 = (v0 + v10[6]);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v23 = 45;
    v24 = 0xE100000000000000;

    MEMORY[0x1AC57C120](v13, v12);

    v14 = v24;
    v22 = v23;
  }

  else
  {
    v22 = 0;
    v14 = 0xE000000000000000;
  }

  outlined init with copy of (String, Any)(v0 + v10[5], v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v23 = 0x656C61636F6C2820;
    v24 = 0xEA0000000000203ALL;
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v17);

    MEMORY[0x1AC57C120](41, 0xE100000000000000);
    v15 = v23;
    v16 = v24;
    (*(v2 + 8))(v5, v1);
  }

  if (*(v0 + v10[7]))
  {
    v18 = 0xD000000000000011;
  }

  else
  {
    v18 = 0;
  }

  if (*(v0 + v10[7]))
  {
    v19 = 0x80000001A8FDA2F0;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v23 = 0x3A6E656B6F743C3CLL;
  v24 = 0xE800000000000000;
  MEMORY[0x1AC57C120](*v0, v0[1]);
  MEMORY[0x1AC57C120](v22, v14);

  MEMORY[0x1AC57C120](v15, v16);

  MEMORY[0x1AC57C120](v18, v19);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  return v23;
}

uint64_t one-time initialization function for endPrompt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.endPrompt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.endPrompt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x80000001A8FDA520;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for startPrompt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.startPrompt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.startPrompt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001A8FDA500;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for endImageInt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.endImageInt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.endImageInt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000013;
  *(v1 + 1) = 0x80000001A8FDA4E0;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for startImageInt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.startImageInt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.startImageInt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x80000001A8FDA4C0;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for endImageStr()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.endImageStr);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.endImageStr);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000013;
  *(v1 + 1) = 0x80000001A8FDA4A0;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for startImageStr()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.startImageStr);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.startImageStr);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x80000001A8FDA480;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for localeInstruction()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.localeInstruction);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.localeInstruction);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001A8FDA460;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for localeInstructionInjectionLocation()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.localeInstructionInjectionLocation);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.localeInstructionInjectionLocation);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000025;
  *(v1 + 1) = 0x80000001A8FDA430;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for promptModule()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.promptModule);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.promptModule);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "prompt_module");
  *(v1 + 14) = -4864;
  v5 = (v1 + v0[6]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[7]) = 0;
  return result;
}

uint64_t one-time initialization function for cacheablePrefixTerminator()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.cacheablePrefixTerminator);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.cacheablePrefixTerminator);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000019;
  *(v1 + 1) = 0x80000001A8FDA540;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 1;
  return result;
}

uint64_t one-time initialization function for instructions()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v7, static Prompt.SpecialToken.Chat.instructions);
  v8 = __swift_project_value_buffer(v7, static Prompt.SpecialToken.Chat.instructions);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  outlined init with copy of (String, Any)(v6, v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = v7[5];
  v10(&v8[v11], 1, 1, v9);
  *v8 = 0xD000000000000010;
  *(v8 + 1) = 0x80000001A8FDA310;
  v12 = &v8[v7[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  outlined assign with take of Locale?(v3, &v8[v11]);
  v8[v7[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.instructions(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  outlined init with copy of (String, Any)(a1, &v13 - v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = v8[5];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  *a2 = 0xD000000000000010;
  *(a2 + 1) = 0x80000001A8FDA310;
  v11 = &a2[v8[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  result = outlined assign with take of Locale?(v7, &a2[v9]);
  a2[v8[7]] = 0;
  return result;
}

uint64_t one-time initialization function for response()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v7, static Prompt.SpecialToken.Chat.response);
  v8 = __swift_project_value_buffer(v7, static Prompt.SpecialToken.Chat.response);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  outlined init with copy of (String, Any)(v6, v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = v7[5];
  v10(&v8[v11], 1, 1, v9);
  *v8 = 0xD000000000000013;
  *(v8 + 1) = 0x80000001A8FDA330;
  v12 = &v8[v7[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  outlined assign with take of Locale?(v3, &v8[v11]);
  v8[v7[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.response(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  outlined init with copy of (String, Any)(a1, &v13 - v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = v8[5];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  *a2 = 0xD000000000000013;
  *(a2 + 1) = 0x80000001A8FDA330;
  v11 = &a2[v8[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  result = outlined assign with take of Locale?(v7, &a2[v9]);
  a2[v8[7]] = 0;
  return result;
}

uint64_t one-time initialization function for user(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v12, a2);
  v13 = __swift_project_value_buffer(v12, a2);
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 1, 1, v14);
  outlined init with copy of (String, Any)(v11, v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v16 = v12[5];
  v15(&v13[v16], 1, 1, v14);
  *v13 = 0x6C6F722E74616863;
  *(v13 + 1) = a3;
  v17 = &v13[v12[6]];
  *v17 = 0;
  *(v17 + 1) = 0;
  outlined assign with take of Locale?(v8, &v13[v16]);
  v13[v12[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.user(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  outlined init with copy of (String, Any)(a1, &v15 - v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = type metadata accessor for Prompt.SpecialToken(0);
  v11 = v10[5];
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(&a3[v11], 1, 1, v12);
  *a3 = 0x6C6F722E74616863;
  *(a3 + 1) = a2;
  v13 = &a3[v10[6]];
  *v13 = 0;
  *(v13 + 1) = 0;
  result = outlined assign with take of Locale?(v9, &a3[v11]);
  a3[v10[7]] = 0;
  return result;
}

uint64_t one-time initialization function for turnEnd()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v7, static Prompt.SpecialToken.Chat.turnEnd);
  v8 = __swift_project_value_buffer(v7, static Prompt.SpecialToken.Chat.turnEnd);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  outlined init with copy of (String, Any)(v6, v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = v7[5];
  v10(&v8[v11], 1, 1, v9);
  *v8 = 0xD000000000000016;
  *(v8 + 1) = 0x80000001A8FDA350;
  v12 = &v8[v7[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  outlined assign with take of Locale?(v4, &v8[v11]);
  v8[v7[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.turnEnd(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  outlined init with copy of (String, Any)(a1, &v13 - v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = v8[5];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  *a2 = 0xD000000000000016;
  *(a2 + 1) = 0x80000001A8FDA350;
  v11 = &a2[v8[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  result = outlined assign with take of Locale?(v7, &a2[v9]);
  a2[v8[7]] = 0;
  return result;
}

uint64_t one-time initialization function for turnStart()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v7, static Prompt.SpecialToken.Chat.turnStart);
  v8 = __swift_project_value_buffer(v7, static Prompt.SpecialToken.Chat.turnStart);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  outlined init with copy of (String, Any)(v6, v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = v7[5];
  v10(&v8[v11], 1, 1, v9);
  *v8 = 0xD000000000000018;
  *(v8 + 1) = 0x80000001A8FDA370;
  v12 = &v8[v7[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  outlined assign with take of Locale?(v3, &v8[v11]);
  v8[v7[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.turnStart(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  outlined init with copy of (String, Any)(a1, &v13 - v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = v8[5];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  *a2 = 0xD000000000000018;
  *(a2 + 1) = 0x80000001A8FDA370;
  v11 = &a2[v8[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  result = outlined assign with take of Locale?(v7, &a2[v9]);
  a2[v8[7]] = 0;
  return result;
}

uint64_t one-time initialization function for defaultInstructions()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v7, static Prompt.SpecialToken.Chat.defaultInstructions);
  v8 = __swift_project_value_buffer(v7, static Prompt.SpecialToken.Chat.defaultInstructions);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  outlined init with copy of (String, Any)(v6, v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = v7[5];
  v10(&v8[v11], 1, 1, v9);
  *v8 = 0xD000000000000018;
  *(v8 + 1) = 0x80000001A8FDA390;
  v12 = &v8[v7[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  outlined assign with take of Locale?(v3, &v8[v11]);
  v8[v7[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.defaultInstructions(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  outlined init with copy of (String, Any)(a1, &v13 - v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = v8[5];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  *a2 = 0xD000000000000018;
  *(a2 + 1) = 0x80000001A8FDA390;
  v11 = &a2[v8[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  result = outlined assign with take of Locale?(v7, &a2[v9]);
  a2[v8[7]] = 0;
  return result;
}

uint64_t static Prompt.SpecialToken.endPrompt.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Prompt.SpecialToken(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of Prompt.PromptFragment(v6, a3, type metadata accessor for Prompt.SpecialToken);
}

uint64_t static Prompt.SpecialToken.Chat.toolCall(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  v7 = v6[5];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  strcpy(a3, "tooluse.tool");
  *(a3 + 13) = 0;
  *(a3 + 14) = -5120;
  v9 = (a3 + v6[6]);
  *v9 = a1;
  v9[1] = a2;
  *(a3 + v6[7]) = 0;
}

void Prompt.SpecialToken.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  String.hash(into:)();
  v13 = type metadata accessor for Prompt.SpecialToken(0);
  outlined init with copy of (String, Any)(v1 + v13[5], v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v14 = (v1 + v13[6]);
  if (v14[1])
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v13[7]));
}

uint64_t Prompt.Delimiter.position.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Delimiter(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Prompt.Delimiter.priority.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Delimiter(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Prompt.Delimiter.init(token:position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(a1, a3, type metadata accessor for Prompt.SpecialToken);
  result = type metadata accessor for Prompt.Delimiter(0);
  *(a3 + *(result + 20)) = a2;
  *(a3 + *(result + 24)) = -1;
  return result;
}

uint64_t Prompt.Delimiter.description.getter()
{
  _StringGuts.grow(_:)(36);

  v1 = Prompt.SpecialToken.description.getter();
  MEMORY[0x1AC57C120](v1);

  MEMORY[0x1AC57C120](0x6F697469736F7020, 0xEA00000000003A6ELL);
  v2 = type metadata accessor for Prompt.Delimiter(0);
  v6 = *(v0 + *(v2 + 20));
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v3);

  MEMORY[0x1AC57C120](0x7469726F69727020, 0xEA00000000003A79);
  v7 = *(v0 + *(v2 + 24));
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v4);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  return 0x3A6E656B6F743C3CLL;
}

uint64_t Prompt.Delimiter.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  String.hash(into:)();
  v13 = type metadata accessor for Prompt.SpecialToken(0);
  outlined init with copy of (String, Any)(v1 + v13[5], v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v14 = (v1 + v13[6]);
  if (v14[1])
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v13[7]));
  v16 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1AC57CB80](*(v1 + *(v16 + 20)));
  return MEMORY[0x1AC57CB80](*(v1 + *(v16 + 24)));
}

uint64_t Prompt.ImageEmbeddingAttachment.Encoding.description.getter()
{
  if (*v0)
  {
    result = 0x363174616F6C66;
  }

  else
  {
    result = 0x38746E6975;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Prompt.ImageEmbeddingAttachment.Encoding()
{
  if (*v0)
  {
    result = 0x363174616F6C66;
  }

  else
  {
    result = 0x38746E6975;
  }

  *v0;
  return result;
}

uint64_t Prompt.ImageEmbeddingAttachment.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t Prompt.ImageEmbeddingAttachment.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  _StringGuts.grow(_:)(60);
  MEMORY[0x1AC57C120](0x69646F636E653C3CLL, 0xEB000000003A676ELL);
  if (v1)
  {
    v7 = 0x363174616F6C66;
  }

  else
  {
    v7 = 0x38746E6975;
  }

  if (v1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1AC57C120](v7, v8);

  result = MEMORY[0x1AC57C120](0x635F65747962202CLL, 0xED00003A746E756FLL);
  v10 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v10 != 2 || !__OFSUB__(*(v2 + 24), *(v2 + 16)))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v10)
  {
    goto LABEL_15;
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_15:
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v11);

    MEMORY[0x1AC57C120](0x5F6E656B6F74202CLL, 0xEE003A746E756F63);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v12);

    MEMORY[0x1AC57C120](0x74616E676973202CLL, 0xEC0000003A657275);
    MEMORY[0x1AC57C120](v4, v6);
    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

_BYTE *Prompt.ImageEmbeddingAttachment.init(encoding:data:tokenCount:signature:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 24) = a4;
  return result;
}

uint64_t Prompt.ImageEmbeddingAttachment.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1AC57CB80](*v0);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v3);

  return String.hash(into:)();
}

Swift::Int Prompt.ImageEmbeddingAttachment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ImageEmbeddingAttachment()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ImageEmbeddingAttachment()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1AC57CB80](*v0);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v3);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ImageEmbeddingAttachment()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Prompt.Attachment.position.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Attachment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Prompt.Attachment.priority.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Attachment(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Prompt.Delimiter.init(token:position:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(a1, a6, a4);
  result = a5(0);
  *(a6 + *(result + 20)) = a2;
  *(a6 + *(result + 24)) = a3;
  return result;
}

BOOL static Prompt.Delimiter.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((a3() & 1) != 0 && (v7 = a4(0), *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20))))
  {
    return *(a1 + *(v7 + 24)) == *(a2 + *(v7 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t Prompt.Attachment.hash(into:)(uint64_t a1)
{
  Prompt.AttachmentContent.hash(into:)(a1);
  v2 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1AC57CB80](*(v1 + *(v2 + 20)));
  return MEMORY[0x1AC57CB80](*(v1 + *(v2 + 24)));
}

Swift::Int Prompt.Attachment.hashValue.getter()
{
  Hasher.init(_seed:)();
  Prompt.AttachmentContent.hash(into:)(v3);
  v1 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1AC57CB80](*(v0 + *(v1 + 20)));
  MEMORY[0x1AC57CB80](*(v0 + *(v1 + 24)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Attachment(uint64_t a1)
{
  Hasher.init(_seed:)();
  Prompt.AttachmentContent.hash(into:)(v4);
  MEMORY[0x1AC57CB80](*(v1 + *(a1 + 20)));
  MEMORY[0x1AC57CB80](*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.Attachment(uint64_t a1, uint64_t a2)
{
  Prompt.AttachmentContent.hash(into:)(a1);
  MEMORY[0x1AC57CB80](*(v2 + *(a2 + 20)));
  return MEMORY[0x1AC57CB80](*(v2 + *(a2 + 24)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Attachment(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Prompt.AttachmentContent.hash(into:)(v5);
  MEMORY[0x1AC57CB80](*(v2 + *(a2 + 20)));
  MEMORY[0x1AC57CB80](*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

unint64_t Prompt.AttachmentContent.description.getter()
{
  *&v75 = type metadata accessor for Tool();
  v1 = *(v75 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v4 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Prompt.ResponseFormat(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Prompt.AttachmentContent(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Prompt.PromptFragment(v0, v20, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v51 = *v20;
        *v76 = 0;
        *&v76[8] = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        *v76 = 0xD000000000000010;
        *&v76[8] = 0x80000001A8FDA3F0;
        v79 = v51;
        v52 = Prompt.ImageSurfaceAttachment.description.getter();
        MEMORY[0x1AC57C120](v52);

        MEMORY[0x1AC57C120](15934, 0xE200000000000000);

        return *v76;
      }

      v27 = *v20;
      v28 = *(v20 + 5);
      *v76 = 0;
      *&v76[8] = 0xE000000000000000;
      v29 = *(v20 + 8);
      v74 = *(v20 + 24);
      v75 = v29;
      _StringGuts.grow(_:)(22);

      v79 = 0xD000000000000012;
      v80 = 0x80000001A8FDA410;
      v76[0] = v27;
      v77 = v74;
      *&v76[8] = v75;
      v78 = v28;
      v30 = Prompt.ImageEmbeddingAttachment.description.getter();
      MEMORY[0x1AC57C120](v30);

      MEMORY[0x1AC57C120](15934, 0xE200000000000000);
      outlined consume of Data._Representation(v75, *(&v75 + 1));
    }

    else
    {
      v46 = *v20;
      v47 = *(v20 + 1);
      v48 = *(v20 + 2);
      v79 = 0x3A6567616D693C3CLL;
      v80 = 0xE800000000000000;
      v76[0] = v46;
      *&v76[8] = v47;
      *&v76[16] = v48;
      v49 = Prompt.ImageAttachment.description.getter();
      MEMORY[0x1AC57C120](v49);

      MEMORY[0x1AC57C120](15934, 0xE200000000000000);
      outlined consume of Data._Representation(v47, v48);
    }

    return v79;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v31 = *v20;
      *v76 = 0;
      *&v76[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      *v76 = 0x6D65747379733C3CLL;
      *&v76[8] = 0xEF3A736C6F6F745FLL;
      v32 = *(v31 + 16);
      if (v32)
      {
        v79 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
        v33 = v79;
        v35 = *(v1 + 16);
        v34 = v1 + 16;
        v36 = *(v34 + 64);
        v71[1] = v31;
        v37 = v31 + ((v36 + 32) & ~v36);
        v72 = *(v34 + 56);
        v73 = v35;
        *&v74 = v34;
        v38 = (v34 - 8);
        do
        {
          v39 = v75;
          v73(v4, v37, v75);
          v40 = Tool.name.getter();
          v42 = v41;
          (*v38)(v4, v39);
          v79 = v33;
          v44 = *(v33 + 16);
          v43 = *(v33 + 24);
          if (v44 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
            v33 = v79;
          }

          *(v33 + 16) = v44 + 1;
          v45 = v33 + 16 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v42;
          v37 += v72;
          --v32;
        }

        while (v32);
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      v67 = MEMORY[0x1AC57C2C0](v33, MEMORY[0x1E69E6158]);
      v69 = v68;
    }

    else
    {
      v57 = *v20;
      *v76 = 0;
      *&v76[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v76, "<<tool_calls:");
      *&v76[14] = -4864;
      v58 = *(v57 + 16);
      if (v58)
      {
        v79 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
        v59 = v79;
        v60 = (v57 + 40);
        do
        {
          v62 = *(v60 - 1);
          v61 = *v60;
          v79 = v59;
          v63 = *(v59 + 16);
          v64 = *(v59 + 24);

          if (v63 >= v64 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v63 + 1, 1);
            v59 = v79;
          }

          *(v59 + 16) = v63 + 1;
          v65 = v59 + 16 * v63;
          *(v65 + 32) = v62;
          *(v65 + 40) = v61;
          v60 += 8;
          --v58;
        }

        while (v58);
      }

      else
      {

        v59 = MEMORY[0x1E69E7CC0];
      }

      v67 = MEMORY[0x1AC57C2C0](v59, MEMORY[0x1E69E6158]);
      v69 = v70;
    }

    MEMORY[0x1AC57C120](v67, v69);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v22 = *v20;
    v23 = *(v20 + 1);
    *v76 = 0;
    *&v76[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    *v76 = 0xD000000000000015;
    *&v76[8] = 0x80000001A8FDA3D0;
    v79 = v22;
    v80 = v23;
    lazy protocol witness table accessor for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;

    MEMORY[0x1AC57C120](v24, v26);
LABEL_33:

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    return *v76;
  }

  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v20, v16, type metadata accessor for Prompt.ResponseFormat);
  *v76 = 0;
  *&v76[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *v76 = 0xD000000000000012;
  *&v76[8] = 0x80000001A8FDA3B0;
  outlined init with copy of Prompt.PromptFragment(v16, v12, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = *v12;
    v53 = v12[1];
    v55 = v12[3];
    v56 = v12[5];
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v12, v8, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    v54 = *v8;
    v53 = v8[1];

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v8, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  MEMORY[0x1AC57C120](v54, v53);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  v66 = *v76;
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v16, type metadata accessor for Prompt.ResponseFormat);
  return v66;
}

uint64_t static Prompt.ImageAttachment.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t static Prompt.ImageSurfaceAttachment.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t static Prompt.PreprocessedImageAttachment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
    }
  }

  __break(1u);
  return result;
}

void Prompt.AttachmentContent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Tool();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt.ResponseFormat(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Prompt.AttachmentContent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Prompt.PromptFragment(v1, v15, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v35 = *v15;
      v36 = v15[1];
      v37 = v15[2];
      MEMORY[0x1AC57CB80](0);
      MEMORY[0x1AC57CB80](v35);
      Data.hash(into:)();
      outlined consume of Data._Representation(v36, v37);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v38 = *v15;
      MEMORY[0x1AC57CB80](2);
      NSObject.hash(into:)();

      return;
    }

    v21 = *v15;
    v22 = v15[1];
    v23 = v15[2];
    v24 = v15[3];
    v25 = v15[4];
    v26 = v15[5];
    MEMORY[0x1AC57CB80](1);
    MEMORY[0x1AC57CB80](v21);
    Data.hash(into:)();
    MEMORY[0x1AC57CB80](v24);
    String.hash(into:)();
    outlined consume of Data._Representation(v22, v23);
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v27 = *v15;
      MEMORY[0x1AC57CB80](5);
      MEMORY[0x1AC57CB80](v27[2]);
      v28 = v27[2];
      if (v28)
      {
        v31 = *(v4 + 16);
        v29 = v4 + 16;
        v30 = v31;
        v32 = (*(v29 + 64) + 32) & ~*(v29 + 64);
        v40[1] = v27;
        v33 = v27 + v32;
        v34 = *(v29 + 56);
        do
        {
          v30(v7, v33, v3);
          lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0]);
          dispatch thunk of Hashable.hash(into:)();
          (*(v29 - 8))(v7, v3);
          v33 += v34;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      v39 = *v15;
      MEMORY[0x1AC57CB80](6);
      specialized Array<A>.hash(into:)(a1, v39);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v15, v11, type metadata accessor for Prompt.ResponseFormat);
      MEMORY[0x1AC57CB80](4);
      Prompt.ResponseFormat.Kind.hash(into:)();
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v11, type metadata accessor for Prompt.ResponseFormat);
      return;
    }

    v17 = *v15;
    v18 = v15[1];
    MEMORY[0x1AC57CB80](3);
    specialized Array<A>.hash(into:)(a1, v17);
    MEMORY[0x1AC57CB80](*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = 32;
      do
      {
        MEMORY[0x1AC57CB80](*(v18 + v20));
        v20 += 8;
        --v19;
      }

      while (v19);
    }
  }
}

uint64_t Prompt.ImageAttachment.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t Prompt.ImageAttachment.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *Prompt.ImageAttachment.init(format:data:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t Prompt.ImageAttachment.Format.description.getter()
{
  if (*v0)
  {
    return 6778986;
  }

  else
  {
    return 6778480;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Prompt.ImageAttachment.Format()
{
  if (*v0)
  {
    return 6778986;
  }

  else
  {
    return 6778480;
  }
}

uint64_t Prompt.ImageAttachment.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0)
  {
    v3 = 6778986;
  }

  else
  {
    v3 = 6778480;
  }

  MEMORY[0x1AC57C120](v3, 0xE300000000000000);

  result = MEMORY[0x1AC57C120](58, 0xE100000000000000);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_12:
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v6);

    MEMORY[0x1AC57C120](0x7365747962, 0xE500000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t Prompt.ImageAttachment.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x1AC57CB80](*v0);

  return Data.hash(into:)();
}

Swift::Int Prompt.ImageAttachment.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ImageAttachment()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ImageAttachment()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x1AC57CB80](*v0);

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ImageAttachment()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.ImageAttachment(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t Prompt.PreprocessedImageAttachment.data.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Prompt.PreprocessedImageAttachment.shape.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Prompt.PreprocessedImageAttachment.init(data:shape:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Prompt.PreprocessedImageAttachment.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  specialized Array<A>.hash(into:)(a1, *v1);
  result = MEMORY[0x1AC57CB80](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x1AC57CB80](v6);
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Int Prompt.PreprocessedImageAttachment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v7, v1);
  MEMORY[0x1AC57CB80](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1AC57CB80](v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.PreprocessedImageAttachment()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v7, v1);
  MEMORY[0x1AC57CB80](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1AC57CB80](v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.PreprocessedImageAttachment(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs7Float16V_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
}

uint64_t Prompt.ImageSurfaceAttachment.description.getter()
{
  v1 = *v0;
  [*v0 width];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](120, 0xE100000000000000);
  [v1 height];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v2);

  MEMORY[0x1AC57C120](44, 0xE100000000000000);
  [v1 allocationSize];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v3);

  MEMORY[0x1AC57C120](0x7365747962, 0xE500000000000000);
  return v5;
}

Swift::Int Prompt.ImageSurfaceAttachment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ImageSurfaceAttachment()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ImageSurfaceAttachment()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.ImageSurfaceAttachment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t static Prompt.ResponseFormat.schema(name:description:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  v13 = type metadata accessor for Schema();
  (*(*(v13 - 8) + 16))(&a6[v12], a5, v13);
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  type metadata accessor for Prompt.ResponseFormat.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t Prompt.ResponseFormat.SchemaDetails.init(name:description:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  v9 = type metadata accessor for Schema();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t static Prompt.ResponseFormat.grammar(name:description:grammar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  type metadata accessor for Prompt.ResponseFormat.Kind(0);
  swift_storeEnumTagMultiPayload();
}

void __swiftcall Prompt.ResponseFormat.GrammarDetails.init(name:description:grammar:)(TokenGeneration::Prompt::ResponseFormat::GrammarDetails *__return_ptr retstr, Swift::String name, Swift::String_optional description, Swift::String grammar)
{
  retstr->name = name;
  retstr->description = description;
  retstr->grammar = grammar;
}

uint64_t Prompt.ResponseFormat.Kind.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Prompt.PromptFragment(v1, v9, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v15 = v9[4];
    v14 = v9[5];
    MEMORY[0x1AC57CB80](1);
    String.hash(into:)();
    if (v12)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    String.hash(into:)();
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v9, v5, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    MEMORY[0x1AC57CB80](0);
    v16 = *v5;
    v17 = v5[1];
    String.hash(into:)();
    if (v5[3])
    {
      v18 = v5[2];
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v20 = *(v2 + 24);
    type metadata accessor for Schema();
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
    dispatch thunk of Hashable.hash(into:)();
    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }
}

uint64_t Prompt.ResponseFormat.SchemaDetails.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Prompt.ResponseFormat.SchemaDetails.schema.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  v4 = type metadata accessor for Schema();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Prompt.ResponseFormat.SchemaDetails.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  if (v0[3])
  {
    v3 = v0[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Prompt.ResponseFormat.SchemaDetails.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  if (v0[3])
  {
    v3 = v0[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ResponseFormat.SchemaDetails(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  if (v1[3])
  {
    v5 = v1[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(a1 + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ResponseFormat.SchemaDetails(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  if (v2[3])
  {
    v6 = v2[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = *(a2 + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ResponseFormat.SchemaDetails(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  if (v2[3])
  {
    v6 = v2[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = *(a2 + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Prompt.ResponseFormat.GrammarDetails.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.grammar.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.grammar.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int Prompt.ResponseFormat.GrammarDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ResponseFormat.GrammarDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ResponseFormat.GrammarDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ResponseFormat.GrammarDetails()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int Prompt.SpecialToken.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.SpecialToken(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.SpecialToken(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t Prompt.ToolDefinitions.tools.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Prompt.ToolDefinitions.hash(into:)()
{
  v1 = type metadata accessor for Tool();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  result = MEMORY[0x1AC57CB80](*(*v0 + 16), v4);
  v9 = *(v7 + 16);
  if (v9)
  {
    v12 = *(v2 + 16);
    v10 = v2 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v1);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0]);
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v10 - 8))(v6, v1);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

Swift::Int Prompt.ToolDefinitions.hashValue.getter()
{
  v1 = type metadata accessor for Tool();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v1);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v8 - 8))(v5, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ToolDefinitions()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  Prompt.ToolDefinitions.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolDefinitions()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  Prompt.ToolDefinitions.hash(into:)();
  return Hasher._finalize()();
}

TokenGeneration::Prompt::StringInterpolation __swiftcall Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v4 = v2;
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](literalCapacity);
  v5 = interpolationCount & ~(interpolationCount >> 63);
  v6 = MEMORY[0x1E69E7CC0];
  v4[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, v6);
  v4[3] = v7;
  result.attachments._rawValue = v10;
  result.delimiters._rawValue = v9;
  result.result._object = v8;
  result.result._countAndFlagsBits = v7;
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(token:)(uint64_t a1)
{
  v3 = type metadata accessor for Prompt.Delimiter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  outlined init with copy of Prompt.PromptFragment(a1, &v22 - v9, type metadata accessor for Prompt.SpecialToken);
  v11 = *v1;
  v12 = v1[1];
  v13 = String.count.getter();
  v14 = v1[2];
  v15 = v14[2];
  v16 = *(v1[3] + 16);
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *&v10[*(v3 + 20)] = v13;
    *&v10[*(v3 + 24)] = v18;
    outlined init with copy of Prompt.PromptFragment(v10, v7, type metadata accessor for Prompt.Delimiter);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 + 1, 1, v14);
LABEL_3:
  v20 = v14[2];
  v19 = v14[3];
  if (v20 >= v19 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v14);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Delimiter);
  v14[2] = v20 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v7, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, type metadata accessor for Prompt.Delimiter);
  v1[2] = v14;
  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(stringInterpolation:)(TokenGeneration::Prompt stringInterpolation)
{
  v2 = *(stringInterpolation.string._countAndFlagsBits + 24);
  *v1 = *stringInterpolation.string._countAndFlagsBits;
  *(v1 + 8) = *(stringInterpolation.string._countAndFlagsBits + 8);
  *(v1 + 24) = v2;
  return stringInterpolation;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(image:)(uint64_t a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = *a1;
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  *v10 = v11;
  *(v10 + 1) = v13;
  *(v10 + 2) = v12;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();
  v14 = *v1;
  v15 = v1[1];
  outlined copy of Data._Representation(v13, v12);
  v16 = String.count.getter();
  v17 = v1[3];
  v18 = *(v1[2] + 16);
  v19 = v17[2];
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *&v10[*(v3 + 20)] = v16;
    *&v10[*(v3 + 24)] = v21;
    outlined init with copy of Prompt.PromptFragment(v10, v7, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 + 1, 1, v17);
LABEL_3:
  v23 = v17[2];
  v22 = v17[3];
  if (v23 >= v22 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v17);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Attachment);
  v17[2] = v23 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, type metadata accessor for Prompt.Attachment);
  v1[3] = v17;
  return result;
}

Swift::Void __swiftcall Prompt.StringInterpolation.appendInterpolation(imageSurface:)(TokenGeneration::Prompt::ImageSurfaceAttachment imageSurface)
{
  isa = imageSurface.surface.super.isa;
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *isa;
  *(&v23 - v9) = *isa;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();
  v12 = *v1;
  v13 = v1[1];
  v14 = v11;
  v15 = String.count.getter();
  v16 = v1[3];
  v17 = *(v1[2] + 16);
  v18 = v16[2];
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *&v10[*(v3 + 20)] = v15;
    *&v10[*(v3 + 24)] = v20;
    outlined init with copy of Prompt.PromptFragment(v10, v7, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 1, 1, v16);
LABEL_3:
  v22 = v16[2];
  v21 = v16[3];
  if (v22 >= v21 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v16);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Attachment);
  v16[2] = v22 + 1;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v7, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, type metadata accessor for Prompt.Attachment);
  v1[3] = v16;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(imageEmbedding:)(char *a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = *(a1 + 1);
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);
  *v10 = *a1;
  *(v10 + 1) = v11;
  v25 = *(a1 + 1);
  *(v10 + 1) = v25;
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();
  v14 = *v1;
  v15 = v1[1];
  outlined copy of Data._Representation(v11, v25);

  v16 = String.count.getter();
  v17 = v1[3];
  v18 = *(v1[2] + 16);
  v19 = v17[2];
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *&v10[*(v3 + 20)] = v16;
    *&v10[*(v3 + 24)] = v21;
    outlined init with copy of Prompt.PromptFragment(v10, v7, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 + 1, 1, v17);
LABEL_3:
  v23 = v17[2];
  v22 = v17[3];
  if (v23 >= v22 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v17);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Attachment);
  v17[2] = v23 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, type metadata accessor for Prompt.Attachment);
  v1[3] = v17;
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(preprocessedImage:)(uint64_t *a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - v9);
  v12 = *a1;
  v11 = a1[1];
  *v10 = v12;
  v10[1] = v11;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();
  v13 = *v1;
  v14 = v1[1];

  v15 = String.count.getter();
  v16 = v1[3];
  v17 = *(v1[2] + 16);
  v18 = v16[2];
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v10 + *(v3 + 20)) = v15;
    *(v10 + *(v3 + 24)) = v20;
    outlined init with copy of Prompt.PromptFragment(v10, v7, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 1, 1, v16);
LABEL_3:
  v22 = v16[2];
  v21 = v16[3];
  if (v22 >= v21 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v16);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Attachment);
  v16[2] = v22 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v7, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, type metadata accessor for Prompt.Attachment);
  v1[3] = v16;
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(attachment:)(uint64_t a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  outlined init with copy of Prompt.PromptFragment(a1, &v22 - v9, type metadata accessor for Prompt.AttachmentContent);
  v11 = *v1;
  v12 = v1[1];
  v13 = String.count.getter();
  v14 = v1[3];
  v15 = *(v1[2] + 16);
  v16 = v14[2];
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *&v10[*(v3 + 20)] = v13;
    *&v10[*(v3 + 24)] = v18;
    outlined init with copy of Prompt.PromptFragment(v10, v7, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 + 1, 1, v14);
LABEL_3:
  v20 = v14[2];
  v19 = v14[3];
  if (v20 >= v19 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v14);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Attachment);
  v14[2] = v20 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v7, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, type metadata accessor for Prompt.Attachment);
  v1[3] = v14;
  return result;
}

uint64_t static Prompt.+= infix(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = MEMORY[0x1E69E7CC0];

  specialized static Prompt.+= infix(_:_:)(a1, v5);
}

uint64_t static Prompt.+ infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = *(a2 + 24);
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  v10 = v7;
  v11 = *(a2 + 8);
  v12 = v8;

  return specialized static Prompt.+= infix(_:_:)(a3, &v10);
}

uint64_t static Prompt.+ infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  *a4 = *a1;
  a4[1] = v5;
  a4[2] = v6;
  a4[3] = v7;
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = MEMORY[0x1E69E7CC0];
  v9[3] = MEMORY[0x1E69E7CC0];

  specialized static Prompt.+= infix(_:_:)(a4, v9);
  swift_bridgeObjectRelease_n();
}

uint64_t Prompt.string.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Prompt.string.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.delimiters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Prompt.attachments.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Prompt.description.getter()
{
  v49 = type metadata accessor for Prompt.Attachment(0);
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Prompt.Delimiter(0);
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v51 = *v0;
  v52 = v8;
  v11 = *(v9 + 16);
  if (v11)
  {
    v44 = v10;
    v45 = v1;
    v50[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v50[0];
    v13 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v46 = *(v4 + 72);
    do
    {
      v14 = v12;
      outlined init with copy of Prompt.PromptFragment(v13, v7, type metadata accessor for Prompt.Delimiter);
      v15 = Prompt.SpecialToken.description.getter();
      v17 = v16;
      v18 = *&v7[*(v47 + 20)];
      v19 = *&v7[*(v47 + 24)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.Delimiter);
      v12 = v14;
      v50[0] = v14;
      v20 = v14[2];
      v21 = v12[3];
      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v12 = v50[0];
      }

      v12[2] = v20 + 1;
      v22 = &v12[4 * v20];
      v22[4] = v15;
      v22[5] = v17;
      v22[6] = v18;
      v22[7] = v19;
      v13 += v46;
      --v11;
    }

    while (v11);
    v10 = v44;
    v1 = v45;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v10 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v46 = v12;
    v50[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v24 = v50[0];
    v25 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v47 = *(v1 + 72);
    do
    {
      v26 = v48;
      outlined init with copy of Prompt.PromptFragment(v25, v48, type metadata accessor for Prompt.Attachment);
      v27 = *(v26 + *(v49 + 20));
      v28 = *(v26 + *(v49 + 24));
      v29 = Prompt.AttachmentContent.description.getter();
      v31 = v30;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v26, type metadata accessor for Prompt.Attachment);
      v50[0] = v24;
      v33 = v24[2];
      v32 = v24[3];
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v24 = v50[0];
      }

      v24[2] = v33 + 1;
      v34 = &v24[4 * v33];
      v34[4] = v29;
      v34[5] = v31;
      v34[6] = v27;
      v34[7] = v28;
      v25 += v47;
      --v23;
    }

    while (v23);
    v12 = v46;
  }

  v50[0] = v12;
  specialized Array.append<A>(contentsOf:)(v24);

  specialized MutableCollection<>.sort(by:)(v50);

  v35 = v50[0];
  v36 = v50[0][2];
  if (v36)
  {
    v37 = &v50[0][4 * v36 + 2];
    v38 = MEMORY[0x1E69E6158];
    while (v36 <= v35[2])
    {
      --v36;
      v40 = *(v37 - 2);
      v39 = *(v37 - 1);
      v41 = *v37;
      v37 -= 4;

      String.index(_:offsetBy:)();
      v50[0] = v40;
      v50[1] = v39;
      lazy protocol witness table accessor for type String and conformance String();
      String.insert<A>(contentsOf:at:)();

      if (!v36)
      {
        goto LABEL_18;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_18:

    return v51;
  }

  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(string:delimiters:attachments:)(Swift::String string, Swift::OpaquePointer delimiters, Swift::OpaquePointer attachments)
{
  *v3 = string;
  *(v3 + 16) = delimiters;
  *(v3 + 24) = attachments;
  result.string = string;
  result.attachments = attachments;
  result.delimiters = delimiters;
  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(string:delimiters:)(Swift::String string, Swift::OpaquePointer delimiters)
{
  *v2 = string;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = delimiters;
  *(v2 + 24) = v3;
  result.string = string;
  result.delimiters = delimiters;
  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(stringLiteral:)(Swift::String stringLiteral)
{
  *v1 = stringLiteral;
  v2 = MEMORY[0x1E69E7CC0];
  v1[1]._countAndFlagsBits = MEMORY[0x1E69E7CC0];
  v1[1]._object = v2;
  result.string = stringLiteral;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Prompt.render(tokenTable:)(Swift::OpaquePointer tokenTable)
{
  v29 = type metadata accessor for Prompt.Delimiter(0);
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[3];
  v23 = *v1;
  v24 = *(v1 + 1);
  v25 = v7;
  Prompt.finalizedPrompt()(&v26);
  v9 = v26;
  v8 = v27;
  v10 = v28;

  v13 = *(v10 + 16);
  if (v13)
  {
    while (v13 <= *(v10 + 16))
    {
      --v13;
      outlined init with copy of Prompt.PromptFragment(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6, type metadata accessor for Prompt.Delimiter);
      if (!*(tokenTable._rawValue + 2) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v15 & 1) == 0))
      {

        v8 = type metadata accessor for GenerationError();
        lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
        swift_allocError();
        v9 = v20;
        outlined init with copy of Prompt.PromptFragment(v6, v20, type metadata accessor for Prompt.SpecialToken);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.Delimiter);
        goto LABEL_9;
      }

      v16 = (*(tokenTable._rawValue + 7) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = *&v6[*(v29 + 20)];

      String.index(_:offsetBy:)();
      v23 = v17;
      *&v24 = v18;
      lazy protocol witness table accessor for type String and conformance String();
      String.insert<A>(contentsOf:at:)();
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.Delimiter);

      if (!v13)
      {
        v9 = v26;
        v8 = v27;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

LABEL_9:
    v11 = v9;
    v12 = v8;
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t Prompt.finalizedPrompt()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Delimiter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v24 = *v1;
  v25 = v9;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (v11 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      outlined init with copy of Prompt.PromptFragment(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12++, v7, type metadata accessor for Prompt.Delimiter);
      v14 = v7[*(type metadata accessor for Prompt.SpecialToken(0) + 28)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.Delimiter);
      if ((v14 & 1) == 0)
      {
        v16 = v24;
        v15 = v25;
        goto LABEL_9;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR);
  v17 = *(v4 + 72);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A8FC9400;
  v4 = v13 + v18;
  if (one-time initialization token for endPrompt != -1)
  {
LABEL_11:
    swift_once();
  }

  v19 = type metadata accessor for Prompt.SpecialToken(0);
  v20 = __swift_project_value_buffer(v19, static Prompt.SpecialToken.endPrompt);
  outlined init with copy of Prompt.PromptFragment(v20, v4, type metadata accessor for Prompt.SpecialToken);
  v16 = v24;
  *(v4 + *(v3 + 20)) = String.count.getter();
  *(v4 + *(v3 + 24)) = 0;
  v15 = v25;
LABEL_9:
  v26 = v10;

  specialized Array.append<A>(contentsOf:)(v13);
  v21 = v26;
  *a1 = v16;
  a1[1] = v8;
  a1[2] = v21;
  a1[3] = v15;
}

size_t Prompt.renderPromptFragments(tokenTable:)(uint64_t a1)
{
  v36 = a1;
  v2 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v34 - v15;
  v17 = *(v1 + 24);
  v37 = *v1;
  v38 = *(v1 + 8);
  v39 = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v19 = type metadata accessor for Prompt.SpecialToken(0);
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = v40;
  v21 = Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(v36, v18, v16);
  outlined destroy of [Regex2BNF.CharacterPredicate](v16, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);

  if (!v20)
  {
    v22 = v35;
    v23 = *(v21 + 16);
    if (v23)
    {
      v34[1] = 0;
      v37 = MEMORY[0x1E69E7CC0];
      v24 = v21;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v21 = v37;
      v25 = *(v22 + 80);
      v34[0] = v24;
      v26 = v24 + ((v25 + 32) & ~v25);
      v35 = *(v22 + 72);
      v36 = v6;
      v40 = v5;
      do
      {
        outlined init with copy of Prompt.PromptFragment(v26, v12, type metadata accessor for Prompt.RenderedPromptFragment);
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v12, v9, type metadata accessor for Prompt.RenderedPromptFragment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v9, v5, type metadata accessor for Prompt.RenderedSpecialToken);
            v28 = *v5;
            v29 = v5[1];

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.RenderedSpecialToken);
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.RenderedPromptFragment);
            v28 = 0;
            v29 = 0xE000000000000000;
          }
        }

        else
        {
          v28 = *v9;
          v29 = v9[1];
        }

        v37 = v21;
        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v21 = v37;
        }

        *(v21 + 16) = v31 + 1;
        v32 = v21 + 16 * v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v29;
        v26 += v35;
        --v23;
        v5 = v40;
      }

      while (v23);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v21;
}

size_t Prompt.renderCacheablePromptPrefix(tokenTable:localizationOverrideMap:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = (v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v12 = (v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v36 - v18;
  v20 = *(v2 + 24);
  v39 = *v2;
  v40 = *(v2 + 8);
  v41 = v20;
  if (one-time initialization token for cacheablePrefixTerminator != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Prompt.SpecialToken(0);
  v22 = __swift_project_value_buffer(v21, static Prompt.SpecialToken.cacheablePrefixTerminator);
  outlined init with copy of Prompt.PromptFragment(v22, v19, type metadata accessor for Prompt.SpecialToken);
  (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  v23 = Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(a1, a2, v19);
  outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  if (!v3)
  {
    v36[1] = 0;
    v24 = *(v23 + 16);
    if (v24)
    {
      v39 = MEMORY[0x1E69E7CC0];
      v25 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v23 = v39;
      v26 = *(v9 + 80);
      v36[0] = v25;
      v27 = v25 + ((v26 + 32) & ~v26);
      v38 = *(v9 + 72);
      do
      {
        outlined init with copy of Prompt.PromptFragment(v27, v15, type metadata accessor for Prompt.RenderedPromptFragment);
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v15, v12, type metadata accessor for Prompt.RenderedPromptFragment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v29 = v37;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v12, v37, type metadata accessor for Prompt.RenderedSpecialToken);
            v30 = *v29;
            v31 = v29[1];

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v29, type metadata accessor for Prompt.RenderedSpecialToken);
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v12, type metadata accessor for Prompt.RenderedPromptFragment);
            v30 = 0;
            v31 = 0xE000000000000000;
          }
        }

        else
        {
          v30 = *v12;
          v31 = v12[1];
        }

        v39 = v23;
        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v33 + 1;
        v34 = v23 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v27 += v38;
        --v24;
      }

      while (v24);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v23;
}

uint64_t Prompt.promptFragments()()
{
  v2 = v1;
  v3 = type metadata accessor for Prompt.PromptFragment(0);
  v4 = *(v3 - 8);
  v152 = v3;
  v153 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v134 = (&v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v147 = &v129 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v129 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v145 = (&v129 - v12);
  v138 = type metadata accessor for Prompt.Delimiter(0);
  v13 = *(v138 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v144 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v140 = &v129 - v17;
  v137 = type metadata accessor for Prompt.Attachment(0);
  v136 = *(v137 - 8);
  v18 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v143 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v129 - v21;
  v163 = type metadata accessor for Prompt.PromptMarker(0);
  v22 = *(v163 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v133 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v129 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v129 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v142 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v149 = &v129 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v155 = &v129 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v129 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v129 - v39;
  v41 = *(v0 + 24);
  v156 = *v0;
  v157 = *(v0 + 8);
  v158 = v41;
  Prompt.finalizedPrompt()(&v159);
  v42 = v161;
  v150 = v162;
  v156 = MEMORY[0x1E69E7CC0];
  v43 = HIBYTE(v160) & 0xF;
  if ((v160 & 0x2000000000000000) == 0)
  {
    v43 = v159;
  }

  v148 = v43;
  v154 = v159;
  v44 = 7;
  if (((v160 >> 60) & ((v159 & 0x800000000000000) == 0)) != 0)
  {
    v44 = 11;
  }

  v141 = v44;
  v45 = *(v161 + 16);
  v151 = v160;
  if (v45)
  {
    v132 = v2;
    v46 = v161 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v47 = *(v13 + 72);

    v131 = v42;

    v48 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of Prompt.PromptFragment(v46, v40, type metadata accessor for Prompt.Delimiter);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
      }

      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v48);
      }

      v48[2] = v50 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v40, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v50, type metadata accessor for Prompt.PromptMarker);
      v46 += v47;
      --v45;
    }

    while (v45);

    v2 = v132;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  v51 = *(v150 + 16);
  if (v51)
  {
    v52 = v150 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v53 = *(v136 + 72);
    do
    {
      outlined init with copy of Prompt.PromptFragment(v52, v37, type metadata accessor for Prompt.Attachment);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
      }

      v55 = v48[2];
      v54 = v48[3];
      if (v55 >= v54 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v48);
      }

      v48[2] = v55 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v37, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v55, type metadata accessor for Prompt.PromptMarker);
      v52 += v53;
      --v51;
    }

    while (v51);
  }

  v150 = v141 | (v148 << 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_70:
    v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
  }

  v56 = v48[2];
  v148 = v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v159 = v148;
  v160 = v56;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v159);
  v136 = v2;
  v141 = v48[2];
  if (v141)
  {
    v57 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v59 = v150;
    while (1)
    {
      if (v57 >= v48[2])
      {
        __break(1u);
        goto LABEL_70;
      }

      v61 = v155;
      outlined init with copy of Prompt.PromptFragment(v148 + *(v22 + 72) * v57, v155, type metadata accessor for Prompt.PromptMarker);
      v62 = v61;
      v63 = v149;
      outlined init with copy of Prompt.PromptFragment(v62, v149, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v64 = v63;
        v65 = v140;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v64, v140, type metadata accessor for Prompt.Delimiter);
        v66 = *(v65 + *(v138 + 20));
        v67 = type metadata accessor for Prompt.Delimiter;
      }

      else
      {
        v68 = v63;
        v65 = v139;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v68, v139, type metadata accessor for Prompt.Attachment);
        v69 = *(v65 + *(v137 + 20));
        v67 = type metadata accessor for Prompt.Attachment;
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v65, v67);
      v70 = String.index(_:offsetBy:limitedBy:)();
      if (v71)
      {
        break;
      }

      v2 = v70;
      if (v70 >> 14 >= v59 >> 14)
      {
        v79 = v142;
      }

      else
      {
        v72 = String.subscript.getter();
        v73 = MEMORY[0x1AC57C040](v72);
        v75 = v74;

        v76 = v145;
        *v145 = v73;
        v76[1] = v75;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v78 = v58[2];
        v77 = v58[3];
        v79 = v142;
        if (v78 >= v77 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v58);
        }

        v58[2] = v78 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v145, v58 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v78, type metadata accessor for Prompt.PromptFragment);
      }

      outlined init with copy of Prompt.PromptFragment(v155, v79, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v80 = v144;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v79, v144, type metadata accessor for Prompt.Delimiter);
        outlined init with copy of Prompt.PromptFragment(v80, v146, type metadata accessor for Prompt.Delimiter);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v82 = v58[2];
        v81 = v58[3];
        v83 = v82 + 1;
        if (v82 >= v81 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v81 > 1, v82 + 1, 1, v58);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v144, type metadata accessor for Prompt.Delimiter);
        v60 = v146;
      }

      else
      {
        v84 = v143;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v79, v143, type metadata accessor for Prompt.Attachment);
        outlined init with copy of Prompt.PromptFragment(v84, v147, type metadata accessor for Prompt.Attachment);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v82 = v58[2];
        v85 = v58[3];
        v83 = v82 + 1;
        if (v82 >= v85 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85 > 1, v82 + 1, 1, v58);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v143, type metadata accessor for Prompt.Attachment);
        v60 = v147;
      }

      ++v57;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v155, type metadata accessor for Prompt.PromptMarker);
      v58[2] = v83;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v60, v58 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v82, type metadata accessor for Prompt.PromptFragment);
      v156 = v58;
      v59 = v2;
      if (v141 == v57)
      {
        goto LABEL_49;
      }
    }

    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    __swift_project_value_buffer(v100, static Log.prompt);
    v101 = v135;
    outlined init with copy of Prompt.PromptFragment(v155, v135, type metadata accessor for Prompt.PromptMarker);
    swift_bridgeObjectRetain_n();
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v159 = v105;
      *v104 = 136315394;
      v106 = v130;
      outlined init with copy of Prompt.PromptFragment(v101, v130, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v107 = v140;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v106, v140, type metadata accessor for Prompt.Delimiter);
        v108 = Prompt.Delimiter.description.getter();
        v110 = v109;
        v111 = type metadata accessor for Prompt.Delimiter;
      }

      else
      {
        v107 = v139;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v106, v139, type metadata accessor for Prompt.Attachment);
        v108 = Prompt.Attachment.description.getter();
        v110 = v113;
        v111 = type metadata accessor for Prompt.Attachment;
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v107, v111);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v135, type metadata accessor for Prompt.PromptMarker);
      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v159);

      *(v104 + 4) = v114;
      *(v104 + 12) = 2050;
      v115 = String.count.getter();

      *(v104 + 14) = v115;

      _os_log_impl(&dword_1A8E85000, v102, v103, "Failed to create prompt fragments since prompt marker %s position for prompt with string length %{public}ld is invalid", v104, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x1AC57DBF0](v105, -1, -1);
      MEMORY[0x1AC57DBF0](v104, -1, -1);

      v112 = v133;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v101, type metadata accessor for Prompt.PromptMarker);
      v112 = v133;
    }

    v116 = String.count.getter();

    outlined init with copy of Prompt.PromptFragment(v155, v112, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v117 = v140;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v112, v140, type metadata accessor for Prompt.Delimiter);
      type metadata accessor for GenerationError();
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
      swift_allocError();
      v119 = v118;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_Si13tokenPositionSi16promptStringSizetMd, &_s15TokenGeneration6PromptV07SpecialA0V_Si13tokenPositionSi16promptStringSizetMR);
      v121 = *(v120 + 48);
      v122 = *(v120 + 64);
      outlined init with copy of Prompt.PromptFragment(v117, v119, type metadata accessor for Prompt.SpecialToken);
      *(v119 + v121) = *(v117 + *(v138 + 20));
      *(v119 + v122) = v116;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v123 = type metadata accessor for Prompt.Delimiter;
      v124 = v117;
    }

    else
    {
      v125 = v139;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v112, v139, type metadata accessor for Prompt.Attachment);
      type metadata accessor for GenerationError();
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
      swift_allocError();
      v127 = v126;
      v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV10AttachmentV_Si16promptStringSizetMd, &_s15TokenGeneration6PromptV10AttachmentV_Si16promptStringSizetMR) + 48);
      outlined init with copy of Prompt.PromptFragment(v125, v127, type metadata accessor for Prompt.Attachment);
      *(v127 + v128) = v116;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v123 = type metadata accessor for Prompt.Attachment;
      v124 = v125;
    }

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v124, v123);
    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v155, type metadata accessor for Prompt.PromptMarker);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
    v2 = v150;
LABEL_49:

    if (v2 >= 0x4000)
    {
      v86 = String.subscript.getter();
      v88 = v87;
      v90 = v89;
      v92 = v91;

      v93 = MEMORY[0x1AC57C040](v86, v88, v90, v92);
      v95 = v94;

      v96 = v134;
      *v134 = v93;
      *(v96 + 8) = v95;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
      }

      v98 = v58[2];
      v97 = v58[3];
      if (v98 >= v97 >> 1)
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v97 > 1, v98 + 1, 1, v58);
      }

      v58[2] = v98 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v96, v58 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v98, type metadata accessor for Prompt.PromptFragment);
      v156 = v58;
    }

    else
    {
    }

    specialized MutableCollection<>.reverse()();
    return v156;
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v65 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
  v9 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v65 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_yptMd, &_s15TokenGeneration6PromptV07SpecialA0V_yptMR);
  v11 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v65 - v12;
  v13 = type metadata accessor for Prompt.SpecialToken(0);
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v84 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMR);
  v16 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v65 - v19;
  v81 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMR);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v21 = v81 + 64;
  v22 = 1 << *(v81 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v81 + 64);
  v25 = (v22 + 63) >> 6;
  v69 = (v3 + 48);
  v67 = (v3 + 32);
  v66 = (v3 + 8);
  v26 = v20 + 8;

  v28 = 0;
  v83 = v20;
  v80 = v2;
  v74 = v13;
  while (v24)
  {
LABEL_15:
    v31 = __clz(__rbit64(v24)) | (v28 << 6);
    v32 = v81;
    v33 = *(v81 + 48);
    v82 = *(v73 + 72);
    v34 = v70;
    outlined init with copy of Prompt.PromptFragment(v33 + v82 * v31, v70, type metadata accessor for Prompt.SpecialToken);
    v35 = (*(v32 + 56) + 16 * v31);
    v36 = *v35;
    v37 = v35[1];
    v38 = v72;
    v39 = (v34 + *(v72 + 48));
    *v39 = v36;
    v39[1] = v37;
    v40 = v71;
    outlined init with take of (key: Prompt.SpecialToken, value: String)(v34, v71);
    v41 = (v40 + *(v38 + 48));
    v42 = *(v78 + 48);
    v43 = v40;
    v44 = v77;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v43, v77, type metadata accessor for Prompt.SpecialToken);
    v45 = v41[1];
    v85 = *v41;
    v86 = v45;

    swift_dynamicCast();
    v46 = *(v76 + 48);
    v47 = v75;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v44, v75, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any((v44 + v42), (v47 + v46));
    v48 = v84;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v47, v84, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any((v47 + v46), v87);
    v49 = v83[5];
    Hasher.init(_seed:)();
    v50 = *v48;
    v51 = v48[1];
    String.hash(into:)();
    v52 = v74;
    v53 = v79;
    outlined init with copy of (String, Any)(v48 + *(v74 + 20), v79, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v54 = v80;
    if ((*v69)(v53, 1, v80) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v55 = v68;
      (*v67)(v68, v53, v54);
      Hasher._combine(_:)(1u);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
      dispatch thunk of Hashable.hash(into:)();
      (*v66)(v55, v54);
    }

    v56 = (v84 + *(v52 + 24));
    if (v56[1])
    {
      v57 = *v56;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(*(v84 + *(v52 + 28)));
    result = Hasher._finalize()();
    v20 = v83;
    v58 = -1 << *(v83 + 32);
    v59 = result & ~v58;
    v60 = v59 >> 6;
    if (((-1 << v59) & ~v26[v59 >> 6]) == 0)
    {
      v61 = 0;
      v62 = (63 - v58) >> 6;
      while (++v60 != v62 || (v61 & 1) == 0)
      {
        v63 = v60 == v62;
        if (v60 == v62)
        {
          v60 = 0;
        }

        v61 |= v63;
        v64 = v26[v60];
        if (v64 != -1)
        {
          v29 = __clz(__rbit64(~v64)) + (v60 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_32;
    }

    v29 = __clz(__rbit64((-1 << v59) & ~v26[v59 >> 6])) | v59 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v24 &= v24 - 1;
    *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v84, v20[6] + v29 * v82, type metadata accessor for Prompt.SpecialToken);
    result = outlined init with take of Any(v87, (v20[7] + 32 * v29));
    ++v20[2];
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      return v20;
    }

    v24 = *(v21 + 8 * v30);
    ++v28;
    if (v24)
    {
      v28 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t Prompt.renderSpecialToken(delimiter:tokenTable:localizationOverrideMap:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v97 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v89 - v7;
  v9 = type metadata accessor for Prompt.SpecialToken(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v92 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v89 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v89 - v16);
  v19 = *a1;
  v18 = a1[1];
  v21 = *(v20 + 20);
  v22 = type metadata accessor for Locale();
  (*(*(v22 - 8) + 56))(v17 + v21, 1, 1, v22);
  v94 = v19;
  v95 = v9;
  *v17 = v19;
  v17[1] = v18;
  v23 = (v17 + v9[6]);
  *v23 = 0;
  v23[1] = 0;
  *(v17 + v9[7]) = 0;
  v24 = v9[5];
  v98 = a1;
  v25 = a1 + v24;
  v26 = v8;
  v27 = v97;
  outlined init with copy of (String, Any)(v25, v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  v93 = v18;

  v96 = a3;
  v100 = v17;
  v28 = specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(a3, v17, v26);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.prompt);
    outlined init with copy of Prompt.PromptFragment(v100, v14, type metadata accessor for Prompt.SpecialToken);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v102 = v90;
      *v35 = 136643075;
      v91 = v26;
      v37 = *v14;
      v36 = v14[1];

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v14, type metadata accessor for Prompt.SpecialToken);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v102);
      v26 = v91;

      *(v35 + 4) = v38;
      *(v35 + 12) = 2085;
      *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v102);
      _os_log_impl(&dword_1A8E85000, v33, v34, "Updating value of special token: %{sensitive}s to %{sensitive}s", v35, 0x16u);
      v39 = v90;
      swift_arrayDestroy();
      MEMORY[0x1AC57DBF0](v39, -1, -1);
      MEMORY[0x1AC57DBF0](v35, -1, -1);
    }

    else
    {

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v14, type metadata accessor for Prompt.SpecialToken);
    }

    v103 = MEMORY[0x1E69E6158];
    *&v102 = v30;
    *(&v102 + 1) = v31;
    outlined init with take of Any(&v102, v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v100, isUniquelyReferenced_nonNull_native);
    v27 = v104;
  }

  v41 = v99;
  v42 = Prompt.renderSpecialToken(delimiter:tokenTable:)(v98, v27);
  if (v41)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v100, type metadata accessor for Prompt.SpecialToken);
  }

  v45 = v43;
  v99 = v42;

  if (one-time initialization token for localeInstruction != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v95, static Prompt.SpecialToken.localeInstruction);
  v47 = specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(v96, v46, v26);
  if (v48)
  {
    v49 = v48;
    v50 = v47;
    if (one-time initialization token for localeInstructionInjectionLocation != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v95, static Prompt.SpecialToken.localeInstructionInjectionLocation);
    v52 = specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(v96, v51, v26);
    v54 = v26;
    if (v53)
    {
      v55 = v53;
      v91 = v54;
      v98 = v52;
      *&v102 = v52;
      *(&v102 + 1) = v53;
      *&v101[0] = 58;
      *(&v101[0] + 1) = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v56 = StringProtocol.components<A>(separatedBy:)();
      v57 = v56;
      v58 = v56[2];
      if (v58)
      {
        v59 = v45;
        if ((v56[4] != v94 || v56[5] != v93) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          outlined destroy of [Regex2BNF.CharacterPredicate](v91, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v100, type metadata accessor for Prompt.SpecialToken);
          return v99;
        }

        v60 = &v57[2 * v58 + 4];
        v61 = *(v60 - 16);
        v62 = *(v60 - 8);

        v63._countAndFlagsBits = v61;
        v63._object = v62;
        v64 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Prompt.SpecialToken.LocaleInstructionPosition.init(rawValue:), v63);

        if (v64 == 1)
        {

          *&v102 = v99;
          *(&v102 + 1) = v59;

          v65 = v50;
          v66 = v49;
          goto LABEL_34;
        }

        if (!v64)
        {

          *&v102 = v50;
          *(&v102 + 1) = v49;

          v65 = v99;
          v66 = v59;
LABEL_34:
          MEMORY[0x1AC57C120](v65, v66);

          v75 = *(&v102 + 1);
          v99 = v102;

          v76 = v92;
          if (one-time initialization token for prompt != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          __swift_project_value_buffer(v77, static Log.prompt);
          outlined init with copy of Prompt.PromptFragment(v100, v76, type metadata accessor for Prompt.SpecialToken);

          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *&v102 = v81;
            *v80 = 136643075;
            v82 = v75;
            v83 = *v76;
            v84 = v76[1];

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v76, type metadata accessor for Prompt.SpecialToken);
            v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v102);

            *(v80 + 4) = v85;
            *(v80 + 12) = 2085;
            v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v82, &v102);

            *(v80 + 14) = v86;
            _os_log_impl(&dword_1A8E85000, v78, v79, "Value of special token: %{sensitive}s after adding locale instruction: %{sensitive}s", v80, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1AC57DBF0](v81, -1, -1);
            MEMORY[0x1AC57DBF0](v80, -1, -1);
          }

          else
          {

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v76, type metadata accessor for Prompt.SpecialToken);
          }

          outlined destroy of [Regex2BNF.CharacterPredicate](v91, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v67 = v100;
          goto LABEL_27;
        }

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v87 = type metadata accessor for Logger();
        __swift_project_value_buffer(v87, static Log.prompt);

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v102 = v72;
          *v71 = 136446210;
          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v55, &v102);

          *(v71 + 4) = v88;
          v74 = "Invalid locale instruction injection location as position is not valid: %{public}s";
          goto LABEL_45;
        }
      }

      else
      {

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        __swift_project_value_buffer(v68, static Log.prompt);

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v102 = v72;
          *v71 = 136446210;
          v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v55, &v102);

          *(v71 + 4) = v73;
          v74 = "Invalid locale instruction injection location as token identifier not provided: %{public}s";
LABEL_45:
          _os_log_impl(&dword_1A8E85000, v69, v70, v74, v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x1AC57DBF0](v72, -1, -1);
          MEMORY[0x1AC57DBF0](v71, -1, -1);
LABEL_47:

          type metadata accessor for GenerationError();
          lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined destroy of [Regex2BNF.CharacterPredicate](v91, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v100, type metadata accessor for Prompt.SpecialToken);
        }
      }

      goto LABEL_47;
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  v67 = v100;
LABEL_27:
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v67, type metadata accessor for Prompt.SpecialToken);
  return v99;
}

uint64_t Prompt.renderSpecialToken(delimiter:tokenTable:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.SpecialToken(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
  *v7 = v9;
  *(v7 + 1) = v8;
  v13 = &v7[*(v4 + 24)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v7[*(v4 + 28)] = 0;
  if (v9 == 0x6C6F722E74616863 && v8 == 0xEE006C6F6F742E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = *(a2 + 16);

    if (!v14 || (specialized __RawDictionaryStorage.find<A>(_:)(v7), (v15 & 1) == 0))
    {
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.SpecialToken);
      return 0xD000000000000012;
    }
  }

  else
  {
  }

  if (*(a2 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v18 & 1) != 0) && (outlined init with copy of Any(*(a2 + 56) + 32 * v17, v28), (swift_dynamicCast() & 1) != 0))
  {
    v28[0] = v26;
    v28[1] = v27;
    v26 = 0x7D7D64697B7BLL;
    v27 = 0xE600000000000000;
    v19 = (a1 + *(v4 + 24));
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    v25[0] = v21;
    v25[1] = v22;
    lazy protocol witness table accessor for type String and conformance String();

    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.SpecialToken);

    return v24;
  }

  else
  {
    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    outlined init with copy of Prompt.PromptFragment(a1, v23, type metadata accessor for Prompt.SpecialToken);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.SpecialToken);
  }
}

uint64_t closure #2 in static Prompt.getLocalizationOverrideValue(from:token:locale:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(*a1 + 16), 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(&v15, v3 + 4, v2, v1);

    outlined consume of Set<NonTerminalSymbol>.Iterator._Variant();
    if (v4 != v2)
    {
      __break(1u);
    }
  }

  v5 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FC9400;
  *(v7 + 32) = Locale.identifier.getter();
  *(v7 + 40) = v8;
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v5 preferredLocalizationsFromArray:isa forPreferences:v9];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11[2])
  {
    v12 = v11[4];
    v13 = v11[5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL closure #1 in Prompt.promptFragments()(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for Prompt.Delimiter(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.Attachment(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Prompt.PromptMarker(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v51 = a1;
  outlined init with copy of Prompt.PromptFragment(a1, &v47 - v25, type metadata accessor for Prompt.PromptMarker);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = v3;
  if (EnumCaseMultiPayload == 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v26, v6, type metadata accessor for Prompt.Delimiter);
    v28 = *&v6[*(v3 + 20)];
    v29 = type metadata accessor for Prompt.Delimiter;
    v30 = v6;
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v26, v10, type metadata accessor for Prompt.Attachment);
    v28 = *&v10[*(v7 + 20)];
    v29 = type metadata accessor for Prompt.Attachment;
    v30 = v10;
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v30, v29);
  v31 = v50;
  outlined init with copy of Prompt.PromptFragment(v50, v23, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v23, v6, type metadata accessor for Prompt.Delimiter);
    v32 = *&v6[*(v52 + 20)];
    v33 = type metadata accessor for Prompt.Delimiter;
    v34 = v6;
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v23, v10, type metadata accessor for Prompt.Attachment);
    v32 = *&v10[*(v7 + 20)];
    v33 = type metadata accessor for Prompt.Attachment;
    v34 = v10;
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v34, v33);
  if (v28 != v32)
  {
    outlined init with copy of Prompt.PromptFragment(v31, v20, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v20, v6, type metadata accessor for Prompt.Delimiter);
      v38 = v52;
      v37 = *&v6[*(v52 + 20)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.Delimiter);
    }

    else
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v20, v10, type metadata accessor for Prompt.Attachment);
      v37 = *&v10[*(v7 + 20)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Attachment);
      v38 = v52;
    }

    v41 = v48;
    outlined init with copy of Prompt.PromptFragment(v51, v48, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v41, v6, type metadata accessor for Prompt.Delimiter);
      v40 = *(v38 + 20);
      goto LABEL_18;
    }

    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v41, v10, type metadata accessor for Prompt.Attachment);
    v45 = *(v7 + 20);
LABEL_21:
    v42 = *&v10[v45];
    v43 = type metadata accessor for Prompt.Attachment;
    v44 = v10;
    goto LABEL_22;
  }

  v35 = v47;
  outlined init with copy of Prompt.PromptFragment(v31, v47, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v35, v6, type metadata accessor for Prompt.Delimiter);
    v36 = v52;
    v37 = *&v6[*(v52 + 24)];
    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.Delimiter);
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v35, v10, type metadata accessor for Prompt.Attachment);
    v37 = *&v10[*(v7 + 24)];
    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.Attachment);
    v36 = v52;
  }

  v39 = v49;
  outlined init with copy of Prompt.PromptFragment(v51, v49, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v39, v10, type metadata accessor for Prompt.Attachment);
    v45 = *(v7 + 24);
    goto LABEL_21;
  }

  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v39, v6, type metadata accessor for Prompt.Delimiter);
  v40 = *(v36 + 24);
LABEL_18:
  v42 = *&v6[v40];
  v43 = type metadata accessor for Prompt.Delimiter;
  v44 = v6;
LABEL_22:
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v44, v43);
  return v37 < v42;
}

Swift::Int __swiftcall Prompt.overestimatedTokenCount()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = String.count.getter();
  v5 = *(v3 + 16);

  v6 = String.Iterator.next()();
  if (v6.value._object)
  {
    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
    while (1)
    {
      if (countAndFlagsBits == 2573 && object == 0xE200000000000000)
      {
        goto LABEL_4;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_4;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(object) & 0xF;
      }

      else
      {
        v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if ((object & 0x1000000000000000) != 0)
      {
        v16 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((object & 0x2000000000000000) != 0)
        {
          v13 = countAndFlagsBits;
        }

        else
        {
          v12 = ((countAndFlagsBits & 0x1000000000000000) != 0 ? (object & 0xFFFFFFFFFFFFFFFLL) + 32 : _StringObject.sharedUTF8.getter());
          v13 = *v12;
        }

        v14 = v13;
        v15 = (__clz(~v13) - 24) << 16;
        v16 = v14 < 0 ? v15 : 65541;
      }

      if (v16 >> 14 != 4 * v11)
      {
        break;
      }

      result = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_43;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
        break;
      }

      result = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_44;
      }

      v17 = result;

      if ((v17 & 0xFFFFFF00) != 0)
      {
        goto LABEL_37;
      }

LABEL_5:
      v9 = String.Iterator.next()();
      countAndFlagsBits = v9.value._countAndFlagsBits;
      object = v9.value._object;
      if (!v9.value._object)
      {
        goto LABEL_30;
      }
    }

    MEMORY[0x1AC57C110](countAndFlagsBits, object);
LABEL_4:

    goto LABEL_5;
  }

LABEL_30:

  v18 = String.count.getter();

  v19 = ceil(v4 / 3.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v20 = v19 + v18;
  if (!__OFADD__(v19, v18))
  {
    result = v20 + v5;
    if (!__OFADD__(v20, v5))
    {
      return result;
    }

    goto LABEL_42;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(if:token:)(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for Prompt.Delimiter(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  result = a1(v13);
  if ((result & 1) == 0)
  {
    return result;
  }

  outlined init with copy of Prompt.PromptFragment(a3, v15, type metadata accessor for Prompt.SpecialToken);
  v17 = *v3;
  v18 = v3[1];
  v19 = String.count.getter();
  v20 = v3[2];
  v21 = v20[2];
  v22 = *(v4[3] + 16);
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_9;
  }

  *&v15[*(v7 + 20)] = v19;
  *&v15[*(v7 + 24)] = v24;
  outlined init with copy of Prompt.PromptFragment(v15, v11, type metadata accessor for Prompt.Delimiter);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_9:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 + 1, 1, v20);
  }

  v26 = v20[2];
  v25 = v20[3];
  if (v26 >= v25 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v20);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v15, type metadata accessor for Prompt.Delimiter);
  v20[2] = v26 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v11, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, type metadata accessor for Prompt.Delimiter);
  v4[2] = v20;
  return result;
}

size_t protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance Prompt.StringInterpolation@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060]();
  v4 = a1 & ~(a1 >> 63);
  v5 = MEMORY[0x1E69E7CC0];
  a2[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, MEMORY[0x1E69E7CC0]);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, v5);
  a2[3] = result;
  return result;
}

void protocol witness for StringInterpolationProtocol.appendLiteral(_:) in conformance Prompt.StringInterpolation(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  JUMPOUT(0x1AC57C120);
}

uint64_t Prompt.Rendering.originalPrompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Prompt.Rendering.renderedString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Prompt.Rendering.detokenizedString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Prompt.Rendering.source.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v1[9];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

void __swiftcall Prompt.Rendering.init(segments:renderedString:originalPrompt:tokenIDs:)(TokenGeneration::Prompt::Rendering *__return_ptr retstr, Swift::OpaquePointer segments, Swift::String renderedString, Swift::String originalPrompt, Swift::OpaquePointer tokenIDs)
{
  object = originalPrompt._object;
  countAndFlagsBits = originalPrompt._countAndFlagsBits;
  v8 = renderedString._object;
  v9 = renderedString._countAndFlagsBits;
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.prompt);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A8E85000, v13, v14, "Using deprecated initialize: Prompt source will be bogus!", v15, 2u);
    MEMORY[0x1AC57DBF0](v15, -1, -1);
  }

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  retstr->originalPrompt._countAndFlagsBits = countAndFlagsBits;
  retstr->originalPrompt._object = object;
  retstr->renderedString._countAndFlagsBits = v9;
  retstr->renderedString._object = v8;
  retstr->segments = segments;
  retstr->tokenIDs = tokenIDs;
  retstr->detokenizedString.value._countAndFlagsBits = 0;
  retstr->detokenizedString.value._object = 0;
  retstr->userInfo._rawValue = v16;
  retstr->source.identifier._countAndFlagsBits = 0;
  retstr->source.identifier._object = 0xE000000000000000;
  retstr->source.version._countAndFlagsBits = 0;
  retstr->source.version._object = 0xE000000000000000;
}

TokenGeneration::Prompt::Rendering::Source __swiftcall Prompt.Rendering.Source.init(identifier:version:)(Swift::String identifier, Swift::String version)
{
  *v2 = identifier;
  v2[1] = version;
  result.version = version;
  result.identifier = identifier;
  return result;
}

void __swiftcall Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:)(TokenGeneration::Prompt::Rendering *__return_ptr retstr, TokenGeneration::Prompt::Rendering::Source source, Swift::OpaquePointer segments, Swift::String renderedString, Swift::String originalPrompt, Swift::OpaquePointer tokenIDs, Swift::OpaquePointer userInfo)
{
  v7 = *(source.identifier._countAndFlagsBits + 16);
  v8 = *(source.identifier._countAndFlagsBits + 24);
  retstr->source.identifier = *source.identifier._countAndFlagsBits;
  retstr->source.version._countAndFlagsBits = v7;
  retstr->source.version._object = v8;
  retstr->renderedString._countAndFlagsBits = source.version._countAndFlagsBits;
  retstr->renderedString._object = source.version._object;
  retstr->originalPrompt._countAndFlagsBits = segments._rawValue;
  retstr->originalPrompt._object = renderedString._countAndFlagsBits;
  retstr->segments._rawValue = source.identifier._object;
  retstr->tokenIDs._rawValue = renderedString._object;
  retstr->detokenizedString.value._object = 0;
  retstr->userInfo._rawValue = originalPrompt._countAndFlagsBits;
  retstr->detokenizedString.value._countAndFlagsBits = 0;
}

uint64_t Prompt.Rendering.Source.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Prompt.Rendering.Source.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Prompt.Rendering.Source.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Prompt.Rendering.Source.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.Rendering.Source.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Rendering.Source()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.Rendering.Source()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Rendering.Source()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.Rendering.Source(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Prompt.Rendering.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = v1[10];
  v23 = v1[11];
  v21 = v1[6];
  v22 = v1[12];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(v8 + 16));
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = (v8 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      String.hash(into:)();

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x1AC57CB80](*(v7 + 16));
  v17 = *(v7 + 16);
  if (v17)
  {
    v18 = (v7 + 32);
    do
    {
      v19 = *v18++;
      MEMORY[0x1AC57CB80](v19);
      --v17;
    }

    while (v17);
  }

  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(a1, v11);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.Rendering.hashValue.getter()
{
  Hasher.init(_seed:)();
  Prompt.Rendering.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Rendering()
{
  Hasher.init(_seed:)();
  Prompt.Rendering.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Rendering()
{
  Hasher.init(_seed:)();
  Prompt.Rendering.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t static Prompt.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV9DelimiterV_Tt1g5(v2, v5))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV10AttachmentV_Tt1g5(v3, v4);
}

uint64_t Prompt.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v6);

  return specialized Array<A>.hash(into:)(a1, v5);
}

Swift::Int Prompt.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v6, v4);
  specialized Array<A>.hash(into:)(v6, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v6, v4);
  specialized Array<A>.hash(into:)(v6, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v6);

  return specialized Array<A>.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v6, v4);
  specialized Array<A>.hash(into:)(v6, v3);
  return Hasher._finalize()();
}

__n128 protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance Prompt@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV9DelimiterV_Tt1g5(v2, v5))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV10AttachmentV_Tt1g5(v3, v4);
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
    v5 = MEMORY[0x1AC57C180](15, a1 >> 16);
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

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.PromptMarker(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.PromptMarker(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.Attachment(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.Attachment(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.PromptMarker(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.PromptMarker(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Prompt.PromptMarker(0);
  v9 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      outlined init with copy of Prompt.PromptFragment(v23, v17, type metadata accessor for Prompt.PromptMarker);
      outlined init with copy of Prompt.PromptFragment(v20, v13, type metadata accessor for Prompt.PromptMarker);
      v24 = closure #1 in Prompt.promptFragments()(v17, v13);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v13, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v17, type metadata accessor for Prompt.PromptMarker);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return;
        }

        v25 = v34;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v23, v34, type metadata accessor for Prompt.PromptMarker);
        swift_arrayInitWithTakeFrontToBack();
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v25, v20, type metadata accessor for Prompt.PromptMarker);
        v20 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

{
  v8 = type metadata accessor for Prompt.Attachment(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    while (1)
    {
      outlined init with copy of Prompt.Turn(v22, v17, type metadata accessor for Prompt.Attachment);
      outlined init with copy of Prompt.Turn(v20, v13, type metadata accessor for Prompt.Attachment);
      v23 = *(v8 + 24);
      v24 = v8;
      v25 = *&v17[v23];
      v26 = *&v13[v23];
      outlined destroy of Prompt.ResponseFormat(v13, type metadata accessor for Prompt.Attachment);
      outlined destroy of Prompt.ResponseFormat(v17, type metadata accessor for Prompt.Attachment);
      v27 = v25 < v26;
      v8 = v24;
      if (!v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      outlined init with take of Prompt.ResponseFormat(v22, v39, type metadata accessor for Prompt.Attachment);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Prompt.ResponseFormat(v28, v20, type metadata accessor for Prompt.Attachment);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v35 = type metadata accessor for Prompt.PromptMarker(0);
  v9 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v23, v17, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v20, v13, type metadata accessor for Prompt.PromptMarker);
      v24 = closure #1 in Prompt.init(_:)(v17, v13);
      outlined destroy of Prompt.Turn(v13, type metadata accessor for Prompt.PromptMarker);
      outlined destroy of Prompt.Turn(v17, type metadata accessor for Prompt.PromptMarker);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return;
        }

        v25 = v34;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v23, v34, type metadata accessor for Prompt.PromptMarker);
        swift_arrayInitWithTakeFrontToBack();
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v25, v20, type metadata accessor for Prompt.PromptMarker);
        v20 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v156 = a1;
  v181 = type metadata accessor for Prompt.Delimiter(0);
  v8 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181);
  v10 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Prompt.Attachment(0);
  v11 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v13 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt.PromptMarker(0);
  v167 = *(v14 - 8);
  v15 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v151 - v18;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v151 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v151 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v151 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v178 = &v151 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v183 = &v151 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v182 = &v151 - v33;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v154 = &v151 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v151 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v169 = a3;
  v45 = *(a3 + 8);
  if (v45 >= 1)
  {
    v152 = &v151 - v41;
    v153 = v39;
    v163 = v44;
    v46 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    v155 = a4;
    v171 = v43;
    v172 = v42;
    v179 = v27;
    v151 = v14;
    v162 = v13;
    while (1)
    {
      v48 = v46;
      v49 = v46 + 1;
      v160 = v47;
      v159 = v48;
      if (v49 >= v45)
      {
        v58 = v49;
        goto LABEL_27;
      }

      v170 = v45;
      v50 = *v169;
      v51 = *(v167 + 72);
      v52 = *v169 + v51 * v49;
      a3 = v152;
      outlined init with copy of Prompt.PromptFragment(v52, v152, type metadata accessor for Prompt.PromptMarker);
      v175 = v50;
      v53 = v50 + v51 * v159;
      v54 = v153;
      outlined init with copy of Prompt.PromptFragment(v53, v153, type metadata accessor for Prompt.PromptMarker);
      LODWORD(v176) = closure #1 in Prompt.promptFragments()(a3, v54);
      if (v5)
      {
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v54, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(a3, type metadata accessor for Prompt.PromptMarker);
        goto LABEL_135;
      }

      v168 = 0;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v54, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(a3, type metadata accessor for Prompt.PromptMarker);
      v55 = v159 + 2;
      v56 = v175 + v51 * (v159 + 2);
      v57 = v154;
      do
      {
        v58 = v170;
        if (v170 == v55)
        {
          goto LABEL_11;
        }

        v59 = v10;
        v60 = v51;
        outlined init with copy of Prompt.PromptFragment(v56, v57, type metadata accessor for Prompt.PromptMarker);
        v61 = v163;
        outlined init with copy of Prompt.PromptFragment(v52, v163, type metadata accessor for Prompt.PromptMarker);
        v62 = v168;
        v63 = closure #1 in Prompt.promptFragments()(v57, v61);
        v168 = v62;
        if (v62)
        {
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v61, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v57, type metadata accessor for Prompt.PromptMarker);

          return;
        }

        v64 = v63;
        a3 = type metadata accessor for Prompt.PromptMarker;
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v61, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v57, type metadata accessor for Prompt.PromptMarker);
        ++v55;
        v51 = v60;
        v56 += v60;
        v52 += v60;
        v10 = v59;
        v13 = v162;
      }

      while (((v176 ^ v64) & 1) == 0);
      v58 = v55 - 1;
LABEL_11:
      v5 = v168;
      a4 = v155;
      v48 = v159;
      if ((v176 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v58 < v159)
      {
        goto LABEL_158;
      }

      if (v159 >= v58)
      {
LABEL_25:
        v27 = v179;
        goto LABEL_27;
      }

      a3 = v51 * (v58 - 1);
      v65 = v58 * v51;
      v170 = v58;
      v66 = v159;
      v67 = v159 * v51;
      do
      {
        if (v66 != --v58)
        {
          v176 = v58;
          v68 = *v169;
          if (!*v169)
          {
            goto LABEL_162;
          }

          v175 = v68 + v67;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v68 + v67, v157, type metadata accessor for Prompt.PromptMarker);
          if (v67 < a3 || v175 >= v68 + v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v157, v68 + a3, type metadata accessor for Prompt.PromptMarker);
          v48 = v159;
          v58 = v176;
        }

        ++v66;
        a3 -= v51;
        v65 -= v51;
        v67 += v51;
      }

      while (v66 < v58);
      v5 = v168;
      a4 = v155;
      v27 = v179;
      v58 = v170;
LABEL_27:
      v69 = v169[1];
      if (v58 >= v69)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v58, v48))
      {
        goto LABEL_154;
      }

      if (v58 - v48 >= a4)
      {
LABEL_36:
        v71 = v58;
        if (v58 < v48)
        {
          goto LABEL_153;
        }

        goto LABEL_37;
      }

      if (__OFADD__(v48, a4))
      {
        break;
      }

      if ((v48 + a4) >= v69)
      {
        v70 = v169[1];
      }

      else
      {
        v70 = v48 + a4;
      }

      if (v70 < v48)
      {
        goto LABEL_157;
      }

      if (v58 == v70)
      {
        goto LABEL_36;
      }

      v168 = v5;
      v116 = *v169;
      v117 = *(v167 + 72);
      v118 = *v169 + v117 * (v58 - 1);
      v175 = -v117;
      v176 = v116;
      v119 = v48 - v58;
      v158 = v117;
      a4 = v116 + v58 * v117;
      v161 = v70;
      while (2)
      {
        v170 = v58;
        v164 = a4;
        v165 = v119;
        v166 = v118;
        v120 = v118;
        while (2)
        {
          v121 = v182;
          outlined init with copy of Prompt.PromptFragment(a4, v182, type metadata accessor for Prompt.PromptMarker);
          outlined init with copy of Prompt.PromptFragment(v120, v183, type metadata accessor for Prompt.PromptMarker);
          v122 = v178;
          outlined init with copy of Prompt.PromptFragment(v121, v178, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v122, v10, type metadata accessor for Prompt.Delimiter);
            v123 = *&v10[*(v181 + 20)];
            v124 = type metadata accessor for Prompt.Delimiter;
            v125 = v10;
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v122, v13, type metadata accessor for Prompt.Attachment);
            v123 = *&v13[*(v180 + 20)];
            v124 = type metadata accessor for Prompt.Attachment;
            v125 = v13;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v125, v124);
          outlined init with copy of Prompt.PromptFragment(v183, v27, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v27, v10, type metadata accessor for Prompt.Delimiter);
            v126 = *&v10[*(v181 + 20)];
            v127 = type metadata accessor for Prompt.Delimiter;
            v128 = v10;
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v27, v13, type metadata accessor for Prompt.Attachment);
            v126 = *&v13[*(v180 + 20)];
            v127 = type metadata accessor for Prompt.Attachment;
            v128 = v13;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v128, v127);
          if (v123 == v126)
          {
            v129 = v173;
            outlined init with copy of Prompt.PromptFragment(v183, v173, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v129, v10, type metadata accessor for Prompt.Delimiter);
              v130 = *&v10[*(v181 + 24)];
              v131 = type metadata accessor for Prompt.Delimiter;
              v132 = v10;
            }

            else
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v129, v13, type metadata accessor for Prompt.Attachment);
              v130 = *&v13[*(v180 + 24)];
              v131 = type metadata accessor for Prompt.Attachment;
              v132 = v13;
            }

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v132, v131);
            v136 = v171;
            outlined init with copy of Prompt.PromptFragment(v182, v171, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v136, v10, type metadata accessor for Prompt.Delimiter);
              v137 = *(v181 + 24);
              goto LABEL_108;
            }

            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v136, v13, type metadata accessor for Prompt.Attachment);
            v142 = *(v180 + 24);
LABEL_111:
            v139 = *&v13[v142];
            v140 = type metadata accessor for Prompt.Attachment;
            v141 = v13;
          }

          else
          {
            v133 = v174;
            outlined init with copy of Prompt.PromptFragment(v183, v174, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v133, v10, type metadata accessor for Prompt.Delimiter);
              v130 = *&v10[*(v181 + 20)];
              v134 = type metadata accessor for Prompt.Delimiter;
              v135 = v10;
            }

            else
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v133, v13, type metadata accessor for Prompt.Attachment);
              v130 = *&v13[*(v180 + 20)];
              v134 = type metadata accessor for Prompt.Attachment;
              v135 = v13;
            }

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v135, v134);
            v138 = v172;
            outlined init with copy of Prompt.PromptFragment(v182, v172, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v138, v13, type metadata accessor for Prompt.Attachment);
              v142 = *(v180 + 20);
              goto LABEL_111;
            }

            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v138, v10, type metadata accessor for Prompt.Delimiter);
            v137 = *(v181 + 20);
LABEL_108:
            v139 = *&v10[v137];
            v140 = type metadata accessor for Prompt.Delimiter;
            v141 = v10;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v141, v140);
          v143 = v130 < v139;
          a3 = type metadata accessor for Prompt.PromptMarker;
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v183, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v182, type metadata accessor for Prompt.PromptMarker);
          if (v143)
          {
            if (!v176)
            {
              goto LABEL_159;
            }

            a3 = type metadata accessor for Prompt.PromptMarker;
            v144 = v177;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(a4, v177, type metadata accessor for Prompt.PromptMarker);
            swift_arrayInitWithTakeFrontToBack();
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v144, v120, type metadata accessor for Prompt.PromptMarker);
            v120 += v175;
            a4 += v175;
            v145 = __CFADD__(v119++, 1);
            v27 = v179;
            if (v145)
            {
              goto LABEL_89;
            }

            continue;
          }

          break;
        }

        v27 = v179;
LABEL_89:
        v58 = v170 + 1;
        v118 = v166 + v158;
        v119 = v165 - 1;
        a4 = v164 + v158;
        v71 = v161;
        if (v170 + 1 != v161)
        {
          continue;
        }

        break;
      }

      v5 = v168;
      v48 = v159;
      if (v161 < v159)
      {
        goto LABEL_153;
      }

LABEL_37:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v47 = v160;
      }

      else
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v160 + 2) + 1, 1, v160);
      }

      a3 = *(v47 + 2);
      v72 = *(v47 + 3);
      a4 = a3 + 1;
      if (a3 >= v72 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), a3 + 1, 1, v47);
      }

      *(v47 + 2) = a4;
      v73 = &v47[16 * a3];
      *(v73 + 4) = v48;
      *(v73 + 5) = v71;
      v176 = *v156;
      if (!v176)
      {
        goto LABEL_163;
      }

      v161 = v71;
      if (a3)
      {
        while (1)
        {
          v74 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v75 = *(v47 + 4);
            v76 = *(v47 + 5);
            v85 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            v78 = v85;
LABEL_56:
            if (v78)
            {
              goto LABEL_142;
            }

            v91 = &v47[16 * a4];
            v93 = *v91;
            v92 = *(v91 + 1);
            v94 = __OFSUB__(v92, v93);
            v95 = v92 - v93;
            v96 = v94;
            if (v94)
            {
              goto LABEL_145;
            }

            v97 = &v47[16 * v74 + 32];
            v99 = *v97;
            v98 = *(v97 + 1);
            v85 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v85)
            {
              goto LABEL_148;
            }

            if (__OFADD__(v95, v100))
            {
              goto LABEL_149;
            }

            if (v95 + v100 >= v77)
            {
              if (v77 < v100)
              {
                v74 = a4 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v101 = &v47[16 * a4];
          v103 = *v101;
          v102 = *(v101 + 1);
          v85 = __OFSUB__(v102, v103);
          v95 = v102 - v103;
          v96 = v85;
LABEL_70:
          if (v96)
          {
            goto LABEL_144;
          }

          v104 = &v47[16 * v74];
          v106 = *(v104 + 4);
          v105 = *(v104 + 5);
          v85 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v85)
          {
            goto LABEL_147;
          }

          if (v107 < v95)
          {
            goto LABEL_3;
          }

LABEL_77:
          a3 = v74 - 1;
          if (v74 - 1 >= a4)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            v146 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
            goto LABEL_124;
          }

          if (!*v169)
          {
            goto LABEL_160;
          }

          v112 = v47;
          a4 = *&v47[16 * a3 + 32];
          v113 = *&v47[16 * v74 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v169 + *(v167 + 72) * a4, *v169 + *(v167 + 72) * *&v47[16 * v74 + 32], *v169 + *(v167 + 72) * v113, v176);
          if (v5)
          {
            goto LABEL_135;
          }

          if (v113 < a4)
          {
            goto LABEL_138;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v114 = v112;
          }

          else
          {
            v114 = specialized _ArrayBuffer._consumeAndCreateNew()(v112);
          }

          v27 = v179;
          if (a3 >= *(v114 + 2))
          {
            goto LABEL_139;
          }

          v115 = &v114[16 * a3];
          *(v115 + 4) = a4;
          *(v115 + 5) = v113;
          v184 = v114;
          specialized Array.remove(at:)(v74);
          v47 = v184;
          a4 = *(v184 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v79 = &v47[16 * a4 + 32];
        v80 = *(v79 - 64);
        v81 = *(v79 - 56);
        v85 = __OFSUB__(v81, v80);
        v82 = v81 - v80;
        if (v85)
        {
          goto LABEL_140;
        }

        v84 = *(v79 - 48);
        v83 = *(v79 - 40);
        v85 = __OFSUB__(v83, v84);
        v77 = v83 - v84;
        v78 = v85;
        if (v85)
        {
          goto LABEL_141;
        }

        v86 = &v47[16 * a4];
        v88 = *v86;
        v87 = *(v86 + 1);
        v85 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v85)
        {
          goto LABEL_143;
        }

        v85 = __OFADD__(v77, v89);
        v90 = v77 + v89;
        if (v85)
        {
          goto LABEL_146;
        }

        if (v90 >= v82)
        {
          v108 = &v47[16 * v74 + 32];
          v110 = *v108;
          v109 = *(v108 + 1);
          v85 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v85)
          {
            goto LABEL_152;
          }

          if (v77 < v111)
          {
            v74 = a4 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v45 = v169[1];
      v46 = v161;
      a4 = v155;
      if (v161 >= v45)
      {
        goto LABEL_121;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_121:
  a3 = *v156;
  if (*v156)
  {
    a4 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_155;
    }

    v146 = a4;
LABEL_124:
    v184 = v146;
    a4 = *(v146 + 2);
    if (a4 < 2)
    {
LABEL_135:

      return;
    }

    while (*v169)
    {
      v147 = *&v146[16 * a4];
      v148 = v146;
      v149 = *&v146[16 * a4 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*v169 + *(v167 + 72) * v147, *v169 + *(v167 + 72) * *&v146[16 * a4 + 16], *v169 + *(v167 + 72) * v149, a3);
      if (v5)
      {
        goto LABEL_135;
      }

      if (v149 < v147)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = specialized _ArrayBuffer._consumeAndCreateNew()(v148);
      }

      if (a4 - 2 >= *(v148 + 2))
      {
        goto LABEL_151;
      }

      v150 = &v148[16 * a4];
      *v150 = v147;
      *(v150 + 1) = v149;
      v184 = v148;
      specialized Array.remove(at:)(a4 - 1);
      v146 = v184;
      a4 = *(v184 + 2);
      if (a4 <= 1)
      {
        goto LABEL_135;
      }
    }

    goto LABEL_161;
  }

LABEL_164:
  __break(1u);
}

{
  v5 = v4;
  v156 = a1;
  v181 = type metadata accessor for Prompt.Delimiter(0);
  v8 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181);
  v10 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Prompt.Attachment(0);
  v11 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v13 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt.PromptMarker(0);
  v167 = *(v14 - 8);
  v15 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v151 - v18;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v151 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v151 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v151 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v178 = &v151 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v183 = &v151 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v182 = &v151 - v33;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v154 = &v151 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v151 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v169 = a3;
  v45 = *(a3 + 8);
  if (v45 >= 1)
  {
    v152 = &v151 - v41;
    v153 = v39;
    v163 = v44;
    v46 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    v155 = a4;
    v171 = v43;
    v172 = v42;
    v179 = v27;
    v151 = v14;
    v162 = v13;
    while (1)
    {
      v48 = v46;
      v49 = v46 + 1;
      v160 = v47;
      v159 = v48;
      if (v49 >= v45)
      {
        v58 = v49;
        goto LABEL_27;
      }

      v170 = v45;
      v50 = *v169;
      v51 = *(v167 + 72);
      v52 = *v169 + v51 * v49;
      a3 = v152;
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v52, v152, type metadata accessor for Prompt.PromptMarker);
      v175 = v50;
      v53 = v50 + v51 * v159;
      v54 = v153;
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v53, v153, type metadata accessor for Prompt.PromptMarker);
      LODWORD(v176) = closure #1 in Prompt.init(_:)(a3, v54);
      if (v5)
      {
        outlined destroy of Prompt.Turn(v54, type metadata accessor for Prompt.PromptMarker);
        outlined destroy of Prompt.Turn(a3, type metadata accessor for Prompt.PromptMarker);
        goto LABEL_135;
      }

      v168 = 0;
      outlined destroy of Prompt.Turn(v54, type metadata accessor for Prompt.PromptMarker);
      outlined destroy of Prompt.Turn(a3, type metadata accessor for Prompt.PromptMarker);
      v55 = v159 + 2;
      v56 = v175 + v51 * (v159 + 2);
      v57 = v154;
      do
      {
        v58 = v170;
        if (v170 == v55)
        {
          goto LABEL_11;
        }

        v59 = v10;
        v60 = v51;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(v56, v57, type metadata accessor for Prompt.PromptMarker);
        v61 = v163;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(v52, v163, type metadata accessor for Prompt.PromptMarker);
        v62 = v168;
        v63 = closure #1 in Prompt.init(_:)(v57, v61);
        v168 = v62;
        if (v62)
        {
          outlined destroy of Prompt.Turn(v61, type metadata accessor for Prompt.PromptMarker);
          outlined destroy of Prompt.Turn(v57, type metadata accessor for Prompt.PromptMarker);

          return;
        }

        v64 = v63;
        a3 = type metadata accessor for Prompt.PromptMarker;
        outlined destroy of Prompt.Turn(v61, type metadata accessor for Prompt.PromptMarker);
        outlined destroy of Prompt.Turn(v57, type metadata accessor for Prompt.PromptMarker);
        ++v55;
        v51 = v60;
        v56 += v60;
        v52 += v60;
        v10 = v59;
        v13 = v162;
      }

      while (((v176 ^ v64) & 1) == 0);
      v58 = v55 - 1;
LABEL_11:
      v5 = v168;
      a4 = v155;
      v48 = v159;
      if ((v176 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v58 < v159)
      {
        goto LABEL_158;
      }

      if (v159 >= v58)
      {
LABEL_25:
        v27 = v179;
        goto LABEL_27;
      }

      a3 = v51 * (v58 - 1);
      v65 = v58 * v51;
      v170 = v58;
      v66 = v159;
      v67 = v159 * v51;
      do
      {
        if (v66 != --v58)
        {
          v176 = v58;
          v68 = *v169;
          if (!*v169)
          {
            goto LABEL_162;
          }

          v175 = v68 + v67;
          _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v68 + v67, v157, type metadata accessor for Prompt.PromptMarker);
          if (v67 < a3 || v175 >= v68 + v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v157, v68 + a3, type metadata accessor for Prompt.PromptMarker);
          v48 = v159;
          v58 = v176;
        }

        ++v66;
        a3 -= v51;
        v65 -= v51;
        v67 += v51;
      }

      while (v66 < v58);
      v5 = v168;
      a4 = v155;
      v27 = v179;
      v58 = v170;
LABEL_27:
      v69 = v169[1];
      if (v58 >= v69)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v58, v48))
      {
        goto LABEL_154;
      }

      if (v58 - v48 >= a4)
      {
LABEL_36:
        v71 = v58;
        if (v58 < v48)
        {
          goto LABEL_153;
        }

        goto LABEL_37;
      }

      if (__OFADD__(v48, a4))
      {
        break;
      }

      if ((v48 + a4) >= v69)
      {
        v70 = v169[1];
      }

      else
      {
        v70 = v48 + a4;
      }

      if (v70 < v48)
      {
        goto LABEL_157;
      }

      if (v58 == v70)
      {
        goto LABEL_36;
      }

      v168 = v5;
      v116 = *v169;
      v117 = *(v167 + 72);
      v118 = *v169 + v117 * (v58 - 1);
      v175 = -v117;
      v176 = v116;
      v119 = v48 - v58;
      v158 = v117;
      a4 = v116 + v58 * v117;
      v161 = v70;
      while (2)
      {
        v170 = v58;
        v164 = a4;
        v165 = v119;
        v166 = v118;
        v120 = v118;
        while (2)
        {
          v121 = v182;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(a4, v182, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v120, v183, type metadata accessor for Prompt.PromptMarker);
          v122 = v178;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v121, v178, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v122, v10, type metadata accessor for Prompt.Delimiter);
            v123 = *&v10[*(v181 + 20)];
            v124 = type metadata accessor for Prompt.Delimiter;
            v125 = v10;
          }

          else
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v122, v13, type metadata accessor for Prompt.Attachment);
            v123 = *&v13[*(v180 + 20)];
            v124 = type metadata accessor for Prompt.Attachment;
            v125 = v13;
          }

          outlined destroy of Prompt.Turn(v125, v124);
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v183, v27, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v27, v10, type metadata accessor for Prompt.Delimiter);
            v126 = *&v10[*(v181 + 20)];
            v127 = type metadata accessor for Prompt.Delimiter;
            v128 = v10;
          }

          else
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v27, v13, type metadata accessor for Prompt.Attachment);
            v126 = *&v13[*(v180 + 20)];
            v127 = type metadata accessor for Prompt.Attachment;
            v128 = v13;
          }

          outlined destroy of Prompt.Turn(v128, v127);
          if (v123 == v126)
          {
            v129 = v173;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v182, v173, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v129, v10, type metadata accessor for Prompt.Delimiter);
              v130 = *&v10[*(v181 + 24)];
              v131 = type metadata accessor for Prompt.Delimiter;
              v132 = v10;
            }

            else
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v129, v13, type metadata accessor for Prompt.Attachment);
              v130 = *&v13[*(v180 + 24)];
              v131 = type metadata accessor for Prompt.Attachment;
              v132 = v13;
            }

            outlined destroy of Prompt.Turn(v132, v131);
            v136 = v171;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v183, v171, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v136, v10, type metadata accessor for Prompt.Delimiter);
              v137 = *(v181 + 24);
              goto LABEL_108;
            }

            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v136, v13, type metadata accessor for Prompt.Attachment);
            v142 = *(v180 + 24);
LABEL_111:
            v139 = *&v13[v142];
            v140 = type metadata accessor for Prompt.Attachment;
            v141 = v13;
          }

          else
          {
            v133 = v174;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v182, v174, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v133, v10, type metadata accessor for Prompt.Delimiter);
              v130 = *&v10[*(v181 + 20)];
              v134 = type metadata accessor for Prompt.Delimiter;
              v135 = v10;
            }

            else
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v133, v13, type metadata accessor for Prompt.Attachment);
              v130 = *&v13[*(v180 + 20)];
              v134 = type metadata accessor for Prompt.Attachment;
              v135 = v13;
            }

            outlined destroy of Prompt.Turn(v135, v134);
            v138 = v172;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v183, v172, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v138, v13, type metadata accessor for Prompt.Attachment);
              v142 = *(v180 + 20);
              goto LABEL_111;
            }

            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v138, v10, type metadata accessor for Prompt.Delimiter);
            v137 = *(v181 + 20);
LABEL_108:
            v139 = *&v10[v137];
            v140 = type metadata accessor for Prompt.Delimiter;
            v141 = v10;
          }

          outlined destroy of Prompt.Turn(v141, v140);
          v143 = v130 < v139;
          a3 = type metadata accessor for Prompt.PromptMarker;
          outlined destroy of Prompt.Turn(v183, type metadata accessor for Prompt.PromptMarker);
          outlined destroy of Prompt.Turn(v182, type metadata accessor for Prompt.PromptMarker);
          if (v143)
          {
            if (!v176)
            {
              goto LABEL_159;
            }

            a3 = type metadata accessor for Prompt.PromptMarker;
            v144 = v177;
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(a4, v177, type metadata accessor for Prompt.PromptMarker);
            swift_arrayInitWithTakeFrontToBack();
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v144, v120, type metadata accessor for Prompt.PromptMarker);
            v120 += v175;
            a4 += v175;
            v145 = __CFADD__(v119++, 1);
            v27 = v179;
            if (v145)
            {
              goto LABEL_89;
            }

            continue;
          }

          break;
        }

        v27 = v179;
LABEL_89:
        v58 = v170 + 1;
        v118 = v166 + v158;
        v119 = v165 - 1;
        a4 = v164 + v158;
        v71 = v161;
        if (v170 + 1 != v161)
        {
          continue;
        }

        break;
      }

      v5 = v168;
      v48 = v159;
      if (v161 < v159)
      {
        goto LABEL_153;
      }

LABEL_37:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v47 = v160;
      }

      else
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v160 + 2) + 1, 1, v160);
      }

      a3 = *(v47 + 2);
      v72 = *(v47 + 3);
      a4 = a3 + 1;
      if (a3 >= v72 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), a3 + 1, 1, v47);
      }

      *(v47 + 2) = a4;
      v73 = &v47[16 * a3];
      *(v73 + 4) = v48;
      *(v73 + 5) = v71;
      v176 = *v156;
      if (!v176)
      {
        goto LABEL_163;
      }

      v161 = v71;
      if (a3)
      {
        while (1)
        {
          v74 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v75 = *(v47 + 4);
            v76 = *(v47 + 5);
            v85 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            v78 = v85;
LABEL_56:
            if (v78)
            {
              goto LABEL_142;
            }

            v91 = &v47[16 * a4];
            v93 = *v91;
            v92 = *(v91 + 1);
            v94 = __OFSUB__(v92, v93);
            v95 = v92 - v93;
            v96 = v94;
            if (v94)
            {
              goto LABEL_145;
            }

            v97 = &v47[16 * v74 + 32];
            v99 = *v97;
            v98 = *(v97 + 1);
            v85 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v85)
            {
              goto LABEL_148;
            }

            if (__OFADD__(v95, v100))
            {
              goto LABEL_149;
            }

            if (v95 + v100 >= v77)
            {
              if (v77 < v100)
              {
                v74 = a4 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v101 = &v47[16 * a4];
          v103 = *v101;
          v102 = *(v101 + 1);
          v85 = __OFSUB__(v102, v103);
          v95 = v102 - v103;
          v96 = v85;
LABEL_70:
          if (v96)
          {
            goto LABEL_144;
          }

          v104 = &v47[16 * v74];
          v106 = *(v104 + 4);
          v105 = *(v104 + 5);
          v85 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v85)
          {
            goto LABEL_147;
          }

          if (v107 < v95)
          {
            goto LABEL_3;
          }

LABEL_77:
          a3 = v74 - 1;
          if (v74 - 1 >= a4)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            v146 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
            goto LABEL_124;
          }

          if (!*v169)
          {
            goto LABEL_160;
          }

          v112 = v47;
          a4 = *&v47[16 * a3 + 32];
          v113 = *&v47[16 * v74 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v169 + *(v167 + 72) * a4, *v169 + *(v167 + 72) * *&v47[16 * v74 + 32], *v169 + *(v167 + 72) * v113, v176);
          if (v5)
          {
            goto LABEL_135;
          }

          if (v113 < a4)
          {
            goto LABEL_138;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v114 = v112;
          }

          else
          {
            v114 = specialized _ArrayBuffer._consumeAndCreateNew()(v112);
          }

          v27 = v179;
          if (a3 >= *(v114 + 2))
          {
            goto LABEL_139;
          }

          v115 = &v114[16 * a3];
          *(v115 + 4) = a4;
          *(v115 + 5) = v113;
          v184 = v114;
          specialized Array.remove(at:)(v74);
          v47 = v184;
          a4 = *(v184 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v79 = &v47[16 * a4 + 32];
        v80 = *(v79 - 64);
        v81 = *(v79 - 56);
        v85 = __OFSUB__(v81, v80);
        v82 = v81 - v80;
        if (v85)
        {
          goto LABEL_140;
        }

        v84 = *(v79 - 48);
        v83 = *(v79 - 40);
        v85 = __OFSUB__(v83, v84);
        v77 = v83 - v84;
        v78 = v85;
        if (v85)
        {
          goto LABEL_141;
        }

        v86 = &v47[16 * a4];
        v88 = *v86;
        v87 = *(v86 + 1);
        v85 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v85)
        {
          goto LABEL_143;
        }

        v85 = __OFADD__(v77, v89);
        v90 = v77 + v89;
        if (v85)
        {
          goto LABEL_146;
        }

        if (v90 >= v82)
        {
          v108 = &v47[16 * v74 + 32];
          v110 = *v108;
          v109 = *(v108 + 1);
          v85 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v85)
          {
            goto LABEL_152;
          }

          if (v77 < v111)
          {
            v74 = a4 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v45 = v169[1];
      v46 = v161;
      a4 = v155;
      if (v161 >= v45)
      {
        goto LABEL_121;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_121:
  a3 = *v156;
  if (*v156)
  {
    a4 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_155;
    }

    v146 = a4;
LABEL_124:
    v184 = v146;
    a4 = *(v146 + 2);
    if (a4 < 2)
    {
LABEL_135:

      return;
    }

    while (*v169)
    {
      v147 = *&v146[16 * a4];
      v148 = v146;
      v149 = *&v146[16 * a4 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*v169 + *(v167 + 72) * v147, *v169 + *(v167 + 72) * *&v146[16 * a4 + 16], *v169 + *(v167 + 72) * v149, a3);
      if (v5)
      {
        goto LABEL_135;
      }

      if (v149 < v147)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = specialized _ArrayBuffer._consumeAndCreateNew()(v148);
      }

      if (a4 - 2 >= *(v148 + 2))
      {
        goto LABEL_151;
      }

      v150 = &v148[16 * a4];
      *v150 = v147;
      *(v150 + 1) = v149;
      v184 = v148;
      specialized Array.remove(at:)(a4 - 1);
      v146 = v184;
      a4 = *(v184 + 2);
      if (a4 <= 1)
      {
        goto LABEL_135;
      }
    }

    goto LABEL_161;
  }

LABEL_164:
  __break(1u);
}