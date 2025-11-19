uint64_t closure #2 in PluginCapabilityCatalog.init(from:)@<X0>(void *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v18 - v14;
  a2(*a1, a1[1]);
  if (__swift_getEnumTagSinglePayload(v15, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v15, v10);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    *(a5 + 24) = a3;
    *(a5 + 32) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
    return (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, v15, a3);
  }

  return result;
}

uint64_t PluginCapabilityCatalog.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PluginCapabilityCatalog.__deallocating_deinit()
{
  PluginCapabilityCatalog.deinit();
  v0 = OUTLINED_FUNCTION_23();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PluginCapabilityCatalog<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 256))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t one-time initialization function for catalogPackageInflator()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v5, static CodingUserInfoKey.catalogPackageInflator);
  v6 = __swift_project_value_buffer(v5, static CodingUserInfoKey.catalogPackageInflator);
  CodingUserInfoKey.init(rawValue:)();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_11(v5);
    return (*(v8 + 32))(v6, v4, v5);
  }

  return result;
}

uint64_t static CodingUserInfoKey.catalogPackageInflator.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  __swift_project_value_buffer(v2, static CodingUserInfoKey.catalogPackageInflator);
  OUTLINED_FUNCTION_5_11(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v17 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4;
  v19 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v19 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v18 + 48) + *(v6 + 72) * i, a3);
    v13 = *(v17 + 8);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v9, a3);
    if (v14)
    {
      break;
    }
  }

  return i;
}

uint64_t outlined init with copy of PluginPackage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PluginCapabilityCatalog.init(finder:)()
{
  OUTLINED_FUNCTION_25_3();
  result = (*(v1 + 8))(v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> (@owned [A])@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)(v1[7], a1);
}

uint64_t partial apply for closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t partial apply for closure #1 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[7];
  return closure #1 in static PluginCapabilityCatalog.load<A>(finder:cache:)(v1[3], v1[6], a1);
}

uint64_t partial apply for closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[6];
  return closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)(a1, a2, v3[2], v3[5], a3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)(void *a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  return v2(*a1, a1[1]);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined destroy of PluginPackage?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_11(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PluginCatalogError and conformance PluginCatalogError()
{
  result = lazy protocol witness table cache variable for type PluginCatalogError and conformance PluginCatalogError;
  if (!lazy protocol witness table cache variable for type PluginCatalogError and conformance PluginCatalogError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginCatalogError and conformance PluginCatalogError);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out A?)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in PluginCapabilityCatalog.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  return closure #1 in PluginCapabilityCatalog.init(from:)(a1, a2);
}

uint64_t partial apply for closure #2 in PluginCapabilityCatalog.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 48);
  return closure #2 in PluginCapabilityCatalog.init(from:)(a1, *(v2 + 40), *(v2 + 16), *(v2 + 32), a2);
}

uint64_t associated type witness table accessor for PluginCapabilityExposing.PluginCapability : Decodable in PluginCapabilityCatalog<A>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 144;
  v3 = *(a2 + 144);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for PluginCapabilityExposing.PluginCapability : Encodable in PluginCapabilityCatalog<A>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 144;
  v3 = *(a2 + 144);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for PluginCapabilityExposing.PluginCapability : Hashable in PluginCapabilityCatalog<A>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 144;
  v3 = *(a2 + 144);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

_BYTE *storeEnumTagSinglePayload for PluginCapabilityCatalog.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t destroy for PluginCatalogError(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {

    v3 = *(a1 + 24);
  }

  return result;
}

uint64_t initializeWithCopy for PluginCatalogError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v3;
    v4 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v4;
  }

  return a1;
}

void *assignWithCopy for PluginCatalogError(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];

      return a1;
    }

LABEL_7:
    v9 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v9;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    v7 = a1[1];

    v8 = a1[3];

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;

  return a1;
}

uint64_t assignWithTake for PluginCatalogError(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 8);
  if (v4 < 0xFFFFFFFF)
  {

    v7 = *(a1 + 24);

LABEL_5:
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for PluginCatalogError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for PluginCatalogError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PluginCatalogError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for PluginCatalogError(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PluginCapabilityCatalog.init(from:)(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1, a1[1]);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PluginCapabilityCatalog.encode(to:)()
{
  OUTLINED_FUNCTION_25_3();
  result = (*(v1 + 16))(v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t outlined init with copy of PluginPackage(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_11(v3);
  (*v4)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return swift_deallocPartialClassInstance();
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v29 = result;
  for (i = a2; v7; v10 = v11)
  {
    v11 = v10;
LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(v3 + 48) + ((v11 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];
    v16 = *a2;

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    if (v18)
    {
      v19 = v17;
      v20 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *a2;
      v22 = *(*a2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v23 = *(*(v31 + 48) + 16 * v19 + 8);

      v24 = (*(v31 + 56) + 16 * v19);
      v25 = *v24;
      v26 = v24[1];
      _NativeDictionary._delete(at:)();
      *i = v31;
      v27 = v25;
      v28 = v26;
      v3 = v29;
      a2 = i;
      outlined consume of Data._Representation(v27, v28);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Dictionary._Variant.removeValue(forKey:)(&v14);
    outlined consume of Data?(v14, *(&v14 + 1));
    specialized Set._Variant.remove(_:)(v12, v13);
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

{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = outlined consume of Data._Representation(v15, v16))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = (v8 << 10) | (16 * v9);
    v11 = (*(a1 + 48) + v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(a1 + 56) + v10);
    v15 = *v14;
    v16 = v14[1];

    outlined copy of Data._Representation(v15, v16);
    specialized Set._Variant.remove(_:)(v12, v13);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1E12A8FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v13 = result;
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

    specialized Set._Variant.insert(_:)();
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

      return v13;
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

uint64_t SiriEnvironmentKeyValuePairs.init()@<X0>(uint64_t *a1@<X8>)
{
  result = Dictionary.init(dictionaryLiteral:)();
  v3 = MEMORY[0x1E69E7CD0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriEnvironmentKeyValuePairs.update(addingValues:removingKeys:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v6);
  OUTLINED_FUNCTION_3_14();

  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v7);
  specialized Set.subtracting(_:)(v8, v2);

  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v9);

  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v11);
  specialized _NativeSet.intersection(_:)(v12, v10);

  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.environment);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = Set.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = Set.description.getter();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v40);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = Set.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v40);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_1DD1FF000, v14, v15, "SiriEnvironmentKeyPairs adding keys: %s, overwriting keys: %s, and removing keys: %s", v16, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v28, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v3);
  specialized Sequence.forEach(_:)(a2, v3);
  v29 = v3[1];

  v3[1] = specialized Set.union<A>(_:)(v30, v29);
  specialized Sequence.forEach(_:)(a1);

  v31 = specialized _NativeSet.genericIntersection<A>(_:)(a1, a2);
  if (*(v31 + 16))
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v34 = 136315138;
      v36 = Set.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v40);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1DD1FF000, v32, v33, "Atempted to both add and remove keys %s, these keys will be ignored", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    specialized Sequence.forEach(_:)(v31);
  }
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

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SiriEnvironmentKeyValuePairs.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566465646461 && a2 == 0xEB00000000736575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x566465766F6D6572 && a2 == 0xED00007365756C61)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t SiriEnvironmentKeyValuePairs.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x566465766F6D6572;
  }

  else
  {
    return 0x6C61566465646461;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriEnvironmentKeyValuePairs.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriEnvironmentKeyValuePairs.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriEnvironmentKeyValuePairs.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriEnvironmentKeyValuePairs.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriEnvironmentKeyValuePairs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMR);
  v4 = OUTLINED_FUNCTION_5_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  v11 = &v16 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v12;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data);
  OUTLINED_FUNCTION_7_12();

  if (!v14)
  {
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
    OUTLINED_FUNCTION_7_12();
  }

  return (*(v6 + 8))(v11, v3);
}

uint64_t SiriEnvironmentKeyValuePairs.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMR);
  v5 = OUTLINED_FUNCTION_5_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = &v19 - v11;
  Dictionary.init(dictionaryLiteral:)();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v7;
    v15 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    v20 = 0;
    lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data);
    OUTLINED_FUNCTION_5_15();

    v16 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v20 = 1;
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
    OUTLINED_FUNCTION_5_15();
    (*(v14 + 8))(v12, v4);
    v18 = v21;
    *v15 = v16;
    v15[1] = v18;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void specialized _NativeSet.copy()()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  OUTLINED_FUNCTION_3_14();
  v7 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_1_18();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_0_23();
    while (v5)
    {
      OUTLINED_FUNCTION_2_17();
LABEL_15:
      OUTLINED_FUNCTION_6_14(v13);
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_4_13();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities14TypeIdentifierVGMd, "\bq");
  OUTLINED_FUNCTION_3_14();
  v7 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_1_18();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_0_23();
    while (v5)
    {
      OUTLINED_FUNCTION_2_17();
LABEL_15:
      OUTLINED_FUNCTION_6_14(v13);
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_4_13();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMd, &_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMR);
  OUTLINED_FUNCTION_3_14();
  v7 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_1_18();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_0_23();
    while (v5)
    {
      OUTLINED_FUNCTION_2_17();
LABEL_15:
      v15 = v13 | (v3 << 6);
      v16 = (*(v1 + 48) + (v15 << 6));
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[3];
      v25[2] = v16[2];
      v25[3] = v19;
      v25[0] = v18;
      v25[1] = v17;
      v20 = (*(v7 + 48) + (v15 << 6));
      v21 = *v16;
      v22 = v16[1];
      v23 = v16[3];
      v20[2] = v16[2];
      v20[3] = v23;
      *v20 = v21;
      v20[1] = v22;
      outlined init with copy of TransformationCapability(v25, &v24);
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_4_13();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  outlined copy of Data._Representation(a4, a5);
  return a2;
}

uint64_t specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
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
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
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
    v53 = v12;
    v54 = v7;
    v55 = v14;
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
            v57 = v51;
            v58 = v16;
            v59 = v11;
            v3 = v54;
            v12 = v55;
            v56[0] = v55;
            v56[1] = v54;

            v27 = *(v5 + 32);
            v48 = ((1 << v27) + 63) >> 6;
            v2 = 8 * v48;
            if ((v27 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v49 = &v47;
              MEMORY[0x1EEE9AC00](v25, v26);
              v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v28 = *(v7 + 8 * v4) & ~v8;
              v29 = *(v5 + 16);
              v52 = v7;
              *(v7 + 8 * v4) = v28;
              v30 = v29 - 1;
              v31 = v53;
              while (1)
              {
                v50 = v30;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v33 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v34 = (*(v12 + 48) + ((v16 << 10) | (16 * v33)));
                v2 = *v34;
                v35 = v34[1];
                v36 = *(v5 + 40);
                Hasher.init(_seed:)();

                String.hash(into:)();
                v37 = Hasher._finalize()();
                v38 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v37 & v38;
                  v7 = (v37 & v38) >> 6;
                  v8 = 1 << (v37 & v38);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v54;
                    v12 = v55;
                    v31 = v53;
                    goto LABEL_24;
                  }

                  v39 = (*(v5 + 48) + 16 * v4);
                  if (*v39 == v2 && v39[1] == v35)
                  {
                    break;
                  }

                  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v37 = v4 + 1;
                }

                while ((v41 & 1) == 0);

                v42 = v52[v7];
                v52[v7] = v42 & ~v8;
                v3 = v54;
                v12 = v55;
                v31 = v53;
                if ((v42 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v30 = v50 - 1;
                if (__OFSUB__(v50, 1))
                {
                  __break(1u);
                }

                if (v50 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v32 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v32 >= v31)
                {
                  v5 = specialized _NativeSet.extractSubset(using:count:)(v52, v48, v50, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v32);
                ++v16;
                if (v11)
                {
                  v16 = v32;
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

            v45 = swift_slowAlloc();
            v46 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v45, v48, (v5 + 56), v48, v5, v7, v56);

            MEMORY[0x1E12AA0F0](v45, -1, -1);
            v51 = v57;
            v5 = v46;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v54;
        v14 = v55;
        v12 = v53;
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
    outlined consume of [String : Data].Iterator._Variant();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, a2);
    v6 = (&v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v5, v6);
    v7 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v6, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v7 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v10, v5, partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:));

    MEMORY[0x1E12AA0F0](v10, -1, -1);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v34 = a4 + 56;

  v29 = 0;
  v11 = 0;
  v31 = v9;
  v32 = v5;
LABEL_5:
  while (v8)
  {
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(a3 + 48) + ((v11 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    v17 = *(a4 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = ~(-1 << *(a4 + 32));
    do
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = 1 << (v18 & v19);
      if ((v22 & *(v34 + 8 * v21)) == 0)
      {

        v9 = v31;
        v5 = v32;
        goto LABEL_5;
      }

      v23 = (*(a4 + 48) + 16 * v20);
      if (*v23 == v16 && v23[1] == v15)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v20 + 1;
    }

    while ((v25 & 1) == 0);

    v26 = a1[v21];
    a1[v21] = v26 | v22;
    v9 = v31;
    v5 = v32;
    if ((v26 & v22) == 0 && __OFADD__(v29++, 1))
    {
      goto LABEL_24;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return specialized _NativeSet.extractSubset(using:count:)(a1, a2, v29, a4);
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v8);
    v9 = v14 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v9);
    v10 = specialized closure #1 in _NativeSet.intersection(_:)(v9, v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v13, v6, a2, a1);

    MEMORY[0x1E12AA0F0](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t specialized closure #1 in _NativeSet.intersection(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v42 = Hasher._finalize()();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return specialized _NativeSet.extractSubset(using:count:)(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

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
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
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
      return MEMORY[0x1E69E7CD0];
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

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(a2 + 2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t destroy for SiriEnvironmentKeyValuePairs(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *initializeBufferWithCopyOfBuffer for SiriEnvironmentKeyValuePairs(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for SiriEnvironmentKeyValuePairs(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t *assignWithTake for SiriEnvironmentKeyValuePairs(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentKeyValuePairs.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t one-time initialization function for runQueue()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.utility.getter();
  v14 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static AutoBugCaptureManager.runQueue = result;
  return result;
}

uint64_t AutoBugCaptureManager.__allocating_init(domain:sessionDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t AutoBugCaptureManager.init(domain:sessionDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t AutoBugCaptureManager.__allocating_init(domain:sessionDuration:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(v4 + 160))();
  v8 = *(v7 + 48);
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;

  return v7;
}

uint64_t AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a5;
  v37 = a7;
  v35 = a3;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = OUTLINED_FUNCTION_5_0(v14);
  v40 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v22 = OUTLINED_FUNCTION_5_0(v39);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22, v27);
  v29 = &v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for runQueue != -1)
  {
    swift_once();
  }

  v38 = static AutoBugCaptureManager.runQueue;
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = a2;
  v31 = v36;
  v30[4] = v35;
  v30[5] = a4;
  v30[6] = v31;
  v30[7] = a6;
  v30[8] = v37;
  v30[9] = a8;
  v30[10] = v8;
  aBlock[4] = partial apply for closure #1 in AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v32 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12A90D0](0, v29, v21, v32);
  _Block_release(v32);
  (*(v40 + 8))(v21, v14);
  (*(v24 + 8))(v29, v39);
}

void closure #1 in AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void), uint64_t a8, void *a9)
{
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v16 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v16 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v20 = a9[7];
    a9[7] = v19;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.logger);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57 = v54;
      *v24 = 136315650;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v57);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v57);
      *(v24 + 22) = 2080;
      *(v24 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v57);
      _os_log_impl(&dword_1DD1FF000, v22, v23, "AutoBugCaptureManager#generateSnapshot, with errorType: %s, errorSubType: %s and subTypeContext: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v54, -1, -1);
      MEMORY[0x1E12AA0F0](v24, -1, -1);
    }

    else
    {
    }

    v29 = (*(*a9 + 184))(a1, a2, a3, a4, a5, a6, a9[2], a9[3]);
    v30 = v29;
    if (v29)
    {
      v57 = 0;
      v55 = v29;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v57)
      {
        v31 = (*(*a9 + 192))(v57);

        v32 = Logger.logObject.getter();
        if (v31)
        {
          v33 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v57 = v35;
            *v34 = 136315138;
            v36 = Dictionary.description.getter();
            v38 = v37;

            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v57);

            *(v34 + 4) = v39;
            v40 = "AutoBugCaptureManager#generateSnapshot, generated snapshot for signature: %s";
LABEL_30:
            _os_log_impl(&dword_1DD1FF000, v32, v33, v40, v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x1E12AA0F0](v35, -1, -1);
            MEMORY[0x1E12AA0F0](v34, -1, -1);
LABEL_32:

            a7(v31 & 1);

            return;
          }
        }

        else
        {
          v33 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v57 = v35;
            *v34 = 136315138;
            v50 = Dictionary.description.getter();
            v52 = v51;

            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v57);

            *(v34 + 4) = v53;
            v40 = "AutoBugCaptureManager#generateSnapshot, could not generate snapshot for signature: %s";
            goto LABEL_30;
          }
        }

        goto LABEL_32;
      }
    }

    v41 = v30;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57 = v45;
      *v44 = 136315138;
      v46 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19NSMutableDictionaryCSgMd, &_sSo19NSMutableDictionaryCSgMR);
      v47 = String.init<A>(describing:)();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v57);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1DD1FF000, v42, v43, "AutoBugCaptureManager#generateSnapshot, couldn't parse signature: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1E12AA0F0](v45, -1, -1);
      MEMORY[0x1E12AA0F0](v44, -1, -1);
    }

    a7(0);
  }

  else
  {
LABEL_14:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.logger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DD1FF000, v26, v27, "AutoBugCaptureManager#generateSnapshot invalid argument(s) passed in, all strings should be populated", v28, 2u);
      MEMORY[0x1E12AA0F0](v28, -1, -1);
    }

    a7(0);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::String __swiftcall AutoBugCaptureManager.detectedProcess()()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = 0x80000001DD26B410;
    v1 = 0xD000000000000011;
  }

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

NSMutableDictionary_optional __swiftcall AutoBugCaptureManager.createSignature(errorType:errorSubType:subTypeContext:domain:)(Swift::String errorType, Swift::String errorSubType, Swift::String subTypeContext, Swift::String domain)
{
  v5 = v4[7];
  if (v5)
  {
    countAndFlagsBits = domain._countAndFlagsBits;
    v7 = errorSubType._countAndFlagsBits;
    object = errorType._object;
    v9 = errorType._countAndFlagsBits;
    v10 = *(*v4 + 176);
    v11 = errorSubType._object;
    v12 = domain._object;
    v13 = v5;
    v14 = v10();
    v16 = outlined bridged method (mbgbgbgbgbnnn) of @objc SDRDiagnosticReporter.signature(withDomain:type:subType:subtypeContext:detectedProcess:triggerThresholdValues:)(countAndFlagsBits, v12, v9, object, v7, v11, subTypeContext._countAndFlagsBits, subTypeContext._object, v14, v15, 0, v13);

    errorType._countAndFlagsBits = v16;
  }

  else
  {
    errorType._countAndFlagsBits = 0;
  }

  return *&errorType._countAndFlagsBits;
}

Swift::Bool __swiftcall AutoBugCaptureManager.createSnapshot(signature:)(Swift::OpaquePointer signature)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(v1 + 32);
    v9[4] = closure #1 in AutoBugCaptureManager.createSnapshot(signature:);
    v9[5] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
    v9[3] = &block_descriptor_3;
    v5 = _Block_copy(v9);
    v6 = v2;
    v7 = outlined bridged method (mbgnnnnnn) of @objc SDRDiagnosticReporter.snapshot(withSignature:duration:event:payload:reply:)(v4, signature._rawValue, 0, 0, v5, v6);
    _Block_release(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void closure #1 in AutoBugCaptureManager.createSnapshot(signature:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1DD1FF000, oslog, v1, "AutoBugCaptureManager#createSnapshot, DiagnosticReporter snapshot response: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1E12AA0F0](v3, -1, -1);
    MEMORY[0x1E12AA0F0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t AutoBugCaptureManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t AutoBugCaptureManager.__deallocating_deinit()
{
  AutoBugCaptureManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

id outlined bridged method (mbgbgbgbgbnnn) of @objc SDRDiagnosticReporter.signature(withDomain:type:subType:subtypeContext:detectedProcess:triggerThresholdValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v18 = MEMORY[0x1E12A8BC0]();
  v19 = MEMORY[0x1E12A8BC0](a3, a4);
  v20 = MEMORY[0x1E12A8BC0](a5, a6);
  v21 = MEMORY[0x1E12A8BC0](a7, a8);
  v22 = MEMORY[0x1E12A8BC0](a9, a10);

  v23 = [a12 signatureWithDomain:v18 type:v19 subType:v20 subtypeContext:v21 detectedProcess:v22 triggerThresholdValues:a11];

  return v23;
}

id outlined bridged method (mbgnnnnnn) of @objc SDRDiagnosticReporter.snapshot(withSignature:duration:event:payload:reply:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v12 = [a6 snapshotWithSignature:isa duration:a3 event:a4 payload:a5 reply:a1];

  return v12;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance NetworkAvailability()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for NetworkAvailability();
  return OUTLINED_FUNCTION_1_19(v0);
}

uint64_t MockableEnvironmentProvider.mock<A>(override:run:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EnvironmentProviderMockHelper();
  v10 = EnvironmentProviderMockHelper.__allocating_init(overrides:)(a1);
  v11 = *(a6 + 64);

  v12 = v11(v10, a4, a6);
  v13 = (*(*v10 + 152))();
  a2(v13);
  $defer #1 <A><A1>() in MockableEnvironmentProvider.mock<A>(override:run:)(v6, v12, a4, a5, a6);
}

{
  return MockableEnvironmentProvider.mock<A>(override:run:)(a1, a2, a3, a5, a4, a6);
}

uint64_t specialized MockableEnvironmentProvider.install(_:)(uint64_t a1)
{
  v3 = (*(*v1 + 184))();
  type metadata accessor for CurrentDevice();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice, type metadata accessor for CurrentDevice);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  if (a1)
  {
    v4 = static CurrentDevice.adjustMock(_:)(a1);
  }

  else
  {
    v4 = 0;
  }

  (*(*v1 + 192))(v4);
  return v3;
}

uint64_t specialized MockableEnvironmentProvider.install(_:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  type metadata accessor for CurrentProcess();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess, type metadata accessor for CurrentProcess);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v3 = *((*v1 & *v0) + 0x68);

  v3(v4);
  return v2;
}

{
  v1 = (*(*v0 + 176))();
  type metadata accessor for NetworkAvailability();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type NetworkAvailability and conformance NetworkAvailability, type metadata accessor for NetworkAvailability);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v2 = *(*v0 + 184);

  v2(v3);
  return v1;
}

{
  v1 = (*(*v0 + 136))();
  type metadata accessor for CoreTelephonyService();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CoreTelephonyService and conformance CoreTelephonyService, type metadata accessor for CoreTelephonyService);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v2 = *(*v0 + 144);

  v2(v3);
  return v1;
}

void MockableEnvironmentProvider.install(_:)()
{
  OUTLINED_FUNCTION_15_7();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(*(v0 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_11(AssociatedTypeWitness);
  v9 = *(v8 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v27 = (*(v1 + 32))(v3, v1);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  type metadata accessor for ObservableObjectPublisher();
  if (swift_dynamicCast())
  {
    ObservableObjectPublisher.send()();
LABEL_5:

    goto LABEL_11;
  }

  dispatch thunk of ObservableObject.objectWillChange.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  if (swift_dynamicCast())
  {
    lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>();
    Subject<>.send()();
    goto LABEL_5;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v19 = 136315138;
    swift_getAssociatedTypeWitness();
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v29);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_1DD1FF000, v17, v18, "Unable to signal objectWillChange for provider of type %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

LABEL_11:
  v28 = v5;
  MEMORY[0x1EEE9AC00](v14, v15);
  *(&v25 - 2) = v3;
  *(&v25 - 1) = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for EnvironmentProviderMockHelper();
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in MockableEnvironmentProvider.install(_:), v23, v24, &v29);
  (*(v1 + 40))(v29, v3, v1);
  OUTLINED_FUNCTION_14();
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v37 = v7;
  v38 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_8_0();
  v14 = v13 - v12;
  v16 = *(v15 + 16);
  OUTLINED_FUNCTION_0_1();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_8_0();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_0_1();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_8_0();
  v32 = v31 - v30;
  (*(v33 + 16))(v31 - v30, v34);
  v35 = 1;
  if (__swift_getEnumTagSinglePayload(v32, 1, v16) != 1)
  {
    (*(v18 + 32))(v25, v32, v16);
    a1(v25, v14);
    (*(v18 + 8))(v25, v16);
    if (v4)
    {
      return (*(v37 + 32))(a3, v14, v38);
    }

    v35 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v35, 1, a2);
}

uint64_t EnvironmentProviderMockHelper.__allocating_init(overrides:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance CurrentDevice()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for CurrentDevice();
  return OUTLINED_FUNCTION_1_19(v0);
}

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance CurrentProcess()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for CurrentProcess();
  return OUTLINED_FUNCTION_1_19(v0);
}

uint64_t MockableEnvironmentProvider.mock<A>(override:run:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](MockableEnvironmentProvider.mock<A>(override:run:), 0, 0);
}

uint64_t MockableEnvironmentProvider.mock<A>(override:run:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EnvironmentProviderMockHelper();
  v6 = EnvironmentProviderMockHelper.__allocating_init(overrides:)(v5);
  v0[10] = v6;
  v7 = *(v2 + 64);

  v0[11] = v7(v6, v3, v2);
  (*(*v6 + 152))();
  v13 = (v4 + *v4);
  v8 = v4[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = MockableEnvironmentProvider.mock<A>(override:run:);
  v10 = v0[5];
  v11 = v0[2];

  return v13(v11);
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = MockableEnvironmentProvider.mock<A>(override:run:);
  }

  else
  {
    v3 = MockableEnvironmentProvider.mock<A>(override:run:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  OUTLINED_FUNCTION_14_7();

  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_14_7();

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1();
}

uint64_t $defer #1 <A><A1>() in MockableEnvironmentProvider.mock<A>(override:run:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 64))(a2, a3, a5);
}

uint64_t partial apply for closure #1 in MockableEnvironmentProvider.install(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = (*(*(v2 + 24) + 72))(*a1);
  *a2 = result;
  return result;
}

uint64_t EnvironmentProviderMockHelper.overrides.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 16);
}

uint64_t EnvironmentProviderMockHelper.overrides<A>(_:)()
{
  v1 = *v0;
  EnvironmentProviderMockHelper.overrides.getter();
  OUTLINED_FUNCTION_10_5();
  v3 = *(v2 + 80);
  type metadata accessor for PartialKeyPath();

  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  v4 = Sequence<>.contains(_:)();

  return v4 & 1;
}

uint64_t EnvironmentProviderMockHelper.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *a1;
  v7 = EnvironmentProviderMockHelper.overrides.getter();
  v13 = a1;
  v8 = *(v5 + 80);
  v9 = type metadata accessor for PartialKeyPath();

  MEMORY[0x1E12A8B50](v14, &v13, v7, v9, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6930]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
  v11 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v11 ^ 1u, 1, v10);
}

uint64_t EnvironmentProviderMockHelper.backfill(previousMock:)(uint64_t result)
{
  if (result)
  {
    v2 = *v1;
    EnvironmentProviderMockHelper.overrides.getter();
    swift_beginAccess();
    v3 = *(v2 + 80);
    type metadata accessor for PartialKeyPath();
    type metadata accessor for Dictionary();

    Dictionary.merge(_:uniquingKeysWith:)();
    swift_endAccess();
  }

  return result;
}

uint64_t EnvironmentProviderMockHelper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t EnvironmentProviderMockHelper.__deallocating_deinit()
{
  EnvironmentProviderMockHelper.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t key path setter for MockablePublished.value : <A>MockablePublished<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6);
  return (*(**a2 + 112))(v7);
}

uint64_t (*MockablePublished.value.modify())()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_12_11();
  return PluginCapabilityCatalog.capabilityCache.modify;
}

uint64_t key path setter for MockablePublished.wrappedValue : <A>MockablePublished<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6);
  return (*(**a2 + 136))(v7);
}

uint64_t MockablePublished.wrappedValue.getter()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315650;
    v4 = StaticString.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2048;
    *(v3 + 14) = 148;
    *(v3 + 22) = 2080;
    *(v3 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6465737520746F6ELL, 0xE800000000000000, &v8);
    _os_log_impl(&dword_1DD1FF000, v1, v2, "FatalError at %s:%lu - %s", v3, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MockablePublished.wrappedValue.setter()
{
  v1 = *v0;
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x1E12A8C40](0xD00000000000001ALL, 0x80000001DD26B560);
  v2 = *(v1 + 80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v6 = 136315650;
    v7 = StaticString.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v11);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 151;
    *(v6 + 22) = 2080;
    *(v6 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v11);
    _os_log_impl(&dword_1DD1FF000, v4, v5, "FatalError at %s:%lu - %s", v6, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void key path getter for static MockablePublished.subscript<A>(_enclosingInstance:wrapped:storage:) : <A><A1>MockablePublished<A>.TypeAA1(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  static MockablePublished.subscript.getter();
}

void key path setter for static MockablePublished.subscript<A>(_enclosingInstance:wrapped:storage:) : <A><A1>MockablePublished<A>.TypeAA1(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(*(*(a3 + a4 - 24) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  (*(v11 + 16))(&v14 - v12);
  v13 = *a2;
  swift_unknownObjectRetain();

  static MockablePublished.subscript.setter();
}

void (*static MockablePublished.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v11 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v11;
  v11[3] = a5;
  v11[4] = v5;
  v11[1] = a3;
  v11[2] = a4;
  *v11 = a2;
  v11[5] = *(v5 + 80);
  OUTLINED_FUNCTION_0_1();
  *(v12 + 48) = v13;
  v15 = *(v14 + 64);
  v11[7] = __swift_coroFrameAllocStub(v15);
  v11[8] = __swift_coroFrameAllocStub(v15);
  static MockablePublished.subscript.getter();
  return static MockablePublished.subscript.modify;
}

void static MockablePublished.subscript.modify()
{
  OUTLINED_FUNCTION_15_7();
  v1 = *v0;
  v2 = (*v0)[7];
  v3 = (*v0)[8];
  if (v4)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v10 = v1[1];
    v9 = v1[2];
    v11 = *v1;
    (*(v6 + 16))((*v0)[7], v3, v5);

    swift_unknownObjectRetain();
    static MockablePublished.subscript.setter();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v13 = v1[3];
    v12 = v1[4];
    v15 = v1[1];
    v14 = v1[2];
    v16 = *v1;

    swift_unknownObjectRetain();
    static MockablePublished.subscript.setter();
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_14();

  free(v17);
}

void *key path getter for MockablePublished.projectedValue : <A>MockablePublished<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for MockablePublished.projectedValue : <A>MockablePublished<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 160);

  return v3(&v5);
}

uint64_t MockablePublished.projectedValue.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 96);
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = v2;
}

uint64_t (*MockablePublished.projectedValue.modify())()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_12_11();
  return SiriEnvironmentStorage.storage.modify;
}

uint64_t MockablePublished.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  MockablePublished.init(wrappedValue:)(a1);
  return v5;
}

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance CoreTelephonyService()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for CoreTelephonyService();
  return OUTLINED_FUNCTION_1_19(v0);
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for MockablePublished(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

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

uint64_t lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DeviceIdiom.semanticValueKey.getter()
{
  result = 0x79616C705F726163;
  switch(*v0)
  {
    case 1:
      result = 0x646F70656D6F68;
      break;
    case 2:
      result = 6513005;
      break;
    case 3:
      result = 1684107369;
      break;
    case 4:
      result = 1685024873;
      break;
    case 5:
      result = 0x656E6F687069;
      break;
    case 6:
      result = 0x61775F656C707061;
      break;
    case 7:
      result = 0x76745F656C707061;
      break;
    case 8:
      result = 0x5F7974696C616572;
      break;
    case 9:
      result = 0x746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static TypeIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t TypeIdentifier.init<A>(encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = *(a3 + 40);
  v12 = *(*(*(a3 + 8) + 8) + 8);
  v13 = String.init<A>(_:)();
  v15 = v14;
  result = (*(v8 + 8))(a1, a2);
  *a4 = v13;
  a4[1] = v15;
  return result;
}

uint64_t TypeIdentifier.encoding.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TypeIdentifier.typeName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v1, v2, &v5);
  v3 = TypeInformation.typeName.getter();
  outlined destroy of TypeInformation(&v5);
  return v3;
}

uint64_t TypeIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_5_1();
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v6 = String.init<A>(_:)();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t TypeIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v1, v2, &v10);
  v3 = TypeInformation.typeName.getter();
  v5 = v4;
  outlined destroy of TypeInformation(&v10);
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    _StringGuts.grow(_:)(30);

    v9 = 0xD00000000000001ALL;
    MEMORY[0x1E12A8C40](v1, v2);
    v6 = 10530;
    v7 = 0xE200000000000000;
  }

  else
  {
    _StringGuts.grow(_:)(28);

    v9 = 0xD000000000000014;
    MEMORY[0x1E12A8C40](v3, v5);

    v6 = 0x29666C65732ELL;
    v7 = 0xE600000000000000;
  }

  MEMORY[0x1E12A8C40](v6, v7);
  return v9;
}

uint64_t one-time initialization function for any(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  TypeInformation.init(for:)(v9);
  v7 = v10;
  v6 = v11;

  result = outlined destroy of TypeInformation(v9);
  *a3 = v7;
  *a4 = v6;
  return result;
}

uint64_t TypeIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int TypeIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static _EnvironmentProviderTable.publisher<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  if (one-time initialization token for lock == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = static _EnvironmentProviderTable.lock;
    [static _EnvironmentProviderTable.lock lock];
    if (one-time initialization token for table != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v74[0] = MEMORY[0x1E69E7CC0];
    v69 = v3;
    if ((static _EnvironmentProviderTable.table & 0xC000000000000001) != 0)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v8 = -1 << *(static _EnvironmentProviderTable.table + 32);
      v5 = ~v8;
      v4 = static _EnvironmentProviderTable.table + 64;
      v9 = -v8;
      v10 = v9 < 64 ? ~(-1 << v9) : -1;
      v6 = v10 & *(static _EnvironmentProviderTable.table + 8);
      v7 = static _EnvironmentProviderTable.table;
    }

    v11 = 0;
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_11:
    v12 = v11;
    v13 = v6;
    v14 = v11;
    if (v6)
    {
LABEL_15:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v7 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

      if (v16)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v5 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v13 = *&v4[8 * v14];
      ++v12;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  while (1)
  {
    v17 = __CocoaDictionary.Iterator.nextKey()();
    if (!v17)
    {
      break;
    }

    v75 = v17;
    type metadata accessor for _EnvironmentProviderTable.Key();
    swift_dynamicCast();
    v14 = v11;
    v15 = v6;
    if (!v76)
    {
      break;
    }

LABEL_19:
    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_unknownObjectRelease();
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(v74[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v11 = v14;
    v6 = v15;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_24:
  outlined consume of [String : Data].Iterator._Variant();
  v19 = v74[0];
  v20 = 0;
  v71 = v74[0] & 0xC000000000000001;
  v72 = specialized Array._getCount()(v74[0]);
  v73 = v19;
  v70 = v19 + 32;
  while (v20 != v72)
  {
    if (v71)
    {
      MEMORY[0x1E12A9320](v20, v73);
    }

    else
    {
      if (v20 >= *(v73 + 16))
      {
        goto LABEL_73;
      }

      v21 = *(v70 + 8 * v20);
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_72;
    }

    swift_beginAccess();
    if ((static _EnvironmentProviderTable.table & 0xC000000000000001) == 0)
    {
      v43 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v44 & 1) == 0)
      {
        goto LABEL_57;
      }

      v45 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74[0] = static _EnvironmentProviderTable.table;
      v47 = *(static _EnvironmentProviderTable.table + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v47);
      v48 = v74[0];
      v49 = *(*(v74[0] + 48) + 8 * v45);

      v50 = *(*(v48 + 56) + 8 * v45);
      type metadata accessor for _EnvironmentProviderTable.Key();
      lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(&lazy protocol witness table cache variable for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key, type metadata accessor for _EnvironmentProviderTable.Key);
      _NativeDictionary._delete(at:)();
      static _EnvironmentProviderTable.table = v48;
      goto LABEL_56;
    }

    if (static _EnvironmentProviderTable.table < 0)
    {
      v23 = static _EnvironmentProviderTable.table;
    }

    else
    {
      v23 = (static _EnvironmentProviderTable.table & 0xFFFFFFFFFFFFFF8);
    }

    v24 = __CocoaDictionary.lookup(_:)();

    if (v24)
    {
      swift_unknownObjectRelease();

      if (MEMORY[0x1E12A9490](v23))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
        v25 = static _DictionaryStorage.convert(_:capacity:)();
        v75 = v25;
        __CocoaDictionary.makeIterator()();
        while (1)
        {
          v26 = __CocoaDictionary.Iterator.next()();
          if (!v26)
          {

            goto LABEL_54;
          }

          v28 = v27;
          v74[0] = v26;
          type metadata accessor for _EnvironmentProviderTable.Key();
          swift_dynamicCast();
          v29 = *(v25 + 16);
          if (*(v25 + 24) <= v29)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29 + 1, 1);
          }

          v30 = v74[9];
          v25 = v75;
          v31 = *(v75 + 40);
          Hasher.init(_seed:)();
          MEMORY[0x1E12A9750](*(v30 + 16));
          v32 = v74;
          v33 = Hasher._finalize()();
          v34 = v25 + 64;
          v35 = -1 << *(v25 + 32);
          v36 = v33 & ~v35;
          v37 = v36 >> 6;
          if (((-1 << v36) & ~*(v25 + 64 + 8 * (v36 >> 6))) == 0)
          {
            break;
          }

          v38 = __clz(__rbit64((-1 << v36) & ~*(v25 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_49:
          *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
          *(*(v25 + 48) + 8 * v38) = v30;
          *(*(v25 + 56) + 8 * v38) = v28;
          ++*(v25 + 16);
        }

        v39 = 0;
        v40 = (63 - v35) >> 6;
        while (++v37 != v40 || (v39 & 1) == 0)
        {
          v41 = v37 == v40;
          if (v37 == v40)
          {
            v37 = 0;
          }

          v39 |= v41;
          v42 = *(v34 + 8 * v37);
          if (v42 != -1)
          {
            v38 = __clz(__rbit64(~v42)) + (v37 << 6);
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_63:
        v58 = v69;
        if (v32[2])
        {
          v59 = specialized __RawDictionaryStorage.find<A>(_:)();
          if (v60)
          {
            v61 = *(v32[7] + 8 * v59);
            swift_unknownObjectRetain();
            goto LABEL_66;
          }
        }

LABEL_68:
        swift_endAccess();
        goto LABEL_69;
      }

      v25 = MEMORY[0x1E69E7CC8];
LABEL_54:
      v51 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v52 & 1) == 0)
      {
        goto LABEL_74;
      }

      v53 = v51;
      v54 = *(*(v25 + 48) + 8 * v51);

      v55 = *(*(v25 + 56) + 8 * v53);
      type metadata accessor for _EnvironmentProviderTable.Key();
      lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(&lazy protocol witness table cache variable for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key, type metadata accessor for _EnvironmentProviderTable.Key);
      _NativeDictionary._delete(at:)();

      static _EnvironmentProviderTable.table = v25;
LABEL_56:
      swift_unknownObjectRelease();
    }

LABEL_57:
    swift_endAccess();
  }

  type metadata accessor for _EnvironmentProviderTable.Key();
  swift_allocObject();
  v56 = swift_unknownObjectRetain();
  v25 = _EnvironmentProviderTable.Key.init(object:)(v56);
  swift_beginAccess();
  v32 = static _EnvironmentProviderTable.table;
  if ((static _EnvironmentProviderTable.table & 0xC000000000000001) == 0)
  {
    goto LABEL_63;
  }

  v57 = __CocoaDictionary.lookup(_:)();

  v58 = v69;
  if (!v57)
  {
    goto LABEL_68;
  }

LABEL_66:
  swift_endAccess();
  type metadata accessor for EnvironmentProviderDidChangePublisher();
  v62 = swift_dynamicCastClass();
  if (v62)
  {
    goto LABEL_70;
  }

  swift_unknownObjectRelease();
LABEL_69:
  type metadata accessor for EnvironmentProviderDidChangePublisher();
  v63 = *(v67 + 8);
  v64 = swift_unknownObjectRetain();
  v62 = EnvironmentProviderDidChangePublisher.__allocating_init<A>(source:)(v64, a2, v63);
  swift_beginAccess();

  specialized Dictionary._Variant.setValue(_:forKey:)(v65, v25);
  swift_endAccess();

LABEL_70:

  [v58 unlock];
  return v62;
}

uint64_t EnvironmentProviderDidChangePublisher.init<A>(source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v66 = v51 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v65 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v14 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCyyts5NeverOGMd, &_s7Combine19CurrentValueSubjectCyyts5NeverOGMR);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = AssociatedConformanceWitness;
  v57 = lazy protocol witness table accessor for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>();
  v71 = AssociatedTypeWitness;
  v72 = v18;
  v73 = AssociatedConformanceWitness;
  v74 = v57;
  v20 = type metadata accessor for Publishers.CombineLatest();
  v62 = *(v20 - 8);
  v21 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v52 = v51 - v23;
  WitnessTable = swift_getWitnessTable();
  v24 = type metadata accessor for Publishers.Map();
  v64 = *(v24 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v53 = v51 - v27;
  v28 = type metadata accessor for OS_dispatch_queue();
  v51[1] = v28;
  v29 = swift_getWitnessTable();
  v55 = v29;
  v54 = lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  v71 = v24;
  v72 = v28;
  v73 = v29;
  v74 = v54;
  v30 = type metadata accessor for Publishers.Debounce();
  v31 = *(v30 - 8);
  v60 = v30;
  v61 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = v51 - v34;
  v36 = *(v18 + 48);
  v37 = *(v18 + 52);
  swift_allocObject();
  v38 = CurrentValueSubject.init(_:)();
  v39 = v69;
  *(v69 + 24) = v38;
  v40 = v59;
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v71 = *(v39 + 24);
  v41 = v52;
  Publisher.combineLatest<A>(_:)();
  (*(v63 + 8))(v17, AssociatedTypeWitness);
  v42 = swift_allocObject();
  *(v42 + 16) = a2;
  *(v42 + 24) = v40;
  v43 = v53;
  Publisher.map<A>(_:)();

  (*(v62 + 8))(v41, v20);
  v44 = v65;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
  v45 = static OS_dispatch_queue.main.getter();
  v71 = v45;
  v46 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v47 = v66;
  __swift_storeEnumTagSinglePayload(v66, 1, 1, v46);
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v47);

  (*(v67 + 8))(v44, v68);
  (*(v64 + 8))(v43, v24);
  v48 = v60;
  swift_getWitnessTable();
  v49 = Publisher.eraseToAnyPublisher()();
  swift_unknownObjectRelease();
  (*(v61 + 8))(v35, v48);
  result = v69;
  *(v69 + 16) = v49;
  return result;
}

uint64_t EnvironmentProviderDidChangePublisher.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EnvironmentProviderDidChangePublisher.__deallocating_deinit()
{
  EnvironmentProviderDidChangePublisher.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t _EnvironmentProviderTable.Key.init(object:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t _EnvironmentProviderTable.Key.__deallocating_deinit()
{
  outlined destroy of weak Swift.AnyObject?(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

Swift::Int _EnvironmentProviderTable.Key.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EnvironmentProviderTable.Key()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  _EnvironmentProviderTable.Key.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCyyts5NeverOGMd, &_s7Combine19CurrentValueSubjectCyyts5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id one-time initialization function for lock()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  static _EnvironmentProviderTable.lock = result;
  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1E12A94E0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    v5 = xmmword_1DD269440;
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

uint64_t _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyC_yXlTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v8 = v2;
    __CocoaDictionary.makeIterator()();
    while (__CocoaDictionary.Iterator.next()())
    {
      v4 = v3;
      type metadata accessor for _EnvironmentProviderTable.Key();
      swift_dynamicCast();
      v5 = *(v2 + 16);
      if (*(v2 + 24) <= v5)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v5 + 1, 1);
      }

      v2 = v8;
      specialized _NativeDictionary._unsafeInsertNew(key:value:)(v7, v4, v8);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v7 = OUTLINED_FUNCTION_5_17();
  if (!*(v2 + 16))
  {
LABEL_28:

LABEL_29:
    *v1 = v7;
    return;
  }

  OUTLINED_FUNCTION_0_25();
  if (!v3)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v9;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_12_12();
        goto LABEL_9;
      }
    }

    if ((v26 & 1) == 0)
    {

      v1 = v25;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_13();
    v1 = v25;
    if (v23 != v24)
    {
      *v4 = -1 << v22;
    }

    else
    {
      OUTLINED_FUNCTION_14_8(v22);
    }

    *(v2 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_9();
LABEL_9:
    OUTLINED_FUNCTION_11_14(v8);
    v27 = *(v11 + 16 * v10);
    if ((v26 & 1) == 0)
    {

      outlined copy of Data._Representation(v27, *(&v27 + 1));
    }

    v12 = *(v7 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();
    OUTLINED_FUNCTION_3_15(v13);
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_9_10();
LABEL_20:
    OUTLINED_FUNCTION_1_20(v15);
    *(v21 + 16 * v20) = v27;
    ++*(v7 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_11();
  while (++v16 != v18 || (v17 & 1) == 0)
  {
    v19 = v16 == v18;
    if (v16 == v18)
    {
      v16 = 0;
    }

    v17 |= v19;
    if (*(v6 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_7_13();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_4_14(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13SiriUtilities13PluginPackage_pGMd, &_ss18_DictionaryStorageCySS13SiriUtilities13PluginPackage_pGMR);
  v7 = OUTLINED_FUNCTION_5_17();
  if (!*(v2 + 16))
  {
LABEL_29:

LABEL_30:
    *v1 = v7;
    return;
  }

  OUTLINED_FUNCTION_0_25();
  if (!v3)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v9;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_12_12();
        goto LABEL_9;
      }
    }

    if ((v27 & 1) == 0)
    {

      v1 = v26;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_10_13();
    v1 = v26;
    if (v24 != v25)
    {
      *v4 = -1 << v23;
    }

    else
    {
      OUTLINED_FUNCTION_14_8(v23);
    }

    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_9();
LABEL_9:
    OUTLINED_FUNCTION_11_14(v8);
    v12 = v11 + 40 * v10;
    if (v27)
    {
      outlined init with take of CacheDataSource(v12, v28);
    }

    else
    {
      outlined init with copy of Transforming(v12, v28);
    }

    v13 = *(v7 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();
    OUTLINED_FUNCTION_3_15(v14);
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_9_10();
LABEL_21:
    OUTLINED_FUNCTION_1_20(v16);
    outlined init with take of CacheDataSource(v28, v22 + 40 * v21);
    ++*(v7 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_11();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v6 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_7_13();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v32 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((v33 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    v22 = *(v8 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x1E12A9750](*(v20 + 16));
    result = Hasher._finalize()();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 8 * v26) = v20;
    *(*(v8 + 56) + 8 * v26) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary._unsafeInsertNew(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](*(a1 + 16));
  Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a3 + 48) + 8 * result) = a1;
  *(*(a3 + 56) + 8 * result) = a2;
  ++*(a3 + 16);
  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x1E12A9490](v7);
  if (!__OFADD__(result, 1))
  {
    *v3 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyC_yXlTt1g5(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = OUTLINED_FUNCTION_5_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_2_18(v18, v19);
  if (v22)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = v20;
  v24 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss17_NativeDictionaryVys17CodingUserInfoKeyVs8Sendable_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v25 = *v4;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v24 & 1) != (v27 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v23 = v26;
LABEL_5:
  v28 = *v4;
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v28 + 56) + 32 * v23));
    OUTLINED_FUNCTION_14();

    outlined init with take of Any(v29, v30);
  }

  else
  {
    (*(v11 + 16))(v16, a2, v8);
    specialized _NativeDictionary._insert(at:key:value:)(v23, v16, a1, v28);
    OUTLINED_FUNCTION_14();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v35 = a2;
  v9 = type metadata accessor for UUID();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v4;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_2_18(v19, v20);
  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = v21;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSSGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSSGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v18))
  {
    goto LABEL_5;
  }

  v26 = *v5;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v25 & 1) != (v28 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v24 = v27;
LABEL_5:
  v29 = *v5;
  if (v25)
  {
    v30 = (*(v29 + 56) + 16 * v24);
    v31 = v30[1];
    v32 = v35;
    *v30 = a1;
    v30[1] = v32;
    OUTLINED_FUNCTION_14();
  }

  else
  {
    (*(v12 + 16))(v17, a3, v9);
    specialized _NativeDictionary._insert(at:key:value:)(v24, v17, a1, v35, v29);
    OUTLINED_FUNCTION_14();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    type metadata accessor for _EnvironmentProviderTable.Key();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a1, v19);
  }
}

uint64_t Reducer.reduce.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Reducer.init()()
{
  OUTLINED_FUNCTION_0_26();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v2 = destructiveProjectEnumData for InputOrigin;
  v2[1] = result;
  return result;
}

uint64_t Reducer.init(apply:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Reducer.init<A>(getter:setter:)()
{
  OUTLINED_FUNCTION_0_26();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v2 = partial apply for closure #1 in Reducer.init<A>(getter:setter:);
  v2[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_0_26();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v2 = partial apply for closure #1 in Reducer.init<A>(getter:setter:);
  v2[1] = result;
  return result;
}

uint64_t closure #1 in Reducer.init<A>(getter:setter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  swift_getAtKeyPath();
  (*(v4 + 16))(v8, v11, v3);
  swift_setAtReferenceWritableKeyPath();
  return (*(v4 + 8))(v11, v3);
}

uint64_t partial apply for closure #1 in Reducer.init<A>(getter:setter:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  return closure #1 in Reducer.init<A>(getter:setter:)(a1, a2, *(v2 + 16));
}

{
  return closure #1 in Reducer.init<A>(getter:setter:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t closure #1 in Reducer.init<A>(getter:setter:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = *(*(*(*a4 + *MEMORY[0x1E69E6F98] + 8) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v17 - v7;
  v10 = *(v9 + *MEMORY[0x1E69E77B0] + 8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v6, v13);
  v15 = v17 - v14;
  swift_getAtKeyPath();
  (*(v11 + 16))(v8, v15, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  swift_setAtReferenceWritableKeyPath();
  return (*(v11 + 8))(v15, v10);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double Reducer.init(builder:)@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double Transformer.init(_:reducer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = *a3;
  Transformer.init(transform:)(partial apply for closure #1 in Transformer.init(_:reducer:), v12, a4, a5, v15);
  result = *v15;
  v14 = v15[1];
  *a6 = v15[0];
  a6[1] = v14;
  return result;
}

double Transformer.init(_:builder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  a3(v15);
  v14 = v15[0];
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = v14;
  Transformer.init(transform:)(partial apply for closure #1 in Transformer.init(_:builder:), v11, a4, a5, v15);
  result = *v15;
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  return result;
}

uint64_t closure #1 in Transformer.init(_:reducer:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  a2();
  result = a3(a1, a5);
  if (v5)
  {
    return (*(*(a4 - 8) + 8))(a5, a4);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #1 in Transformer.init(_:reducer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  return closure #1 in Transformer.init(_:reducer:)(a1, *(v2 + 32), *(v2 + 48), *(v2 + 24), a2);
}

{
  return partial apply for closure #1 in Transformer.init(_:builder:)(a1, a2);
}

uint64_t static ReducerBuilder.buildIf(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    *a2 = v2;
    a2[1] = v3;
  }

  else
  {
    Reducer.init()();
  }

  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(v2);
}

uint64_t static ReducerBuilder.buildEither(first:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t static ReducerBuilder.buildBlock(_:)()
{
  OUTLINED_FUNCTION_1_21();
  v4 = swift_allocObject();
  *(v4 + 2) = v1;
  *(v4 + 3) = v0;
  *(v4 + 4) = v2;
  *v3 = partial apply for closure #1 in static ReducerBuilder.buildBlock(_:);
  v3[1] = v4;
}

uint64_t closure #1 in static ReducerBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a1);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v11, v17);
  v19 = &v21[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v19);
  (*(v9 + 16))(v13, a2, a5);
  v26 = a3;
  v22 = a4;
  v23 = a5;
  v24 = v19;
  v25 = v13;
  type metadata accessor for Reducer();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  (*(v9 + 8))(v13, a5);
  return (*(v15 + 8))(v19, a4);
}

uint64_t --> infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2)
{
  return --> infix<A, B, C>(_:_:)(a1, a2, Reducer.init<A>(getter:setter:));
}

{
  return --> infix<A, B, C>(_:_:)(a1, a2, Reducer.init<A>(getter:setter:));
}

uint64_t --> infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_0_26();

  return a3(v4, v3);
}

uint64_t -- infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  *a1 = *a3;
  *(a1 + 8) = *(a3 + 8);
  *(a1 + 24) = v4;

  return a2;
}

uint64_t --> infix<A, B, C, D>(_:_:)()
{
  OUTLINED_FUNCTION_1_21();
  v5 = *v4;
  v6 = v4[3];
  v8 = *v7;
  v9 = swift_allocObject();
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  *(v9 + 16) = *v10;
  *(v9 + 24) = v10[1];
  *(v9 + 32) = v2;
  *(v9 + 40) = v5;
  *(v9 + 48) = *(v1 + 8);
  *(v9 + 64) = v6;
  *(v9 + 72) = v0;
  *v3 = partial apply for closure #1 in --> infix<A, B, C, D>(_:_:);
  v3[1] = v9;
}

uint64_t closure #1 in --> infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a2;
  v7 = *a3;
  v28 = a3[1];
  v8 = a3[2];
  v9 = *(*a4 + *MEMORY[0x1E69E6F98] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, v7);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v27 - v17;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v16, v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v25 = v29;
  v28(v24);
  if (!v25)
  {
    (*(v10 + 16))(v14, v18, v9);
    swift_setAtReferenceWritableKeyPath();
    (*(v10 + 8))(v18, v9);
  }

  return (*(v20 + 8))(v24, a6);
}

uint64_t partial apply for closure #1 in --> infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 48);
  v8[0] = *(v2 + 32);
  v8[1] = v5;
  v6 = *(v2 + 72);
  v9 = *(v2 + 64);
  return closure #1 in --> infix<A, B, C, D>(_:_:)(a1, a2, v8, v6, v3, v4);
}

void *assignWithCopy for Reducer(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t assignWithTake for Reducer(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReducerBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static ReducerBuilder.buildBlock(_:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(a1 + 8);
  return (*a1)(v3, v2);
}

uint64_t HomeInfo.homeIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HomeInfo.homeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SiriUtilities::HomeInfo __swiftcall HomeInfo.init()()
{
  v1 = v0;

  *v1 = 0;
  v1[1] = 0;
  result.homeIdentifier.value._object = v3;
  result.homeIdentifier.value._countAndFlagsBits = v2;
  return result;
}

uint64_t Transformer.transform.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transformer.reverseTransform.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transformer.init(transform:reverseTransform:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t closure #1 in Transformer.init(transform:)()
{
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return swift_willThrow();
}

uint64_t partial apply for closure #1 in Transformer.init(transform:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in Transformer.init(transform:)();
}

uint64_t static RawRepresentable.transformer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  *a3 = partial apply for closure #1 in static RawRepresentable.transformer.getter;
  a3[1] = v6;
  a3[2] = partial apply for closure #2 in static RawRepresentable.transformer.getter;
  a3[3] = v7;
  return result;
}

uint64_t closure #1 in static RawRepresentable.transformer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v45 = a1;
  v6 = type metadata accessor for Optional();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - v9;
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v38 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v16, v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v38 - v26;
  (*(v13 + 16))(v18, v45, v12);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v18, v12);
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v43 = 0xD000000000000028;
    v44 = 0x80000001DD26B6A0;
    v28 = _typeName(_:qualified:)();
    MEMORY[0x1E12A8C40](v28);

    v29 = v43;
    v30 = v44;
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v33 = v19;
    (*(v19 + 32))(v27, v18, AssociatedTypeWitness);
    (*(v19 + 16))(v24, v27, AssociatedTypeWitness);
    dispatch thunk of RawRepresentable.init(rawValue:)();
    if (__swift_getEnumTagSinglePayload(v10, 1, a2) == 1)
    {
      (*(v39 + 8))(v10, v40);
      v43 = 0;
      v44 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);
      MEMORY[0x1E12A8C40](0xD000000000000011, 0x80000001DD26B6D0);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x1E12A8C40](0xD000000000000014, 0x80000001DD26B6F0);
      v34 = _typeName(_:qualified:)();
      MEMORY[0x1E12A8C40](v34);

      v35 = v43;
      v36 = v44;
      lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
      swift_allocError();
      *v37 = v35;
      *(v37 + 8) = v36;
      *(v37 + 16) = 0;
      swift_willThrow();
      return (*(v33 + 8))(v27, AssociatedTypeWitness);
    }

    else
    {
      (*(v19 + 8))(v27, AssociatedTypeWitness);
      return (*(*(a2 - 8) + 32))(v41, v10, a2);
    }
  }
}

uint64_t closure #2 in static RawRepresentable.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t partial apply for closure #2 in static RawRepresentable.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #2 in static RawRepresentable.transformer.getter(a1);
}

void *assignWithCopy for Transformer(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v7 = a2[2];
  v6 = a2[3];
  v8 = a1[3];
  a1[2] = v7;
  a1[3] = v6;

  return a1;
}

uint64_t assignWithTake for Transformer(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  return a1;
}

uint64_t outlined copy of TransformationError(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t outlined consume of TransformationError(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TransformationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of TransformationError(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TransformationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of TransformationError(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of TransformationError(v6, v7, v8);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TransformationError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of TransformationError(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TransformationError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransformationError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for TransformationError(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for TransformationError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void __swiftcall TypeInformation.init(for:)(SiriUtilities::TypeInformation *__return_ptr retstr, SiriUtilities::TypeIdentifier a2)
{
  _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(*a2.encoding._countAndFlagsBits, *(a2.encoding._countAndFlagsBits + 8), v4);
  v3 = v4[1];
  *&retstr->isOptional = v4[0];
  *&retstr->baseType.encoding._object = v3;
  *&retstr->originalType.encoding._object = v4[2];
  retstr->encoding._object = v5;
}

uint64_t TypeInformation.init<A>(encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = *(a3 + 8);
  v8 = *(v48 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v47[0] = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v47 - v15;
  v17 = *(a2 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14, v19);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v23 = OUTLINED_FUNCTION_0_27();
  v22(v23);
  v24 = *(a3 + 40);
  v47[1] = v8;
  v25 = *(v8 + 8);
  v26 = String.init<A>(_:)();
  v52 = v27;
  v53 = v26;
  v28 = OUTLINED_FUNCTION_0_27();
  v22(v28);
  TypeIdentifier.init<A>(encoding:)(v21, a2, a3, &v54);
  v50 = v55;
  v51 = v54;
  OUTLINED_FUNCTION_2_19();
  if (dispatch thunk of StringProtocol.hasSuffix(_:)())
  {
    v29 = OUTLINED_FUNCTION_0_27();
    v22(v29);
    BidirectionalCollection.dropLast(_:)();
    v30 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    TypeIdentifier.init<A>(encoding:)(v16, v30, AssociatedConformanceWitness, &v54);
    (*(v17 + 8))(a1, a2);
    v32 = 0;
    v33 = v54;
    v34 = v55;
    v35 = 1;
  }

  else
  {
    v48 = v17;
    v38 = AssociatedTypeWitness;
    OUTLINED_FUNCTION_2_19();
    if ((dispatch thunk of StringProtocol.hasPrefix(_:)() & 1) == 0 || (OUTLINED_FUNCTION_2_19(), (dispatch thunk of StringProtocol.hasSuffix(_:)() & 1) == 0))
    {
      v44 = OUTLINED_FUNCTION_3_16();
      v45(v44);

      v35 = 0;
      v32 = 0;
      v37 = v51;
      v33 = v51;
      v34 = result;
      goto LABEL_8;
    }

    v39 = OUTLINED_FUNCTION_0_27();
    v22(v39);
    Collection.dropFirst(_:)();
    v40 = v38;
    swift_getAssociatedConformanceWitness();
    v32 = 1;
    Collection.dropLast(_:)();
    v41 = swift_getAssociatedConformanceWitness();
    TypeIdentifier.init<A>(encoding:)(v16, v40, v41, &v54);
    v42 = OUTLINED_FUNCTION_3_16();
    v43(v42);
    v35 = 0;
    v33 = v54;
    v34 = v55;
  }

  result = v50;
  v37 = v51;
LABEL_8:
  *a4 = v35;
  *(a4 + 1) = v32;
  *(a4 + 8) = v33;
  *(a4 + 16) = v34;
  *(a4 + 24) = v37;
  *(a4 + 32) = result;
  v46 = v52;
  *(a4 + 40) = v53;
  *(a4 + 48) = v46;
  return result;
}

uint64_t TypeInformation.typeName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = _typeByName(_:)();
  if (v7)
  {
    if (v7 == MEMORY[0x1E69E7CA8] + 8)
    {
      v8 = _mangledTypeName(_:)();
      if (!v9)
      {
        goto LABEL_9;
      }

      if (v5 == v8 && v9 == v6)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    return _typeName(_:qualified:)();
  }

LABEL_9:
  if ((v1 | v2))
  {

    v12 = _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v4, v3, v19);
    v13 = TypeInformation.typeName.getter(v12);
    v15 = v14;
    outlined destroy of TypeInformation(v19);
    if (v1)
    {
      v18 = v13;
      v16 = 63;
    }

    else
    {
      v18 = 91;
      MEMORY[0x1E12A8C40](v13, v15);

      v16 = 93;
    }

    MEMORY[0x1E12A8C40](v16, 0xE100000000000000);
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v19, "_typeByName(");
    v20 = -4864;
    MEMORY[0x1E12A8C40](v5, v6);
    MEMORY[0x1E12A8C40](10530, 0xE200000000000000);
    return *v19;
  }
}

uint64_t TypeInformation.encoding.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

unint64_t TypeInformation.description.getter()
{
  _StringGuts.grow(_:)(29);

  v0 = TypeInformation.typeName.getter();
  MEMORY[0x1E12A8C40](v0);

  MEMORY[0x1E12A8C40](0x29666C65732ELL, 0xE600000000000000);
  return 0xD000000000000015;
}

uint64_t initializeWithCopy for TypeInformation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t assignWithCopy for TypeInformation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  return a1;
}

uint64_t assignWithTake for TypeInformation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v8 = *(a2 + 48);
  v9 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for TypeInformation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TypeInformation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SafeCallback.maybeObj.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SafeCallback.maybeObj.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return SafeCallback.maybeObj.modify;
}

void SafeCallback.maybeObj.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SafeCallback.reify(_:)(void (*a1)(void))
{
  result = (*(*v1 + 96))();
  if (result)
  {
    a1();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t key path setter for SafeCallback.maybeObj : <A>SafeCallback<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t SafeCallback.__deallocating_deinit()
{
  MEMORY[0x1E12AA1D0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SafeCallback.__allocating_init()()
{
  v0 = swift_allocObject();
  SafeCallback.init()();
  return v0;
}

SiriUtilities::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InteractionType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionType and conformance InteractionType()
{
  result = lazy protocol witness table cache variable for type InteractionType and conformance InteractionType;
  if (!lazy protocol witness table cache variable for type InteractionType and conformance InteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionType and conformance InteractionType);
  }

  return result;
}

uint64_t one-time initialization function for builtInSpeaker()
{
  v0 = *MEMORY[0x1E69C8188];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.builtInSpeaker = result;
  unk_1EDB28488 = v2;
  return result;
}

uint64_t one-time initialization function for builtInReceiver()
{
  v0 = *MEMORY[0x1E69C8180];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.builtInReceiver = result;
  unk_1EDB28470 = v2;
  return result;
}

uint64_t one-time initialization function for headphones()
{
  v0 = *MEMORY[0x1E69C81A0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.headphones = result;
  unk_1EDB284B8 = v2;
  return result;
}

uint64_t one-time initialization function for bluetoothLEDevice()
{
  v0 = *MEMORY[0x1E69C8178];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.bluetoothLEDevice = result;
  *algn_1EDB28458 = v2;
  return result;
}

uint64_t one-time initialization function for bluetoothA2DPDevice()
{
  v0 = *MEMORY[0x1E69C8168];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.bluetoothA2DPDevice = result;
  unk_1EDB28440 = v2;
  return result;
}

uint64_t one-time initialization function for hdmi()
{
  v0 = *MEMORY[0x1E69C8198];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.hdmi = result;
  *algn_1EDB28408 = v2;
  return result;
}

uint64_t one-time initialization function for other()
{
  v0 = *MEMORY[0x1E69C81A8];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.other = result;
  unk_1EDB283F0 = v2;
  return result;
}

uint64_t AudioDestination.aceValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AudioDestination.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t AudioDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_5_1();
    v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static AudioDestination.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AudioDestination.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int AudioDestination.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination()
{
  result = lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination;
  if (!lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination);
  }

  return result;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t *LoadableCapability.init(container:capability:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = (v2 + *(*v2 + 112));
  *v5 = 0u;
  v5[1] = 0u;
  OUTLINED_FUNCTION_7();
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(v6 + 96));
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 104);
  v9 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16(AssociatedTypeWitness);
  (*(v11 + 32))(v2 + v8, a2);
  return v2;
}

uint64_t *LoadableCapability.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 104);
  v4 = *(v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16(AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v3);
  OUTLINED_FUNCTION_7();
  outlined destroy of Any?(v0 + *(v7 + 112));
  return v0;
}

uint64_t LoadableCapability._handler.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 112);
  swift_beginAccess();
  return outlined init with copy of Any?(v1 + v4, a1);
}

uint64_t LoadableCapability._handler.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 112);
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t LoadableCapability.handler.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v4 = v3;
  LoadableCapability._handler.getter(v8);
  if (v8[3])
  {
    outlined destroy of Any?(v8);
  }

  else
  {
    outlined destroy of Any?(v8);
    v5 = v1 + *(*v1 + 104);
    v6 = v1 + *(*v1 + 96);
    (*(*(v4 + 88) + 56))(v8, v5, *(v4 + 80));
    LoadableCapability._handler.setter(v8);
  }

  return LoadableCapability._handler.getter(a1);
}

uint64_t LoadableCapability.capability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_16(AssociatedTypeWitness);
  v9 = *(v8 + 16);

  return v9(a1, v1 + v3, v7);
}

uint64_t LoadableCapability.__allocating_init(container:capability:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LoadableCapability.init(container:capability:)(a1, a2);
  return v7;
}

uint64_t LoadableCapability.__deallocating_deinit()
{
  LoadableCapability.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata completion function for LoadableCapability(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = AssociatedTypeWitness;
    if (v8 <= 0x3F)
    {
      v12 = *(AssociatedTypeWitness - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static SiriEnvironmentTaskLocalStorage.environment.getter()
{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t one-time initialization function for $environment()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy13SiriUtilities0C11EnvironmentCSgGMd, &_ss9TaskLocalCy13SiriUtilities0C11EnvironmentCSgGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static SiriEnvironmentTaskLocalStorage.$environment = result;
  return result;
}

uint64_t static SiriEnvironmentTaskLocalStorage.$environment.getter()
{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentTaskLocalStorage(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t specialized PluginCapabilityCatalog.init(finder:)(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v137 = MEMORY[0x1E69E7CD0];
  v4 = *(v3 + 16);
  v120 = v3;
  if (v4)
  {
    v5 = v3;
    v127 = 0;
    v121 = 0;
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC8];
    v9 = MEMORY[0x1E69E7CC8];
    v116 = v3 + 32;
    v118 = *(v3 + 16);
    do
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_80;
      }

      outlined init with copy of Transforming(v7 + 40 * v6, &v138);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
      type metadata accessor for NSBundle();
      if (swift_dynamicCast())
      {
        v10 = v133;
        if (v133)
        {
          v122 = v6;
          v11 = NSBundle.advertisedCapabilities()();
          v12 = 0;
          v125 = *(v11 + 16);
          v13 = 32;
          v14 = v121;
          while (v125 != v12)
          {
            if (v12 >= *(v11 + 16))
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            v15 = *(v11 + v13);
            v16 = *(v11 + v13 + 16);
            v17 = *(v11 + v13 + 48);
            v144 = *(v11 + v13 + 32);
            v145 = v17;
            v142 = v15;
            v143 = v16;
            v138 = v15;
            v139 = v16;
            v140 = v144;
            v141 = v17;
            outlined init with copy of TransformationCapability(&v142, &v133);
            outlined init with copy of TransformationCapability(&v142, &v133);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMR);
            if (swift_dynamicCast())
            {
              outlined init with take of Transforming(v128, v130);
              v18 = v131;
              v19 = v132;
              __swift_project_boxed_opaque_existential_1(v130, v131);
              if ((*(v19 + 8))(v18, v19))
              {
                outlined init with copy of TransformationCapability(&v142, &v138);
                specialized Set._Variant.insert(_:)(&v133, &v142);
                v138 = v133;
                v139 = v134;
                v140 = v135;
                v141 = v136;
                outlined destroy of TransformationCapability(&v138);
              }

              __swift_destroy_boxed_opaque_existential_0(v130);
            }

            else
            {
              v129 = 0;
              memset(v128, 0, sizeof(v128));
              outlined destroy of CheckedContinuation<(), Error>?(v128, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMR);
            }

            _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v127);
            v20 = swift_allocObject();
            *(v20 + 16) = TransformationPlugin.supportedTransformations();
            *(v20 + 24) = 0;
            _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v14);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v138 = v8;
            v22 = specialized __RawDictionaryStorage.find<A>(_:)();
            v24 = v8[2];
            v25 = (v23 & 1) == 0;
            v26 = v24 + v25;
            if (__OFADD__(v24, v25))
            {
              goto LABEL_77;
            }

            v27 = v22;
            v28 = v23;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMd, &_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMR);
            v29 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26);
            v8 = v138;
            if (v29)
            {
              v30 = specialized __RawDictionaryStorage.find<A>(_:)();
              if ((v28 & 1) != (v31 & 1))
              {
                goto LABEL_82;
              }

              v27 = v30;
            }

            if ((v28 & 1) == 0)
            {
              v32 = *(v20 + 24);
              v33 = (*(v20 + 16))();
              v8[(v27 >> 6) + 8] |= 1 << v27;
              v34 = (v8[6] + (v27 << 6));
              v36 = v144;
              v35 = v145;
              v37 = v143;
              *v34 = v142;
              v34[1] = v37;
              v34[2] = v36;
              v34[3] = v35;
              *(v8[7] + 8 * v27) = v33;
              v38 = v8[2];
              v39 = __OFADD__(v38, 1);
              v40 = v38 + 1;
              if (v39)
              {
                goto LABEL_78;
              }

              v8[2] = v40;
              outlined init with copy of TransformationCapability(&v142, &v138);
            }

            v41 = (v8[7] + 8 * v27);
            v42 = v10;
            MEMORY[0x1E12A8DA0]();
            if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            outlined destroy of TransformationCapability(&v142);
            v13 += 64;
            ++v12;
            v14 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [A]);
            v127 = TransformationPlugin.supportedTransformations();
            v9 = v8;
          }

          v121 = v14;

          v4 = v118;
          v5 = v120;
          v6 = v122;
          v7 = v116;
        }
      }

      ++v6;
    }

    while (v6 != v4);
  }

  else
  {
    v127 = 0;
    v121 = 0;
    v8 = MEMORY[0x1E69E7CC8];
    v9 = MEMORY[0x1E69E7CC8];
  }

  v43 = v9 + 8;
  v44 = 1 << *(v9 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v9[8];
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  v117 = v9;
  v114 = v47;
  v115 = v9;
  v113 = v9 + 8;
  while (v46)
  {
    v49 = v48;
LABEL_36:
    v123 = v46;
    v119 = v49;
    v50 = (v9[6] + ((v49 << 12) | (__clz(__rbit64(v46)) << 6)));
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[3];
    v140 = v50[2];
    v141 = v53;
    v138 = v51;
    v139 = v52;
    v54 = MEMORY[0x1E69E7CC0];
    if (v117[2])
    {
      outlined init with copy of TransformationCapability(&v138, &v133);
      v55 = specialized __RawDictionaryStorage.find<A>(_:)();
      v56 = v54;
      if (v57)
      {
        v56 = *(v117[7] + 8 * v55);
      }
    }

    else
    {
      outlined init with copy of TransformationCapability(&v138, &v133);
      v56 = v54;
    }

    if (v56 >> 62)
    {
      if (v56 < 0)
      {
        v71 = v56;
      }

      else
      {
        v71 = v56 & 0xFFFFFFFFFFFFFF8;
      }

      v58 = MEMORY[0x1E12A94E0](v71);
      if (!v58)
      {
LABEL_55:

        v60 = v54;
        goto LABEL_56;
      }
    }

    else
    {
      v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        goto LABEL_55;
      }
    }

    *&v133 = v54;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58 & ~(v58 >> 63), 0);
    if (v58 < 0)
    {
      goto LABEL_81;
    }

    v59 = 0;
    v60 = v133;
    v126 = v56 & 0xC000000000000001;
    v61 = v58;
    v62 = v56;
    do
    {
      if (v126)
      {
        v63 = MEMORY[0x1E12A9320](v59, v56);
      }

      else
      {
        v63 = *(v56 + 8 * v59 + 32);
      }

      v64 = v63;
      v65 = NSBundle.packageId.getter();
      v67 = v66;

      *&v133 = v60;
      v69 = *(v60 + 16);
      v68 = *(v60 + 24);
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1);
        v60 = v133;
      }

      ++v59;
      *(v60 + 16) = v69 + 1;
      v70 = v60 + 16 * v69;
      *(v70 + 32) = v65;
      *(v70 + 40) = v67;
      v56 = v62;
    }

    while (v61 != v59);
    v58 = v61;

    v43 = v113;
LABEL_56:
    v124 = (v123 - 1) & v123;
    *&v133 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v72 = BidirectionalCollection<>.joined(separator:)();
    v74 = v73;

    v75 = specialized Set.contains(_:)(&v138, v137);
    if (v58 >= 2 && (v75 & 1) != 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.logger);
      outlined init with copy of TransformationCapability(&v138, &v133);

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v130[0] = v80;
        *v79 = 136315394;
        v133 = v138;
        v134 = v139;
        v135 = v140;
        v136 = v141;
        v81 = String.init<A>(describing:)();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v130);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2080;
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v130);

        *(v79 + 14) = v84;
        _os_log_impl(&dword_1DD1FF000, v77, v78, "Capability %s is marked exclusive, but multiple registrations were found: %s", v79, 0x16u);
        swift_arrayDestroy();
        v85 = v80;
        v43 = v113;
        MEMORY[0x1E12AA0F0](v85, -1, -1);
        MEMORY[0x1E12AA0F0](v79, -1, -1);
      }

      else
      {

        outlined destroy of TransformationCapability(&v138);
      }

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v47 = v114;
      v9 = v115;
      v46 = v124;
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_1DD1FF000, v95, v96, "All of the plugins for this capability will be ignored.", v97, 2u);
        MEMORY[0x1E12AA0F0](v97, -1, -1);
      }

      v98 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v99)
      {
        v100 = v98;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v130[0] = v8;
        v102 = v8[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMd, &_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMR);
        v103 = v102;
        v46 = v124;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v101, v103);
        v8 = v130[0];
        v104 = (*(v130[0] + 48) + (v100 << 6));
        v106 = *v104;
        v105 = v104[1];
        v107 = v104[3];
        v135 = v104[2];
        v136 = v107;
        v133 = v106;
        v134 = v105;
        outlined destroy of TransformationCapability(&v133);
        v108 = *(v8[7] + 8 * v100);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSBundleCGMd, &_sSaySo8NSBundleCGMR);
        lazy protocol witness table accessor for type TransformationCapability and conformance TransformationCapability();
        _NativeDictionary._delete(at:)();
        outlined destroy of TransformationCapability(&v138);
        v117 = v8;
      }

      else
      {
        outlined destroy of TransformationCapability(&v138);
      }

      v48 = v119;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      __swift_project_value_buffer(v86, static Logger.logger);
      outlined init with copy of TransformationCapability(&v138, &v133);

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v130[0] = v90;
        *v89 = 136315394;
        v133 = v138;
        v134 = v139;
        v135 = v140;
        v136 = v141;
        v91 = String.init<A>(describing:)();
        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v130);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2080;
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v130);

        *(v89 + 14) = v94;
        _os_log_impl(&dword_1DD1FF000, v87, v88, "Capability %s is supported by: %s", v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12AA0F0](v90, -1, -1);
        MEMORY[0x1E12AA0F0](v89, -1, -1);
      }

      else
      {

        outlined destroy of TransformationCapability(&v138);
      }

      outlined destroy of TransformationCapability(&v138);
      v48 = v119;
      v9 = v115;
      v47 = v114;
      v46 = v124;
    }
  }

  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      *(v111 + 24) = v117;
      v109 = PluginCatalog.init(packages:)(v120);
      __swift_destroy_boxed_opaque_existential_0(a1);
      _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v127);
      _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v121);
      return v109;
    }

    v46 = v43[v49];
    ++v48;
    if (v46)
    {
      goto LABEL_36;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t *a1@<X8>)
{
  result = URL.readCacheData()();
  if (v1)
  {

    result = 0;
    v4 = 0xF000000000000000;
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, void *a2)
{
  type metadata accessor for NSBundle();
  static NSBundle.packageFrom(_:)(a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
  if (swift_dynamicCast())
  {
    return v5[5];
  }

  else
  {
    return 0;
  }
}

uint64_t specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1)
{
  outlined init with copy of Transforming(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  swift_allocObject();
  return specialized PluginCapabilityCatalog.init(finder:)(v2);
}

uint64_t specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(&lazy protocol witness table cache variable for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = a3[3];
    v10 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v9);
    (*(v10 + 8))(v7, v8, v9, v10);
    return outlined consume of Data._Representation(v7, v8);
  }

  return result;
}

void *one-time initialization function for sharedInstance()
{
  type metadata accessor for TransformationPluginLoader();
  swift_allocObject();
  result = TransformationPluginLoader.().init()();
  static TransformationPluginLoader.sharedInstance = result;
  return result;
}

uint64_t static TransformationPluginLoader.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for systemPluginPath()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, static TransformationPluginLoader.systemPluginPath);
  __swift_project_value_buffer(v0, static TransformationPluginLoader.systemPluginPath);
  type metadata accessor for TransformationPluginLoader();
  static TransformationPluginLoader.libraryDirectory()();
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v6, v0);
}

void static TransformationPluginLoader.libraryDirectory()()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v18 = 0;
  v1 = [v0 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:&v18];

  v2 = v18;
  if (v1)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;

    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v18 = 0xD000000000000027;
    v19 = 0x80000001DD26B9E0;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    MEMORY[0x1E12A8C40](v6);

    v8 = v18;
    v7 = v19;
    v9 = one-time initialization token for logger;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315650;
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 115;
      *(v13 + 22) = 2080;
      *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v20);
      _os_log_impl(&dword_1DD1FF000, v11, v12, "FatalError at %s:%lu - %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v14, -1, -1);
      MEMORY[0x1E12AA0F0](v13, -1, -1);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t one-time initialization function for legacyPluginPath()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, static TransformationPluginLoader.legacyPluginPath);
  __swift_project_value_buffer(v0, static TransformationPluginLoader.legacyPluginPath);
  type metadata accessor for TransformationPluginLoader();
  static TransformationPluginLoader.libraryDirectory()();
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v6, v0);
}

void *TransformationPluginLoader.().init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v31 - v12;
  v0[3] = 0;
  type metadata accessor for TransformationRegistry();
  swift_allocObject();
  v0[4] = TransformationRegistry.init(fallback:)(0);

  TransformationRegistry.registerCommonTransformers()();

  if (one-time initialization token for systemPluginPath != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, static TransformationPluginLoader.systemPluginPath);
  v34[3] = v3;
  v34[4] = &protocol witness table for URL;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
  v16 = *(v4 + 16);
  v16(boxed_opaque_existential_0, v14, v3);
  if (one-time initialization token for legacyPluginPath != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, static TransformationPluginLoader.legacyPluginPath);
  v32 = v3;
  v33 = &protocol witness table for URL;
  v18 = __swift_allocate_boxed_opaque_existential_0(&v31);
  v16(v18, v17, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12PluginFinder_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12PluginFinder_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD2671B0;
  outlined init with copy of Transforming(v34, v19 + 32);
  outlined init with take of Transforming(&v31, v19 + 72);
  __swift_destroy_boxed_opaque_existential_0(v34);
  static TransformationPluginLoader.getSystemPluginCachePathURL()();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
  v20 = _s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_10Foundation3URLVTt1g5Tf4en_nAA06MergedcI0V_TB5(v19, v13);

  outlined destroy of CheckedContinuation<(), Error>?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[2] = v20;
  v21 = [objc_opt_self() processInfo];
  v22 = [v21 environment];

  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(0xD00000000000002BLL, 0x80000001DD26B8B0, v23);
  v25 = v24;

  if (v25)
  {
    URL.init(fileURLWithPath:)();

    v26 = _s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_AA04NulljkL0VTt1B5Tf4en_n10Foundation3URLV_Tg5(v8, 0);
    (*(v4 + 8))(v8, v3);
    v27 = v1[3];
    v1[3] = v26;
  }

  v28 = v1[2];

  specialized TransformationPluginLoader.registerLoadableTransformations<A>(container:)();

  if (v1[3])
  {
    v29 = v1[3];

    specialized TransformationPluginLoader.registerLoadableTransformations<A>(container:)();
  }

  return v1;
}

uint64_t static TransformationPluginLoader.getSystemPluginCachePathURL()()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v26 = 0;
  v7 = [v6 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v26];

  v8 = v26;
  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    URL.appendingPathComponent(_:)();
    result = (*(v1 + 8))(v5, v0);
    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v26 = 0xD000000000000025;
    v27 = 0x80000001DD26B8E0;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    MEMORY[0x1E12A8C40](v13);

    v15 = v26;
    v14 = v27;
    v16 = one-time initialization token for logger;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.logger);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315650;
      v22 = StaticString.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v28);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      *(v20 + 14) = 106;
      *(v20 + 22) = 2080;
      *(v20 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v28);
      _os_log_impl(&dword_1DD1FF000, v18, v19, "FatalError at %s:%lu - %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v21, -1, -1);
      MEMORY[0x1E12AA0F0](v20, -1, -1);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized TransformationPluginLoader.registerLoadableTransformations<A>(container:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134218240;
    swift_beginAccess();
    *(v3 + 4) = 0;
    *(v3 + 12) = 2048;
    swift_beginAccess();
    *(v3 + 14) = 0;
    _os_log_impl(&dword_1DD1FF000, v1, v2, "Loaded %ld typed transformations and %ld named transformations", v3, 0x16u);
    MEMORY[0x1E12AA0F0](v3, -1, -1);
  }
}

uint64_t specialized closure #1 in TransformationPluginLoader.registerLoadableTransformations<A>(container:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = a3;
  v5 = (*(*a1 + 224))();
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 32;
  v24 = v5;
  while (1)
  {
    v8 = *(v5 + v7);
    v9 = *(v5 + v7 + 16);
    v10 = *(v5 + v7 + 48);
    v33 = *(v5 + v7 + 32);
    v34 = v10;
    *v32 = v8;
    *&v32[16] = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities22LoadableTransformationCyAA23PluginCapabilityCatalogCySo8NSBundleCGGMd, &_s13SiriUtilities22LoadableTransformationCyAA23PluginCapabilityCatalogCySo8NSBundleCGGMR);
    result = swift_allocObject();
    v13 = result;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 16) = a1;
    v14 = *&v32[16];
    *(result + 24) = *v32;
    v15 = v33;
    *(result + 40) = v14;
    *(result + 56) = v15;
    *(result + 72) = v34;
    if (v32[0] == 1)
    {
      break;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_13;
    }

    ++*a4;
    v20 = *(v39 + 32);
    v37 = *&v32[8];
    v38 = *&v32[24];
    v30 = *&v32[8];
    v31 = *&v32[24];
    v28 = v11;
    v29 = &protocol witness table for LoadableTransformation<A>;
    *&v26 = result;
    v21 = *(*v20 + 192);
    outlined init with copy of TransformationCapability(v32, v25);
    outlined init with copy of TransformationCapability(v32, v25);

    outlined init with copy of TransformationIdentifier(&v37, v25);
    v21(&v30, &v26);
    outlined destroy of TransformationCapability(v32);

    v19 = &v26;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v19);
    v7 += 64;
    --v6;
    v5 = v24;
    if (!v6)
    {
    }
  }

  if (!__OFADD__(*a2, 1))
  {
    ++*a2;
    v16 = *(v39 + 32);
    v28 = v11;
    v29 = &protocol witness table for LoadableTransformation<A>;
    *&v26 = result;
    v17 = *(*v16 + 184);
    outlined init with copy of TransformationCapability(v32, v25);
    outlined init with copy of TransformationCapability(v32, v25);

    v17(&v26);
    __swift_destroy_boxed_opaque_existential_0(&v26);
    v35 = *&v32[8];
    v36 = *&v32[24];
    v26 = *&v32[8];
    v27 = *&v32[24];
    v25[3] = v11;
    v25[4] = &protocol witness table for LoadableTransformation<A>;
    v25[0] = v13;
    v18 = *(*v16 + 192);

    outlined init with copy of TransformationIdentifier(&v35, &v30);
    v18(&v26, v25);
    outlined destroy of TransformationCapability(v32);

    v19 = v25;
    goto LABEL_8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *TransformationPluginLoader.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t TransformationPluginLoader.__deallocating_deinit()
{
  TransformationPluginLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t (*_s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_10Foundation3URLVTt1g5Tf4en_nAA06MergedcI0V_TB5(uint64_t a1, uint64_t a2))@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[3] = &type metadata for MergedPluginFinder;
  v62[4] = &protocol witness table for MergedPluginFinder;
  v62[0] = a1;
  outlined init with copy of URL?(a2, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {

    v23 = outlined destroy of CheckedContinuation<(), Error>?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v25 = v18;
LABEL_10:
    if (one-time initialization token for pluginLoaderLog != -1)
    {
      v23 = swift_once();
    }

    v37 = static Logger.pluginLoaderLog;
    MEMORY[0x1EEE9AC00](v23, v24);
    *(&v50 - 2) = v62;
    _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZAA23PluginCapabilityCatalogCySo8NSBundleCG_Tt3g5("FindPlugins", 11, 2, v37, partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:), (&v50 - 4), v38, v39, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56, v57, v58, v59, v60);
    v49 = v40;
    outlined init with copy of URL?(a2, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v17) == 1)
    {
      outlined destroy of CheckedContinuation<(), Error>?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v57 = v17;
      v58 = &protocol witness table for URL;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v55);
      (*(v25 + 32))(boxed_opaque_existential_0, v13, v17);
      outlined init with take of Transforming(&v55, &v59);
      v42 = type metadata accessor for PropertyListEncoder();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v45 = PropertyListEncoder.init()();
      v46 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
      MEMORY[0x1EEE9AC00](v46, v47);
      *(&v50 - 4) = v45;
      *(&v50 - 3) = v49;
      *(&v50 - 2) = &v59;
      _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();

      __swift_destroy_boxed_opaque_existential_0(&v59);
    }

    goto LABEL_15;
  }

  v52 = v18;
  (*(v18 + 32))(v22, v16, v17);
  v26 = one-time initialization token for pluginLoaderLog;

  if (v26 != -1)
  {
    v27 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v50 - 2) = v22;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();
  v29 = v60;
  if (v60 >> 60 == 15)
  {
    v25 = v52;
    v23 = (*(v52 + 8))(v22, v17);
    goto LABEL_10;
  }

  v50 = a2;
  v51 = v59;
  v30 = type metadata accessor for PropertyListDecoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v4, static CodingUserInfoKey.catalogPackageInflator);
  v34 = v54;
  (*(v53 + 16))(v54, v33, v4);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSBundleCSgSScMd, &_sSo8NSBundleCSgSScMR);
  v59 = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  v60 = 0;
  v35 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  specialized Dictionary.subscript.setter(&v59, v34);
  v35(&v55, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(&lazy protocol witness table cache variable for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  v36 = v51;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  outlined consume of Data?(v36, v29);
  v49 = v59;
  (*(v52 + 8))(v22, v17);
LABEL_15:
  __swift_destroy_boxed_opaque_existential_0(v62);
  return v49;
}

uint64_t _s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_AA04NulljkL0VTt1B5Tf4en_n10Foundation3URLV_Tg5(uint64_t a1, char a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v32[3] = v10;
  v32[4] = &protocol witness table for URL;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  v12 = (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a1, v10);
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for pluginLoaderLog != -1)
    {
      swift_once();
    }

    v14 = static Logger.pluginLoaderLog;
    v12 = OS_os_log.signpostsEnabled.getter();
    if (v12)
    {
      v15 = v14;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      static os_signpost_type_t.end.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v12 = (*(v5 + 8))(v9, v4);
    }
  }

  if (one-time initialization token for pluginLoaderLog != -1)
  {
    v12 = swift_once();
  }

  v16 = static Logger.pluginLoaderLog;
  MEMORY[0x1EEE9AC00](v12, v13);
  *(&v28 - 2) = v32;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZAA23PluginCapabilityCatalogCySo8NSBundleCG_Tt3g5("FindPlugins", 11, 2, v16, partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:), (&v28 - 2), v17, v18, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v32[0]);
  v20 = v19;
  LOBYTE(v31[0]) = a2 & 1;
  if (a2)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13CacheDataSink_pMd, "~f");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_14;
  }

  if (!*(&v29 + 1))
  {
LABEL_14:
    outlined destroy of CheckedContinuation<(), Error>?(&v28, &_s13SiriUtilities13CacheDataSink_pSgMd, "|f");
    goto LABEL_15;
  }

  outlined init with take of Transforming(&v28, v31);
  v21 = type metadata accessor for PropertyListEncoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = PropertyListEncoder.init()();
  v25 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
  MEMORY[0x1EEE9AC00](v25, v26);
  *(&v28 - 4) = v24;
  *(&v28 - 3) = v20;
  *(&v28 - 2) = v31;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();

  __swift_destroy_boxed_opaque_existential_0(v31);
LABEL_15:
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v20;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed () -> (@owned [A])@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t *a1@<X8>)
{
  return sub_1DD217340(*(v1 + 16), a1);
}

{
  return partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)(a1);
}

uint64_t partial apply for specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)()
{
  return specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return partial apply for specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)();
}

uint64_t lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Restrictions.init(deviceRestrictions:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DeviceRestrictions.aceSet.getter();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t Restrictions.init(restrictedCommands:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v3);
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v8 == v6)
    {

      a2[1] = v7;
      return result;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    ++v6;
    v11 = *(i - 1);
    v10 = *i;

    v12._countAndFlagsBits = v11;
    v12._object = v10;
    result = DeviceRestrictions.init(aceValue:)(v12).rawValue;
    v7 |= v13;
  }

  __break(1u);
  return result;
}

uint64_t Restrictions.init(aceValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, "dl");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD265D10;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);

  v13 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v12);
  result = OUTLINED_FUNCTION_0_30(v13);
  while (1)
  {
    if (v5 == v4)
    {

      *a3 = v11;
      a3[1] = v3;
      return result;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v16 = *(v6 - 1);
    v15 = *v6;

    v17._countAndFlagsBits = v16;
    v17._object = v15;
    result = DeviceRestrictions.init(aceValue:)(v17).rawValue;
    v3 |= v18;
    v6 += 2;
  }

  __break(1u);
  return result;
}

uint64_t Restrictions.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of Encoder.singleValueContainer()();
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

Swift::Int Restrictions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v17);

  result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v15);
  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v10 == v8)
    {

      __swift_destroy_boxed_opaque_existential_0(v16);
      *a2 = v15;
      a2[1] = v9;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    ++v8;
    v13 = *(i - 1);
    v12 = *i;

    v14._countAndFlagsBits = v13;
    v14._object = v12;
    result = DeviceRestrictions.init(aceValue:)(v14).rawValue;
    v9 |= v17;
  }

  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities14TypeIdentifierV_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities14TypeIdentifierVGMd, "\bq");
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t SiriEnvironmentValue.wrappedValue.getter()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315650;
    v5 = StaticString.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2048;
    *(v3 + 14) = 21;
    *(v3 + 22) = 2080;
    *(v3 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001DD26BA30, &v9);
    _os_log_impl(&dword_1DD1FF000, v1, v2, "FatalError at %s:%lu - %s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12AA0F0](v4, -1, -1);
    MEMORY[0x1E12AA0F0](v3, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SiriEnvironmentValue.__allocating_init<A>()()
{
  KeyPath = swift_getKeyPath();
  v2 = *(v0 + 104);

  return v2(KeyPath);
}

uint64_t SiriEnvironmentValue.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in SiriEnvironmentValue.init(_:);
  *(result + 24) = a1;
  return result;
}

uint64_t SiriEnvironmentValue.init(_:)(uint64_t a1)
{
  *(v1 + 16) = partial apply for closure #1 in SiriEnvironmentValue.init(_:);
  *(v1 + 24) = a1;
  return v1;
}

uint64_t SiriEnvironmentValue.__allocating_init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23();
  v6 = swift_allocObject();
  SiriEnvironmentValue.init<A>(_:_:)(a1, a2, a3);
  return v6;
}

uint64_t SiriEnvironmentValue.init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  *(v3 + 16) = partial apply for closure #1 in SiriEnvironmentValue.init<A>(_:_:);
  *(v3 + 24) = v7;
  return v3;
}

uint64_t closure #1 in SiriEnvironmentValue.init<A>(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a1 + 208))(a2, *(*a3 + *MEMORY[0x1E69E77B0]), a4);
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

void *specialized ObjectAssociation.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11ObjectEntry33_B7E3A56AD457ECD1C0BC5D91BCBAE1E5LLVyAA0A11EnvironmentCGMd, &_s13SiriUtilities11ObjectEntry33_B7E3A56AD457ECD1C0BC5D91BCBAE1E5LLVyAA0A11EnvironmentCGMR);
  v0[2] = Dictionary.init(dictionaryLiteral:)();
  v1 = type metadata accessor for DispatchSemaphoreLock();
  v2 = swift_allocObject();
  *(v2 + 16) = dispatch_semaphore_create(1);
  v0[6] = v1;
  v0[7] = &protocol witness table for DispatchSemaphoreLock;
  v0[3] = v2;
  return v0;
}

uint64_t key path getter for SiriEnvironmentLocating<>.siriEnvironment : <A>A@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironmentLocating<>.siriEnvironment.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for SiriEnvironmentLocating<>.siriEnvironment : <A>A(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriEnvironmentLocating<>.siriEnvironment.setter(v4);
}

uint64_t (*SiriEnvironmentLocating<>.siriEnvironment.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SiriEnvironmentLocating<>.siriEnvironment.getter();
  return SiriEnvironmentLocating<>.siriEnvironment.modify;
}

uint64_t SiriEnvironmentLocating<>.siriEnvironment.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[3];
  if ((a2 & 1) == 0)
  {
    return SiriEnvironmentLocating<>.siriEnvironment.setter(*a1);
  }

  v4 = *a1;

  SiriEnvironmentLocating<>.siriEnvironment.setter(v5);
}

void *one-time initialization function for cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ObjectAssociationCyAA0A11EnvironmentCGMd, "PG");
  swift_allocObject();
  result = specialized ObjectAssociation.init()();
  static ProcessWideEnvironment.cache = result;
  return result;
}

uint64_t SiriEnvironment.coreTelephonyService.getter()
{
  v0 = type metadata accessor for CoreTelephonyService();
  OUTLINED_FUNCTION_7();
  v7 = *(v1 + 208);
  OUTLINED_FUNCTION_0_32();
  v5 = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(v2, v3, v4);

  return v7(v0, v0, v5);
}

uint64_t key path setter for SiriEnvironment.coreTelephonyService : SiriEnvironment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriEnvironment.coreTelephonyService.setter(v4);
}

uint64_t SiriEnvironment.coreTelephonyService.setter(uint64_t a1)
{
  v2 = type metadata accessor for CoreTelephonyService();
  OUTLINED_FUNCTION_7();
  v9 = *(v3 + 216);
  OUTLINED_FUNCTION_0_32();
  v7 = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(v4, v5, v6);

  return v9(a1, v2, v2, v7);
}

uint64_t (*SiriEnvironment.coreTelephonyService.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = type metadata accessor for CoreTelephonyService();
  a1[2] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 208);
  OUTLINED_FUNCTION_0_32();
  v9 = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(v6, v7, v8);
  a1[3] = v9;
  *a1 = v5(v3, v3, v9);
  return SiriEnvironment.networkAvailability.modify;
}

uint64_t key path setter for CoreTelephonyService.mock : CoreTelephonyService(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t CoreTelephonyService.mock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

double key path getter for CoreTelephonyService.coreTelephonyAPIBridge : CoreTelephonyService@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 160))(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t key path setter for CoreTelephonyService.coreTelephonyAPIBridge : CoreTelephonyService(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v4 = *(**a2 + 168);

  return v4(v6);
}

uint64_t CoreTelephonyService.coreTelephonyAPIBridge.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *a1 = *(v1 + 24);
  v4 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 40) = *(v1 + 64);
  *(a1 + 56) = v3;
}

uint64_t CoreTelephonyService.coreTelephonyAPIBridge.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = a1[1];
  *(v1 + 24) = *a1;
  *(v1 + 40) = v7;
  v8 = a1[3];
  *(v1 + 56) = a1[2];
  *(v1 + 72) = v8;
}

uint64_t CoreTelephonyService.__allocating_init(coreTelephonyAPIBridge:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  CoreTelephonyService.init(coreTelephonyAPIBridge:)(a1);
  return v2;
}

void *CoreTelephonyService.init(coreTelephonyAPIBridge:)(_OWORD *a1)
{
  v2 = v1;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v23 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v4);
  OUTLINED_FUNCTION_8_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  OUTLINED_FUNCTION_8_0();
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  OUTLINED_FUNCTION_8_0();
  v1[2] = 0;
  type metadata accessor for OS_dispatch_queue();
  v1[12] = 0;
  v1[13] = 0;
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = *MEMORY[0x1E69E8090];
  v15 = *(v24 + 104);
  v15(v7, v14, v23);
  OUTLINED_FUNCTION_3_17();
  v1[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15(v7, v14, v23);
  OUTLINED_FUNCTION_3_17();
  v1[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v1[11] = v16;
  v17 = v16;
  v18 = MEMORY[0x1E12A8BC0](0xD000000000000021, 0x80000001DD26BB30);
  [v17 setName_];

  v19 = a1[1];
  *(v2 + 3) = *a1;
  *(v2 + 5) = v19;
  v20 = a1[3];
  *(v2 + 7) = a1[2];
  *(v2 + 9) = v20;
  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t CoreTelephonyService.__allocating_init(storage:)()
{
  v3[0] = closure #1 in CoreTelephonyAPIBridge.init();
  v3[1] = 0;
  v3[2] = closure #2 in CoreTelephonyAPIBridge.init();
  v3[3] = 0;
  v3[4] = closure #3 in CoreTelephonyAPIBridge.init();
  v3[5] = 0;
  v3[6] = closure #4 in CoreTelephonyAPIBridge.init();
  v3[7] = 0;
  v1 = (*(v0 + 232))(v3);

  return v1;
}

uint64_t CoreTelephonyService.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);

  return v0;
}

uint64_t CoreTelephonyService.__deallocating_deinit()
{
  CoreTelephonyService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

void (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance CoreTelephonyService(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 152))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability;
}

uint64_t instantiation function for generic protocol witness table for CoreTelephonyService(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CoreTelephonyService and conformance CoreTelephonyService, a2, type metadata accessor for CoreTelephonyService);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CoreTelephonyService and conformance CoreTelephonyService, a2, type metadata accessor for CoreTelephonyService);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CoreTelephonyService@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CoreTelephonyService();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of CoreTelephonyService.coreTelephonyAPIBridge.setter()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 168);
  v3 = v2[1];
  v6[0] = *v2;
  v6[1] = v3;
  v4 = v2[3];
  v6[2] = v2[2];
  v6[3] = v4;
  return v1(v6);
}

uint64_t dispatch thunk of CoreTelephonyService.__allocating_init(coreTelephonyAPIBridge:)(_OWORD *a1)
{
  v2 = *(v1 + 232);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

SiriUtilities::SiriVoiceGender_optional __swiftcall SiriVoiceGender.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriVoiceGender.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t SiriVoiceGender.rawValue.getter()
{
  v1 = 0x656C616D6546;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701601613;
  }
}

unint64_t lazy protocol witness table accessor for type SiriVoiceGender and conformance SiriVoiceGender()
{
  result = lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender;
  if (!lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriVoiceGender@<X0>(uint64_t *a1@<X8>)
{
  result = SiriVoiceGender.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriVoiceGender(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int DeviceClass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for classNumberToDeviceClass()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static MobileGestaltDeviceClassProvider.classNumberToDeviceClass = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass()
{
  result = lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass;
  if (!lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestaltDeviceClassProvider(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_20();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  return String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  InputOrigin.rawValue.getter();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_22();
  }

  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_4_15();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_3_18();
  InputOrigin.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_4_15();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_3_18();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_4_15();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_3_18();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_4_15();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_20();
  return Hasher._finalize()();
}

SiriUtilities::PersonalDomainsAuthenticationMode_optional __swiftcall PersonalDomainsAuthenticationMode.init(aceValue:)(Swift::String_optional aceValue)
{
  v2 = v1;
  if (!aceValue.value._object)
  {
    goto LABEL_23;
  }

  object = aceValue.value._object;
  countAndFlagsBits = aceValue.value._countAndFlagsBits;
  v5 = *MEMORY[0x1E69C8128];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() != countAndFlagsBits || v6 != object)
  {
    v8 = OUTLINED_FUNCTION_0_0();

    if (v8)
    {
      goto LABEL_9;
    }

    v10 = *MEMORY[0x1E69C8130];
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v11 == object)
    {

LABEL_17:

      v9 = 1;
      goto LABEL_24;
    }

    v13 = OUTLINED_FUNCTION_0_0();

    if (v13)
    {
      goto LABEL_17;
    }

    v14 = *MEMORY[0x1E69C8138];
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v15 == object)
    {
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_0();

      if ((v17 & 1) == 0)
      {
LABEL_23:
        v9 = 3;
        goto LABEL_24;
      }
    }

    v9 = 2;
    goto LABEL_24;
  }

LABEL_9:

  v9 = 0;
LABEL_24:
  *v2 = v9;
  return aceValue.value._countAndFlagsBits;
}

SiriUtilities::PersonalDomainsAuthenticationMode_optional __swiftcall PersonalDomainsAuthenticationMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PersonalDomainsAuthenticationMode.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t PersonalDomainsAuthenticationMode.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x6552657275636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C61;
  }
}

unint64_t lazy protocol witness table accessor for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode()
{
  result = lazy protocol witness table cache variable for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode;
  if (!lazy protocol witness table cache variable for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PersonalDomainsAuthenticationMode@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalDomainsAuthenticationMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Transformer.inputType.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  TypeInformation.init(for:)(v7);
  v5 = v8;
  v4 = v9;

  result = outlined destroy of TypeInformation(v7);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t Transformer.outputType.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  TypeInformation.init(for:)(v7);
  v5 = v8;
  v4 = v9;

  result = outlined destroy of TypeInformation(v7);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t *Transformer.typeErasedTransform(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v26 - v12;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v20 = v3[1];
  v26[0] = v19;
  outlined init with copy of Any(a1, v27);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v6);
    (*(v14 + 32))(v18, v13, v6);
    v21 = v28;
    v28[3] = *(a2 + 24);
    __swift_allocate_boxed_opaque_existential_0(v21);
    v22 = v26[1];
    (v26[0])(v18);
    result = (*(v14 + 8))(v18, v6);
    if (v22)
    {
      return __swift_deallocate_boxed_opaque_existential_0(v21);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v6);
    (*(v8 + 8))(v13, v7);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v25 = v6;
    *(v25 + 8) = DynamicType;
    *(v25 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE20]();
}