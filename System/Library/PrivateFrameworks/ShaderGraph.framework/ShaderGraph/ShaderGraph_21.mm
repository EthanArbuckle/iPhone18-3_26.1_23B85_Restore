uint64_t NodeDefinitionStore.MaterialXDataType.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = result;
  a4[2] = a2;
  return result;
}

uint64_t NodeDefinitionStore.MaterialXDataType.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t static NodeDefinitionStore.MaterialXDataType.Kind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NodeDefinitionStore.MaterialXDataType.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v26);
  v14 = &v21 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v15)
  {
    v29 = 1;
    lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();
    v17 = v26;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v18 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v6, v18);
    return (*(v11 + 8))(v14, v17);
  }

  else
  {
    v28 = 0;
    lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();
    v20 = v26;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v10, v23);
    return (*(v11 + 8))(v14, v20);
  }
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

uint64_t NodeDefinitionStore.MaterialXDataType.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v30 = *(v28 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();
  v17 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v18 = v11;
    v19 = v31;
    v20 = KeyedDecodingContainer.allKeys.getter();
    if (*(v20 + 16) == 1)
    {
      v32 = v20;
      if (*(v20 + 32))
      {
        v36 = 1;
        lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
        v26 = v28;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v30 + 8))(v5, v26);
        (*(v18 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = v34;
      }

      else
      {
        v35 = 0;
        lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v9, v6);
        (*(v18 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = 0;
      }
    }

    else
    {
      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v23 = v22;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v23 = &type metadata for NodeDefinitionStore.MaterialXDataType.Kind;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v18 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDefinitionStore.MaterialXDataType.Kind(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, v4);
}

uint64_t NodeDefinitionStore.MaterialXDataType.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NodeDefinitionStore.MaterialXDataType.description.getter()
{
  if (*v0)
  {
    v1 = 0x7465733A786C746DLL;
  }

  else
  {
    v1 = 0x6D616E3A786C746DLL;
  }

  v3 = v1;
  MEMORY[0x266771550](v0[1], v0[2]);
  MEMORY[0x266771550](41, 0xE100000000000000);
  return v3;
}

uint64_t NodeDefinitionStore.Input.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NodeDefinitionStore.Output.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t NodeDefinitionStore.Output.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v9 = *(v1 + 80);
  v10 = v2;
  v11 = *(v1 + 112);
  v3 = v11;
  v4 = *(v1 + 64);
  v8[0] = *(v1 + 48);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of [Input](v8, &v7, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
}

uint64_t NodeDefinitionStore.Input.defaultGeomProp.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

__n128 NodeDefinitionStore.Output.init(name:type:defaultValue:defaultGeomProp:isUniform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *(a3 + 16);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = *a3;
  *(a8 + 32) = v8;
  v9 = *(a4 + 48);
  *(a8 + 80) = *(a4 + 32);
  *(a8 + 96) = v9;
  *(a8 + 112) = *(a4 + 64);
  result = *(a4 + 16);
  *(a8 + 48) = *a4;
  *(a8 + 64) = result;
  *(a8 + 120) = a5;
  *(a8 + 128) = a6;
  *(a8 + 136) = a7;
  return result;
}

uint64_t NodeDefinitionStore.Node.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NodeDefinitionStore.Node.nodeName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NodeDefinitionStore.Node.inherit.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NodeDefinitionStore.Node.nodeGroup.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NodeDefinitionStore.Node.version.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t NodeDefinitionStore.Node.uiName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t NodeDefinitionStore.Node.availability.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t NodeDefinitionStore.Node.availabilityMessage.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t NodeDefinitionStore.Node.init(nodeDef:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v82 = *(a1 + 16);
  v83[0] = v2;
  v76 = v2;
  v77 = v82;
  v3 = *(a1 + 128);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    outlined init with copy of String(v83, &v65);
    outlined init with copy of String(&v82, &v65);
    v81 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    if (!*(v3 + 16))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v6 = 0;
    v7 = v81;
    v8 = (v3 + 32);
    while (1)
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      *(v75 + 9) = *(v8 + 41);
      v74 = v10;
      v75[0] = v11;
      v73 = v9;
      v12 = v8[1];
      v62 = *v8;
      v63 = v12;
      v64[0] = v8[2];
      *(v64 + 9) = *(v8 + 41);
      outlined init with copy of NodeDef.IOSpec(&v73, &v55);
      closure #1 in NodeDefinitionStore.Node.init(nodeDef:)(&v62, a1, "could not generate type storage for input %s with default value %s for node %s in NodeDefinitionStore. Skipping this node.", &v65);
      v52 = v62;
      v53 = v63;
      v54[0] = v64[0];
      *(v54 + 9) = *(v64 + 9);
      outlined destroy of NodeDef.IOSpec(&v52);
      *v57 = v67;
      *&v57[16] = v68;
      *(v61 + 9) = *(v72 + 9);
      v60 = v71;
      v61[0] = v72[0];
      v58 = v69;
      v59 = v70;
      v55 = v65;
      v56 = v66;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v81 = v7;
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v7 = v81;
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 144 * v14);
      v15[2] = v55;
      v16 = v56;
      v17 = *v57;
      v18 = v58;
      v15[5] = *&v57[16];
      v15[6] = v18;
      v15[3] = v16;
      v15[4] = v17;
      v19 = v59;
      v20 = v60;
      v21 = v61[0];
      *(v15 + 153) = *(v61 + 9);
      v15[8] = v20;
      v15[9] = v21;
      v15[7] = v19;
      if (v4 - 1 == v6)
      {
        break;
      }

      v8 += 4;
      if (++v6 >= *(v3 + 16))
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    outlined init with copy of String(v83, &v65);
    outlined init with copy of String(&v82, &v65);
    v7 = MEMORY[0x277D84F90];
  }

  v22 = *(a1 + 136);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v81 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    if (*(v22 + 16))
    {
      v25 = 0;
      v24 = v81;
      v26 = (v22 + 32);
      do
      {
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[2];
        *(v75 + 9) = *(v26 + 41);
        v74 = v28;
        v75[0] = v29;
        v73 = v27;
        v30 = v26[1];
        v62 = *v26;
        v63 = v30;
        v64[0] = v26[2];
        *(v64 + 9) = *(v26 + 41);
        outlined init with copy of NodeDef.IOSpec(&v73, &v55);
        closure #1 in NodeDefinitionStore.Node.init(nodeDef:)(&v62, a1, "could not generate type storage for output %s with default value %s for node %s in NodeDefinitionStore. Skipping this node.", &v65);
        v52 = v62;
        v53 = v63;
        v54[0] = v64[0];
        *(v54 + 9) = *(v64 + 9);
        outlined destroy of NodeDef.IOSpec(&v52);
        *v57 = v67;
        *&v57[16] = v68;
        *(v61 + 9) = *(v72 + 9);
        v60 = v71;
        v61[0] = v72[0];
        v58 = v69;
        v59 = v70;
        v55 = v65;
        v56 = v66;
        v32 = *(v24 + 16);
        v31 = *(v24 + 24);
        v81 = v24;
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v24 = v81;
        }

        *(v24 + 16) = v32 + 1;
        v33 = (v24 + 144 * v32);
        v33[2] = v55;
        v34 = v56;
        v35 = *v57;
        v36 = v58;
        v33[5] = *&v57[16];
        v33[6] = v36;
        v33[3] = v34;
        v33[4] = v35;
        v37 = v59;
        v38 = v60;
        v39 = v61[0];
        *(v33 + 153) = *(v61 + 9);
        v33[8] = v38;
        v33[9] = v39;
        v33[7] = v37;
        if (v23 - 1 == v25)
        {
          goto LABEL_19;
        }

        v26 += 4;
      }

      while (++v25 < *(v22 + 16));
    }

LABEL_28:
    __break(1u);
    v55 = v62;
    v56 = v63;
    *v57 = v64[0];
    *&v57[9] = *(v64 + 9);
    outlined destroy of NodeDef.IOSpec(&v55);

    __break(1u);
    v55 = v62;
    v56 = v63;
    *v57 = v64[0];
    *&v57[9] = *(v64 + 9);
    outlined destroy of NodeDef.IOSpec(&v55);

    __break(1u);
    return result;
  }

LABEL_19:
  v40 = *(a1 + 120);
  switch(v40)
  {
    case 1:
      v49 = 0;
      v40 = 0;
      v41 = 0xE900000000000064;
      v42 = 0x6574726F70707573;
      break;
    case 2:
      v49 = 0;
      v40 = 0;
      v41 = 0xEB00000000646574;
      v42 = 0x726F707075736E75;
      break;
    case 3:
      v49 = 0;
      v40 = 0;
      v41 = 0xEA00000000006573;
      v42 = 0x61656C6572657270;
      break;
    default:
      v49 = *(a1 + 112);

      v42 = 0x7461636572706564;
      v41 = 0xEA00000000006465;
      break;
  }

  v43 = *(a1 + 48);
  v65 = *(a1 + 32);
  v55 = v43;
  v78 = v65;
  v79 = v43;
  v80 = v43;
  v44 = *(a1 + 80);
  v81 = *(a1 + 88);
  v45 = v81;
  v73 = *(a1 + 96);
  v62 = v73;
  outlined init with copy of [Input](&v55, &v52, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v55, &v52, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v65, &v52, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v81, &v52, &_sSaySSGMd, &_sSaySSGMR);
  outlined init with copy of [Input](&v73, &v52, &_sSSSgMd, &_sSSSgMR);
  result = outlined destroy of NodeDef(a1);
  v47 = v79;
  *(a2 + 32) = v78;
  *(a2 + 48) = v47;
  *(a2 + 64) = v80;
  v48 = v77;
  *a2 = v76;
  *(a2 + 16) = v48;
  *(a2 + 80) = v44;
  *(a2 + 88) = v45;
  *(a2 + 96) = v62;
  *(a2 + 112) = v7;
  *(a2 + 120) = v24;
  *(a2 + 128) = v42;
  *(a2 + 136) = v41;
  *(a2 + 144) = v49;
  *(a2 + 152) = v40;
  return result;
}

uint64_t closure #1 in NodeDefinitionStore.Node.init(nodeDef:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v37 = *(a1 + 40);
  v10 = *(a1 + 48);
  v34 = *(a1 + 56);
  if (!v9)
  {
LABEL_12:
    *v31 = 0u;
    *formata = 0u;
    v18 = -1;
    v28 = 0u;
    v30 = 0u;
    goto LABEL_13;
  }

  v26 = v7;
  v12 = *(a1 + 24);

  if (MaterialXDataType.asMetalDataType.getter())
  {

    NodeDefinitionStore.TypeStorage.init(materialXValue:type:)(v12, v9, v8, v35);
    if (v4)
    {
      v29 = v12;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);

      swift_bridgeObjectRetain_n();

      outlined init with copy of NodeDef(a2, v35);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      swift_bridgeObjectRelease_n();

      outlined destroy of NodeDef(a2);
      v7 = v26;
      if (os_log_type_enabled(v14, v15))
      {
        log = v14;
        v16 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v35[0] = v27;
        *v16 = 136315650;

        v24 = v15;
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v6, v35);

        *(v16 + 4) = v17;
        *(v16 + 12) = 2080;
        *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v9, v35);
        *(v16 + 22) = 2080;
        *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a2, *(a2 + 8), v35);
        _os_log_impl(&dword_265D7D000, log, v24, a3, v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v27, -1, -1);
        MEMORY[0x266773120](v16, -1, -1);
      }

      else
      {
      }

      goto LABEL_12;
    }

    *v31 = v35[1];
    *formata = v35[0];
    v28 = v35[3];
    v30 = v35[2];
    v18 = v36;
  }

  else
  {

    *v31 = 0u;
    *formata = 0u;
    v18 = -1;
    v28 = 0u;
    v30 = 0u;
  }

  v7 = v26;
LABEL_13:
  v19 = v8[3];
  v20 = v8[4];
  v21 = v8[5];

  *a4 = v7;
  *(a4 + 8) = v6;
  *(a4 + 16) = v19;
  *(a4 + 24) = v20;
  *(a4 + 32) = v22;
  *(a4 + 48) = *formata;
  *(a4 + 64) = *v31;
  *(a4 + 80) = v30;
  *(a4 + 96) = v28;
  *(a4 + 112) = v18;
  *(a4 + 120) = v37;
  *(a4 + 128) = v10;
  *(a4 + 136) = v34;
}

ShaderGraph::NodeDefinitionStore::BuiltinGeomProp_optional __swiftcall NodeDefinitionStore.BuiltinGeomProp.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeDefinitionStore.BuiltinGeomProp.init(rawValue:), v3);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t NodeDefinitionStore.BuiltinGeomProp.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0x6E65676E61746962;
  v4 = 0x64726F6F63786574;
  if (v1 != 4)
  {
    v4 = 0x6F6C6F636D6F6567;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C616D726F6ELL;
  if (v1 != 1)
  {
    v5 = 0x746E65676E6174;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ShaderGraph::NodeDefinitionStore::Space_optional __swiftcall NodeDefinitionStore.Space.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeDefinitionStore.Space.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t NodeDefinitionStore.Space.rawValue.getter()
{
  v1 = 0x7463656A626FLL;
  if (*v0 != 1)
  {
    v1 = 0x646C726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t NodeDefinitionStore.GeomProp.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NodeDefinitionStore.GeomProp.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t NodeDefinitionStore.GeomProp.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of GeomPropDef.GeomProp(v2, v3, v4);
}

double NodeDefinitionStore.GeomProp.init(geomPropDef:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *a1;
  v14 = v17;
  v4 = *(a1 + 16);
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[5];

  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v8 = v16;
  v9 = v15;
  if (v16)
  {
    v10 = *(&v15 + 1);
    outlined init with copy of String(&v17, v13);

    outlined init with copy of GeomPropDef.GeomProp(&v15, v13);
    outlined destroy of GeomPropDef(a1);
  }

  else
  {
    outlined init with copy of String(&v17, v13);

    outlined destroy of GeomPropDef(a1);
    v10 = 0;
    v9 = v9;
  }

  v13[0] = v8 & 1;
  v11 = *(a1 + 41);
  result = *&v14;
  *a2 = v14;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v8 & 1;
  *(a2 + 57) = v11;
  return result;
}

void __swiftcall NodeDefinitionStore.init()(ShaderGraph::NodeDefinitionStore *__return_ptr retstr)
{
  if (one-time initialization token for shared != -1)
  {
LABEL_64:
    swift_once();
  }

  v1 = static NodeDefStore.shared;
  v2 = static NodeDefStore.shared + 64;
  v3 = 1 << *(static NodeDefStore.shared + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(static NodeDefStore.shared + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 56) + 152 * (v10 | (v7 << 6));
    v12 = *(v11 + 16);
    v146 = *v11;
    v147 = v12;
    v13 = *(v11 + 80);
    v15 = *(v11 + 32);
    v14 = *(v11 + 48);
    v149 = *(v11 + 64);
    v150 = v13;
    *v148 = v15;
    *&v148[16] = v14;
    v16 = *(v11 + 96);
    v17 = *(v11 + 112);
    v18 = *(v11 + 128);
    *&v154 = *(v11 + 144);
    v152 = v17;
    v153 = v18;
    v151 = v16;
    if (!*&v148[24] || *&v148[16] != __PAIR128__(0x8000000265F33A90, 0xD000000000000013) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined init with copy of NodeDef(&v146, &v137);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v156[0] = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        v8 = *&v156[0];
      }

      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v8 = *&v156[0];
      }

      *(v8 + 16) = v22;
      v23 = v8 + 152 * v21;
      v24 = v147;
      *(v23 + 32) = v146;
      *(v23 + 48) = v24;
      v25 = *v148;
      v26 = *&v148[16];
      v27 = v150;
      *(v23 + 96) = v149;
      *(v23 + 112) = v27;
      *(v23 + 64) = v25;
      *(v23 + 80) = v26;
      v28 = v151;
      v29 = v152;
      v30 = v153;
      *(v23 + 176) = v154;
      *(v23 + 144) = v29;
      *(v23 + 160) = v30;
      *(v23 + 128) = v28;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  v31 = *(v8 + 16);
  if (v31)
  {
    v155 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v155;
    v33 = v31 - 1;
    for (i = 32; ; i += 152)
    {
      v35 = *(v8 + i + 16);
      v156[0] = *(v8 + i);
      v156[1] = v35;
      v36 = *(v8 + i + 32);
      v37 = *(v8 + i + 48);
      v38 = *(v8 + i + 80);
      v156[4] = *(v8 + i + 64);
      v156[5] = v38;
      v156[2] = v36;
      v156[3] = v37;
      v39 = *(v8 + i + 96);
      v40 = *(v8 + i + 112);
      v41 = *(v8 + i + 128);
      v157 = *(v8 + i + 144);
      v156[7] = v40;
      v156[8] = v41;
      v156[6] = v39;
      outlined init with copy of NodeDef(v156, &v137);
      NodeDefinitionStore.Node.init(nodeDef:)(v156, &v146);
      v155 = v32;
      v43 = v32[2];
      v42 = v32[3];
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v32 = v155;
      }

      v32[2] = v43 + 1;
      v44 = &v32[20 * v43];
      v45 = v147;
      v44[2] = v146;
      v44[3] = v45;
      v46 = *v148;
      v47 = *&v148[16];
      v48 = v150;
      v44[6] = v149;
      v44[7] = v48;
      v44[4] = v46;
      v44[5] = v47;
      v49 = v151;
      v50 = v152;
      v51 = v154;
      v44[10] = v153;
      v44[11] = v51;
      v44[8] = v49;
      v44[9] = v50;
      if (!v33)
      {
        break;
      }

      --v33;
    }
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph11GeomPropDefV_G_AH19NodeDefinitionStoreV0gH0Vs5NeverOTg504_s11e7Graph19jkl10VACycfcAC8gh7VAA0fG3I6Vcfu0_Tf1cn_n(v52);
  v54 = v53;

  v55 = v32[2];
  if (v55)
  {
    v56 = (v32 + 4);
    v135 = v54;

    v57 = v55 - 1;
    v58 = MEMORY[0x277D84F98];
    while (1)
    {
      v59 = v56[1];
      v146 = *v56;
      v147 = v59;
      v60 = v56[2];
      v61 = v56[3];
      v62 = v56[5];
      v149 = v56[4];
      v150 = v62;
      *v148 = v60;
      *&v148[16] = v61;
      v63 = v56[6];
      v64 = v56[7];
      v65 = v56[9];
      v153 = v56[8];
      v154 = v65;
      v151 = v63;
      v152 = v64;
      v66 = v146;
      outlined init with copy of NodeDefinitionStore.Node(&v146, &v137);

      v67 = swift_isUniquelyReferenced_nonNull_native();
      v155 = v58;
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, *(&v66 + 1));
      v70 = v58[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_60;
      }

      v74 = v69;
      if (v58[3] < v73)
      {
        break;
      }

      if (v67)
      {
        goto LABEL_34;
      }

      v92 = v68;
      specialized _NativeDictionary.copy()();
      v68 = v92;
      if (v74)
      {
LABEL_35:
        v76 = v68;

        v58 = v155;
        v77 = (v155[7] + 160 * v76);
        v78 = v77[1];
        v137 = *v77;
        v138 = v78;
        v79 = v77[5];
        v81 = v77[2];
        v80 = v77[3];
        v140 = v77[4];
        v141 = v79;
        *v139 = v81;
        *&v139[16] = v80;
        v82 = v77[9];
        v84 = v77[6];
        v83 = v77[7];
        v144 = v77[8];
        v145 = v82;
        v142 = v84;
        v143 = v83;
        v85 = v147;
        *v77 = v146;
        v77[1] = v85;
        v86 = *v148;
        v87 = *&v148[16];
        v88 = v150;
        v77[4] = v149;
        v77[5] = v88;
        v77[2] = v86;
        v77[3] = v87;
        v89 = v151;
        v90 = v152;
        v91 = v154;
        v77[8] = v153;
        v77[9] = v91;
        v77[6] = v89;
        v77[7] = v90;
        outlined destroy of NodeDefinitionStore.Node(&v137);
        if (!v57)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_38:
      v58 = v155;
      v155[(v68 >> 6) + 8] |= 1 << v68;
      *(v58[6] + 16 * v68) = v66;
      v93 = (v58[7] + 160 * v68);
      v95 = v153;
      v94 = v154;
      v96 = v152;
      v93[6] = v151;
      v93[7] = v96;
      v93[8] = v95;
      v93[9] = v94;
      v98 = v149;
      v97 = v150;
      v99 = *&v148[16];
      v93[2] = *v148;
      v93[3] = v99;
      v93[4] = v98;
      v93[5] = v97;
      v100 = v147;
      *v93 = v146;
      v93[1] = v100;
      v101 = v58[2];
      v72 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v72)
      {
        goto LABEL_62;
      }

      v58[2] = v102;
      if (!v57)
      {
LABEL_41:
        v54 = v135;
        v103 = v135[2];
        if (v103)
        {
          goto LABEL_42;
        }

        goto LABEL_57;
      }

LABEL_40:
      --v57;
      v56 += 10;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, v67);
    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, *(&v66 + 1));
    if ((v74 & 1) != (v75 & 1))
    {
LABEL_65:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_34:
    if (v74)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v58 = MEMORY[0x277D84F98];
  v103 = v54[2];
  if (v103)
  {
LABEL_42:
    v104 = v103 - 1;
    v105 = MEMORY[0x277D84F98];
    for (j = 4; ; j += 8)
    {
      v108 = *&v54[j + 2];
      v107 = *&v54[j + 4];
      v109 = *&v54[j];
      *&v148[10] = *(&v54[j + 5] + 2);
      v147 = v108;
      *v148 = v107;
      v146 = v109;
      v110 = v109;
      outlined init with copy of NodeDefinitionStore.GeomProp(&v146, &v137);

      v111 = swift_isUniquelyReferenced_nonNull_native();
      v155 = v105;
      v112 = specialized __RawDictionaryStorage.find<A>(_:)(v110, *(&v110 + 1));
      v114 = v105[2];
      v115 = (v113 & 1) == 0;
      v72 = __OFADD__(v114, v115);
      v116 = v114 + v115;
      if (v72)
      {
        goto LABEL_61;
      }

      v117 = v113;
      if (v105[3] < v116)
      {
        break;
      }

      if (v111)
      {
        goto LABEL_48;
      }

      v127 = v112;
      specialized _NativeDictionary.copy()();
      v112 = v127;
      if (v117)
      {
LABEL_49:
        v119 = v112;

        v105 = v155;
        v120 = (v155[7] + (v119 << 6));
        v122 = v120[1];
        v121 = v120[2];
        v123 = *v120;
        *&v139[10] = *(v120 + 42);
        v138 = v122;
        *v139 = v121;
        v137 = v123;
        v124 = v146;
        v125 = v147;
        v126 = *v148;
        *(v120 + 42) = *&v148[10];
        v120[1] = v125;
        v120[2] = v126;
        *v120 = v124;
        outlined destroy of NodeDefinitionStore.GeomProp(&v137);
        if (!v104)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

LABEL_52:
      v105 = v155;
      v155[(v112 >> 6) + 8] |= 1 << v112;
      *(v105[6] + 16 * v112) = v110;
      v128 = (v105[7] + (v112 << 6));
      v129 = *&v148[10];
      v131 = v147;
      v130 = *v148;
      *v128 = v146;
      v128[1] = v131;
      v128[2] = v130;
      *(v128 + 42) = v129;
      v132 = v105[2];
      v72 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v72)
      {
        goto LABEL_63;
      }

      v105[2] = v133;
      if (!v104)
      {
LABEL_55:

        goto LABEL_58;
      }

LABEL_54:
      --v104;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v116, v111);
    v112 = specialized __RawDictionaryStorage.find<A>(_:)(v110, *(&v110 + 1));
    if ((v117 & 1) != (v118 & 1))
    {
      goto LABEL_65;
    }

LABEL_48:
    if (v117)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

LABEL_57:

  v105 = MEMORY[0x277D84F98];
LABEL_58:
  v134 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say11ShaderGraph19NodeDefinitionStoreV0F0VGTt1g504_s11d7Graph19fgH21VACycfcSSAC0C0VXEfU2_Tf1nc_nTf4g_n(v32);

  retstr->nodes._rawValue = v32;
  retstr->geomProps._rawValue = v54;
  retstr->nodesLookupId._rawValue = v58;
  retstr->geomPropsLookupId._rawValue = v105;
  retstr->nodesLookupName._rawValue = v134;
}

uint64_t Array.toDictionary<A>(with:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v33 = a2;
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v31 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v20 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a5;
  v35 = a6;
  v21 = Dictionary.init()();
  v38 = v21;
  if (MEMORY[0x266771880](a3, a4))
  {
    v22 = 0;
    v36 = (v17 + 16);
    v30 = (v17 + 56);
    v28 = v18;
    v29 = (v17 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v24 = *(v17 + 16);
        v24(v20, (a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22), a4);
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v28 != 8)
        {
          __break(1u);
          return result;
        }

        v37 = result;
        v24 = *v36;
        (*v36)(v20, &v37, a4);
        swift_unknownObjectRelease();
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_10:
          __break(1u);
          return v38;
        }
      }

      v32(v20);
      v24(v13, v20, a4);
      (*v30)(v13, 0, 1, a4);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*v29)(v20, a4);
      ++v22;
      if (v25 == MEMORY[0x266771880](a3, a4))
      {
        return v38;
      }
    }
  }

  return v21;
}

void __swiftcall NodeDefinitionStore.getNodeDefinition(id:)(ShaderGraph::NodeDefinitionStore::Node_optional *__return_ptr retstr, Swift::String id)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(id._countAndFlagsBits, id._object), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 160 * v5;
    v8 = *(v7 + 16);
    v21 = *v7;
    v22 = v8;
    v9 = *(v7 + 80);
    v11 = *(v7 + 32);
    v10 = *(v7 + 48);
    v25 = *(v7 + 64);
    v26 = v9;
    v23 = v11;
    v24 = v10;
    v12 = *(v7 + 96);
    v13 = *(v7 + 112);
    v14 = *(v7 + 144);
    v29 = *(v7 + 128);
    v30 = v14;
    v27 = v12;
    v28 = v13;
    memmove(retstr, v7, 0xA0uLL);
    destructiveProjectEnumData for NodePersonality.ShaderType(retstr);
    outlined init with copy of NodeDefinitionStore.Node(&v21, &v20);
  }

  else
  {
    _s11ShaderGraph19NodeDefinitionStoreV0C0VSgWOi0_(&v21);
    v15 = v28;
    retstr->value.uiName = v27;
    *&retstr->value.inputs._rawValue = v15;
    v16 = v30;
    retstr->value.availability = v29;
    retstr->value.availabilityMessage = v16;
    v17 = v24;
    retstr->value.inherit = v23;
    retstr->value.nodeGroup = v17;
    v18 = v26;
    retstr->value.version = v25;
    *&retstr->value.isDefaultVersion.value = v18;
    v19 = v22;
    retstr->value.name = v21;
    retstr->value.nodeName = v19;
  }
}

Swift::OpaquePointer_optional __swiftcall NodeDefinitionStore.getNodeDefinition(name:)(Swift::String name)
{
  v2 = *(v1 + 32);
  if (*(v2 + 16) && (name._countAndFlagsBits = specialized __RawDictionaryStorage.find<A>(_:)(name._countAndFlagsBits, name._object), (name._object & 1) != 0))
  {
    v3 = *(*(v2 + 56) + 8 * name._countAndFlagsBits);
  }

  else
  {
    name._countAndFlagsBits = 0;
  }

  return *&name._countAndFlagsBits;
}

double NodeDefinitionStore.getGeomProp(id:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v5 = *(v3 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + (v6 << 6));
    v9 = *(v8 + 42);
    v10 = v8[2];
    v11 = *v8;
    v15[1] = v8[1];
    v16[0] = v10;
    v15[0] = v11;
    *(v16 + 10) = v9;
    v12 = v8[1];
    *a3 = *v8;
    a3[1] = v12;
    a3[2] = v8[2];
    *(a3 + 42) = *(v8 + 42);
    outlined init with copy of NodeDefinitionStore.GeomProp(v15, &v14);
  }

  else
  {
    result = 0.0;
    *(a3 + 42) = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t specialized static NodeDefinitionStore.TypeStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v56 = *(a1 + 32);
  v57 = v2;
  v4 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v61 = *(a2 + 32);
  v62 = v5;
  v7 = *(a2 + 16);
  v59 = *a2;
  v60 = v7;
  v8 = *(a1 + 48);
  v64[2] = v56;
  v64[3] = v8;
  v64[0] = *a1;
  v64[1] = v3;
  v9 = *(a2 + 48);
  v68 = v61;
  v69 = v9;
  v58 = *(a1 + 64);
  v63 = *(a2 + 64);
  v65 = *(a1 + 64);
  v70 = *(a2 + 64);
  v66 = v59;
  v67 = v6;
  v71 = v55[0];
  v10 = *v4.f32;
  switch(v58)
  {
    case 1:
      if (v63 != 1)
      {
        goto LABEL_90;
      }

      v19 = v59.u8[0];
      v20 = v71.u8[0];
      goto LABEL_35;
    case 2:
      if (v63 != 2)
      {
        goto LABEL_90;
      }

      goto LABEL_29;
    case 3:
      if (v63 != 3)
      {
        goto LABEL_90;
      }

LABEL_29:
      v19 = v59.i32[0];
      v20 = v71.i32[0];
      goto LABEL_35;
    case 4:
      if (v63 != 4)
      {
        goto LABEL_90;
      }

      v19 = v59.u16[0];
      v20 = v71.u16[0];
LABEL_35:
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = v20 == v19;
      return v12 & 1;
    case 5:
      if (v63 != 5)
      {
        goto LABEL_90;
      }

      v28 = v71.f32[0];
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = v28 == v59.f32[0];
      return v12 & 1;
    case 6:
      if (v63 != 6)
      {

        goto LABEL_90;
      }

      if (*&v71 == *&v59)
      {
        outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
        outlined init with copy of NodeDefinitionStore.TypeStorage(v55, v54);
        outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
        v12 = 1;
        return v12 & 1;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
      outlined init with copy of NodeDefinitionStore.TypeStorage(v55, v54);
      goto LABEL_94;
    case 7:
      if (v63 != 7)
      {
        goto LABEL_90;
      }

      v24 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v15 = vceq_f32(v24, *v59.f32);
      if (v15.i8[0])
      {
        goto LABEL_74;
      }

      goto LABEL_91;
    case 8:
      if (v63 != 8)
      {
        goto LABEL_90;
      }

      v52 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v16 = vceqq_f32(v52, v59);
      goto LABEL_77;
    case 9:
      if (v63 != 9)
      {
        goto LABEL_90;
      }

      v45 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v23 = vceqq_f32(v45, v59);
      goto LABEL_24;
    case 10:
      if (v63 != 10)
      {
        goto LABEL_90;
      }

      v10.i16[2] = v71.i16[1];
      v10.i16[0] = v71.i16[0];
      v51 = v10;
      v10.i16[2] = v59.i16[1];
      v10.i16[0] = v59.i16[0];
      v42 = v10;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v15 = vceq_s32(vand_s8(v51, 0xFFFF0000FFFFLL), vand_s8(v42, 0xFFFF0000FFFFLL));
      if (v15.i8[0])
      {
        goto LABEL_74;
      }

      goto LABEL_91;
    case 11:
      if (v63 != 11)
      {
        goto LABEL_90;
      }

      v17 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v18 = vceq_s16(v17, *v59.f32);
      goto LABEL_78;
    case 12:
      if (v63 != 12)
      {
        goto LABEL_90;
      }

      v21 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v22 = vceq_s16(v21, *v59.f32);
      if ((v22.i8[0] & 1) == 0)
      {
        return v12 & 1;
      }

      goto LABEL_25;
    case 13:
      if (v63 != 13)
      {
        goto LABEL_90;
      }

      v32 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v15 = vceq_s32(v32, *v59.f32);
      if ((v15.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_74;
    case 14:
      if (v63 != 14)
      {
        goto LABEL_90;
      }

      v44 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v16 = vceqq_s32(v44, v59);
LABEL_77:
      v18 = vmovn_s32(v16);
LABEL_78:
      if ((v18.i16[0] & v18.i16[1] & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = v18.i8[4];
      return v12 & 1;
    case 15:
      if (v63 != 15)
      {
        goto LABEL_90;
      }

      v46 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v23 = vceqq_s32(v46, v59);
LABEL_24:
      v22 = vmovn_s32(v23);
      if ((v22.i8[0] & 1) == 0)
      {
        return v12 & 1;
      }

LABEL_25:
      if (v22.i8[2] & 1) != 0 && (v22.i8[4])
      {
        goto LABEL_27;
      }

      return v12 & 1;
    case 16:
      if (v63 != 16)
      {
        goto LABEL_90;
      }

      v13 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v14 = vceq_f32(*v13.f32, *v59.f32);
      if (v14.i8[0] & 1) != 0 && (v14.i8[4])
      {
        v15 = vceq_f32(*&v13.u32[2], *&v59.u32[2]);
        if (v15.i8[0])
        {
LABEL_74:
          v12 = v15.i8[4];
        }
      }

      return v12 & 1;
    case 17:
      if (v63 != 17)
      {
        goto LABEL_90;
      }

      v47 = v4;
      v39 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v25 = vmovn_s32(vceqq_f32(v39, v59));
      if ((v25.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      if ((v25.i8[2] & 1) == 0 || (v25.i8[4] & 1) == 0 || (vmovn_s32(vceqq_f32(v47, v60)).u8[0] & 1) == 0)
      {
        return v12 & 1;
      }

      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v47, v47, 0xCuLL), v56, 8uLL), vextq_s8(vextq_s8(v60, v60, 0xCuLL), v61, 8uLL)))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = vmovn_s32(vceqq_f32(*&v56, *&v61)).i8[4];
      return v12 & 1;
    case 18:
      if (v63 != 18)
      {
        goto LABEL_90;
      }

      v50 = v4;
      v40 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v33 = vmovn_s32(vceqq_f32(v40, v59)).u32[0];
      if ((v33 & HIWORD(v33) & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v40, v50, 8uLL), vextq_s8(v59, v60, 8uLL)))) & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v50, v56, 8uLL), vextq_s8(v60, v61, 8uLL)))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v56, v57, 8uLL), vextq_s8(v61, v62, 8uLL)))) & 1) == 0)
      {
        return v12 & 1;
      }

      v22 = vmovn_s32(vceqq_f32(v57, v62));
      if ((v22.i8[4] & 1) == 0)
      {
        return v12 & 1;
      }

      goto LABEL_27;
    case 19:
      if (v63 != 19)
      {
        goto LABEL_90;
      }

      v10.i16[2] = v71.i16[3];
      v10.i16[0] = v71.i16[2];
      v41 = v10;
      v10.i16[2] = v59.i16[3];
      v10.i16[0] = v59.i16[2];
      v38 = v10;
      v34.i32[0] = v59.u16[0];
      v34.i32[1] = v59.u16[1];
      v53 = v34;
      v34.i32[0] = v71.u16[0];
      v34.i32[1] = v71.u16[1];
      v43 = v34;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v35 = vceq_s32(v43, v53);
      if (v35.i8[0] & 1) != 0 && (v35.i8[4] & 1) != 0 && (vceq_s32(vand_s8(v41, 0xFFFF0000FFFFLL), vand_s8(v38, 0xFFFF0000FFFFLL)).u32[0])
      {
        v12 = vceq_s32(vand_s8(v41, 0xFFFF0000FFFFLL), vand_s8(v38, 0xFFFF0000FFFFLL)).i8[4];
      }

      return v12 & 1;
    case 20:
      if (v63 != 20)
      {
        goto LABEL_90;
      }

      v48 = *v4.f32;
      v26 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v27 = vceq_s16(*v26.f32, *v59.f32);
      if ((v27.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      if ((v27.i8[2] & 1) == 0 || (v27.i8[4] & 1) == 0 || (vceq_s16(*&v26.u32[2], *&v59.u32[2]).u8[0] & 1) == 0)
      {
        return v12 & 1;
      }

      if ((vminv_u16(vceq_s16(vext_s8(vext_s8(*&v26.u32[2], *&v26.u32[2], 6uLL), v48, 4uLL), vext_s8(vext_s8(*&v59.u32[2], *&v59.u32[2], 6uLL), *v60.f32, 4uLL))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = vceq_s16(v48, *&v60).i8[4];
      return v12 & 1;
    case 21:
      if (v63 != 21)
      {
        goto LABEL_90;
      }

      v49 = v4;
      v29 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v30 = vceq_s16(*v29.f32, *v59.f32).u32[0];
      if ((v30 & HIWORD(v30) & 1) == 0 || (vminv_u16(vceq_s16(vext_s8(*v29.f32, *&v29.u32[2], 4uLL), vext_s8(*v59.f32, *&v59.u32[2], 4uLL))) & 1) == 0 || (vminv_u16(vceq_s16(vext_s8(*&v29.u32[2], *v49.i8, 4uLL), vext_s8(*&v59.u32[2], *v60.f32, 4uLL))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      v31 = vextq_s8(v49, v49, 8uLL).u64[0];
      if ((vminv_u16(vceq_s16(vext_s8(*v49.i8, v31, 4uLL), vext_s8(*v60.f32, *&v60.u32[2], 4uLL))) & 1) == 0)
      {
        return v12 & 1;
      }

      v22 = vceq_s16(*&v60.u32[2], v31);
      if ((v22.i8[4] & 1) == 0)
      {
        return v12 & 1;
      }

LABEL_27:
      v12 = v22.i8[6];
      return v12 & 1;
    case 22:
      if (v63 == 22)
      {
        goto LABEL_81;
      }

      goto LABEL_88;
    case 23:
      if (v63 == 23)
      {
LABEL_81:
        type metadata accessor for CGColorRef(0);
        outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
        outlined init with copy of NodeDefinitionStore.TypeStorage(v55, v54);
        lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
        v12 = static _CFObject.== infix(_:_:)();
LABEL_94:
        outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      }

      else
      {
LABEL_88:
        v36 = *&v55[0];
LABEL_90:
        outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
        outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
LABEL_91:
        v12 = 0;
      }

      return v12 & 1;
    default:
      if (v63)
      {
        goto LABEL_90;
      }

      v11 = v71.i8[0];
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = v11 ^ v59.i8[0] ^ 1;
      return v12 & 1;
  }
}

uint64_t specialized static NodeDefinitionStore.Input.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 6);
  v66[2] = *(a1 + 5);
  v66[3] = v9;
  v67 = *(a1 + 112);
  v10 = *(a1 + 4);
  v66[0] = *(a1 + 3);
  v66[1] = v10;
  v37 = a1[15];
  v40 = a1[16];
  v11 = *(a1 + 136);
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v16 = a2[4];
  v69 = *(a2 + 112);
  v17 = *(a2 + 6);
  v68[2] = *(a2 + 5);
  v68[3] = v17;
  v18 = *(a2 + 4);
  v68[0] = *(a2 + 3);
  v68[1] = v18;
  v20 = a2[15];
  v19 = a2[16];
  v38 = *(a2 + 136);
  v39 = v11;
  if ((v4 != v12 || v5 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v7 != v14 || v8 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {

      return 0;
    }

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v6, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v15)
    {
      return 0;
    }
  }

  v21 = v67;
  v22 = *(a2 + 4);
  *&v65[15] = *(a2 + 3);
  *&v65[31] = v22;
  v23 = *(a2 + 6);
  *&v65[47] = *(a2 + 5);
  *&v65[63] = v23;
  v24 = v69;
  if (v67 == 255)
  {
    if (v69 != 255)
    {
      outlined init with copy of [Input](v66, &v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
      outlined init with copy of [Input](v68, &v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
      goto LABEL_27;
    }

    v27 = *(a1 + 4);
    v55 = *(a1 + 3);
    v56 = v27;
    v28 = *(a1 + 6);
    v57 = *(a1 + 5);
    v58 = v28;
    v59 = -1;
    outlined init with copy of [Input](v66, &v50, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined init with copy of [Input](v68, &v50, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined destroy of [Input](&v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
LABEL_20:
    if (v40)
    {
      if (!v19 || (v37 != v20 || v40 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v19)
    {
      return 0;
    }

    return v39 ^ v38 ^ 1u;
  }

  v25 = *(a1 + 4);
  v55 = *(a1 + 3);
  v56 = v25;
  v26 = *(a1 + 6);
  v57 = *(a1 + 5);
  v58 = v26;
  v59 = v67;
  v54 = v67;
  v52 = v57;
  v53 = v26;
  v50 = v55;
  v51 = v25;
  if (v69 == 255)
  {
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v45 = v55;
    v46 = v56;
    outlined init with copy of [Input](v66, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined init with copy of [Input](v68, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined init with copy of [Input](&v55, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined destroy of NodeDefinitionStore.TypeStorage(&v45);
LABEL_27:
    v34 = *(a1 + 4);
    v55 = *(a1 + 3);
    v56 = v34;
    v35 = *(a1 + 6);
    v57 = *(a1 + 5);
    v58 = v35;
    v59 = v21;
    v61 = *&v65[16];
    v62 = *&v65[32];
    *v63 = *&v65[48];
    *&v63[15] = *&v65[63];
    v60 = *v65;
    v64 = v24;
    outlined destroy of [Input](&v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSg_AFtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSg_AFtMR);
    return 0;
  }

  v29 = *(a2 + 4);
  v45 = *(a2 + 3);
  v46 = v29;
  v30 = *(a2 + 6);
  v47 = *(a2 + 5);
  v48 = v30;
  v49 = v69;
  outlined init with copy of [Input](v66, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  outlined init with copy of [Input](v68, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  outlined init with copy of [Input](&v55, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  v31 = specialized static NodeDefinitionStore.TypeStorage.== infix(_:_:)(&v50, &v45);
  v41[2] = v47;
  v41[3] = v48;
  v42 = v49;
  v41[0] = v45;
  v41[1] = v46;
  outlined destroy of NodeDefinitionStore.TypeStorage(v41);
  v43[2] = v52;
  v43[3] = v53;
  v44 = v54;
  v43[0] = v50;
  v43[1] = v51;
  outlined destroy of NodeDefinitionStore.TypeStorage(v43);
  v32 = *(a1 + 4);
  v45 = *(a1 + 3);
  v46 = v32;
  v33 = *(a1 + 6);
  v47 = *(a1 + 5);
  v48 = v33;
  v49 = v21;
  outlined destroy of [Input](&v45, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  if (v31)
  {
    goto LABEL_20;
  }

  return 0;
}

BOOL specialized static NodeDefinitionStore.Node.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v36 = *(a1 + 48);
  v6 = *(a1 + 56);
  v32 = *(a1 + 64);
  v38 = *(a1 + 72);
  v34 = *(a1 + 80);
  v30 = *(a1 + 88);
  v24 = *(a1 + 96);
  v28 = *(a1 + 104);
  v26 = *(a1 + 112);
  v22 = *(a1 + 120);
  v20 = *(a1 + 128);
  v19 = *(a1 + 136);
  v14 = *(a1 + 144);
  v16 = *(a1 + 152);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v35 = *(a2 + 48);
  v31 = *(a2 + 64);
  v37 = *(a2 + 72);
  v33 = *(a2 + 80);
  v29 = *(a2 + 88);
  v23 = *(a2 + 96);
  v27 = *(a2 + 104);
  v25 = *(a2 + 112);
  v21 = *(a2 + 120);
  v17 = *(a2 + 136);
  v18 = *(a2 + 128);
  v13 = *(a2 + 144);
  v15 = *(a2 + 152);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v3 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v36 != v35 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v38)
  {
    if (!v37 || (v32 != v31 || v38 != v37) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  if (v34 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }

LABEL_33:
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v30, v29))
    {
      if (v28)
      {
        if (!v27 || (v24 != v23 || v28 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v27)
      {
        return 0;
      }

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph19NodeDefinitionStoreV5InputV_Tt1g5(v26, v25) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph19NodeDefinitionStoreV6OutputV_Tt1g5(v22, v21) & 1) == 0 || (v20 != v18 || v19 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v16)
      {
        return v15 && (v14 == v13 && v16 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      if (!v15)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if (v33 != 2 && ((v33 ^ v34) & 1) == 0)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t specialized static NodeDefinitionStore.GeomPropValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v10 = specialized == infix<A>(_:_:)(*a1, *a2);
      outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v15 = *(a1 + 8);

LABEL_12:
    outlined copy of GeomPropDef.GeomProp(v6, v5, v7);
    outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, v4);
    outlined consume of NodeDefinitionStore.GeomPropValue(v6, v5, v7);
    return 0;
  }

  v8 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of GeomPropDef.GeomProp(v6, v5, 1);
    outlined copy of GeomPropDef.GeomProp(v3, v2, 1);
    outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 1);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_10:
    outlined consume of NodeDefinitionStore.GeomPropValue(v11, v12, v13);
    return v10 & 1;
  }

  outlined copy of GeomPropDef.GeomProp(v8, v2, 1);
  outlined copy of GeomPropDef.GeomProp(v3, v2, 1);
  outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 1);
  outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 1);
  return 1;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say11ShaderGraph19NodeDefinitionStoreV0F0VGTt1g504_s11d7Graph19fgH21VACycfcSSAC0C0VXEfU2_Tf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 10)
  {
    v12 = i[7];
    v51 = i[6];
    v52 = v12;
    v13 = i[9];
    v53 = i[8];
    v54 = v13;
    v14 = i[3];
    v47 = i[2];
    v48 = v14;
    v15 = i[5];
    v49 = i[4];
    v50 = v15;
    v16 = i[1];
    v45 = *i;
    v46 = v16;
    v17 = v16;
    outlined init with copy of NodeDefinitionStore.Node(&v45, v44);

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
    v20 = v1[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v1[3] < v22)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, 1);
      v1 = v55;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {

      v26 = v1[7];
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      *(v27 + 2) = v30 + 1;
      v4 = &v27[160 * v30];
      v5 = v46;
      *(v4 + 2) = v45;
      *(v4 + 3) = v5;
      v6 = v47;
      v7 = v48;
      v8 = v50;
      *(v4 + 6) = v49;
      *(v4 + 7) = v8;
      *(v4 + 4) = v6;
      *(v4 + 5) = v7;
      v9 = v51;
      v10 = v52;
      v11 = v54;
      *(v4 + 10) = v53;
      *(v4 + 11) = v11;
      *(v4 + 8) = v9;
      *(v4 + 9) = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph19NodeDefinitionStoreV0F0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph19NodeDefinitionStoreV0F0VGMR);
      v31 = swift_allocObject();
      v32 = v51;
      v33 = v53;
      v34 = v54;
      v31[9] = v52;
      v31[10] = v33;
      v31[11] = v34;
      v35 = v47;
      v36 = v49;
      v37 = v50;
      v31[5] = v48;
      v31[6] = v36;
      v31[7] = v37;
      v31[8] = v32;
      v38 = v45;
      v39 = v46;
      v31[1] = xmmword_265F1F670;
      v31[2] = v38;
      v31[3] = v39;
      v31[4] = v35;
      v1[(v19 >> 6) + 8] |= 1 << v19;
      *(v1[6] + 16 * v19) = v17;
      *(v1[7] + 8 * v19) = v31;
      v40 = v1[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_18;
      }

      v1[2] = v42;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double _s11ShaderGraph19NodeDefinitionStoreV0C0VSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 > 0x17)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy137_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore.Output(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore.Output(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore.Node(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore.Node(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore.GeomProp(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore.GeomProp(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of NodeDefinitionStore.GeomPropValue(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t UserGraph.insertMaterialXDefaultValue(_:ofType:toFeedInput:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{

  result = specialized SGDataTypeStorage.init(materialXValue:type:)(a1, a2, a3, v18);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = a3;
    v11 = swift_allocObject();
    v12 = v18[3];
    *(v11 + 48) = v18[2];
    *(v11 + 64) = v12;
    *(v11 + 80) = v19;
    v13 = v18[1];
    *(v11 + 16) = v18[0];
    *(v11 + 32) = v13;
    *(v11 + 88) = a3;
    swift_retain_n();
    outlined init with copy of SGDataTypeStorage(v18, &v16);
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v11, &v20);

    swift_setDeallocating();
    v14 = *(inited + 16);
    swift_arrayDestroy();
    v36 = *&v21[0];
    specialized ShaderGraphNode.output(labeled:)(&v22, 7632239, 0xE300000000000000, *&v21[0]);
    if (v23)
    {
      v27[0] = v22;
      v27[1] = v23;
      v28 = v24;
      v29 = v25;
      v30 = v26;
      UserGraph.connect(_:to:)(v27, a4);

      v31 = v28;
      outlined destroy of String(&v31);
      v33 = v20;
      outlined destroy of NodePersonality(&v33);
      v32 = *(&v20 + 1);
      outlined destroy of [Input](&v32, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    }

    else
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v16 = v20;
      v17[0] = v21[0];
      *(v17 + 9) = *(v21 + 9);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v15 = 14;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0xE000000000000000;
      swift_willThrow();
      v35 = v20;
      outlined destroy of NodePersonality(&v35);
      v34 = *(&v20 + 1);
      outlined destroy of [Input](&v34, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    }

    outlined destroy of [Input](&v36, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    return outlined destroy of SGDataTypeStorage(v18);
  }

  return result;
}

uint64_t UserGraph.insertMaterialXDefaultGeomProp(_:ofType:toFeedInput:fromNodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v14 & 1) != 0))
  {
    v15 = (*(a6 + 56) + (v13 << 6));
    v17 = v15[1];
    v16 = v15[2];
    v18 = *v15;
    *(v49 + 9) = *(v15 + 41);
    v48[1] = v17;
    v49[0] = v16;
    v48[0] = v18;
    outlined init with copy of GeomPropDef(v48, &v26);
    specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(v48, a3, a5, &v30);
    if (!v6)
    {
      v47 = *&v31[0];
      specialized ShaderGraphNode.output(labeled:)(&v32, 7632239, 0xE300000000000000, *&v31[0]);
      if (v33)
      {
        v37[0] = v32;
        v37[1] = v33;
        v38 = v34;
        v39 = v35;
        v40 = v36;
        UserGraph.connect(_:to:)(v37, a4);

        v41 = v38;
        outlined destroy of String(&v41);
        v44 = v30;
        outlined destroy of NodePersonality(&v44);
        v43 = *(&v30 + 1);
        v19 = &v43;
      }

      else
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v26 = v30;
        v27[0] = v31[0];
        *(v27 + 9) = *(v31 + 9);
        _print_unlocked<A, B>(_:_:)();
        v23 = v28;
        v24 = v29;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v25 = 14;
        *(v25 + 8) = v23;
        *(v25 + 16) = v24;
        swift_willThrow();
        v46 = v30;
        outlined destroy of NodePersonality(&v46);
        v45 = *(&v30 + 1);
        v19 = &v45;
      }

      outlined destroy of [Input](v19, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    return outlined destroy of GeomPropDef(v48);
  }

  else
  {
    v42 = *(a4 + 16);
    v26 = v42;
    outlined init with copy of String(&v42, &v28);
    MEMORY[0x266771550](32, 0xE100000000000000);
    MEMORY[0x266771550](a1, a2);
    v20 = v26;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v21 = 17;
    *(v21 + 8) = v20;
    return swift_willThrow();
  }
}

uint64_t sub_265EE8618()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t SGREMaterial.debugHash.getter()
{
  v0 = SHA512Digest.description.getter();
  v2 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x2667714E0](v2, v4, v6, v8);

  MEMORY[0x266771550](95, 0xE100000000000000);

  v10 = v9;
  v11 = SHA512Digest.description.getter();
  v13 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v11, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x2667714E0](v13, v15, v17, v19);
  v22 = v21;

  MEMORY[0x266771550](v20, v22);

  return v10;
}

uint64_t SGREMaterial.name.getter()
{
  v1 = (*(v0 + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SGREMaterial.surfaceShaderFunctionName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGREMaterial_surfaceShaderFunctionName);
  v2 = *(v0 + OBJC_IVAR___SGREMaterial_surfaceShaderFunctionName + 8);

  return v1;
}

id @objc SGREMaterial.surfaceShaderFunctionName.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];

    v7 = MEMORY[0x266771450](v5, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t SGREMaterial.geometryModifierFunctionName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGREMaterial_geometryModifierFunctionName);
  v2 = *(v0 + OBJC_IVAR___SGREMaterial_geometryModifierFunctionName + 8);

  return v1;
}

Class @objc SGREMaterial.uniforms.getter(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *(a1 + *a3);
  a4(0);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t SGREMaterial.internalGraph.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SGREMaterial_internalGraph;
  v3 = *(v1 + OBJC_IVAR___SGREMaterial_internalGraph + 16);
  v4 = *(v1 + OBJC_IVAR___SGREMaterial_internalGraph + 24);
  v5 = *(v1 + OBJC_IVAR___SGREMaterial_internalGraph + 32);
  v6 = *(v2 + 40);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

Class SGREMaterial.SHA512Hash.getter()
{
  v1 = OBJC_IVAR___SGREMaterial_edgeDigest;
  v2 = type metadata accessor for SHA512Digest();
  v9 = v2;
  v10 = lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest(&lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest, MEMORY[0x277CC52E8]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v0 + v1, v2);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v7);
  return isa;
}

uint64_t SGREMaterial.edgeDigest.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SHA512Digest();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SGREMaterial.operationalHashString.getter()
{
  v1 = (v0 + OBJC_IVAR___SGREMaterial_operationalHashString);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SGREMaterial.operationalHashString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SGREMaterial_operationalHashString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(void *a1, void *a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v598 = a4;
  v601 = a3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for SHA512();
  v585 = *(v8 - 8);
  v586 = v8;
  v9 = *(v585 + 64);
  MEMORY[0x28223BE20](v8);
  v584 = &v546 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostError();
  v581 = *(v11 - 8);
  v582 = v11;
  v12 = *(v581 + 64);
  MEMORY[0x28223BE20](v11);
  v580 = &v546 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v579 = &v546 - v16;
  v17 = type metadata accessor for SHA512Digest();
  v590 = *(v17 - 8);
  v591 = v17;
  v18 = *(v590 + 64);
  MEMORY[0x28223BE20](v17);
  v578 = &v546 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v587 = &v546 - v21;
  MEMORY[0x28223BE20](v22);
  v588 = &v546 - v23;
  v599._rawValue = type metadata accessor for OSSignpostID();
  v24 = *(v599._rawValue - 1);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v599._rawValue);
  v583 = &v546 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v546 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v546 - v31;
  v33 = type metadata accessor for OSSignposter();
  v34 = *(v33 - 8);
  v595 = v33;
  v596 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v546 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *((*MEMORY[0x277D85000] & *a2) + 0x78);
  v600._rawValue = a2;
  v40 = v39(v36);
  v602 = v5;
  *&v5[OBJC_IVAR___SGREMaterial_functionConstantInputs] = v40;
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v594 = v38;
  v41 = OSSignposter.logHandle.getter();
  v42 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v41, v42, v44, "shaderGraphMaterial", "", v43, 2u);
    MEMORY[0x266773120](v43, -1, -1);
  }

  rawValue = v599._rawValue;
  (*(v24 + 16))(v29, v32, v599._rawValue);
  v46 = type metadata accessor for OSSignpostIntervalState();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = OSSignpostIntervalState.init(id:isOpen:)();
  v50 = v24 + 8;
  v51 = *(v24 + 8);
  v51(v32, rawValue);
  v52 = OBJC_IVAR___SGREMaterial_graph;
  v53 = v602;
  *&v602[OBJC_IVAR___SGREMaterial_graph] = a1;
  v54 = v600._rawValue;
  *&v53[OBJC_IVAR___SGREMaterial_config] = v600;
  v55 = a1;
  v597 = v54;
  v56 = v727._rawValue;
  SGGraph.topologicalSort()(v619);
  v727._rawValue = v56;
  if (v56)
  {
    (*(v596 + 8))(v594, v595);

LABEL_7:
    LODWORD(v600._rawValue) = 0;
    LODWORD(v599._rawValue) = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    goto LABEL_8;
  }

  v572 = v50;
  v589 = v49;
  v716 = v619[0];
  outlined destroy of [Input](&v716, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v57 = v619[1];
  v58 = v52;
  v59 = v619[3];

  v715 = v59;
  outlined destroy of [Input](&v715, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

  v60 = *&v53[v58];
  v61 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v62 = *(v60 + v61);
  v63 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  v64 = v601;
  swift_beginAccess();
  v65 = *&v64[v63];
  v66 = v53;
  v67 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  v68 = *&v64[v67];

  v69 = v65;
  v70 = v68;
  v71 = v727._rawValue;
  mergeFunctionConstants(from:scalars:vectors:)(v62, v69, v70);
  v727._rawValue = v71;
  if (v71)
  {

    (*(v596 + 8))(v594, v595);
    goto LABEL_7;
  }

  v571 = v58;
  v569 = v51;
  v573 = v55;
  v90 = v72;

  *&v66[OBJC_IVAR___SGREMaterial_functionConstantValues] = v90;
  v91 = *(v90 + 16);
  v92 = v90;
  v570 = v91;
  if (v91)
  {
    *&v606 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 0);
    v93 = v606;
    v94 = v90;
    v95 = (v90 + 40);
    v96 = v91;
    do
    {
      v98 = *(v95 - 1);
      v97 = *v95;
      *&v606 = v93;
      v100 = *(v93 + 16);
      v99 = *(v93 + 24);

      if (v100 >= v99 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
        v93 = v606;
      }

      *(v93 + 16) = v100 + 1;
      v101 = v93 + 16 * v100;
      *(v101 + 32) = v98;
      *(v101 + 40) = v97;
      v95 += 14;
      --v96;
    }

    while (v96);
    v102 = v602;
    v92 = v94;
  }

  else
  {
    v102 = v66;

    v93 = MEMORY[0x277D84F90];
  }

  v103 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v93);

  *&v606 = 0;
  v104 = v573;

  v105 = v727._rawValue;
  specialized SGDataTypeGraph.init(_:idSequence:constants:)(v104, &v606, v92, v620);
  v106 = v589;
  v107 = &OBJC_IVAR___SGGraph_inputs;
  v727._rawValue = v105;
  if (v105)
  {
    (*(v596 + 8))(v594, v595);

LABEL_34:
    LODWORD(v600._rawValue) = 0;
    LODWORD(v599._rawValue) = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v77 = 0;
    goto LABEL_71;
  }

  v566 = v104;
  v568 = v92;
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v108 = static DebugConfig.debugMode;

  v109 = specialized Set.contains(_:)(6, v108);

  if (v109)
  {
    v110 = v727._rawValue;
    specialized createGraphDotText<A>(representing:)(v620);
    v727._rawValue = v110;
    if (v110)
    {
      (*(v596 + 8))(v594, v595);

      v714 = *(v620 + 8);
      outlined destroy of String(&v714);
      v713 = *(&v620[1] + 1);
      outlined destroy of [Input](&v713, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      v712 = v621;
      outlined destroy of [Input](&v712, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      v711 = *(&v621 + 1);
      outlined destroy of [Input](&v711, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      goto LABEL_34;
    }

    v564 = v111;
    v567 = v112;
  }

  else
  {
    v564 = 0;
    v567 = 0xE000000000000000;
  }

  v113 = *&v102[v571];
  v114 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v115 = *(v113 + v114);
  *&v603[0] = MEMORY[0x277D84F90];
  if (v115 >> 62)
  {
    v116 = __CocoaSet.count.getter();
  }

  else
  {
    v116 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v116)
  {
    v134 = MEMORY[0x277D84F90];
    goto LABEL_68;
  }

  v118 = v115;
  v119 = 0;
  v576 = (v118 & 0xFFFFFFFFFFFFFF8);
  v577 = (v118 & 0xC000000000000001);
  v565 = v118;
  v574 = v116;
  v575 = v118 + 32;
  v120 = v103 + 56;
  while (!v577)
  {
    if (v119 >= v576[2])
    {
      __break(1u);
      goto LABEL_88;
    }

    v122 = *(v575 + 8 * v119);
    v123 = __OFADD__(v119++, 1);
    if (v123)
    {
      goto LABEL_65;
    }

LABEL_51:
    v124 = *(v103 + 16);
    v592 = v122;
    if (!v124)
    {
      goto LABEL_47;
    }

    v125 = *&v122[OBJC_IVAR___SGInput_name];
    v126 = *&v122[OBJC_IVAR___SGInput_name + 8];
    v127 = *(v103 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v128 = Hasher._finalize()();
    v129 = -1 << *(v103 + 32);
    v130 = v128 & ~v129;
    if ((*(v120 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130))
    {
      v131 = ~v129;
      while (1)
      {
        v132 = (*(v103 + 48) + 16 * v130);
        v133 = *v132 == v125 && v132[1] == v126;
        if (v133 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v130 = (v130 + 1) & v131;
        if (((*(v120 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v106 = v589;
      v116 = v574;
      if (v119 == v574)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_46:

      v106 = v589;
      v116 = v574;
LABEL_47:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v121 = *(*&v603[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v117 = specialized ContiguousArray._endMutation()();
      if (v119 == v116)
      {
        goto LABEL_66;
      }
    }
  }

  v122 = MEMORY[0x266772030](v119, v565);
  v123 = __OFADD__(v119++, 1);
  if (!v123)
  {
    goto LABEL_51;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  v102 = v602;
  v134 = *&v603[0];
LABEL_68:

  v107 = &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  *&v102[OBJC_IVAR___SGREMaterial_uniforms] = v134;
  SGDataTypeGraph.topologicalSort()(&v622);
  v135 = v727._rawValue;
  SGDataTypeGraph.TopologicalSort.surfaceNodeElement(ofType:)(0, v624);
  if (v135)
  {
    v727._rawValue = v135;
    (*(v596 + 8))(v594, v595);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v710 = *(v620 + 8);
    outlined destroy of String(&v710);
    v709 = *(&v620[1] + 1);
    outlined destroy of [Input](&v709, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v708 = v621;
    outlined destroy of [Input](&v708, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v707 = *(&v621 + 1);
    outlined destroy of [Input](&v707, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

    goto LABEL_70;
  }

  if (!v625)
  {

    v706 = *(v620 + 8);
    outlined destroy of String(&v706);
    v705 = *(&v620[1] + 1);
    outlined destroy of [Input](&v705, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v704 = v621;
    outlined destroy of [Input](&v704, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v703 = *(&v621 + 1);
    outlined destroy of [Input](&v703, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v137 = swift_allocError();
    *v138 = xmmword_265F22B90;
    *(v138 + 16) = 24;
    v727._rawValue = v137;
    swift_willThrow();

    (*(v596 + 8))(v594, v595);
LABEL_70:
    LODWORD(v600._rawValue) = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v77 = 0;
    LODWORD(v599._rawValue) = 1;
    goto LABEL_71;
  }

  v645 = v624[0];
  v646 = v624[1];
  v647 = v625;
  v648 = v626;
  v649 = v627;
  v650 = v628;
  v136 = v620;
  SGDataTypeGraph.TopologicalSort.surfaceNodeElement(ofType:)(1, v629);
  checkConstantInputs(in:)(&v622);
  v139 = *&v102[v571];
  v140 = inferTextureAssignments(from:)(v139);
  v727._rawValue = 0;
  v141 = v140;

  v592 = v141;
  v117 = mapUniforms(_:)(v141);
  v142 = 0;
  v143 = *(v117 + 16);
  v144 = MEMORY[0x277D84F90];
LABEL_76:
  v145 = 48 * v142;
  v119 = v571;
  while (v143 != v142)
  {
    if (v142 >= *(v117 + 16))
    {
      __break(1u);
      goto LABEL_106;
    }

    ++v142;
    v146 = v145 + 48;
    v147 = *(v117 + v145 + 72);
    v145 += 48;
    if ((v147 & 1) == 0)
    {
      v576 = *(v117 + v146 - 16);
      v577 = v117;
      v148 = *(v117 + v146 + 8);
      v136 = *(v117 + v146 + 16);
      v575 = *(v117 + v146 - 8);

      v574 = v148;
      outlined copy of TextureSource();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v144[2] + 1, 1, v144);
      }

      v150 = v144[2];
      v149 = v144[3];
      v106 = v150 + 1;
      if (v150 >= v149 >> 1)
      {
        v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v144);
      }

      v144[2] = v106;
      v151 = &v144[4 * v150];
      v152 = v575;
      v151[4] = v576;
      v151[5] = v152;
      v151[6] = v574;
      v151[7] = v136;
      v117 = v577;
      goto LABEL_76;
    }
  }

  if (v144[2])
  {
    v153 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v154 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_89;
  }

LABEL_88:
  v153 = v117;
  v154 = MEMORY[0x277D84F98];
LABEL_89:
  v155 = v727._rawValue;
  *&v606 = v154;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v156, 1, &v606);
  v136 = v155;
  if (v155)
  {
    goto LABEL_367;
  }

  swift_bridgeObjectRelease_n();
  v157 = OBJC_IVAR___SGREMaterial_textures;
  v158 = v602;
  *&v602[OBJC_IVAR___SGREMaterial_textures] = v606;
  *&v158[OBJC_IVAR___SGREMaterial_textureAssignments] = v153;
  v159 = *&v158[v119];

  v160 = v159;
  v161 = SGGraph.createCustomUniformsType(named:textureAssignments:)(0x736D726F66696E55, 0xE800000000000000, v153);
  v727._rawValue = 0;
  v162 = v161;

  v163 = type metadata accessor for SGPropertyDescription();
  v164 = objc_allocWithZone(v163);
  v165 = &v164[OBJC_IVAR___SGPropertyDescription_name];
  *v165 = 0x736D726F66696E55;
  v165[1] = 0xE800000000000000;
  *&v164[OBJC_IVAR___SGPropertyDescription_type] = v162;
  v164[OBJC_IVAR___SGPropertyDescription_visible] = 1;
  v618.receiver = v164;
  v618.super_class = v163;
  v106 = &unk_279BBD000;
  v166 = v162;
  v167 = objc_msgSendSuper2(&v618, sel_init);

  v136 = &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  v168 = v602;
  *&v602[OBJC_IVAR___SGREMaterial_customUniformsType] = v167;
  swift_beginAccess();
  v169 = *&v168[v157];

  v170 = v727._rawValue;
  v171 = specialized SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(&v622, v169);
  v727._rawValue = v170;
  if (v170)
  {
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v702[0] = *(v620 + 8);
    outlined destroy of String(v702);
    v701 = *(&v620[1] + 1);
    outlined destroy of [Input](&v701, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v700 = v621;
    outlined destroy of [Input](&v700, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v699 = *(&v621 + 1);
    v172 = &v699;
    goto LABEL_94;
  }

  v173 = v171;

  v592 = v173;
  v174 = v727._rawValue;
  edgeListDigest(_:)(v173, v588);
  v727._rawValue = v174;
  if (v174)
  {
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v698 = *(v620 + 8);
    outlined destroy of String(&v698);
    v697 = *(&v620[1] + 1);
    outlined destroy of [Input](&v697, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v696 = v621;
    outlined destroy of [Input](&v696, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v695 = *(&v621 + 1);
    v172 = &v695;
LABEL_94:
    outlined destroy of [Input](v172, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    LODWORD(v600._rawValue) = 0;
    v74 = 0;
    v77 = 0;
    LODWORD(v599._rawValue) = 1;
    v73 = 1;
    v75 = 1;
LABEL_71:
    v76 = 1;
LABEL_72:
    v55 = v573;
LABEL_8:
    type metadata accessor for SGError();
    v78 = v727._rawValue;
    v79 = v727._rawValue;
    SGError.__allocating_init(_:)(v78);
    swift_willThrow();

    outlined destroy of [Input](v598, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
    if (v74)
    {

      return;
    }

    v80 = v602;
    if (LODWORD(v600._rawValue))
    {
      v81 = *&v602[OBJC_IVAR___SGREMaterial_surfaceShaderFunctionName + 8];

      v82 = *(v80 + OBJC_IVAR___SGREMaterial_geometryModifierFunctionName + 8);
    }

    if (LODWORD(v599._rawValue))
    {
      v83 = *(v80 + OBJC_IVAR___SGREMaterial_uniforms);
    }

    v84 = *(v80 + OBJC_IVAR___SGREMaterial_functionConstantInputs);

    if (v73)
    {
      v85 = *(v80 + OBJC_IVAR___SGREMaterial_textures);

      v86 = *(v80 + OBJC_IVAR___SGREMaterial_textureAssignments);

      if (!v75)
      {
LABEL_19:
        if (v76)
        {
          v89 = *(v80 + OBJC_IVAR___SGREMaterial_functionConstantValues);

          if (v77)
          {
LABEL_21:
            (*(v590 + 8))(v80 + OBJC_IVAR___SGREMaterial_edgeDigest, v591);
          }
        }

        else if (v77)
        {
          goto LABEL_21;
        }

        v87 = *((*MEMORY[0x277D85000] & *v80) + 0x30);
        v88 = *((*MEMORY[0x277D85000] & *v80) + 0x34);
        swift_deallocPartialClassInstance();
        return;
      }
    }

    else
    {

      if (!v75)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

  v103 = OBJC_IVAR___SGREMaterial_edgeDigest;
  v175 = v588;
  v588 = *(v590 + 32);
  (v588)(&v602[OBJC_IVAR___SGREMaterial_edgeDigest], v175, v591);
  v176 = v727._rawValue;
  v177 = inferLightingModel(from:in:)(&v645, &v622);
  v727._rawValue = v176;
  if (v176)
  {
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v694 = *(v620 + 8);
    outlined destroy of String(&v694);
    v693 = *(&v620[1] + 1);
    outlined destroy of [Input](&v693, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v692 = v621;
    outlined destroy of [Input](&v692, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v691 = *(&v621 + 1);
    v178 = &v691;
    goto LABEL_102;
  }

  *&v602[OBJC_IVAR___SGREMaterial_lightingModel] = v177;
  v179 = *(&v646 + 1);
  v180 = v647;
  if (v646 >> 62 || (v181 = *(v646 + 16), v182 = *(v646 + 24), , v183 = specialized Surface.init(nodeDefID:)(v181, v182), v183 == 3) || v183 == 5)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v184 = swift_allocError();
    *v185 = v179;
    *(v185 + 8) = v180;
    *(v185 + 16) = 10;

    v727._rawValue = v184;
    swift_willThrow();
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v654 = *(v620 + 8);
    outlined destroy of String(&v654);
    v653 = *(&v620[1] + 1);
    outlined destroy of [Input](&v653, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v652 = v621;
    outlined destroy of [Input](&v652, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v651 = *(&v621 + 1);
    v178 = &v651;
    goto LABEL_102;
  }

LABEL_106:
  specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0x7974696361706FuLL, 0xE700000000000000, &v645, &v622, v633);
  LODWORD(v577) = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
  v574 = 0xD000000000000010;
  specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000010, 0x8000000265F2E2F0, &v645, &v622, v634);
  LODWORD(v576) = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
  v575 = v622;
  v186 = *(v622 + 16);
  if (v186)
  {
    v187 = (v575 + 48);
    while (1)
    {
      v189 = *v187;
      v187 += 11;
      v188 = v189;
      if (!(v189 >> 62))
      {
        v190 = *(v188 + 16) == static MaterialXNodeTokens.discardNodeID && *(v188 + 24) == off_280042378;
        if (v190 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      if (!--v186)
      {
        goto LABEL_116;
      }
    }

    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v634);
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v633);
    v191 = 0;
  }

  else
  {
LABEL_116:
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v634);
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v633);
    v191 = v577 & ~v576 & 1;
  }

  v192 = &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  *&v602[OBJC_IVAR___SGREMaterial_blending] = v191;
  v193 = v727._rawValue;
  v194 = inferHasPremultipliedAlpha(from:in:)(&v645, &v622);
  v727._rawValue = v193;
  if (v193)
  {
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v690 = *(v620 + 8);
    outlined destroy of String(&v690);
    v689 = *(&v620[1] + 1);
    outlined destroy of [Input](&v689, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v688 = v621;
    outlined destroy of [Input](&v688, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v687 = *(&v621 + 1);
    v178 = &v687;
    goto LABEL_102;
  }

  v602[OBJC_IVAR___SGREMaterial_hasPremultipliedAlpha] = v194 & 1;
  v195 = v727._rawValue;
  v196 = inferApplyPostProcessToneMap(from:in:)(&v645, &v622);
  v727._rawValue = v195;
  if (v195)
  {
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v686 = *(v620 + 8);
    outlined destroy of String(&v686);
    v685 = *(&v620[1] + 1);
    outlined destroy of [Input](&v685, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v684 = v621;
    outlined destroy of [Input](&v684, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v683 = *(&v621 + 1);
    v178 = &v683;
LABEL_102:
    outlined destroy of [Input](v178, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    LODWORD(v600._rawValue) = 0;
    v74 = 0;
LABEL_103:
    LODWORD(v599._rawValue) = 1;
    v73 = 1;
LABEL_104:
    v75 = 1;
    v76 = 1;
    v77 = 1;
    goto LABEL_72;
  }

  v197 = v602;
  v602[OBJC_IVAR___SGREMaterial_matchUnlitColor] = (v196 & 1) == 0;
  v198 = &v197[OBJC_IVAR___SGREMaterial_surfaceShaderFunctionName];
  *v198 = 0xD000000000000018;
  *(v198 + 1) = 0x8000000265F2D560;
  v199 = 0x8000000265F2D500;
  v200 = 0xD00000000000001BLL;
  v577 = v631;
  if (!v631)
  {
    v200 = 0;
    v199 = 0;
  }

  v201 = &v197[OBJC_IVAR___SGREMaterial_geometryModifierFunctionName];
  *v201 = v200;
  v201[1] = v199;
  v202 = v727._rawValue;
  v203 = inferHasBackgroundBlur(in:)(&v622);
  v727._rawValue = v202;
  if (v202)
  {
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v682 = *(v620 + 8);
    outlined destroy of String(&v682);
    v681 = *(&v620[1] + 1);
    outlined destroy of [Input](&v681, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v680 = v621;
    outlined destroy of [Input](&v680, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v679 = *(&v621 + 1);
    v204 = &v679;
    goto LABEL_127;
  }

  v602[OBJC_IVAR___SGREMaterial_hasBackgroundBlur] = v203 & 1;
  v205 = v727._rawValue;
  v206 = inferShaderHasTimeVaryingFeatures(in:)(&v622);
  v727._rawValue = v205;
  if (v205)
  {
    (*(v596 + 8))(v594, v595);

    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    v678 = *(v620 + 8);
    outlined destroy of String(&v678);
    v677 = *(&v620[1] + 1);
    outlined destroy of [Input](&v677, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v676 = v621;
    outlined destroy of [Input](&v676, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v675 = *(&v621 + 1);
    v204 = &v675;
LABEL_127:
    outlined destroy of [Input](v204, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

LABEL_128:
    v74 = 0;
    LODWORD(v600._rawValue) = 1;
    goto LABEL_103;
  }

  v602[OBJC_IVAR___SGREMaterial_hasTimeVaryingFeatures] = v206 & 1;
  v207 = v631;
  if (!v631)
  {
    goto LABEL_146;
  }

  v208 = v630;
  if (v630 >> 62)
  {

    v674 = *(v620 + 8);
    outlined destroy of String(&v674);
    v673 = *(&v620[1] + 1);
    outlined destroy of [Input](&v673, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v672 = v621;
    outlined destroy of [Input](&v672, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v671 = *(&v621 + 1);
    v210 = &v671;
    goto LABEL_134;
  }

  v562 = v632;
  v563 = v629[0];
  v209 = *(v630 + 24);
  v576 = *(v630 + 16);
  v565 = v209;

  outlined init with copy of [Input](v629, &v606, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
  if (specialized Surface.init(nodeDefID:)(v576, v565) == 5)
  {
    outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    v670 = *(v620 + 8);
    outlined destroy of String(&v670);
    v669 = *(&v620[1] + 1);
    outlined destroy of [Input](&v669, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v668 = v621;
    outlined destroy of [Input](&v668, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v667 = *(&v621 + 1);
    v210 = &v667;
LABEL_134:
    outlined destroy of [Input](v210, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v211 = swift_allocError();
    *v212 = xmmword_265F2A0B0;
    *(v212 + 16) = 24;
    v727._rawValue = v211;
    swift_willThrow();
    outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    (*(v596 + 8))(v594, v595);
    goto LABEL_128;
  }

  specialized Graph.Node<>.input(named:)(0xD000000000000013, 0x8000000265F33D20, v563, v208, &v635);
  if (!v637)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_142;
    }

    goto LABEL_208;
  }

  v640 = v635;
  v641 = v636;
  v642 = v637;
  v643 = v638;
  v644 = v639;
  v213 = v623;
  if (!*(v623 + 16) || (v214 = specialized __RawDictionaryStorage.find<A>(_:)(v562), (v215 & 1) == 0))
  {
    outlined destroy of [Input](&v635, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    v207 = 0;
    goto LABEL_146;
  }

  v216 = *(*(v213 + 56) + 48 * v214 + 40);

  specialized Graph.edge(to:)(&v640, v216, &v606);

  outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
  outlined destroy of [Input](&v635, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  v603[2] = v608;
  v603[3] = v609;
  v603[4] = v610;
  v604 = v611;
  v603[0] = v606;
  v603[1] = v607;
  v207 = BYTE8(v607);
  if (!*(&v607 + 1))
  {
    goto LABEL_146;
  }

  v217 = &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd;
  v218 = &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR;
  v219 = v603;
  while (2)
  {
    outlined destroy of [Input](v219, v217, v218);
    v207 = 1;
LABEL_146:
    v226 = v602;
    v602[OBJC_IVAR___SGREMaterial_hasGeometryModifierOffset] = v207;
    v227 = *&v226[v571];
    v228 = v727._rawValue;
    v229 = inferShaderHasCustomUniform(from:shaderType:)(v227, 53);
    v727._rawValue = v228;
    if (v228)
    {
      (*(v596 + 8))(v594, v595);

      outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

      outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
      v666 = *(v620 + 8);
      outlined destroy of String(&v666);
      v665 = *(&v620[1] + 1);
      outlined destroy of [Input](&v665, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      v664 = v621;
      outlined destroy of [Input](&v664, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      v663 = *(&v621 + 1);
      v204 = &v663;
      goto LABEL_127;
    }

    v230 = v229;

    v602[OBJC_IVAR___SGREMaterial_hasSurfaceShaderUniforms] = v230 & 1;
    if (v577)
    {
      v231 = *&v602[v571];
      v232 = v727._rawValue;
      v233 = inferShaderHasCustomUniform(from:shaderType:)(v231, 54);
      v727._rawValue = v232;
      if (v232)
      {
        (*(v596 + 8))(v594, v595);

        outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
        v662 = *(v620 + 8);
        outlined destroy of String(&v662);
        v661 = *(&v620[1] + 1);
        outlined destroy of [Input](&v661, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        v660 = v621;
        outlined destroy of [Input](&v660, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        v659 = *(&v621 + 1);
        v204 = &v659;
        goto LABEL_127;
      }

      v234 = v233;

      v602[OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms] = v234 & 1;
    }

    else
    {
      v602[OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms] = 0;
    }

    v235 = v727._rawValue;
    v236 = inferHighestConnectedLightSpillNodeRequirements(in:)(&v622);
    v577 = v235;
    if (v235)
    {
      (*(v596 + 8))(v594, v595);

      outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

      outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
      v658 = *(v620 + 8);
      outlined destroy of String(&v658);
      v657 = *(&v620[1] + 1);
      outlined destroy of [Input](&v657, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      v656 = v621;
      outlined destroy of [Input](&v656, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      v655 = *(&v621 + 1);
      outlined destroy of [Input](&v655, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

      v74 = 0;
      LODWORD(v600._rawValue) = 1;
      v727._rawValue = v577;
      goto LABEL_103;
    }

    v237 = v602;
    v602[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodes] = 0x10100u >> (8 * v236);
    v237[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodesWithRoughness] = 0x10000u >> (8 * v236);
    v238 = v237;
    Hasher.init()();
    v239 = v590;
    v240 = *(v590 + 16);
    v241 = &v238[v103];
    v242 = v587;
    v565 = v590 + 16;
    v563 = v240;
    v240(v587, v241, v591);
    SHA512Digest.hash(into:)();
    v560 = *(v239 + 8);
    v561 = v239 + 8;
    v560(v242, v591);
    v724 = v616[3];
    v725 = v616[4];
    v726 = v617;
    v722 = v616[1];
    v723 = v616[2];
    v243 = Hasher.finalize()();
    *&v602[OBJC_IVAR___SGREMaterial_operationalHash] = v243;
    *&v606 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v244 = v606;
    *&v603[0] = v243;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    v576 = String.init<A>(_:radix:uppercase:)();
    v571 = v245;
    v247 = *(v244 + 16);
    v246 = *(v244 + 24);
    v248 = v244;
    v727._rawValue = (v247 + 1);
    v562 = v247;
    if (v247 >= v246 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v246 > 1), v727._rawValue, 1);
      v248 = v606;
    }

    v248[2]._rawValue = v727._rawValue;
    v249 = &v248[2 * v562];
    v250 = v571;
    v249[4]._rawValue = v576;
    v249[5]._rawValue = v250;
    *&v606 = v248;
    v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v571 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v251 = BidirectionalCollection<>.joined(separator:)();
    v727._rawValue = v252;

    v253 = &v602[OBJC_IVAR___SGREMaterial_operationalHashString];
    v254 = v727._rawValue;
    *v253 = v251;
    v253[1] = v254;
    v255 = v579;
    outlined init with copy of [Input](v598, v579, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
    v727._rawValue = *(v590 + 48);
    if ((v727._rawValue)(v255, 1, v591) == 1)
    {
      v256 = v591;
      v563(v578, &v602[v103], v591);
      if ((v727._rawValue)(v579, 1, v256) != 1)
      {
        outlined destroy of [Input](v579, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
      }
    }

    else
    {
      (v588)(v578, v579, v591);
    }

    v257 = v602;
    (v588)(&v602[OBJC_IVAR___SGREMaterial_sourceHash], v578, v591);
    v258 = &v257[OBJC_IVAR___SGREMaterial_internalGraph];
    v259 = v620[1];
    *v258 = v620[0];
    *(v258 + 1) = v259;
    *(v258 + 2) = v621;
    *&v257[OBJC_IVAR___SGREMaterial_warnings] = MEMORY[0x277D84F90];
    v616[0].receiver = v257;
    v616[0].super_class = ObjectType;
    v602 = objc_msgSendSuper2(v616, *(v106 + 760));
    v260 = v566;
    v261 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    LODWORD(v727._rawValue) = static os_signpost_type_t.end.getter();
    v579 = v260;

    if (OS_os_log.signpostsEnabled.getter())
    {

      v262 = v580;
      checkForErrorAndConsumeState(state:)();

      if ((*(v581 + 88))(v262, v582) == *MEMORY[0x277D85B00])
      {
        v263 = 0;
        v264 = 0;
        v588 = "[Error] Interval already ended";
      }

      else
      {
        (*(v581 + 8))(v580, v582);
        v588 = "%{private,mask.hash}s ";
        v264 = 3;
        v263 = 2;
      }

      v266 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      *&v606 = v267;
      *v266 = v264;
      *(v266 + 1) = v263;
      *(v266 + 2) = 2160;
      *(v266 + 4) = 1752392040;
      *(v266 + 12) = 2081;
      v269 = *&v579[OBJC_IVAR___SGGraph_name];
      v268 = *&v579[OBJC_IVAR___SGGraph_name + 8];

      v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v269, v268, &v606);

      *(v266 + 14) = v270;
      v271 = v583;
      v272 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v261, v727._rawValue, v272, "shaderGraphMaterial", v588, v266, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v267);
      MEMORY[0x266773120](v267, -1, -1);
      MEMORY[0x266773120](v266, -1, -1);

      v265 = v271;
    }

    else
    {

      v265 = v583;
    }

    v569(v265, v599._rawValue);
    v273 = static DebugConfig.debugMode;

    v274 = specialized Set.contains(_:)(6, v273);

    if ((v274 & 1) == 0)
    {
      v275 = static DebugConfig.debugMode;

      v276 = specialized Set.contains(_:)(3, v275);

      if ((v276 & 1) == 0)
      {
        v277 = static DebugConfig.debugMode;

        v278 = specialized Set.contains(_:)(1, v277);

        if ((v278 & 1) == 0)
        {

          outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
          v324 = 0;
          v325 = 0;
          v326 = 0xE000000000000000;
          goto LABEL_351;
        }
      }
    }

    v279 = *(v575 + 16);
    if (v279)
    {
      v614 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v279, 0);
      v280 = v614;
      v281 = v575 + 32;
      v727._rawValue = (v279 - 1);
      while (1)
      {
        v282 = *(v281 + 64);
        v283 = *(v281 + 80);
        v284 = *(v281 + 32);
        v609 = *(v281 + 48);
        v285 = *(v281 + 16);
        v606 = *v281;
        v607 = v285;
        *&v611 = v283;
        v608 = v284;
        v610 = v282;
        v286 = *(&v285 + 1);
        v287 = v284;
        v615 = v609;
        outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v606, v603);

        MEMORY[0x266771550](46, 0xE100000000000000);

        MEMORY[0x266771550](v286, v287);

        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v606);
        v588 = *(&v615 + 1);
        v599._rawValue = v615;
        v614 = v280;
        v289 = *(v280 + 16);
        v288 = *(v280 + 24);
        if (v289 >= v288 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v288 > 1), v289 + 1, 1);
          v280 = v614;
        }

        *(v280 + 16) = v289 + 1;
        v290 = (v280 + 16 * v289);
        v291 = v588;
        v290[4]._rawValue = v599._rawValue;
        v290[5]._rawValue = v291;
        if (!v727._rawValue)
        {
          break;
        }

        --v727._rawValue;
        v281 += 88;
      }

      outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
    }

    else
    {
      outlined destroy of SGDataTypeGraph.TopologicalSort(&v622);
      v280 = MEMORY[0x277D84F90];
    }

    *&v606 = v280;
    v580 = BidirectionalCollection<>.joined(separator:)();
    v581 = v292;

    v106 = v602;
    v555 = ObjectIdentifier.debugDescription.getter();
    v556 = v293;
    v294 = (*(v106 + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v295 = v294[1];
    v558 = *v294;
    v296 = (v106 + OBJC_IVAR___SGREMaterial_operationalHashString);
    swift_beginAccess();
    v297 = *v296;
    v298 = v296[1];
    v562 = v297;
    v299 = v587;
    v563(v587, (v106 + OBJC_IVAR___SGREMaterial_edgeDigest), v591);
    v559 = v295;

    v563 = v298;

    v300 = SHA512Digest.description.getter();
    v727._rawValue = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v300, v301);
    v599._rawValue = v302;
    v304 = v303;
    v306 = v305;

    v553 = MEMORY[0x2667714E0](v727._rawValue, v599._rawValue, v304, v306);
    v554 = v307;

    v560(v299, v591);
    v308 = *(v106 + OBJC_IVAR___SGREMaterial_lightingModel);
    switch(v308)
    {
      case 1:
        v549 = 0xE300000000000000;
        v309 = 7496304;
        break;
      case 2:
        v549 = 0xE500000000000000;
        v309 = 0x74696C6E75;
        break;
      case 3:
        v549 = 0xE900000000000074;
        v309 = 0x616F637261656C63;
        break;
      default:
        v549 = 0x8000000265F33AD0;
        v309 = 0xD000000000000012;
        break;
    }

    v548 = v309;
    v310 = *&v602[*(v192 + 152)];
    if (v310)
    {
      if (v310 == 1)
      {
        v552 = 0xEB00000000746E65;
        v311 = 0x726170736E617274;
      }

      else
      {
        v552 = 0xEF3E65756C617620;
        v311 = 0x64696C61766E693CLL;
      }
    }

    else
    {
      v552 = 0xE600000000000000;
      v311 = 0x65757161706FLL;
    }

    v551 = v311;
    v557 = v602[OBJC_IVAR___SGREMaterial_hasPremultipliedAlpha];
    v550 = v602[OBJC_IVAR___SGREMaterial_matchUnlitColor];
    LODWORD(v572) = v602[OBJC_IVAR___SGREMaterial_hasSurfaceShaderUniforms];
    LODWORD(v575) = v602[OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms];
    LODWORD(v565) = v602[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodes];
    LODWORD(v566) = v602[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodesWithRoughness];
    LODWORD(v569) = v602[OBJC_IVAR___SGREMaterial_hasBackgroundBlur];
    LODWORD(v578) = v602[OBJC_IVAR___SGREMaterial_hasGeometryModifierOffset];
    v103 = *&v602[v107[15]];
    if (!(v103 >> 62))
    {
      v588 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v588)
      {
        goto LABEL_212;
      }

LABEL_192:
      *&v603[0] = MEMORY[0x277D84F90];

      v192 = v588;
      specialized ContiguousArray.reserveCapacity(_:)(v588);
      if ((v192 & 0x8000000000000000) == 0)
      {
        v312 = 0;
        v582 = v103 & 0xFFFFFFFFFFFFFF8;
        v583 = v103 & 0xC000000000000001;
        while (1)
        {
          v727._rawValue = (v312 + 1);
          if (__OFADD__(v312, 1))
          {
            break;
          }

          if (v583)
          {
            v313 = MEMORY[0x266772030](v312, v103);
          }

          else
          {
            if (v312 >= *(v582 + 16))
            {
              goto LABEL_207;
            }

            v313 = *(v103 + 8 * v312 + 32);
          }

          v314 = v313;
          v316 = *&v313[OBJC_IVAR___SGInput_name];
          v315 = *&v313[OBJC_IVAR___SGInput_name + 8];
          *&v606 = v316;
          *(&v606 + 1) = v315;

          MEMORY[0x266771550](8250, 0xE200000000000000);
          v317 = OBJC_IVAR___SGInput_type;
          swift_beginAccess();
          v318 = *&v314[v317];
          v319 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v319);

          v192 = *(&v606 + 1);
          v320 = v606;
          v599._rawValue = *&v603[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v599._rawValue + 2) + 1, 1);
            v599._rawValue = *&v603[0];
          }

          v106 = *(v599._rawValue + 2);
          v321 = *(v599._rawValue + 3);
          v107 = (v106 + 1);
          if (v106 >= v321 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v321 > 1), v106 + 1, 1);
            v599._rawValue = *&v603[0];
          }

          v322 = v599._rawValue;
          *(v599._rawValue + 2) = v107;
          v323 = &v322[16 * v106];
          *(v323 + 4) = v320;
          *(v323 + 5) = v192;
          ++v312;
          if (v727._rawValue == v588)
          {

            goto LABEL_213;
          }
        }

        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        swift_once();
LABEL_142:
        v220 = type metadata accessor for Logger();
        __swift_project_value_buffer(v220, logger);
        v221 = Logger.logObject.getter();
        v222 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          *v223 = 0;
          v224 = v222;
          v225 = v223;
          _os_log_impl(&dword_265D7D000, v221, v224, "GeometryModifier is missing an expected input.", v223, 2u);
          MEMORY[0x266773120](v225, -1, -1);
        }

        v217 = &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd;
        v218 = &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR;
        v219 = v629;
        continue;
      }

      __break(1u);
LABEL_364:
      __break(1u);
      goto LABEL_365;
    }

    break;
  }

  if (v103 < 0)
  {
    v327 = *&v602[v107[15]];
  }

  v588 = __CocoaSet.count.getter();
  if (v588)
  {
    goto LABEL_192;
  }

LABEL_212:
  v599._rawValue = MEMORY[0x277D84F90];
LABEL_213:
  v328 = OBJC_IVAR___SGREMaterial_textures;
  v329 = v602;
  swift_beginAccess();
  v330 = *&v329[v328];

  v332 = v577;
  v547._rawValue = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SSs5NeverOTg5128_s11ShaderGraph18SGREMaterialSourceC5graph13configurationAcA7SGGraphC_AA23SGMaterialConfigurationCtKcfcS2S3key_SS5valuet_tXEfU8_Tf1cn_n(v331);
  v577 = v332;

  v334 = v136[30];
  v335 = *(*(*(*&v329[v334] + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 56);
  if (v335)
  {
    *&v606 = 0x203A657A69732820;
    *(&v606 + 1) = 0xE800000000000000;
    LODWORD(v603[0]) = v335;
    v336 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v336);

    MEMORY[0x266771550](0x6D6E67696C61202CLL, 0xED0000203A746E65);
    v136 = v602;
    LODWORD(v603[0]) = *(*(*(*&v602[v334] + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 60);
    v337 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v337);

    MEMORY[0x266771550](2601, 0xE200000000000000);
    v338 = *(**(*(*(v136 + v334) + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 232);

    v340 = v338(v339);

    v727._rawValue = v340;
    v341 = v340[2];
    if (v341)
    {
      *&v603[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)(v341);
      v342 = *&v603[0];
      v343 = v727._rawValue + 40;
      do
      {
        v345 = *(v343 - 1);
        v344 = *v343;
        v347 = *(v343 + 1);
        v346 = *(v343 + 2);
        v348 = v343[24];
        v349 = *(v343 + 10);

        v136 = specialized closure #8 in SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v345, v344, v347, v348);
        v351 = v350;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v342 + 16) + 1, 1);
          v342 = *&v603[0];
        }

        v353 = *(v342 + 16);
        v352 = *(v342 + 24);
        if (v353 >= v352 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v352 > 1), v353 + 1, 1);
          v342 = *&v603[0];
        }

        v343 += 56;
        *(v342 + 16) = v353 + 1;
        v354 = v342 + 16 * v353;
        *(v354 + 32) = v136;
        *(v354 + 40) = v351;
        --v341;
      }

      while (v341);
    }

    else
    {

      v342 = MEMORY[0x277D84F90];
    }

    *&v603[0] = v342;
    v355 = BidirectionalCollection<>.joined(separator:)();
    v357 = v356;

    MEMORY[0x266771550](v355, v357);

    v333 = MEMORY[0x266771550](10506, 0xE200000000000000);
    v546 = v606;
  }

  else
  {
    *&v546 = 0x2D656E6F6E2D09;
    *(&v546 + 1) = 0xE700000000000000;
  }

  v600._rawValue = (*((*MEMORY[0x277D85000] & *v597) + 0x60))(v333);
  if (v600._rawValue >> 62)
  {
    v358 = __CocoaSet.count.getter();
    if (!v358)
    {
      goto LABEL_239;
    }

LABEL_227:
    *&v603[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)(v358);
    if ((v358 & 0x8000000000000000) == 0)
    {
      v359 = 0;
      v360 = v600._rawValue & 0xC000000000000001;
      do
      {
        if (v360)
        {
          v361 = MEMORY[0x266772030](v359, v600._rawValue);
        }

        else
        {
          v361 = *(v600._rawValue + v359 + 4);
        }

        v362 = v361;
        v364 = *&v361[OBJC_IVAR___SGGeometryPropertyDefinition_name];
        v363 = *&v361[OBJC_IVAR___SGGeometryPropertyDefinition_name + 8];
        *&v606 = v364;
        *(&v606 + 1) = v363;

        MEMORY[0x266771550](540945696, 0xE400000000000000);
        MEMORY[0x266771550](*&v362[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName], *&v362[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8]);

        v365 = *(&v606 + 1);
        v136 = v606;
        v727._rawValue = *&v603[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v727._rawValue + 2) + 1, 1);
          v727._rawValue = *&v603[0];
        }

        v367 = *(v727._rawValue + 2);
        v366 = *(v727._rawValue + 3);
        if (v367 >= v366 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v366 > 1), v367 + 1, 1);
          v727._rawValue = *&v603[0];
        }

        ++v359;
        v368 = v727._rawValue;
        *(v727._rawValue + 2) = v367 + 1;
        v369 = &v368[16 * v367];
        *(v369 + 4) = v136;
        *(v369 + 5) = v365;
      }

      while (v358 != v359);

      goto LABEL_240;
    }

    goto LABEL_364;
  }

  v358 = *((v600._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v358)
  {
    goto LABEL_227;
  }

LABEL_239:

  v727._rawValue = MEMORY[0x277D84F90];
LABEL_240:
  v370 = OBJC_IVAR___SGREMaterial_functionConstantInputs;
  v371 = v602;
  swift_beginAccess();
  v588 = v370;
  v600._rawValue = *&v370[v371];
  if (v600._rawValue >> 62)
  {
    v372 = __CocoaSet.count.getter();
  }

  else
  {
    v372 = *((v600._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v373 = MEMORY[0x277D84F90];
  if (!v372)
  {
LABEL_254:
    v582 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v373);

    v588 = *&v602[v588];
    if (v588 >> 62)
    {
      v583 = __CocoaSet.count.getter();
      if (v583)
      {
        goto LABEL_256;
      }
    }

    else
    {
      v583 = *((v588 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v583)
      {
LABEL_256:
        *&v603[0] = MEMORY[0x277D84F90];

        v383 = v583;
        specialized ContiguousArray.reserveCapacity(_:)(v583);
        if (v383 < 0)
        {
          goto LABEL_366;
        }

        v384 = 0;
        v385 = v588 & 0xC000000000000001;
        do
        {
          if (v385)
          {
            v386 = MEMORY[0x266772030](v384, v588);
          }

          else
          {
            v386 = *(v588 + 8 * v384 + 32);
          }

          v387 = v386;
          v389 = *&v386[OBJC_IVAR___SGInput_name];
          v388 = *&v386[OBJC_IVAR___SGInput_name + 8];
          *&v606 = v389;
          *(&v606 + 1) = v388;

          MEMORY[0x266771550](8250, 0xE200000000000000);
          v390 = v606;
          v391 = OBJC_IVAR___SGInput_type;
          swift_beginAccess();
          v392 = *&v387[v391];
          v393 = SGDataType.stringValue.getter();
          v395 = v394;
          v606 = v390;

          MEMORY[0x266771550](v393, v395);

          v396 = v606;
          v600._rawValue = *&v603[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v600._rawValue + 2) + 1, 1);
            v600._rawValue = *&v603[0];
          }

          v398 = *(v600._rawValue + 2);
          v397 = *(v600._rawValue + 3);
          if (v398 >= v397 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v397 > 1), v398 + 1, 1);
            v600._rawValue = *&v603[0];
          }

          ++v384;
          v399 = v600._rawValue;
          *(v600._rawValue + 2) = v398 + 1;
          v399[v398 + 2] = v396;
        }

        while (v583 != v384);

        goto LABEL_270;
      }
    }

    v600._rawValue = MEMORY[0x277D84F90];
LABEL_270:
    v588 = *&v602[OBJC_IVAR___SGREMaterial_functionConstantValues];
    v400 = *(v588 + 16);
    if (v400)
    {
      v613 = MEMORY[0x277D84F90];
      v401 = v588;

      specialized ContiguousArray.reserveCapacity(_:)(v400);
      v402 = v400 - 1;
      for (i = v401 + 64; ; i += 112)
      {
        v404 = *(i - 32);
        v405 = *i;
        v607 = *(i - 16);
        v608 = v405;
        v606 = v404;
        v406 = *(i + 16);
        v407 = *(i + 32);
        v408 = *(i + 48);
        v612 = *(i + 64);
        v610 = v407;
        v611 = v408;
        v609 = v406;
        v409 = *i;
        v410 = *(i + 16);
        v411 = *(i + 32);
        v412 = *(i + 48);
        v721 = *(i + 64);
        v719 = v411;
        v720 = v412;
        v717 = v409;
        v718 = v410;
        v413 = v606;
        v605 = v606;
        outlined init with copy of FunctionConstantValue(&v606, v603);

        MEMORY[0x266771550](8250, 0xE200000000000000);
        v414 = v605;
        v415 = SGDataType.stringValue.getter();
        v417 = v416;
        v603[0] = v414;

        MEMORY[0x266771550](v415, v417);

        MEMORY[0x266771550](2112800, 0xE300000000000000);

        v418 = v603[0];
        v419 = SGDataTypeStorage.valueString.getter();
        v421 = v420;
        v603[0] = v418;

        MEMORY[0x266771550](v419, v421);

        v422 = v603[0];
        v423 = specialized Set.contains(_:)(v413, *(&v413 + 1), v582);
        if (v423)
        {
          v424 = 0;
        }

        else
        {
          v424 = 0x696D616E79642820;
        }

        if (v423)
        {
          v425 = 0xE000000000000000;
        }

        else
        {
          v425 = 0xEA00000000002963;
        }

        v603[0] = v422;

        MEMORY[0x266771550](v424, v425);

        outlined destroy of FunctionConstantValue(&v606);
        v426 = v603[0];
        v427._rawValue = v613;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v427._rawValue + 2) + 1, 1);
          v427._rawValue = v613;
        }

        v429 = *(v427._rawValue + 2);
        v428 = *(v427._rawValue + 3);
        if (v429 >= v428 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v428 > 1), v429 + 1, 1);
          v427._rawValue = v613;
        }

        *(v427._rawValue + 2) = v429 + 1;
        *(v427._rawValue + v429 + 2) = v426;
        if (!v402)
        {
          break;
        }

        --v402;
      }
    }

    else
    {

      v427._rawValue = MEMORY[0x277D84F90];
    }

    LODWORD(v588) = v602[OBJC_IVAR___SGREMaterial_hasTimeVaryingFeatures];
    *&v606 = 0;
    *(&v606 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(509);
    MEMORY[0x266771550](0xD000000000000016, 0x8000000265F33AF0);
    MEMORY[0x266771550](v555, v556);

    MEMORY[0x266771550](0x203A656D616E0ALL, 0xE700000000000000);
    MEMORY[0x266771550](v558, v559);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F33B10);
    MEMORY[0x266771550](v562, v563);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FA30);
    MEMORY[0x266771550](v553, v554);

    v430 = v574;
    MEMORY[0x266771550](v574, 0x8000000265F33B30);
    MEMORY[0x266771550](v548, v549);

    MEMORY[0x266771550](0x6E69646E656C620ALL, 0xEB00000000203A67);
    MEMORY[0x266771550](v551, v552);

    MEMORY[0x266771550](0xD00000000000001ALL, 0x8000000265F33B50);
    if (v550)
    {
      v431 = 0x65736C6166;
    }

    else
    {
      v431 = 1702195828;
    }

    if (v550)
    {
      v432 = 0xE500000000000000;
    }

    else
    {
      v432 = 0xE400000000000000;
    }

    if (v550)
    {
      v433 = 1702195828;
    }

    else
    {
      v433 = 0x65736C6166;
    }

    if (v550)
    {
      v434 = 0xE400000000000000;
    }

    else
    {
      v434 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v431, v432);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F33B70);
    MEMORY[0x266771550](v433, v434);

    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F33B90);
    if (v557)
    {
      v435 = 1702195828;
    }

    else
    {
      v435 = 0x65736C6166;
    }

    if (v557)
    {
      v436 = 0xE400000000000000;
    }

    else
    {
      v436 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v435, v436);

    MEMORY[0x266771550](v430, 0x8000000265F33BB0);
    if (v565)
    {
      v437 = 1702195828;
    }

    else
    {
      v437 = 0x65736C6166;
    }

    if (v565)
    {
      v438 = 0xE400000000000000;
    }

    else
    {
      v438 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v437, v438);

    MEMORY[0x266771550](0xD000000000000019, 0x8000000265F33BD0);
    if (v566)
    {
      v439 = 1702195828;
    }

    else
    {
      v439 = 0x65736C6166;
    }

    if (v566)
    {
      v440 = 0xE400000000000000;
    }

    else
    {
      v440 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v439, v440);

    MEMORY[0x266771550](0xD000000000000014, 0x8000000265F33BF0);
    if (v569)
    {
      v441 = 1702195828;
    }

    else
    {
      v441 = 0x65736C6166;
    }

    if (v569)
    {
      v442 = 0xE400000000000000;
    }

    else
    {
      v442 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v441, v442);

    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F33C10);
    if (v572)
    {
      v443 = 1702195828;
    }

    else
    {
      v443 = 0x65736C6166;
    }

    if (v572)
    {
      v444 = 0xE400000000000000;
    }

    else
    {
      v444 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v443, v444);

    MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F33C30);
    if (v575)
    {
      v445 = 1702195828;
    }

    else
    {
      v445 = 0x65736C6166;
    }

    if (v575)
    {
      v446 = 0xE400000000000000;
    }

    else
    {
      v446 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v445, v446);

    MEMORY[0x266771550](0xD000000000000021, 0x8000000265F33C50);
    if (v578)
    {
      v447 = 1702195828;
    }

    else
    {
      v447 = 0x65736C6166;
    }

    if (v578)
    {
      v448 = 0xE400000000000000;
    }

    else
    {
      v448 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v447, v448);

    MEMORY[0x266771550](0xD000000000000019, 0x8000000265F33C80);
    if (v588)
    {
      v449 = 1702195828;
    }

    else
    {
      v449 = 0x65736C6166;
    }

    if (v588)
    {
      v450 = 0xE400000000000000;
    }

    else
    {
      v450 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v449, v450);

    MEMORY[0x266771550](0x6D726F66696E750ALL, 0xEB000000000A3A73);
    v451 = logArray(_:tabs:)(v599, 1);

    MEMORY[0x266771550](v451._countAndFlagsBits, v451._object);

    MEMORY[0x266771550](0xD00000000000001CLL, 0x8000000265F33CA0);
    v452 = logArray(_:tabs:)(v600, 1);

    MEMORY[0x266771550](v452._countAndFlagsBits, v452._object);

    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F33CC0);
    v453 = logArray(_:tabs:)(v427, 1);

    MEMORY[0x266771550](v453._countAndFlagsBits, v453._object);

    MEMORY[0x266771550](0xD000000000000011, 0x8000000265F2FAB0);
    v454 = logArray(_:tabs:)(v547, 1);

    MEMORY[0x266771550](v454._countAndFlagsBits, v454._object);

    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F33CE0);
    MEMORY[0x266771550](v546, *(&v546 + 1));

    MEMORY[0x266771550](0xD000000000000013, 0x8000000265F2FAD0);
    v455 = logArray(_:tabs:)(v727, 1);

    MEMORY[0x266771550](v455._countAndFlagsBits, v455._object);

    MEMORY[0x266771550](2960650, 0xE300000000000000);

    MEMORY[0x266771550](0x6C20656764450A0ALL, 0xED00000A3A747369);

    v456 = v606;
    *&v606 = v592;
    v457 = BidirectionalCollection<>.joined(separator:)();
    v459 = v458;

    v606 = v456;

    MEMORY[0x266771550](v457, v459);

    MEMORY[0x266771550](0xD000000000000014, 0x8000000265F33D00);

    MEMORY[0x266771550](v580, v581);

    v326 = *(&v606 + 1);
    v324 = v606;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v460 = type metadata accessor for Logger();
    __swift_project_value_buffer(v460, logger);

    v461 = Logger.logObject.getter();
    v462 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v461, v462))
    {
      v463 = swift_slowAlloc();
      v464 = swift_slowAlloc();
      *&v606 = v464;
      *v463 = 136315138;
      *(v463 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v324, v326, &v606);
      _os_log_impl(&dword_265D7D000, v461, v462, "%s", v463, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v464);
      MEMORY[0x266773120](v464, -1, -1);
      MEMORY[0x266773120](v463, -1, -1);
    }

    v325 = 1;
LABEL_351:
    v465 = static DebugConfig.debugMode;

    v466 = specialized Set.contains(_:)(0, v465);

    if (v466)
    {

      outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    }

    else
    {
      *&v606 = v564;
      *(&v606 + 1) = v567;

      MEMORY[0x266771550](170536714, 0xE400000000000000);

      MEMORY[0x266771550](v324, v326);

      MEMORY[0x266771550](170863114, 0xE400000000000000);

      v467 = *(&v606 + 1);
      if (v325)
      {
        v727._rawValue = v606;
        v468 = (*&v602[OBJC_IVAR___SGREMaterial_graph] + OBJC_IVAR___SGGraph_name);
        v469 = v468[1];
        *&v606 = *v468;
        *(&v606 + 1) = v469;

        MEMORY[0x266771550](95, 0xE100000000000000);
        v470 = SHA512Digest.description.getter();
        v472 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v470, v471);
        v474 = v473;
        v476 = v475;
        v478 = v477;

        v479 = MEMORY[0x2667714E0](v472, v474, v476, v478);
        v481 = v480;

        *&v603[0] = v479;
        *(&v603[0] + 1) = v481;

        MEMORY[0x266771550](95, 0xE100000000000000);

        v482 = v603[0];
        v483 = SHA512Digest.description.getter();
        v485 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v483, v484);
        v487 = v486;
        v489 = v488;
        v491 = v490;

        v492 = MEMORY[0x2667714E0](v485, v487, v489, v491);
        v494 = v493;

        v603[0] = v482;

        MEMORY[0x266771550](v492, v494);

        MEMORY[0x266771550](*&v603[0], *(&v603[0] + 1));

        MEMORY[0x266771550](0x7972616D6D75735FLL, 0xE800000000000000);
        specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v727._rawValue, v467, v606, *(&v606 + 1), 7630692, 0xE300000000000000);
      }

      v495 = static DebugConfig.debugMode;

      v496 = specialized Set.contains(_:)(8, v495);

      if ((v496 & 1) != 0 && v570)
      {
        v497 = type metadata accessor for PropertyListEncoder();
        v498 = *(v497 + 48);
        v499 = *(v497 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        *&v606 = v568;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
        lazy protocol witness table accessor for type [FunctionConstantValue] and conformance <A> [A]();
        v500 = v577;
        v501 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v727._rawValue = v500;
        if (v500)
        {
          (*(v596 + 8))(v594, v595);
          outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

          LODWORD(v600._rawValue) = 1;
          LODWORD(v599._rawValue) = 1;
          v73 = 1;
          v74 = 1;
          goto LABEL_104;
        }

        v503 = v501;
        v504 = v502;

        lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest(&lazy protocol witness table cache variable for type SHA512 and conformance SHA512, MEMORY[0x277CC5560]);
        v505 = v584;
        v506 = v586;
        dispatch thunk of HashFunction.init()();
        outlined copy of Data._Representation(v503, v504);
        v600._rawValue = v503;
        v507 = v727._rawValue;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v503, v504);
        v577 = v507;
        outlined consume of Data._Representation(v503, v504);
        dispatch thunk of HashFunction.finalize()();
        (*(v585 + 8))(v505, v506);
        v508 = SHA512Digest.description.getter();
        v510 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v508, v509);
        v512 = v511;
        v514 = v513;
        v516 = v515;

        v727._rawValue = MEMORY[0x2667714E0](v510, v512, v514, v516);
        v599._rawValue = v517;

        v518 = (*&v602[OBJC_IVAR___SGREMaterial_graph] + OBJC_IVAR___SGGraph_name);
        v519 = v518[1];
        *&v606 = *v518;
        *(&v606 + 1) = v519;

        MEMORY[0x266771550](95, 0xE100000000000000);
        v520 = SHA512Digest.description.getter();
        v522 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v520, v521);
        v524 = v523;
        v526 = v525;
        v528 = v527;

        v529 = MEMORY[0x2667714E0](v522, v524, v526, v528);
        v531 = v530;

        *&v603[0] = v529;
        *(&v603[0] + 1) = v531;

        MEMORY[0x266771550](95, 0xE100000000000000);

        v532 = v603[0];
        v533 = SHA512Digest.description.getter();
        v535 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v533, v534);
        v537 = v536;
        v539 = v538;
        v541 = v540;

        v542 = MEMORY[0x2667714E0](v535, v537, v539, v541);
        v544 = v543;

        v603[0] = v532;

        MEMORY[0x266771550](v542, v544);

        MEMORY[0x266771550](*&v603[0], *(&v603[0] + 1));

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v727._rawValue, v599._rawValue);

        MEMORY[0x266771550](0xD000000000000012, 0x8000000265F33AB0);
        v545 = v600._rawValue;
        specialized static FileLogger.saveDebugFile(_:name:extension:)(v600._rawValue, v504, v606, *(&v606 + 1), 0x7473696C70, 0xE500000000000000);
        outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        outlined consume of Data._Representation(v545, v504);

        outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        outlined destroy of [Input](v598, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
        v560(v587, v591);
        goto LABEL_361;
      }

      outlined destroy of [Input](v624, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    }

    outlined destroy of [Input](v629, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of [Input](v598, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
LABEL_361:
    (*(v596 + 8))(v594, v595);
    return;
  }

  *&v606 = MEMORY[0x277D84F90];

  specialized ContiguousArray.reserveCapacity(_:)(v372);
  if ((v372 & 0x8000000000000000) == 0)
  {
    v374 = 0;
    v375 = v600._rawValue & 0xC000000000000001;
    do
    {
      if (v375)
      {
        v376 = MEMORY[0x266772030](v374, v600._rawValue);
      }

      else
      {
        v376 = *(v600._rawValue + v374 + 4);
      }

      v377 = v376;
      v378 = &v376[OBJC_IVAR___SGInput_name];
      swift_beginAccess();
      v136 = *v378;
      v379 = v378[1];

      v373 = v606;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v373 + 16) + 1, 1);
        v373 = v606;
      }

      v381 = *(v373 + 16);
      v380 = *(v373 + 24);
      if (v381 >= v380 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v380 > 1), v381 + 1, 1);
        v373 = v606;
      }

      ++v374;
      *(v373 + 16) = v381 + 1;
      v382 = v373 + 16 * v381;
      *(v382 + 32) = v136;
      *(v382 + 40) = v379;
    }

    while (v372 != v374);

    goto LABEL_254;
  }

LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:

  __break(1u);
}

id SGREMaterial.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGREMaterial.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SGREMaterial.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of [Input](a1, v10, &_sypSgMd, &_sypSgMR);
  if (!v11)
  {
    outlined destroy of [Input](v10, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  if (v9 == v1)
  {

    v7 = 1;
    return v7 & 1;
  }

  type metadata accessor for NSObject();
  v3 = *&v1[OBJC_IVAR___SGREMaterial_graph];
  v4 = *&v9[OBJC_IVAR___SGREMaterial_graph];
  LOBYTE(v3) = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = *&v1[OBJC_IVAR___SGREMaterial_config];
  v6 = *&v9[OBJC_IVAR___SGREMaterial_config];
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized closure #8 in SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v14[8] = 0;
  _StringGuts.grow(_:)(58);
  MEMORY[0x266771550](9, 0xE100000000000000);
  MEMORY[0x266771550](a1, a2);
  MEMORY[0x266771550](8250, 0xE200000000000000);
  MEMORY[0x266771550](*(a3 + 24), *(a3 + 32));
  MEMORY[0x266771550](0x74657366666F2820, 0xEA0000000000203ALL);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](0x203A657A6973202CLL, 0xE800000000000000);
  *v14 = *(a3 + 56);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v9);

  MEMORY[0x266771550](0x6D6E67696C61202CLL, 0xED0000203A746E65);
  *v14 = *(a3 + 60);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v10);

  MEMORY[0x266771550](0x6C6269736976202CLL, 0xEB00000000203A65);
  if (a4)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a4)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v11, v12);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return *&v14[4];
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t type metadata accessor for SGREMaterial()
{
  result = type metadata singleton initialization cache for SGREMaterial;
  if (!type metadata singleton initialization cache for SGREMaterial)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SGREMaterial()
{
  result = type metadata accessor for SHA512Digest();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t OrderedSet.union(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized OrderedSet.union(_:)(a1, a2, a3);

  return v3;
}

{
  v3 = specialized OrderedSet.union(_:)(a1, a2, a3);

  return v3;
}

uint64_t OrderedSet.formUnion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized OrderedSet.formUnion(_:)(a1, a2, a3);
}

{
  v5[0] = a1;
  v5[1] = a2;
  swift_getWitnessTable();
  OrderedSet.append<A>(contentsOf:)(v5, a3, a3);
}

uint64_t OrderedSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v27 = a2;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  v18 = OrderedSet.init()(v17);
  v28 = v18;
  v29 = v19;
  v20 = *(a4 + 16);
  if (v20)
  {
    v25[1] = a3;
    for (i = 0; i != v20; ++i)
    {
      ContiguousArray.subscript.getter();
      (*(v10 + 32))(v13, v16, a5);
      if (OrderedSet.contains(_:)(v13, v26, v27, a5, a6))
      {
        v22 = type metadata accessor for OrderedSet();
        OrderedSet._appendNew(_:)(v13, v22);
      }

      (*(v10 + 8))(v13, a5);
    }

    return v28;
  }

  else
  {
    v24 = v18;

    return v24;
  }
}

uint64_t OrderedSet.intersection<A>(_:)()
{
  v0 = ContiguousArray.count.getter();
  v2 = 0;
  type metadata accessor for OrderedSet();
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v0, partial apply for closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:));
  __break(1u);

  result = outlined consume of OrderedSet<Input>?(0, v2);
  __break(1u);
  return result;
}

uint64_t OrderedSet.symmetricDifference(_:)()
{
  v0 = ContiguousArray.count.getter();
  v2 = 0;
  type metadata accessor for OrderedSet();
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v0, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  __break(1u);

  result = outlined consume of OrderedSet<Input>?(0, v2);
  __break(1u);
  return result;
}

uint64_t OrderedSet.formUnion<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t OrderedSet.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void, uint64_t, void, uint64_t))
{
  result = a5(a1, *v5, v5[1], *(a2 + 16), a3, *(a2 + 24), a4);
  *v5 = result;
  v5[1] = v7;
  return result;
}

Swift::Int closure #1 in OrderedSet.intersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, Swift::Int *a9@<X8>)
{
  v58 = a8;
  v65 = a7;
  v61 = a3;
  v62 = a4;
  v60 = a2;
  v53 = a9;
  v54 = a1;
  v11 = *(a5 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](a1);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v52 - v17;
  v59 = *(a6 - 1);
  v19 = *(v59 + 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v24 = *(v52 + 64);
  v25 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v52 - v26;
  v28 = *(v59 + 2);
  v57 = a6;
  v28(v22, v60, a6, v25);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = v27;
  v60 = AssociatedTypeWitness;
  v58 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v56 = v11[6];
  v57 = v11 + 6;
  if (v56(v18, 1, a5) == 1)
  {
LABEL_2:
    (*(v52 + 8))(v59, v60);
    v30 = *v54;
    v31 = *(v54 + 8);
    v32 = *(v54 + 16);
    v33 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
    v34 = v61;

    v35 = v62;

    result = OrderedSet._extractSubset(using:extraCapacity:)(v30, v31, v32, v33, v34, v35, a5, v65);
    v37 = v53;
    *v53 = result;
    v37[1] = v38;
    return result;
  }

  v40 = v11[4];
  v39 = v11 + 4;
  v55 = v40;
  while (1)
  {
    v41 = v55(v14, v18, a5);
    MEMORY[0x28223BE20](v41);
    v42 = v65;
    *(&v52 - 6) = a5;
    *(&v52 - 5) = v42;
    v43 = v62;
    *(&v52 - 4) = v61;
    *(&v52 - 3) = v43;
    *(&v52 - 2) = v14;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMd, &_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMR);
    result = _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet._find_inlined(_:), (&v52 - 8), v43, a5, v44, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v45);
    if (v64)
    {
      goto LABEL_4;
    }

    v46 = (v63 >> 3) & 0x1FFFFFFFFFFFFFF8;
    v47 = 1 << v63;
    v48 = *(*v54 + v46);
    *(*v54 + v46) = v48 | (1 << v63);
    if ((v48 & v47) != 0)
    {
      goto LABEL_4;
    }

    v49 = *(v54 + 16);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      break;
    }

    *(v54 + 16) = v51;
LABEL_4:
    (*(v39 - 3))(v14, a5);
    dispatch thunk of IteratorProtocol.next()();
    if (v56(v18, 1, a5) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in OrderedSet.symmetricDifference(_:)()
{
  v0 = ContiguousArray.count.getter();
  type metadata accessor for OrderedSet();
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v0, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  if (!v2)
  {
    __break(1u);
  }

  result = outlined consume of OrderedSet<Input>?(0, 0);
  __break(1u);
  return result;
}

Swift::Int closure #1 in closure #1 in OrderedSet.symmetricDifference(_:)@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, Swift::Int *a9@<X8>)
{
  v64 = a9;
  v70 = a3;
  v71 = a8;
  v68 = a1;
  v69 = a5;
  v66 = *(a7 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](a1);
  v65 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = ContiguousArray.count.getter();
  v67 = a2;
  _UnsafeBitset.insertAll(upTo:)(v21);
  v74 = a6;
  v22 = *(a6 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (v66 + 8);
    do
    {
      ContiguousArray.subscript.getter();
      v25 = OrderedSet._find(_:)(v20, v70, a4, a7, v71);
      v27 = v26;
      (*v24)(v20, a7);
      if ((v27 & 1) == 0)
      {
        v28 = (v25 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v29 = *(*v67 + v28);
        *(*v67 + v28) = v29 & ~(1 << v25);
        if ((v29 & (1 << v25)) != 0)
        {
          v30 = v67[2];
          v31 = __OFSUB__(v30, 1);
          v32 = (v30 - 1);
          if (v31)
          {
            __break(1u);
            break;
          }

          v67[2] = v32;
        }
      }

      ++v23;
    }

    while (v22 != v23);
  }

  v33 = ContiguousArray.count.getter();
  _UnsafeBitset.insertAll(upTo:)(v33);
  v34 = *(a4 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = (v66 + 8);
    do
    {
      ContiguousArray.subscript.getter();
      v37 = OrderedSet._find(_:)(v17, v69, v74, a7, v71);
      v39 = v38;
      result = (*v36)(v17, a7);
      if ((v39 & 1) == 0)
      {
        v41 = (v37 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v42 = *(*v68 + v41);
        *(*v68 + v41) = v42 & ~(1 << v37);
        if ((v42 & (1 << v37)) != 0)
        {
          v43 = v68[2];
          v31 = __OFSUB__(v43, 1);
          v44 = (v43 - 1);
          if (v31)
          {
            goto LABEL_30;
          }

          v68[2] = v44;
        }
      }

      ++v35;
    }

    while (v34 != v35);
  }

  v45 = v68;
  v47 = *v67;
  v46 = v67[1];
  v48 = v67[2];
  v49 = v68[2];
  v50 = v70;

  result = OrderedSet._extractSubset(using:extraCapacity:)(v47, v46, v48, v49, v50, a4, a7, v71);
  v72 = result;
  v73 = v51;
  v52 = *v45;
  v53 = v45[1];
  if (v53 < 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = *v52;
  }

  v55 = v65;
  v56 = 0;
  for (i = (v66 + 8); v54; result = (*i)(v55, a7))
  {
    v54 &= v54 - 1;
LABEL_26:
    ContiguousArray.subscript.getter();
    v60 = type metadata accessor for OrderedSet();
    OrderedSet._appendNew(_:)(v55, v60);
  }

  v58 = v56;
  while (1)
  {
    v56 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v56 >= v53)
    {
      v61 = v73;
      v62 = v64;
      *v64 = v72;
      v62[1] = v61;
      return result;
    }

    v59 = v52[v56];
    ++v58;
    if (v59)
    {
      v54 = (v59 - 1) & v59;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t OrderedSet.formIntersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, void, void))
{
  result = a4(a1, a2, *v4, v4[1], *(a3 + 16), *(a3 + 24));
  *v4 = result;
  v4[1] = v6;
  return result;
}

unint64_t closure #1 in OrderedSet.symmetricDifference<A>(_:)@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  v62 = a9;
  AssociatedConformanceWitness = a8;
  v67 = a4;
  v68 = a2;
  v69 = a3;
  v64 = a1;
  v71 = *(a5 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v70 = &v61 - v16;
  v17 = type metadata accessor for Optional();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v61 - v19;
  v21 = *(a6 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v27 = *(v63 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v61 - v28;
  v76 = a7;
  v74 = OrderedSet.init()(a5);
  v75 = v30;
  v31 = ContiguousArray.count.getter();
  _UnsafeBitset.insertAll(upTo:)(v31);
  (*(v21 + 16))(v25, v67, a6);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = v29;
  v32 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v33 = *(v71 + 48);
  if (v33(v20, 1, a5) != 1)
  {
    v65 = *(v71 + 32);
    v52 = (v71 + 8);
    v65(v14, v20, a5);
    while (1)
    {
      result = OrderedSet._find(_:)(v14, v68, v69, a5, v76);
      if (v54)
      {
        v53 = type metadata accessor for OrderedSet();
        OrderedSet._append(_:)(v14, v53);
      }

      else
      {
        v55 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
        v56 = *(*v64 + v55);
        *(*v64 + v55) = v56 & ~(1 << result);
        if ((v56 & (1 << result)) != 0)
        {
          v57 = v64[2];
          v58 = __OFSUB__(v57, 1);
          v59 = (v57 - 1);
          if (v58)
          {
            goto LABEL_18;
          }

          v64[2] = v59;
        }
      }

      (*v52)(v14, a5);
      dispatch thunk of IteratorProtocol.next()();
      if (v33(v20, 1, a5) == 1)
      {
        break;
      }

      v65(v14, v20, a5);
    }
  }

  (*(v63 + 8))(v67, v32);
  v34 = *v64;
  v35 = v64[1];
  v36 = v64[2];
  v37 = v75;
  v38 = v68;

  v39 = v69;

  v40 = ContiguousArray.count.getter();
  result = OrderedSet._extractSubset(using:extraCapacity:)(v34, v35, v36, v40, v38, v39, a5, v76);
  v72 = result;
  v73 = v42;
  v69 = *(v37 + 16);
  if (v69)
  {
    v43 = 0;
    v44 = v37 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    while (v43 < *(v37 + 16))
    {
      v45 = v37;
      v46 = v70;
      v47 = v71;
      (*(v71 + 16))(v70, v44 + *(v71 + 72) * v43++, a5);
      v48 = type metadata accessor for OrderedSet();
      OrderedSet._appendNew(_:)(v46, v48);
      v49 = *(v47 + 8);
      v37 = v45;
      result = v49(v46, a5);
      if (v69 == v43)
      {

        v50 = v72;
        v51 = v73;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v50 = result;
    v51 = v42;

LABEL_16:

    v60 = v62;
    *v62 = v50;
    v60[1] = v51;
  }

  return result;
}

uint64_t OrderedSet._subtracting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (ContiguousArray.count.getter() < 1)
  {
    v8 = OrderedSet.init()(a4);

    return v8;
  }

  v5 = ContiguousArray.count.getter();
  v10 = &v10;
  MEMORY[0x28223BE20](v5);
  v11 = 0;
  v12 = 0;
  MEMORY[0x28223BE20](v6);
  type metadata accessor for OrderedSet();
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v5, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  v7 = v12;
  if (v12)
  {
    v8 = v11;

    outlined consume of OrderedSet<Input>?(v8, v7);
    return v8;
  }

  __break(1u);

  result = outlined consume of OrderedSet<Input>?(v11, v12);
  __break(1u);
  return result;
}

uint64_t OrderedSet.subtracting(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  type metadata accessor for OrderedSet();
  swift_getWitnessTable();
  return OrderedSet._subtracting<A>(_:)(v9, a3, a4, a5);
}

uint64_t OrderedSet.subtract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v10[0] = a1;
  v10[1] = a2;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getWitnessTable();
  result = OrderedSet._subtracting<A>(_:)(v10, v4, v5, v6);
  *v3 = result;
  v3[1] = v9;
  return result;
}

unint64_t closure #1 in OrderedSet._subtracting<A>(_:)@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, unint64_t *a9@<X8>)
{
  v53 = a9;
  v57 = a8;
  v58 = a4;
  v61 = a7;
  v59 = a2;
  v54 = *(a5 - 8);
  v55 = a1;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v52 - v17;
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v25 = *(v52 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v52 - v26;
  v60 = a3;
  v28 = ContiguousArray.count.getter();
  _UnsafeBitset.insertAll(upTo:)(v28);
  (*(v19 + 16))(v23, v58, a6);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v27;
  v58 = AssociatedTypeWitness;
  v56 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v30 = v54;
  v31 = *(v54 + 48);
  if (v31(v18, 1, a5) != 1)
  {
    v41 = *(v30 + 32);
    v42 = (v30 + 8);
    v41(v14, v18, a5);
    while (1)
    {
      result = OrderedSet._find(_:)(v14, v59, v60, a5, v61);
      if ((v43 & 1) == 0)
      {
        v44 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
        v45 = *(*v55 + v44);
        *(*v55 + v44) = v45 & ~(1 << result);
        if ((v45 & (1 << result)) != 0)
        {
          v46 = v55[2];
          v47 = __OFSUB__(v46, 1);
          v48 = (v46 - 1);
          if (v47)
          {
            __break(1u);
            return result;
          }

          v55[2] = v48;
          if (!v48)
          {
            v49 = OrderedSet.init()(a5);
            v51 = v50;
            (*v42)(v14, a5);
            (*(v52 + 8))(v57, v58);
            v39 = v51;
            result = v49;
            goto LABEL_3;
          }
        }
      }

      (*v42)(v14, a5);
      dispatch thunk of IteratorProtocol.next()();
      if (v31(v18, 1, a5) == 1)
      {
        break;
      }

      v41(v14, v18, a5);
    }
  }

  (*(v52 + 8))(v57, v58);
  v32 = *v55;
  v33 = v55[1];
  v34 = v55[2];
  v35 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v36 = v59;

  v37 = v60;

  result = OrderedSet._extractSubset(using:extraCapacity:)(v32, v33, v34, v35, v36, v37, a5, v61);
LABEL_3:
  v40 = v53;
  *v53 = result;
  v40[1] = v39;
  return result;
}

uint64_t specialized OrderedSet.formUnion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  swift_getWitnessTable();
  return OrderedSet.append<A>(contentsOf:)(v5, a3, a3);
}

uint64_t specialized OrderedSet.union(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OrderedSet();
  v8[0] = a1;
  v8[1] = a2;
  swift_getWitnessTable();
  OrderedSet.append<A>(contentsOf:)(v8, v5, v5);
  return a3;
}

uint64_t specialized OrderedSet.union<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for OrderedSet();
  OrderedSet.append<A>(contentsOf:)(a1, v7, a5);
  return a2;
}

uint64_t partial apply for closure #1 in OrderedSet.symmetricDifference(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return closure #1 in OrderedSet.symmetricDifference(_:)();
}

uint64_t specialized OrderedSet.symmetricDifference<A>(_:)()
{
  v0 = ContiguousArray.count.getter();
  v2 = 0;
  type metadata accessor for OrderedSet();
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v0, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  __break(1u);

  result = outlined consume of OrderedSet<Input>?(0, v2);
  __break(1u);
  return result;
}

uint64_t specialized OrderedSet.formSymmetricDifference<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  result = specialized OrderedSet.symmetricDifference<A>(_:)();
  *v2 = result;
  v2[1] = v8;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph7NodeDefV_G_SS_AH17BuiltInDefinitionVts5NeverOTg504_s11e7Graph22ijk12StoreC07nodeh12F0AcA04NodehQ30V_tcfcSS_AA0cdE0VtAA0iH0VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v44 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v44;
  v4 = -1 << *(v3 + 32);
  v48 = v3 + 64;
  result = _HashTable.startBucket.getter();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v34 = v3 + 72;
    v35 = v1;
    v7 = *(v3 + 36);
    v8 = 1;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v48 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v36 = v7;
      v10 = *(v3 + 56) + 152 * v6;
      v11 = *(v10 + 16);
      v45[0] = *v10;
      v45[1] = v11;
      v12 = *(v10 + 80);
      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v45[4] = *(v10 + 64);
      v45[5] = v12;
      v45[2] = v14;
      v45[3] = v13;
      v16 = *(v10 + 112);
      v15 = *(v10 + 128);
      v17 = *(v10 + 96);
      v46 = *(v10 + 144);
      v45[7] = v16;
      v45[8] = v15;
      v45[6] = v17;
      v47 = *v10;
      v38 = *v10;
      outlined init with copy of NodeDef(v45, v37);
      outlined init with copy of String(&v47, v37);
      specialized BuiltInDefinition.init(nodeDef:)(v45, v39);
      result = outlined destroy of NodeDef(v45);
      v42 = v39[1];
      v43 = v39[2];
      v40 = v38;
      v41 = v39[0];
      v44 = v2;
      v18 = v3;
      v20 = *(v2 + 16);
      v19 = *(v2 + 24);
      if (v20 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v2 = v44;
      }

      *(v2 + 16) = v20 + 1;
      v21 = (v2 + (v20 << 6));
      v22 = v40;
      v23 = v41;
      v24 = v43;
      v21[4] = v42;
      v21[5] = v24;
      v21[2] = v22;
      v21[3] = v23;
      v25 = 1 << *(v18 + 32);
      if (v6 >= v25)
      {
        goto LABEL_25;
      }

      v26 = *(v48 + 8 * v9);
      if ((v26 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v3 = v18;
      if (v36 != *(v18 + 36))
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v6 & 0x3F));
      if (v27)
      {
        v6 = __clz(__rbit64(v27)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v28 = v35;
      }

      else
      {
        v29 = v9 << 6;
        v30 = v9 + 1;
        v28 = v35;
        v31 = (v34 + 8 * v9);
        while (v30 < (v25 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = outlined consume of [String : String].Index._Variant(v6, v36, 0);
            v6 = __clz(__rbit64(v32)) + v29;
            goto LABEL_18;
          }
        }

        result = outlined consume of [String : String].Index._Variant(v6, v36, 0);
        v6 = v25;
      }

LABEL_18:
      if (v8 == v28)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(v3 + 36);
        ++v8;
        if (v6 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t BuiltInDefinition.ReservedNames.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746C757365725F5FLL;
  }

  else
  {
    return 0x656D756772615F5FLL;
  }
}

uint64_t BuiltInDefinition.isArgumentsDefinition.getter()
{
  if (*v0 == 0x656D756772615F5FLL && v0[1] == 0xEB0000000073746ELL)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t BuiltInDefinition.isResultDefinition.getter()
{
  if (*v0 == 0x746C757365725F5FLL && v0[1] == 0xE900000000000073)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t *BuiltInDefinitionStore.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BuiltInDefinitionStore.shared;
}

double BuiltInDefinition.init(name:inputs:outputs:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = xmmword_265F1F680;
  return result;
}

BOOL BuiltInDefinition.isDotNode.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3._countAndFlagsBits = 0x5F746F645F444ELL;
  v3._object = 0xE700000000000000;
  return String.hasPrefix(_:)(v3);
}

BOOL BuiltInDefinition.isMatXConstantNode.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3._countAndFlagsBits = 0x74736E6F635F444ELL;
  v3._object = 0xEC0000005F746E61;
  return String.hasPrefix(_:)(v3);
}

double BuiltInDefinitionStore.definition(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  specialized OrderedDictionary.subscript.getter(a1, a2, v3[5], v3[6], v3[7], v7);
  v5 = v7[1];
  *a3 = v7[0];
  a3[1] = v5;
  result = *&v8;
  a3[2] = v8;
  return result;
}

uint64_t BuiltInDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BuiltInDefinition.availability.getter()
{
  v1 = *(v0 + 32);
  outlined copy of MaterialXAvailability(v1, *(v0 + 40));
  return v1;
}

uint64_t static BuiltInDefinition.InputSpec.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      v12 = 0;
      return v12 & 1;
    }

LABEL_7:
    v12 = a4 ^ a8 ^ 1;
    return v12 & 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12 = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    goto LABEL_7;
  }

  return v12 & 1;
}

void BuiltInDefinition.InputSpec.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  String.hash(into:)();
  MEMORY[0x266772770](a4);
  Hasher._combine(_:)(a5 & 1);
}

Swift::Int BuiltInDefinition.InputSpec.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](a3);
  Hasher._combine(_:)(a4 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition.InputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance BuiltInDefinition.InputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  String.hash(into:)();
  MEMORY[0x266772770](v3);
  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition.InputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition.InputSpec(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

BOOL static BuiltInDefinition.OutputSpec.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int BuiltInDefinition.OutputSpec.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition.OutputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BuiltInDefinition.OutputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  return MEMORY[0x266772770](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition.OutputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition.OutputSpec(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

ShaderGraph::BuiltInDefinition::ReservedNames_optional __swiftcall BuiltInDefinition.ReservedNames.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BuiltInDefinition.ReservedNames.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_BuiltInDefinition_ReservedNames___results;
  }

  else
  {
    v4.value = ShaderGraph_BuiltInDefinition_ReservedNames_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition.ReservedNames(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746C757365725F5FLL;
  }

  else
  {
    v4 = 0x656D756772615F5FLL;
  }

  if (v3)
  {
    v5 = 0xEB0000000073746ELL;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  if (*a2)
  {
    v6 = 0x746C757365725F5FLL;
  }

  else
  {
    v6 = 0x656D756772615F5FLL;
  }

  if (*a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xEB0000000073746ELL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition.ReservedNames()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BuiltInDefinition.ReservedNames()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition.ReservedNames()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BuiltInDefinition.ReservedNames@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BuiltInDefinition.ReservedNames.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance BuiltInDefinition.ReservedNames(uint64_t *a1@<X8>)
{
  v2 = 0x656D756772615F5FLL;
  if (*v1)
  {
    v2 = 0x746C757365725F5FLL;
  }

  v3 = 0xEB0000000073746ELL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

double BuiltInDefinition.init(nodeDef:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized BuiltInDefinition.init(nodeDef:)(a1, v6);
  outlined destroy of NodeDef(a1);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

void BuiltInDefinition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = *(v3 + 16);
  MEMORY[0x266772770](v4);
  if (v4)
  {
    v5 = (v3 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v5 += 32;

      String.hash(into:)();
      MEMORY[0x266772770](v8);
      Hasher._combine(_:)(v9);

      --v4;
    }

    while (v4);
  }

  v10 = v0[3];
  v11 = *(v10 + 16);
  MEMORY[0x266772770](v11);
  if (v11)
  {
    v12 = (v10 + 48);
    do
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v12 += 3;

      String.hash(into:)();
      MEMORY[0x266772770](v15);

      --v11;
    }

    while (v11);
  }

  v16 = v0[5];
  switch(v16)
  {
    case 1:
      v17 = 0;
      goto LABEL_13;
    case 2:
      v17 = 1;
      goto LABEL_13;
    case 3:
      v17 = 3;
LABEL_13:
      MEMORY[0x266772770](v17);
      return;
  }

  v18 = v0[4];
  MEMORY[0x266772770](2);
  if (v16)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int BuiltInDefinition.hashValue.getter()
{
  Hasher.init(_seed:)();
  BuiltInDefinition.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition()
{
  Hasher.init(_seed:)();
  BuiltInDefinition.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition()
{
  Hasher.init(_seed:)();
  BuiltInDefinition.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static BuiltInDefinition.== infix(_:_:)(v7, v8);
}

uint64_t *one-time initialization function for shared()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static NodeDefStore.shared;
  v1 = qword_280051428;
  v2 = qword_280051430;
  type metadata accessor for BuiltInDefinitionStore();
  v3 = swift_allocObject();

  result = BuiltInDefinitionStore.init(nodeDefStore:)(v0, v1, v2);
  static BuiltInDefinitionStore.shared = v3;
  return result;
}

uint64_t BuiltInDefinitionStore.__allocating_init(nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BuiltInDefinitionStore.init(nodeDefStore:)(a1, a2, a3);
  return v6;
}

uint64_t static BuiltInDefinitionStore.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t BuiltInDefinitionStore.nodeDefStore.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return v1;
}

uint64_t *BuiltInDefinitionStore.init(nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  swift_bridgeObjectRetain_n();

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph7NodeDefV_G_SS_AH17BuiltInDefinitionVts5NeverOTg504_s11e7Graph22ijk12StoreC07nodeh12F0AcA04NodehQ30V_tcfcSS_AA0cdE0VtAA0iH0VXEfU_Tf1cn_n(a1);

  swift_bridgeObjectRelease_n();
  v9 = 0;
  *&v10 = MEMORY[0x277D84F90];
  *(&v10 + 1) = MEMORY[0x277D84F90];

  specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v6, specialized closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:), 0, &v9);

  v7 = v10;
  v3[5] = v9;
  *(v3 + 3) = v7;
  return v3;
}

__n128 BuiltInDefinitionStore.defaultValue(for:on:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v32 = 0u;
  if (*(v6 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(*a2, a2[1]);
    if (v9)
    {
      v30 = v4;
      v10 = *(*(v6 + 56) + 152 * v8 + 128);
      v28 = a1;
      v11 = (a1 + OBJC_IVAR___SGInput_name);
      v12 = (v10 + 40);
      v13 = *(v10 + 16) + 1;
      while (--v13)
      {
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        v17 = v12[5];
        if (*(v12 - 1) != *v11 || *v12 != v11[1])
        {
          v12 += 8;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        if (!v16)
        {

          break;
        }

        v19 = OBJC_IVAR___SGInput_type;
        swift_beginAccess();
        v20 = *(v28 + v19);

        v21 = specialized SGDataType.materialXDataType.getter(v20);

        specialized SGDataTypeStorage.init(materialXValue:type:)(v15, v16, v21, v33);
        if (v30)
        {

          return result;
        }

        v31 = v33[1];
        v32 = v33[0];
        v27 = v33[3];
        v29 = v33[2];
        v23 = v34;

        v26 = v27;
        v25 = v29;
        v24 = v31;
        goto LABEL_17;
      }
    }
  }

  v23 = -1;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
LABEL_17:
  result = v32;
  *a3 = v32;
  *(a3 + 16) = v24;
  *(a3 + 32) = v25;
  *(a3 + 48) = v26;
  *(a3 + 64) = v23;
  return result;
}

void *BuiltInDefinitionStore.deinit()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];

  return v0;
}

uint64_t BuiltInDefinitionStore.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  a2[7] = v8;

  outlined copy of MaterialXAvailability(v7, v8);
}

BOOL specialized static BuiltInDefinition.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(a1[2], a2[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];
  switch(v5)
  {
    case 3:
      return v6 == 3;
    case 2:
      return v6 == 2;
    case 1:
      if (v6 == 1)
      {
        return 1;
      }

      break;
    default:
      if ((v6 - 1) >= 3)
      {
        if (v5)
        {
          if (v6 && (a1[4] == a2[4] && v5 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v6)
        {
          return 1;
        }
      }

      break;
  }

  return 0;
}

uint64_t specialized BuiltInDefinition.init(nodeDef:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v37 = a1[1];
  v38 = *a1;
  v3 = a1[16];
  v4 = *(v3 + 16);
  if (v4)
  {
    *&v40 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v40;
    v6 = (v3 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v6 + 40);

      result = specialized SGDataType.init(_:)();
      *&v40 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v2;
        v16 = result;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        result = v16;
        v2 = v15;
        v5 = v40;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 32 * v13;
      *(v14 + 32) = v7;
      *(v14 + 40) = v8;
      *(v14 + 48) = result;
      *(v14 + 56) = v10;
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v17 = v2[17];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v36 = v2;
    *&v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v40;
    v20 = (v17 + 48);
    do
    {
      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      v23 = *v20;

      result = specialized SGDataType.init(_:)();
      *&v40 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = result;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        result = v27;
        v19 = v40;
      }

      *(v19 + 16) = v25 + 1;
      v26 = (v19 + 24 * v25);
      v26[4] = v21;
      v26[5] = v22;
      v26[6] = result;
      v20 += 8;
      --v18;
    }

    while (v18);
    v2 = v36;
  }

  v28 = v2[7];
  if (v28 && (v2[6] == 0xD000000000000012 && 0x8000000265F341F0 == v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0)))
  {
    v29 = 0;
    v30 = 3;
  }

  else
  {
    v31 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v31 operatingSystemVersion];
    v32 = v41;

    LOBYTE(v41) = 0;
    v42 = v32;
    v43 = 0;
    v33 = v2[18];
    if (v33)
    {
      v34 = v2[18];

      v29 = specialized static NodeDef.available(for:in:)(0, &v40, v33);
      v30 = v35;
    }

    else
    {
      v29 = v2[14];
      v30 = v2[15];
      result = outlined copy of MaterialXAvailability(v29, v30);
    }
  }

  *a2 = v38;
  a2[1] = v37;
  a2[2] = v5;
  a2[3] = v19;
  a2[4] = v29;
  a2[5] = v30;
  return result;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [BuiltInDefinition.ReservedNames] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BuiltInDefinition.ReservedNames] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BuiltInDefinition.ReservedNames] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph17BuiltInDefinitionV13ReservedNamesOGMd, &_sSay11ShaderGraph17BuiltInDefinitionV13ReservedNamesOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BuiltInDefinition.ReservedNames] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition and conformance BuiltInDefinition()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition and conformance BuiltInDefinition;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition and conformance BuiltInDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition and conformance BuiltInDefinition);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BuiltInDefinition.InputSpec(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for BuiltInDefinition.InputSpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Say10Foundation3URLVGs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v19 = a3 + v8;
      a1(&v20, &v19);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v21;
  for (i = (a3 + 64); ; i += 5)
  {
    v9 = *i;
    v10 = *(i - 1);
    v18[0] = *(i - 2);
    v18[1] = v10;
    v19 = v9;

    a1(v20, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v20[0];
    v11 = v20[1];
    v21 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v21;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v26;
  for (i = (a3 + 72); ; i += 48)
  {
    v9 = *(i - 3);
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v20 = *(i - 40);
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;

    a1(v25, &v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v14 = v25[0];
    v13 = v25[1];
    v26 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v6 = v26;
    }

    *(v6 + 16) = v16 + 1;
    v17 = v6 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V6OutputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v24;
  for (i = (a3 + 64); ; i += 5)
  {
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v19 = *(i - 2);
    v20 = v9;
    v21 = v10;
    v22 = v11;

    a1(v23, &v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v13 = v23[0];
    v12 = v23[1];
    v24 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v24;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SS_AHtsAE_pTg5(void (*a1)(_OWORD *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v27;
    for (i = (a3 + 40); ; i += 6)
    {
      v10 = *(i - 1);
      v9 = *i;
      v11 = i[1];
      v12 = *(i + 32);
      v22[0] = v10;
      v22[1] = v9;
      v22[2] = v11;
      v23 = *(i + 1);
      v24 = v12;
      outlined copy of NodePersonality(v10);

      a1(v25, v22, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of NodePersonality(v10);

      *&v20[9] = *(v26 + 9);
      v19 = v25[1];
      *v20 = v26[0];
      v18 = v25[0];
      v27 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v14 + 1;
      v15 = (v6 + (v14 << 6));
      *(v15 + 73) = *&v20[9];
      v15[3] = v19;
      v15[4] = *v20;
      v15[2] = v18;
      if (!--v5)
      {
        return v6;
      }
    }

    outlined consume of NodePersonality(v10);
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo11MTLFunction_pG_SSs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x266772030](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_AH4EdgeVyAN_Gs5NeverOTg5(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v31;
  for (i = (a3 + 72); ; i += 48)
  {
    v10 = *(i - 3);
    v11 = *(i - 2);
    v12 = *(i - 1);
    v13 = *i;
    v24 = *(i - 40);
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v13;

    a1(v29, &v24);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v23 = v30;
    v21 = v29[3];
    v22 = v29[4];
    v19 = v29[1];
    v20 = v29[2];
    v18 = v29[0];
    v31 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v31;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 88 * v15;
    *(v16 + 32) = v18;
    *(v16 + 48) = v19;
    *(v16 + 112) = v23;
    *(v16 + 80) = v21;
    *(v16 + 96) = v22;
    *(v16 + 64) = v20;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SSsAE_pTg5(void (*a1)(void *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v25;
    for (i = (a3 + 40); ; i += 6)
    {
      v10 = *(i - 1);
      v9 = *i;
      v11 = i[1];
      v12 = *(i + 32);
      v21[0] = v10;
      v21[1] = v9;
      v21[2] = v11;
      v22 = *(i + 1);
      v23 = v12;
      outlined copy of NodePersonality(v10);

      a1(v24, v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of NodePersonality(v10);

      v13 = v24[0];
      v14 = v24[1];
      v25 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v6 = v25;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      if (!--v5)
      {
        return v6;
      }
    }

    outlined consume of NodePersonality(v10);
  }

  return v6;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t *a2)
{
  v2 = result;
  if (result >> 62)
  {
LABEL_18:
    result = __CocoaSet.count.getter();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x266772030](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

LABEL_15:
            lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
            swift_allocError();
            *v16 = xmmword_265F23D80;
            *(v16 + 16) = 6;
            swift_willThrow();
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v5 = *(v2 + 8 * v4 + 32);

          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = (*(*v5 + 160))();
        v9 = *a2;
        if (!*(*a2 + 16))
        {
          goto LABEL_14;
        }

        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }

        v13 = *(*v5 + 112);
        v14 = *(*(v9 + 56) + 8 * v10);
        v15 = v13();
        specialized OrderedDictionary.subscript.setter(v14, v15);

        ++v4;
      }

      while (v6 != v3);
    }
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
LABEL_16:
    v10 = result;
    v6 = __CocoaSet.count.getter();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x266772030](i, a4);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a4 + 8 * i + 32);
          swift_unknownObjectRetain();
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v8;
        a2(&v13, &v12);
        result = swift_unknownObjectRelease();
        if (v4)
        {
          return swift_unknownObjectRelease();
        }

        if (v9 == v6)
        {
          return v13;
        }
      }
    }
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t MetalStitchingBackend.specializeGetter(for:field:offset:library:)(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  result = specialized MetalStitchingBackend.specializeGetter(for:field:offset:library:)(a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 40), a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t MetalStitchingBackend.init(materialName:programHash:signposter:signpostID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for MetalStitchingBackend();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for OSSignposter();
  (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  v13 = *(v10 + 28);
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a7[v13], a6, v14);
}

void *MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v189 = a5;
  v178 = a4;
  v182 = a2;
  v179 = a1;
  v202 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for OSSignpostError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v170 = &v169 - v14;
  v191 = type metadata accessor for OSSignpostID();
  v15 = *(v191 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v191);
  v18 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v193 = &v169 - v20;
  MEMORY[0x28223BE20](v21);
  v175 = &v169 - v22;
  MEMORY[0x28223BE20](v23);
  v185 = &v169 - v24;
  MEMORY[0x28223BE20](v25);
  v181 = &v169 - v26;
  v188 = type metadata accessor for MetalStitchingBackend();
  v27 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v176 = &v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v180 = &v169 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v169 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = (&v169 - v36);
  v186 = a6;
  v38 = [a6 argumentBuffersSupport];
  v184 = a3;
  if (!v38 || (*(v189 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) != 0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static DebugConfig.tier1SupportOverrideEnabled == 1)
  {
LABEL_6:
    v187 = 0xD000000000000010;
    v39 = 0x8000000265F34240;
  }

  else
  {
    v187 = 0;
    v39 = 0xE000000000000000;
  }

  v171 = v9;
  v172 = v8;
  v190 = v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, logger);
  v41 = v192;
  outlined init with copy of MetalStitchingBackend(v192, v37);
  outlined init with copy of MetalStitchingBackend(v41, v33);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();

  v44 = os_log_type_enabled(v42, v43);
  v173 = v18;
  v169 = v12;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v198 = v46;
    *v45 = 141558787;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2081;
    v47 = *v37;
    v48 = v37[1];

    outlined destroy of MetalStitchingBackend(v37);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v198);

    *(v45 + 14) = v49;
    *(v45 + 22) = 2080;
    v50 = *(v33 + 2);
    v51 = *(v33 + 3);

    outlined destroy of MetalStitchingBackend(v33);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v198);

    *(v45 + 24) = v52;
    *(v45 + 32) = 2080;
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v39, &v198);

    *(v45 + 34) = v53;
    _os_log_impl(&dword_265D7D000, v42, v43, "Compiling ShaderGraph material: %{private,mask.hash}s %s %s", v45, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266773120](v46, -1, -1);
    MEMORY[0x266773120](v45, -1, -1);
  }

  else
  {

    outlined destroy of MetalStitchingBackend(v33);
    outlined destroy of MetalStitchingBackend(v37);
  }

  v54 = *(v188 + 24);
  v55 = v190;
  v56 = *(v190 + 16);
  v57 = v192;
  v174 = *(v188 + 28);
  v58 = v181;
  v188 = v190 + 16;
  v187 = v56;
  v56(v181, v192 + v174, v191);
  v59 = v180;
  outlined init with copy of MetalStitchingBackend(v57, v180);
  v177 = v54;
  v60 = OSSignposter.logHandle.getter();
  v61 = static os_signpost_type_t.begin.getter();
  v62 = OS_os_log.signpostsEnabled.getter();
  v63 = v193;
  v64 = v184;
  if (v62)
  {
    v65 = v184;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v198 = v67;
    *v66 = 136315138;
    v68 = *(v59 + 16);
    v69 = *(v59 + 24);

    outlined destroy of MetalStitchingBackend(v59);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v198);
    v55 = v190;

    *(v66 + 4) = v70;
    v71 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v60, v61, v71, "stitchingGraph", "%s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x266773120](v67, -1, -1);
    v72 = v66;
    v64 = v65;
    v63 = v193;
    MEMORY[0x266773120](v72, -1, -1);
  }

  else
  {

    outlined destroy of MetalStitchingBackend(v59);
  }

  v73 = v191;
  v187(v185, v58, v191);
  v74 = type metadata accessor for OSSignpostIntervalState();
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  v180 = v74;
  swift_allocObject();
  v77 = OSSignpostIntervalState.init(id:isOpen:)();
  v80 = *(v55 + 8);
  v79 = v55 + 8;
  v78 = v80;
  v80(v58, v73);
  v81 = MEMORY[0x277D84F90];
  v199 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So11MTLFunction_pSaySS_SoAH_ptGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v200 = v82;
  v201 = v83;
  if (![v186 argumentBuffersSupport] || (*(v189 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) != 0)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static DebugConfig.tier1SupportOverrideEnabled == 1)
  {
LABEL_20:
    v84 = v183;
    MetalStitchingBackend.generateFallbackTier1Getters(for:augmenting:library:)(v182, &v199, v64);
    if (v84)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v91 = v183;
    MetalStitchingBackend.generateStructGetters(for:augmenting:library:)(v182, &v199, v64);
    if (v91)
    {
      goto LABEL_31;
    }
  }

  v85 = v179;
  v184 = MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(v179, &v199, v64, v178);
  v183 = v78;
  v182 = 0;
  v189 = v77;
  v86 = (*(*v85 + 120))();
  v194 = v81;
  v87 = *(v86 + 16);
  v190 = v79;
  if (v87)
  {
    v77 = v86;
    v88 = v86 + 32;
    v89 = MEMORY[0x277D84F90];
    v64 = &_s11ShaderGraph17MetalFunctionNode_pMR;
    do
    {
      outlined init with copy of MetalFunctionNode(v88, &v198);
      outlined init with take of MetalFunctionNode(&v198, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalFunctionCallNode();
      if (swift_dynamicCast())
      {
        v58 = v197;
        if (v197)
        {
          MEMORY[0x266771770]();
          if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v90 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v89 = v194;
        }
      }

      v88 += 40;
      --v87;
    }

    while (v87);

    v63 = v193;
    if (!(v89 >> 62))
    {
LABEL_35:
      v94 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v94)
      {
        goto LABEL_36;
      }

LABEL_47:

      v96 = MEMORY[0x277D84F90];
LABEL_48:
      v58 = v199;
      v77 = v200;

      v106 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v105);

      v107 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v96);

      v94 = v192;
      if (*(v106 + 16) > *(v107 + 16) >> 3)
      {
        v81 = specialized _NativeSet.subtracting<A>(_:)(v106, v107);

        if (!v81[2])
        {
          goto LABEL_53;
        }
      }

      else
      {
        *&v198 = v107;
        specialized Set._subtract<A>(_:)(v106);

        v81 = v198;
        if (!*(v198 + 16))
        {
LABEL_53:

          v64 = [objc_allocWithZone(MEMORY[0x277CD7010]) init];
          v112 = v201;

          specialized _copyCollectionToContiguousArray<A>(_:)(v58, v77, v112);
          v179 = v112;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11MTLFunction_pMd, &_sSo11MTLFunction_pMR);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v64 setFunctions_];

          if (one-time initialization token for debugMode == -1)
          {
            goto LABEL_54;
          }

          goto LABEL_73;
        }
      }

      *&v198 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Set<String> and conformance Set<A>, &_sShySSGMd, &_sShySSGMR);
      lazy protocol witness table accessor for type String and conformance String();
      v108 = Sequence<>.joined(separator:)();
      v110 = v109;

      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v111 = v108;
      *(v111 + 8) = v110;
      *(v111 + 16) = 2;
      swift_willThrow();
LABEL_31:

LABEL_32:

      goto LABEL_33;
    }
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_35;
    }
  }

  v94 = __CocoaSet.count.getter();
  if (!v94)
  {
    goto LABEL_47;
  }

LABEL_36:
  v181 = v89;
  *&v198 = v81;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 & ~(v94 >> 63), 0);
  if ((v94 & 0x8000000000000000) == 0)
  {
    v95 = 0;
    v96 = v198;
    v97 = v181;
    v98 = v181 & 0xC000000000000001;
    do
    {
      if (v98)
      {
        v99 = MEMORY[0x266772030](v95, v97);
      }

      else
      {
        v99 = *(v97 + 8 * v95 + 32);
      }

      v100 = *(v99 + 40);
      v101 = *(v99 + 48);

      *&v198 = v96;
      v103 = *(v96 + 16);
      v102 = *(v96 + 24);
      if (v103 >= v102 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1);
        v97 = v181;
        v96 = v198;
      }

      ++v95;
      *(v96 + 16) = v103 + 1;
      v104 = v96 + 16 * v103;
      *(v104 + 32) = v100;
      *(v104 + 40) = v101;
      v63 = v193;
    }

    while (v94 != v95);

    goto LABEL_48;
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_54:
  swift_beginAccess();
  v114 = static DebugConfig.debugMode;

  v115 = specialized Set.contains(_:)(5, v114);

  v181 = v77;
  if (v115)
  {
    v116 = [v64 functions];
    v117 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x28223BE20](v118);
    *(&v169 - 2) = v94;
    v119 = v182;
    v120 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo11MTLFunction_pG_SSs5NeverOTg5(partial apply for closure #3 in MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:), (&v169 - 4), v117);
    v182 = v119;

    v195 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v121 = BidirectionalCollection<>.joined(separator:)();
    v123 = v122;
    v94 = v192;

    v195 = 0;
    v196 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    v125 = *v94;
    v124 = *(v94 + 8);

    v195 = v125;
    v196 = v124;
    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](*(v94 + 16), *(v94 + 24));
    MEMORY[0x266771550](0xD000000000000010, 0x8000000265F34220);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v121, v123, v195, v196, 7633012, 0xE300000000000000);
  }

  v126 = v176;
  v127 = v175;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingGraph, 0x277CD6DD8);
  v128 = Array._bridgeToObjectiveC()().super.isa;

  v184 = v64;
  [v64 setFunctionGraphs_];

  v129 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v130 = v127;
  v131 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v132 = v170;
    checkForErrorAndConsumeState(state:)();

    v133 = v171;
    v134 = v172;
    if ((*(v171 + 88))(v132, v172) == *MEMORY[0x277D85B00])
    {
      v135 = "[Error] Interval already ended";
    }

    else
    {
      (*(v133 + 8))(v132, v134);
      v135 = "";
    }

    v136 = swift_slowAlloc();
    *v136 = 0;
    v130 = v175;
    v137 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v129, v131, v137, "stitchingGraph", v135, v136, 2u);
    MEMORY[0x266773120](v136, -1, -1);
    v126 = v176;
    v94 = v192;
  }

  v138 = v191;
  v183(v130, v191);
  v187(v63, v94 + v174, v138);
  v139 = OSSignposter.logHandle.getter();
  v140 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    v142 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v139, v140, v142, "waitingOnMetal", "makeLibrary_stitchedDescriptor", v141, 2u);
    v143 = v141;
    v94 = v192;
    MEMORY[0x266773120](v143, -1, -1);
  }

  v144 = v191;
  v187(v185, v63, v191);
  v145 = *(v180 + 48);
  v146 = *(v180 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v183(v63, v144);
  v195 = 0;
  v147 = v184;
  v148 = [v186 newLibraryWithStitchedDescriptor:v184 error:&v195];
  v149 = v195;
  if (!v148)
  {
    v81 = v195;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_32;
  }

  v81 = v148;
  outlined init with copy of MetalStitchingBackend(v94, v126);
  v150 = v149;
  v151 = v126;
  v152 = OSSignposter.logHandle.getter();
  v153 = v173;
  OSSignpostIntervalState.signpostID.getter();
  v154 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v193 = v58;

    v155 = v169;
    checkForErrorAndConsumeState(state:)();

    v156 = v171;
    v157 = v172;
    if ((*(v171 + 88))(v155, v172) == *MEMORY[0x277D85B00])
    {
      v158 = 0;
      v159 = 0;
      v160 = "[Error] Interval already ended";
    }

    else
    {
      (*(v156 + 8))(v155, v157);
      v160 = "%s";
      v159 = 2;
      v158 = 1;
    }

    v161 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v195 = v162;
    *v161 = v159;
    *(v161 + 1) = v158;
    *(v161 + 2) = 2080;
    v163 = v176;
    v164 = *(v176 + 2);
    v165 = *(v176 + 3);

    outlined destroy of MetalStitchingBackend(v163);
    v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v165, &v195);

    *(v161 + 4) = v166;
    v167 = v173;
    v168 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v152, v154, v168, "waitingOnMetal", v160, v161, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    MEMORY[0x266773120](v162, -1, -1);
    MEMORY[0x266773120](v161, -1, -1);

    v183(v167, v191);
  }

  else
  {

    v183(v153, v191);
    outlined destroy of MetalStitchingBackend(v151);
  }

LABEL_33:
  v92 = *MEMORY[0x277D85DE8];
  return v81;
}

uint64_t MetalStitchingBackend.materialName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetalStitchingBackend.programHash.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MetalStitchingBackend.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MetalStitchingBackend() + 24);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MetalStitchingBackend.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MetalStitchingBackend() + 28);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void MetalStitchingBackend.generateStructGetters(for:augmenting:library:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v66[3] = *MEMORY[0x277D85DE8];
  type metadata accessor for MetalDataType.Struct();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = *(v7 + 16);

    v10 = calculateOffsets(for:)(v9);

    v57 = *(v10 + 16);
    if (!v57)
    {
LABEL_18:

      goto LABEL_22;
    }

    v58 = v7;
    v11 = 0;
    a1 = v10 + 40;
    v56 = v10;
    while (v11 < *(v10 + 16))
    {
      v12 = *(a1 - 8);
      v14 = *(a1 + 8);
      v13 = *(a1 + 16);
      v62 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = one-time initialization token for typeToLookupFunctionMap;
      v63 = *a1;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      if (v16 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v17 = static MetalStitchingBackend.typeToLookupFunctionMap;
      if (!*(static MetalStitchingBackend.typeToLookupFunctionMap + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v19 & 1) == 0))
      {
        swift_endAccess();
        v46 = *(v58 + 32);
        v64 = *(v58 + 24);
        v65 = v46;

        MEMORY[0x266771550](46, 0xE100000000000000);
        MEMORY[0x266771550](v12, v63);
        v47 = MEMORY[0x266771550](10272, 0xE200000000000000);
        v48 = (*(*v14 + 136))(v47);
        MEMORY[0x266771550](v48);

        MEMORY[0x266771550](41, 0xE100000000000000);
        v49 = v64;
        v50 = v65;
        lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
        swift_allocError();
        *v51 = v49;
        *(v51 + 8) = v50;
        *(v51 + 16) = 4;
        swift_willThrow();

LABEL_21:

        swift_bridgeObjectRelease_n();
        goto LABEL_22;
      }

      v61 = v4;
      v20 = (*(v17 + 56) + 16 * v18);
      v21 = v20[1];
      v60 = *v20;
      swift_endAccess();
      v22 = v14[4];
      v64 = v14[3];
      v65 = v22;
      v23 = lazy protocol witness table accessor for type String and conformance String();

      v24 = MEMORY[0x277D837D0];
      v64 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v65 = v25;
      v54 = v23;
      v55 = v23;
      v53 = v23;
      v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v28 = v27;

      v29 = *(v58 + 32);
      v64 = *(v58 + 24);
      v65 = v29;

      MEMORY[0x266771550](95, 0xE100000000000000);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v30);

      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v26, v28);

      v32 = v64;
      v31 = v65;
      v33 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
      v34 = MEMORY[0x266771450](v32, v31);
      [v33 setSpecializedName_];

      v35 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
      [v33 setConstantValues_];

      v36 = MEMORY[0x266771450](v60, v21);

      [v33 setName_];

      LODWORD(v64) = v15;
      v37 = [v33 constantValues];
      if (v37)
      {
        v38 = v37;
        [v37 setConstantValue:&v64 type:33 atIndex:100];
      }

      v39 = MetalStitchingBackend.makeFunction(_:descriptor:)(a3, v33);
      v4 = v61;
      if (v61)
      {

        goto LABEL_21;
      }

      v40 = v39;
      ++v11;

      specialized OrderedDictionary.subscript.setter(v40, v32, v31);
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      a1 += 56;
      v10 = v56;
      if (v57 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_24:
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, logger);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v66[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 24), *(a1 + 32), v66);
    _os_log_impl(&dword_265D7D000, v42, v43, "Can not generate getters for a non-struct type %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266773120](v45, -1, -1);
    MEMORY[0x266773120](v44, -1, -1);
  }

LABEL_22:
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v29 = a3;
  v30 = a2;
  v10 = MetalShaderProgram.terminalNodes()();
  v11 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v12 = *(v10 + 2);
  if (v12)
  {
    v26 = v5;
    v27 = a4;
    v28 = v4;
    v13 = (v10 + 32);
    do
    {
      outlined init with copy of MetalFunctionNode(v13, v37);
      outlined init with take of MetalFunctionNode(v37, &v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalFunctionDefinitionNode();
      if ((swift_dynamicCast() & 1) != 0 && v38)
      {
        MEMORY[0x266771770]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v13 += 40;
      --v12;
    }

    while (v12);

    a4 = v27;
    v7 = v28;
    v11 = MEMORY[0x277D84F90];
    v6 = v26;
  }

  else
  {
  }

  *&v37[0] = specialized Array._copyToContiguousArray()(v14);
  specialized MutableCollection<>.sort(by:)(v37);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    v15 = *&v37[0];
    v38 = v11;
    v35 = 0;
    v36 = 0xE000000000000000;
    v34 = 0;
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC17OrderedDictionaryVySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_V_SSTt0g5Tf4g_n(v11);
    MEMORY[0x28223BE20](v33);
    v25[2] = a1;
    v25[3] = &v33;
    v25[4] = &v34;
    v25[5] = v7;
    v25[6] = v29;
    v25[7] = v30;
    v25[8] = a4;
    v25[9] = &v35;
    v25[10] = &v38;
    specialized Sequence.forEach(_:)(partial apply for closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:), v25, v15);

    if (one-time initialization token for debugMode != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = static DebugConfig.debugMode;

    v17 = specialized Set.contains(_:)(3, v16);

    if (v17)
    {
      v18 = v35;
      v19 = v36;
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v20 = v7;
      v21 = *v7;
      v22 = v20[1];

      v31 = v21;
      v32 = v22;
      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v20[2], v20[3]);
      MEMORY[0x266771550](0x696863746974735FLL, 0xEE007473694C676ELL);
      specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v18, v19, v31, v32, 7633012, 0xE300000000000000);
    }

    v23 = v38;

    return v23;
  }

  return result;
}

uint64_t closure #3 in MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = MetalStitchingBackend.mtlFunctionHash(_:)();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [v4 name];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v29 = v10;
    v30 = v12;
    MEMORY[0x266771550](8250, 0xE200000000000000);
    v13 = v7;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    swift_unknownObjectRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      v31 = v2;
      v19 = [v4 name];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v29);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_265D7D000, v15, v16, "Unable to obtain hash for function %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266773120](v18, -1, -1);
      MEMORY[0x266773120](v17, -1, -1);
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v29 = 0xD000000000000016;
    v30 = 0x8000000265F34260;
    v24 = [v4 name];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v26;

    v13 = v25;
  }

  MEMORY[0x266771550](v13, v8);

  v28 = v30;
  *a2 = v29;
  a2[1] = v28;
  return result;
}

void *MetalStitchingBackend.mtlFunctionHash(_:)()
{
  v19 = &unk_2877A9170;
  v0 = swift_dynamicCastObjCProtocolConditional();
  if (v0)
  {
    swift_unknownObjectRetain();
    v1 = [v0 bitCodeHash];
    v2 = v1[1];
    v17 = *v1;
    v18 = v2;
    v14 = MEMORY[0x277D84F90];
    v3 = 32;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 32, 0);
    v4 = v14;
    lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    do
    {
      v13 = v16[v3];
      v5 = String.init<A>(_:radix:uppercase:)();
      v15 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v15;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      ++v3;
    }

    while (v3 != 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v0 = BidirectionalCollection<>.joined(separator:)();

    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t *MetalStitchingBackend.typeToLookupFunctionMap.unsafeMutableAddressor()
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  return &static MetalStitchingBackend.typeToLookupFunctionMap;
}