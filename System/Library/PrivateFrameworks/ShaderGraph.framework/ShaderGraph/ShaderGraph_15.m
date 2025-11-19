uint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    a3();
  }

  return a4(v8, a2, 0);
}

uint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);

  return specialized ContiguousArray._endMutation()();
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *v3;
  a2(0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t outlined init with take of WeakBox<SGEdge>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of OrderedSet<Input>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of OrderedSet<Input>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  return specialized closure #1 in Sequence<>.contains(_:)(v6, v8);
}

uint64_t outlined copy of UserGraph.Adjacent?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id SGMaterialConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGMaterialConfiguration.init()()
{
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___SGMaterialConfiguration_customGeometryProperties] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___SGMaterialConfiguration_functionConstantInputs] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SGMaterialConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

Class @objc SGMaterialConfiguration.customGeometryProperties.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  v6 = *a3;
  swift_beginAccess();
  v7 = *(a1 + v6);
  a4(0);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t @objc SGMaterialConfiguration.customGeometryProperties.setter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t *a5)
{
  a4(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *a5;
  swift_beginAccess();
  v9 = *(a1 + v8);
  *(a1 + v8) = v7;
}

id one-time initialization function for default()
{
  result = [objc_allocWithZone(type metadata accessor for SGMaterialConfiguration()) init];
  static SGMaterialConfiguration.default = result;
  return result;
}

uint64_t *SGMaterialConfiguration.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return &static SGMaterialConfiguration.default;
}

id static SGMaterialConfiguration.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static SGMaterialConfiguration.default;

  return v1;
}

Swift::Int SGMaterialConfiguration.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1 & 1);
  return Hasher._finalize()();
}

unint64_t SGMaterialConfiguration.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000018;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SGMaterialConfiguration.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGMaterialConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SGMaterialConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGMaterialConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGMaterialConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SGMaterialConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v11);
  HIBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMd, &_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMR);
  lazy protocol witness table accessor for type [SGGeometryPropertyDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGGeometryPropertyDefinition] and conformance <A> [A], &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v16 = (*((*v12 & *v3) + 0x78))(v13);
    HIBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type [SGInput] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A], &lazy protocol witness table cache variable for type SGInput and conformance SGInput);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

char *SGMaterialConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMR);
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v8 = &v23 - v7;
  v9 = OBJC_IVAR___SGMaterialConfiguration_customGeometryProperties;
  v10 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___SGMaterialConfiguration_customGeometryProperties] = MEMORY[0x277D84F90];
  v24 = OBJC_IVAR___SGMaterialConfiguration_functionConstantInputs;
  *&v1[OBJC_IVAR___SGMaterialConfiguration_functionConstantInputs] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v16 = *&v1[v9];

    v17 = *&v1[v24];

    type metadata accessor for SGMaterialConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMd, &_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMR);
    v27 = 0;
    lazy protocol witness table accessor for type [SGGeometryPropertyDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGGeometryPropertyDefinition] and conformance <A> [A], &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition);
    v13 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v26;
    swift_beginAccess();
    v15 = *&v3[v9];
    *&v3[v9] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    v28 = 1;
    lazy protocol witness table accessor for type [SGInput] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A], &lazy protocol witness table cache variable for type SGInput and conformance SGInput);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v26)
    {
      v19 = v26;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    (*(v12 + 8))(v8, v13);
    v20 = v24;
    swift_beginAccess();
    v21 = *&v3[v20];
    *&v3[v20] = v19;

    v22 = type metadata accessor for SGMaterialConfiguration();
    v25.receiver = v3;
    v25.super_class = v22;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t SGMaterialConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v13);
  if (!v14)
  {
    outlined destroy of Any?(v13);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v10 = 0;
    return v10 & 1;
  }

  if (v12 == v1)
  {

    v10 = 1;
    return v10 & 1;
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
  v5 = (*((*v3 & *v12) + 0x60))();
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph28SGGeometryPropertyDefinitionC_Tt1g5(v4, v5);

  if ((v6 & 1) == 0)
  {

    goto LABEL_9;
  }

  v8 = (*((*v3 & *v1) + 0x78))(v7);
  v9 = (*((*v3 & *v12) + 0x78))();
  v10 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7SGInputC_Tt1g5(v8, v9);

  return v10 & 1;
}

id SGMaterialConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGMaterialConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SGMaterialConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized SGMaterialConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000265F32370 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000265F32350 == a2)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SGGeometryPropertyDefinition] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMd, &_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMR);
    lazy protocol witness table accessor for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition(a2, type metadata accessor for SGGeometryPropertyDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SGInput] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition(a2, type metadata accessor for SGInput);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265E75A68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_265E75AC4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v3(v4);
}

uint64_t sub_265E75B28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_265E75B84(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v3(v4);
}

uint64_t OrderedDictionary<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v43 = *(a6 - 8);
  v44 = a7;
  v16 = *(v43 + 64);
  v39 = a9;
  MEMORY[0x28223BE20](a1);
  v35 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v18 - 8);
  v19 = *(v38 + 64);
  MEMORY[0x28223BE20](v20);
  v51 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = type metadata accessor for Optional();
  v46 = *(v50 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v48 = &v34 - v26;
  v27 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  dispatch thunk of Encoder.unkeyedContainer()();
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = 0;
  v58 = a5;
  v28 = type metadata accessor for OrderedDictionary.Iterator();
  v46 += 32;
  v47 = v28;
  v45 = TupleTypeMetadata2 - 8;
  v40 = (v43 + 32);
  v41 = (v38 + 32);
  v42 = (v43 + 8);
  v43 = v38 + 8;
  v38 = a2;
  v29 = v35;

  v37 = a3;

  v36 = a4;

  while (1)
  {
    v30 = v49;
    OrderedDictionary.Iterator.next()(v47, v49);
    v31 = v48;
    (*v46)(v48, v30, v50);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v31, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v32 = *(TupleTypeMetadata2 + 48);
    (*v41)(v51, v31, v58);
    (*v40)(v29, &v31[v32], a6);
    __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (v9)
    {
      (*v42)(v29, a6);
      (*v43)(v51, v58);
      break;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    (*v42)(v29, a6);
    (*v43)(v51, v58);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v56);
}

uint64_t OrderedDictionary<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v58 = a5;
  v64 = a4;
  v54 = type metadata accessor for DecodingError.Context();
  v53 = *(v54 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a3 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v65 = a2;
  v55 = *(a2 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v62;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v18;
  }

  v60 = v15;
  v61 = v18;
  v51 = v11;
  v62 = v22;
  v52 = a1;
  v25 = v58;
  v18 = OrderedSet.init()(v65);
  v27 = v26;
  v28 = static Array._allocateUninitialized(_:)();
  v29 = MEMORY[0x266772110](v28, a3);
  v71 = v18;
  v72 = v27;
  v73 = v29;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
  {
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    return v18;
  }

  v56 = (v59 + 8);
  v57 = (v59 + 16);
  v59 = v55 + 8;
  v31 = v62;
  v32 = v65;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    OrderedSet._find(_:)(v31, v71, v72, v32, v25);
    v34 = v33;
    v36 = v35;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
    {
      v47 = type metadata accessor for DecodingError();
      swift_allocError();
      v49 = v48;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      dispatch thunk of UnkeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84168], v47);
      swift_willThrow();
      (*v59)(v62, v65);
      goto LABEL_14;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v18 = v61;
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v31 = v62;
    v32 = v65;
    v37 = type metadata accessor for OrderedSet();
    OrderedSet._appendNew(_:in:)(v31, v36, v37);
    (*v57)(v60, v18, a3);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    (*v56)(v18, a3);
    (*v59)(v31, v32);
    __swift_project_boxed_opaque_existential_1(v69, v70);
    if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
    {
      v18 = v71;
      goto LABEL_4;
    }
  }

  v38 = v59;
  dispatch thunk of UnkeyedDecodingContainer.codingPath.getter();
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v67 = 0xD000000000000018;
  v68 = 0x8000000265F323E0;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  result = dispatch thunk of UnkeyedDecodingContainer.currentIndex.getter();
  v39 = v54;
  v40 = v53;
  v41 = v51;
  if (!__OFSUB__(result, 1))
  {
    v66 = result - 1;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v42);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    (*(v40 + 16))(v44, v41, v39);
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84168], v43);
    swift_willThrow();
    v46 = *(v40 + 8);
    v18 = (v40 + 8);
    v46(v41, v39);
    (*v38)(v62, v65);
LABEL_14:
    v50 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance <> OrderedDictionary<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = OrderedDictionary<>.init(from:)(a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  type metadata accessor for OrderedSet();
  OrderedSet.swapAt(_:_:)(a1, a2);
  v8 = *(v3 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  MutableCollection.swapAt(_:_:)();
}

void *OrderedDictionary.partition(by:)(uint64_t (*a1)(char *, char *), uint64_t a2, void *a3)
{
  v8 = a3[3];
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v16[0] = v11;
  v16[1] = v10;
  v12 = a3[2];
  v13 = a3[4];
  closure #1 in OrderedDictionary.partition(by:)(v16, a1, a2, v8, &v15, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (v4)
  {
    return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v16, v11, v10);
  }

  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v16, v11, v10);
  return v17;
}

uint64_t OrderedDictionary.sort(by:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3[1];
  v6 = v3[2];
  v14[13] = *v3;
  v14[14] = v5;
  v14[15] = v6;
  v7 = a3[3];
  v15 = a3[2];
  v14[8] = v15;
  v14[9] = v7;
  v8 = a3[4];
  v14[10] = v8;
  v14[11] = a1;
  v14[12] = a2;

  swift_getWitnessTable();
  v9 = Sequence.sorted(by:)();

  if (!v4)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v12 = MEMORY[0x266771860](v9, TupleTypeMetadata2);
    result = ContiguousArray.count.getter();
    if (v12 == result)
    {
      MEMORY[0x28223BE20](result);
      v14[2] = v15;
      v14[3] = v7;
      v14[4] = v8;
      v14[5] = v3;
      _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedDictionary.sort(by:), v14, v9, TupleTypeMetadata2, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t OrderedDictionary<>.sort()(uint64_t a1, uint64_t a2)
{
  v4[1] = *(a1 + 16);
  v2 = *(a1 + 32);
  v5 = a2;
  v6 = v2;
  return OrderedDictionary.sort(by:)(partial apply for closure #1 in OrderedDictionary<>.sort(), v4, a1);
}

uint64_t OrderedDictionary.shuffle<A>(using:)(uint64_t a1, void *a2)
{
  v4 = v2[2];
  v5 = a2[3];
  result = ContiguousArray.count.getter();
  if (result >= 2)
  {
    v7 = *v2;
    v8 = v2[1];
    v9 = a2[2];
    v10 = a2[4];
    v30 = v4;
    v31 = OrderedSet.elements.getter();

    swift_getTupleTypeMetadata2();
    v11 = static Array._allocateUninitialized(_:)();
    specialized OrderedDictionary.init(dictionaryLiteral:)(v11, v9, v5, v10);

    v12 = v2;

    v13 = MEMORY[0x266771860](v31, v9);

    if (v13 >= 2)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v14 = 0;
      while (1)
      {
        v28[1] = v13;
        result = static FixedWidthInteger.random<A>(in:using:)();
        v28[0] = v14;
        if (__OFADD__(v14, v29))
        {
          break;
        }

        type metadata accessor for Array();
        swift_getWitnessTable();
        MutableCollection.swapAt(_:_:)();
        v28[0] = v14;
        v29 += v14;
        type metadata accessor for ContiguousArray();
        swift_getWitnessTable();
        result = MutableCollection.swapAt(_:_:)();
        if (__OFADD__(v14, 1))
        {
          goto LABEL_14;
        }

        --v13;
        ++v14;
        if ((v13 + 1) <= 2)
        {
          v4 = v30;
          v12 = v2;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_8:
    type metadata accessor for Array();

    swift_getWitnessTable();
    v15 = Array.init<A>(_:)();
    v28[0] = v15;
    v16 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
    v17 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    v19 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(v28, 0, 1, v16, v17, WitnessTable, v10);
    v20 = ContiguousArray.count.getter();
    v21 = 0;
    if (v20 >= 16)
    {

      v21 = v19;
    }

    v22 = OrderedSet.init(_uniqueElements:_:)(v15, v21);
    v24 = v23;

    v28[0] = v4;
    type metadata accessor for ContiguousArray();

    swift_getWitnessTable();
    v25 = Array.init<A>(_:)();
    v26 = ContiguousArray.count.getter();
    v27 = ContiguousArray.count.getter();

    if (v26 != v27)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    *v12 = v22;
    v12[1] = v24;
    v12[2] = v25;
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.reverse()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  type metadata accessor for OrderedSet();
  OrderedSet.reverse()();
  v4 = *(v1 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.reverse()();
}

Swift::Int closure #1 in OrderedDictionary.partition(by:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X7>, Swift::Int *a6@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = type metadata accessor for OrderedSet();
  result = OrderedSet._partition<A>(values:by:)(v12, v13, a2, a3, v14, a4);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

uint64_t closure #1 in OrderedDictionary.sort(by:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v29 = a1;
  *(&v29 + 1) = a2;
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for UnsafeBufferPointer();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667716D0](&v34, v9, WitnessTable);
  v33 = v34;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  *(&v31 + 1) = *(&v35 + 1);
  v32 = v36;
  type metadata accessor for LazyMapSequence();

  swift_getWitnessTable();
  v12 = Array.init<A>(_:)();
  *&v31 = v12;
  v13 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v14 = type metadata accessor for ContiguousArray();
  v15 = swift_getWitnessTable();
  v16 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v31, 0, 1, v13, v14, v15, a6);
  v17 = ContiguousArray.count.getter();
  v18 = 0;
  if (v17 >= 16)
  {

    v18 = v16;
  }

  v19 = OrderedSet.init(_uniqueElements:_:)(v12, v18);
  v21 = v20;

  v23 = *a3;
  v22 = a3[1];
  *a3 = v19;
  a3[1] = v21;

  v31 = v29;
  MEMORY[0x2667716D0](&v34, v9, WitnessTable);
  v33 = v34;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  LazySequenceProtocol.map<A>(_:)();

  v31 = v35;
  v32 = v36;
  type metadata accessor for LazyMapSequence();
  swift_getWitnessTable();
  v25 = Array.init<A>(_:)();
  v26 = a3[2];
  a3[2] = v25;
}

uint64_t closure #1 in closure #1 in OrderedDictionary.sort(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v16 - v11;
  (*(v13 + 16))(&v16 - v11, a1, TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v12, a2);
  return (*(*(a3 - 8) + 8))(&v12[v14], a3);
}

uint64_t closure #2 in closure #1 in OrderedDictionary.sort(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, TupleTypeMetadata2, v10);
  (*(*(a3 - 8) + 32))(a4, &v12[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v12, a2);
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v15, v16, v17, v18, v19, v20, v21, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t closure #1 in OrderedDictionary<>.sort()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v27 = a7;
  v23 = a2;
  v24 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  v18 = *(*(a5 - 8) + 16);
  v18(&v22 - v16, a1, a5, v15);
  v19 = *(*(a6 - 8) + 16);
  v19(&v17[*(TupleTypeMetadata2 + 48)], v23, a6);
  (v18)(v13, v24, a5);
  v19(&v13[*(TupleTypeMetadata2 + 48)], v26, a6);
  LOBYTE(v19) = dispatch thunk of static Comparable.< infix(_:_:)();
  v20 = *(v25 + 8);
  v20(v13, TupleTypeMetadata2);
  v20(v17, TupleTypeMetadata2);
  return v19 & 1;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @in_guaranteed A, @in_guaranteed B) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[5];
  v7 = v2[6];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v8(a1, a1 + *(TupleTypeMetadata2 + 48), a2, a2 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v31;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v30, a2, a3, a4, a5, a6, v28, v19);
    v16 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v23 = __CocoaSet.count.getter();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v31;
    result = v30(v20, v23, v16);
    if (v24)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(AssociatedObject + 2);

  v19 = v23;
  result = a1(&AssociatedObject[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *_ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable();
      v3 = _copyCollectionToContiguousArray<A>(_:)();

      objc_setAssociatedObject(v1, MEMORY[0x277D84F90], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      outlined init with copy of MetalFunctionNode(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        outlined init with take of MetalFunctionNode(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = outlined init with take of MetalFunctionNode(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

void createDotText(representing:)(__int128 *a1)
{
  if (UserGraph.isEmpty.getter())
  {
    lazy protocol witness table accessor for type DotError and conformance DotError();
    v3 = swift_allocError();
    swift_willThrow();
LABEL_18:
    type metadata accessor for SGError();
    v44 = v3;
    SGError.__allocating_init(_:)(v3);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMR);
    v4 = swift_allocObject();
    v5 = a1[8];
    v6 = a1[9];
    v7 = a1[6];
    v4[9] = a1[7];
    v4[10] = v5;
    v4[11] = v6;
    *(v4 + 185) = *(a1 + 153);
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[2];
    v4[5] = a1[3];
    v4[6] = v8;
    v4[7] = v9;
    v4[8] = v7;
    v11 = *a1;
    v12 = a1[1];
    v4[1] = xmmword_265F1F670;
    v4[2] = v11;
    v4[3] = v12;
    v4[4] = v10;
    outlined init with copy of UserGraph(a1, &v62);
    v13 = UserGraph.subgraphs()();
    v62 = v4;
    specialized Array.append<A>(contentsOf:)(v13);
    v14 = v62;
    v15 = *(v62 + 2);
    if (v15)
    {
      v73 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      v16 = *(v14 + 2);
      if (v16 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = *(v14 + 2);
      }

      v48 = v17;
      if (v16)
      {
        v18 = v1;
        v19 = 0;
        v76 = v15 - 1;
        v20 = v73;
        v21 = 2;
        while (v19 < *(v14 + 2))
        {
          v22 = v14;
          v23 = v14[v21];
          v24 = v14[v21 + 2];
          v60[1] = v14[v21 + 1];
          v60[2] = v24;
          v60[0] = v23;
          v25 = v14[v21 + 3];
          v26 = v14[v21 + 4];
          v27 = v14[v21 + 6];
          v60[5] = v14[v21 + 5];
          v60[6] = v27;
          v60[3] = v25;
          v60[4] = v26;
          v28 = v14[v21 + 7];
          v29 = v14[v21 + 8];
          v30 = v14[v21 + 9];
          *(v61 + 9) = *(&v14[v21 + 9] + 9);
          v60[8] = v29;
          v61[0] = v30;
          v60[7] = v28;
          v31 = v14[v21 + 9];
          v58 = v14[v21 + 8];
          v59[0] = v31;
          *(v59 + 9) = *(&v14[v21 + 9] + 9);
          v32 = v14[v21 + 5];
          v54 = v14[v21 + 4];
          v55 = v32;
          v33 = v14[v21 + 7];
          v56 = v14[v21 + 6];
          v57 = v33;
          v34 = v14[v21 + 1];
          v50 = v14[v21];
          v51 = v34;
          v35 = v14[v21 + 3];
          v52 = v14[v21 + 2];
          v53 = v35;
          v66 = v35;
          v65 = v52;
          v64 = v34;
          v63 = v50;
          v69 = v56;
          v68 = v55;
          v67 = v54;
          *(v72 + 9) = *(v59 + 9);
          v72[0] = v59[0];
          v71 = v58;
          v70 = v57;
          v74[8] = v58;
          v75[0] = v59[0];
          *(v75 + 9) = *(v59 + 9);
          v74[4] = v54;
          v74[5] = v55;
          v74[6] = v56;
          v74[7] = v57;
          v62 = v19;
          v74[0] = v50;
          v74[1] = v34;
          v74[2] = v52;
          v74[3] = v35;
          outlined init with copy of UserGraph(v60, v49);
          v36 = graphDotText(representing:index:)(v74, v19);
          if (v18)
          {

            outlined destroy of [Input](&v62, &_sSi6offset_11ShaderGraph04UserC0V7elementtMd, &_sSi6offset_11ShaderGraph04UserC0V7elementtMR);

            v3 = v18;
            goto LABEL_18;
          }

          v38 = v36;
          v39 = v37;
          outlined destroy of [Input](&v62, &_sSi6offset_11ShaderGraph04UserC0V7elementtMd, &_sSi6offset_11ShaderGraph04UserC0V7elementtMR);
          v73 = v20;
          v41 = *(v20 + 16);
          v40 = *(v20 + 24);
          v42 = v20;
          if (v41 >= v40 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
            v18 = 0;
            v42 = v73;
          }

          *(v42 + 16) = v41 + 1;
          v43 = v42 + 16 * v41;
          *(v43 + 32) = v38;
          *(v43 + 40) = v39;
          v20 = v42;
          if (v76 == v19)
          {

            goto LABEL_20;
          }

          ++v19;
          v21 += 11;
          v14 = v22;
          if (v48 == v19)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
LABEL_20:
      v62 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v45 = BidirectionalCollection<>.joined(separator:)();
      v47 = v46;

      v62 = 0;
      *&v63 = 0xE000000000000000;
      _StringGuts.grow(_:)(136);
      MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
      MEMORY[0x266771550](v45, v47);

      MEMORY[0x266771550](8194570, 0xE300000000000000);
    }
  }
}

uint64_t specialized Graph.nodes.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result - 56;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v3 + 88 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 120);
    ++v1;
    v5 += 88;
    if (v7)
    {
      v11 = *(v5 + 16);
      v12 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v9 + 1;
      v10 = &v4[5 * v9];
      *(v10 + 2) = v12;
      *(v10 + 3) = v11;
      v10[8] = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = (result + 16);
  v5 = *(result + 16);
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    goto LABEL_31;
  }

  v3 = result;
  v9 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v6 + 24) >> 1, v10 < v8))
  {
    if (v7 <= v8)
    {
      v11 = v7 + v5;
    }

    else
    {
      v11 = v7;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v6);
    v6 = result;
    v10 = *(result + 24) >> 1;
  }

  v12 = *(v6 + 16);
  a2 = *v4;
  v13 = v10 - v12;
  if (v10 == v12)
  {
    if (!v5)
    {
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (v13 < 1)
  {
    goto LABEL_28;
  }

  if (!a2)
  {
    goto LABEL_29;
  }

  v14 = (v6 + 16 * v12 + 32);
  v15 = ~v12 + v10;
  v16 = *v4;
  while (1)
  {
    if (v16 > *v4)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v17 = 0;
      if (a2 >= v5)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }

    v17 = v16 - 1;
    *v14 = *&v4[2 * v16];
    if (!v15)
    {
      break;
    }

    ++v14;
    --v15;
    --v16;
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  a2 = v13;
LABEL_17:
  if (a2 < v5)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_18:
  if (a2 > 0)
  {
    v18 = *(v6 + 16);
    v19 = __OFADD__(v18, a2);
    v20 = v18 + a2;
    if (v19)
    {
      goto LABEL_47;
    }

    *(v6 + 16) = v20;
  }

  v21 = a2;
  a2 = v17;
  if (v21 != v13)
  {
    goto LABEL_25;
  }

LABEL_32:
  if (!a2)
  {
LABEL_25:

LABEL_26:
    *v2 = v6;
    return result;
  }

  v22 = a2 - 1;
  if (v22 >= *v4)
  {
    goto LABEL_48;
  }

  v23 = *(v6 + 16);
  v24 = *(v3 + 16 * v22 + 32);
  v25 = v3 + 16;
LABEL_36:
  while (2)
  {
    v26 = *(v6 + 24);
    v27 = v26 >> 1;
    if ((v26 >> 1) >= v23 + 1)
    {
      v28 = v23 - v27;
      if (v23 < v27)
      {
        break;
      }

      goto LABEL_35;
    }

    v31 = v6;
    v32 = v22;
    v33 = v25;
    v34 = v24;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v23 + 1, 1, v31);
    v24 = v34;
    v25 = v33;
    v22 = v32;
    v6 = result;
    v27 = *(result + 24) >> 1;
    v28 = v23 - v27;
    if (v23 >= v27)
    {
LABEL_35:
      *(v6 + 16) = v23;
      continue;
    }

    break;
  }

  v29 = 0;
  v30 = 16 * v23 + 32;
  while (1)
  {
    *(v6 + v30) = v24;
    if (!(v22 + v29))
    {

      *(v6 + 16) = v23 - v29 + 1;
      goto LABEL_26;
    }

    if (v22 + v29 - 1 >= *v4)
    {
      break;
    }

    v24 = *(v25 + 16 * v22 + 16 * v29--);
    v30 += 16;
    if (v28 == v29)
    {
      v22 += v29;
      v23 = v27;
      *(v6 + 16) = v27;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7XMLNode_pMd, &_s11ShaderGraph7XMLNode_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = __CocoaSet.count.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

id specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  v8 = *v2;
  if (!(*v2 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = (v9 + v7);
    if (!v10)
    {
      goto LABEL_3;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 < 0)
  {
    v17 = *v2;
  }

  v18 = __CocoaSet.count.getter();
  v10 = __OFADD__(v18, v7);
  result = (v18 + v7);
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_3:
  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v3 = *v2;
  v4 = *v2 & 0xFFFFFFFFFFFFFF8;
  v12 = *(v4 + 0x10);
  v5 = (*(v4 + 0x18) >> 1) - v12;
  v13 = *(a2 + 16);
  if (v13)
  {
    if (v5 >= v13)
    {
      v14 = *(a2 + 16);
    }

    else
    {
      v14 = (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v12;
    }

    type metadata accessor for SGNode();
    result = swift_arrayInitWithCopy();
    if (v14 >= v7)
    {
      if (v5 >= 1)
      {
        v15 = *(v4 + 16);
        v10 = __OFADD__(v15, v14);
        v16 = v15 + v14;
        if (v10)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        *(v4 + 16) = v16;
      }

      goto LABEL_13;
    }
  }

  else if (v7 <= 0)
  {
    v14 = 0;
LABEL_13:
    if (v14 != v5)
    {
LABEL_14:

      *v2 = v3;
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v19 = *(a2 + 16);
  if (v5 == v19)
  {
    goto LABEL_14;
  }

  if (v5 < v19)
  {
    v20 = *(v4 + 16);
    v21 = v5 + 1;
    v22 = *(a2 + 32 + 8 * v5);
    v23 = v22;
    result = v22;
    while (1)
    {
LABEL_25:
      if (v20 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = result;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        result = v30;
      }

      v3 = *v2;
      v24 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v25 = v24 - v20;
      if (v24 > v20)
      {
        break;
      }

      *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v20;
    }

    v31 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    v32 = *v2 & 0xFFFFFFFFFFFFFF8;
    v26 = (v32 + 8 * v20 + 32);
    v27 = v20 + 1;
    while (1)
    {
      *v26 = result;
      v28 = *(a2 + 16);
      if (v21 == v28)
      {
        break;
      }

      if (v21 >= v28)
      {
        goto LABEL_35;
      }

      v29 = v21 + 1;
      result = *(a2 + 32 + 8 * v21);
      ++v26;
      ++v27;
      ++v21;
      if (!--v25)
      {
        v20 = v31;
        v21 = v29;
        *(v32 + 16) = v31;
        goto LABEL_25;
      }
    }

    *(v32 + 16) = v27;
    goto LABEL_14;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = __CocoaSet.count.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t createDotText(representing:)(uint64_t *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v6 = SGGraph.nodegraphs(_:)(0);
      v8 = v7;
      v9 = graphDotText(_:callNode:)(a1, 0);
      v11 = v10;
      v12 = 0;
      v13 = *(v8 + 16);
      v14 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v13 == v12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v25 = BidirectionalCollection<>.joined(separator:)();
          v27 = v26;

          MEMORY[0x266771550](v25, v27);

          _StringGuts.grow(_:)(136);
          MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
          MEMORY[0x266771550](v9, v11);

          MEMORY[0x266771550](8194570, 0xE300000000000000);
          v28 = 0;

          return v28;
        }

        if (v12 >= *(v8 + 16))
        {
          break;
        }

        a1 = *(v8 + 8 * v12++ + 32);
        v15 = a1 + OBJC_IVAR___SGNode_data;
        v16 = *(a1 + OBJC_IVAR___SGNode_data + 80);
        if ((v16 & 0xC0) == 0x40)
        {
          v35 = v9;
          v36 = v11;
          v37 = v6;
          v38 = v2;
          v39 = *(v15 + 9);
          v40 = *(v15 + 8);
          v44 = *(v15 + 7);
          v42 = *(v15 + 5);
          *v43 = *(v15 + 6);
          v41 = *(v15 + 4);
          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v20 = *v15;
          v19 = *(v15 + 1);
          v33 = v14;
          v32 = a1;
          outlined copy of NodeData(v20, v19, v18, v17, v41, v42, v43[0], v44, v40, v39, v16);
          a1 = graphDotText(_:callNode:)(v20, a1);
          v34 = v21;

          outlined consume of NodeData(v20, v19, v18, v17, v41, v42, v43[0], v44, v40, v39, v16);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v14 = v33;
          }

          else
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
          }

          v23 = *(v14 + 2);
          v22 = *(v14 + 3);
          v6 = v37;
          v2 = v38;
          v11 = v36;
          if (v23 >= v22 >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
          }

          *(v14 + 2) = v23 + 1;
          v24 = &v14[16 * v23];
          v9 = v35;
          *(v24 + 4) = a1;
          *(v24 + 5) = v34;
        }
      }

      __break(1u);
LABEL_15:
      ;
    }

    while (__CocoaSet.count.getter());
  }

  lazy protocol witness table accessor for type DotError and conformance DotError();
  v29 = swift_allocError();
  swift_willThrow();
  v28 = type metadata accessor for SGError();
  v30 = v29;
  SGError.__allocating_init(_:)(v29);
  swift_willThrow();

  return v28;
}

void createGraphDotText<A>(representing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = getContiguousArrayStorageType<A>(for:)(a2, a2);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = *(a2 - 8);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  swift_allocObject();
  v13 = static Array._adoptStorage(_:count:)();
  (*(v10 + 16))(v14, a1, a2);
  v32[0] = v13;
  v15 = type metadata accessor for Array();
  destructiveProjectEnumData for NodePersonality.ShaderType(v15);
  (*(a3 + 152))(a2, a3);
  v16 = static Array.+ infix(_:_:)();

  v34 = v16;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667716A0](v32, v15, WitnessTable);

  v34 = v32[0];
  v30 = a2;
  v31 = a3;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = partial apply for closure #1 in createGraphDotText<A>(representing:);
  v28[5] = &v29;
  v18 = type metadata accessor for EnumeratedSequence();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v32[2] = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String, @error @owned Error), v28, v18, MEMORY[0x277D837D0], v19, v20, MEMORY[0x277D84950], &v33);
  if (v3)
  {

    v22 = v33;
    type metadata accessor for SGError();
    v23 = v22;
    SGError.__allocating_init(_:)(v22);
    swift_willThrow();
  }

  else
  {
    v24 = v21;

    v32[0] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(136);
    MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
    MEMORY[0x266771550](v25, v27);

    MEMORY[0x266771550](8194570, 0xE300000000000000);
  }
}

uint64_t createDotText(representing:inputNodeIDs:outputNodeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + 16);
  v65 = v5;
  if (v5)
  {
    *&v68[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v4 = a1;
    v8 = *&v68[0];
    v9 = *(*a1 + 272);
    v10 = (a2 + 32);
    v11 = v5;
    while (1)
    {
      v12 = *v10++;
      v9(&v69, v12);
      if (v3)
      {
        break;
      }

      *&v68[0] = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v8 = *&v68[0];
      }

      *(v8 + 16) = v14 + 1;
      outlined init with take of MetalFunctionNode(&v69, v8 + 40 * v14 + 32);
      --v11;
      v4 = a1;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    return v4;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_10:
  v60 = *(*v4 + 120);
  result = v60();
  v16 = result;
  v17 = *(result + 16);
  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_29:

    v36 = *(a3 + 16);
    v37 = MEMORY[0x277D84F90];
    if (v36)
    {
      *&v68[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
      v38 = *&v68[0];
      v64 = *(*a1 + 272);
      v39 = (a3 + 32);
      while (1)
      {
        v40 = *v39++;
        v4 = a1;
        v64(&v69, v40);
        if (v3)
        {
          break;
        }

        *&v68[0] = v38;
        v42 = *(v38 + 16);
        v41 = *(v38 + 24);
        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
          v38 = *&v68[0];
        }

        *(v38 + 16) = v42 + 1;
        outlined init with take of MetalFunctionNode(&v69, v38 + 40 * v42 + 32);
        if (!--v36)
        {
          v37 = MEMORY[0x277D84F90];
          goto LABEL_38;
        }
      }
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
LABEL_38:
      v43 = createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v8, a2);

      v44 = createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v19, a2);

      v45 = createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v38, a2);

      *&v68[0] = v37;
      v4 = (v60)(v46);

      v47 = specialized Sequence.flatMap<A>(_:)(v4, a1, v68);

      if (!v3)
      {

        *&v69 = 0;
        *(&v69 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(609);
        MEMORY[0x266771550](0xD000000000000170, 0x8000000265F32400);
        v72 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v48 = BidirectionalCollection<>.joined(separator:)();
        v67 = v47;
        v50 = v49;

        MEMORY[0x266771550](v48, v50);

        MEMORY[0x266771550](0xD000000000000067, 0x8000000265F32580);
        v72 = v44;
        v51 = BidirectionalCollection<>.joined(separator:)();
        v53 = v52;

        MEMORY[0x266771550](v51, v53);

        MEMORY[0x266771550](0xD000000000000067, 0x8000000265F325F0);
        v72 = v45;
        v54 = BidirectionalCollection<>.joined(separator:)();
        v56 = v55;

        MEMORY[0x266771550](v54, v56);

        MEMORY[0x266771550](0xD000000000000014, 0x8000000265F32660);
        v72 = v67;
        v57 = BidirectionalCollection<>.joined(separator:)();
        v59 = v58;

        MEMORY[0x266771550](v57, v59);

        MEMORY[0x266771550](0x7D202020200A0ALL, 0xE700000000000000);
        v4 = v69;

        return v4;
      }
    }

    return v4;
  }

  v18 = 0;
  v63 = result + 32;
  v19 = MEMORY[0x277D84F90];
  while (v18 < *(v16 + 16))
  {
    v20 = v18 + 1;
    outlined init with copy of MetalFunctionNode(v63 + 40 * v18, &v69);
    v21 = v70;
    v22 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v23 = (*(v22 + 24))(v21, v22);
    v24 = v65;
    v25 = (a2 + 32);
    while (v24)
    {
      v26 = *v25++;
      --v24;
      if (v26 == v23)
      {
LABEL_12:
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v69);
        goto LABEL_13;
      }
    }

    v27 = v70;
    v28 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v29 = (*(v28 + 24))(v27, v28);
    v30 = (a3 + 32);
    v31 = *(a3 + 16);
    while (v31)
    {
      v32 = *v30++;
      --v31;
      if (v32 == v29)
      {
        goto LABEL_12;
      }
    }

    outlined init with take of MetalFunctionNode(&v69, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
      v19 = v72;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    if (v35 >= v34 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      v19 = v72;
    }

    *(v19 + 16) = v35 + 1;
    result = outlined init with take of MetalFunctionNode(v68, v19 + 40 * v35 + 32);
LABEL_13:
    v18 = v20;
    if (v20 == v17)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t graphDotText(_:callNode:)(uint64_t *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + OBJC_IVAR___SGGraph_argumentsNode);
  v5 = *(a1 + OBJC_IVAR___SGGraph_resultsNode);
  v6 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v92 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    v80 = v3;
    v81 = a2;
    if (i)
    {
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
      v86 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v12 = MEMORY[0x266772030](v9, v7);
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_46;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        a2 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v3 = type metadata accessor for SGNode();
        if (static NSObject.== infix(_:_:)() & 1) != 0 || (static NSObject.== infix(_:_:)())
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = v10;
          v15 = v7;
          v16 = i;
          v17 = v4;
          v18 = v5;
          v19 = *(v92 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v18;
          v4 = v17;
          i = v16;
          v7 = v15;
          v10 = v14;
          v11 = v86;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v92;
          specialized ContiguousArray._endMutation()();
        }

        ++v9;
        if (a2 == i)
        {
          v77 = v92;
          a2 = v81;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v77 = MEMORY[0x277D84F90];
LABEL_17:
    v78 = v5;

    if (a2)
    {
      v20 = (a2 + OBJC_IVAR___SGNode_name);
      swift_beginAccess();
      v21 = v20[1];
      v87 = *v20;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = (Strong + OBJC_IVAR___SGGraph_name);
        v24 = Strong;
        swift_beginAccess();
        v25 = *v23;
        v26 = v23[1];
      }

      else
      {

        v25 = 0;
        v26 = 0xE000000000000000;
      }
    }

    else
    {
      v25 = 0;
      v87 = 0;
      v26 = 0xE000000000000000;
      v21 = 0xE000000000000000;
    }

    v27 = MEMORY[0x277D84F90];
    v28 = ObjectIdentifier.hashValue.getter();
    v92 = v27;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v29 = v92;
    v89 = v28;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    v30 = String.init<A>(_:radix:uppercase:)();
    v33 = *(v29 + 16);
    v32 = *(v29 + 24);
    if (v33 >= v32 >> 1)
    {
      v85 = v30;
      v69 = v25;
      v70 = v31;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
      v31 = v70;
      v25 = v69;
      v30 = v85;
      v29 = v92;
    }

    *(v29 + 16) = v33 + 1;
    v34 = v29 + 16 * v33;
    *(v34 + 32) = v30;
    *(v34 + 40) = v31;
    v92 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v35 = BidirectionalCollection<>.joined(separator:)();
    v37 = v36;

    v92 = v87;
    v93 = v21;

    MEMORY[0x266771550](v25, v26);
    v39 = *(v80 + OBJC_IVAR___SGGraph_name);
    v38 = *(v80 + OBJC_IVAR___SGGraph_name + 8);

    v73 = v39;
    MEMORY[0x266771550](v39, v38);

    MEMORY[0x266771550](95, 0xE100000000000000);

    v75 = v35;
    MEMORY[0x266771550](v35, v37);

    v83 = v92;
    v84 = v93;
    if (v81)
    {
      v92 = 0;
      v93 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v92 = 0x206D6F7266;
      v93 = 0xE500000000000000;
      MEMORY[0x266771550](v87, v21);

      MEMORY[0x266771550](0x70617267206E6920, 0xEA00000000002068);
      MEMORY[0x266771550](v25, v26);

      v41 = v92;
      v40 = v93;
    }

    else
    {

      v41 = 0;
      v40 = 0xE000000000000000;
    }

    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v92 = 0x286870617247;
    v93 = 0xE600000000000000;
    MEMORY[0x266771550](v73, v38);
    MEMORY[0x266771550](2128928, 0xE300000000000000);
    MEMORY[0x266771550](v75, v37);

    MEMORY[0x266771550](2629673, 0xE300000000000000);
    MEMORY[0x266771550](v41, v40);

    MEMORY[0x266771550](41, 0xE100000000000000);
    v71 = v92;
    v72 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F20CD0;
    *(inited + 32) = v4;
    v5 = (inited + 32);
    v43 = v4;
    v74 = createNodeStatements #1 (_:) in graphDotText(_:callNode:)(inited, v83, v84, v43, v78);
    swift_setDeallocating();
    v44 = *(inited + 16);
    swift_arrayDestroy();
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_265F20CD0;
    *(v45 + 32) = v78;
    v46 = v78;
    v79 = createNodeStatements #1 (_:) in graphDotText(_:callNode:)(v45, v83, v84, v43, v46);
    swift_setDeallocating();
    v47 = *(v45 + 16);
    swift_arrayDestroy();
    v76 = createNodeStatements #1 (_:) in graphDotText(_:callNode:)(v77, v83, v84, v43, v46);

    v48 = OBJC_IVAR___SGGraph_edges;
    v3 = v80;
    swift_beginAccess();
    v7 = *(v80 + v48);
    v82 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v82)
    {
      break;
    }

    v49 = 0;
    a2 = 0;
    v88 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x266772030](v49, v7);
      }

      else
      {
        if (v49 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v51 = *(v7 + 8 * v49 + 32);
      }

      v4 = v51;
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v91 = v51;
      closure #3 in graphDotText(_:callNode:)(&v91, v83, v84, &v89);

      v53 = v90;
      if (v90)
      {
        v5 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v88 + 2) + 1, 1, v88);
        }

        v55 = *(v88 + 2);
        v54 = *(v88 + 3);
        v4 = (v55 + 1);
        if (v55 >= v54 >> 1)
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v88);
        }

        *(v88 + 2) = v4;
        v50 = &v88[16 * v55];
        *(v50 + 4) = v5;
        *(v50 + 5) = v53;
        v3 = v80;
      }

      ++v49;
      if (v52 == v82)
      {
        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v88 = MEMORY[0x277D84F90];
LABEL_44:

  v89 = 0;
  v90 = 0xE000000000000000;
  _StringGuts.grow(_:)(528);
  MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
  MEMORY[0x266771550](v71, v72);

  MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
  v91 = v74;
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;

  MEMORY[0x266771550](v56, v58);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
  v91 = v76;
  v59 = BidirectionalCollection<>.joined(separator:)();
  v61 = v60;

  MEMORY[0x266771550](v59, v61);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v83, v84);
  MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
  MEMORY[0x266771550](v83, v84);

  MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
  v91 = v79;
  v62 = BidirectionalCollection<>.joined(separator:)();
  v64 = v63;

  MEMORY[0x266771550](v62, v64);

  MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
  v91 = v88;
  v65 = BidirectionalCollection<>.joined(separator:)();
  v67 = v66;

  MEMORY[0x266771550](v65, v67);

  MEMORY[0x266771550](32010, 0xE200000000000000);
  return v89;
}

uint64_t key path getter for SGNode.graph : SGNode@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

unint64_t createNodeStatements #1 (_:) in graphDotText(_:callNode:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = MEMORY[0x277D84F90];
    if (!v5)
    {
      return v6;
    }

    v7 = result;
    v29 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v29;
    v9 = v7;
    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 & 0xC000000000000001;
    v10 = v7;
    v11 = v5;
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v22)
      {
        v13 = MEMORY[0x266772030](v8, v9);
      }

      else
      {
        if (v8 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v13 = *(v9 + 8 * v8 + 32);
      }

      v14 = v13;
      v27 = v13;
      closure #1 in createNodeStatements #1 (_:) in graphDotText(_:callNode:)(&v27, a2, a3, a4, a5, v28);

      v15 = v28[0];
      v16 = v28[1];
      v29 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v6 = v29;
      }

      *(v6 + 16) = v18 + 1;
      v19 = v6 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      ++v8;
      v9 = v10;
      if (v12 == v11)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v20 = result;
    v5 = __CocoaSet.count.getter();
    result = v20;
  }

  __break(1u);
  return result;
}

char *closure #1 in createNodeStatements #1 (_:) in graphDotText(_:callNode:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a3;
  v7 = *a1;
  v8 = *a1 + OBJC_IVAR___SGNode_data;
  v9 = *(v8 + 16);
  v107 = *v8;
  v108 = v9;
  v11 = *(v8 + 48);
  v10 = *(v8 + 64);
  v12 = *(v8 + 32);
  v112 = *(v8 + 80);
  v110 = v11;
  v111 = v10;
  v109 = v12;
  v13 = v107;
  v14 = v12;
  v15 = v112 >> 6;
  v113 = a2;
  if (v15)
  {
    if (v15 == 1)
    {
      v17 = *(v7 + OBJC_IVAR___SGNode_name);
      v16 = *(v7 + OBJC_IVAR___SGNode_name + 8);
      v18 = (v107 + OBJC_IVAR___SGGraph_name);
      v19 = *(v107 + OBJC_IVAR___SGGraph_name);
      v20 = *(v107 + OBJC_IVAR___SGGraph_name + 8);
      v21 = v17 == v19 && v16 == v20;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_18;
      }

      v96 = v17;
      v97 = v16;
      outlined init with copy of NodeData(&v107, v100);

      MEMORY[0x266771550](28252, 0xE200000000000000);
      v35 = *v18;
      v36 = v18[1];

      v33 = v35;
      v34 = v36;
    }

    else
    {
      v104 = v110;
      v105 = v111;
      v102 = v108;
      v103 = v12;
      v106 = v112 & 0x3F;
      v98 = 0;
      v99 = 0xE000000000000000;
      v100[2] = v109;
      v100[3] = v110;
      v100[4] = v111;
      v100[0] = v107;
      v100[1] = v108;
      v101 = v112 & 0x3F;
      outlined init with copy of [Input](v100, &v96, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
      _StringGuts.grow(_:)(16);
      v29 = v7 + OBJC_IVAR___SGNode_name;
      v30 = *(v7 + OBJC_IVAR___SGNode_name);
      v31 = *(v29 + 8);

      v96 = v30;
      v97 = v31;
      MEMORY[0x266771550](0x203A657079746E5CLL, 0xE800000000000000);
      v32 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v32);

      MEMORY[0x266771550](28252, 0xE200000000000000);
      v33 = SGDataTypeStorage.valueString.getter();
    }

    MEMORY[0x266771550](v33, v34);

    outlined destroy of NodeData(&v107);
    v19 = v96;
    v20 = v97;
  }

  else
  {
    v22 = *(&v107 + 1);
    v23 = (v7 + OBJC_IVAR___SGNode_name);
    v25 = *v23;
    v24 = v23[1];
    v26 = *v23 == v107 && *(&v107 + 1) == v24;
    if (v26 || (v27 = *v23, v28 = v23[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      outlined copy of MaterialXAvailability(v14, *(&v14 + 1));

      outlined consume of MaterialXAvailability(v14, *(&v14 + 1));
      v19 = *v23;
      v20 = v23[1];

      v6 = a3;
    }

    else
    {
      v97 = v24;
      outlined init with copy of NodeData(&v107, v100);

      MEMORY[0x266771550](28252, 0xE200000000000000);

      MEMORY[0x266771550](v13, v22);

      outlined consume of MaterialXAvailability(v14, *(&v14 + 1));

      v19 = v25;
      v20 = v97;
      v6 = a3;
    }
  }

LABEL_18:
  *&v100[0] = v19;
  *(&v100[0] + 1) = v20;
  v96 = 60;
  v97 = 0xE100000000000000;
  v98 = 15452;
  v99 = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v39 = v38;

  *&v100[0] = v37;
  *(&v100[0] + 1) = v39;
  v96 = 62;
  v97 = 0xE100000000000000;
  v98 = 15964;
  v99 = 0xE200000000000000;
  v87 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v88 = v40;

  *&v100[0] = v113;
  *(&v100[0] + 1) = v6;

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](*(v91 + OBJC_IVAR___SGNode_name), *(v91 + OBJC_IVAR___SGNode_name + 8));
  v86 = v100[0];
  v41 = *(v91 + OBJC_IVAR___SGNode_inputs);
  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v77 = *(v91 + OBJC_IVAR___SGNode_inputs);
    }

    v78 = *(v91 + OBJC_IVAR___SGNode_inputs);
    v79 = __CocoaSet.count.getter();
    v41 = v78;
    v42 = v79;
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v44 = v41;
    v94 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42 & ~(v42 >> 63), 0);
    if (v42 < 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    v46 = 0;
    v43 = v94;
    v47 = v44;
    v93 = v44 & 0xC000000000000001;
    v113 = v44;
    do
    {
      if (v93)
      {
        v48 = MEMORY[0x266772030](v46, v47);
      }

      else
      {
        v48 = *(v47 + 8 * v46 + 32);
      }

      v49 = v48;
      *&v100[0] = 0x5F7475706E693CLL;
      *(&v100[0] + 1) = 0xE700000000000000;
      v50 = &v48[OBJC_IVAR___SGInput_name];
      v51 = *&v48[OBJC_IVAR___SGInput_name + 8];
      v96 = *&v48[OBJC_IVAR___SGInput_name];
      v97 = v51;
      v98 = 58;
      v99 = 0xE100000000000000;
      v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      MEMORY[0x266771550](v52);

      MEMORY[0x266771550](62, 0xE100000000000000);
      MEMORY[0x266771550](*v50, *(v50 + 1));

      v53 = v100[0];
      v55 = *(v94 + 16);
      v54 = *(v94 + 24);
      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
      }

      ++v46;
      *(v94 + 16) = v55 + 1;
      *(v94 + 16 * v55 + 32) = v53;
      v47 = v113;
    }

    while (v42 != v46);
  }

  *&v100[0] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;

  v59 = *(v91 + OBJC_IVAR___SGNode_outputs);
  if (v59 >> 62)
  {
    if (v59 < 0)
    {
      v80 = *(v91 + OBJC_IVAR___SGNode_outputs);
    }

    v81 = *(v91 + OBJC_IVAR___SGNode_outputs);
    v82 = __CocoaSet.count.getter();
    v59 = v81;
    v60 = v82;
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = MEMORY[0x277D84F90];
  if (!v60)
  {
    goto LABEL_41;
  }

  v62 = v59;
  v95 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60 & ~(v60 >> 63), 0);
  if (v60 < 0)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v83 = v56;
  v84 = v58;
  v63 = 0;
  v61 = v95;
  v64 = v62;
  v113 = v62;
  do
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x266772030](v63, v64);
    }

    else
    {
      v65 = *(v64 + 8 * v63 + 32);
    }

    v66 = v65;
    *&v100[0] = 0x5F74757074756F3CLL;
    *(&v100[0] + 1) = 0xE800000000000000;
    v67 = &v65[OBJC_IVAR___SGOutput_name];
    v68 = *&v65[OBJC_IVAR___SGOutput_name + 8];
    v96 = *&v65[OBJC_IVAR___SGOutput_name];
    v97 = v68;
    v98 = 58;
    v99 = 0xE100000000000000;
    v69 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    MEMORY[0x266771550](v69);

    MEMORY[0x266771550](62, 0xE100000000000000);
    MEMORY[0x266771550](*v67, *(v67 + 1));

    v70 = v100[0];
    v72 = *(v95 + 16);
    v71 = *(v95 + 24);
    if (v72 >= v71 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
    }

    ++v63;
    *(v95 + 16) = v72 + 1;
    *(v95 + 16 * v72 + 32) = v70;
    v64 = v113;
  }

  while (v60 != v63);
  v56 = v83;
  v58 = v84;
LABEL_41:
  *&v100[0] = v61;
  v73 = BidirectionalCollection<>.joined(separator:)();
  v75 = v74;

  *&v100[0] = 0;
  *(&v100[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  *&v100[0] = 34;
  *(&v100[0] + 1) = 0xE100000000000000;
  MEMORY[0x266771550](v86, *(&v86 + 1));

  MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
  MEMORY[0x266771550](v56, v58);

  MEMORY[0x266771550](2129021, 0xE300000000000000);
  MEMORY[0x266771550](v87, v88);

  MEMORY[0x266771550](2065726496, 0xE400000000000000);
  MEMORY[0x266771550](v73, v75);

  MEMORY[0x266771550](2260349, 0xE300000000000000);
  if (v91 == a4 || v91 == a5)
  {
    MEMORY[0x266771550](0x746469776E657020, 0xEB00000000323D68);
  }

  result = MEMORY[0x266771550](93, 0xE100000000000000);
  v76 = *(&v100[0] + 1);
  *a6 = *&v100[0];
  a6[1] = v76;
  return result;
}

void closure #3 in graphDotText(_:callNode:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = OBJC_IVAR___SGEdge_from;
  v9 = SGGraph.nodeWithOutput(_:)(*(*a1 + OBJC_IVAR___SGEdge_from));
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = OBJC_IVAR___SGEdge_to;
  v12 = SGGraph.nodeWithInput(_:)(*(v7 + OBJC_IVAR___SGEdge_to));
  if (!v12)
  {

LABEL_16:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v49 = a4;
  v50 = v11;
  v13 = v12;

  MEMORY[0x266771550](95, 0xE100000000000000);
  v48 = v10;
  v14 = *&v10[OBJC_IVAR___SGNode_name];
  v15 = *&v10[OBJC_IVAR___SGNode_name + 8];

  MEMORY[0x266771550](v14, v15);

  v16 = a3;
  v56 = a3;

  MEMORY[0x266771550](95, 0xE100000000000000);
  v51 = v13;
  v18 = *&v13[OBJC_IVAR___SGNode_name];
  v17 = *&v13[OBJC_IVAR___SGNode_name + 8];

  MEMORY[0x266771550](v18, v17);

  _StringGuts.grow(_:)(35);

  MEMORY[0x266771550](a2, v16);

  MEMORY[0x266771550](0x74757074756F3A22, 0xE90000000000005FLL);
  v19 = (*(v7 + v8) + OBJC_IVAR___SGOutput_name);
  v52 = *v19;
  v54 = v19[1];
  lazy protocol witness table accessor for type String and conformance String();
  v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x266771550](v20);

  MEMORY[0x266771550](0x22203E2D20653ALL, 0xE700000000000000);
  MEMORY[0x266771550](a2, v56);

  MEMORY[0x266771550](0x5F7475706E693A22, 0xE800000000000000);
  v21 = (*(v7 + v50) + OBJC_IVAR___SGInput_name);
  v53 = *v21;
  v55 = v21[1];
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x266771550](v22);

  MEMORY[0x266771550](30522, 0xE200000000000000);
  v23 = *(v7 + v8);
  v24 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  SGDataType.canonicalized()(*(v23 + v24));
  v25 = SGDataType.stringValue.getter();
  v27 = v26;
  v28 = *(v7 + v50);
  v29 = OBJC_IVAR___SGInput_type;
  swift_beginAccess();
  SGDataType.canonicalized()(*(v28 + v29));
  v31 = SGDataType.stringValue.getter();
  v32 = v30;
  v33 = v25 == v31 && v27 == v30;
  v34 = v33;
  if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[16 * v37];
    *(v38 + 4) = 0xD000000000000016;
    *(v38 + 5) = 0x8000000265F32760;
    if (v34)
    {
      goto LABEL_21;
    }
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x266771550](0xD00000000000001ALL, 0x8000000265F32710);
    MEMORY[0x266771550](0x6B63616C62, 0xE500000000000000);
    MEMORY[0x266771550](0xD000000000000027, 0x8000000265F32730);
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v40 = *(v35 + 2);
    v39 = *(v35 + 3);
    if (v40 >= v39 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v35);
    }

    *(v35 + 2) = v40 + 1;
    v41 = &v35[16 * v40];
    *(v41 + 4) = 0;
    *(v41 + 5) = 0xE000000000000000;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _StringGuts.grow(_:)(21);

    MEMORY[0x266771550](v25, v27);

    MEMORY[0x266771550](0x209286E220, 0xA500000000000000);
    MEMORY[0x266771550](v31, v32);
    goto LABEL_23;
  }

LABEL_21:

  MEMORY[0x266771550](v25, v27);
LABEL_23:

  MEMORY[0x266771550](34, 0xE100000000000000);
  v43 = *(v35 + 2);
  v42 = *(v35 + 3);
  if (v43 >= v42 >> 1)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v35);
  }

  *(v35 + 2) = v43 + 1;
  v44 = &v35[16 * v43];
  *(v44 + 4) = 0x6562616C6C696174;
  *(v44 + 5) = 0xEB00000000223D6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v45 = BidirectionalCollection<>.joined(separator:)();
  v47 = v46;

  MEMORY[0x266771550](v45, v47);

  MEMORY[0x266771550](93, 0xE100000000000000);
  MEMORY[0x266771550](23328, 0xE200000000000000);

  *v49 = 34;
  v49[1] = 0xE100000000000000;
}

Swift::String __swiftcall tabs(_:)(Swift::Int a1)
{
  v2._countAndFlagsBits = 9;
  v2._object = 0xE100000000000000;
  v5 = String.init(repeating:count:)(v2, a1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t SGGraph.nodegraphs(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v117 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_120;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v103 = v4 + 32;
    v92 = a1 + 1;
    v9 = __OFADD__(a1, 1);
    v93 = v9;
    v90 = v5;
    v91 = v4;
    v88 = v4 & 0xFFFFFFFFFFFFFF8;
    v89 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v14 = MEMORY[0x266772030](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_118;
        }

        v14 = *(v103 + 8 * v6);
      }

      a1 = v14;
      v15 = __OFADD__(v6++, 1);
      if (v15)
      {
        goto LABEL_117;
      }

      v16 = &v14[OBJC_IVAR___SGNode_data];
      v17 = v14[OBJC_IVAR___SGNode_data + 80];
      if ((v17 & 0xC0) == 0x40)
      {
        break;
      }

      v10 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(MEMORY[0x277D84F90]);
      v12 = v11;

      v13 = v12;
LABEL_9:
      specialized Array.append<A>(contentsOf:)(v10, v13);
      if (v6 == v5)
      {
        v86 = v117;
        goto LABEL_110;
      }
    }

    v18 = *v16;
    v107 = *(v16 + 2);
    v108 = *(v16 + 1);
    v106 = *(v16 + 3);
    v19 = *(v16 + 5);
    v105 = *(v16 + 4);
    v20 = *(v16 + 6);
    v4 = *(v16 + 7);
    v21 = *(v16 + 8);
    v22 = *(v16 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_265F20CD0;
    *(v23 + 32) = a1;
    v97 = v22;
    v98 = v21;
    v100 = v20;
    v101 = v19;
    v99 = v4;
    outlined copy of NodeData(v18, v108, v107, v106, v105, v19, v20, v4, v21, v22, v17);
    a1 = a1;
    v24 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(v23);
    if (v93)
    {
      goto LABEL_119;
    }

    v4 = v24;
    v26 = v25;
    v94 = a1;
    v95 = v17;
    v96 = v6;
    SGGraph.nodegraphs(_:)(v92);
    v116 = v26;
    v104 = v27;
    v28 = *(v27 + 16);

    v29 = v26;
    v10 = v4;
    if (!v28)
    {
LABEL_106:
      outlined consume of NodeData(v18, v108, v107, v106, v105, v101, v100, v99, v98, v97, v95);

      v5 = v90;
      v4 = v91;
      v13 = v29;
      v6 = v96;
      v8 = v88;
      v7 = v89;
      goto LABEL_9;
    }

    v30 = 0;
    v29 = v26;
    v102 = v4;
    v109 = v18;
    v111 = v28;
    while (2)
    {
      v31 = v102;
      while (2)
      {
        v110 = v29;
        v32 = v29 + 32;
        while (1)
        {
          v115 = v31 + 32;
          while (1)
          {
            if (v30 >= v28)
            {
              goto LABEL_114;
            }

            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              v5 = __CocoaSet.count.getter();
              goto LABEL_3;
            }

            a1 = *(v104 + 32 + 8 * v30++);
            v113 = v33;
            v114 = v33;
            v112 = a1;
            if (!v31)
            {
              break;
            }

            v34 = *(v31 + 16);
            v35 = a1;

            v36 = NSObject._rawHashValue(seed:)(v34);
            v37 = 1 << *(v31 + 16);
            v15 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v15)
            {
              goto LABEL_116;
            }

            v39 = v38 & v36;
            v40 = _HashTable.UnsafeHandle._startIterator(bucket:)(v38 & v36, (v31 + 16), v115);
            if (!v40)
            {
LABEL_66:

              v67 = v31;
              v18 = v109;
              v28 = v111;
              goto LABEL_67;
            }

            v43 = v41;
            v44 = v42;
            v45 = -1 << *(v31 + 16);
            v46 = (v45 ^ ~v40) + (*(v31 + 24) >> 6);
            if (v46 >= ~v45)
            {
              v47 = ~v45;
            }

            else
            {
              v47 = 0;
            }

            a1 = v46 - v47;
            type metadata accessor for SGNode();
            v48 = *(v32 + 8 * a1);
            v4 = static NSObject.== infix(_:_:)();

            if ((v4 & 1) == 0)
            {
              a1 = 0;
              do
              {
                ++v39;
                v49 = *(v31 + 16) & 0x3FLL;
                v50 = 1 << *(v31 + 16);
                if (v39 == v50)
                {
                  if (a1)
                  {
                    goto LABEL_130;
                  }

                  v39 = 0;
                  a1 = 1;
                }

                if (v44 >= v49)
                {
                  v58 = (v50 - 1) & v43;
                  v43 >>= v49;
                  v44 -= v49;
                  if (!v58)
                  {
LABEL_65:
                    a1 = v112;
                    v30 = v113;
                    goto LABEL_66;
                  }
                }

                else
                {
                  v51 = (v39 * v49) >> 6;
                  if (v44)
                  {
                    if (__OFADD__(v49 << v49, 64))
                    {
                      goto LABEL_113;
                    }

                    v52 = (v49 << v49) + 126;
                    if ((v49 << v49) + 64 >= 1)
                    {
                      v52 = (v49 << v49) + 63;
                    }

                    if (v51 + 1 == v52 >> 6)
                    {
                      v51 = 0;
                    }

                    else
                    {
                      ++v51;
                    }
                  }

                  v53 = v49 - v44;
                  if (__OFSUB__(v49, v44))
                  {
                    __break(1u);
LABEL_112:
                    __break(1u);
LABEL_113:
                    __break(1u);
LABEL_114:
                    __break(1u);
                    goto LABEL_115;
                  }

                  v54 = v51 == 2 && v49 == 5;
                  v55 = 32;
                  if (!v54)
                  {
                    v55 = 64;
                  }

                  v15 = __OFSUB__(v55, v53);
                  v56 = v55 - v53;
                  if (v15)
                  {
                    goto LABEL_112;
                  }

                  v57 = *(v115 + 8 * v51);
                  v58 = ((v57 << v44) | v43) & (v50 - 1);
                  v43 = v57 >> v53;
                  v44 = v56;
                  if (!v58)
                  {
                    goto LABEL_65;
                  }
                }

                v59 = -1 << v49;
                v60 = (v59 ^ ~v58) + (*(v31 + 24) >> 6);
                if (v60 >= ~v59)
                {
                  v61 = ~v59;
                }

                else
                {
                  v61 = 0;
                }

                v4 = *(v32 + 8 * (v60 - v61));
                v62 = static NSObject.== infix(_:_:)();
              }

              while ((v62 & 1) == 0);
            }

            v28 = v111;
            v30 = v113;
            if (v114 == v111)
            {
              goto LABEL_105;
            }
          }

          v39 = *(v110 + 16);
          v63 = a1;
          if (!v39)
          {
            break;
          }

          a1 = v63;
          type metadata accessor for SGNode();
          v64 = 32;
          while (1)
          {
            v65 = *(v110 + v64);
            v4 = static NSObject.== infix(_:_:)();

            if (v4)
            {
              break;
            }

            v64 += 8;
            if (!--v39)
            {
              v67 = 0;
              v18 = v109;
              v30 = v113;
              goto LABEL_71;
            }
          }

          v31 = 0;
          v30 = v33;
          if (v33 == v28)
          {
LABEL_105:
            v10 = v31;
            v18 = v109;
            v29 = v110;
            goto LABEL_106;
          }
        }

        v67 = 0;
        v18 = v109;
LABEL_71:
        a1 = v112;
LABEL_67:
        a1 = a1;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = *(v116 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v29 = v116;
        v66 = *(v116 + 16);
        if (!v31)
        {
          if (v66 <= 0xF)
          {

            v31 = 0;
            v10 = 0;
            if (v114 != v28)
            {
              continue;
            }

            goto LABEL_106;
          }

          v71 = 0;
          goto LABEL_79;
        }

        break;
      }

      swift_beginAccess();
      v68 = *(v67 + 16) & 0x3FLL;
      if (v68 > 4)
      {
        v76 = (1 << v68) * 0.75;
        v69 = v102;
        if (COERCE__INT64(fabs(v76)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_124;
        }

        if (v76 <= -9.22337204e18)
        {
          goto LABEL_125;
        }

        if (v76 >= 9.22337204e18)
        {
          goto LABEL_126;
        }

        if (v66 > v76)
        {
LABEL_75:
          swift_beginAccess();
          v70 = *(v67 + 24);
          v71 = v70 & 0x3F;
          v66 = *(v116 + 16);
          if (v66 <= 0xF)
          {
            v72 = v70 & 0x3F;
            if ((v70 & 0x3F) == 0)
            {

              v69 = 0;
              goto LABEL_103;
            }

LABEL_90:
            v69 = _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5(v116, v72, 0);

LABEL_103:
            v102 = v69;
            v10 = v69;
            if (v114 != v28)
            {
              continue;
            }

            goto LABEL_106;
          }

LABEL_79:
          v73 = ceil(v66 / 0.75);
          if (v73 == INFINITY)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          if (v73 <= -9.22337204e18)
          {
            goto LABEL_122;
          }

          if (v73 >= 9.22337204e18)
          {
            goto LABEL_123;
          }

          if ((v66 + 1) > v73)
          {
            v74 = v66 + 1;
          }

          else
          {
            v74 = v73;
          }

          if (v74 <= 2)
          {
            v74 = 2;
          }

          v75 = 64 - __clz(v74 - 1);
          if (v71 <= v75)
          {
            v72 = v75;
          }

          else
          {
            v72 = v71;
          }

          goto LABEL_90;
        }
      }

      else
      {
        v69 = v102;
        if (v66 > 0xF)
        {
          goto LABEL_75;
        }
      }

      break;
    }

    if ((swift_isUniquelyReferenced_native() & 1) == 0)
    {
      if (!v69)
      {
        goto LABEL_129;
      }

      v4 = v69[2];
      v77 = (v4 & 0x3F) << v4;
      v15 = __OFADD__(v77, 64);
      v78 = v77 + 64;
      if (v15)
      {
        goto LABEL_127;
      }

      v80 = v78 - 1;
      v79 = v78 < 1;
      v81 = v78 + 62;
      if (!v79)
      {
        v81 = v80;
      }

      v82 = v81 >> 6;
      type metadata accessor for _HashTable.Storage();
      v83 = swift_allocObject();
      v84 = v69[3];
      v83[2] = v4;
      v83[3] = v84;
      memcpy(v83 + 4, v69 + 4, 8 * v82);

      v69 = v83;
    }

    if (!v69)
    {
      goto LABEL_128;
    }

    v85 = *(v116 + 16) + ~(v69[3] >> 6);
    _HashTable.UnsafeHandle.subscript.setter((-1 << v69[2]) ^ ~(((v85 >> 63) & ~(-1 << v69[2])) + v85), v39, v69 + 2, (v69 + 4));

    goto LABEL_103;
  }

  v86 = MEMORY[0x277D84F90];
LABEL_110:

  return _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(v86);
}

Swift::Int DotError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

unint64_t NodePersonality.dotLabel.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 3)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        v2 = *(a1 + 48);
        v28 = *(a1 + 32);
        v29 = v2;
        v30 = *(a1 + 64);
        LOBYTE(v31) = *(a1 + 80);
        v27 = *(a1 + 16);
        v3 = *(a1 + 88);
        v24[0] = SGDataTypeStorage.valueString.getter();
        v24[1] = v4;
        v5 = MEMORY[0x266771550](8250, 0xE200000000000000);
        v6 = (*(*v3 + 136))(v5);
        MEMORY[0x266771550](v6);

        return v24[0];
      }

      goto LABEL_12;
    }

    if (v1 == 2)
    {
      v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F32680);
      LOBYTE(v24[0]) = v13;
      _print_unlocked<A, B>(_:_:)();
      return v27;
    }

    v22 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *(v22 + 24);
    v11 = 0x203A6D61726170;
    v12 = 0xE700000000000000;
LABEL_14:
    *&v27 = v11;
    *(&v27 + 1) = v12;
    MEMORY[0x266771550](v9, v10);
    return v27;
  }

  if (v1 <= 5)
  {
    if (v1 != 4)
    {
LABEL_12:
      v21 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      return v21;
    }

    v8 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *(v8 + 24);
    v11 = 46;
    v12 = 0xE100000000000000;
    goto LABEL_14;
  }

  if (v1 == 6)
  {
    v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
    v34 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
    v35 = v14;
    v36[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
    *(v36 + 9) = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
    v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
    v30 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v31 = v15;
    v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
    v32 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
    v33 = v16;
    v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v27 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v28 = v17;
    v29 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v25 = 0x286870617267;
    v26 = 0xE600000000000000;
    v18 = *(&v17 + 1);
    v19 = v29;
    outlined init with copy of UserGraph(&v27, v24);

    MEMORY[0x266771550](v18, v19);

    MEMORY[0x266771550](41, 0xE100000000000000);
    outlined destroy of UserGraph(&v27);
    return v25;
  }

  else
  {
    v23 = 0x6153657461657263;
    if (a1 != 0xE000000000000008)
    {
      v23 = 0x746C75736572;
    }

    if (a1 == 0xE000000000000000)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v23;
    }
  }
}

uint64_t NodePersonality.dotIdentifier.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v3, a1);
  v3[0] = Hasher._finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t protocol witness for DotLabel.dotIdentifier.getter in conformance NodePersonality()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v3, v1);
  v3[0] = Hasher._finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t DataType.dotLabel.getter()
{
  type metadata accessor for MetalDataType();
  if (swift_dynamicCastClass())
  {
    v1 = swift_dynamicCastClassUnconditional();
    v3 = *(v1 + 24);
    v2 = *(v1 + 32);
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v4 = swift_dynamicCastClass();
    v3 = (*(*v0 + 136))();
    if (v4)
    {
      lazy protocol witness table accessor for type String and conformance String();
      v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    }
  }

  return v3;
}

uint64_t UserGraph.subgraphs()()
{
  v29 = *(v0 + 64);
  v1 = *(v29 + 16);
  v28 = MEMORY[0x277D84F90];

  if (v1)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = MEMORY[0x277D84F90];
    while (v3 < v1)
    {
      v6 = (v4 + 48 * v3);
      if (v6[3] == -7)
      {
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_16;
        }

        v8 = *v6;
        v9 = v5;
        if (*v6 >> 61 == 6)
        {
          v10 = v6[1];
          v11 = v6[2];
          v12 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
          v37 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v38 = v12;
          v39[0] = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
          *(v39 + 9) = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
          v13 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v33 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v34 = v13;
          v14 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v35 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v36 = v14;
          v15 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v30 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v31 = v15;
          v32 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMR);
          v16 = swift_allocObject();
          v17 = v38;
          v18 = v39[0];
          v19 = v36;
          v16[9] = v37;
          v16[10] = v17;
          v16[11] = v18;
          *(v16 + 185) = *(v39 + 9);
          v20 = v34;
          v21 = v35;
          v22 = v32;
          v16[5] = v33;
          v16[6] = v20;
          v16[7] = v21;
          v16[8] = v19;
          v23 = v30;
          v24 = v31;
          v16[1] = xmmword_265F1F670;
          v16[2] = v23;
          v16[3] = v24;
          v16[4] = v22;
          outlined init with copy of UserGraph(&v30, v27);
          outlined init with copy of UserGraph(&v30, v27);
          outlined copy of NodePersonality(v8);

          v26 = UserGraph.subgraphs()(v25);
          v27[0] = v16;
          specialized Array.append<A>(contentsOf:)(v26);

          outlined consume of NodePersonality(v8);
          outlined destroy of UserGraph(&v30);
          v9 = v27[0];
        }

        result = specialized Array.append<A>(contentsOf:)(v9);
      }

      if (v3 >= v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_13:
    outlined destroy of [Input](&v29, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    return v28;
  }

  return result;
}

uint64_t graphDotText(representing:index:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v161 = 95;
  *(&v161 + 1) = 0xE100000000000000;
  *&v154 = a2;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v5);

  v101 = a1;
  v91 = *(a1 + 32);
  v92 = *(a1 + 24);
  v6 = *(a1 + 96);
  v180 = *(a1 + 80);
  *v181 = v6;
  *&v181[9] = *(a1 + 105);
  v7 = *(a1 + 144);
  v175 = *(a1 + 128);
  *v176 = v7;
  *&v176[9] = *(a1 + 153);
  v174 = *(a1 + 64);
  v8 = *(v174 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = v9 + 32;
    v95 = v3;
    v96 = MEMORY[0x277D84F90];
    v93 = v9 + 32;
    v94 = v8;
    while (1)
    {
      while (1)
      {
        if (v10 >= v8)
        {
          goto LABEL_134;
        }

        v13 = v11 + 48 * v10;
        if (*(v13 + 24) != -7)
        {
          break;
        }

        v14 = __OFADD__(v10++, 1);
        if (v14)
        {
          goto LABEL_138;
        }

        if (v10 >= v8)
        {
          goto LABEL_120;
        }
      }

      v14 = __OFADD__(v10, 1);
      v15 = v10 + 1;
      if (v14)
      {
        goto LABEL_137;
      }

      v100 = *(v13 + 24);
      v98 = v15;
      v17 = *v13;
      v16 = *(v13 + 8);
      v18 = *(v13 + 16);
      v97 = *(v13 + 32);
      v99 = *(v13 + 40);
      outlined copy of NodePersonality(*v13);
      v185 = v16;

      v135 = v18;

      v106 = v17;
      if (specialized static NodePersonality.== infix(_:_:)(v17, v180))
      {
        v19 = *(v185 + 16);
        if (v19 == *(*(&v180 + 1) + 16))
        {
          if (v19)
          {
            v20 = v185 == *(&v180 + 1);
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v3 = 0;
            v24 = (v185 + 80);
            v25 = *(&v180 + 1) + 40;
            v102 = *(v185 + 16);
            while (v3 < *(v185 + 16))
            {
              if (v19 == v3)
              {
                goto LABEL_140;
              }

              if (*(v24 - 6) != *(v25 - 8))
              {
                goto LABEL_63;
              }

              v26 = *(v24 - 4);
              v27 = *(v24 - 3);
              v29 = *v25;
              v28 = *(v25 + 8);
              v30 = *(v25 + 16);
              v107 = *(v25 + 24);
              v111 = *(v24 - 2);
              v123 = *(v25 + 32);
              v127 = *(v24 - 8);
              v115 = *(v25 + 40);
              v119 = *v24;
              v131 = *(**(v24 - 5) + 128);

              if ((v131(v29) & 1) == 0 || (v26 != v28 || v27 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
LABEL_62:

                goto LABEL_63;
              }

              if (v127)
              {
                if (!v123)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v31 = v123;
                if (v111 != v107)
                {
                  v31 = 1;
                }

                if (v31)
                {
                  goto LABEL_62;
                }
              }

              v19 = v102;
              if (v119 != v115)
              {
                goto LABEL_63;
              }

              ++v3;
              v24 += 7;
              v25 += 56;
              if (v102 == v3)
              {
                goto LABEL_20;
              }
            }

LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:

            v142 = v151;
            v143 = v152;
            v144 = v153;
            v138 = v147;
            v139 = v148;
            v140 = v149;
            v141 = v150;
            outlined destroy of Edge(&v138);

            __break(1u);
            return result;
          }

LABEL_20:
          v21 = *(v135 + 16);
          if (v21 == *(*v181 + 16))
          {
            if (v21)
            {
              v22 = v135 == *v181;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v3 = 0;
              v32 = (v135 + 80);
              v33 = *v181 + 40;
              v103 = *(v135 + 16);
              while (v3 < *(v135 + 16))
              {
                if (v21 == v3)
                {
                  goto LABEL_142;
                }

                if (*(v32 - 6) != *(v33 - 8))
                {
                  goto LABEL_63;
                }

                v34 = *(v32 - 4);
                v35 = *(v32 - 3);
                v37 = *v33;
                v36 = *(v33 + 8);
                v38 = *(v33 + 16);
                v108 = *(v33 + 24);
                v112 = *(v32 - 2);
                v124 = *(v33 + 32);
                v128 = *(v32 - 8);
                v116 = *(v33 + 40);
                v120 = *v32;
                v132 = *(**(v32 - 5) + 128);

                if ((v132(v37) & 1) == 0 || (v34 != v36 || v35 != v38) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_62;
                }

                if (v128)
                {
                  if (!v124)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  v39 = v124;
                  if (v112 != v108)
                  {
                    v39 = 1;
                  }

                  if (v39)
                  {
                    goto LABEL_62;
                  }
                }

                v21 = v103;
                if (v120 != v116)
                {
                  goto LABEL_63;
                }

                ++v3;
                v32 += 7;
                v33 += 56;
                if (v103 == v3)
                {
                  goto LABEL_26;
                }
              }

              goto LABEL_141;
            }

LABEL_26:
            if (v100 == *&v181[8])
            {
              v23 = v181[24];
              if (v99)
              {
                if (v181[24])
                {
                  goto LABEL_6;
                }
              }

              else
              {
                if (v97 != *&v181[16])
                {
                  v23 = 1;
                }

                if ((v23 & 1) == 0)
                {
                  goto LABEL_6;
                }
              }
            }
          }
        }
      }

LABEL_63:
      if ((specialized static NodePersonality.== infix(_:_:)(v106, v175) & 1) == 0)
      {
        goto LABEL_107;
      }

      v40 = *(v185 + 16);
      if (v40 != *(*(&v175 + 1) + 16))
      {
        goto LABEL_107;
      }

      if (v40 && v185 != *(&v175 + 1))
      {
        v3 = 0;
        v41 = (v185 + 80);
        v42 = *(&v175 + 1) + 40;
        v104 = *(v185 + 16);
        while (v3 < *(v185 + 16))
        {
          if (v40 == v3)
          {
            goto LABEL_133;
          }

          if (*(v41 - 6) != *(v42 - 8))
          {
            goto LABEL_107;
          }

          v43 = *(v41 - 4);
          v44 = *(v41 - 3);
          v46 = *v42;
          v45 = *(v42 + 8);
          v47 = *(v42 + 16);
          v109 = *(v42 + 24);
          v113 = *(v41 - 2);
          v125 = *(v42 + 32);
          v129 = *(v41 - 8);
          v117 = *(v42 + 40);
          v121 = *v41;
          v133 = *(**(v41 - 5) + 128);

          if ((v133(v46) & 1) == 0 || (v43 != v45 || v44 != v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_106:

            goto LABEL_107;
          }

          if (v129)
          {
            if (!v125)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v48 = v125;
            if (v113 != v109)
            {
              v48 = 1;
            }

            if (v48)
            {
              goto LABEL_106;
            }
          }

          if (v121 != v117)
          {
            goto LABEL_107;
          }

          ++v3;
          v41 += 7;
          v42 += 56;
          v40 = v104;
          if (v104 == v3)
          {
            goto LABEL_83;
          }
        }

        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_83:
      v49 = *(v135 + 16);
      if (v49 != *(*v176 + 16))
      {
        goto LABEL_107;
      }

      if (v49 && v135 != *v176)
      {
        v3 = 0;
        v50 = (v135 + 80);
        v51 = *v176 + 40;
        v105 = *(v135 + 16);
        while (v3 < *(v135 + 16))
        {
          if (v49 == v3)
          {
            goto LABEL_136;
          }

          if (*(v50 - 6) != *(v51 - 8))
          {
            goto LABEL_107;
          }

          v52 = *(v50 - 4);
          v53 = *(v50 - 3);
          v55 = *v51;
          v54 = *(v51 + 8);
          v56 = *(v51 + 16);
          v110 = *(v51 + 24);
          v114 = *(v50 - 2);
          v126 = *(v51 + 32);
          v130 = *(v50 - 8);
          v118 = *(v51 + 40);
          v122 = *v50;
          v134 = *(**(v50 - 5) + 128);

          if ((v134(v55) & 1) == 0 || (v52 != v54 || v53 != v56) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_106;
          }

          if (v130)
          {
            if (!v126)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v57 = v126;
            if (v114 != v110)
            {
              v57 = 1;
            }

            if (v57)
            {
              goto LABEL_106;
            }
          }

          if (v122 != v118)
          {
            goto LABEL_107;
          }

          ++v3;
          v50 += 7;
          v51 += 56;
          v49 = v105;
          if (v105 == v3)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_135;
      }

LABEL_102:
      v58 = v100;
      if (v100 == *&v176[8])
      {
        v12 = v176[24];
        if (v99)
        {
          if (!v176[24])
          {
            v99 = 1;
LABEL_107:
            v58 = v100;
            goto LABEL_108;
          }
        }

        else
        {
          if (v97 != *&v176[16])
          {
            v12 = 1;
          }

          if (v12)
          {
            v99 = 0;
            goto LABEL_107;
          }
        }

LABEL_6:
        outlined consume of NodePersonality(v106);

        v8 = v94;
        v3 = v95;
        v10 = v98;
        v11 = v93;
        if (v98 >= v94)
        {
          goto LABEL_120;
        }
      }

      else
      {
LABEL_108:
        v59 = v96;
        *&v161 = v96;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 16) + 1, 1);
          v59 = v161;
        }

        v3 = v95;
        v61 = *(v59 + 16);
        v60 = *(v59 + 24);
        v62 = v59;
        if (v61 >= v60 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
          v62 = v161;
        }

        *(v62 + 16) = v61 + 1;
        v96 = v62;
        v63 = v62 + 48 * v61;
        v64 = v185;
        *(v63 + 32) = v106;
        *(v63 + 40) = v64;
        *(v63 + 48) = v135;
        *(v63 + 56) = v58;
        *(v63 + 64) = v97;
        *(v63 + 72) = v99;
        v11 = v93;
        v8 = v94;
        v10 = v98;
        if (v98 >= v94)
        {
          goto LABEL_120;
        }
      }
    }
  }

  v96 = MEMORY[0x277D84F90];
LABEL_120:
  outlined destroy of [Input](&v174, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMR);
  v65 = swift_allocObject();
  v183 = *(&v180 + 1);
  v184[0] = v180;
  v182 = *v181;
  v67 = v180;
  v66 = *v181;
  v65[1] = xmmword_265F1F670;
  v65[2] = v67;
  v65[3] = v66;
  *(v65 + 57) = *&v181[9];
  outlined init with copy of NodePersonality(v184, &v161);
  outlined init with copy of [Input](&v183, &v161, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v182, &v161, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v185 = createNodeStatements #1 (_:) in graphDotText(representing:index:)(v65, 95, 0xE100000000000000, &v180, &v175);
  swift_setDeallocating();
  outlined destroy of ShaderGraphNode((v65 + 2));
  swift_deallocClassInstance();
  v68 = swift_allocObject();
  v178 = *(&v175 + 1);
  v179 = v175;
  v177 = *v176;
  v70 = v175;
  v69 = *v176;
  v68[1] = xmmword_265F1F670;
  v68[2] = v70;
  v68[3] = v69;
  *(v68 + 57) = *&v176[9];
  outlined init with copy of NodePersonality(&v179, &v161);
  outlined init with copy of [Input](&v178, &v161, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v177, &v161, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v137 = createNodeStatements #1 (_:) in graphDotText(representing:index:)(v68, 95, 0xE100000000000000, &v180, &v175);
  swift_setDeallocating();
  outlined destroy of ShaderGraphNode((v68 + 2));
  swift_deallocClassInstance();
  v136 = createNodeStatements #1 (_:) in graphDotText(representing:index:)(v96, 95, 0xE100000000000000, &v180, &v175);

  outlined init with copy of UserGraph(v101, &v161);
  v71 = UserGraph.sinkNodes()();
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v101, v71, v168);
  outlined destroy of UserGraph(v101);
  v173 = v168[0];
  v172 = v168[1];
  v171 = v168[2];
  v170 = v168[3];
  v169 = v168[4];
  outlined init with copy of [Input](&v173, &v161, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v172, &v161, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v171, &v161, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v170, &v161, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v169, &v161, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  UserGraph.DepthFirstEdgeIterator.next()(&v161);
  v158 = v165;
  v159 = v166;
  v160 = v167;
  v154 = v161;
  v155 = v162;
  v156 = v163;
  v157 = v164;
  if (*(&v161 + 1))
  {
    v72 = MEMORY[0x277D84F90];
    while (1)
    {
      v151 = v158;
      v152 = v159;
      v153 = v160;
      v147 = v154;
      v148 = v155;
      v149 = v156;
      v150 = v157;
      closure #2 in graphDotText(representing:index:)(&v147, v101, 95, 0xE100000000000000, &v145);
      if (v3)
      {
        goto LABEL_143;
      }

      v142 = v151;
      v143 = v152;
      v144 = v153;
      v138 = v147;
      v139 = v148;
      v140 = v149;
      v141 = v150;
      outlined destroy of Edge(&v138);
      v74 = v146;
      if (v146)
      {
        v75 = v145;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
        }

        v77 = *(v72 + 2);
        v76 = *(v72 + 3);
        if (v77 >= v76 >> 1)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v72);
        }

        *(v72 + 2) = v77 + 1;
        v73 = &v72[16 * v77];
        *(v73 + 4) = v75;
        *(v73 + 5) = v74;
      }

      UserGraph.DepthFirstEdgeIterator.next()(&v161);
      v158 = v165;
      v159 = v166;
      v160 = v167;
      v154 = v161;
      v155 = v162;
      v156 = v163;
      v157 = v164;
      if (!*(&v161 + 1))
      {
        goto LABEL_131;
      }
    }
  }

  v72 = MEMORY[0x277D84F90];
LABEL_131:

  outlined destroy of [Input](&v173, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined destroy of [Input](&v172, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined destroy of [Input](&v171, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined destroy of [Input](&v170, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v169, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);

  *&v147 = 0;
  *(&v147 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(528);
  MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
  *&v138 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v78 = BidirectionalCollection<>.joined(separator:)();
  v80 = v79;

  MEMORY[0x266771550](v78, v80);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
  *&v138 = v136;
  v81 = BidirectionalCollection<>.joined(separator:)();
  v83 = v82;

  MEMORY[0x266771550](v81, v83);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
  *&v138 = v137;
  v84 = BidirectionalCollection<>.joined(separator:)();
  v86 = v85;

  MEMORY[0x266771550](v84, v86);

  MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
  *&v138 = v72;
  v87 = BidirectionalCollection<>.joined(separator:)();
  v89 = v88;

  MEMORY[0x266771550](v87, v89);

  MEMORY[0x266771550](32010, 0xE200000000000000);
  return v147;
}

uint64_t createNodeStatements #1 (_:) in graphDotText(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v73 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v10 = 0;
  v56 = a1 + 32;
  v57 = v5;
  result = v73;
  do
  {
    v64 = result;
    v65 = v10;
    v12 = v56 + 48 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    LOBYTE(v12) = *(v12 + 40);
    v74[0] = v13;
    v74[1] = v14;
    v74[2] = v16;
    v74[3] = v15;
    v74[4] = v17;
    v75 = v12;
    outlined copy of NodePersonality(v13);

    v63 = v13;
    v61 = specialized ShaderGraphNode.dotLabel.getter(v13);
    v62 = v18;
    v19 = *(v14 + 16);
    v66 = v16;
    if (v19)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = v6;
      v21 = (v14 + 80);
      do
      {
        v22 = *(v21 - 5);
        v24 = *(v21 - 4);
        v23 = *(v21 - 3);
        v25 = *(v21 - 2);
        v26 = *(v21 - 8);
        v27 = *v21;
        v83 = *(v21 - 6);
        v84 = v22;
        v85 = v24;
        v86 = v23;
        v87 = v25;
        v88 = v26;
        v89 = v27;

        v67 = Input.dotID.getter();
        v70 = v28;

        MEMORY[0x266771550](a2, a3);

        MEMORY[0x266771550](v67, v70);

        MEMORY[0x266771550](62, 0xE100000000000000);
        MEMORY[0x266771550](v24, v23);

        v30 = *(v20 + 16);
        v29 = *(v20 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        }

        v21 += 7;
        *(v20 + 16) = v30 + 1;
        v31 = v20 + 16 * v30;
        *(v31 + 32) = 60;
        *(v31 + 40) = 0xE100000000000000;
        --v19;
      }

      while (v19);
      v6 = MEMORY[0x277D84F90];
      v16 = v66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    v35 = *(v16 + 16);
    if (v35)
    {
      v59 = v32;
      v60 = v34;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v36 = v6;
      v37 = (v16 + 80);
      do
      {
        v38 = *(v37 - 5);
        v39 = *(v37 - 4);
        v40 = *(v37 - 3);
        v41 = *(v37 - 2);
        v42 = *(v37 - 8);
        v43 = *v37;
        v76 = *(v37 - 6);
        v77 = v38;
        v78 = v39;
        v79 = v40;
        v80 = v41;
        v81 = v42;
        v82 = v43;

        v68 = Output.dotID.getter();
        v71 = v44;

        MEMORY[0x266771550](a2, a3);

        MEMORY[0x266771550](v68, v71);

        MEMORY[0x266771550](62, 0xE100000000000000);
        MEMORY[0x266771550](v39, v40);

        v46 = *(v36 + 16);
        v45 = *(v36 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        }

        v37 += 7;
        *(v36 + 16) = v46 + 1;
        v47 = v36 + 16 * v46;
        *(v47 + 32) = 60;
        *(v47 + 40) = 0xE100000000000000;
        --v35;
      }

      while (v35);
      v6 = MEMORY[0x277D84F90];
      v32 = v59;
      v34 = v60;
    }

    v48 = BidirectionalCollection<>.joined(separator:)();
    v50 = v49;

    _StringGuts.grow(_:)(31);

    v69 = specialized ShaderGraphNode.dotID.getter();
    v72 = v51;

    MEMORY[0x266771550](a2, a3);

    MEMORY[0x266771550](v69, v72);

    MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
    MEMORY[0x266771550](v32, v34);

    MEMORY[0x266771550](2129021, 0xE300000000000000);
    MEMORY[0x266771550](v61, v62);

    MEMORY[0x266771550](2065726496, 0xE400000000000000);
    MEMORY[0x266771550](v48, v50);

    MEMORY[0x266771550](2260349, 0xE300000000000000);
    if (specialized static ShaderGraphNode.== infix(_:_:)(v74, a4) & 1) != 0 || (specialized static ShaderGraphNode.== infix(_:_:)(v74, a5))
    {
      MEMORY[0x266771550](0x746469776E657020, 0xEB00000000323D68);
    }

    MEMORY[0x266771550](93, 0xE100000000000000);
    outlined consume of NodePersonality(v63);

    result = v64;
    v53 = *(v64 + 16);
    v52 = *(v64 + 24);
    if (v53 >= v52 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
      result = v64;
    }

    v10 = v65 + 1;
    *(result + 16) = v53 + 1;
    v54 = result + 16 * v53;
    *(v54 + 32) = 34;
    *(v54 + 40) = 0xE100000000000000;
  }

  while (v65 + 1 != v57);
  return result;
}

uint64_t closure #2 in graphDotText(representing:index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v72 = *result;
  v73 = *(result + 16);
  v74 = *(result + 32);
  v75 = *(result + 48);
  v69 = *(result + 56);
  v70 = *(result + 72);
  v10 = *(result + 88);
  v71 = *(result + 104);
  if (*result == -7)
  {
    goto LABEL_5;
  }

  if ((v72 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = *(a2 + 64);
  v12 = *(v11 + 16);
  if (v72 >= v12)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v69 == -7)
  {
LABEL_5:
    *a5 = 0;
    *(a5 + 8) = 0;
    return result;
  }

  if (v69 < v12)
  {
    v58 = a5;
    v13 = v11 + 32 + 48 * v72;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v53 = *(v13 + 24);
    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    v18 = v11 + 32 + 48 * v69;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v55 = *(v18 + 32);
    v56 = *(v18 + 24);
    v54 = *(v18 + 40);
    v52 = *v13;
    outlined copy of NodePersonality(*v13);

    v57 = v19;
    outlined copy of NodePersonality(v19);

    _StringGuts.grow(_:)(26);

    v67 = 34;
    v68 = 0xE100000000000000;
    v59 = specialized ShaderGraphNode.dotID.getter();
    v63 = v24;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v59, v63);

    MEMORY[0x266771550](2243106, 0xE300000000000000);
    v60 = Output.dotID.getter();
    v64 = v25;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v60, v64);

    MEMORY[0x266771550](0x22203E2D20653A22, 0xE800000000000000);
    v61 = specialized ShaderGraphNode.dotID.getter();
    v65 = v26;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v61, v65);

    MEMORY[0x266771550](2243106, 0xE300000000000000);
    v62 = Input.dotID.getter();
    v66 = v27;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v62, v66);

    MEMORY[0x266771550](7813666, 0xE300000000000000);
    type metadata accessor for MetalDataType();
    if (swift_dynamicCastClass())
    {
      v28 = swift_dynamicCastClassUnconditional();
      v29 = *(v28 + 24);
      v30 = *(v28 + 32);
    }

    else
    {
      type metadata accessor for MaterialXDataType();
      v31 = swift_dynamicCastClass();
      v29 = (*(**(&v72 + 1) + 136))();
      v30 = v32;
      if (v31)
      {
        lazy protocol witness table accessor for type String and conformance String();
        v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v34 = v33;

        v30 = v34;
      }
    }

    if (swift_dynamicCastClass())
    {
      v35 = swift_dynamicCastClassUnconditional();
      v37 = *(v35 + 24);
      v36 = *(v35 + 32);
    }

    else
    {
      type metadata accessor for MaterialXDataType();
      v38 = swift_dynamicCastClass();
      v37 = (*(**(&v69 + 1) + 136))(v38, v39, v40, v41);
      v36 = v42;
      if (v38)
      {
        lazy protocol witness table accessor for type String and conformance String();
        v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v44 = v43;

        v36 = v44;
      }
    }

    if (v29 == v37 && v30 == v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      MEMORY[0x266771550](v29, v30);

      MEMORY[0x266771550](34, 0xE100000000000000);
      v6 = 0x6562616C6C696174;
      v8 = 0xEB00000000223D6CLL;
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v9 = *(v7 + 2);
      a5 = *(v7 + 3);
    }

    else
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v46 = *(v7 + 2);
      v45 = *(v7 + 3);
      if (v46 >= v45 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v7);
      }

      *(v7 + 2) = v46 + 1;
      v47 = &v7[16 * v46];
      *(v47 + 4) = 0xD000000000000044;
      *(v47 + 5) = 0x8000000265F326C0;
      _StringGuts.grow(_:)(21);

      MEMORY[0x266771550](v29, v30);

      MEMORY[0x266771550](0x209286E220, 0xA500000000000000);
      MEMORY[0x266771550](v37, v36);

      MEMORY[0x266771550](34, 0xE100000000000000);
      v6 = 0x6562616C6C696174;
      v8 = 0xEB00000000223D6CLL;
      v9 = *(v7 + 2);
      a5 = *(v7 + 3);
    }

    v5 = v9 + 1;
    if (v9 < a5 >> 1)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v5, 1, v7);
LABEL_23:
  *(v7 + 2) = v5;
  v48 = &v7[16 * v9];
  *(v48 + 4) = v6;
  *(v48 + 5) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v49 = BidirectionalCollection<>.joined(separator:)();
  v51 = v50;

  MEMORY[0x266771550](v49, v51);

  MEMORY[0x266771550](93, 0xE100000000000000);
  MEMORY[0x266771550](23328, 0xE200000000000000);
  outlined consume of NodePersonality(v52);

  outlined consume of NodePersonality(v57);

  *v58 = v67;
  v58[1] = v68;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BuiltInDefinition.InputSpec.dotLabel.getter()
{

  MEMORY[0x266771550](8250, 0xE200000000000000);
  v0 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v0);
}

uint64_t BuiltInDefinition.InputSpec.dotIdentifier.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  MEMORY[0x266771550](v0, v2);

  return 0x5F7475706E69;
}

uint64_t protocol witness for DotLabel.dotLabel.getter in conformance BuiltInDefinition.InputSpec()
{
  v1 = v0[2];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x266771550](8250, 0xE200000000000000);
  v2 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v2);

  return v4;
}

uint64_t protocol witness for DotLabel.dotIdentifier.getter in conformance BuiltInDefinition.InputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  return BuiltInDefinition.InputSpec.dotIdentifier.getter();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BuiltInDefinition.OutputSpec.dotLabel.getter()
{

  MEMORY[0x266771550](8250, 0xE200000000000000);
  v0 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v0);
}

uint64_t BuiltInDefinition.OutputSpec.dotIdentifier.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  MEMORY[0x266771550](v0, v2);

  return 0x5F74757074756FLL;
}

uint64_t protocol witness for DotLabel.dotIdentifier.getter in conformance BuiltInDefinition.OutputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  return BuiltInDefinition.OutputSpec.dotIdentifier.getter();
}

uint64_t SGDataTypeGraph.graph(from:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3 >> 62 == 1)
  {
    v4 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
    v5 = v4[2];
    v6 = v4[3];
    v7 = v4[4];
    v8 = v4[5];
    v9 = v4[6];
    v10 = v4[7];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

uint64_t SGDataTypeGraph.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void *SGDataTypeGraph.edges.getter()
{
  v1 = *(v0 + 40);

  v3 = specialized Graph.sinkNodes()(v2);
  EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n = _s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(v1, v3);
  v6 = v5;
  v8 = v7;

  v63 = EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n;
  v64 = v6;
  v65 = v8;

  specialized Graph.DepthFirstEdgeIterator.next()(&v57);
  if (*(&v58 + 1))
  {
    v9 = MEMORY[0x277D84F90];
    do
    {
      v53 = v59;
      v54 = v60;
      v55 = v61;
      v56 = v62;
      v51 = v57;
      v52 = v58;
      closure #1 in SGDataTypeGraph.edges.getter(&v51, v0, &v40);
      v36[2] = v53;
      v36[3] = v54;
      v36[4] = v55;
      v37 = v56;
      v36[0] = v51;
      v36[1] = v52;
      outlined destroy of [Input](v36, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v38[8] = v48;
      v38[9] = v49;
      v39 = v50;
      v38[4] = v44;
      v38[5] = v45;
      v38[6] = v46;
      v38[7] = v47;
      v38[0] = v40;
      v38[1] = v41;
      v38[2] = v42;
      v38[3] = v43;
      if (_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOg(v38) == 1)
      {
        v33 = v48;
        v34 = v49;
        v35 = v50;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v32 = v47;
        v25 = v40;
        v26 = v41;
        v27 = v42;
        v28 = v43;
        outlined destroy of [Input](&v25, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMR);
      }

      else
      {
        v33 = v48;
        v34 = v49;
        v35 = v50;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v32 = v47;
        v25 = v40;
        v26 = v41;
        v27 = v42;
        v28 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
        }

        v11 = v9[2];
        v10 = v9[3];
        if (v11 >= v10 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
        }

        v18 = v29;
        v19 = v30;
        v16 = v27;
        v17 = v28;
        v24 = v35;
        v22 = v33;
        v23 = v34;
        v20 = v31;
        v21 = v32;
        v14 = v25;
        v15 = v26;
        v9[2] = v11 + 1;
        v12 = &v9[21 * v11];
        *(v12 + 3) = v15;
        *(v12 + 4) = v16;
        *(v12 + 2) = v14;
        *(v12 + 7) = v19;
        *(v12 + 8) = v20;
        *(v12 + 5) = v17;
        *(v12 + 6) = v18;
        *(v12 + 192) = v24;
        *(v12 + 10) = v22;
        *(v12 + 11) = v23;
        *(v12 + 9) = v21;
      }

      specialized Graph.DepthFirstEdgeIterator.next()(&v57);
    }

    while (*(&v58 + 1));
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  return v9;
}

void closure #1 in SGDataTypeGraph.edges.getter(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 40);
  v8 = *(v7 + 16);
  if (v6 >= v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7 + 32;
  v10 = (v9 + 88 * v6);
  v11 = v10[4];
  if (!v11)
  {
LABEL_7:
    _s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOi0_(&v40);
    v32 = v47;
    *(a3 + 128) = *&v46[16];
    *(a3 + 144) = v32;
    *(a3 + 160) = v48;
    v33 = v44;
    *(a3 + 64) = v43;
    *(a3 + 80) = v33;
    v34 = *v46;
    *(a3 + 96) = v45;
    *(a3 + 112) = v34;
    v35 = v41;
    *a3 = v40;
    *(a3 + 16) = v35;
    v36 = *&v42[16];
    *(a3 + 32) = *v42;
    *(a3 + 48) = v36;
    return;
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 5);
  if (v13 < v8)
  {
    v14 = v9 + 88 * v13;
    v15 = *(v14 + 32);
    if (v15)
    {
      v16 = *(a1 + 2);
      v17 = *(a1 + 4);
      v18 = *(a1 + 7);
      v38 = *(a1 + 8);
      v39 = *(a1 + 3);
      v19 = *(a1 + 9);
      v20 = *(a1 + 80);
      v49 = v3;
      v21 = v10[1];
      v23 = v10[2];
      v24 = v10[3];
      v37 = *(v14 + 16);
      v26 = *v14;
      v25 = *(v14 + 8);
      *&v40 = *v10;
      v22 = v40;
      *(&v40 + 1) = v21;
      *&v41 = v23;
      *(&v41 + 1) = v24;
      *v42 = v11;
      *&v42[8] = v5;
      *&v42[24] = v16;
      *&v43 = v39;
      *(&v43 + 1) = v17;
      *&v44 = v26;
      *(&v44 + 1) = v25;
      v45 = v37;
      *v46 = v15;
      *&v46[8] = v12;
      *&v46[24] = v18;
      *&v47 = v38;
      *(&v47 + 1) = v19;
      v48 = v20;
      destructiveProjectEnumData for NodePersonality.ShaderType(&v40);
      v27 = v47;
      *(a3 + 128) = *&v46[16];
      *(a3 + 144) = v27;
      *(a3 + 160) = v48;
      v28 = v44;
      *(a3 + 64) = v43;
      *(a3 + 80) = v28;
      v29 = *v46;
      *(a3 + 96) = v45;
      *(a3 + 112) = v29;
      v30 = v41;
      *a3 = v40;
      *(a3 + 16) = v30;
      v31 = *&v42[16];
      *(a3 + 32) = *v42;
      *(a3 + 48) = v31;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v22, v21, v23, v24, v11);
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v26, v25, v37, *(&v37 + 1), v15);

      return;
    }

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t SGDataTypeGraph.inputLabel(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  return v1;
}

uint64_t SGDataTypeGraph.outputLabel(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  return v1;
}

uint64_t _s11ShaderGraph010SGDataTypeB0VAA010GenericDotB0A2aDP5labelSSvgTW_0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t protocol witness for GenericDotGraph.inputs(for:) in conformance SGDataTypeGraph(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return specialized SGDataTypeGraph.inputs(for:)(v3);
}

uint64_t protocol witness for GenericDotGraph.outputs(for:) in conformance SGDataTypeGraph(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return specialized SGDataTypeGraph.outputs(for:)(v3);
}

void *protocol witness for GenericDotGraph.edges.getter in conformance SGDataTypeGraph()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return SGDataTypeGraph.edges.getter();
}

uint64_t protocol witness for GenericDotGraph.inputLabel(for:) in conformance SGDataTypeGraph(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  return v1;
}

uint64_t graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = a4[5](a3, a4);
  MEMORY[0x266771550](v8);

  v52 = a2;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v9);

  v48 = 95;
  v49 = 0xE100000000000000;

  MEMORY[0x266771550](95, 0xE100000000000000);

  v10 = a4[4](a3, a4);
  v12 = v11;
  v13 = a4[6](a3, a4);
  v33 = createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v13, a1, 95, 0xE100000000000000, a3, a4);

  v14 = a4[8](a3, a4);
  v36 = createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v14, a1, 95, 0xE100000000000000, a3, a4);

  v15 = a4[7](a3, a4);
  v35 = createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v15, a1, 95, 0xE100000000000000, a3, a4);

  v52 = a4[11](a3, a4);
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v46 = 95;
  v47 = 0xE100000000000000;
  v38 = a3;
  v39 = a4;
  v40 = partial apply for closure #1 in graphDotText<A>(representing:index:);
  v41 = &v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = AssociatedTypeWitness;
  v49 = swift_getAssociatedTypeWitness();
  v50 = AssociatedTypeWitness;
  v51 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata();
  v17 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.OutputType, @in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.InputType) -> (@owned String), v37, v17, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(528);
  MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
  v52 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v20 = BidirectionalCollection<>.joined(separator:)();
  v22 = v21;

  MEMORY[0x266771550](v20, v22);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
  v52 = v35;
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  MEMORY[0x266771550](v23, v25);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
  MEMORY[0x266771550](v10, v12);

  MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
  v52 = v36;
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  MEMORY[0x266771550](v26, v28);

  MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
  v52 = v34;
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  MEMORY[0x266771550](v29, v31);

  MEMORY[0x266771550](32010, 0xE200000000000000);
  return v48;
}

uint64_t thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String, @error @owned Error)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v9, a1 + *(TupleTypeMetadata2 + 48));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
    a4[1] = v12;
  }

  return result;
}

uint64_t createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[9] = a1;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v10, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
}

uint64_t closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v57 = a7;
  (*(a6 + 96))(a1, a5, a6);
  lazy protocol witness table accessor for type String and conformance String();
  v11 = MEMORY[0x277D837D0];
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v14 = v13;

  v55 = v12;
  v56 = v14;
  v53 = 62;
  v54 = 0xE100000000000000;
  v51 = 15964;
  v52 = 0xE200000000000000;
  v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v39 = v16;
  v40 = v15;

  v17 = (*(a6 + 104))(a1, a5, a6);
  v37 = v18;
  v38 = v17;
  v55 = (*(a6 + 72))(a1, a5, a6);
  v48 = a5;
  v49 = a6;
  v50 = a2;
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v47, v19, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);

  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();
  v35 = v24;
  v36 = v23;

  v55 = (*(a6 + 80))(a1, a5, a6);
  v44 = a5;
  v45 = a6;
  v46 = a2;
  swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Array();
  v26 = swift_getWitnessTable();
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v43, v25, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);

  v55 = v28;
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v55 = 34;
  v56 = 0xE100000000000000;
  v53 = v38;
  v54 = v37;

  MEMORY[0x266771550](a3, a4);

  MEMORY[0x266771550](v53, v54);

  MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
  MEMORY[0x266771550](v36, v35);

  MEMORY[0x266771550](2129021, 0xE300000000000000);
  MEMORY[0x266771550](v40, v39);

  MEMORY[0x266771550](2065726496, 0xE400000000000000);
  MEMORY[0x266771550](v29, v31);

  result = MEMORY[0x266771550](1562541437, 0xE400000000000000);
  v33 = v56;
  v34 = v57;
  *v57 = v55;
  v34[1] = v33;
  return result;
}

uint64_t closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = (*(a3 + 120))(a1, a2, a3);
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](62, 0xE100000000000000);
  v9 = (*(a3 + 112))(a1, a2, a3);
  MEMORY[0x266771550](v9);

  *a4 = 60;
  a4[1] = 0xE100000000000000;
  return result;
}

uint64_t closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = (*(a3 + 136))(a1, a2, a3);
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](62, 0xE100000000000000);
  v9 = (*(a3 + 128))(a1, a2, a3);
  MEMORY[0x266771550](v9);

  *a4 = 60;
  a4[1] = 0xE100000000000000;
  return result;
}

uint64_t closure #1 in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(a9 + 104);
  v39 = v14(a1, a8, a9);
  v41 = v15;

  v16 = a6;
  v17 = a7;
  MEMORY[0x266771550](v16, a7);

  v19 = v39;
  v18 = v41;
  v40 = v14(a3, a8, a9);
  v42 = v20;

  MEMORY[0x266771550](a6, v17);

  MEMORY[0x266771550](v19, v18);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  v21 = (*(a9 + 136))(a2, a8, a9);
  MEMORY[0x266771550](v21);

  MEMORY[0x266771550](25914, 0xE200000000000000);
  MEMORY[0x266771550](v40, v42);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  v22 = (*(a9 + 120))(a4, a8, a9);
  MEMORY[0x266771550](v22);

  MEMORY[0x266771550](30522, 0xE200000000000000);
  v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[16 * v25];
  *(v26 + 4) = 0xD000000000000033;
  *(v26 + 5) = 0x8000000265F2FF80;
  v27 = (*(a9 + 144))(a1, a2, a3, a4, a8, a9);
  MEMORY[0x266771550](v27);

  MEMORY[0x266771550](34, 0xE100000000000000);
  v29 = *(v23 + 2);
  v28 = *(v23 + 3);
  if (v29 >= v28 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v23);
  }

  *(v23 + 2) = v29 + 1;
  v30 = &v23[16 * v29];
  *(v30 + 4) = 0x6562616C6C696174;
  *(v30 + 5) = 0xEB00000000223D6CLL;
  MEMORY[0x266771550](540945696, 0xE400000000000000);
  MEMORY[0x266771550](34, 0xE100000000000000);

  MEMORY[0x266771550](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v31 = BidirectionalCollection<>.joined(separator:)();
  v33 = v32;

  MEMORY[0x266771550](v31, v33);

  MEMORY[0x266771550](93, 0xE100000000000000);

  MEMORY[0x266771550](23328, 0xE200000000000000);

  return 34;
}

uint64_t thunk for @callee_guaranteed (@in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.OutputType, @in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.InputType) -> (@owned String)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  result = a2(a1, a1 + TupleTypeMetadata[12], a1 + TupleTypeMetadata[16], a1 + TupleTypeMetadata[20]);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t MetalFunctionNode.dotLabel.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph13HasDebugLabel_pMd, &_s11ShaderGraph13HasDebugLabel_pMR);
  if (!swift_dynamicCast())
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    outlined destroy of [Input](&v28, &_s11ShaderGraph13HasDebugLabel_pSgMd, &_s11ShaderGraph13HasDebugLabel_pSgMR);
LABEL_5:
    v14 = (*(a2 + 24))(a1, a2);
    *&v28 = 25705;
    *(&v28 + 1) = 0xE200000000000000;
    v26 = v14;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v15);

    v13 = *(&v28 + 1);
    v11 = v28;
    goto LABEL_6;
  }

  v9 = *(&v29 + 1);
  v10 = v30;
  __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_6:
  *&v28 = v11;
  *(&v28 + 1) = v13;
  v26 = 60;
  v27 = 0xE100000000000000;
  v24 = 40;
  v25 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  *&v28 = v16;
  *(&v28 + 1) = v18;
  v26 = 62;
  v27 = 0xE100000000000000;
  v24 = 41;
  v25 = 0xE100000000000000;
  v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v21 = v20;

  *&v28 = v19;
  *(&v28 + 1) = v21;
  v26 = 34;
  v27 = 0xE100000000000000;
  v24 = 8796;
  v25 = 0xE200000000000000;
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v22;
}

uint64_t createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v6 = (a1 + 32);
    do
    {
      closure #1 in createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v6, a2, v13);
      v7 = v13[0];
      v8 = v13[1];
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t closure #1 in createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v33 = v4;
    v34 = a3;
    v36 = MEMORY[0x277D84F90];
    v10 = v8;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v12 = 0;
    v35 = *(v10 + 16);
    while (v35 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v13);

      MEMORY[0x266771550](2367550, 0xE300000000000000);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v14);

      v16 = *(v36 + 16);
      v15 = *(v36 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v12;
      *(v36 + 16) = v16 + 1;
      v17 = v36 + 16 * v16;
      *(v17 + 32) = 1735549244;
      *(v17 + 40) = 0xE400000000000000;
      if (v9 == v12)
      {

        a3 = v34;
        v4 = v33;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    _StringGuts.grow(_:)(32);

    v21 = v4[3];
    v22 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v21);
    (*(v22 + 24))(v21, v22);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v23);

    MEMORY[0x266771550](25705, 0xE200000000000000);

    MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
    MEMORY[0x266771550](v18, v20);

    MEMORY[0x266771550](0x6C757365723C7C7DLL, 0xEB00000000203E74);
    v24 = v4[3];
    v25 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v24);
    v26 = MetalFunctionNode.dotLabel.getter(v24, v25);
    MEMORY[0x266771550](v26);

    MEMORY[0x266771550](8829, 0xE200000000000000);
    v27 = v4[3];
    v28 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v27);
    v29 = (*(v28 + 24))(v27, v28);
    v30 = *(a2 + 16);
    v31 = (a2 + 32);
    while (v30)
    {
      v32 = *v31++;
      --v30;
      if (v32 == v29)
      {
        MEMORY[0x266771550](0x746469776E657020, 0xEB00000000323D68);
        break;
      }
    }

    result = MEMORY[0x266771550](93, 0xE100000000000000);
    *a3 = 34;
    a3[1] = 0xE100000000000000;
  }

  return result;
}

uint64_t closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *((*(v8 + 48))(v7, v8) + 16);

  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v13 = (*(v12 + 48))(v11, v12);
  v14 = *(v13 + 16);
  if (!v14)
  {

LABEL_15:
    *a4 = MEMORY[0x277D84F90];
    return result;
  }

  v30 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 0;
  v16 = *(v13 + 16);
  if (v16 >= v14)
  {
    v16 = v14;
  }

  v27 = v16;
  while (v27 != v15)
  {
    if (v15 >= *(v13 + 16))
    {
      goto LABEL_18;
    }

    result = closure #1 in closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v15, *(v13 + 8 * v15 + 32), a2, v5, a3);
    if (v4)
    {
    }

    v18 = result;
    v19 = v17;
    v20 = v13;
    v21 = v5;
    v22 = v14;
    v24 = *(v30 + 16);
    v23 = *(v30 + 24);
    if (v24 >= v23 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
    }

    ++v15;
    *(v30 + 16) = v24 + 1;
    v25 = v30 + 16 * v24;
    *(v25 + 32) = v18;
    *(v25 + 40) = v19;
    v14 = v22;
    v26 = v22 == v15;
    v5 = v21;
    v13 = v20;
    v4 = 0;
    if (v26)
    {

      *a4 = v30;
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a3;
  (*(*a3 + 272))(v30, a2);
  if (!v5)
  {
    _StringGuts.grow(_:)(29);

    v28 = 34;
    v29 = 0xE100000000000000;
    v27[0] = 25705;
    v27[1] = 0xE200000000000000;
    v33 = a2;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v11);

    MEMORY[0x266771550](25705, 0xE200000000000000);

    MEMORY[0x266771550](0x746C757365723A22, 0xEF22203E2D20653ALL);
    v12 = a4[3];
    v13 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v12);
    v14 = (*(v13 + 24))(v12, v13);
    v27[1] = 0xE200000000000000;
    v33 = v14;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v15);

    MEMORY[0x266771550](25705, 0xE200000000000000);

    MEMORY[0x266771550](0x6772613A22, 0xE500000000000000);
    v27[0] = a1;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v16);

    MEMORY[0x266771550](30522, 0xE200000000000000);
    v10 = 34;
    v17 = *(*a5 + 16);
    v18 = (*a5 + 32);
    while (v17)
    {
      v19 = *v18++;
      --v17;
      if (v19 == a2)
      {
        goto LABEL_7;
      }
    }

    _StringGuts.grow(_:)(17);

    strcpy(v27, " [headlabel=");
    HIWORD(v27[1]) = -4864;
    v20 = v31;
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v22 = (*(v21 + 16))(v20, v21);
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);

    MEMORY[0x266771550](v23, v24);

    MEMORY[0x266771550](23842, 0xE200000000000000);
    MEMORY[0x266771550](v27[0], v27[1]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph14FunctionNodeIDVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = a2;
    specialized Array.append<A>(contentsOf:)(inited);
    v10 = v28;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v10;
}

void specialized Graph.DepthFirstEdgeIterator.next()(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = *v1;
  if (!*(v3 + 2))
  {
LABEL_22:
    v32 = v43;
    *(v43 + 80) = 0;
    v32[3] = 0u;
    v32[4] = 0u;
    v32[1] = 0u;
    v32[2] = 0u;
    *v32 = 0u;
    return;
  }

  v44 = v2;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v4 = *(v3 + 2);
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v4 = *(v3 + 2);
      if (!v4)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    v5 = v4 - 1;
    v6 = &v3[16 * v5];
    v8 = *(v6 + 4);
    v7 = *(v6 + 5);
    *(v3 + 2) = v5;
    *v2 = v3;
    v9 = v2[1];
    if (*(v9 + 2))
    {
      v10 = *(v9 + 5);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v8);
      MEMORY[0x266772770](v7);
      v11 = Hasher._finalize()();
      v12 = -1 << v9[32];
      v13 = v11 & ~v12;
      if ((*&v9[((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v13))
      {
        v14 = ~v12;
        do
        {
          v15 = (*(v9 + 6) + 16 * v13);
          v17 = *v15;
          v16 = v15[1];
          if (v17 == v8 && v16 == v7)
          {
            goto LABEL_3;
          }

          v13 = (v13 + 1) & v14;
        }

        while (((*&v9[((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v13) & 1) != 0);
      }
    }

    specialized Set._Variant.insert(_:)(&v55, v8, v7);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v19 = v2[2];
    if (v8 >= *(v19 + 16))
    {
      goto LABEL_28;
    }

    v45 = v19 + 32;
    v20 = (v19 + 32 + 88 * v8);
    v21 = v20[4];
    if (v21)
    {
      v23 = v20[2];
      v22 = v20[3];
      v25 = *v20;
      v24 = v20[1];
      specialized Graph.Node.subscript.getter(v7, *v20, v23, v58);
      v27 = v58[0];
      v26 = v58[1];
      v28 = v58[2];
      v47 = v60;
      v48 = v59;
      v46 = v61;

      v29 = v23;
      v2 = v44;
      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v25, v24, v29, v22, v21);
      if (v59)
      {
        break;
      }
    }

LABEL_3:
    v3 = *v2;
    if (!*(*v2 + 2))
    {
      goto LABEL_22;
    }
  }

  v62[0] = v27;
  v62[1] = v26;
  v62[2] = v28;
  v62[3] = v48;
  v62[4] = v47;
  v63 = v46 & 1;
  v30 = specialized Graph.edge(to:)(v62, v19, &v55);
  v31 = *(&v56 + 1);
  if (!*(&v56 + 1))
  {
    outlined destroy of [Input](v58, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    v51 = *v57;
    v52 = *&v57[16];
    v53 = *&v57[32];
    v54 = v57[48];
    v49 = v55;
    v50 = v56;
    outlined destroy of [Input](&v49, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    goto LABEL_3;
  }

  v33 = v55;
  v34 = v56;
  v35 = *v57;
  v49 = v55;
  v50 = v56;
  *&v51 = *v57;
  if ((v55 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v55 < *(v19 + 16))
  {
    v36 = v45 + 88 * v55;
    v37 = *(v36 + 64);
    v38 = *(v36 + 72);
    MEMORY[0x28223BE20](v30);
    v42[2] = &v49;

    v39 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(partial apply for specialized closure #2 in Graph.Adjacent.init(_:), v42, v38);

    specialized Array.append<A>(contentsOf:)(v39, v40);
    outlined destroy of [Input](v58, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    v41 = v43;
    *v43 = v33;
    *(v41 + 16) = v34;
    *(v41 + 24) = v31;
    *(v41 + 32) = v35;
    *(v41 + 40) = *&v57[8];
    *(v41 + 56) = *&v57[24];
    *(v41 + 65) = *&v57[33];
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t specialized Graph.sinkNodes()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v24 = MEMORY[0x277D84F90];
    while (v2 < v1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_25;
      }

      v5 = (v3 + 88 * v2);
      v6 = v5[4];
      ++v2;
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = *v5;
        v10 = v5[1];
        v11 = v5[2];
        v12 = v5[3];
        v13 = v5[6];
        v14 = v5[7];
        v15 = *(v14 + 16);
        v16 = v14 + 32;
        while (v15 != v7)
        {
          if (v7 >= *(v13 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v17 = *(v16 + 8 * v7++);
          v18 = *(v17 + 16);
          v19 = __OFADD__(v8, v18);
          v8 += v18;
          if (v19)
          {
            goto LABEL_23;
          }
        }

        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, v10, v11, v12, v6);
        if (v8)
        {
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
            v24 = result;
          }

          v21 = v24[2];
          v20 = v24[3];
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v24);
            v22 = v21 + 1;
            v24 = result;
          }

          v24[2] = v22;
          v23 = &v24[5 * v21];
          v23[4] = v9;
          v23[5] = v10;
          v23[6] = v11;
          v23[7] = v12;
          v23[8] = v6;
        }
      }

      if (v4 == v1)
      {
        return v24;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

unint64_t lazy protocol witness table accessor for type DotError and conformance DotError()
{
  result = lazy protocol witness table cache variable for type DotError and conformance DotError;
  if (!lazy protocol witness table cache variable for type DotError and conformance DotError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DotError and conformance DotError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DotError and conformance DotError;
  if (!lazy protocol witness table cache variable for type DotError and conformance DotError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DotError and conformance DotError);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String, @error @owned Error)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String, @error @owned Error)(a1, *(v3 + 32), a2, a3);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

double specialized closure #1 in Graph.Node.outputs.getter@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized Graph.Node.subscript.getter(*a1, *a2, *(a2 + 16), v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

char *_s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(char *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v23 = result + 32;
  v4 = (a2 + 64);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *v4;
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v25[0] = v8;
    v25[1] = v7;
    v26 = v6;
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(v2 + 2))
    {
      goto LABEL_23;
    }

    v24 = &v22;
    v9 = &v23[88 * v8];
    v10 = *(v9 + 8);
    v11 = *(v9 + 9);
    MEMORY[0x28223BE20](result);
    v21[2] = v25;

    v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v21, v11);

    v13 = *(v12 + 16);
    v14 = *(v5 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v5 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v16, 1, v5);
      v5 = result;
      if (*(v12 + 16))
      {
LABEL_16:
        v17 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v17 < v13)
        {
          goto LABEL_26;
        }

        memcpy(&v5[16 * v17 + 32], (v12 + 32), 16 * v13);

        if (v13)
        {
          v18 = *(v5 + 2);
          v19 = __OFADD__(v18, v13);
          v20 = v18 + v13;
          if (v19)
          {
            goto LABEL_27;
          }

          *(v5 + 2) = v20;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_25;
    }

LABEL_4:
    v4 += 5;
    if (!--v3)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t specialized Graph.Node.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v4 = a3 >> 62;
  if (a3 >> 62)
  {
    if (v4 != 1)
    {
LABEL_10:
      a2 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_13:
      *a4 = a2;
      *(a4 + 8) = v9;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = v13;
      return result;
    }

    v5 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = 40;
  }

  else
  {
    v6 = 32;
    v5 = a3;
  }

  if (*(*(v5 + v6) + 16) <= result)
  {
    goto LABEL_10;
  }

  v8 = a4;
  if (!v4)
  {
    a4 = *(a3 + 32);
    if (*(a4 + 16) <= result)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_12:
    v14 = a4 + 32 * result;
    v10 = *(v14 + 32);
    v11 = *(v14 + 40);
    v12 = *(v14 + 48);
    v13 = *(v14 + 56);
    v15 = result;

    v9 = v15;
    a4 = v8;
    goto LABEL_13;
  }

  a4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  if (*(a4 + 16) > result)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t specialized Graph.Node.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v4 = a3 >> 62;
  if (a3 >> 62)
  {
    if (v4 != 1)
    {
      goto LABEL_10;
    }

    v5 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = 48;
  }

  else
  {
    v6 = 40;
    v5 = a3;
  }

  if (*(*(v5 + v6) + 16) <= result)
  {
LABEL_11:
    a2 = 0;
    result = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_15:
    *a4 = a2;
    a4[1] = result;
    a4[2] = v8;
    a4[3] = v9;
    a4[4] = v10;
    return result;
  }

  v7 = a4;
  if (!v4)
  {
    a4 = *(a3 + 40);
    if (a4[2] <= result)
    {
      __break(1u);
LABEL_10:
      if (!result)
      {
        v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v9 = 0xE300000000000000;
        v8 = 7632239;
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_13:
    v11 = a2;
    v12 = &a4[3 * result];
    v8 = v12[4];
    v9 = v12[5];
    v10 = v12[6];
    v13 = result;

    result = v13;
    a4 = v7;
    a2 = v11;
    goto LABEL_15;
  }

  a4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  if (a4[2] > result)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized ShaderGraphNode.dotLabel.getter(unint64_t a1)
{
  NodePersonality.dotLabel.getter(a1);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](28252, 0xE200000000000000);

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = v3;

  MEMORY[0x266771550](v2, v4);

  return 1701080942;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a1 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    result = closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v6, a2, a3, &v18);
    if (v3)
    {

      return v7;
    }

    v9 = v18;
    v10 = *(v18 + 16);
    v11 = *(v7 + 16);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v12 <= *(v7 + 24) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v7);
      v7 = result;
      if (*(v9 + 16))
      {
LABEL_15:
        if ((*(v7 + 24) >> 1) - *(v7 + 16) < v10)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v7 + 16);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_25;
          }

          *(v7 + 16) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += 5;
    if (!--v4)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized SGDataTypeGraph.subgraphs()(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_22:

    return v6;
  }

  v4 = 0;
  v5 = (result + 64);
  v6 = MEMORY[0x277D84F90];
  v22 = *(result + 16);
  v23 = result;
  while (v4 < *(v2 + 16))
  {
    v7 = *(v5 - 2);
    v8 = MEMORY[0x277D84F90];
    if (v7 >> 62 == 1)
    {
      v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *v5;
      v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v13 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_265F1F670;
      *(v14 + 32) = v9;
      *(v14 + 40) = v24;
      *(v14 + 48) = v10;
      *(v14 + 56) = v11;
      *(v14 + 64) = v13;
      *(v14 + 72) = v12;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v25 = specialized SGDataTypeGraph.subgraphs()(v12);

      v3 = v22;

      v2 = v23;
      specialized Array.append<A>(contentsOf:)(v25);

      v8 = v14;
    }

    v15 = *(v8 + 16);
    v16 = *(v6 + 16);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v17 <= *(v6 + 24) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v18, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_17:
        if ((*(v6 + 24) >> 1) - *(v6 + 16) < v15)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v6 + 16);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_27;
          }

          *(v6 + 16) = v21;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v4;
    v5 += 5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized SGDataTypeGraph.Personality.dotLabel.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v8 = *(a1 + 16);
    v11 = *(a1 + 24);
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_5:
    lazy protocol witness table accessor for type String and conformance String();
    return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  }

  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
  v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
  v15 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
  v9 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  SGDataTypeStorage.valueString.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  MEMORY[0x266771550](2112092, 0xE300000000000000);
  SGDataType.stringValue.getter();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v6 = v5;

  MEMORY[0x266771550](v4, v6);

  return v3;
}

uint64_t specialized SGDataTypeGraph.sourceNodes.getter(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = *(result + 16);
  if (!v2)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = -v2;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = *(result + 16);
    if (v3 > v7)
    {
      v7 = v3;
    }

    v8 = -v7;
    v9 = (v4 + 40 * v3++);
    while (1)
    {
      if (v8 + v3 == 1)
      {
        __break(1u);
        return result;
      }

      v10 = *(v9 - 2);
      v11 = v10 >> 62;
      if (!(v10 >> 62))
      {
        v12 = *(v9 - 2);
        v13 = 32;
        goto LABEL_12;
      }

      if (v11 != 1)
      {
        break;
      }

      v12 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = 40;
LABEL_12:
      if (!*(*(v12 + v13) + 16))
      {
        v14 = v11 ? (v10 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v10 + 40;
        if (*(*v14 + 16))
        {
          v23 = v4;
          v15 = result;
          goto LABEL_19;
        }
      }

      ++v3;
      v9 += 5;
      if (v5 + v3 == 1)
      {
        goto LABEL_26;
      }
    }

    v23 = v4;
    v15 = result;
LABEL_19:
    v17 = *(v9 - 4);
    v16 = *(v9 - 3);
    v19 = *(v9 - 1);
    v18 = *v9;

    v24 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
    }

    result = v15;
    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      result = v15;
    }

    *(v6 + 16) = v21 + 1;
    v22 = (v6 + 40 * v21);
    v4 = v23;
    v22[4] = v24;
    v22[5] = v16;
    v22[6] = v10;
    v22[7] = v19;
    v22[8] = v18;
  }

  while (v5 + v3);
LABEL_26:

  return v6;
}

uint64_t specialized SGDataTypeGraph.sinkNodes.getter(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 64;
    v5 = -v2;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *(result + 16);
      if (v3 > v7)
      {
        v7 = v3;
      }

      v8 = -v7;
      v9 = (v4 + 40 * v3++);
      while (1)
      {
        if (v8 + v3 == 1)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 - 2);
        v11 = v10 >> 62;
        if (!(v10 >> 62))
        {
          v12 = *(v9 - 2);
          v13 = 40;
          goto LABEL_12;
        }

        if (v11 == 1)
        {
          break;
        }

LABEL_6:
        ++v3;
        v9 += 5;
        if (v5 + v3 == 1)
        {
          goto LABEL_24;
        }
      }

      v12 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = 48;
LABEL_12:
      if (*(*(v12 + v13) + 16))
      {
        goto LABEL_6;
      }

      v14 = v11 ? (v10 & 0x3FFFFFFFFFFFFFFFLL) + 40 : v10 + 32;
      if (!*(*v14 + 16))
      {
        goto LABEL_6;
      }

      v24 = result;
      v15 = *(v9 - 4);
      v22 = *(v9 - 3);
      v17 = *(v9 - 1);
      v16 = *v9;

      v23 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      v20 = v19 + 1;
      result = v24;
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        result = v24;
      }

      *(v6 + 16) = v20;
      v21 = (v6 + 40 * v19);
      v21[4] = v23;
      v21[5] = v22;
      v21[6] = v10;
      v21[7] = v17;
      v21[8] = v16;
      if (!(v5 + v3))
      {
        goto LABEL_24;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:

  return v6;
}

uint64_t specialized SGDataTypeGraph.interiorNodes.getter(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 64;
    v5 = -v2;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *(result + 16);
      if (v3 > v7)
      {
        v7 = v3;
      }

      v8 = -v7;
      v9 = (v4 + 40 * v3++);
      while (1)
      {
        if (v8 + v3 == 1)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 - 2);
        v11 = v10 >> 62;
        if (!(v10 >> 62))
        {
          v12 = *(v9 - 2);
          v13 = 32;
          goto LABEL_12;
        }

        if (v11 == 1)
        {
          break;
        }

LABEL_6:
        ++v3;
        v9 += 5;
        if (v5 + v3 == 1)
        {
          goto LABEL_24;
        }
      }

      v12 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = 40;
LABEL_12:
      if (!*(*(v12 + v13) + 16))
      {
        goto LABEL_6;
      }

      v14 = v11 ? (v10 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v10 + 40;
      if (!*(*v14 + 16))
      {
        goto LABEL_6;
      }

      v24 = result;
      v16 = *(v9 - 4);
      v15 = *(v9 - 3);
      v18 = *(v9 - 1);
      v17 = *v9;

      v23 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      }

      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      v21 = v20 + 1;
      result = v24;
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v21 = v20 + 1;
        result = v24;
      }

      *(v6 + 16) = v21;
      v22 = (v6 + 40 * v20);
      v22[4] = v16;
      v22[5] = v23;
      v22[6] = v10;
      v22[7] = v18;
      v22[8] = v17;
      if (!(v5 + v3))
      {
        goto LABEL_24;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:

  return v6;
}

uint64_t specialized SGDataTypeGraph.inputs(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 32);
  if (!(v1 >> 62))
  {
    v3 = 32;
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {
    v3 = 40;
LABEL_5:
    v4 = *(*((v1 & 0x3FFFFFFFFFFFFFFFLL) + v3) + 16);
  }

  MEMORY[0x28223BE20](a1);
  v7[2] = v8;
  return specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v7, 0, v5);
}

uint64_t specialized SGDataTypeGraph.outputs(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 32);
  if (!(v1 >> 62))
  {
    v3 = 40;
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {
    v3 = 48;
LABEL_5:
    v4 = *(*((v1 & 0x3FFFFFFFFFFFFFFFLL) + v3) + 16);
  }

  MEMORY[0x28223BE20](a1);
  v7[2] = v8;
  return specialized Sequence.compactMap<A>(_:)(_s11ShaderGraph0B0V4NodeV7outputsSayAC6OutputVyx_GGvgAISgSiXEfU_AA010SGDataTypeB0V11PersonalityV_TG5TA_0, v7, 0, v5);
}

uint64_t specialized SGDataTypeGraph.inputIdentifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v6 = v5;

  MEMORY[0x266771550](v4, v6);

  return a3;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.OutputType, @in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.InputType) -> (@owned String)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return thunk for @callee_guaranteed (@in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.OutputType, @in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.InputType) -> (@owned String)(a1, *(v2 + 32), a2);
}

double _s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double _s11ShaderGraph0B0V4NodeV7outputsSayAC6OutputVyx_GGvgAISgSiXEfU_AA010SGDataTypeB0V11PersonalityV_TG5TA_0@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Graph.Node.subscript.getter(*a1, **(v2 + 16), *(*(v2 + 16) + 16), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t OrderedDictionary.makeIterator()(uint64_t a1)
{

  return a1;
}

uint64_t OrderedDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v15 = v2[2];
  v14 = v2[3];
  if (v14 >= ContiguousArray.count.getter())
  {
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(*(v23 - 8) + 56);

    return v24(a2, 1, 1, v23);
  }

  else
  {
    v26 = a2;
    v16 = *(TupleTypeMetadata2 + 48);
    v17 = v2[1];
    ContiguousArray.subscript.getter();
    ContiguousArray.subscript.getter();
    v2[3] = v14 + 1;
    (*(v7 + 32))(v10, v13, TupleTypeMetadata2);
    v18 = *(TupleTypeMetadata2 + 48);
    v19 = swift_getTupleTypeMetadata2();
    v20 = *(v19 + 48);
    v21 = v26;
    (*(*(v4 - 8) + 32))(v26, v10, v4);
    (*(*(v5 - 8) + 32))(v21 + v20, &v10[v18], v5);
    return (*(*(v19 - 8) + 56))(v21, 0, 1, v19);
  }
}

uint64_t OrderedDictionary.Iterator._base.getter(uint64_t a1)
{

  return a1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>()
{
  v1 = specialized Sequence._copyToContiguousArray()();
  v2 = *v0;

  v3 = v0[1];

  v4 = v0[2];

  return v1;
}

uint64_t type metadata instantiation function for OrderedDictionary.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OrderedDictionary.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for OrderedDictionary.Iterator(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static OrderedSet.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for OrderedSet();
  swift_getWitnessTable();
  v7 = *(a6 + 8);
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, _OWORD *a2, char **a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = result + 40; ; i += 48)
    {
      v9 = *(i - 8);
      v8 = *i;
      v10 = *(i + 8);
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 16);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #2 in UserGraph.replaceCreateSamplerNodes()(v12, a2, a3);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.replaceCreateSamplerNodes()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 64);
  v5 = *(v4 + 16);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v6 < v5)
  {
    v8 = (v4 + 72 + 48 * v6);
    v9 = v6;
    while (1)
    {
      if (v6 >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v10 = *(v8 - 2);
      if (v10 != -7)
      {
        break;
      }

      ++v9;
      v8 += 48;
      if (v5 == v9)
      {
        goto LABEL_15;
      }
    }

    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_19;
    }

    if (*(v8 - 5) == 0xE000000000000008)
    {
      v11 = *(v8 - 3);
      v20 = *(v8 - 1);
      v19 = *v8;
      v18 = *(v8 - 4);

      v21 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1);
        v7 = v21;
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v16 = *(v7 + 2);
        v17 = v13 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v13 = v16;
        v14 = v17;
        v7 = v21;
      }

      *(v7 + 2) = v14;
      v15 = &v7[48 * v13];
      *(v15 + 4) = 0xE000000000000008;
      *(v15 + 5) = v18;
      *(v15 + 6) = v11;
      *(v15 + 7) = v10;
      *(v15 + 8) = v20;
      v15[72] = v19;
    }
  }

LABEL_15:

  v21 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(v7, v3, &v21);

  if (!v2)
  {
    specialized Sequence.forEach(_:)(v21, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.replaceWellKnownConstants()()
{
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AC0cD4NodeVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = *(*(v0 + 64) + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    while (v4 < v2)
    {
      v7 = v5 + 48 * v4;
      v8 = *(v7 + 24);
      if (v8 == -7)
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_14;
        }

        if (v4 >= v2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_15;
        }

        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *v7;
        v12 = *(v7 + 40);
        v13 = *(v7 + 32);
        v14[0] = v11;
        v14[1] = v9;
        v14[2] = v10;
        v14[3] = v8;
        v14[4] = v13;
        v15 = v12;
        outlined copy of NodePersonality(v11);

        closure #1 in UserGraph.replaceWellKnownConstants()(v14, &v16, v0);
        outlined consume of NodePersonality(v11);
        if (v1)
        {

          goto LABEL_12;
        }

        if (v4 >= v2)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Key()
{
  v1 = v0[3];
  v8 = v0[2];
  v9 = v1;
  v10 = *(v0 + 64);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)();
  (*(*v3 + 120))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Key(uint64_t a1)
{
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + 64);
  v5 = *v1;
  v6 = v1[1];
  v3 = *(v1 + 9);
  SGDataTypeStorage.hash(into:)();
  return (*(*v3 + 120))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Key()
{
  v1 = v0[3];
  v8 = v0[2];
  v9 = v1;
  v10 = *(v0 + 64);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)();
  (*(*v3 + 120))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Key(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v10 = a1[4].i8[0];
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a1[4].i64[1];
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v12 = a2[4].i8[0];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[4].i64[1];
  if (specialized static SGDataTypeStorage.== infix(_:_:)(v9, v11))
  {
    return (*(*v4 + 128))(v7) & 1;
  }

  else
  {
    return 0;
  }
}

void *one-time initialization function for wellKnownConstantNodeData()
{
  result = createWellKnownConstantNodeData()();
  wellKnownConstantNodeData._rawValue = result;
  return result;
}

uint64_t createWellKnownConstantNodeData()()
{
  if (one-time initialization token for wellKnownConstantMap != -1)
  {
    swift_once();
  }

  rawValue = wellKnownConstantMap._rawValue;
  v1 = *(wellKnownConstantMap._rawValue + 2);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v31 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v31;
    v3 = rawValue + 128;
    do
    {
      v4 = *(v3 - 12);
      v24[0] = *(v3 - 5);
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      v25 = *(v3 - 16);
      v24[3] = v7;
      v24[1] = v5;
      v24[2] = v6;
      v9 = *(v3 - 1);
      v8 = *v3;
      v10 = *(v3 - 5);
      v11 = *(v3 - 4);
      v12 = *(v3 - 3);
      v13 = *(v3 - 2);
      LOBYTE(v30) = *(v3 - 16);
      v28 = v12;
      v29 = v13;
      v26 = v10;
      v27 = v11;

      outlined init with copy of SGDataTypeStorage(v24, v23);
      v31 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);

      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v2 = v31;
      }

      *(v2 + 16) = v15 + 1;
      v16 = v2 + 96 * v15;
      *(v16 + 32) = v26;
      v17 = v27;
      v18 = v29;
      v19 = v30;
      *(v16 + 64) = v28;
      *(v16 + 80) = v18;
      *(v16 + 48) = v17;
      *(v16 + 96) = v19;
      *(v16 + 104) = v4;
      *(v16 + 112) = v9;
      *(v16 + 120) = v8;
      v3 += 14;
      --v1;
    }

    while (v1);
  }

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMR);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  *&v26 = v20;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v21, 1, &v26);

  return v26;
}

uint64_t closure #2 in UserGraph.replaceCreateSamplerNodes()(uint64_t a1, _OWORD *a2, char **a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v41 = *a1;
  v42 = *(a1 + 24);
  v43 = *(a1 + 32);
  v44 = *(a1 + 40);
  if (*(specialized Sequence.compactMap<A>(_:)(v4, a2) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  *&v48 = v6;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v7, 1, &v48);
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v46 = v4;
  v47 = v5;
  v82[4] = 0;

  v8 = v48;
  if (one-time initialization token for constantCreateSamplerFunctionNameToMatchingArguments != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    rawValue = constantCreateSamplerFunctionNameToMatchingArguments._rawValue;
    v10 = constantCreateSamplerFunctionNameToMatchingArguments._rawValue + 64;
    v11 = 1 << *(constantCreateSamplerFunctionNameToMatchingArguments._rawValue + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(constantCreateSamplerFunctionNameToMatchingArguments._rawValue + 8);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      break;
    }

LABEL_10:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *&v10[8 * v16];
      ++v15;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v16 = v15;
LABEL_13:
    v17 = __clz(__rbit64(v13)) | (v16 << 6);
    v18 = (rawValue[6] + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(rawValue[7] + 8 * v17);

    if (specialized closure #2 in closure #2 in UserGraph.replaceCreateSamplerNodes()(v22, v8))
    {
      break;
    }

    v13 &= v13 - 1;

    v15 = v16;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v20;
  if (one-time initialization token for sampler != -1)
  {
    swift_once();
  }

  v25 = static MetalDataType.sampler;
  *(v24 + 32) = static MetalDataType.sampler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v25;
  swift_retain_n();
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v24 | 0x2000000000000000, &v52);
  swift_setDeallocating();
  v27 = *(inited + 16);
  swift_arrayDestroy();
  specialized ShaderGraphNode.output(labeled:)(&v54, 7632239, 0xE300000000000000, v47);
  if (!v55)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v48 = v41;
    *(&v48 + 1) = v46;
    *v49 = v47;
    *&v49[8] = v42;
    *&v49[16] = v43;
    v49[24] = v44;
    _print_unlocked<A, B>(_:_:)();
    v34 = v50;
    v35 = v51;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v36 = 14;
    *(v36 + 8) = v34;
    *(v36 + 16) = v35;
    swift_willThrow();
    v82[0] = v52;
    outlined destroy of NodePersonality(v82);
    v81 = *(&v52 + 1);
    outlined destroy of [Input](&v81, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v80 = *&v53[0];
    v37 = &v80;
LABEL_28:
    outlined destroy of [Input](v37, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  v68[0] = v54;
  v68[1] = v55;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v79 = *&v53[0];
  specialized ShaderGraphNode.output(labeled:)(&v59, 7632239, 0xE300000000000000, *&v53[0]);
  if (!v60)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v48 = v52;
    *v49 = v53[0];
    *&v49[9] = *(v53 + 9);
    _print_unlocked<A, B>(_:_:)();
    v38 = v50;
    v39 = v51;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v40 = 14;
    *(v40 + 8) = v38;
    *(v40 + 16) = v39;
    swift_willThrow();

    v72 = v69;
    outlined destroy of String(&v72);
    v78 = v52;
    outlined destroy of NodePersonality(&v78);
    v77 = *(&v52 + 1);
    outlined destroy of [Input](&v77, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v37 = &v79;
    goto LABEL_28;
  }

  v64[0] = v59;
  v64[1] = v60;
  v65 = v61;
  v66 = v62;
  v67 = v63;
  UserGraph.moveEdges(from:to:)(v68, v64);

  v74 = v65;
  outlined destroy of String(&v74);

  v73 = v69;
  outlined destroy of String(&v73);
  v28 = *a3;
  outlined copy of NodePersonality(v41);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    *a3 = v28;
  }

  v31 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v31 >= v30 >> 1)
  {
    *a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
  }

  v76 = v52;
  outlined destroy of NodePersonality(&v76);
  v75 = *(&v52 + 1);
  outlined destroy of [Input](&v75, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v79, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v32 = *a3;
  *(v32 + 2) = v31 + 1;
  v33 = &v32[48 * v31];
  *(v33 + 4) = v41;
  *(v33 + 5) = v46;
  *(v33 + 6) = v47;
  *(v33 + 7) = v42;
  *(v33 + 8) = v43;
  v33[72] = v44;
  return result;
}

uint64_t closure #1 in UserGraph.replaceWellKnownConstants()(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if (*result >> 61)
  {
    return result;
  }

  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 32);
  v52 = *(result + 24);
  v8 = *(result + 40);
  v9 = *(v3 + 48);
  v61 = *(v3 + 32);
  v62 = v9;
  v63 = *(v3 + 64);
  v64 = *(v3 + 80);
  v60 = *(v3 + 16);
  result = (*(**(v3 + 88) + 144))();
  if (!result)
  {
    return result;
  }

  v10 = result;
  v51 = v5;
  v89[2] = v62;
  v89[3] = v63;
  v90 = v64;
  v89[0] = v60;
  v89[1] = v61;
  v91 = result;
  v11 = *a2;
  if (!*(*a2 + 16))
  {
    outlined init with copy of SGDataTypeStorage(&v60, &v54);

LABEL_9:
    if (one-time initialization token for wellKnownConstantNodeData != -1)
    {
      swift_once();
    }

    rawValue = wellKnownConstantNodeData._rawValue;
    if (!*(wellKnownConstantNodeData._rawValue + 2) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v89), (v23 & 1) == 0))
    {
      outlined destroy of SGDataTypeStorage(&v60);
    }

    v24 = (rawValue[7] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(*v10 + 144);

    v29 = v27(v28);
    if (!v29)
    {

      v44 = (*(*v10 + 136))(v43);
      v46 = v45;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v47 = 38;
      *(v47 + 8) = v44;
      *(v47 + 16) = v46;
      swift_willThrow();
      outlined destroy of SGDataTypeStorage(&v60);
    }

    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v30;
    v32 = swift_allocObject();
    v33 = v26;
    v34 = v6;
    v35 = v32;
    v32[2] = v33;
    v32[3] = v25;
    v32[4] = v30;
    swift_retain_n();
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v35 | 0x2000000000000000, &v75);

    swift_setDeallocating();
    v36 = *(inited + 16);
    swift_arrayDestroy();
    v37 = *(&v75 + 1);
    outlined copy of NodePersonality(v3);

    v38 = v92;
    specialized Sequence.forEach(_:)(v37, v51, a3);
    outlined consume of NodePersonality(v3);

    v39 = v76;
    outlined copy of NodePersonality(v3);

    specialized Sequence.forEach(_:)(v39, v34, a3);
    v92 = v38;
    outlined consume of NodePersonality(v3);

    specialized UserGraph.removeEdges(connectedTo:)(v52);
    v40 = *(a3 + 64);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 64) = v40;
    if (result)
    {
      if ((v52 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      v40 = result;
      *(a3 + 64) = result;
      if ((v52 & 0x8000000000000000) == 0)
      {
LABEL_16:
        if (v52 < *(v40 + 16))
        {
          ShaderGraphNode.update(id:)(-7);
          v88 = v75;
          outlined init with copy of NodePersonality(&v88, &v54);

          v41 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = *a2;
          *a2 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v75, v89, isUniquelyReferenced_nonNull_native);
          outlined destroy of SGDataTypeStorage(&v60);

          *a2 = v54;

          outlined destroy of NodePersonality(&v88);
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  outlined init with copy of SGDataTypeStorage(&v60, &v54);

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v89);
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = v12;

  v15 = *(v11 + 56) + 48 * v14;
  v16 = v6;
  v18 = *v15;
  v17 = *(v15 + 8);
  v19 = *(v15 + 16);
  v49 = *(v15 + 32);
  v50 = *(v15 + 24);
  v48 = *(v15 + 40);
  specialized ShaderGraphNode.output(labeled:)(&v65, 7632239, 0xE300000000000000, v16);
  if (!v66)
  {
    outlined copy of NodePersonality(v18);

    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v54 = v3;
    v55 = v51;
    v56 = v16;
    v57 = v52;
    v58 = v7;
    v59 = v8;
    _print_unlocked<A, B>(_:_:)();

    outlined destroy of SGDataTypeStorage(&v60);

    outlined consume of NodePersonality(v18);
  }

  v81[0] = v65;
  v81[1] = v66;
  v82 = v67;
  v83 = v68;
  v84 = v69;
  specialized ShaderGraphNode.output(labeled:)(&v70, 7632239, 0xE300000000000000, v19);
  if (v71)
  {
    v77[0] = v70;
    v77[1] = v71;
    v78 = v72;
    v79 = v73;
    v80 = v74;
    outlined copy of NodePersonality(v18);

    UserGraph.moveEdges(from:to:)(v81, v77);
    outlined destroy of SGDataTypeStorage(&v60);

    outlined consume of NodePersonality(v18);

    v87 = v78;
    outlined destroy of String(&v87);

    v86 = v82;
    v20 = &v86;
  }

  else
  {
    outlined copy of NodePersonality(v18);

    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v54 = v18;
    v55 = v17;
    v56 = v19;
    v57 = v50;
    v58 = v49;
    v59 = v48;
    _print_unlocked<A, B>(_:_:)();

    outlined destroy of SGDataTypeStorage(&v60);

    outlined consume of NodePersonality(v18);

    v85 = v67;
    v20 = &v85;
  }

  return outlined destroy of String(v20);
}

uint64_t specialized closure #2 in closure #2 in UserGraph.replaceCreateSamplerNodes()(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    if (!v7)
    {
      do
      {
        v23 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return result;
        }

        if (v23 >= v8)
        {

          return 1;
        }

        v7 = *(v4 + 8 * v23);
        ++v10;
      }

      while (!v7);
      v10 = v23;
      if (*(a1 + 16))
      {
        goto LABEL_7;
      }

LABEL_18:

      return 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }

LABEL_7:
    v11 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
    v12 = (*(a2 + 48) + v11);
    v13 = (*(a2 + 56) + v11);
    v15 = *v13;
    v14 = v13[1];
    v17 = *v12;
    v16 = v12[1];

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v7 &= v7 - 1;
    v20 = (*(a1 + 56) + 16 * v18);
    if (*v20 == v15 && v20[1] == v14)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  return 0;
}

uint64_t sub_265E87AB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of (Key, String)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_SStMd, &_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_SStMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Key(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Key and conformance Key()
{
  result = lazy protocol witness table cache variable for type Key and conformance Key;
  if (!lazy protocol witness table cache variable for type Key and conformance Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Key and conformance Key);
  }

  return result;
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, logger);
}

uint64_t static FileLogger.url(for:extension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v30 = a5;
  v31 = a3;
  v28 = a1;
  v29 = a2;
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  v18 = [v17 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = *(v6 + 8);
  v19(v9, v5);
  URL.appendingPathComponent(_:isDirectory:)();
  v19(v12, v5);
  v20 = [v16 defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v33[0] = 0;
  LOBYTE(v17) = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v33];

  if (v17)
  {
    v24 = v33[0];
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    v19(v12, v5);
  }

  else
  {
    v26 = v33[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  result = (v19)(v15, v5);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::String __swiftcall logArray(_:tabs:)(Swift::OpaquePointer _, Swift::Int tabs)
{
  v4._countAndFlagsBits = 9;
  v4._object = 0xE100000000000000;
  v5 = String.init(repeating:count:)(v4, tabs);
  v6 = *(_._rawValue + 2);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = (_._rawValue + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      MEMORY[0x266771550](v8, v9);

      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      *(v18 + 16 * v11 + 32) = v5;
      v7 += 2;
      --v6;
    }

    while (v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
    object = v13;
  }

  else
  {

    MEMORY[0x266771550](0x2D656E6F6E2DLL, 0xE600000000000000);

    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  v15 = countAndFlagsBits;
  v16 = object;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

void specialized static FileLogger.saveDebugFile(_:name:extension:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v64 = a6;
  v65 = a3;
  v66 = a5;
  v67 = a4;
  v62 = a1;
  v63 = a2;
  v68[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = [v23 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();
  v60 = v7;
  v25 = *(v7 + 8);
  v25(v16, v6);
  URL.appendingPathComponent(_:isDirectory:)();
  v25(v19, v6);
  v26 = [v22 defaultManager];
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v68[0] = 0;
  LODWORD(v22) = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v68];

  if (v22)
  {
    v30 = v68[0];
    URL.appendingPathComponent(_:)();
    v31 = v64;
    URL.appendingPathExtension(_:)();
    v25(v19, v6);
    Data.write(to:options:)();
    v44 = v67;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, logger);
    v46 = v61;
    (*(v60 + 16))(v61, v13, v6);

    v47 = v44;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      LODWORD(v62) = v49;
      v51 = v46;
      v52 = v50;
      v63 = swift_slowAlloc();
      v68[0] = v63;
      *v52 = 136315650;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v47, v68);
      *(v52 + 12) = 2080;
      *(v52 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v31, v68);
      *(v52 + 22) = 2080;
      v53 = URL.path.getter();
      v55 = v54;
      v25(v51, v6);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v68);

      *(v52 + 24) = v56;
      _os_log_impl(&dword_265D7D000, v48, v62, "%s.%s written to: %s", v52, 0x20u);
      v57 = v63;
      swift_arrayDestroy();
      MEMORY[0x266773120](v57, -1, -1);
      MEMORY[0x266773120](v52, -1, -1);
    }

    else
    {

      v25(v46, v6);
    }

    v25(v13, v6);
    v25(v21, v6);
  }

  else
  {
    v32 = v68[0];
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v25(v21, v6);
    v68[0] = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, logger);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v68[0] = v42;
      *v41 = 136315138;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v68);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_265D7D000, v39, v40, "Unable to write debug file to disk. %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266773120](v42, -1, -1);
      MEMORY[0x266773120](v41, -1, -1);
    }

    else
    {
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}