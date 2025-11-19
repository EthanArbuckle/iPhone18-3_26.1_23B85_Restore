uint64_t SGEdge.debugDescription.getter()
{
  v1 = v0;
  v2 = 0x676E697373694DLL;
  v3 = *(v0 + OBJC_IVAR___SGEdge_from);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR___SGNode_name);
    v5 = *(Strong + OBJC_IVAR___SGNode_name + 8);
    v7 = Strong;
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x676E697373694DLL;
  }

  MEMORY[0x266771550](v6, v5);

  MEMORY[0x266771550](58, 0xE100000000000000);
  v8 = *(v3 + OBJC_IVAR___SGOutput_name);
  v9 = *(v3 + OBJC_IVAR___SGOutput_name + 8);

  MEMORY[0x266771550](v8, v9);

  MEMORY[0x266771550](0x209286E220, 0xA500000000000000);
  v10 = *(v1 + OBJC_IVAR___SGEdge_to);
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v2 = *(v11 + OBJC_IVAR___SGNode_name);
    v12 = *(v11 + OBJC_IVAR___SGNode_name + 8);
    v13 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x266771550](v2, v12);

  MEMORY[0x266771550](58, 0xE100000000000000);
  v14 = *(v10 + OBJC_IVAR___SGInput_name);
  v15 = *(v10 + OBJC_IVAR___SGInput_name + 8);

  MEMORY[0x266771550](v14, v15);

  return 0;
}

id SGEdge.__allocating_init(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___SGEdge_from] = a1;
  *&v5[OBJC_IVAR___SGEdge_to] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SGEdge.init(from:to:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SGEdge_from] = a1;
  *&v2[OBJC_IVAR___SGEdge_to] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

ShaderGraph::SGEdge::CodingKeys_optional __swiftcall SGEdge.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_to;
  }

  else
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

ShaderGraph::SGEdge::CodingKeys_optional __swiftcall SGEdge.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_to;
  }

  else
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SGEdge.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGEdge.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 28532;
  }

  else
  {
    v4 = 1836020326;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 28532;
  }

  else
  {
    v6 = 1836020326;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGEdge.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGEdge.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGEdge.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGEdge.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SGEdge.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1836020326;
  if (*v1)
  {
    v2 = 28532;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGEdge.CodingKeys()
{
  if (*v0)
  {
    result = 28532;
  }

  else
  {
    result = 1836020326;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGEdge.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGEdge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGEdge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id SGEdge.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SGError();
    v12 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SGOutput();
    v17 = 0;
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGOutput and conformance SGOutput, v11, type metadata accessor for SGOutput);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v1[OBJC_IVAR___SGEdge_from] = v18;
    type metadata accessor for SGInput();
    v17 = 1;
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGInput and conformance SGInput, v14, type metadata accessor for SGInput);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *&v1[OBJC_IVAR___SGEdge_to] = v18;
    v16.receiver = v1;
    v16.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

void SGEdge.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *(v3 + OBJC_IVAR___SGEdge_from);
  HIBYTE(v14) = 0;
  type metadata accessor for SGOutput();
  lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGOutput and conformance SGOutput, v11, type metadata accessor for SGOutput);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    type metadata accessor for SGError();
    v13 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v15 = *(v3 + OBJC_IVAR___SGEdge_to);
    HIBYTE(v14) = 1;
    type metadata accessor for SGInput();
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGInput and conformance SGInput, v12, type metadata accessor for SGInput);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
  }
}

id SGEdge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static IOAttachment.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IOAttachment(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t IOAttachment.description.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x6863617474616E75;
  }

  MEMORY[0x266771550]();
  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x6465686361747461;
}

uint64_t SGInput.type.getter()
{
  v1 = OBJC_IVAR___SGInput_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGInput.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGInput_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SGInput.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGInput_name);
  v2 = *(v0 + OBJC_IVAR___SGInput_name + 8);

  return v1;
}

uint64_t (*SGInput.edge.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGInput_edge;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.edge.modify;
}

uint64_t (*SGInput.node.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGInput_node;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.node.modify;
}

uint64_t SGInput.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(25);
  MEMORY[0x266771550](0x287475706E494753, 0xE900000000000022);
  MEMORY[0x266771550](*(v1 + OBJC_IVAR___SGInput_name), *(v1 + OBJC_IVAR___SGInput_name + 8));
  MEMORY[0x266771550](2108450, 0xE300000000000000);
  v2 = OBJC_IVAR___SGInput_type;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v4);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  v5 = OBJC_IVAR___SGInput_attachment;
  swift_beginAccess();
  v10 = *(v1 + v5);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](8236, 0xE200000000000000);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v7 = 0xE800000000000000;
    v8 = 0x6567646520736168;
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x65676465206F6ELL;
  }

  MEMORY[0x266771550](v8, v7);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0;
}

id SGInput.__allocating_init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR___SGInput_name];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR___SGInput_type] = a3;
  v13 = &v11[OBJC_IVAR___SGInput_attachment];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SGInput.init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR___SGInput_name];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v5[OBJC_IVAR___SGInput_type] = a3;
  v13 = &v5[OBJC_IVAR___SGInput_attachment];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

ShaderGraph::SGInput::CodingKeys_optional __swiftcall SGInput.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGInput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t SGInput.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x656D686361747461;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGInput.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGInput.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void _s11ShaderGraph8SGOutputC10CodingKeysOSYAASY8rawValue03RawG0QzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x656D686361747461;
    v4 = 0xEA0000000000746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t _s11ShaderGraph8SGOutputC10CodingKeysOs0D3KeyAAsAFP11stringValueSSvgTW_0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x656D686361747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGInput.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGInput.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGInput.init(from:)(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v31 = OBJC_IVAR___SGInput_edge;
  swift_unknownObjectWeakInit();
  v30 = OBJC_IVAR___SGInput_node;
  swift_unknownObjectWeakInit();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v13 = 0;
  }

  else
  {
    LOBYTE(v35) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    v19 = &v4[OBJC_IVAR___SGInput_name];
    *v19 = v12;
    v19[1] = v17;
    v20 = v12;

    v21._countAndFlagsBits = v20;
    v21._object = v18;
    v22._countAndFlagsBits = 1701667182;
    v22._object = 0xE400000000000000;
    validate(_:named:)(v21, v22);
    v3 = v23;
    v24 = v7;
    if (!v23)
    {

      type metadata accessor for SGDataType(0);
      v34 = 0;
      lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v4[OBJC_IVAR___SGInput_type] = v35;
      LOBYTE(v35) = 2;
      v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v27 = v26;
      v28 = v25;
      (*(v24 + 8))(v10, v6);
      v29 = &v4[OBJC_IVAR___SGInput_attachment];
      if (v27)
      {
        *v29 = v28;
        v29[1] = v27;
      }

      else
      {
        *v29 = 0;
        v29[1] = 0;
      }

      v33.receiver = v4;
      v33.super_class = ObjectType;
      v4 = objc_msgSendSuper2(&v33, sel_init);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v4;
    }

    (*(v7 + 8))(v10, v6);

    v13 = 1;
  }

  type metadata accessor for SGError();
  v14 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v13)
  {
    v15 = *&v4[OBJC_IVAR___SGInput_name + 8];
  }

  MEMORY[0x2667731C0](&v4[v31]);
  MEMORY[0x2667731C0](&v4[v30]);
  swift_deallocPartialClassInstance();
  return v4;
}

void SGInput.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR___SGInput_name);
  v12 = *(v3 + OBJC_IVAR___SGInput_name + 8);
  v19 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    type metadata accessor for SGError();
    v14 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v13 = OBJC_IVAR___SGInput_type;
    swift_beginAccess();
    v17[1] = *(v3 + v13);
    v18 = 0;
    type metadata accessor for SGDataType(0);
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + OBJC_IVAR___SGInput_attachment);
    swift_beginAccess();
    if (v15[1])
    {
      v16 = *v15;
      v18 = 2;

      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t key path getter for WeakBox.value : <A>WeakBox<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for WeakBox();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakBox.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakBox.value.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return WeakBox.value.modify;
}

uint64_t WeakBox.value.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakBox.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static WeakBox<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v6)
    {
      return 1;
    }

    goto LABEL_7;
  }

  if (!v6)
  {
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  v7 = *(a4 + 8);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (v8 & 1) != 0;
}

uint64_t WeakBox<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakLoadStrong();
  v3 = *(a2 + 16);
  type metadata accessor for Optional();
  Optional<A>.hash(into:)();
  return swift_unknownObjectRelease();
}

Swift::Int WeakBox<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  WeakBox<>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> WeakBox<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  WeakBox<>.hash(into:)(v6, a2);
  return Hasher._finalize()();
}

uint64_t SGOutput.type.getter()
{
  v1 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGOutput.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGOutput_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id @objc SGInput.name.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x266771450](v4, v5);

  return v6;
}

uint64_t SGOutput.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGOutput_name);
  v2 = *(v0 + OBJC_IVAR___SGOutput_name + 8);

  return v1;
}

uint64_t SGInput.attachment.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t SGInput.attachment.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t SGOutput._edges.getter()
{
  v1 = (v0 + OBJC_IVAR___SGOutput__edges);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SGOutput._edges.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SGOutput__edges);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SGOutput.edges.getter()
{
  v1 = (v0 + OBJC_IVAR___SGOutput__edges);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  if (!v5)
  {
    return v4;
  }

  v6 = v3 + 32;

  v8 = 0;
  while (v8 < *(v3 + 16))
  {
    outlined init with copy of [Input](v6, v11, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = outlined destroy of [Input](v11, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (Strong)
    {
      MEMORY[0x266771770](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v12;
    }

    ++v8;
    v6 += 8;
    if (v5 == v8)
    {

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t SGInput.edge.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void SGInput.edge.setter(void *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*SGOutput.node.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGOutput_node;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.node.modify;
}

void SGInput.edge.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id @objc static SGInput.create(name:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5(v7, v9, a4);

  return v10;
}

id @objc SGEdge.debugDescription.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x266771450](v5, v7);

  return v8;
}

uint64_t SGOutput.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(26);
  MEMORY[0x266771550](0x74757074754F4753, 0xEA00000000002228);
  MEMORY[0x266771550](*(v1 + OBJC_IVAR___SGOutput_name), *(v1 + OBJC_IVAR___SGOutput_name + 8));
  MEMORY[0x266771550](2108450, 0xE300000000000000);
  v2 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v4);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  v5 = OBJC_IVAR___SGOutput_attachment;
  swift_beginAccess();
  v10 = *(v1 + v5);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](8236, 0xE200000000000000);
  v6 = v1 + OBJC_IVAR___SGOutput__edges;
  swift_beginAccess();
  if (*(*(v6 + 8) + 16))
  {
    v7 = 0x6567646520736168;
  }

  else
  {
    v7 = 0x7365676465206F6ELL;
  }

  if (*(*(v6 + 8) + 16))
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  MEMORY[0x266771550](v7, v8);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0;
}

id SGOutput.__allocating_init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___SGOutput_attachment];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR___SGOutput__edges];
  v14 = MEMORY[0x277D84F90];
  *v13 = 0;
  *(v13 + 1) = v14;
  swift_unknownObjectWeakInit();
  v15 = &v11[OBJC_IVAR___SGOutput_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v11[OBJC_IVAR___SGOutput_type] = a3;
  swift_beginAccess();
  v16 = *(v12 + 1);
  *v12 = a4;
  *(v12 + 1) = a5;

  v18.receiver = v11;
  v18.super_class = v5;
  return objc_msgSendSuper2(&v18, sel_init);
}

id SGOutput.init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___SGOutput_attachment];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR___SGOutput__edges];
  v14 = MEMORY[0x277D84F90];
  *v13 = 0;
  *(v13 + 1) = v14;
  swift_unknownObjectWeakInit();
  v15 = &v5[OBJC_IVAR___SGOutput_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v5[OBJC_IVAR___SGOutput_type] = a3;
  swift_beginAccess();
  v16 = *(v12 + 1);
  *v12 = a4;
  *(v12 + 1) = a5;

  v18.receiver = v5;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

ShaderGraph::SGOutput::CodingKeys_optional __swiftcall SGOutput.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGOutput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGInput.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x656D686361747461;
    v4 = 0xEA0000000000746ELL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x656D686361747461;
    v3 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGInput.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGInput.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGInput.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGOutput.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGOutput.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGOutput.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGOutput.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGOutput.init(from:)(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = &v4[OBJC_IVAR___SGOutput_attachment];
  *v11 = 0;
  *(v11 + 1) = 0;
  v42 = v11;
  v12 = &v4[OBJC_IVAR___SGOutput__edges];
  v13 = MEMORY[0x277D84F90];
  *v12 = 0;
  *(v12 + 1) = v13;
  v40 = OBJC_IVAR___SGOutput_node;
  swift_unknownObjectWeakInit();
  v15 = a1[3];
  v14 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v17 = 0;
  }

  else
  {
    LOBYTE(v45) = 1;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v24;
    v26 = &v4[OBJC_IVAR___SGOutput_name];
    *v26 = v16;
    v26[1] = v24;
    v27 = v16;

    v28._countAndFlagsBits = v27;
    v28._object = v25;
    v29._countAndFlagsBits = 1701667182;
    v29._object = 0xE400000000000000;
    validate(_:named:)(v28, v29);
    v3 = v30;
    if (!v30)
    {

      type metadata accessor for SGDataType(0);
      v46 = 0;
      lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v4[OBJC_IVAR___SGOutput_type] = v45;
      LOBYTE(v45) = 2;
      v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v33 = v32;
      v34 = v31;
      (*(v7 + 8))(v10, v6);
      if (v33)
      {
        v35 = v42;
        swift_beginAccess();
        v36 = v35[1];
        *v35 = v34;
        v35[1] = v33;
      }

      else
      {
        v37 = v42;
        swift_beginAccess();
        v38 = v37[1];
        *v37 = 0;
        v37[1] = 0;
      }

      v44.receiver = v4;
      v44.super_class = ObjectType;
      v4 = objc_msgSendSuper2(&v44, sel_init);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      return v4;
    }

    (*(v7 + 8))(v10, v6);

    v17 = 1;
  }

  type metadata accessor for SGError();
  v18 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  if (v17)
  {
    v19 = *&v4[OBJC_IVAR___SGOutput_name + 8];
  }

  v20 = v42[1];

  v22 = *v12;
  v21 = *(v12 + 1);

  MEMORY[0x2667731C0](&v4[v40]);
  swift_deallocPartialClassInstance();
  return v4;
}

void SGOutput.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR___SGOutput_name);
  v12 = *(v3 + OBJC_IVAR___SGOutput_name + 8);
  v19 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    type metadata accessor for SGError();
    v14 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v13 = OBJC_IVAR___SGOutput_type;
    swift_beginAccess();
    v17[1] = *(v3 + v13);
    v18 = 0;
    type metadata accessor for SGDataType(0);
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + OBJC_IVAR___SGOutput_attachment);
    swift_beginAccess();
    if (v15[1])
    {
      v16 = *v15;
      v18 = 2;

      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t SGInput.isEqual(_:)(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  swift_getObjectType();
  outlined init with copy of [Input](a1, v24, &_sypSgMd, &_sypSgMR);
  if (!v25)
  {
    outlined destroy of [Input](v24, &_sypSgMd, &_sypSgMR);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  if (v23 != v4)
  {
    v9 = &v4[*a2];
    v10 = &v23[*a2];
    v11 = *v9 == *v10 && *(v9 + 1) == *(v10 + 1);
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v12 = *a3, swift_beginAccess(), v13 = *&v4[v12], v14 = *a3, swift_beginAccess(), v13 == *&v23[v14]))
    {
      v15 = &v4[*a4];
      swift_beginAccess();
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = &v23[*a4];
      swift_beginAccess();
      v19 = *(v18 + 1);
      if (v17)
      {
        if (v19)
        {
          if (v16 == *v18 && v17 == v19)
          {
            goto LABEL_14;
          }

          v22 = *(v18 + 1);
          LOBYTE(v19) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return v19 & 1;
      }

      v21 = *(v18 + 1);

      if (!v19)
      {
        LOBYTE(v19) = 1;
        return v19 & 1;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_14:

  LOBYTE(v19) = 1;
  return v19 & 1;
}

uint64_t @objc SGInput.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of [Input](v10, &_sypSgMd, &_sypSgMR);
  return v8 & 1;
}

id SGEdge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SGEdge@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t specialized SGInput.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGInput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SGOutput and conformance SGOutput(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t specialized SGOutput.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGOutput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

uint64_t sub_265DCBC0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t getEnumTagSinglePayload for IOAttachment(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IOAttachment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for IOAttachment(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for IOAttachment(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata instantiation function for WeakBox()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for WeakBox(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeakBox(uint64_t result, int a2, int a3)
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

uint64_t OrderedDictionary.Values._base.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedDictionary.Values._base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  v8 = v3[1];

  v9 = v3[2];

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t OrderedDictionary.Values.elements.getter()
{
  type metadata accessor for ContiguousArray();

  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t OrderedDictionary.Values.withUnsafeBufferPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = a9;
  v14[6] = a1;
  v14[7] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error), v14, a5, a7, a8, v12, MEMORY[0x277D84950], &v15);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)(a1, a2, a3);
}

{
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(v16 + 16), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

void *OrderedDictionary.Values.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a4;
  v6 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(v4 + 16);
  v8 = *(v7 + 16);
  v11[0] = v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v9 = v11[0];
  v11[1] = v8;
  a1(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v11, v9, v8);
}

__n128 protocol witness for Sequence.makeIterator() in conformance OrderedDictionary<A, B>.Values@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedDictionary<A, B>.Values(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>.Values(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = specialized Collection._copyToContiguousArray()(v1, a1, WitnessTable);
  v5 = *v1;

  v6 = v1[1];

  v7 = v1[2];

  return v4;
}

uint64_t protocol witness for Sequence.withContiguousStorageIfAvailable<A>(_:) in conformance OrderedDictionary<A, B>.Values@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v14[7] = a2;
  v9 = *(v5 + 16);
  v10 = a4[3];
  v14[2] = a4[2];
  v14[3] = v10;
  v11 = a4[4];
  v14[4] = a3;
  v14[5] = v11;
  v14[6] = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  result = _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)partial apply, v14, v9, v10, a3, v12, MEMORY[0x277D84950], &v15);
  if (!v6)
  {
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  return result;
}

uint64_t OrderedDictionary.Values.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a8;
  v15[6] = a1;
  v15[7] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  result = _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)partial apply, v15, a3, a5, a6, v13, MEMORY[0x277D84950], &v16);
  if (!v8)
  {
    return (*(*(a6 - 8) + 56))(a7, 0, 1, a6);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Values.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Values.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.Values.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedDictionary.Values.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedDictionary.Values.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedDictionary.Values.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall OrderedDictionary.Values.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance OrderedDictionary<A, B>.Values@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance OrderedDictionary<A, B>.Values(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *_s11ShaderGraph17OrderedDictionaryV6ValuesVyxq__GSkAASk5index_8offsetBy5IndexQzAJ_SitFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV6ValuesVyxq__GSkAASk5index_8offsetBy07limitedH05IndexQzSgAK_SiAKtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized ContiguousArray.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV6ValuesVyxq__GSkAASk8distance4from2toSi5IndexQz_AKtFTW_0(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance OrderedDictionary<A, B>.Values@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 24);
  result = ContiguousArray.count.getter();
  *a2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 24);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  v9 = *a2;
  v10 = *(v3 + 16);
  ContiguousArray.subscript.getter();
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

void protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance OrderedDictionary<A, B>.Values@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t protocol witness for Collection.indices.getter in conformance OrderedDictionary<A, B>.Values()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

void *protocol witness for Collection.index(after:) in conformance OrderedDictionary<A, B>.Values@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance OrderedDictionary<A, B>.Values(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t key path setter for OrderedDictionary.Values.subscript(_:) : <A, B>OrderedDictionary<A, B>.ValuesAB(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *a3;
  type metadata accessor for ContiguousArray();
  v7 = ContiguousArray.subscript.modify();
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return v7(&v10, 0);
}

uint64_t (*OrderedDictionary.Values.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  *(v6 + 32) = ContiguousArray.subscript.modify();
  return OrderedDictionary.Values.subscript.modify;
}

void OrderedDictionary.Values.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v3 + 16);
  if (*(v7 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = *(v6 - 8);
  v9 = *(v8 + 40);
  v10 = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2;

  v9(v10, a1, v6);
}

Swift::Void __swiftcall OrderedDictionary.Values.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v3 = *(v2 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  MutableCollection.swapAt(_:_:)();
}

uint64_t OrderedDictionary.Values.partition(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = MutableCollection<>.partition(by:)();
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *OrderedDictionary.Values.withContiguousMutableStorageIfAvailable<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a3;
  v8 = *(a2 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v4 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v14[0] = v11;
  v14[1] = v10;
  a1(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (v5)
  {
    return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v14, v11, v10);
  }

  v13 = v15;
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v14, v11, v10);
  return (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance OrderedDictionary<A, B>.Values(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a3 + 24);
  v7 = type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v8 = *(v3 + 16);
  ContiguousArray._checkSubscript_mutating(_:)(v5);
  (*(*(v6 - 8) + 40))(v8 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, v6);
  return destructiveProjectEnumData for NodePersonality.ShaderType(v7);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance OrderedDictionary<A, B>.Values(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *a2;
  v9 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  *(v7 + 32) = ContiguousArray.subscript.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance OrderedDictionary<A, B>.Values;
}

void OrderedDictionary.Values.subscript.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance OrderedDictionary<A, B>.Values(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  specialized MutableCollection<>.subscript.setter(a1, &v9, a3, a4);
  v5 = a1[2];

  v6 = a1[3];

  v7 = a1[4];
}

void (*protocol witness for MutableCollection.subscript.modify in conformance OrderedDictionary<A, B>.Values(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element;
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(a4 + 8);
  v13 = type metadata accessor for Slice();
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for Range();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v11[8] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[9] = v21;
  (*(v20 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v17);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v14 = (*a1)[7];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v12 = *(v4 + 8);
    v12(v3, v8);
    (*(v6 + 8))(v5, v14);
    v12(v7, v8);
  }

  else
  {
    v13 = v2[3];
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v14);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance OrderedDictionary<A, B>.Values@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = MutableCollection<>.partition(by:)();
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t protocol witness for MutableCollection.swapAt(_:_:) in conformance OrderedDictionary<A, B>.Values(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  v3 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return MutableCollection.swapAt(_:_:)();
}

void *protocol witness for MutableCollection.withContiguousMutableStorageIfAvailable<A>(_:) in conformance OrderedDictionary<A, B>.Values@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a2;
  v8 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v4 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v14[0] = v11;
  v14[1] = v10;
  a1(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (v5)
  {
    return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v14, v11, v10);
  }

  v13 = v15;
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v14, v11, v10);
  return (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
}

uint64_t static OrderedDictionary.Values<>.== infix(_:_:)()
{
  type metadata accessor for OrderedDictionary.Values();
  swift_getWitnessTable();
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <> OrderedDictionary<A, B>.Values(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a3[2];
  v12 = a3[3];
  v14 = a3[4];
  return static OrderedDictionary.Values<>.== infix(_:_:)() & 1;
}

uint64_t OrderedDictionary.Values<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = v11;
  v19[2] = v12;
  v19[3] = v13;
  type metadata accessor for OrderedDictionary.Values();
  swift_getWitnessTable();
  v14 = Collection.count.getter();
  MEMORY[0x266772770](v14);
  result = ContiguousArray.count.getter();
  if (result)
  {
    v16 = 0;
    v17 = (v7 + 8);
    while (1)
    {
      result = ContiguousArray.subscript.getter();
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      dispatch thunk of Hashable.hash(into:)();
      (*v17)(v10, a6);
      result = ContiguousArray.count.getter();
      ++v16;
      if (v18 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int OrderedDictionary.Values<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  OrderedDictionary.Values<>.hash(into:)(v11, a1, a2, a3, a4, a5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance <> OrderedDictionary<A, B>.Values(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = a1[4];
  return OrderedDictionary.Values<>.hashValue.getter(*v2, v2[1], v2[2], a1[2], a1[3]);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance <> OrderedDictionary<A, B>.Values(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = a2[4];
  return OrderedDictionary.Values<>.hash(into:)(a1, *v3, v3[1], v3[2], a2[2], a2[3]);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> OrderedDictionary<A, B>.Values(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  v6 = a2[4];
  OrderedDictionary.Values<>.hash(into:)(v8, *v3, v3[1], v3[2], a2[2], a2[3]);
  return Hasher._finalize()();
}

Swift::Void __swiftcall ContiguousArray._checkSubscript_mutating(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v1 + 16) <= a1)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t specialized ContiguousArray.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 > 0)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
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

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265DCE0E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a1 + 16);
  v5 = *a2;
  return ContiguousArray.subscript.getter();
}

__n128 sub_265DCE110(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary.Values()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t requireArgument<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a3, v10);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(v14, 1, a4) != 1)
  {
    return (*(v15 + 32))(a5, v14, a4);
  }

  (*(v11 + 8))(v14, v10);
  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = 1;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> validate(_:named:)(Swift::String _, Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v4 = HIBYTE(_._object) & 0xF;
  if ((_._object & 0x2000000000000000) == 0)
  {
    v4 = _._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if (String.count.getter() <= 1023)
    {
      return;
    }

    v5 = 17;
  }

  else
  {
    v5 = 16;
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v6 = countAndFlagsBits;
  *(v6 + 8) = object;
  *(v6 + 16) = v5;
  swift_willThrow();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS11ShaderGraph11GeomPropDefV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [String : GeomPropDef].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t SGWarning.message.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGWarning_message);
  v2 = *(v0 + OBJC_IVAR___SGWarning_message + 8);

  return v1;
}

id SGWarning.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SGWarning_message];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SGWarning.init(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___SGWarning_message];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SGWarning.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *static ShaderGraphService.builtInGeometryPropertyNames.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = *(static BuiltInDefinitionStore.shared + 24);
  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v0 + 16), 0);
  v3 = specialized Sequence._copySequenceContents(initializing:)(&v5, v2 + 4, v1, v0);

  outlined consume of [String : GeomPropDef].Iterator._Variant();
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

id @objc static ShaderGraphService.createMaterialSource(from:config:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void *, void *))
{
  v9 = a3;
  v10 = a4;
  v11 = a6(a3, a4);

  return v11;
}

uint64_t specialized Graph.edges(from:)(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = a1[1];
  v5 = *(a1 + 1);
  v51[0] = *a1;
  v51[1] = v5;
  v52 = a1[4];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v49 = *(a2 + 16);
  if (v4 >= v49)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v48 = a2 + 32;
  v6 = (a2 + 32 + 88 * v4);
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v8 + 32;
  v11 = *(v8 + 16);
  if (v7)
  {
    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(result, v10, v11, v7 + 16, v7 + 32);
    if ((v12 & 1) == 0)
    {
      v13 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_13:
    v14 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v13 = 0;
  v14 = MEMORY[0x277D84FA0];
  while (*(v10 + 8 * v13) != result)
  {
    if (v11 == ++v13)
    {
      goto LABEL_14;
    }
  }

LABEL_6:
  if (v13 < *(v9 + 16))
  {
    v14 = *(v9 + 8 * v13 + 32);

LABEL_14:
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 56);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      do
      {
        if (!v17)
        {
          while (1)
          {
            v22 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v22 >= v18)
            {

              MEMORY[0x28223BE20](v39);
              v41[2] = v51;
              v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_AH4EdgeVyAN_Gs5NeverOTg5(partial apply for specialized closure #2 in Graph.edges(from:), v41, v47);

              return v40;
            }

            v17 = *(v14 + 56 + 8 * v22);
            ++v19;
            if (v17)
            {
              v19 = v22;
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_25:
        v23 = (*(v14 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v17)))));
        if (*v23 >= v49)
        {
          goto LABEL_42;
        }

        v17 &= v17 - 1;
        v24 = (v48 + 88 * *v23);
        v25 = v24[4];
      }

      while (!v25);
      v26 = v23[1];
      v27 = v24[1];
      v50 = *v24;
      v29 = v24[2];
      v28 = v24[3];
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      v30 = v29 >> 62;
      if (!(v29 >> 62))
      {
        v20 = v24[2];
        v21 = 32;
        goto LABEL_18;
      }

      if (v30 != 1)
      {
LABEL_19:

        result = outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v50, v27, v29, v28, v25);
      }

      else
      {
        v20 = v29 & 0x3FFFFFFFFFFFFFFFLL;
        v21 = 40;
LABEL_18:
        if (v26 >= *(*(v20 + v21) + 16))
        {
          goto LABEL_19;
        }

        if (v30)
        {
          result = v29 & 0x3FFFFFFFFFFFFFFFLL;
          v31 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          if (v26 >= *(v31 + 16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v31 = *(v29 + 32);
          if (v26 >= *(v31 + 16))
          {
            goto LABEL_48;
          }
        }

        v32 = v31 + 32 * v26;
        v33 = *(v32 + 40);
        v44 = *(v32 + 32);
        v45 = v33;
        v43 = *(v32 + 48);
        v42 = *(v32 + 56);

        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v50, v27, v29, v28, v25);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
          v47 = result;
        }

        v35 = v47[2];
        v34 = v47[3];
        if (v35 >= v34 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v47);
          v47 = result;
        }

        v36 = v47;
        v47[2] = v35 + 1;
        v37 = &v36[6 * v35];
        v37[4] = v50;
        v37[5] = v26;
        v38 = v45;
        v37[6] = v44;
        v37[7] = v38;
        v37[8] = v43;
        *(v37 + 72) = v42;
      }
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

id @objc NSObject.inputNamed(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph9InputSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph4EdgeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGEdgeC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        *(a2 + 8 * v13) = *(a6 + 32 + 8 * v13);
        if (v14 == v13)
        {
          swift_unknownObjectRetain();
          goto LABEL_12;
        }

        result = swift_unknownObjectRetain();
        if (v11 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 160 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v29[0] = *v18;
      v29[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v29[4] = v18[4];
      v29[5] = v20;
      v29[2] = v22;
      v29[3] = v21;
      v23 = v18[9];
      v25 = v18[6];
      v24 = v18[7];
      v29[8] = v18[8];
      v29[9] = v23;
      v29[6] = v25;
      v29[7] = v24;
      memmove(v11, v18, 0xA0uLL);
      if (v14 == v10)
      {
        outlined init with copy of NodeDef.Availability(v29, v28);
        goto LABEL_24;
      }

      v11 += 160;
      outlined init with copy of NodeDef.Availability(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v27 = v12 + 1;
    }

    else
    {
      v27 = (63 - v7) >> 6;
    }

    v12 = v27 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in Graph.edges(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  *a3 = *a2;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  *(a3 + 40) = *a1;
  *(a3 + 56) = v3;
  *(a3 + 64) = v4;
  *(a3 + 72) = v5;
  *(a3 + 80) = v6;
}

char *specialized static ShaderGraphService.createMaterialSource(from:config:)(void *a1, void *a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v95 = *(v4 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v97 = *(v7 - 8);
  v8 = *(v97 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v85 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v85 - v15;
  v17 = type metadata accessor for OSSignposter();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v38 = swift_allocError();
    v40 = xmmword_265F21A90;
LABEL_9:
    *v39 = v40;
    *(v39 + 16) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v38 = swift_allocError();
    v40 = xmmword_265F21A80;
    goto LABEL_9;
  }

  v89 = v4;
  v91 = v10;
  v92 = v19;
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v93 = v21;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = swift_slowAlloc();
    v90 = v17;
    v25 = v7;
    v26 = v24;
    *v24 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v22, v23, v27, "sourceFromGraph", "", v26, 2u);
    v28 = v26;
    v7 = v25;
    v17 = v90;
    MEMORY[0x266773120](v28, -1, -1);
  }

  (*(v97 + 16))(v13, v16, v7);
  v29 = type metadata accessor for OSSignpostIntervalState();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = OSSignpostIntervalState.init(id:isOpen:)();
  v33 = objc_allocWithZone(type metadata accessor for SGREMaterialSource());
  v34 = a1;
  v35 = a2;
  v36 = v96;
  v37 = SGREMaterialSource.init(graph:configuration:)(v34, v35);
  if (v36)
  {

    (*(v97 + 8))(v16, v7);
    (*(v92 + 8))(v93, v17);
    v38 = v36;
LABEL_10:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, logger);
    v42 = v38;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v45 = 138412290;
      v46 = v38;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v16 = v47;
      _os_log_impl(&dword_265D7D000, v43, v44, "%@", v45, 0xCu);
      outlined destroy of [Input](v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v16, -1, -1);
      MEMORY[0x266773120](v45, -1, -1);
    }

    type metadata accessor for SGError();
    v48 = v38;
    SGError.__allocating_init(_:)(v38);
    swift_willThrow();

    return v16;
  }

  v50 = v37;
  v51 = OSSignposter.logHandle.getter();
  v52 = v32;
  v53 = v91;
  OSSignpostIntervalState.signpostID.getter();
  v88 = static os_signpost_type_t.end.getter();
  v96 = v50;

  if (OS_os_log.signpostsEnabled.getter())
  {
    v85[0] = v51;

    v54 = v94;
    checkForErrorAndConsumeState(state:)();

    v55 = v95;
    v56 = v89;
    v57 = (*(v95 + 88))(v54, v89) == *MEMORY[0x277D85B00];
    v87 = v7;
    v90 = v17;
    v86 = v16;
    v85[1] = v52;
    if (v57)
    {
      v60 = 0;
      v59 = "[Error] Interval already ended";
    }

    else
    {
      (*(v55 + 8))(v54, v56);
      v59 = "%{private,mask.hash}s %s";
      v60 = 3;
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v100 = v62;
    *v61 = v60;
    *(v61 + 1) = v60;
    *(v61 + 2) = 2160;
    *(v61 + 4) = 1752392040;
    *(v61 + 12) = 2081;
    v16 = v96;
    v63 = (*(v96 + OBJC_IVAR___SGREMaterialSource_graph) + OBJC_IVAR___SGGraph_name);
    v65 = *v63;
    v64 = v63[1];

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, &v100);

    *(v61 + 14) = v66;
    *(v61 + 22) = 2080;
    Hasher.init()();
    SHA512Digest.hash(into:)();
    v67 = Hasher.finalize()();
    v99 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v68 = v99;
    v98 = v67;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    v69 = String.init<A>(_:radix:uppercase:)();
    v72 = *(v68 + 16);
    v71 = *(v68 + 24);
    if (v72 >= v71 >> 1)
    {
      v95 = v69;
      v84 = v70;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
      v70 = v84;
      v69 = v95;
      v68 = v99;
    }

    *(v68 + 16) = v72 + 1;
    v73 = v68 + 16 * v72;
    *(v73 + 32) = v69;
    *(v73 + 40) = v70;
    v99 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v74 = BidirectionalCollection<>.joined(separator:)();
    v76 = v75;

    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v100);

    *(v61 + 24) = v77;
    v78 = v91;
    v79 = OSSignpostID.rawValue.getter();
    v80 = v85[0];
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v85[0], v88, v79, "sourceFromGraph", v59, v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v62, -1, -1);
    MEMORY[0x266773120](v61, -1, -1);

    v81 = *(v97 + 8);
    v82 = v78;
    v83 = v87;
    v81(v82, v87);
    v81(v86, v83);
    (*(v92 + 8))(v93, v90);
  }

  else
  {

    v58 = *(v97 + 8);
    v58(v53, v7);
    v58(v16, v7);
    (*(v92 + 8))(v93, v17);
    return v96;
  }

  return v16;
}

void specialized static ShaderGraphService.archiveSource(_:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostError();
  v91 = *(v2 - 1);
  v92 = v2;
  v3 = *(v91 + 64);
  MEMORY[0x28223BE20](v2);
  v90 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v82 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v82 - v14;
  v16 = type metadata accessor for OSSignposter();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.init(subsystem:category:)();
  if (a1)
  {
    v89 = v9;
    v93 = v17;
    v94 = v16;
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v21 = a1;
    v22 = OSSignposter.logHandle.getter();
    v23 = static os_signpost_type_t.begin.getter();

    v24 = OS_os_log.signpostsEnabled.getter();
    v95 = v20;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v96[0] = v88;
      *v25 = 141558531;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v26 = (*&v21[OBJC_IVAR___SGREMaterialSource_graph] + OBJC_IVAR___SGGraph_name);
      v28 = *v26;
      v27 = v26[1];

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v96);
      LODWORD(v87) = v23;
      v30 = v6;
      v31 = v5;
      v32 = v29;

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      v33 = SGREMaterialSource.debugHashSummary.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v96);

      *(v25 + 24) = v35;
      v5 = v31;
      v6 = v30;
      v36 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v22, v87, v36, "archiveSource", "%{private,mask.hash}s %s", v25, 0x20u);
      v37 = v88;
      swift_arrayDestroy();
      MEMORY[0x266773120](v37, -1, -1);
      MEMORY[0x266773120](v25, -1, -1);
    }

    (*(v6 + 16))(v12, v15, v5);
    v38 = type metadata accessor for OSSignpostIntervalState();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v41 = *(v6 + 8);
    v88 = v6 + 8;
    v41(v15, v5);
    v42 = type metadata accessor for PropertyListEncoder();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v45 = *&v21[OBJC_IVAR___SGREMaterialSource_graph];
    v46 = *&v21[OBJC_IVAR___SGREMaterialSource_config];
    v96[0] = 1;
    v96[1] = v45;
    v96[2] = v46;
    lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
    v47 = v45;
    v48 = v46;
    v49 = v97;
    v50 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v49)
    {
      v84 = v48;
      v85 = v50;
      v86 = v47;
      v87 = v41;
      v97 = v5;
      v62 = v21;
      v63 = v95;
      v64 = OSSignposter.logHandle.getter();
      v65 = v89;
      OSSignpostIntervalState.signpostID.getter();
      v83 = static os_signpost_type_t.end.getter();
      v82[1] = v62;

      if (OS_os_log.signpostsEnabled.getter())
      {
        v82[0] = v64;

        v66 = v90;
        checkForErrorAndConsumeState(state:)();

        v68 = v91;
        v67 = v92;
        if ((*(v91 + 88))(v66, v92) == *MEMORY[0x277D85B00])
        {
          v69 = 0;
          v92 = "[Error] Interval already ended";
        }

        else
        {
          (*(v68 + 8))(v66, v67);
          v92 = "%{private,mask.hash}s %s";
          v69 = 3;
        }

        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v96[0] = v71;
        *v70 = v69;
        *(v70 + 1) = v69;
        *(v70 + 2) = 2160;
        *(v70 + 4) = 1752392040;
        *(v70 + 12) = 2081;
        v72 = v86;
        v74 = *&v86[OBJC_IVAR___SGGraph_name];
        v73 = *&v86[OBJC_IVAR___SGGraph_name + 8];

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, v96);

        *(v70 + 14) = v75;
        *(v70 + 22) = 2080;
        v76 = SGREMaterialSource.debugHashSummary.getter();
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v96);

        *(v70 + 24) = v78;
        v79 = v89;
        v80 = OSSignpostID.rawValue.getter();
        v81 = v82[0];
        _os_signpost_emit_with_name_impl(&dword_265D7D000, v82[0], v83, v80, "archiveSource", v92, v70, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v71, -1, -1);
        MEMORY[0x266773120](v70, -1, -1);

        v87(v79, v97);
        (*(v93 + 8))(v95, v94);
      }

      else
      {

        v87(v65, v97);
        (*(v93 + 8))(v63, v94);
      }

      return;
    }

    (*(v93 + 8))(v95, v94);

    v51 = v49;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v51 = swift_allocError();
    *v52 = xmmword_265F21AA0;
    *(v52 + 16) = 1;
    swift_willThrow();
    (*(v17 + 8))(v20, v16);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, logger);
  v54 = v51;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    v59 = v51;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 4) = v60;
    *v58 = v60;
    _os_log_impl(&dword_265D7D000, v55, v56, "%@", v57, 0xCu);
    outlined destroy of [Input](v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v58, -1, -1);
    MEMORY[0x266773120](v57, -1, -1);
  }

  type metadata accessor for SGError();
  v61 = v51;
  SGError.__allocating_init(_:)(v51);
  swift_willThrow();
}

char *specialized static ShaderGraphService.sourceFromArchive(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v105 = *(v4 - 1);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v97[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = type metadata accessor for OSSignpostID();
  v7 = *(v111 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v111);
  v107 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v97[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v97[-v14];
  v16 = type metadata accessor for OSSignposter();
  v109 = *(v16 - 8);
  v110 = v16;
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v97[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v20 = OSSignposter.logHandle.getter();
  v21 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v22 = swift_slowAlloc();
    v115 = v7;
    v23 = v19;
    v24 = a1;
    v25 = a2;
    v26 = v22;
    *v22 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v20, v21, v27, "sourceFromArchive", "", v26, 2u);
    v28 = v26;
    a2 = v25;
    a1 = v24;
    v19 = v23;
    v7 = v115;
    MEMORY[0x266773120](v28, -1, -1);
  }

  v29 = v111;
  (*(v7 + 16))(v12, v15, v111);
  v30 = type metadata accessor for OSSignpostIntervalState();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v115 = OSSignpostIntervalState.init(id:isOpen:)();
  v33 = *(v7 + 8);
  v33(v15, v29);
  if (a2 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v34 = swift_allocError();
    *v35 = xmmword_265F21AB0;
    *(v35 + 16) = 1;
    swift_willThrow();

    (*(v109 + 8))(v19, v110);
LABEL_8:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, logger);
    v49 = v34;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = v34;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_265D7D000, v50, v51, "%@", v52, 0xCu);
      outlined destroy of [Input](v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v53, -1, -1);
      MEMORY[0x266773120](v52, -1, -1);
    }

    type metadata accessor for SGError();
    v56 = v34;
    SGError.__allocating_init(_:)(v34);
    swift_willThrow();

    return v34;
  }

  v36 = type metadata accessor for PropertyListDecoder();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = PropertyListDecoder.init()();
  lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
  v40 = v108;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v41 = a2;
  v34 = v40;
  if (v40)
  {
    (*(v109 + 8))(v19, v110);

    goto LABEL_8;
  }

  v102 = v41;
  v103 = v33;
  v108 = v39;
  v42 = v114[1];
  v43 = v114[2];
  v44 = objc_allocWithZone(type metadata accessor for SGREMaterialSource());
  v45 = v42;
  v46 = v43;
  v47 = SGREMaterialSource.init(graph:configuration:)(v45, v46);
  v100 = v46;
  v34 = v47;
  v58 = OSSignposter.logHandle.getter();
  v59 = v107;
  OSSignpostIntervalState.signpostID.getter();
  v98 = static os_signpost_type_t.end.getter();

  v60 = OS_os_log.signpostsEnabled.getter();
  v99 = a1;
  v101 = v45;
  if (v60)
  {

    v61 = v104;
    checkForErrorAndConsumeState(state:)();

    v63 = v105;
    v62 = v106;
    if ((*(v105 + 88))(v61, v106) == *MEMORY[0x277D85B00])
    {
      v64 = v34;
      v65 = 0;
      v106 = "[Error] Interval already ended";
    }

    else
    {
      v66 = v61;
      v64 = v34;
      (*(v63 + 8))(v66, v62);
      v106 = "%{private,mask.hash}s %s";
      v65 = 3;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v114[0] = v68;
    *v67 = v65;
    *(v67 + 1) = v65;
    *(v67 + 2) = 2160;
    *(v67 + 4) = 1752392040;
    *(v67 + 12) = 2081;
    v69 = v64;
    v70 = (*&v64[OBJC_IVAR___SGREMaterialSource_graph] + OBJC_IVAR___SGGraph_name);
    v72 = *v70;
    v71 = v70[1];

    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, v114);

    *(v67 + 14) = v73;
    *(v67 + 22) = 2080;
    v74 = SGREMaterialSource.debugHashSummary.getter();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v114);

    *(v67 + 24) = v76;
    v59 = v107;
    v77 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v58, v98, v77, "sourceFromArchive", v106, v67, 0x20u);
    swift_arrayDestroy();
    v78 = v68;
    v34 = v69;
    MEMORY[0x266773120](v78, -1, -1);
    MEMORY[0x266773120](v67, -1, -1);
  }

  v103(v59, v111);
  v79 = v100;
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v80 = static DebugConfig.debugMode;

  v81 = specialized Set.contains(_:)(2, v80);

  if (v81)
  {
    v112 = 0;
    v113 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v82 = (*&v34[OBJC_IVAR___SGREMaterialSource_graph] + OBJC_IVAR___SGGraph_name);
    v84 = *v82;
    v83 = v82[1];

    v112 = v84;
    v113 = v83;
    MEMORY[0x266771550](95, 0xE100000000000000);
    v85 = SHA512Digest.description.getter();
    v87 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v85, v86);
    v89 = v88;
    v91 = v90;
    v93 = v92;

    v94 = MEMORY[0x2667714E0](v87, v89, v91, v93);
    v96 = v95;

    MEMORY[0x266771550](v94, v96);

    MEMORY[0x266771550](0x5F656372756F735FLL, 0xEF65766968637261);
    specialized static FileLogger.saveDebugFile(_:name:extension:)(v99, v102, v112, v113, 0x7473696C70, 0xE500000000000000);

    (*(v109 + 8))(v19, v110);
  }

  else
  {
    (*(v109 + 8))(v19, v110);
  }

  return v34;
}

id specialized static ShaderGraphService.materialFromSource(_:functionConstantValues:)(char *a1, _BYTE *a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v122 = *(v4 - 8);
  v5 = *(v122 + 8);
  MEMORY[0x28223BE20](v4);
  v121 = &v110[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v110[-v9];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v110[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v110[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v110[-v19];
  v21 = type metadata accessor for OSSignposter();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v110[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v51 = swift_allocError();
    *v52 = xmmword_265F21AA0;
LABEL_9:
    *(v52 + 16) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  v114 = v4;
  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v51 = swift_allocError();
    *v52 = 0xD000000000000016;
    *(v52 + 8) = 0x8000000265F2E820;
    goto LABEL_9;
  }

  v115 = a2;
  v113 = v14;
  v117 = v24;
  v118 = v23;
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v120 = v26;
  v27 = OSSignposter.logHandle.getter();
  v28 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v29 = v20;
    v30 = v11;
    v31 = v10;
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v27, v28, v33, "materialFromSource", "", v32, 2u);
    v34 = v32;
    v10 = v31;
    v11 = v30;
    v20 = v29;
    MEMORY[0x266773120](v34, -1, -1);
  }

  v116 = v10;

  (*(v11 + 16))(v17, v20, v10);
  v35 = type metadata accessor for OSSignpostIntervalState();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v119 = OSSignpostIntervalState.init(id:isOpen:)();
  v38 = *&a1[OBJC_IVAR___SGREMaterialSource_graph];
  v39 = v20;
  v40 = *&a1[OBJC_IVAR___SGREMaterialSource_config];
  v41 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
  v42 = type metadata accessor for SHA512Digest();
  v43 = *(v42 - 8);
  v44 = v123;
  (*(v43 + 16))(v123, &a1[v41], v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  v45 = objc_allocWithZone(type metadata accessor for SGREMaterial());
  v46 = v38;
  v47 = v40;
  v48 = v115;
  v49 = v124;
  SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v46, v47, v48, v44);
  if (!v49)
  {
    v63 = v50;
    v115 = v39;
    v123 = v11;
    v64 = a1;
    v65 = v63;
    v66 = OSSignposter.logHandle.getter();
    v67 = v113;
    OSSignpostIntervalState.signpostID.getter();
    v68 = static os_signpost_type_t.end.getter();
    v124 = v65;

    if (OS_os_log.signpostsEnabled.getter())
    {
      v111 = v68;
      v112 = v66;

      v69 = v121;
      checkForErrorAndConsumeState(state:)();

      v70 = v122;
      v71 = v114;
      if ((*(v122 + 11))(v69, v114) == *MEMORY[0x277D85B00])
      {
        v72 = 0;
        v122 = "[Error] Interval already ended";
      }

      else
      {
        (*(v70 + 1))(v69, v71);
        v122 = "%{private,mask.hash}s %s";
        v72 = 3;
      }

      v75 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v127 = v121;
      *v75 = v72;
      *(v75 + 1) = v72;
      *(v75 + 2) = 2160;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      v77 = *&v46[OBJC_IVAR___SGGraph_name];
      v76 = *&v46[OBJC_IVAR___SGGraph_name + 8];

      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, &v127);

      *(v75 + 14) = v78;
      *(v75 + 22) = 2080;
      v79 = SHA512Digest.description.getter();
      v81 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v79, v80);
      v83 = v82;
      v85 = v84;
      v87 = v86;

      v88 = MEMORY[0x2667714E0](v81, v83, v85, v87);
      v90 = v89;

      v125 = v88;
      v126 = v90;

      MEMORY[0x266771550](95, 0xE100000000000000);

      v91 = v126;
      v114 = v125;
      v92 = SHA512Digest.description.getter();
      v94 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v92, v93);
      v96 = v95;
      v98 = v97;
      v100 = v99;

      v101 = MEMORY[0x2667714E0](v94, v96, v98, v100);
      v103 = v102;

      v125 = v114;
      v126 = v91;

      MEMORY[0x266771550](v101, v103);

      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &v127);

      *(v75 + 24) = v104;
      v105 = v113;
      v106 = OSSignpostID.rawValue.getter();
      v107 = v112;
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v112, v111, v106, "materialFromSource", v122, v75, 0x20u);
      v108 = v121;
      swift_arrayDestroy();
      MEMORY[0x266773120](v108, -1, -1);
      MEMORY[0x266773120](v75, -1, -1);

      v73 = *(v123 + 1);
      v74 = v105;
    }

    else
    {

      v73 = *(v123 + 1);
      v74 = v67;
    }

    v109 = v116;
    v73(v74, v116);
    v73(v115, v109);
    (*(v117 + 8))(v120, v118);
    return v124;
  }

  (*(v11 + 8))(v39, v116);
  (*(v117 + 8))(v120, v118);
  v51 = v49;
LABEL_10:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, logger);
  v54 = v51;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    v59 = v51;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 4) = v60;
    *v58 = v60;
    _os_log_impl(&dword_265D7D000, v55, v56, "%@", v57, 0xCu);
    outlined destroy of [Input](v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v58, -1, -1);
    MEMORY[0x266773120](v57, -1, -1);
  }

  type metadata accessor for SGError();
  v61 = v51;
  SGError.__allocating_init(_:)(v51);
  swift_willThrow();

  return v124;
}

uint8_t *specialized static ShaderGraphService.createLibrary(from:device:options:)(NSObject *a1, void *a2, NSObject *a3)
{
  v301 = a3;
  v303 = a2;
  v353 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for URL();
  v284 = *(v5 - 8);
  v285 = v5;
  v6 = *(v284 + 64);
  MEMORY[0x28223BE20](v5);
  v286 = &v274 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostError();
  v288 = *(v8 - 8);
  v289 = v8;
  v9 = *(v288 + 64);
  MEMORY[0x28223BE20](v8);
  v287 = &v274 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for GraphCompiler();
  v11 = *(*(v291 - 8) + 64);
  MEMORY[0x28223BE20](v291);
  v13 = &v274 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = type metadata accessor for OSSignpostID();
  v14 = *(v299 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v299);
  v298 = &v274 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v290 = &v274 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v274 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v274 - v23;
  v25 = type metadata accessor for OSSignposter();
  v304 = *(v25 - 8);
  v305 = v25;
  v26 = *(v304 + 64);
  MEMORY[0x28223BE20](v25);
  v297 = &v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v274 - v29;
  v296 = "Sampler for image node '";
  OSSignposter.init(subsystem:category:)();
  v295 = v14;
  v300 = a1;
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v43 = swift_allocError();
    *v45 = 0xD000000000000010;
    *(v45 + 8) = 0x8000000265F2E7E0;
    v294 = 1;
    *(v45 + 16) = 1;
    swift_willThrow();
    v44 = *(v304 + 8);
    (v44)(v30, v305);
    v46 = 0;
    v293 = 1;
    goto LABEL_41;
  }

  v283 = v13;
  v293 = *(&a1->isa + OBJC_IVAR___SGREMaterial_hasSurfaceShaderUniforms);
  v294 = *(&a1->isa + OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v292 = v30;
  v31 = OSSignposter.logHandle.getter();
  v32 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v31, v32, v34, "libraryFromMaterial", "", v33, 2u);
    MEMORY[0x266773120](v33, -1, -1);
  }

  v35 = v299;
  (*(v14 + 16))(v21, v24, v299);
  v36 = type metadata accessor for OSSignpostIntervalState();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = OSSignpostIntervalState.init(id:isOpen:)();
  v40 = *(v14 + 8);
  v40(v24, v35);
  if (!v303)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v43 = swift_allocError();
    *v47 = xmmword_265F21AC0;
    *(v47 + 16) = 1;
    swift_willThrow();

    v44 = *(v304 + 8);
    (v44)(v292, v305);
    goto LABEL_40;
  }

  v280 = v40;
  v41 = *(&v300[2].isa + OBJC_IVAR___SGREMaterial_internalGraph);
  v315 = *(&v300->isa + OBJC_IVAR___SGREMaterial_internalGraph);
  v316 = v41;
  v317 = *(&v300[4].isa + OBJC_IVAR___SGREMaterial_internalGraph);
  v42 = mapInternalGraphToUserGraph(_:)(&v315, v340);
  v43 = v3;
  if (v3)
  {
    v44 = *(v304 + 8);
    (v44)(v292, v305, v42);

LABEL_40:
    v46 = 0;
    goto LABEL_41;
  }

  v278 = v14 + 8;
  v282 = v39;
  v309 = 0;
  v337 = v340[8];
  v338[0] = v341[0];
  *(v338 + 9) = *(v341 + 9);
  v333 = v340[4];
  v334 = v340[5];
  v335 = v340[6];
  v336 = v340[7];
  v329 = v340[0];
  v330 = v340[1];
  v331 = v340[2];
  v332 = v340[3];
  v277 = OBJC_IVAR___SGREMaterial_sourceHash;
  v48 = SHA512Digest.description.getter();
  v50 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v48, v49);
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = MEMORY[0x2667714E0](v50, v52, v54, v56);
  v59 = v58;

  *&v319 = v57;
  *(&v319 + 1) = v59;

  MEMORY[0x266771550](95, 0xE100000000000000);

  v60 = v319;
  v276 = OBJC_IVAR___SGREMaterial_edgeDigest;
  v61 = SHA512Digest.description.getter();
  v63 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v61, v62);
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v70 = MEMORY[0x2667714E0](v63, v65, v67, v69);
  v72 = v71;

  v319 = v60;

  MEMORY[0x266771550](v70, v72);

  v279 = v319;
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v73 = static DebugConfig.debugMode;

  v74 = specialized Set.contains(_:)(3, v73);

  v77 = v304;
  v76 = v305;
  v43 = v309;
  if (v74)
  {
    v351[8] = v337;
    v352[0] = v338[0];
    *(v352 + 9) = *(v338 + 9);
    v351[4] = v333;
    v351[5] = v334;
    v351[7] = v336;
    v351[6] = v335;
    v351[0] = v329;
    v351[1] = v330;
    v351[3] = v332;
    v351[2] = v331;
    createDotText(representing:)(v351);
    if (v43)
    {
      v44 = *(v77 + 8);
      (v44)(v292, v76);

      v327 = v337;
      v328[0] = v338[0];
      v80 = *(v338 + 9);
LABEL_39:
      *(v328 + 9) = v80;
      v323 = v333;
      v324 = v334;
      v325 = v335;
      v326 = v336;
      v319 = v329;
      v320 = v330;
      v321 = v331;
      v322 = v332;
      outlined destroy of UserGraph(&v319);
      goto LABEL_40;
    }

    v81 = (*(&v300->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v83 = *v81;
    v82 = v81[1];
    *&v319 = v83;
    *(&v319 + 1) = v82;
    v84 = v78;
    v85 = v79;

    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v279, *(&v279 + 1));
    MEMORY[0x266771550](0x617247726573755FLL, 0xEA00000000006870);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v84, v85, v319, *(&v319 + 1), 7630692, 0xE300000000000000);
  }

  v86 = *(&v316 + 1);
  v87 = *(*(&v316 + 1) + 16);
  if (v87)
  {
    v88 = 0;
    v306 = *(&v317 + 1);
    v89 = *(&v316 + 1) + 56;
    v274 = v87 - 1;
    v281 = MEMORY[0x277D84F90];
    v275 = *(&v316 + 1) + 56;
    do
    {
      v90 = (v89 + 32 * v88);
      v91 = v88;
      while (1)
      {
        if (v91 >= *(v86 + 16))
        {
          __break(1u);
          goto LABEL_70;
        }

        v69 = *(v90 - 2);
        v308 = *(v90 - 3);
        v309 = v43;
        v307 = *(v90 - 1);
        LODWORD(v302) = *v90;

        specialized SGDataTypeGraph.argumentsNode.getter(v306, v342);
        v92 = v343;
        if (v343)
        {
          v93 = v342[3];
          specialized Graph.Node<>.output(named:)(v308, v69, v342[0], v342[2], &v344);

          v314[0] = v93;
          v314[1] = v92;
          outlined destroy of String(v314);
          if (v346)
          {
            v310 = v344;
            v311 = v345;
            v312 = v346;
            v313 = v347;
            v94 = specialized Graph.edges(from:)(&v310, v306);
            outlined destroy of [Input](&v344, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v95 = *(v94 + 16);

            if (v95)
            {
              if (v307 == 41 || v307 == 44)
              {
                break;
              }
            }
          }
        }

        ++v91;

        v90 += 32;
        v43 = v309;
        if (v87 == v91)
        {
          goto LABEL_33;
        }
      }

      v96 = v281;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v319 = v96;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v281 + 16) + 1, 1);
        v281 = v319;
      }

      v98 = *(v281 + 16);
      v97 = *(v281 + 24);
      if (v98 >= v97 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
        v281 = v319;
      }

      v88 = v91 + 1;
      v99 = v281;
      *(v281 + 16) = v98 + 1;
      v100 = v99 + 32 * v98;
      v101 = v307;
      *(v100 + 32) = v308;
      *(v100 + 40) = v69;
      *(v100 + 48) = v101;
      *(v100 + 56) = v302;
      v89 = v275;
      v43 = v309;
    }

    while (v274 != v91);
  }

  else
  {
    v281 = MEMORY[0x277D84F90];
  }

LABEL_33:
  specialized Sequence.forEach(_:)(v281, &v329);
  if (v43)
  {
    v44 = *(v304 + 8);
    (v44)(v292, v305);

LABEL_38:
    v327 = v337;
    v328[0] = v338[0];
    v80 = *(v338 + 9);
    goto LABEL_39;
  }

  v91 = v305;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v102 = qword_280051428;
  v103 = v300;
  v104 = (*((*MEMORY[0x277D85000] & **(&v300->isa + OBJC_IVAR___SGREMaterial_config)) + 0x60))();
  v339 = v102;
  swift_bridgeObjectRetain_n();

  specialized Sequence.forEach(_:)(v104, v102, &v339);

  v205 = *(&v103->isa + OBJC_IVAR___SGREMaterial_textureAssignments);
  v206 = *(&v103->isa + OBJC_IVAR___SGREMaterial_customUniformsType);
  v207 = *(v206 + OBJC_IVAR___SGPropertyDescription_type);
  v208 = (v206 + OBJC_IVAR___SGPropertyDescription_name);
  v209 = *v208;
  v210 = v208[1];

  specialized static MetalDataType.create(_:name:)(v207, v209, v210);
  v212 = v211;
  v349[8] = v337;
  v350[0] = v338[0];
  *(v350 + 9) = *(v338 + 9);
  v349[4] = v333;
  v349[5] = v334;
  v349[7] = v336;
  v349[6] = v335;
  v349[0] = v329;
  v349[1] = v330;
  v349[3] = v332;
  v349[2] = v331;
  outlined init with copy of UserGraph(v349, &v319);

  specialized Dictionary<>.init(_:)(v205);
  specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v349);
  v309 = v212;
  v213 = v283;
  memcpy(v283, v348, 0x148uLL);
  v214 = &v213[*(v291 + 20)];
  OSSignposter.init(subsystem:category:)();
  GraphCompiler.compile(for:options:)(v303, v301);
  v69 = 0;
LABEL_70:
  v114 = isUniquelyReferenced_nonNull_native;
  v215 = v300;
  v216 = OSSignposter.logHandle.getter();
  v217 = v290;
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v307) = static os_signpost_type_t.end.getter();
  v308 = v215;

  if (OS_os_log.signpostsEnabled.getter())
  {
    v306 = v216;

    v218 = v287;
    checkForErrorAndConsumeState(state:)();

    v220 = v288;
    v219 = v289;
    if ((*(v288 + 88))(v218, v289) == *MEMORY[0x277D85B00])
    {
      v221 = 0;
      v302 = "[Error] Interval already ended";
    }

    else
    {
      (*(v220 + 8))(v218, v219);
      v302 = "%{private,mask.hash}s %s";
      v221 = 3;
    }

    v224 = swift_slowAlloc();
    v291 = swift_slowAlloc();
    v339 = v291;
    *v224 = v221;
    *(v224 + 1) = v221;
    *(v224 + 2) = 2160;
    *(v224 + 4) = 1752392040;
    *(v224 + 12) = 2081;
    v225 = (*(&v308->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v227 = *v225;
    v226 = v225[1];

    v228 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v226, &v339);

    v289 = v224;
    *(v224 + 14) = v228;
    *(v224 + 22) = 2080;
    v229 = SHA512Digest.description.getter();
    v231 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v229, v230);
    v233 = v232;
    v235 = v234;
    v237 = v236;

    v238 = MEMORY[0x2667714E0](v231, v233, v235, v237);
    v240 = v239;

    *&v319 = v238;
    *(&v319 + 1) = v240;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v241 = *(&v319 + 1);
    v288 = v319;
    v242 = SHA512Digest.description.getter();
    v244 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v242, v243);
    v246 = v245;
    v248 = v247;
    v250 = v249;

    v251 = MEMORY[0x2667714E0](v244, v246, v248, v250);
    v253 = v252;

    *&v319 = v288;
    *(&v319 + 1) = v241;

    MEMORY[0x266771550](v251, v253);

    v254 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v319, *(&v319 + 1), &v339);

    v256 = v289;
    v255 = v290;
    *(v289 + 24) = v254;
    v257 = OSSignpostID.rawValue.getter();
    v258 = v306;
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v306, v307, v257, "libraryFromMaterial", v302, v256, 0x20u);
    v259 = v291;
    swift_arrayDestroy();
    MEMORY[0x266773120](v259, -1, -1);
    MEMORY[0x266773120](v256, -1, -1);

    v280(v255, v299);
    v91 = v305;
    v223 = v292;
    v222 = v283;
  }

  else
  {

    v280(v217, v299);
    v222 = v283;
    v223 = v292;
  }

  v260 = static DebugConfig.debugMode;

  v261 = specialized Set.contains(_:)(4, v260);

  if ((v261 & 1) == 0 || (v318 = &unk_2877A8D38, (v262 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {

    outlined destroy of GraphCompiler(v222);
    (*(v304 + 8))(v223, v91);
    v327 = v337;
    v328[0] = v338[0];
    v268 = *(v338 + 9);
    goto LABEL_81;
  }

  v263 = v262;
  type metadata accessor for FileLogger();
  v264 = (*(&v308->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
  v265 = v264[1];
  *&v319 = *v264;
  *(&v319 + 1) = v265;
  swift_unknownObjectRetain();

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](v279, *(&v279 + 1));

  MEMORY[0x266771550](0x656C69706D6F635FLL, 0xE900000000000064);
  v266 = v286;
  static FileLogger.url(for:extension:)(v319, *(&v319 + 1), 0x62696C6C746DLL, 0xE600000000000000, v286);
  if (!v69)
  {

    URL._bridgeToObjectiveC()(v269);
    v271 = v270;
    *&v319 = 0;
    v272 = [v263 serializeToURL:v270 error:&v319];

    v273 = v319;
    swift_unknownObjectRelease();
    if (!v272)
    {
      v43 = _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_unknownObjectRelease();
      (*(v284 + 8))(v266, v285);
      outlined destroy of GraphCompiler(v283);
      v44 = *(v304 + 8);
      (v44)(v292, v91);
      goto LABEL_38;
    }

    (*(v284 + 8))(v266, v285);
    outlined destroy of GraphCompiler(v283);
    (*(v304 + 8))(v292, v91);
    v327 = v337;
    v328[0] = v338[0];
    v268 = *(v338 + 9);
LABEL_81:
    *(v328 + 9) = v268;
    v323 = v333;
    v324 = v334;
    v325 = v335;
    v326 = v336;
    v319 = v329;
    v320 = v330;
    v321 = v331;
    v322 = v332;
    outlined destroy of UserGraph(&v319);
    goto LABEL_67;
  }

  swift_unknownObjectRelease_n();

  outlined destroy of GraphCompiler(v283);
  v267 = *(v304 + 8);
  (v267)(v292, v91);
  v327 = v337;
  v328[0] = v338[0];
  *(v328 + 9) = *(v338 + 9);
  v323 = v333;
  v324 = v334;
  v325 = v335;
  v326 = v336;
  v319 = v329;
  v320 = v330;
  v321 = v331;
  v322 = v332;
  outlined destroy of UserGraph(&v319);
  v46 = 0;
  v43 = v69;
  v44 = v267;
LABEL_41:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for Logger();
  v106 = __swift_project_value_buffer(v105, logger);
  v107 = v43;
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v110 = 138412290;
    v112 = v43;
    v113 = _swift_stdlib_bridgeErrorToNSError();
    *(v110 + 4) = v113;
    *v111 = v113;
    _os_log_impl(&dword_265D7D000, v108, v109, "%@", v110, 0xCu);
    outlined destroy of [Input](v111, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v111, -1, -1);
    MEMORY[0x266773120](v110, -1, -1);
  }

  v114 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  v115 = v301;
  swift_beginAccess();
  if (v114[v115] != 1)
  {
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_265D7D000, v156, v157, "Failed material compile fallback disabled.", v114, 2u);
      MEMORY[0x266773120](v114, -1, -1);
    }

    type metadata accessor for SGError();
    v158 = v43;
    SGError.__allocating_init(_:)(v43);
    goto LABEL_58;
  }

  if (!v300)
  {
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v159, v160))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_265D7D000, v159, v160, "MISSING SGEREMATERIAL", v114, 2u);
      MEMORY[0x266773120](v114, -1, -1);
    }

    v161 = v303;
    if (v303)
    {
      goto LABEL_64;
    }

    goto LABEL_55;
  }

  v116 = v300;
  v307 = v106;
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.error.getter();
  v119 = os_log_type_enabled(v117, v118);
  v308 = 0;
  v309 = v43;
  if (v119)
  {
    v120 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v339 = v301;
    *v120 = 141558531;
    *(v120 + 4) = 1752392040;
    *(v120 + 12) = 2081;
    v121 = (*(&v116->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v300 = v117;
    v123 = *v121;
    v122 = v121[1];

    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v122, &v339);
    v302 = v44;
    v125 = v124;

    *(v120 + 14) = v125;
    *(v120 + 22) = 2080;
    v126 = SHA512Digest.description.getter();
    v128 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v126, v127);
    v130 = v129;
    LODWORD(v292) = v118;
    v132 = v131;
    v306 = v116;
    v134 = v133;

    v135 = MEMORY[0x2667714E0](v128, v130, v132, v134);
    v137 = v136;

    *&v319 = v135;
    *(&v319 + 1) = v137;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v138 = v319;
    v139 = SHA512Digest.description.getter();
    v141 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v139, v140);
    v143 = v142;
    v145 = v144;
    v147 = v146;

    v148 = v145;
    v44 = v302;
    v149 = MEMORY[0x2667714E0](v141, v143, v148, v147);
    v151 = v150;

    v319 = v138;

    v152 = v149;
    v116 = v306;
    MEMORY[0x266771550](v152, v151);

    v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v319, *(&v319 + 1), &v339);

    *(v120 + 24) = v153;
    v154 = v300;
    _os_log_impl(&dword_265D7D000, v300, v292, "Material library construction failed for: %{private,mask.hash}s %s", v120, 0x20u);
    v155 = v301;
    swift_arrayDestroy();
    MEMORY[0x266773120](v155, -1, -1);
    MEMORY[0x266773120](v120, -1, -1);
  }

  else
  {
  }

  v114 = v297;
  v164 = v298;
  OSSignposter.init(subsystem:category:)();
  v165 = v116;
  static OSSignpostID.exclusive.getter();
  v166 = OSSignposter.logHandle.getter();
  v167 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v168 = swift_slowAlloc();
    v306 = swift_slowAlloc();
    v339 = v306;
    *v168 = 141558531;
    *(v168 + 4) = 1752392040;
    *(v168 + 12) = 2081;
    v169 = (*(&v165->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v171 = *v169;
    v170 = v169[1];

    v172 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v170, &v339);

    *(v168 + 14) = v172;
    *(v168 + 22) = 2080;
    v173 = SHA512Digest.description.getter();
    v175 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v173, v174);
    v302 = v166;
    v177 = v176;
    v179 = v178;
    v181 = v180;

    v182 = MEMORY[0x2667714E0](v175, v177, v179, v181);
    v184 = v183;

    *&v319 = v182;
    *(&v319 + 1) = v184;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v301 = v165;
    v185 = v319;
    v186 = SHA512Digest.description.getter();
    v188 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v186, v187);
    v190 = v189;
    v192 = v191;
    LODWORD(v300) = v167;
    v194 = v193;

    v195 = MEMORY[0x2667714E0](v188, v190, v192, v194);
    v197 = v196;

    v319 = v185;

    MEMORY[0x266771550](v195, v197);

    v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v319, *(&v319 + 1), &v339);

    *(v168 + 24) = v198;
    v199 = v298;
    v200 = OSSignpostID.rawValue.getter();
    v114 = v302;
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v302, v300, v200, "failureMaterial", "%{private,mask.hash}s %s", v168, 0x20u);
    v201 = v306;
    swift_arrayDestroy();
    MEMORY[0x266773120](v201, -1, -1);
    MEMORY[0x266773120](v168, -1, -1);

    (*(v295 + 8))(v199, v299);
    (*(v304 + 8))(v297, v305);
  }

  else
  {

    (*(v295 + 8))(v164, v299);
    (v44)(v114, v305);
  }

  v161 = v303;
  v46 = v308;
  v43 = v309;
  if (!v303)
  {
LABEL_55:
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_265D7D000, v162, v163, "Failed to unwrap MTLDevice", v114, 2u);
      MEMORY[0x266773120](v114, -1, -1);
    }

    type metadata accessor for SGError();
    SGError.__allocating_init(_:)(0x63697665444C544DLL, 0xE900000000000065, 1);
LABEL_58:
    swift_willThrow();
    goto LABEL_66;
  }

LABEL_64:
  swift_unknownObjectRetain();
  v202 = buildFailureMaterial(usesSurfaceUniforms:usesGeometryUniforms:device:)(v293, v294, v161);
  if (!v46)
  {
    v114 = v202;
    swift_unknownObjectRelease();

    goto LABEL_67;
  }

  swift_unknownObjectRelease();
LABEL_66:

LABEL_67:
  v203 = *MEMORY[0x277D85DE8];
  return v114;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined destroy of GraphCompiler(uint64_t a1)
{
  v2 = type metadata accessor for GraphCompiler();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer()
{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t DynamicArrayLookupByString.subscript.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  _ArrayProtocol.filter(_:)();
  v4 = MEMORY[0x266771860]();
  if (v4 == 1)
  {
    Array.subscript.getter();
  }

  else
  {
    if (v4)
    {

      swift_getMetatypeMetadata();
      v13 = String.init<A>(reflecting:)();
      v15 = v10;
      MEMORY[0x266771550](32, 0xE100000000000000);
      MEMORY[0x266771550](a1, a2);
      v8 = 0;
      v6 = v13;
      v7 = v15;
    }

    else
    {

      swift_getMetatypeMetadata();
      v12 = String.init<A>(reflecting:)();
      v14 = v5;
      MEMORY[0x266771550](32, 0xE100000000000000);
      MEMORY[0x266771550](a1, a2);
      v6 = v12;
      v7 = v14;
      v8 = 1;
    }

    type metadata accessor for DynamicArrayLookupByString.MemberLookupError();
    swift_getWitnessTable();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v7;
    *(v11 + 16) = v8;
    return swift_willThrow();
  }
}

uint64_t closure #1 in DynamicArrayLookupByString.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAtKeyPath();
  if (v10 == a4 && v11 == a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t type metadata instantiation function for DynamicArrayLookupByString()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DynamicArrayLookupByString(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicArrayLookupByString(uint64_t result, int a2, int a3)
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

uint64_t type metadata instantiation function for DynamicArrayLookupByString.MemberLookupError()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11ShaderGraph11DebugConfigO5GroupOG_SSs5NeverOTg504_s11d7Graph11fg17O9debugModeShyAC5H72OGvpZfiAGyXEfU_SSAFcfu1_32fca4dd16cfbb9a2e4a4875ed65f685b6AFSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = v28;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_40;
    }

    v12 = *(*(a1 + 48) + result);
    if (v12 > 4)
    {
      if (*(*(a1 + 48) + result) <= 6u)
      {
        if (v12 == 5)
        {
          v14 = 0x6E69686374697473;
          v13 = 0xEE00687061724767;
        }

        else
        {
          v13 = 0xEA0000000000746FLL;
          v14 = 0x446C616D696E696DLL;
        }
      }

      else if (v12 == 7)
      {
        v13 = 0xE800000000000000;
        v14 = 0x6870617247697061;
      }

      else if (v12 == 8)
      {
        v14 = 0xD000000000000011;
        v13 = 0x8000000265F2BCB0;
      }

      else
      {
        v14 = 0xD00000000000001ALL;
        v13 = 0x8000000265F2BCD0;
      }
    }

    else if (*(*(a1 + 48) + result) <= 1u)
    {
      if (*(*(a1 + 48) + result))
      {
        v13 = 0xE700000000000000;
        v14 = 0x7972616D6D7573;
      }

      else
      {
        v13 = 0xE400000000000000;
        v14 = 1701736302;
      }
    }

    else if (v12 == 2)
    {
      v13 = 0xE700000000000000;
      v14 = 0x65766968637261;
    }

    else if (v12 == 3)
    {
      v13 = 0xE300000000000000;
      v14 = 7630692;
    }

    else
    {
      v14 = 0x62694C6C6174656DLL;
      v13 = 0xEC00000079726172;
    }

    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_41;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_42;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_43;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          outlined consume of [String : String].Index._Variant(result, v15, 0);
          v7 = v28;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      outlined consume of [String : String].Index._Variant(result, v15, 0);
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t *DebugConfig.debugMode.unsafeMutableAddressor()
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  return &static DebugConfig.debugMode;
}

char *DebugConfig.tier1SupportOverrideEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  return &static DebugConfig.tier1SupportOverrideEnabled;
}

uint64_t DebugConfig.Group.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6870617247697061;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E69686374697473;
    if (a1 != 5)
    {
      v7 = 0x446C616D696E696DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736302;
    v2 = 0x65766968637261;
    v3 = 7630692;
    if (a1 != 3)
    {
      v3 = 0x62694C6C6174656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7972616D6D7573;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DebugConfig.Group(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DebugConfig.Group.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DebugConfig.Group.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DebugConfig.Group()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DebugConfig.Group()
{
  DebugConfig.Group.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DebugConfig.Group()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DebugConfig.Group@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DebugConfig.Group.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DebugConfig.Group@<X0>(uint64_t *a1@<X8>)
{
  result = DebugConfig.Group.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for debugMode()
{
  result = closure #1 in variable initialization expression of static DebugConfig.debugMode();
  static DebugConfig.debugMode = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static DebugConfig.debugMode()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_8:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_265D7D000, v12, v13, "Failed to construct UserDefaults(suiteName: nil)", v14, 2u);
        MEMORY[0x266773120](v14, -1, -1);
      }

      return MEMORY[0x277D84FA0];
    }

LABEL_45:
    swift_once();
    goto LABEL_8;
  }

  v1 = v0;
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 infoDictionary];
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C646E75424643, 0xEF6E6F6973726556), (v8 & 1) != 0))
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v57);

      if (swift_dynamicCast())
      {
        v9 = v56[0];
        v10 = v56[1];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v10 = 0xE500000000000000;
  v9 = 0x7265566F4ELL;
LABEL_13:
  v53 = v9;
  v54 = v3;
  v15 = MEMORY[0x266771450](0xD00000000000001FLL, 0x8000000265F2E900);
  v55 = v1;
  v16 = [v1 stringArrayForKey_];

  if (v16)
  {
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
    v19 = *(v17 + 16);
    v20 = MEMORY[0x277D84F90];
LABEL_15:
    v21 = (v17 + 40 + 16 * v18);
    while (1)
    {
      if (v19 == v18)
      {
        v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph11DebugConfigO5GroupO_SayAHGTt0g5Tf4g_n(v20);

        goto LABEL_26;
      }

      if (v18 >= *(v17 + 16))
      {
        break;
      }

      ++v18;
      v22 = v21 + 2;
      v23 = *(v21 - 1);
      v24 = *v21;

      v25._countAndFlagsBits = v23;
      v25._object = v24;
      v26 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DebugConfig.Group.init(rawValue:), v25);

      v21 = v22;
      if (v26 < 0xA)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v20[v28 + 32] = v26;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph11DebugConfigO5GroupO_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in variable initialization expression of static DebugConfig.debugMode);
LABEL_26:
  v57 = 91;
  v58 = 0xE100000000000000;
  v56[0] = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11ShaderGraph11DebugConfigO5GroupOG_SSs5NeverOTg504_s11d7Graph11fg17O9debugModeShyAC5H72OGvpZfiAGyXEfU_SSAFcfu1_32fca4dd16cfbb9a2e4a4875ed65f685b6AFSSTf3nnnpk_nTf1cn_n(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;

  MEMORY[0x266771550](v30, v32);

  MEMORY[0x266771550](93, 0xE100000000000000);
  v34 = v57;
  v33 = v58;
  if (specialized Set.contains(_:)(0, v29))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, logger);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56[0] = v39;
      *v38 = 136315394;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v10, v56);

      *(v38 + 4) = v40;
      *(v38 + 12) = 2080;
      v41 = *(v29 + 16);

      if (v41 < 2)
      {

        v42 = 0;
        v43 = 0xE000000000000000;
      }

      else
      {
        v57 = 8316;
        v58 = 0xE200000000000000;
        MEMORY[0x266771550](v34, v33);

        v42 = v57;
        v43 = v58;
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v56);

      *(v38 + 14) = v51;
      _os_log_impl(&dword_265D7D000, v36, v37, "DebugMode (%s): none %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v39, -1, -1);
      MEMORY[0x266773120](v38, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84FA0];
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, logger);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v47 = 136315394;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v10, &v57);

    *(v47 + 4) = v49;
    *(v47 + 12) = 2080;
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v57);

    *(v47 + 14) = v50;
    _os_log_impl(&dword_265D7D000, v45, v46, "DebugMode (%s): %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v48, -1, -1);
    MEMORY[0x266773120](v47, -1, -1);
  }

  else
  {
  }

  return v29;
}

uint64_t static DebugConfig.debugMode.getter()
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DebugConfig.debugMode.setter(uint64_t a1)
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DebugConfig.debugMode = a1;
}

uint64_t (*static DebugConfig.debugMode.modify())()
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t key path getter for static DebugConfig.debugMode : DebugConfig.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DebugConfig.debugMode;
}

uint64_t key path setter for static DebugConfig.debugMode : DebugConfig.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for debugMode;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DebugConfig.debugMode = v1;
}

id one-time initialization function for tier1SupportOverrideEnabled()
{
  result = closure #1 in variable initialization expression of static DebugConfig.tier1SupportOverrideEnabled();
  static DebugConfig.tier1SupportOverrideEnabled = result & 1;
  return result;
}

id closure #1 in variable initialization expression of static DebugConfig.tier1SupportOverrideEnabled()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x266771450](0xD000000000000030, 0x8000000265F2E920);
    v3 = [v1 BOOLForKey_];
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v2 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_265D7D000, v2, v5, "Failed to construct UserDefaults(suiteName: nil)", v6, 2u);
      MEMORY[0x266773120](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t static DebugConfig.tier1SupportOverrideEnabled.getter()
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DebugConfig.tier1SupportOverrideEnabled;
}

uint64_t static DebugConfig.tier1SupportOverrideEnabled.setter(char a1)
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DebugConfig.tier1SupportOverrideEnabled = a1 & 1;
  return result;
}

uint64_t (*static DebugConfig.tier1SupportOverrideEnabled.modify())()
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

uint64_t key path getter for static DebugConfig.tier1SupportOverrideEnabled : DebugConfig.Type@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = static DebugConfig.tier1SupportOverrideEnabled;
  return result;
}

uint64_t key path setter for static DebugConfig.tier1SupportOverrideEnabled : DebugConfig.Type(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DebugConfig.tier1SupportOverrideEnabled = v1;
  return result;
}

unint64_t specialized DebugConfig.Group.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DebugConfig.Group.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DebugConfig.Group and conformance DebugConfig.Group()
{
  result = lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group;
  if (!lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group;
  if (!lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group);
  }

  return result;
}

uint64_t FunctionConstantValue.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::Int one-time initialization function for supportedTypes()
{
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo10SGDataTypeV_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedTypes);
  static FunctionConstantValue.supportedTypes = result;
  return result;
}

uint64_t *FunctionConstantValue.supportedTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedTypes != -1)
  {
    swift_once();
  }

  return &static FunctionConstantValue.supportedTypes;
}

uint64_t static FunctionConstantValue.supportedTypes.getter()
{
  if (one-time initialization token for supportedTypes != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FunctionConstantValue.CodingKeys()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x656761726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FunctionConstantValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized FunctionConstantValue.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionConstantValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FunctionConstantValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FunctionConstantValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v16[0] = v3[2];
    v18 = 1;
    type metadata accessor for SGDataType(0);
    lazy protocol witness table accessor for type SGDataType and conformance SGDataType(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 5);
    v16[2] = *(v3 + 4);
    v16[3] = v13;
    v17 = *(v3 + 96);
    v14 = *(v3 + 3);
    v16[0] = *(v3 + 2);
    v16[1] = v14;
    v18 = 2;
    lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage()
{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage);
  }

  return result;
}

__n128 FunctionConstantValue.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized FunctionConstantValue.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

__n128 FunctionConstantValue.init(name:type:storage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v6[8] = *a4;
  *&v6[24] = *(a4 + 16);
  *&v6[40] = *(a4 + 32);
  *&v6[56] = *(a4 + 48);
  v6[72] = *(a4 + 64);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = *v6;
  result = *&v6[32];
  *(a5 + 81) = *&v6[57];
  *(a5 + 72) = *&v6[48];
  *(a5 + 56) = *&v6[32];
  *(a5 + 40) = *&v6[16];
  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance FunctionConstantValue@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized FunctionConstantValue.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

id static SGREMaterialFunctionConstantValues.unarchive(from:)(uint64_t a1, id a2)
{
  v4 = type metadata accessor for PropertyListDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
  lazy protocol witness table accessor for type [FunctionConstantValue] and conformance <A> [A]();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    v7 = *&v29[0];
    if (one-time initialization token for empty != -1)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v8 = *(v7 + 16);
      a2 = static SGREMaterialFunctionConstantValues.empty;
      if (!v8)
      {
        break;
      }

      v9 = 0;
      v10 = 32;
      while (v9 < *(v7 + 16))
      {
        v11 = *(v7 + v10);
        v12 = *(v7 + v10 + 32);
        v29[1] = *(v7 + v10 + 16);
        v29[2] = v12;
        v29[0] = v11;
        v13 = *(v7 + v10 + 48);
        v14 = *(v7 + v10 + 64);
        v15 = *(v7 + v10 + 80);
        v30 = *(v7 + v10 + 96);
        v29[4] = v14;
        v29[5] = v15;
        v29[3] = v13;
        v16 = *(v7 + v10 + 80);
        v26 = *(v7 + v10 + 64);
        v27 = v16;
        v28 = *(v7 + v10 + 96);
        v17 = *(v7 + v10 + 16);
        v22 = *(v7 + v10);
        v23 = v17;
        v18 = *(v7 + v10 + 48);
        v24 = *(v7 + v10 + 32);
        v25 = v18;
        outlined init with copy of FunctionConstantValue(v29, v20);
        closure #1 in static SGREMaterialFunctionConstantValues.unarchive(from:)(&v22, a2);
        ++v9;
        v20[4] = v26;
        v20[5] = v27;
        v21 = v28;
        v20[0] = v22;
        v20[1] = v23;
        v20[2] = v24;
        v20[3] = v25;
        outlined destroy of FunctionConstantValue(v20);
        v10 += 112;
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      swift_once();
    }

LABEL_7:
  }

  return a2;
}

uint64_t closure #1 in static SGREMaterialFunctionConstantValues.unarchive(from:)(int8x8_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[4];
  v6 = a1[12].u8[0];
  if (v6 <= 7)
  {
    if (a1[12].u8[0] <= 3u)
    {
      if (a1[12].i8[0])
      {
        if (v6 != 2)
        {
          goto LABEL_27;
        }

        v12 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
        swift_beginAccess();
        v13 = *(a2 + v12);

        v14 = v13;
        v15.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
      }

      else
      {
        v20 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
        swift_beginAccess();
        v14 = *(a2 + v20);

        v15.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      }
    }

    else
    {
      if (v6 != 4)
      {
        if (v6 != 5)
        {
          if (v6 == 7)
          {
            v7 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
            swift_beginAccess();
            v8 = *(a2 + v7);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_265F21D90;
            *(v9 + 32) = v5;
LABEL_25:

            v36 = v8;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v36 __swift_setObject_forKeyedSubscript_];

            return swift_unknownObjectRelease();
          }

          goto LABEL_27;
        }

        v30 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
        swift_beginAccess();
        v31 = *(a2 + v30);

        v32 = v31;
        v33 = Float._bridgeToObjectiveC()().super.super.isa;
        [v32 __swift_setObject_forKeyedSubscript_];

        return swift_unknownObjectRelease();
      }

      v25 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
      swift_beginAccess();
      v26 = *(a2 + v25);

      v14 = v26;
      v15.super.super.isa = UInt16._bridgeToObjectiveC()().super.super.isa;
    }

    v27 = v15.super.super.isa;
    [v14 __swift_setObject_forKeyedSubscript_];

    return swift_unknownObjectRelease();
  }

  if (a1[12].u8[0] <= 9u)
  {
    if (v6 == 8)
    {
      v21 = a1[4];
      v22 = a1[5];
      v23 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
      swift_beginAccess();
      v8 = *(a2 + v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_265F21D80;
      *(v24 + 32) = v5.i32[0];
      *(v24 + 36) = vext_s8(v5, v22, 4uLL);
      goto LABEL_25;
    }

    if (v6 == 9)
    {
      v16 = a1[4];
      v17 = a1[5];
      v18 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
      swift_beginAccess();
      v8 = *(a2 + v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_265F21D70;
      *(v19 + 32) = v5.i32[0];
      *(v19 + 36) = vext_s8(v5, v17, 4uLL);
      *(v19 + 44) = vdupq_n_s64(v17).i32[3];
      goto LABEL_25;
    }
  }

  else
  {
    switch(v6)
    {
      case 0xAu:
        v28 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
        swift_beginAccess();
        v8 = *(a2 + v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_265F21D90;
        *(v29 + 32) = v5.i32[0];
        goto LABEL_25;
      case 0xBu:
        v42 = a1[4];
        v34 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
        swift_beginAccess();
        v8 = *(a2 + v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_265F21D80;
        *(v35 + 32) = v5.i16[0];
        *(v35 + 34) = *(v42.i32 + 2);
        goto LABEL_25;
      case 0xCu:
        v41 = a1[4];
        v10 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
        swift_beginAccess();
        v8 = *(a2 + v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_265F21D70;
        *(v11 + 32) = v5.i16[0];
        *(v11 + 34) = v41.i16[1];
        *(v11 + 36) = v41.i32[1];
        goto LABEL_25;
    }
  }

LABEL_27:
  v39 = a1[2];
  _StringGuts.grow(_:)(39);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2EA30);
  MEMORY[0x266771550](*&v4, *&v3);
  MEMORY[0x266771550](0x203A657079742029, 0xE800000000000000);
  type metadata accessor for SGDataType(0);
  _print_unlocked<A, B>(_:_:)();
  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v40 = 0;
  *(v40 + 8) = 0xE000000000000000;
  *(v40 + 16) = 11;
  return swift_willThrow();
}

void mergeFunctionConstants(from:scalars:vectors:)(unint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v8 = MEMORY[0x277D84F90];
    v53 = v6;
    v54 = v4;
    if (i)
    {
      *&v73 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        goto LABEL_74;
      }

      v8 = v73;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = 0;
        v4 = &OBJC_IVAR___SGInput_name;
        do
        {
          v9 = (MEMORY[0x266772030](v6, a1) + OBJC_IVAR___SGInput_name);
          swift_beginAccess();
          v10 = *v9;
          v11 = v9[1];

          swift_unknownObjectRelease();
          *&v73 = v8;
          v13 = *(v8 + 16);
          v12 = *(v8 + 24);
          if (v13 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
            v8 = v73;
          }

          ++v6;
          *(v8 + 16) = v13 + 1;
          v14 = v8 + 16 * v13;
          *(v14 + 32) = v10;
          *(v14 + 40) = v11;
        }

        while (i != v6);
      }

      else
      {
        v4 = a1 + 32;
        do
        {
          v15 = (*v4 + OBJC_IVAR___SGInput_name);
          swift_beginAccess();
          v16 = *v15;
          v6 = v15[1];
          *&v73 = v8;
          v18 = *(v8 + 16);
          v17 = *(v8 + 24);

          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
            v8 = v73;
          }

          *(v8 + 16) = v18 + 1;
          v19 = v8 + 16 * v18;
          *(v19 + 32) = v16;
          *(v19 + 40) = v6;
          v4 += 8;
          --i;
        }

        while (i);
      }
    }

    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v8);

    v21 = [a2 allKeys];
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = *(v22 + 16);
    if (v55)
    {
      v6 = 0;
      v4 = v20 + 56;
      while (1)
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_71;
        }

        outlined init with copy of Any(v22 + 32 + 32 * v6, &v66);
        outlined init with copy of Any(&v66, &v73);
        if (!swift_dynamicCast())
        {
          break;
        }

        v23 = *(&v59 + 1);
        v24 = v59;
        if (!*(v20 + 16) || (v25 = *(v20 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v26 = Hasher._finalize()(), v27 = -1 << *(v20 + 32), v28 = v26 & ~v27, ((*(v4 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
        {
LABEL_29:

          *&v73 = 0;
          *(&v73 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v32 = "Unknown scalar FunctionConstant name: ";
LABEL_45:
          *&v73 = 0xD000000000000026;
          *(&v73 + 1) = (v32 - 32) | 0x8000000000000000;
          MEMORY[0x266771550](v24, v23);

          goto LABEL_46;
        }

        ++v6;
        v29 = ~v27;
        while (1)
        {
          v30 = (*(v20 + 48) + 16 * v28);
          v31 = *v30 == v59 && v30[1] == *(&v59 + 1);
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v4 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v66);
        if (v6 == v55)
        {
          goto LABEL_30;
        }
      }

LABEL_68:

      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2E960);
LABEL_46:
      v42 = v73;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      swift_allocError();
      *v43 = v42;
      *(v43 + 16) = 22;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(&v66);
      return;
    }

LABEL_30:

    v33 = [a3 allKeys];
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = *(v34 + 16);
    if (v56)
    {
      break;
    }

LABEL_48:

    if (v53)
    {
      v44 = __CocoaSet.count.getter();
      v45 = v54;
      if (!v44)
      {
        return;
      }
    }

    else
    {
      v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = v54;
      if (!v44)
      {
        return;
      }
    }

    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x266772030](v46, a1);
      }

      else
      {
        if (v46 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v48 = *(a1 + 8 * v46 + 32);
      }

      v6 = v48;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v80 = v48;
      closure #3 in mergeFunctionConstants(from:scalars:vectors:)(&v80, a2, a3, &v73);
      if (v45)
      {

        return;
      }

      if (*(&v73 + 1))
      {
        v70 = v77;
        v71 = v78;
        v72 = v79;
        v66 = v73;
        v67 = v74;
        v68 = v75;
        v69 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        }

        v4 = *(v47 + 2);
        v50 = *(v47 + 3);
        v6 = v4 + 1;
        if (v4 >= v50 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v4 + 1, 1, v47);
        }

        v63 = v70;
        v64 = v71;
        v65 = v72;
        v61 = v68;
        v62 = v69;
        v51 = v66;
        v59 = v66;
        v60 = v67;
        *(v47 + 2) = v6;
        v52 = &v47[112 * v4];
        *(v52 + 3) = v60;
        *(v52 + 4) = v61;
        v52[128] = v65;
        *(v52 + 6) = v63;
        *(v52 + 7) = v64;
        *(v52 + 5) = v62;
        *(v52 + 2) = v51;
      }

      else
      {
        v70 = v77;
        v71 = v78;
        v72 = v79;
        v66 = v73;
        v67 = v74;
        v68 = v75;
        v69 = v76;
        outlined destroy of FunctionConstantValue?(&v66);
      }

      ++v46;
      if (v49 == v44)
      {
        return;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

  v6 = 0;
  v4 = v20 + 56;
  while (v6 < *(v34 + 16))
  {
    outlined init with copy of Any(v34 + 32 + 32 * v6, &v66);
    outlined init with copy of Any(&v66, &v73);
    if (!swift_dynamicCast())
    {
      goto LABEL_68;
    }

    v23 = *(&v59 + 1);
    v24 = v59;
    if (!*(v20 + 16) || (v35 = *(v20 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v36 = Hasher._finalize()(), v37 = -1 << *(v20 + 32), v38 = v36 & ~v37, ((*(v4 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0))
    {
LABEL_44:

      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v32 = "Unknown vector FunctionConstant name: ";
      goto LABEL_45;
    }

    ++v6;
    v39 = ~v37;
    while (1)
    {
      v40 = (*(v20 + 48) + 16 * v38);
      v41 = *v40 == v59 && v40[1] == *(&v59 + 1);
      if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v38 = (v38 + 1) & v39;
      if (((*(v4 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v66);
    if (v6 == v56)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t closure #3 in mergeFunctionConstants(from:scalars:vectors:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = (*a1 + OBJC_IVAR___SGInput_name);
  v10 = v9[1];
  *&v43[0] = *v9;
  *(&v43[0] + 1) = v10;

  v11 = [a2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v43, v44);
    outlined init with copy of Any(v44, v43);
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v12 = v40;
      if (one-time initialization token for supportedTypes != -1)
      {
        swift_once();
      }

      v13 = static FunctionConstantValue.supportedTypes;
      v14 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      if (specialized Set.contains(_:)(*(v8 + v14), v13))
      {
        specialized SGDataTypeStorage.init(type:scalar:)(v40, *(v8 + v14), v45);

        result = __swift_destroy_boxed_opaque_existential_1Tm(v44);
        if (v4)
        {
          return result;
        }

        v16 = *(v8 + v14);
        v17 = v9[1];
        *&v38[8] = v45[0];
        v38[72] = v46;
        *&v38[56] = v45[3];
        *&v38[40] = v45[2];
        *&v38[24] = v45[1];
        *a4 = *v9;
        *(a4 + 8) = v17;
        *(a4 + 16) = v16;
        v18 = *&v38[16];
        *(a4 + 24) = *v38;
        v19 = *&v38[32];
        v20 = *&v38[48];
        v21 = *&v38[57];
LABEL_15:
        *(a4 + 81) = v21;
        *(a4 + 72) = v20;
        *(a4 + 56) = v19;
        *(a4 + 40) = v18;
      }

LABEL_21:
      v41 = *v9;
      v42 = v9[1];

      MEMORY[0x266771550](58, 0xE100000000000000);
      v31 = *(v8 + v14);
      v32 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v32);

      MEMORY[0x266771550](2112800, 0xE300000000000000);
      v33 = [v12 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      MEMORY[0x266771550](v34, v36);

      lazy protocol witness table accessor for type APIError and conformance APIError();
      swift_allocError();
      *v37 = v41;
      *(v37 + 8) = v42;
      *(v37 + 16) = 22;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v44);
    }

    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x266771550](0xD00000000000001DLL, 0x8000000265F2EA10);
    _print_unlocked<A, B>(_:_:)();
    v27 = v43[0];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v28 = v27;
    v29 = 2;
  }

  else
  {
    v22 = v9[1];
    *&v43[0] = *v9;
    *(&v43[0] + 1) = v22;

    v23 = [a3 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v23)
    {
      *(a4 + 96) = 0;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v43, v44);
    outlined init with copy of Any(v44, v43);
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    if (swift_dynamicCast())
    {
      v12 = v40;
      if (one-time initialization token for supportedTypes != -1)
      {
        swift_once();
      }

      v24 = static FunctionConstantValue.supportedTypes;
      v14 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      if (specialized Set.contains(_:)(*(v8 + v14), v24))
      {
        specialized SGDataTypeStorage.init(type:value:)(*(v8 + v14), v40, v47);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v44);
        if (v4)
        {
          return result;
        }

        v25 = *(v8 + v14);
        v26 = v9[1];
        *&v39[8] = v47[0];
        v39[72] = v48;
        *&v39[56] = v47[3];
        *&v39[40] = v47[2];
        *&v39[24] = v47[1];
        *a4 = *v9;
        *(a4 + 8) = v26;
        *(a4 + 16) = v25;
        v18 = *&v39[16];
        *(a4 + 24) = *v39;
        v19 = *&v39[32];
        v20 = *&v39[48];
        v21 = *&v39[57];
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    MEMORY[0x266771550](0xD000000000000027, 0x8000000265F2E9E0);
    _print_unlocked<A, B>(_:_:)();
    v30 = v43[0];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v28 = v30;
    v29 = 3;
  }

  *(v28 + 16) = v29;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t specialized FunctionConstantValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized FunctionConstantValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMR);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  LOBYTE(v25[0]) = 0;
  v11 = v37;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = v12;
  type metadata accessor for SGDataType(0);
  LOBYTE(v23) = 1;
  lazy protocol witness table accessor for type SGDataType and conformance SGDataType(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v25[0];
  v30 = 2;
  lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v8, v11);
  *&v36[8] = v31;
  *&v36[24] = v32;
  *&v36[40] = v33;
  *&v36[56] = v34;
  v36[72] = v35;
  v15 = v21;
  v16 = v22;
  *&v23 = v22;
  *(&v23 + 1) = v14;
  *&v24[0] = v21;
  *(v24 + 8) = *v36;
  *(&v24[4] + 1) = *&v36[57];
  *(&v24[3] + 8) = *&v36[48];
  *(&v24[2] + 8) = *&v36[32];
  *(&v24[1] + 8) = *&v36[16];
  outlined init with copy of FunctionConstantValue(&v23, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v25[0] = v16;
  v25[1] = v14;
  v25[2] = v15;
  v27 = *&v36[16];
  v28 = *&v36[32];
  v29[0] = *&v36[48];
  *(v29 + 9) = *&v36[57];
  v26 = *v36;
  result = outlined destroy of FunctionConstantValue(v25);
  v18 = v24[4];
  *(a2 + 64) = v24[3];
  *(a2 + 80) = v18;
  *(a2 + 96) = v24[5];
  v19 = v24[0];
  *a2 = v23;
  *(a2 + 16) = v19;
  v20 = v24[2];
  *(a2 + 32) = v24[1];
  *(a2 + 48) = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type [FunctionConstantValue] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
    lazy protocol witness table accessor for type FunctionConstantValue and conformance FunctionConstantValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
    lazy protocol witness table accessor for type FunctionConstantValue and conformance FunctionConstantValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionConstantValue and conformance FunctionConstantValue()
{
  result = lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue);
  }

  return result;
}

uint64_t outlined destroy of FunctionConstantValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph21FunctionConstantValueVSgMd, &_s11ShaderGraph21FunctionConstantValueVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy97_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FunctionConstantValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for FunctionConstantValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for NSArray(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type SGDataType and conformance SGDataType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SGDataType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v50 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v44 = *(AssociatedTypeWitness - 8);
  v14 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  swift_getAssociatedConformanceWitness();
  v47 = type metadata accessor for Range();
  v45 = *(v47 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v22 = &v39 - v21;
  dispatch thunk of Collection.startIndex.getter();
  v51 = v4;
  v48 = v6;
  v49 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v44;
    v25 = *(v44 + 32);
    v25(v13, v19, AssociatedTypeWitness);
    v26 = TupleTypeMetadata2;
    v25(&v13[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
    v27 = v25;
    v28 = v46;
    v29 = v42;
    (*(v46 + 16))(v42, v13, v26);
    v40 = *(v26 + 48);
    v27(v22, v29, AssociatedTypeWitness);
    v41 = v27;
    v30 = *(v24 + 8);
    v30(&v29[v40], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v13, v26);
    v31 = v47;
    v27(&v22[*(v47 + 36)], &v29[*(v26 + 48)], AssociatedTypeWitness);
    v30(v29, AssociatedTypeWitness);
    v32 = v51;
    v33 = v52;
    v34 = v49;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v35 = v45;
    (*(v45 + 8))(v22, v31);
    v36 = type metadata accessor for Slice();
    v37 = v50;
    (*(*(v34 - 8) + 16))(&v50[*(v36 + 40)], v32, v34);
    (*(v35 + 16))(v22, v33, v31);
    v38 = v41;
    v41(v37, v22, AssociatedTypeWitness);
    return v38(&v37[*(v36 + 36)], &v22[*(v31 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence._bounds.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence._bounds.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.init(_base:bounds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.keys.getter(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  return OrderedSet.subscript.getter(v1[3], v1[4], *v1);
}

double OrderedDictionary.Elements.SubSequence.values.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v13 = *(v2 + 3);
  v17 = v4;
  v18 = *(v2 + 1);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = type metadata accessor for OrderedDictionary.Values();
  WitnessTable = swift_getWitnessTable();
  MutableCollection<>.subscript.getter(&v13, v8, WitnessTable, &v14);
  v10 = v15;
  result = *&v14;
  v12 = v16;
  *a2 = v14;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.index(forKey:)(uint64_t a1, uint64_t a2)
{
  result = OrderedSet._find(_:)(a1, *v2, v2[1], *(a2 + 16), *(a2 + 32));
  if ((v4 & 1) == 0 && (result < v2[3] || result >= v2[4]))
  {
    return 0;
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence._base.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  return v1;
}

uint64_t OrderedDictionary.Elements.SubSequence._base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  v8 = v3[1];

  v9 = v3[2];

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

int8x16_t OrderedDictionary.Elements.SubSequence.Iterator.init(_base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  *(a2 + 24) = result;
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v4 = v2[4];
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = TupleTypeMetadata2;
  if (v4 >= v5)
  {
    v17 = *(*(TupleTypeMetadata2 - 8) + 56);

    return v17(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v10 = *(TupleTypeMetadata2 + 48);
    v11 = v2[1];
    ContiguousArray.subscript.getter();
    v12 = v2[2];
    ContiguousArray.subscript.getter();
    result = (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    v14 = v2[4];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      v2[4] = v16;
    }
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
}

int8x16_t protocol witness for Sequence.makeIterator() in conformance OrderedDictionary<A, B>.Elements.SubSequence@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  *(a1 + 24) = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = specialized Collection._copyToContiguousArray()(v1, a1, WitnessTable);
  v5 = *v1;

  v6 = v1[1];

  v7 = v1[2];

  return v4;
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.Elements.SubSequence.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedDictionary.Elements.SubSequence.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedDictionary.Elements.SubSequence.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4[3] > a3 || v4[4] <= a3)
  {
    __break(1u);
  }

  else
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = *(a4 + 16);
    ContiguousArray.subscript.getter();
    v10 = *(a4 + 24);

    return ContiguousArray.subscript.getter();
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (v3[3] > result || v3[4] < a2)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = v3[2];
    *a3 = v5;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = result;
    a3[4] = a2;
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.count.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  v9 = v8;
  *a1 = v8;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 72) = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  *(v9 + 80) = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  *(v9 + 88) = v14;
  v16 = *a2;
  v17 = *(v3 + 16);
  *v9 = *v3;
  *(v9 + 16) = v17;
  *(v9 + 32) = *(v3 + 32);
  v18 = OrderedDictionary.Elements.SubSequence.subscript.read((v9 + 40), v16, a3);
  v20 = v19;
  *(v9 + 96) = v18;
  (*(*(v11 - 8) + 16))(v15);
  (*(*(v10 - 8) + 16))(v15 + *(TupleTypeMetadata2 + 48), v20, v10);
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements.SubSequence;
}

void protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 40;
  (*(*(*a1 + 80) + 8))(*(*a1 + 88), *(*a1 + 72));
  v5 = *(v3 + 88);
  (*(v3 + 96))(v4, a2);
  free(v5);

  free(v3);
}

void (*OrderedDictionary.Elements.SubSequence.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  a1[1] = v9;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  OrderedDictionary.Elements.SubSequence.subscript.getter(v10, v10 + *(TupleTypeMetadata2 + 48), a2, a3);
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

double protocol witness for Collection.subscript.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OrderedDictionary.Elements.SubSequence.subscript.getter(*a1, a1[1], v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

__n128 protocol witness for Collection.indices.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for ClosedRange() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary.Elements.SubSequence()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for OrderedDictionary.Elements.SubSequence.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OrderedDictionary.Elements.SubSequence(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for OrderedDictionary.Elements.SubSequence(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OrderedSet.init<A>(uncheckedUniqueElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v11 = Array.init<A>(_:)();
  v21 = v11;
  v12 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v13 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v15 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v21, 0, 1, v12, v13, WitnessTable, a4);
  v16 = ContiguousArray.count.getter();
  v17 = 0;
  if (v16 >= 16)
  {

    v17 = v15;
  }

  v18 = OrderedSet.init(_uniqueElements:_:)(v11, v17);

  (*(v7 + 8))(a1, a3);
  return v18;
}

uint64_t OrderedSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v15 = type metadata accessor for OrderedSet();
  if (v15 == a3)
  {
    (*(v8 + 32))(v14, a1, a3);
    swift_dynamicCast();
    return v28[0];
  }

  if (type metadata accessor for Set() != a3 && type metadata accessor for OrderedSet.SubSequence() != a3)
  {
    v28[0] = OrderedSet.init()(a2);
    v28[1] = v16;
    OrderedSet.append<A>(contentsOf:)(a1, v15, a3);
    (*(v8 + 8))(a1, a3);
    return v28[0];
  }

  v17 = *(v8 + 16);
  v17(v11, a1, a3);
  v17(v14, v11, a3);
  v18 = Array.init<A>(_:)();
  v28[0] = v18;
  v19 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v20 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v22 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(v28, 0, 1, v19, v20, WitnessTable, a4);
  v23 = ContiguousArray.count.getter();
  v24 = 0;
  if (v23 >= 16)
  {

    v24 = v22;
  }

  v25 = OrderedSet.init(_uniqueElements:_:)(v18, v24);

  v26 = *(v8 + 8);
  v26(a1, a3);
  v26(v11, a3);
  return v25;
}

uint64_t OrderedSet.init(_:)(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5, uint64_t a6)
{
  specialized OrderedSet.SubSequence._slice.getter(a1, a2, a3, a4, a5);
  v19[1] = v7;
  v19[2] = v8;
  v19[3] = v9;
  type metadata accessor for ArraySlice();
  swift_unknownObjectRetain_n();
  swift_getWitnessTable();
  v10 = Array.init<A>(_:)();
  v19[0] = v10;
  v11 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v12 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v14 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(v19, 0, 1, v11, v12, WitnessTable, a6);
  v15 = ContiguousArray.count.getter();
  v16 = 0;
  if (v15 >= 16)
  {

    v16 = v14;
  }

  v17 = OrderedSet.init(_uniqueElements:_:)(v10, v16);

  swift_unknownObjectRelease();

  return v17;
}

uint64_t OrderedSet.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Set();

  swift_getWitnessTable();
  v4 = Array.init<A>(_:)();
  v13 = v4;
  v5 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v6 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v8 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v13, 0, 1, v5, v6, WitnessTable, a3);
  v9 = ContiguousArray.count.getter();
  v10 = 0;
  if (v9 >= 16)
  {

    v10 = v8;
  }

  v11 = OrderedSet.init(_uniqueElements:_:)(v4, v10);

  return v11;
}

uint64_t OrderedSet.init<A>(_:)()
{
  v0 = specialized OrderedSet.init<A>(_:)();

  return v0;
}

uint64_t OrderedSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a2;
  v9 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for PartialRangeFrom();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v13;
  v68 = swift_getAssociatedTypeWitness();
  v63 = *(v68 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v55 - v15;
  v16 = type metadata accessor for PartialRangeUpTo();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  v64 = &v55 - v18;
  v69 = *(a3 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v55 - v29;
  v31 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v73 = a4;
  v72 = static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(v30, a1, 0, 1, v31, a3, a5, a4);
  v32 = a1;
  v33 = v9;
  dispatch thunk of Collection.endIndex.getter();
  AssociatedConformanceWitness = *(AssociatedConformanceWitness + 8);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = v23;
  v35 = v23 + 8;
  v36 = *(v23 + 8);
  v37 = v27;
  v38 = v35;
  v36(v37, AssociatedTypeWitness);
  if (a1)
  {
    v39 = v69;
    (*(v69 + 16))(v22, v32, a3);
    v40 = *(v33 + 8);
    v41 = Array.init<A>(_:)();
    v42 = OrderedSet.init(_uniqueElements:_:)(v41, v72);
    (*(v39 + 8))(v32, a3);
    v36(v30, AssociatedTypeWitness);
    return v42;
  }

  v56 = v36;
  v57 = v38;
  v58 = v33;
  v59 = v32;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v44 = v64;
  v55 = *(v34 + 16);
  v55(v64, v30, AssociatedTypeWitness);
  v45 = v66;
  swift_getWitnessTable();
  v46 = v67;
  v47 = v59;
  Collection.subscript.getter();
  (*(v65 + 8))(v44, v45);
  v48 = a3;
  v66 = *(swift_getAssociatedConformanceWitness() + 8);
  v49 = Array.init<A>(_:)();
  v74 = OrderedSet.init(_uniqueElements:_:)(v49, v72);
  v75 = v50;

  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v51 = v60;
  v55(v60, v30, AssociatedTypeWitness);
  v52 = v62;
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(v61 + 8))(v51, v52);
  v53 = type metadata accessor for OrderedSet();
  v54 = v68;
  OrderedSet.append<A>(contentsOf:)(v46, v53, v68);

  (*(v69 + 8))(v47, v48);
  (*(v63 + 8))(v46, v54);
  v56(v30, AssociatedTypeWitness);
  return v74;
}

uint64_t specialized OrderedSet.init<A>(_:)()
{
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Array.init<A>(_:)();
  type metadata accessor for OrderedSet();
  OrderedSet._regenerateHashTable()();
  return 0;
}

uint64_t MetalDataType.referenceTo(withAddressSpace:)(unsigned __int8 a1)
{
  v3 = (*(*v1 + 200))();
  type metadata accessor for MetalDataType.Reference();
  swift_allocObject();

  v5 = specialized MetalDataType.Reference.init(to:isConst:addressSpace:)(v4, v3 & 1, a1);

  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J8VAKXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v22 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_24;
    }

    v23 = *(a1 + 36);
    outlined init with copy of (MetalDataType, Any?)?(*(a1 + 56) + 40 * v7, v26);
    outlined init with copy of (MetalDataType, Any?)?(v26, &v24);
    if (v24)
    {
      v12 = *(v24 + 56);

      outlined destroy of [Input](&v25, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      outlined destroy of [Input](&v24, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
      v12 = 0;
    }

    result = outlined destroy of [Input](v26, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
    v27 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v2 = v27;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 4 * v14 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_25;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v11);
    if ((v15 & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v16 = v15 & (-2 << (v7 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v22;
    }

    else
    {
      v17 = v11 << 6;
      v18 = v11 + 1;
      v10 = v22;
      v19 = (a1 + 72 + 8 * v11);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of [String : String].Index._Variant(v7, v23, 0);
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v7, v23, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v2;
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J9VAKXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v22 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_24;
    }

    v23 = *(a1 + 36);
    outlined init with copy of (MetalDataType, Any?)?(*(a1 + 56) + 40 * v7, v26);
    outlined init with copy of (MetalDataType, Any?)?(v26, &v24);
    if (v24)
    {
      v12 = *(v24 + 60);

      outlined destroy of [Input](&v25, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      outlined destroy of [Input](&v24, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
      v12 = 0;
    }

    result = outlined destroy of [Input](v26, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
    v27 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v2 = v27;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 4 * v14 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_25;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v11);
    if ((v15 & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v16 = v15 & (-2 << (v7 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v22;
    }

    else
    {
      v17 = v11 << 6;
      v18 = v11 + 1;
      v10 = v22;
      v19 = (a1 + 72 + 8 * v11);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of [String : String].Index._Variant(v7, v23, 0);
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v7, v23, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v2;
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

uint64_t *MetalDataType.sampler.unsafeMutableAddressor()
{
  if (one-time initialization token for sampler != -1)
  {
    swift_once();
  }

  return &static MetalDataType.sampler;
}

uint64_t *MetalDataType.void.unsafeMutableAddressor()
{
  if (one-time initialization token for void != -1)
  {
    swift_once();
  }

  return &static MetalDataType.void;
}

uint64_t *MetalDataType.texture2d_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_float;
}

uint64_t *MetalDataType.texture2d_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_half;
}

uint64_t *MetalDataType.texture2d_int.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_int;
}

uint64_t *MetalDataType.texture2darray_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_float;
}

uint64_t *MetalDataType.texture2darray_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_half;
}

uint64_t *MetalDataType.texture2darray_int.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_int != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_int;
}

uint64_t *MetalDataType.texturecube_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texturecube_float;
}

uint64_t *MetalDataType.texturecube_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texturecube_half;
}

uint64_t *MetalDataType.texture3d_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_float;
}

uint64_t *MetalDataType.texture3d_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_half;
}

uint64_t *MetalDataType.texture3d_int.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_int;
}

Swift::String_optional __swiftcall MetalDataType.textureBaseTypeName()()
{
  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  v0 = 0xE900000000000064;
  v1 = *(*static MetalDataType.texture2d_int + 128);

  LOBYTE(v1) = v1();

  if (v1)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v2) = v2();

  if (v2)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2d_uint + 128);

  LOBYTE(v3) = v3();

  if (v3)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v4) = v4();

  if (v4)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  v5 = *(*static MetalDataType.texture2d_short + 128);

  LOBYTE(v5) = v5();

  if (v5)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  v6 = *(*static MetalDataType.texture2d_ushort + 128);

  LOBYTE(v6) = v6();

  if (v6)
  {
LABEL_19:
    v7 = 0x3265727574786574;
    goto LABEL_20;
  }

  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  v9 = 0x3365727574786574;
  v10 = *(*static MetalDataType.texture3d_int + 128);

  LOBYTE(v10) = v10();

  if (v10)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v11 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v11) = v11();

  if (v11)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  v12 = *(*static MetalDataType.texture3d_uint + 128);

  LOBYTE(v12) = v12();

  if (v12)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v13 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v13) = v13();

  if (v13)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  v14 = *(*static MetalDataType.texture3d_short + 128);

  LOBYTE(v14) = v14();

  if (v14)
  {
LABEL_36:
    v7 = v9;
    goto LABEL_20;
  }

  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  v15 = *(*static MetalDataType.texture3d_ushort + 128);

  LOBYTE(v15) = v15();

  v7 = 0x3365727574786574;
  if ((v15 & 1) == 0)
  {
    if (one-time initialization token for texturecube_half != -1)
    {
      swift_once();
    }

    v0 = 0xEB00000000656275;
    v9 = 0x6365727574786574;
    v16 = *(*static MetalDataType.texturecube_half + 128);

    LOBYTE(v16) = v16();

    if (v16)
    {
      goto LABEL_36;
    }

    if (one-time initialization token for texturecube_float != -1)
    {
      swift_once();
    }

    v17 = *(*static MetalDataType.texturecube_float + 128);

    LOBYTE(v17) = v17();

    v7 = 0x6365727574786574;
    if ((v17 & 1) == 0)
    {
      if (one-time initialization token for depth2d_half != -1)
      {
        swift_once();
      }

      v18 = *(*static MetalDataType.depth2d_half + 128);

      LOBYTE(v18) = v18();

      if (v18)
      {
        goto LABEL_52;
      }

      if (one-time initialization token for depth2d_float != -1)
      {
        swift_once();
      }

      v19 = *(*static MetalDataType.depth2d_float + 128);

      LOBYTE(v19) = v19();

      if (v19)
      {
LABEL_52:
        v0 = 0xE700000000000000;
        v7 = 0x64326874706564;
        goto LABEL_20;
      }

      if (one-time initialization token for texture2darray_half != -1)
      {
        swift_once();
      }

      v20 = *(*static MetalDataType.texture2darray_half + 128);

      LOBYTE(v20) = v20();

      if ((v20 & 1) == 0)
      {
        if (one-time initialization token for texture2darray_float != -1)
        {
          swift_once();
        }

        v21 = *(*static MetalDataType.texture2darray_float + 128);

        v22 = v21();

        if ((v22 & 1) == 0)
        {
          v7 = 0;
          v0 = 0;
          goto LABEL_20;
        }
      }

      v0 = 0xEE00796172726164;
      goto LABEL_19;
    }
  }

LABEL_20:
  v8 = v0;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t calculateOffsets(for:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = (result + 72);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v3 - 5);
    v6 = *(v3 - 4);
    v8 = *(v3 - 3);
    v9 = *(v3 - 2);
    v10 = *(v3 - 8);
    v11 = *(v8 + 60);
    v24 = *v3;
    if (!v11)
    {
      break;
    }

    v12 = v2 % v11;
    if (!(v2 % v11))
    {
      goto LABEL_15;
    }

    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (!v13)
    {
      goto LABEL_24;
    }

    v13 = __CFADD__(v2, v14);
    v2 += v14;
    if (v13)
    {
      goto LABEL_25;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v22 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
    }

    v4[2] = v16 + 1;
    v5 = &v4[7 * v16];
    v5[4] = v22;
    v5[5] = v6;
    v5[6] = v8;
    v5[7] = v9;
    *(v5 + 64) = v10;
    v5[9] = v24;
    *(v5 + 20) = v2;

LABEL_4:
    v3 += 6;
    if (!--v1)
    {
      return v4;
    }
  }

  if (v2)
  {
    goto LABEL_26;
  }

LABEL_15:
  v23 = *(v3 - 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v17 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  }

  v19 = v4[2];
  v18 = v4[3];
  if (v19 >= v18 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v4);
  }

  v4[2] = v19 + 1;
  v20 = &v4[7 * v19];
  v20[4] = v17;
  v20[5] = v6;
  v20[6] = v8;
  v20[7] = v9;
  *(v20 + 64) = v23;
  v20[9] = v24;
  *(v20 + 20) = v2;
  v21 = *(v8 + 56);

  v13 = __CFADD__(v2, v21);
  v2 += v21;
  if (!v13)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t MetalDataType.metalTypeName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MetalDataType.note.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MetalDataType.isConst.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}