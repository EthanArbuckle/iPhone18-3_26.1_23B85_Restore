uint64_t partial apply for thunk for @callee_guaranteed (@unowned _NSRange, @unowned NLTokenizerAttributes, @unowned UnsafeMutablePointer<ObjCBool>) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in NLTokenizer.enumerateTokens(in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v8 = v4[5];
  result = Range<>.init(_:in:)();
  if ((v11 & 1) == 0)
  {
    result = v9(result);
    if ((result & 1) == 0)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t NLTagger.tag(at:unit:scheme:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [v4 string];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v12 = String.Index.utf16Offset<A>(in:)();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v13[1] = 0;
  v14 = [v4 tagAtIndex:v12 unit:a2 scheme:a3 tokenRange:{v13, v9, v11}];
  v15 = *v13;
  v16 = v13[1];
  result = Range<>.init(_:in:)();
  if (v18)
  {
    __break(1u);
  }

  else
  {

    MEMORY[0x238394470](v13, -1, -1);
    return v14;
  }

  return result;
}

id NLTokenizer.enumerateTokens(in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [v4 string];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v19[6] = v9;
    v19[7] = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    v12 = _NSRange.init<A, B>(_:in:)();
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v11;
    v15[4] = a3;
    v15[5] = a4;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in NLTokenizer.enumerateTokens(in:using:);
    *(v16 + 24) = v15;
    v19[4] = partial apply for thunk for @callee_guaranteed (@unowned _NSRange, @unowned NLTokenizerAttributes, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v19[5] = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @unowned NLTokenizerAttributes, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v19[3] = &block_descriptor;
    v17 = _Block_copy(v19);

    [v4 enumerateTokensInRange:v12 usingBlock:{v14, v17}];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_232D572B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
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

unint64_t lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *NLLanguageRecognizer.languageHypotheses(withMaximum:)(uint64_t a1)
{
  v2 = [v1 languageHypothesesWithMaximum_];
  type metadata accessor for NLLanguage(0);
  type metadata accessor for NSNumber();
  lazy protocol witness table accessor for type NLLanguage and conformance NLLanguage();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10NLLanguageaSdGMd, &_ss18_DictionaryStorageCySo10NLLanguageaSdGMR);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = (result + 8);
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(v3 + 56) + 8 * v15);
      v17 = *(*(v3 + 48) + 8 * v15);
      result = [v16 doubleValue];
      *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      *(v5[6] + 8 * v15) = v17;
      *(v5[7] + 8 * v15) = v18;
      v19 = v5[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v5[2] = v21;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        return v5;
      }

      v14 = *(v3 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for NLLanguage(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type NLLanguage and conformance NLLanguage()
{
  result = lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage;
  if (!lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage);
  }

  return result;
}

uint64_t NLTokenizer.tokens(for:)(uint64_t a1, uint64_t a2)
{
  v27 = MEMORY[0x277D84F90];
  v18[2] = &v27;
  v5 = [v2 string];
  if (!v5)
  {
    return v27;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  aBlock = a1;
  v20 = a2;
  v25 = v7;
  v26 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v10 = _NSRange.init<A, B>(_:in:)();
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v9;
  v13[4] = partial apply for closure #1 in NLTokenizer.tokens(for:);
  v13[5] = v18;
  v14 = swift_allocObject();
  *(v14 + 16) = closure #1 in NLTokenizer.enumerateTokens(in:using:)partial apply;
  *(v14 + 24) = v13;
  v23 = thunk for @callee_guaranteed (@unowned _NSRange, @unowned NLTokenizerAttributes, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @unowned NLTokenizerAttributes, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v22 = &block_descriptor_14;
  v15 = _Block_copy(&aBlock);

  [v2 enumerateTokensInRange:v10 usingBlock:{v12, v15}];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in NLTokenizer.tokens(for:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v7 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *a4 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    *a4 = v7;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  return 1;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t _sSo5NLTagaSYSCSY8rawValue03RawC0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_232D57B34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232D57B7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_232D57BF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = NLLanguageRecognizer.languageHints.getter();
  *a2 = result;
  return result;
}

void sub_232D57C24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  NLLanguageRecognizer.languageHints.setter(v4);
}

uint64_t NLTokenizer.tokenRange(at:)()
{
  v1 = [v0 string];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  lazy protocol witness table accessor for type String and conformance String();
  [v0 tokenRangeAtIndex_];
  NSNotFound.getter();
  result = Range<>.init(_:in:)();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = result;

    return v8;
  }

  return result;
}

uint64_t NLTokenizer.tokenRange(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 string];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v11 = _NSRange.init<A, B>(_:in:)();
  v13 = [v3 tokenRangeForRange_];
  if (v13 == NSNotFound.getter())
  {
    String.Index.utf16Offset<A>(in:)();
  }

  result = Range<>.init(_:in:)();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v16 = result;

    return v16;
  }

  return result;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for _NSRange(uint64_t result, int a2, int a3)
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

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NLTag(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NLTag(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NLTag@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x238393F80](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NLTag()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x238393FF0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NLTag()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NLTag()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NLTag(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NLTag(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NLTag and conformance NLTag(&lazy protocol witness table cache variable for type NLTag and conformance NLTag, type metadata accessor for NLTag);
  v3 = lazy protocol witness table accessor for type NLTag and conformance NLTag(&lazy protocol witness table cache variable for type NLTag and conformance NLTag, type metadata accessor for NLTag);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type NLTag and conformance NLTag(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NLTag@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x238393F80](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NLLanguage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NLTag and conformance NLTag(&lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage, type metadata accessor for NLLanguage);
  v3 = lazy protocol witness table accessor for type NLTag and conformance NLTag(&lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t NLContextualEmbeddingResult.tokenVector(at:)()
{
  v1 = [v0 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v2 = String.Index.utf16Offset<A>(in:)();
  v3 = swift_slowAlloc();
  *v3 = 0;
  v3[1] = 0;
  v4 = [v0 tokenVectorAtIndex:v2 tokenRange:v3];
  if (!v4)
  {

    MEMORY[0x238394470](v3, -1, -1);
    return v4;
  }

  type metadata accessor for NSNumber();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v18 = v5;
    }

    else
    {
      v18 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = MEMORY[0x2383940E0](v18);
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v6)
  {
    v19 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    v8 = 0;
    v4 = v19;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x238394060](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      [v9 doubleValue];
      v12 = v11;

      v14 = v19[2];
      v13 = v19[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      v19[2] = v14 + 1;
      v19[v14 + 4] = v12;
    }

    while (v6 != v8);
  }

  v15 = *v3;
  v16 = v3[1];
  result = Range<>.init(_:in:)();
  if ((v17 & 1) == 0)
  {

    MEMORY[0x238394470](v3, -1, -1);
    return v4;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t NLContextualEmbeddingResult.enumerateTokenVectors(in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 string];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v19[6] = v8;
  v19[7] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v11 = _NSRange.init<A, B>(_:in:)();
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v10;
  v14[4] = a3;
  v14[5] = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in NLContextualEmbeddingResult.enumerateTokenVectors(in:using:);
  *(v15 + 24) = v14;
  v19[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSNumber], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v19[5] = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSNumber], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v19[3] = &block_descriptor_0;
  v16 = _Block_copy(v19);

  [v4 enumerateTokenVectorsInRange:v11 usingBlock:{v13, v16}];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in NLContextualEmbeddingResult.enumerateTokenVectors(in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void))
{
  result = Range<>.init(_:in:)();
  if ((v12 & 1) == 0)
  {
    v13 = result;
    v14 = v11;
    if (a1 >> 62)
    {
      if (a1 < 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = MEMORY[0x2383940E0](v25);
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      v28 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = v13;
      v27 = a7;
      v17 = 0;
      v16 = v28;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x238394060](v17, a1);
        }

        else
        {
          v18 = *(a1 + 8 * v17 + 32);
        }

        v19 = v18;
        [v18 doubleValue];
        v21 = v20;

        v23 = *(v28 + 16);
        v22 = *(v28 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        ++v17;
        *(v28 + 16) = v23 + 1;
        *(v28 + 8 * v23 + 32) = v21;
      }

      while (v15 != v17);
      a7 = v27;
      v13 = v26;
    }

    v24 = a7(v16, v13, v14);

    if ((v24 & 1) == 0)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [NSNumber], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for NSNumber();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9(v10, a3, a4, a5);
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed [NSNumber], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SdtGMd, &_ss23_ContiguousArrayStorageCySS_SdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSSdGGMd, &_ss23_ContiguousArrayStorageCySDySSSdGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSdGMd, &_sSDySSSdGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo5NLTagaSo8NSNumberCG_SS_Sdts5NeverOTg5014_sSo5NLTagaSo8e36CSSSdIgggod_AB3key_AD5valuetSS_Sdts5f17OIegnrzr_TR0122_sJ164NLTaggerC15NaturalLanguageE13tagHypotheses2at4unit6scheme12maximumCountSDySSSdG_SnySS5IndexVGtAK_So11NLTokenUnitVSo11a24SchemeaSitFSS_SdtSo0N0a_gB7CtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v29 = *(a1 + 36);
  v27 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = *(*(a1 + 48) + 8 * v7);
    v12 = *(*(a1 + 56) + 8 * v7);
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v14;
    result = [v12 doubleValue];
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = v15;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v15 = v26;
    }

    *(v30 + 16) = v17 + 1;
    v18 = (v30 + 24 * v17);
    v18[4] = v13;
    v18[5] = v28;
    v18[6] = v15;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v19 = *(a1 + 64 + 8 * v10);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 72 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = outlined consume of [NLTag : NSNumber].Index._Variant(v7, v29, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = outlined consume of [NLTag : NSNumber].Index._Variant(v7, v29, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t NLTagger.tokenRange(at:unit:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v3 string];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  lazy protocol witness table accessor for type String and conformance String();
  [v3 tokenRangeAtIndex:String.Index.utf16Offset<A>(in:)() unit:{a2, v7, v9}];
  NSNotFound.getter();
  result = Range<>.init(_:in:)();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v12 = result;

    return v12;
  }

  return result;
}

uint64_t NLTagger.tokenRange(for:unit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 string];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v13 = _NSRange.init<A, B>(_:in:)();
  v15 = [v4 tokenRangeForRange:v13 unit:{v14, a3, v10, v12, a1, a2}];
  if (v15 == NSNotFound.getter())
  {
    String.Index.utf16Offset<A>(in:)();
  }

  result = Range<>.init(_:in:)();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v18 = result;

    return v18;
  }

  return result;
}

uint64_t NLTagger.tagHypotheses(at:unit:scheme:maximumCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [v5 string];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v25[0] = v11;
  v25[1] = v13;
  lazy protocol witness table accessor for type String and conformance String();
  v14 = String.Index.utf16Offset<A>(in:)();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v15[1] = 0;
  v16 = [v5 tagHypothesesAtIndex:v14 unit:a2 scheme:a3 maximumCount:a4 tokenRange:v15];
  type metadata accessor for NLTag(0);
  type metadata accessor for NSNumber();
  lazy protocol witness table accessor for type NLTag and conformance NLTag();
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo5NLTagaSo8NSNumberCG_SS_Sdts5NeverOTg5014_sSo5NLTagaSo8e36CSSSdIgggod_AB3key_AD5valuetSS_Sdts5f17OIegnrzr_TR0122_sJ164NLTaggerC15NaturalLanguageE13tagHypotheses2at4unit6scheme12maximumCountSDySSSdG_SnySS5IndexVGtAK_So11NLTokenUnitVSo11a24SchemeaSitFSS_SdtSo0N0a_gB7CtXEfU_Tf3nnnpf_nTf1cn_n(v17) + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v18 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v25[0] = v18;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v19, 1, v25);

  v20 = v25[0];
  v21 = *v15;
  v22 = v15[1];
  Range<>.init(_:in:)();
  if (v23)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    MEMORY[0x238394470](v15, -1, -1);
    return v20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NLTag and conformance NLTag()
{
  result = lazy protocol witness table cache variable for type NLTag and conformance NLTag;
  if (!lazy protocol witness table cache variable for type NLTag and conformance NLTag)
  {
    type metadata accessor for NLTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLTag and conformance NLTag);
  }

  return result;
}

id NLTagger.enumerateTags(in:unit:scheme:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = [v8 string];
  if (result)
  {
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = a5;
    v18 = v17;

    aBlock[6] = v16;
    aBlock[7] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    v19 = _NSRange.init<A, B>(_:in:)();
    v21 = v20;
    v22 = swift_allocObject();
    v22[2] = v16;
    v22[3] = v18;
    v22[4] = a6;
    v22[5] = a7;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in NLTagger.enumerateTags(in:unit:scheme:options:using:);
    *(v23 + 24) = v22;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed NLTag?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NLTag?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_1;
    v24 = _Block_copy(aBlock);

    [v8 enumerateTagsInRange:v19 unit:v21 scheme:a3 options:a4 usingBlock:{v25, v24}];
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if (v24)
    {
      __break(1u);
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed NLTag?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = a2;
  v10(a2, a3, a4, a5);
}

uint64_t NLTagger.tags(in:unit:scheme:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = MEMORY[0x277D84F90];
  v25[2] = &v34;
  v12 = [v6 string];
  if (!v12)
  {
    return v34;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  aBlock = a1;
  v27 = a2;
  v32 = v14;
  v33 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v17 = _NSRange.init<A, B>(_:in:)();
  v19 = v18;
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = v16;
  v20[4] = partial apply for closure #1 in NLTagger.tags(in:unit:scheme:options:);
  v20[5] = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = closure #1 in NLTagger.enumerateTags(in:unit:scheme:options:using:)partial apply;
  *(v21 + 24) = v20;
  v30 = thunk for @callee_guaranteed (@guaranteed NLTag?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v31 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed NLTag?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v29 = &block_descriptor_14_0;
  v22 = _Block_copy(&aBlock);

  [v6 enumerateTagsInRange:v17 unit:v19 scheme:a3 options:a4 usingBlock:{a5, v22}];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v34;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in NLTagger.tags(in:unit:scheme:options:)(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = *a4;
  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *a4 = v8;
  }

  v12 = v8[2];
  v11 = v8[3];
  if (v12 >= v11 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
    *a4 = v8;
  }

  v8[2] = v12 + 1;
  v13 = &v8[3 * v12];
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  return 1;
}

id NLTagger.setLanguage(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = [v4 string];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    v14 = _NSRange.init<A, B>(_:in:)();
    return [v4 *a4];
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v6 & 1);
    v18 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v8;
  v24[1] = v7;
  *(v23[7] + 8 * v11) = v9;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v15)
  {
    v23[2] = v26;
    if (v4 != 1)
    {
      v6 = a1 + 9;
      v27 = 1;
      while (v27 < a1[2])
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v28 = *a3;

        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v30;
        if (v28[3] < v33)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
          v34 = *a3;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v36 = *a3;
        *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = (v36[6] + 16 * v29);
        *v37 = v8;
        v37[1] = v7;
        *(v36[7] + 8 * v29) = v9;
        v38 = v36[2];
        v15 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v27;
        v36[2] = v39;
        v6 += 3;
        if (v4 == v27)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  _StringGuts.grow(_:)(30);
  MEMORY[0x238393FE0](0xD00000000000001BLL, 0x8000000232D5D090);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x238393FE0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed NLTag?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in NLTagger.enumerateTags(in:unit:scheme:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v10 = v4[4];
  v9 = v4[5];
  result = Range<>.init(_:in:)();
  if ((v13 & 1) == 0)
  {
    result = v10(a1, result, v12);
    if ((result & 1) == 0)
    {
      *a4 = 1;
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
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

void *NLModel.predictedLabelHypotheses(for:maximumCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x238393F80]();
  v6 = [v3 predictedLabelHypothesesForString:v5 maximumCount:a3];

  type metadata accessor for NSNumber();
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v29 = (result + 8);
  v30 = v7;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = (*(v30 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v30 + 56) + 8 * v19);

      result = [v23 doubleValue];
      *&v29[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
      v24 = (v9[6] + 16 * v19);
      *v24 = v21;
      v24[1] = v22;
      *(v9[7] + 8 * v19) = v25;
      v26 = v9[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v9[2] = v28;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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

        return v9;
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id NLModel.predictedLabelHypotheses(forTokens:maximumCount:)(uint64_t a1, uint64_t a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v2 predictedLabelHypothesesForTokens:isa maximumCount:a2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd, &_sSDySSSo8NSNumberCGMR);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);
  if (v7)
  {
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v40;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v10 = 0;
    v36 = v6 + 32;
    v34 = v7;
    v35 = v6;
    while (v10 < *(v6 + 16))
    {
      v37 = v10 + 1;
      v38 = v8;
      v11 = *(v36 + 8 * v10);
      v12 = static _DictionaryStorage.copy(original:)();
      v13 = v12;
      v14 = 1 << *(v11 + 32);
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v11 + 64);
      v17 = (v14 + 63) >> 6;
      v39 = v12 + 64;

      v18 = 0;
      if (v16)
      {
        while (1)
        {
          v19 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
LABEL_14:
          v22 = v19 | (v18 << 6);
          v23 = (*(v11 + 48) + 16 * v22);
          v25 = *v23;
          v24 = v23[1];
          v26 = *(*(v11 + 56) + 8 * v22);

          result = [v26 doubleValue];
          *(v39 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
          v27 = (v13[6] + 16 * v22);
          *v27 = v25;
          v27[1] = v24;
          *(v13[7] + 8 * v22) = v28;
          v29 = v13[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            break;
          }

          v13[2] = v31;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

LABEL_24:
        __break(1u);
        break;
      }

LABEL_9:
      v20 = v18;
      while (1)
      {
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v18 >= v17)
        {
          break;
        }

        v21 = *(v11 + 64 + 8 * v18);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      v8 = v38;
      v33 = *(v38 + 16);
      v32 = *(v38 + 24);
      if (v33 >= v32 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v8 = v38;
      }

      *(v8 + 16) = v33 + 1;
      *(v8 + 8 * v33 + 32) = v13;
      v10 = v37;
      v6 = v35;
      if (v37 == v34)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

Swift::Double __swiftcall NLEmbedding.distance(between:and:distanceType:)(Swift::String between, Swift::String and, NLDistanceType distanceType)
{
  object = and._object;
  countAndFlagsBits = and._countAndFlagsBits;
  v7 = MEMORY[0x238393F80](between._countAndFlagsBits, between._object);
  v8 = MEMORY[0x238393F80](countAndFlagsBits, object);
  [v3 distanceBetweenString:v7 andString:v8 distanceType:distanceType];
  v10 = v9;

  return v10;
}

uint64_t NLEmbedding.enumerateNeighbors(for:maximumCount:distanceType:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x238393F80]();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in NLEmbedding.enumerateNeighbors(for:maximumCount:distanceType:using:);
  *(v14 + 24) = v13;
  v17[4] = partial apply for thunk for @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v17[3] = &block_descriptor_2;
  v15 = _Block_copy(v17);

  [v7 enumerateNeighborsForString:v12 maximumCount:a3 distanceType:a4 usingBlock:v15];

  _Block_release(v15);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in NLEmbedding.enumerateNeighbors(for:maximumCount:distanceType:using:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5();
  if ((result & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4(v5, a2);
}

uint64_t NLEmbedding.neighbors(for:maximumCount:distanceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v15 = MEMORY[0x277D84F90];
  v13[2] = &v15;
  v8 = MEMORY[0x238393F80]();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in NLEmbedding.neighbors(for:maximumCount:distanceType:);
  *(v9 + 24) = v13;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in NLEmbedding.enumerateNeighbors(for:maximumCount:distanceType:using:)partial apply;
  *(v10 + 24) = v9;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_14_1;
  v11 = _Block_copy(aBlock);

  [v5 enumerateNeighborsForString:v8 maximumCount:a3 distanceType:a4 usingBlock:v11];

  _Block_release(v11);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if ((a4 & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t NLEmbedding.enumerateNeighbors(for:maximumCount:distanceType:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3;
  v10 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = (a1 + 32);
    do
    {
      v15 = *v14++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(aBlock[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v11;
    }

    while (v11);
    v9 = a3;
    v10 = a2;
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = closure #1 in NLEmbedding.enumerateNeighbors(for:maximumCount:distanceType:using:)partial apply;
  *(v19 + 24) = v18;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_24;
  v20 = _Block_copy(aBlock);

  [v6 enumerateNeighborsForVector:isa maximumCount:v10 distanceType:v9 usingBlock:v20];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t NLEmbedding.neighbors(for:maximumCount:distanceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = MEMORY[0x277D84F90];
  v18[2] = &v20;
  v7 = *(a1 + 16);
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(aBlock[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v7;
    }

    while (v7);
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in NLEmbedding.neighbors(for:maximumCount:distanceType:);
  *(v13 + 24) = v18;
  v14 = swift_allocObject();
  *(v14 + 16) = closure #1 in NLEmbedding.enumerateNeighbors(for:maximumCount:distanceType:using:)partial apply;
  *(v14 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Double, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_35;
  v15 = _Block_copy(aBlock);

  [v4 enumerateNeighborsForVector:isa maximumCount:a2 distanceType:a3 usingBlock:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in NLEmbedding.neighbors(for:maximumCount:distanceType:)(uint64_t a1, uint64_t a2, void **a3, double a4)
{
  v8 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *a3 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    *a3 = v8;
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  v12[6] = a4;
  return 1;
}

Swift::OpaquePointer_optional __swiftcall NLEmbedding.vector(for:)(Swift::String a1)
{
  v2 = MEMORY[0x238393F80](a1._countAndFlagsBits, a1._object);
  v3 = [v1 vectorForString_];

  if (!v3)
  {
    goto LABEL_18;
  }

  type metadata accessor for NSNumber();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v15 = v5;
    }

    else
    {
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = MEMORY[0x2383940E0](v15);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_17:

    v3 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_4:
  v16 = MEMORY[0x277D84F90];
  v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = 0;
  v3 = v16;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x238394060](v8, v5);
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    [v9 doubleValue];
    v12 = v11;

    v14 = v16[2];
    v13 = v16[3];
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    }

    ++v8;
    v16[2] = v14 + 1;
    v16[v14 + 4] = v12;
  }

  while (v6 != v8);

LABEL_18:
  v7 = v3;
LABEL_20:
  result.value._rawValue = v7;
  result.is_nil = v4;
  return result;
}

id static NLEmbedding.write(_:language:revision:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo8NSNumberCGGMd, &_ss18_DictionaryStorageCySSSaySo8NSNumberCGGMR);
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  v6 = 0;
  v46 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v44 = v4;
  v45 = v4 + 64;
  v42 = v8;
  v43 = v13;
  if ((v11 & v7) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v6 >= v13)
    {
      break;
    }

    v16 = *(v42 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      while (2)
      {
        v17 = v14 | (v6 << 6);
        v18 = (*(v46 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v46 + 56) + 8 * v17);
        v22 = *(v21 + 16);
        if (v22)
        {
          v48 = *v18;
          v49 = v17;
          v50[0] = MEMORY[0x277D84F90];
          v47 = v19;

          specialized ContiguousArray.reserveCapacity(_:)();
          v23 = 32;
          do
          {
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = *(v50[0] + 2);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v23 += 8;
            --v22;
          }

          while (v22);

          v25 = v50[0];
          v13 = v43;
          v5 = v44;
          v17 = v49;
          v26 = v47;
          v20 = v48;
        }

        else
        {

          v25 = MEMORY[0x277D84F90];
        }

        *(v45 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v27 = (v5[6] + 16 * v17);
        *v27 = v20;
        v27[1] = v26;
        *(v5[7] + 8 * v17) = v25;
        v28 = v5[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (!v29)
        {
          v5[2] = v30;
          if (!v12)
          {
            goto LABEL_5;
          }

LABEL_4:
          v14 = __clz(__rbit64(v12));
          v12 &= v12 - 1;
          continue;
        }

        break;
      }

LABEL_23:
      __break(1u);
    }
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  v50[0] = 0;
  v36 = [ObjCClassFromMetadata writeEmbeddingForDictionary:isa language:a2 revision:a3 toURL:v34 error:v50];

  if (v36)
  {
    result = v50[0];
  }

  else
  {
    v39 = v50[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo5NLTagaSg_SnySS5IndexVGtGMd, &_ss23_ContiguousArrayStorageCySo5NLTagaSg_SnySS5IndexVGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5NLTagaSg_SnySS5IndexVGtMd, &_sSo5NLTagaSg_SnySS5IndexVGtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SdtGMd, &_ss23_ContiguousArrayStorageCySS_SdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *NLLanguageRecognizer.languageHints.getter()
{
  v1 = [v0 languageHints];
  type metadata accessor for NLLanguage(0);
  type metadata accessor for NSNumber();
  lazy protocol witness table accessor for type NLLanguage and conformance NLLanguage();
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10NLLanguageaSdGMd, &_ss18_DictionaryStorageCySo10NLLanguageaSdGMR);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = (result + 8);
  if (v8)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(*(v2 + 56) + 8 * v14);
      v16 = *(*(v2 + 48) + 8 * v14);
      result = [v15 doubleValue];
      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(v4[6] + 8 * v14) = v16;
      *(v4[7] + 8 * v14) = v17;
      v18 = v4[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v4[2] = v20;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        return v4;
      }

      v13 = *(v2 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void NLLanguageRecognizer.languageHints.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10NLLanguageaSo8NSNumberCGMd, &_ss18_DictionaryStorageCySo10NLLanguageaSo8NSNumberCGMR);
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      v15 = *(*(a1 + 56) + 8 * v13);
      v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v17 = v14;
      v18 = [v16 initWithDouble_];
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + 8 * v13) = v17;
      *(v3[7] + 8 * v13) = v18;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v8)
      {
        break;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    type metadata accessor for NLLanguage(0);
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NLLanguage and conformance NLLanguage();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v22 setLanguageHints_];
  }
}

void (*NLLanguageRecognizer.languageHints.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NLLanguageRecognizer.languageHints.getter();
  return NLLanguageRecognizer.languageHints.modify;
}

void NLLanguageRecognizer.languageHints.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NLLanguageRecognizer.languageHints.setter(v5);
  }

  else
  {
    NLLanguageRecognizer.languageHints.setter(*a1);
  }
}