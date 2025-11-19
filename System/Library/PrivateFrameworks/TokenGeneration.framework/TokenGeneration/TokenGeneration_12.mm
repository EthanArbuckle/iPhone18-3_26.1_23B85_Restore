Swift::Int CompileAdapterResponse.DraftModelCompileResult.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  return Hasher._finalize()();
}

uint64_t CompileAdapterResponse.DraftModelCompileResult.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();
  v26 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = KeyedDecodingContainer.allKeys.getter();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = specialized Collection<>.popFirst()();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v41 = &type metadata for CompileAdapterResponse.DraftModelCompileResult;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();
      v45 = v54;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();
    v46 = v31;
    v47 = v54;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();
    v49 = v64;
    v50 = v54;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_0(v43);
  }

  v75 = 3;
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();
  v38 = v54;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompileAdapterResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001ABA417E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompileAdapterResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CompileAdapterResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchModelMetadataRequest.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchModelMetadataRequest.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadata);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchModelMetadataResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53747865746E6F63 && a2 == 0xEB00000000657A69)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchModelMetadataResponse.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchModelMetadataResponse.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadata);
}

uint64_t FetchModelMetadataResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FetchModelMetadataResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance FetchModelMetadataResponse(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CountTokensRequest.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461646174656D5FLL;
  v4 = 0xE900000000000061;
  if (v2 != 1)
  {
    v3 = 0x5674706D6F72705FLL;
    v4 = 0xEE00746E61697261;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74706D6F72705FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7461646174656D5FLL;
  v8 = 0xE900000000000061;
  if (*a2 != 1)
  {
    v7 = 0x5674706D6F72705FLL;
    v8 = 0xEE00746E61697261;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74706D6F72705FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CountTokensRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CountTokensRequest.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CountTokensRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CountTokensRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CountTokensRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000061;
  v5 = 0x7461646174656D5FLL;
  if (v2 != 1)
  {
    v5 = 0x5674706D6F72705FLL;
    v4 = 0xEE00746E61697261;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74706D6F72705FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CountTokensRequest.CodingKeys()
{
  v1 = 0x7461646174656D5FLL;
  if (*v0 != 1)
  {
    v1 = 0x5674706D6F72705FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F72705FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CountTokensRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CountTokensRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CountTokensRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a1;
  v51 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = v49 - v12;
  v61 = type metadata accessor for Prompt.SpecialToken();
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v61);
  v60 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = v49 - v17;
  v59 = type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
  v18 = *(v59 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v21 = (v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for Prompt.Delimiter();
  v22 = *(v57 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a4 + 16);
  if (v26)
  {
    v49[1] = a6;
    v49[2] = a2;
    v65 = MEMORY[0x1E69E7CC0];
    v49[3] = a3;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v27 = v18;
    v28 = v65;
    v29 = a4 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v30 = *(v27 + 72);
    v54 = (v13 + 16);
    v55 = v30;
    v52 = v22 + 32;
    v53 = (v13 + 8);
    v56 = v22;
    do
    {
      v63 = v26;
      v64 = v28;
      outlined init with copy of DocumentResourceEnvelope(v29, v21, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
      v31 = *v21;
      v32 = v21[1];
      v34 = v21[2];
      v33 = v21[3];
      v35 = v25;
      v36 = v59;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21 + *(v59 + 32), v62, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      v37 = v58;
      Prompt.SpecialToken.init(identifier:instance:locale:)();
      v38 = *(v36 + 36);
      v25 = v35;
      v39 = *(v21 + v38);
      Prompt.SpecialToken.annotationOnly.setter();
      v40 = v61;
      (*v54)(v60, v37, v61);
      v41 = v21[4];
      v42 = v21[5];
      Prompt.Delimiter.init(token:position:priority:)();
      v43 = v37;
      v28 = v64;
      (*v53)(v43, v40);
      outlined destroy of DocumentResourceEnvelope(v21, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
      v65 = v28;
      v45 = *(v28 + 16);
      v44 = *(v28 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1);
        v28 = v65;
      }

      *(v28 + 16) = v45 + 1;
      v46 = (*(v56 + 32))(v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v45, v35, v57);
      v29 += v55;
      v26 = v63 - 1;
    }

    while (v63 != 1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v46);
  v47 = v51;
  v49[-2] = v50;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VG_AF0F0V0Q0Vs5NeverOTg5Tm(partial apply for closure #2 in PromptEnvelope.unseal(_:), &v49[-4], v47, MEMORY[0x1E69DA700], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for PromptEnvelope.AttachmentEnvelope);
  return Prompt.init(string:delimiters:attachments:)();
}

uint64_t PromptVariantEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RunnableConfigurationStorage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for OverridableConfigurationStorage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PromptVariantEnvelope(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v35, v24, type metadata accessor for PromptVariantEnvelope);
  v25 = (v13 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v24, v5, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    (*v25)(v16, v5, v12);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, v11, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v27 = swift_allocObject();
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v11, v27 + v26, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    OverridableConfigurationStorage.mapValue.setter();
    RunnableConfigurationStorage.init()();
    v28 = v38;
    CompletionPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
    outlined destroy of DocumentResourceEnvelope(v5, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    v29 = MEMORY[0x1E69DA6E0];
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v24, v20, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    (*v25)(v16, v20, v12);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, v11, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v30 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v31 = swift_allocObject();
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v11, v31 + v30, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    OverridableConfigurationStorage.mapValue.setter();
    RunnableConfigurationStorage.init()();
    v28 = v38;
    ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
    outlined destroy of DocumentResourceEnvelope(v20, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    v29 = MEMORY[0x1E69DA6E8];
  }

  v32 = *v29;
  v33 = type metadata accessor for PromptVariant();
  return (*(*(v33 - 8) + 104))(v28, v32, v33);
}

uint64_t PromptVariantEnvelope.init(sealing:xpcData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v4 = type metadata accessor for CompletionPrompt();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = type metadata accessor for OverridableConfigurationStorage();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChatMessagesPrompt();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v22 = type metadata accessor for PromptVariant();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v23 + 16);
  v46 = a1;
  v27(v26, a1, v22);
  v28 = (*(v23 + 88))(v26, v22);
  if (v28 == *MEMORY[0x1E69DA6E0])
  {
    (*(v23 + 96))(v26, v22);
    v30 = v40;
    v29 = v41;
    (*(v40 + 32))(v9, v26, v41);
    v31 = v39;
    (*(v30 + 16))(v39, v9, v29);
    CompletionPrompt._overridableConfigurationStorage.getter();
    v32 = OverridableConfigurationStorage.configuration.getter();
    specialized _NativeDictionary.mapValues<A>(_:)(v32, v42);

    OverridableConfigurationStorage.init(configuration:)();
    (*(v23 + 8))(v46, v22);
    (*(v44 + 8))(v13, v45);
    v33 = *(v30 + 8);
    v33(v31, v29);
    v33(v9, v29);
LABEL_5:
    type metadata accessor for PromptVariantEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  v34 = v42;
  if (v28 == *MEMORY[0x1E69DA6E8])
  {
    (*(v23 + 96))(v26, v22);
    (*(v15 + 32))(v21, v26, v14);
    (*(v15 + 16))(v19, v21, v14);
    ChatMessagesPrompt._overridableConfigurationStorage.getter();
    v35 = OverridableConfigurationStorage.configuration.getter();
    specialized _NativeDictionary.mapValues<A>(_:)(v35, v34);

    OverridableConfigurationStorage.init(configuration:)();
    (*(v23 + 8))(v46, v22);
    (*(v44 + 8))(v13, v45);
    v36 = *(v15 + 8);
    v36(v19, v14);
    v36(v21, v14);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t (*CountTokensRequest.promptVariant.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for PromptVariantEnvelope(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[2] = v9;
  v11 = type metadata accessor for PromptVariant();
  v5[3] = v11;
  v12 = *(v11 - 8);
  v5[4] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v12 + 64));
    v5[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[7] = v14;
  *(v5 + 16) = *(type metadata accessor for CountTokensRequest(0) + 24);
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v1, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  PromptVariantEnvelope.unseal(_:)(v10, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CountTokensRequest.promptVariant.modify;
}

uint64_t CountTokensRequest.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CountTokensRequest(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;
}

uint64_t CountTokensRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for CountTokensRequest(0);
  v12 = (v3 + v11[5]);
  v13 = v12[3];
  v25 = *v12;
  v26 = *(v12 + 1);
  v27 = v13;
  v31 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v11[7];
    v24 = v3;
    v15 = (v3 + v14);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    v20 = v15[5];
    v21 = v15[6];
    v25 = *v15;
    *&v26 = v16;
    *(&v26 + 1) = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = 1;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v22 = v11[6];
    LOBYTE(v25) = 2;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CountTokensRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for PromptVariantEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for CountTokensRequest(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v16 = a1[3];
  v17 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    v21 = type metadata accessor for XPCDictionary();
    return (*(*(v21 - 8) + 8))(v15, v21);
  }

  else
  {
    v18 = v31;
    v19 = v7;
    v38 = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    v20 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v35;
    v23 = &v15[v12[5]];
    *v23 = *v34;
    *(v23 + 8) = *&v34[8];
    *(v23 + 3) = v22;
    v38 = 1;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = *&v34[16];
    v25 = v35;
    v26 = v37;
    v27 = &v15[v12[7]];
    *v27 = *v34;
    *(v27 + 2) = v24;
    *(v27 + 3) = v25;
    *(v27 + 2) = v36;
    *(v27 + 6) = v26;
    v34[0] = 2;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v11, v20);
    outlined init with take of DocumentRegistrationEnvelope(v19, &v15[v12[6]], type metadata accessor for PromptVariantEnvelope);
    outlined init with copy of DocumentResourceEnvelope(v15, v30, type metadata accessor for CountTokensRequest);
    __swift_destroy_boxed_opaque_existential_0(v33);
    return outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for CountTokensRequest);
  }
}

uint64_t CountTokensResponse.renderedPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Rendering.Source();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (v1[2])
  {
    v5 = v1[13];
    v6 = v1[10];
    v17 = v1[11];
    v18 = a1;
    v7 = v1[9];
    v20 = v1[12];
    v21 = v1[8];
    v8 = v1[7];
    v19 = v1[6];
    v9 = v1[4];
    v10 = v1[5];
    v11 = v1[3];
    v12 = v1[1];

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    v13 = type metadata accessor for Prompt.Rendering();
    return (*(*(v13 - 8) + 56))(v18, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for Prompt.Rendering();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t CountTokensResponse.init(count:renderedPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Prompt.Rendering();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v26 - v16, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v19 = 0;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    (*(v7 + 32))(v13, v17, v6);
    (*(v7 + 16))(v10, v13, v6);
    specialized PromptRenderingEnvelope.init(sealing:)(v10, v32);
    v30 = v32[1];
    v31 = v32[0];
    v28 = v32[3];
    v29 = v32[2];
    v27 = v32[4];
    v26 = v32[5];
    v19 = v33;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    result = (*(v7 + 8))(v13, v6);
    v25 = v26;
    v24 = v27;
    v23 = v28;
    v22 = v29;
    v21 = v30;
    v20 = v31;
  }

  *a3 = a1;
  *(a3 + 8) = v20;
  *(a3 + 24) = v21;
  *(a3 + 40) = v22;
  *(a3 + 56) = v23;
  *(a3 + 72) = v24;
  *(a3 + 88) = v25;
  *(a3 + 104) = v19;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CountTokensResponse.CodingKeys()
{
  if (*v0)
  {
    result = 0x657265646E65725FLL;
  }

  else
  {
    result = 0x746E756F63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CountTokensResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657265646E65725FLL && a2 == 0xEF74706D6F725064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CountTokensResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CountTokensResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountTokensResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = *v1;
  v10 = *(v1 + 7);
  v11 = *(v1 + 11);
  v32 = *(v1 + 9);
  v33 = v11;
  v34 = v1[13];
  v12 = *(v1 + 3);
  v28 = *(v1 + 1);
  v29 = v12;
  v30 = *(v1 + 5);
  v31 = v10;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v35 = 1;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v28, v19, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19[4] = v25;
    v19[5] = v26;
    v20 = v27;
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t CountTokensResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = 1;
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v12 = v19;
    *(a2 + 56) = v20;
    v13 = v22;
    *(a2 + 72) = v21;
    *(a2 + 88) = v13;
    v14 = v18;
    *(a2 + 8) = v17;
    *(a2 + 24) = v14;
    *a2 = v11;
    *(a2 + 104) = v23;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CountTokensPromptTemplateRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CountTokensPromptTemplateRequest.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74706D6F72705FLL;
  v4 = 0x80000001ABA3F3F0;
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0x7461646174656D5FLL;
    v4 = 0xE900000000000061;
  }

  if (*v1)
  {
    v3 = 0x5674706D6F72705FLL;
    v2 = 0xEE00746E61697261;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  v1 = 0x74706D6F72705FLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x7461646174656D5FLL;
  }

  if (*v0)
  {
    v1 = 0x5674706D6F72705FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CountTokensPromptTemplateRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CountTokensPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CountTokensPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountTokensPromptTemplateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v12 = (v3 + v11[5]);
  v13 = v12[1];
  v24 = *v12;
  v25 = v13;
  v29 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v11[6];
    LOBYTE(v24) = 1;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = v11[7];
    LOBYTE(v24) = 2;
    type metadata accessor for PromptTemplateInfoEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + v11[8]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    v22 = v16[6];
    *&v24 = *v16;
    *(&v24 + 1) = v17;
    *&v25 = v18;
    *(&v25 + 1) = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CountTokensPromptTemplateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v37 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v40 = *(v42 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v12 = v37 - v11;
  v13 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v44 = v13;
  v17 = *(v13 + 24);
  v18 = type metadata accessor for PromptVariantEnvelope(0);
  v19 = *(*(v18 - 8) + 56);
  v46 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v21 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();
  v41 = v12;
  v22 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v25 = v46;
    __swift_destroy_boxed_opaque_existential_0(v45);
    v26 = type metadata accessor for XPCDictionary();
    (*(*(v26 - 8) + 8))(v16, v26);
    outlined consume of PromptEnvelope?(0, 0);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v16[v25], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  else
  {
    v23 = v9;
    v24 = v40;
    v52 = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v44;
    v29 = &v16[*(v44 + 20)];
    v30 = *(&v47 + 1);
    v31 = v48;
    v32 = v49;
    *v29 = v47;
    *(v29 + 1) = v30;
    v37[0] = v31;
    v37[1] = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    v43 = v32;
    LOBYTE(v47) = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v23, &v16[v46], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    LOBYTE(v47) = 2;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v5, &v16[*(v28 + 28)], type metadata accessor for PromptTemplateInfoEnvelope);
    v52 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v41, v42);
    v33 = v48;
    v34 = v49;
    v35 = v51;
    v36 = &v16[*(v28 + 32)];
    *v36 = v47;
    *(v36 + 2) = v33;
    *(v36 + 3) = v34;
    *(v36 + 2) = v50;
    *(v36 + 6) = v35;
    outlined init with copy of DocumentResourceEnvelope(v16, v38, type metadata accessor for CountTokensPromptTemplateRequest);
    __swift_destroy_boxed_opaque_existential_0(v45);
    return outlined destroy of DocumentResourceEnvelope(v16, type metadata accessor for CountTokensPromptTemplateRequest);
  }
}

unint64_t CompletePromptTemplateRequest.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74706D6F72705FLL;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x74656D617261705FLL;
    }

    if (a1)
    {
      v5 = 0x5674706D6F72705FLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746E656D75636F64;
    v2 = 0x69617274736E6F63;
    if (a1 != 7)
    {
      v2 = 0x7461646174656D5FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x736C6F6F745FLL;
    if (a1 != 4)
    {
      v3 = 0x6F68436C6F6F745FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CompletePromptTemplateRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompletePromptTemplateRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CompletePromptTemplateRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptTemplateRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CompletePromptTemplateRequest.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = CompletePromptTemplateRequest.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptTemplateRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptTemplateRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t (*CompletePromptTemplateRequest.prompt.modify(void *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for Prompt();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[2] = v6;
  v8 = *(v6 + 64);
  if (v2)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v4[4] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v2)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v4[5] = v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64);
  if (v2)
  {
    v4[6] = swift_coroFrameAlloc();
    v4[7] = swift_coroFrameAlloc();
    v4[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(v13);
    v4[7] = malloc(v13);
    v4[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v4[9] = v14;
  v16 = *(type metadata accessor for CompletePromptTemplateRequest(0) + 20);
  *(v4 + 28) = v16;
  v17 = (v1 + v16);
  v18 = *v17;
  v4[10] = *v17;
  v19 = v17[1];
  v4[11] = v19;
  v20 = v17[2];
  v4[12] = v20;
  v21 = v17[3];
  v4[13] = v21;
  if (v19)
  {
    v22 = type metadata accessor for XPCDictionary();
    v27 = v7;
    v23 = v5;
    v24 = *(v22 - 8);
    (*(v24 + 16))(v12, v1, v22);
    (*(v24 + 56))(v12, 0, 1, v22);
    v5 = v23;
    v7 = v27;
    PromptEnvelope.unseal(_:)(v12, v18, v19, v20, v21, v15);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v7 + 56))(v15, v25, 1, v5);
  return CompletePromptTemplateRequest.prompt.modify;
}

uint64_t CountTokensPromptTemplateRequest.promptTemplateInfo.getter(uint64_t (*a1)(void, __n128), void (*a2)(uint64_t *))
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v23[-v13];
  v15 = (v2 + *(a1(0, v12) + 28));
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14, v5, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  v19 = v15[1];
  v18 = v15[2];
  v20 = *v15;
  v24 = v14;

  specialized _NativeDictionary.mapValues<A>(_:)(a2, v23, v20);
  v21 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15 + *(v21 + 24), v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t (*CompletePromptTemplateRequest.promptTemplateInfo.modify(void *a1))()
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v6[1] = v7;
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v6[2] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64);
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  v11 = v10;
  v6[3] = v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v4)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[4] = v13;
  v15 = type metadata accessor for PromptTemplateInfo();
  v6[5] = v15;
  v16 = *(v15 - 8);
  v6[6] = v16;
  v17 = *(v16 + 64);
  v28[4] = a1;
  if (v4)
  {
    v6[7] = swift_coroFrameAlloc();
    v6[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v6[7] = malloc(v17);
    v6[8] = malloc(v17);
    v18 = malloc(v17);
  }

  v6[9] = v18;
  v19 = *(type metadata accessor for CompletePromptTemplateRequest(0) + 28);
  *(v6 + 22) = v19;
  v20 = (v2 + v19);
  v21 = type metadata accessor for XPCDictionary();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v14, v2, v21);
  v23 = (*(v22 + 56))(v14, 0, 1, v21);
  v25 = v20[1];
  v24 = v20[2];
  v26 = *v20;
  MEMORY[0x1EEE9AC00](v23);
  v28[2] = v14;

  specialized _NativeDictionary.mapValues<A>(_:)(closure #1 in PromptTemplateInfoEnvelope.unseal(_:)partial apply, v28, v26);
  v6[10] = 0;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20 + *(v7 + 24), v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptTemplateRequest.promptTemplateInfo.modify;
}

uint64_t CompletePromptTemplateRequest.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompletePromptTemplateRequest(0) + 32);
  v4 = *(v3 + 176);
  v17[10] = *(v3 + 160);
  v17[11] = v4;
  v17[12] = *(v3 + 192);
  v18 = *(v3 + 208);
  v5 = *(v3 + 112);
  v17[6] = *(v3 + 96);
  v17[7] = v5;
  v6 = *(v3 + 144);
  v17[8] = *(v3 + 128);
  v17[9] = v6;
  v7 = *(v3 + 48);
  v17[2] = *(v3 + 32);
  v17[3] = v7;
  v8 = *(v3 + 80);
  v17[4] = *(v3 + 64);
  v17[5] = v8;
  v9 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v9;
  outlined init with copy of SamplingParametersEnvelope(v17, v19);
  SamplingParametersEnvelope.unseal()(a1);
  v10 = *(v3 + 176);
  v19[10] = *(v3 + 160);
  v19[11] = v10;
  v19[12] = *(v3 + 192);
  v20 = *(v3 + 208);
  v11 = *(v3 + 112);
  v19[6] = *(v3 + 96);
  v19[7] = v11;
  v12 = *(v3 + 144);
  v19[8] = *(v3 + 128);
  v19[9] = v12;
  v13 = *(v3 + 48);
  v19[2] = *(v3 + 32);
  v19[3] = v13;
  v14 = *(v3 + 80);
  v19[4] = *(v3 + 64);
  v19[5] = v14;
  v15 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v15;
  return outlined destroy of SamplingParametersEnvelope(v19);
}

uint64_t ToolDescriptionEnvelope.unseal()@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for GenerationSchema();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ToolType(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v1, v14, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        outlined init with take of DocumentRegistrationEnvelope(v14, v10, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v21 = *v10;
        v22 = *(v10 + 1);
        v23 = *(v10 + 3);
        v28 = *(v10 + 2);
        v29 = v21;
        (*(v3 + 16))(v6, &v10[*(v7 + 24)], v2);
        v24 = *(type metadata accessor for FunctionDescription(0) + 24);

        Schema.init(type:)();
        outlined destroy of DocumentResourceEnvelope(v10, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v25 = v28;
        *v18 = v29;
        v18[1] = v22;
        v18[2] = v25;
        v18[3] = v23;
        goto LABEL_8;
      }

      v20 = type metadata accessor for FileGenerationParameters();
    }

    else
    {
      v20 = type metadata accessor for ImageGenerationParameters();
    }

    (*(*(v20 - 8) + 32))(v18, v14, v20);
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  return outlined init with take of DocumentRegistrationEnvelope(v18, v30, type metadata accessor for ToolType);
}

uint64_t ToolChoiceEnvelope.unseal()()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return static ToolChoice.none.getter();
    case 1:
      return static ToolChoice.automatic.getter();
    case 2:
      return static ToolChoice.required.getter();
  }

  v3 = *v0;
  return static ToolChoice.function(name:)();
}

uint64_t CompletePromptTemplateRequest.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CompletePromptTemplateRequest(0) + 52));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;
}

uint64_t ToolDescription.init(toolType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GenerationSchema();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for ToolType.Function();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolType.Type();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v48[-1] - v17);
  ToolType.type.getter();
  v19 = (*(v12 + 88))(v18, v11);
  if (v19 == *MEMORY[0x1E69A0E58])
  {
    v20 = type metadata accessor for ToolType();
    (*(*(v20 - 8) + 8))(a1, v20);
    (*(v12 + 96))(v18, v11);
    v21 = type metadata accessor for ImageGenerationParameters();
    (*(*(v21 - 8) + 32))(a2, v18, v21);
    type metadata accessor for ToolType(0);
    return swift_storeEnumTagMultiPayload();
  }

  v47 = a1;
  if (v19 == *MEMORY[0x1E69A0E50])
  {
    v22 = type metadata accessor for ToolType();
    (*(*(v22 - 8) + 8))(v47, v22);
    (*(v12 + 96))(v18, v11);
    v23 = type metadata accessor for FileGenerationParameters();
    (*(*(v23 - 8) + 32))(a2, v18, v23);
    type metadata accessor for ToolType(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v19 == *MEMORY[0x1E69A0E78])
  {
    (*(v12 + 96))(v18, v11);
    (*(v7 + 32))(v10, v18, v6);
    v24 = Tool.Function.name.getter();
    v26 = v25;
    v27 = Tool.Function.description.getter();
    v29 = v28;
    Tool.Function.parameters.getter();
    v30 = a2 + *(type metadata accessor for FunctionDescription(0) + 24);
    Schema.init(type:)();
    v31 = type metadata accessor for ToolType();
    (*(*(v31 - 8) + 8))(v47, v31);
    (*(v7 + 8))(v10, v6);
    *a2 = v24;
    a2[1] = v26;
    a2[2] = v27;
    a2[3] = v29;
    type metadata accessor for ToolType(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v19 == *MEMORY[0x1E69A0E70])
  {
    (*(v12 + 96))(v18, v11);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(v18, v48);
    v33 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v34 = *(v33 + 8);
    v35 = dispatch thunk of DynamicArgumentsTooling.name.getter();
    v37 = v36;
    v38 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v39 = *(v38 + 8);
    v40 = dispatch thunk of DynamicArgumentsTooling.usageDescription.getter();
    v42 = v41;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    swift_getDynamicType();
    static Tooling.argumentsSchema.getter();
    v43 = a2 + *(type metadata accessor for FunctionDescription(0) + 24);
    Schema.init(type:)();
    v44 = type metadata accessor for ToolType();
    (*(*(v44 - 8) + 8))(v47, v44);
    *a2 = v35;
    a2[1] = v37;
    a2[2] = v40;
    a2[3] = v42;
    type metadata accessor for ToolType(0);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
    v45 = v47;
    if (v19 == *MEMORY[0x1E69A0E68] || v19 == *MEMORY[0x1E69A0E60])
    {
      v46 = type metadata accessor for ToolType();
      (*(*(v46 - 8) + 8))(v45, v46);
      type metadata accessor for ToolType(0);
      return swift_storeEnumTagMultiPayload();
    }

    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    MEMORY[0x1AC5A5BC0](0xD000000000000013, 0x80000001ABA41750);
    ToolType.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v12 + 8))(v16, v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ToolDescriptionEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ToolType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(a1, v7, type metadata accessor for ToolType);
  ToolDescriptionEnvelope.ToolTypeEnvelope.init(sealing:)(v7, a2);
  return outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolDescription);
}

uint64_t ToolChoiceEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ToolChoice.FunctionChoice();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolChoice.Value();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ToolChoice.value.getter();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x1E69A0B20])
  {
    (*(v10 + 96))(v13, v9);
    (*(v5 + 32))(v8, v13, v4);
    v15 = ToolChoice.FunctionChoice.name.getter();
    v17 = v16;
    v18 = type metadata accessor for ToolChoice();
    (*(*(v18 - 8) + 8))(a1, v18);
    result = (*(v5 + 8))(v8, v4);
LABEL_9:
    *a2 = v15;
    a2[1] = v17;
    return result;
  }

  if (v14 == *MEMORY[0x1E69A0B18])
  {
    v20 = type metadata accessor for ToolChoice();
    result = (*(*(v20 - 8) + 8))(a1, v20);
    v15 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x1E69A0B30])
  {
    v21 = type metadata accessor for ToolChoice();
    result = (*(*(v21 - 8) + 8))(a1, v21);
    v15 = 0;
    v17 = 1;
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x1E69A0B28])
  {
    v22 = type metadata accessor for ToolChoice();
    result = (*(*(v22 - 8) + 8))(a1, v22);
    v15 = 0;
    v17 = 2;
    goto LABEL_9;
  }

  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  MEMORY[0x1AC5A5BC0](0xD000000000000014, 0x80000001ABA41770);
  type metadata accessor for ToolChoice();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CompletePromptTemplateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for CompletePromptTemplateRequest(0);
  v12 = (v3 + v11[5]);
  v13 = v12[1];
  v64 = *v12;
  v65 = v13;
  LOBYTE(v50) = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v11[6];
    LOBYTE(v64) = 1;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = v11[7];
    v80 = 2;
    type metadata accessor for PromptTemplateInfoEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + v11[8]);
    v17 = v16[11];
    v18 = v16[9];
    v74 = v16[10];
    v75 = v17;
    v19 = v16[11];
    v76 = v16[12];
    v20 = v16[7];
    v21 = v16[5];
    v70 = v16[6];
    v71 = v20;
    v22 = v16[7];
    v23 = v16[9];
    v72 = v16[8];
    v73 = v23;
    v24 = v16[3];
    v25 = v16[1];
    v66 = v16[2];
    v67 = v24;
    v26 = v16[3];
    v27 = v16[5];
    v68 = v16[4];
    v69 = v27;
    v28 = v16[1];
    v64 = *v16;
    v65 = v28;
    v60 = v74;
    v61 = v19;
    v62 = v16[12];
    v56 = v70;
    v57 = v22;
    v58 = v72;
    v59 = v18;
    v52 = v66;
    v53 = v26;
    v54 = v68;
    v55 = v21;
    v77 = *(v16 + 104);
    v63 = *(v16 + 104);
    v50 = v64;
    v51 = v25;
    v79 = 3;
    outlined init with copy of SamplingParametersEnvelope(&v64, v48);
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v48[10] = v60;
    v48[11] = v61;
    v48[12] = v62;
    v49 = v63;
    v48[6] = v56;
    v48[7] = v57;
    v48[8] = v58;
    v48[9] = v59;
    v48[2] = v52;
    v48[3] = v53;
    v48[4] = v54;
    v48[5] = v55;
    v48[0] = v50;
    v48[1] = v51;
    outlined destroy of SamplingParametersEnvelope(v48);
    v41 = *(v3 + v11[9]);
    v78 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = (v3 + v11[10]);
    v30 = v29[1];
    v41 = *v29;
    v42 = v30;
    v78 = 5;
    outlined copy of FinishReason?(v41, v30);
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of FinishReason?(v41, v42);
    v41 = *(v3 + v11[11]);
    v78 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v11[12];
    LOBYTE(v41) = 7;
    type metadata accessor for Constraints(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32 = (v3 + v11[13]);
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[3];
    v36 = v32[4];
    v37 = v32[5];
    v38 = v32[6];
    v41 = *v32;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v78 = 8;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CompletePromptTemplateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = v51 - v5;
  v54 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v6 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v51 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v15 = v51 - v14;
  v16 = type metadata accessor for CompletePromptTemplateRequest(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v59 = v16;
  v20 = *(v16 + 24);
  v21 = type metadata accessor for PromptVariantEnvelope(0);
  v22 = *(*(v21 - 8) + 56);
  v62 = v20;
  v58 = v19;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[3];
  v24 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();
  v56 = v15;
  v25 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v26 = v12;
    v60 = v8;
    LOBYTE(v63) = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v58;
    v34 = v59;
    v35 = &v58[v59[5]];
    v36 = v68;
    v37 = v69;
    *v35 = v68;
    v51[3] = *(&v37 + 1);
    v51[4] = *(&v36 + 1);
    *(v35 + 1) = v37;
    LOBYTE(v68) = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v51[2] = v37;
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v26, v33 + v62, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    LOBYTE(v68) = 2;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope);
    v38 = v60;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v38, v33 + v34[7], type metadata accessor for PromptTemplateInfoEnvelope);
    v83 = 3;
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v33 + v34[8];
    v40 = v79;
    *(v39 + 160) = v78;
    *(v39 + 176) = v40;
    *(v39 + 192) = v80;
    *(v39 + 208) = v81;
    v41 = v75;
    *(v39 + 96) = v74;
    *(v39 + 112) = v41;
    v42 = v77;
    *(v39 + 128) = v76;
    *(v39 + 144) = v42;
    v43 = v71;
    *(v39 + 32) = v70;
    *(v39 + 48) = v43;
    v44 = v73;
    *(v39 + 64) = v72;
    *(v39 + 80) = v44;
    v45 = v69;
    *v39 = v68;
    *(v39 + 16) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    v82 = 4;
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v33 + v34[9]) = v63;
    v82 = 5;
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v33 + v34[10]) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    v82 = 6;
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v33 + v34[11]) = v63;
    type metadata accessor for Constraints(0);
    LOBYTE(v63) = 7;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints);
    v46 = v53;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v51[1] = v36;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v46, v33 + v34[12], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v82 = 8;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = 0;
    (*(v55 + 8))(v56, v57);
    v47 = v64;
    v48 = v65;
    v49 = v67;
    v50 = v33 + v34[13];
    *v50 = v63;
    *(v50 + 16) = v47;
    *(v50 + 24) = v48;
    *(v50 + 32) = v66;
    *(v50 + 48) = v49;
    outlined init with copy of DocumentResourceEnvelope(v33, v52, type metadata accessor for CompletePromptTemplateRequest);
    __swift_destroy_boxed_opaque_existential_0(v61);
    return outlined destroy of DocumentResourceEnvelope(v33, type metadata accessor for CompletePromptTemplateRequest);
  }

  v60 = v25;
  LODWORD(v54) = 0;
  LODWORD(v55) = 0;
  LODWORD(v56) = 0;
  LODWORD(v57) = 0;
  v27 = v58;
  v28 = v59;
  __swift_destroy_boxed_opaque_existential_0(v61);
  v29 = type metadata accessor for XPCDictionary();
  (*(*(v29 - 8) + 8))(v27, v29);
  outlined consume of PromptEnvelope?(0, 0);
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v27[v62], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (v54)
  {
    v32 = *&v27[v28[9]];

    if (!v55)
    {
LABEL_6:
      if (!v56)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!v55)
  {
    goto LABEL_6;
  }

  result = outlined consume of FinishReason?(*&v27[v28[10]], *&v27[v28[10] + 8]);
  if (v56)
  {
LABEL_7:
    v31 = *&v27[v28[11]];
  }

LABEL_8:
  if (v57)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v27[v28[12]], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CompletePromptRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CompletePromptRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x74706D6F72705FLL;
  v5 = 0x7461646174656D5FLL;
  v6 = 0xEE00746E61697261;
  if (v2 == 6)
  {
    v6 = 0xE900000000000061;
  }

  else
  {
    v5 = 0x5674706D6F72705FLL;
  }

  v7 = 0xE900000000000073;
  v8 = 0x746E656D75636F64;
  if (v2 != 4)
  {
    v8 = 0x69617274736E6F63;
    v7 = 0xEB0000000073746ELL;
  }

  if (*v1 > 5u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736C6F6F745FLL;
  if (v2 != 2)
  {
    v10 = 0x6F68436C6F6F745FLL;
    v9 = 0xEB00000000656369;
  }

  if (*v1)
  {
    v4 = 0x74656D617261705FLL;
    v3 = 0xEB00000000737265;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CompletePromptRequest.CodingKeys()
{
  v1 = *v0;
  v2 = 0x74706D6F72705FLL;
  v3 = 0x7461646174656D5FLL;
  if (v1 != 6)
  {
    v3 = 0x5674706D6F72705FLL;
  }

  v4 = 0x746E656D75636F64;
  if (v1 != 4)
  {
    v4 = 0x69617274736E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736C6F6F745FLL;
  if (v1 != 2)
  {
    v5 = 0x6F68436C6F6F745FLL;
  }

  if (*v0)
  {
    v2 = 0x74656D617261705FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t (*CompletePromptRequest.prompt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Prompt();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v5[5] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[6] = v12;
  v14 = *(type metadata accessor for CompletePromptRequest(0) + 20);
  *(v5 + 20) = v14;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  v5[7] = v17;
  v18 = v15[2];
  v5[8] = v18;
  v19 = v15[3];
  v5[9] = v19;
  v20 = type metadata accessor for XPCDictionary();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, v1, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  PromptEnvelope.unseal(_:)(v8, v16, v17, v18, v19, v13);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptRequest.prompt.modify;
}

uint64_t CountTokensRequest.promptVariant.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v14 - v8;
  v10 = *(a1(0, v7) + 24);
  v11 = type metadata accessor for XPCDictionary();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, v2, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  PromptVariantEnvelope.unseal(_:)(v9, a2);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t key path getter for CountTokensRequest.promptVariant : CountTokensRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = *(a2(0) + 24);
  v11 = type metadata accessor for XPCDictionary();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a1, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  PromptVariantEnvelope.unseal(_:)(v9, a3);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t (*CompletePromptRequest.promptVariant.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for PromptVariantEnvelope(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[2] = v9;
  v11 = type metadata accessor for PromptVariant();
  v5[3] = v11;
  v12 = *(v11 - 8);
  v5[4] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v12 + 64));
    v5[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[7] = v14;
  *(v5 + 16) = *(type metadata accessor for CompletePromptRequest(0) + 24);
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v1, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  PromptVariantEnvelope.unseal(_:)(v10, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptRequest.promptVariant.modify;
}

uint64_t CompletePromptRequest.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompletePromptRequest(0) + 28);
  v4 = *(v3 + 176);
  v17[10] = *(v3 + 160);
  v17[11] = v4;
  v17[12] = *(v3 + 192);
  v18 = *(v3 + 208);
  v5 = *(v3 + 112);
  v17[6] = *(v3 + 96);
  v17[7] = v5;
  v6 = *(v3 + 144);
  v17[8] = *(v3 + 128);
  v17[9] = v6;
  v7 = *(v3 + 48);
  v17[2] = *(v3 + 32);
  v17[3] = v7;
  v8 = *(v3 + 80);
  v17[4] = *(v3 + 64);
  v17[5] = v8;
  v9 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v9;
  outlined init with copy of SamplingParametersEnvelope(v17, v19);
  SamplingParametersEnvelope.unseal()(a1);
  v10 = *(v3 + 176);
  v19[10] = *(v3 + 160);
  v19[11] = v10;
  v19[12] = *(v3 + 192);
  v20 = *(v3 + 208);
  v11 = *(v3 + 112);
  v19[6] = *(v3 + 96);
  v19[7] = v11;
  v12 = *(v3 + 144);
  v19[8] = *(v3 + 128);
  v19[9] = v12;
  v13 = *(v3 + 48);
  v19[2] = *(v3 + 32);
  v19[3] = v13;
  v14 = *(v3 + 80);
  v19[4] = *(v3 + 64);
  v19[5] = v14;
  v15 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v15;
  return outlined destroy of SamplingParametersEnvelope(v19);
}

uint64_t CompletePromptTemplateRequest.tools.getter(uint64_t (*a1)(void, __n128))
{
  v47 = type metadata accessor for GenerationSchema();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  v6 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v8 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ToolDescriptionEnvelope(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ToolDescription(0);
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + *(a1(0, v20) + 36));
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v56 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v24 = v56;
    v25 = v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v51 = *(v15 + 72);
    v42 = (v3 + 16);
    v43 = v10;
    v26 = v48;
    do
    {
      v27 = v55;
      outlined init with copy of DocumentResourceEnvelope(v25, v55, type metadata accessor for ToolDescriptionEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v27, v54, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of DocumentResourceEnvelope(v55, type metadata accessor for ToolDescriptionEnvelope);
          v29 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of DocumentResourceEnvelope(v55, type metadata accessor for ToolDescriptionEnvelope);
          v29 = type metadata accessor for ImageGenerationParameters();
        }

        (*(*(v29 - 8) + 32))(v13, v54, v29);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v30 = v44;
        outlined init with take of DocumentRegistrationEnvelope(v54, v44, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v31 = *v30;
        v32 = *(v30 + 1);
        v33 = *(v30 + 3);
        v49 = *(v30 + 2);
        v50 = v31;
        (*v42)(v46, &v30[*(v45 + 24)], v47);
        v34 = *(type metadata accessor for FunctionDescription(0) + 24);

        Schema.init(type:)();
        v35 = v30;
        v26 = v48;
        outlined destroy of DocumentResourceEnvelope(v35, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        outlined destroy of DocumentResourceEnvelope(v55, type metadata accessor for ToolDescriptionEnvelope);
        v36 = v49;
        *v13 = v50;
        v13[1] = v32;
        v13[2] = v36;
        v13[3] = v33;
      }

      else
      {
        outlined destroy of DocumentResourceEnvelope(v55, type metadata accessor for ToolDescriptionEnvelope);
      }

      swift_storeEnumTagMultiPayload();
      outlined init with take of DocumentRegistrationEnvelope(v13, v26, type metadata accessor for ToolType);
      v56 = v24;
      v37 = v26;
      v39 = *(v24 + 16);
      v38 = *(v24 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
        v24 = v56;
      }

      *(v24 + 16) = v39 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v37, v24 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v39, type metadata accessor for ToolDescription);
      v25 += v51;
      --v23;
      v26 = v37;
    }

    while (v23);
  }

  return v24;
}

uint64_t CompletePromptTemplateRequest.toolChoice.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 40));
  v5 = v4[1];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      static ToolChoice.required.getter();
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      v5 = 1;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    static ToolChoice.none.getter();
    goto LABEL_12;
  }

  if (v5 != 1)
  {
LABEL_8:
    v6 = *v4;
    outlined copy of FinishReason(*v4, v4[1]);
    static ToolChoice.function(name:)();
    outlined consume of FinishReason?(v6, v5);
    goto LABEL_11;
  }

  static ToolChoice.automatic.getter();
LABEL_11:
  v5 = 0;
LABEL_12:
  v7 = type metadata accessor for ToolChoice();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v5, 1, v7);
}

uint64_t CompletePromptTemplateRequest.documents.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 44));
}

uint64_t CompletePromptRequest.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CompletePromptRequest(0) + 48));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;
}

uint64_t CompletePromptRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for CompletePromptRequest(0);
  v12 = (v3 + v11[5]);
  v13 = v12[3];
  v78 = *v12;
  v79 = *(v12 + 1);
  v80 = v13;
  v83 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v3 + v11[7];
    v15 = *(v14 + 176);
    v16 = *(v14 + 144);
    v74 = *(v14 + 160);
    v75 = v15;
    v17 = *(v14 + 176);
    v76 = *(v14 + 192);
    v18 = *(v14 + 112);
    v19 = *(v14 + 80);
    v70 = *(v14 + 96);
    v71 = v18;
    v20 = *(v14 + 112);
    v21 = *(v14 + 144);
    v72 = *(v14 + 128);
    v73 = v21;
    v22 = *(v14 + 48);
    v23 = *(v14 + 16);
    v66 = *(v14 + 32);
    v67 = v22;
    v24 = *(v14 + 48);
    v25 = *(v14 + 80);
    v68 = *(v14 + 64);
    v69 = v25;
    v26 = *(v14 + 16);
    v65[0] = *v14;
    v65[1] = v26;
    v61 = v74;
    v62 = v17;
    v63 = *(v14 + 192);
    v57 = v70;
    v58 = v20;
    v59 = v72;
    v60 = v16;
    v53 = v66;
    v54 = v24;
    v55 = v68;
    v56 = v19;
    v77 = *(v14 + 208);
    v64 = *(v14 + 208);
    v51 = v65[0];
    v52 = v23;
    v82 = 1;
    outlined init with copy of SamplingParametersEnvelope(v65, v49);
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v49[10] = v61;
    v49[11] = v62;
    v49[12] = v63;
    v50 = v64;
    v49[6] = v57;
    v49[7] = v58;
    v49[8] = v59;
    v49[9] = v60;
    v49[2] = v53;
    v49[3] = v54;
    v49[4] = v55;
    v49[5] = v56;
    v49[0] = v51;
    v49[1] = v52;
    outlined destroy of SamplingParametersEnvelope(v49);
    v42 = *(v3 + v11[9]);
    v81 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = (v3 + v11[10]);
    v28 = v27[1];
    v42 = *v27;
    v43 = v28;
    v81 = 3;
    outlined copy of FinishReason?(v42, v28);
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of FinishReason?(v42, v43);
    v42 = *(v3 + v11[11]);
    v81 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v11[8];
    LOBYTE(v42) = 5;
    type metadata accessor for Constraints(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = (v3 + v11[12]);
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    v34 = v30[3];
    v35 = v30[4];
    v36 = v30[5];
    v37 = v30[6];
    v40[1] = v36;
    v41 = v37;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v48 = v37;
    v81 = 6;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v41 = v47;

    v38 = v11[6];
    LOBYTE(v42) = 7;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CompletePromptRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = type metadata accessor for PromptVariantEnvelope(0);
  v3 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for CompletePromptRequest(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();
  v66 = v13;
  v18 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v67 = a1;
  if (v18)
  {
    v68 = v18;
    v19 = v14;
    v23 = 0;
    v24 = 0;
    LODWORD(v65) = 0;
    v25 = 0;
    v26 = 0;
    LODWORD(v66) = 0;
    v27 = v69;
  }

  else
  {
    v20 = v9;
    v19 = v14;
    v61 = v5;
    v21 = v64;
    LOBYTE(v70) = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    v22 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = *(&v75[1] + 1);
    v44 = &v69[v14[5]];
    *v44 = *&v75[0];
    *(v44 + 8) = *(v75 + 8);
    *(v44 + 3) = v43;
    v89 = 1;
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = v21;
    v46 = a1;
    v27 = v69;
    v47 = &v69[v14[7]];
    v48 = v85;
    *(v47 + 10) = v84;
    *(v47 + 11) = v48;
    *(v47 + 12) = v86;
    *(v47 + 104) = v87;
    v49 = v81;
    *(v47 + 6) = v80;
    *(v47 + 7) = v49;
    v50 = v83;
    *(v47 + 8) = v82;
    *(v47 + 9) = v50;
    v51 = v77;
    *(v47 + 2) = v76;
    *(v47 + 3) = v51;
    v52 = v79;
    *(v47 + 4) = v78;
    *(v47 + 5) = v52;
    v53 = v75[1];
    *v47 = v75[0];
    *(v47 + 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    v88 = 2;
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v27 + v14[9]) = v70;
    v88 = 3;
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v27 + v14[10]) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    v88 = 4;
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v68 = 0;
    *(v27 + v14[11]) = v70;
    type metadata accessor for Constraints(0);
    LOBYTE(v70) = 5;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints);
    v54 = v68;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (!v54)
    {
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v20, v27 + v14[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
      v88 = 6;
      lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v55 = v71;
      v56 = v72;
      v57 = v74;
      v58 = v27 + v14[12];
      *v58 = v70;
      *(v58 + 16) = v55;
      *(v58 + 24) = v56;
      *(v58 + 32) = v73;
      *(v58 + 48) = v57;
      LOBYTE(v70) = 7;
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
      v59 = v61;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v45 + 8))(v66, v22);
      outlined init with take of DocumentRegistrationEnvelope(v59, v27 + v14[6], type metadata accessor for PromptVariantEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v27, v62, type metadata accessor for CompletePromptRequest);
      __swift_destroy_boxed_opaque_existential_0(v46);
      return outlined destroy of DocumentResourceEnvelope(v27, type metadata accessor for CompletePromptRequest);
    }

    v68 = v54;
    (*(v45 + 8))(v66, v22);
    LODWORD(v65) = 0;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    LODWORD(v66) = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v67);
  v28 = type metadata accessor for XPCDictionary();
  result = (*(*(v28 - 8) + 8))(v27, v28);
  if (v23)
  {
    v30 = (v27 + v19[5]);
    v31 = v30[1];

    v32 = v30[2];

    v33 = v30[3];

    if (!v24)
    {
      goto LABEL_6;
    }
  }

  else if (!v24)
  {
LABEL_6:
    if (v65)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v35 = v27 + v19[7];
  v36 = *(v35 + 176);
  v84 = *(v35 + 160);
  v85 = v36;
  v86 = *(v35 + 192);
  v87 = *(v35 + 208);
  v37 = *(v35 + 112);
  v80 = *(v35 + 96);
  v81 = v37;
  v38 = *(v35 + 144);
  v82 = *(v35 + 128);
  v83 = v38;
  v39 = *(v35 + 48);
  v76 = *(v35 + 32);
  v77 = v39;
  v40 = *(v35 + 80);
  v78 = *(v35 + 64);
  v79 = v40;
  v41 = *(v35 + 16);
  v75[0] = *v35;
  v75[1] = v41;
  result = outlined destroy of SamplingParametersEnvelope(v75);
  if (v65)
  {
LABEL_7:
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27 + v19[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    if (!v25)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!v25)
  {
LABEL_8:
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  v42 = *(v27 + v19[9]);

  if (v26)
  {
LABEL_9:
    result = outlined consume of FinishReason?(*(v27 + v19[10]), *(v27 + v19[10] + 8));
  }

LABEL_10:
  if (v66)
  {
    v34 = *(v27 + v19[11]);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassifyPromptRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ClassifyPromptRequest.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassifyPromptRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ClassifyPromptRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7461646174656D5FLL;
  v3 = 0xE900000000000074;
  v4 = 0x706D6F725067745FLL;
  if (*v1 != 2)
  {
    v4 = 0x74656D617261705FLL;
    v3 = 0xEB00000000737265;
  }

  v5 = 0xE700000000000000;
  if (*v1)
  {
    v2 = 0x74706D6F72705FLL;
  }

  else
  {
    v5 = 0xE900000000000061;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifyPromptRequest.CodingKeys()
{
  v1 = 0x7461646174656D5FLL;
  v2 = 0x706D6F725067745FLL;
  if (*v0 != 2)
  {
    v2 = 0x74656D617261705FLL;
  }

  if (*v0)
  {
    v1 = 0x74706D6F72705FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifyPromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifyPromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t key path getter for CompletePromptRequest.prompt : CompletePromptRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = (a1 + *(a2(0) + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = type metadata accessor for XPCDictionary();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v9, a1, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  PromptEnvelope.unseal(_:)(v9, v11, v12, v13, v14, a3);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t key path setter for CompletePromptRequest.prompt : CompletePromptRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Prompt();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = *(v9 + 16);
  v16(&v29 - v14, a1, v8);
  v16(v13, v15, v8);
  v17 = specialized PromptEnvelope.init(sealing:xpcData:)(v13, a2);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v9 + 8))(v15, v8);
  v24 = (a2 + *(a5(0) + 20));
  v25 = v24[1];

  v26 = v24[2];

  v27 = v24[3];

  *v24 = v17;
  v24[1] = v19;
  v24[2] = v21;
  v24[3] = v23;
  return result;
}

uint64_t CompletePromptRequest.prompt.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for Prompt();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = specialized PromptEnvelope.init(sealing:xpcData:)(v10, v2);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v6 + 8))(a1, v5);
  v18 = (v2 + *(a2(0) + 20));
  v19 = v18[1];

  v20 = v18[2];

  v21 = v18[3];

  *v18 = v11;
  v18[1] = v13;
  v18[2] = v15;
  v18[3] = v17;
  return result;
}

uint64_t (*ClassifyPromptRequest.tgPrompt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Prompt();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v5[5] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[6] = v12;
  v14 = *(type metadata accessor for ClassifyPromptRequest(0) + 20);
  *(v5 + 20) = v14;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  v5[7] = v17;
  v18 = v15[2];
  v5[8] = v18;
  v19 = v15[3];
  v5[9] = v19;
  v20 = type metadata accessor for XPCDictionary();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, v1, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  PromptEnvelope.unseal(_:)(v8, v16, v17, v18, v19, v13);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return ClassifyPromptRequest.tgPrompt.modify;
}

void CompletePromptRequest.prompt.modify(int **a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 3) + 16);
  v4(*(*a1 + 5), v3[6], v3[2]);
  v28 = v3[8];
  v29 = v3[9];
  v5 = v3[6];
  v27 = v3[7];
  v6 = v3[5];
  v7 = *v3;
  v30 = v3[1];
  v8 = (*v3 + *(v3 + 20));
  v10 = v3[2];
  v9 = v3[3];
  if (a2)
  {
    v11 = v3[4];
    v4(v11, v6, v3[2]);
    v12 = specialized PromptEnvelope.init(sealing:xpcData:)(v11, v7);
    v24 = v14;
    v25 = v13;
    v16 = v15;
    v17 = *(v9 + 1);
    v17(v6, v10);

    *v8 = v12;
    v8[1] = v25;
    v8[2] = v24;
    v8[3] = v16;
    v17(v5, v10);
  }

  else
  {
    v11 = v3[4];
    v18 = specialized PromptEnvelope.init(sealing:xpcData:)(v6, v7);
    v20 = v19;
    v22 = v21;
    v26 = v23;
    (*(v9 + 1))(v5, v10);

    *v8 = v18;
    v8[1] = v20;
    v8[2] = v22;
    v8[3] = v26;
  }

  free(v5);
  free(v6);
  free(v11);
  free(v30);

  free(v3);
}

uint64_t key path setter for CountTokensRequest.promptVariant : CountTokensRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for PromptVariantEnvelope(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptVariant();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  v20 = *(v13 + 16);
  v20(&v23 - v18, a1, v12);
  v20(v17, v19, v12);
  PromptVariantEnvelope.init(sealing:xpcData:)(v17, a2, v11);
  (*(v13 + 8))(v19, v12);
  v21 = a5(0);
  return outlined assign with take of PromptVariantEnvelope(v11, a2 + *(v21 + 24), type metadata accessor for PromptVariantEnvelope);
}

uint64_t CountTokensRequest.promptVariant.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for PromptVariant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PromptVariantEnvelope(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v12);
  PromptVariantEnvelope.init(sealing:xpcData:)(v9, v2, v14);
  (*(v6 + 8))(a1, v5);
  v15 = a2(0);
  return outlined assign with take of PromptVariantEnvelope(v14, v2 + *(v15 + 24), type metadata accessor for PromptVariantEnvelope);
}

uint64_t (*ClassifyPromptRequest.prompt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for PromptVariantEnvelope(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[2] = v9;
  v11 = type metadata accessor for PromptVariant();
  v5[3] = v11;
  v12 = *(v11 - 8);
  v5[4] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v12 + 64));
    v5[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[7] = v14;
  *(v5 + 16) = *(type metadata accessor for ClassifyPromptRequest(0) + 24);
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v1, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  PromptVariantEnvelope.unseal(_:)(v10, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptRequest.promptVariant.modify;
}

void CountTokensRequest.promptVariant.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 32) + 16);
  v4(*(*a1 + 48), *(v3 + 56), *(v3 + 24));
  v5 = *(v3 + 48);
  v13 = *(v3 + 64);
  v14 = *(v3 + 56);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 24);
  v15 = *(v3 + 16);
  v10 = *v3;
  v9 = *(v3 + 8);
  if (a2)
  {
    v4(v7, v5, v8);
    PromptVariantEnvelope.init(sealing:xpcData:)(v7, v10, v9);
    v11 = *(v6 + 8);
    v11(v5, v8);
    outlined assign with take of PromptVariantEnvelope(v9, v10 + v13, type metadata accessor for PromptVariantEnvelope);
    v12 = v14;
    v11(v14, v8);
  }

  else
  {
    PromptVariantEnvelope.init(sealing:xpcData:)(v5, *v3, *(v3 + 8));
    v12 = v14;
    (*(v6 + 8))(v14, v8);
    outlined assign with take of PromptVariantEnvelope(v9, v10 + v13, type metadata accessor for PromptVariantEnvelope);
  }

  free(v12);
  free(v5);
  free(v7);
  free(v15);
  free(v9);

  free(v3);
}

uint64_t ClassifyPromptRequest.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClassifyPromptRequest(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t CountTokensPromptTemplateRequest.metadata.getter@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 32));
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v8 = v4[5];
  v10 = v4[6];
  *a2 = *v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v9;
  a2[5] = v8;
  a2[6] = v10;
}

uint64_t ClassifyPromptRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for ClassifyPromptRequest(0);
  v12 = v11[8];
  v29 = v3;
  v13 = (v3 + v12);
  v14 = v13[1];
  v15 = v13[2];
  v16 = v13[3];
  v17 = v13[4];
  v18 = v13[5];
  v19 = v13[6];
  v30 = *v13;
  *&v31 = v14;
  *(&v31 + 1) = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = 0;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

  v20 = v5;

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
  }

  else
  {

    v21 = v11[6];
    LOBYTE(v30) = 1;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    v22 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = (v22 + v11[5]);
    v24 = v23[3];
    v30 = *v23;
    v31 = *(v23 + 1);
    v32 = v24;
    v36 = 2;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = (v22 + v11[7]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v26) = *(v26 + 16);
    v30 = v27;
    *&v31 = v28;
    BYTE8(v31) = v26;
    v36 = 3;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v20);
}

uint64_t ClassifyPromptRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for PromptVariantEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v28 - v10;
  v30 = type metadata accessor for ClassifyPromptRequest(0);
  v12 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v15 = a1[3];
  v16 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    v17 = type metadata accessor for XPCDictionary();
    return (*(*(v17 - 8) + 8))(v14, v17);
  }

  else
  {
    v36 = 0;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = *&v32[16];
    v19 = v33;
    v20 = v35;
    v21 = v30;
    v22 = &v14[*(v30 + 32)];
    *v22 = *v32;
    *(v22 + 2) = v18;
    *(v22 + 3) = v19;
    *(v22 + 2) = v34;
    *(v22 + 6) = v20;
    v32[0] = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v7, &v14[v21[6]], type metadata accessor for PromptVariantEnvelope);
    v36 = 2;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v33;
    v24 = &v14[v21[5]];
    *v24 = *v32;
    *(v24 + 8) = *&v32[8];
    *(v24 + 3) = v23;
    v36 = 3;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v11, v29);
    v25 = v32[16];
    v26 = &v14[v21[7]];
    *v26 = *v32;
    v26[16] = v25;
    outlined init with copy of DocumentResourceEnvelope(v14, v28, type metadata accessor for ClassifyPromptRequest);
    __swift_destroy_boxed_opaque_existential_0(v31);
    return outlined destroy of DocumentResourceEnvelope(v14, type metadata accessor for ClassifyPromptRequest);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptTemplateRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ClassifyPromptTemplateRequest.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74706D6F72705FLL;
  v4 = 0xEB00000000737265;
  v5 = 0x74656D617261705FLL;
  if (*v1 != 2)
  {
    v5 = 0x7461646174656D5FLL;
    v4 = 0xE900000000000061;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001ABA3F3F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  v1 = 0x74706D6F72705FLL;
  v2 = 0x74656D617261705FLL;
  if (*v0 != 2)
  {
    v2 = 0x7461646174656D5FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptTemplateRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifyPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifyPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t key path getter for CompletePromptTemplateRequest.prompt : CompletePromptTemplateRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = (a1 + *(a2(0) + 20));
  v11 = v10[1];
  if (v11)
  {
    v13 = v10[2];
    v12 = v10[3];
    v14 = *v10;
    v15 = type metadata accessor for XPCDictionary();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v9, a1, v15);
    (*(v16 + 56))(v9, 0, 1, v15);
    PromptEnvelope.unseal(_:)(v9, v14, v11, v13, v12, a3);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v17 = type metadata accessor for Prompt();
    return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for Prompt();
    v20 = *(*(v19 - 8) + 56);

    return v20(a3, 1, 1, v19);
  }
}

uint64_t CompletePromptTemplateRequest.prompt.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for Prompt();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v28 - v15, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v6 + 32))(v12, v16, v5);
    (*(v6 + 16))(v10, v12, v5);
    v17 = specialized PromptEnvelope.init(sealing:xpcData:)(v10, v2);
    v18 = v21;
    v19 = v22;
    v20 = v23;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    (*(v6 + 8))(v12, v5);
  }

  v24 = (v2 + *(a2(0) + 20));
  v25 = v24[2];
  v26 = v24[3];
  result = outlined consume of PromptEnvelope?(*v24, v24[1]);
  *v24 = v17;
  v24[1] = v18;
  v24[2] = v19;
  v24[3] = v20;
  return result;
}

uint64_t (*ClassifyPromptTemplateRequest.prompt.modify(void *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for Prompt();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[2] = v6;
  v8 = *(v6 + 64);
  if (v2)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v4[4] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v2)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v4[5] = v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64);
  if (v2)
  {
    v4[6] = swift_coroFrameAlloc();
    v4[7] = swift_coroFrameAlloc();
    v4[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(v13);
    v4[7] = malloc(v13);
    v4[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v4[9] = v14;
  v16 = *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 20);
  *(v4 + 28) = v16;
  v17 = (v1 + v16);
  v18 = *v17;
  v4[10] = *v17;
  v19 = v17[1];
  v4[11] = v19;
  v20 = v17[2];
  v4[12] = v20;
  v21 = v17[3];
  v4[13] = v21;
  if (v19)
  {
    v22 = type metadata accessor for XPCDictionary();
    v27 = v7;
    v23 = v5;
    v24 = *(v22 - 8);
    (*(v24 + 16))(v12, v1, v22);
    (*(v24 + 56))(v12, 0, 1, v22);
    v5 = v23;
    v7 = v27;
    PromptEnvelope.unseal(_:)(v12, v18, v19, v20, v21, v15);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v7 + 56))(v15, v25, 1, v5);
  return ClassifyPromptTemplateRequest.prompt.modify;
}

void CompletePromptTemplateRequest.prompt.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  if (a2)
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[1];
    v7 = v2[2];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, v4, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v5, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = v2[12];
    v11 = v2[10];
    v10 = v2[11];
    v12 = v2[7];
    if (v8 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2[7], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v11, v10);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v30 = v2[3];
      v29 = v2[4];
      v58 = v2[12];
      v60 = v2[13];
      v31 = v2[1];
      v32 = v2[2];
      v33 = *v2;
      (*(v32 + 32))(v29, v2[6], v31);
      (*(v32 + 16))(v30, v29, v31);
      v56 = specialized PromptEnvelope.init(sealing:xpcData:)(v30, v33);
      v35 = v34;
      v15 = v36;
      v16 = v37;
      (*(v32 + 8))(v29, v31);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v11, v10);
      v14 = v35;
      v13 = v56;
    }

    v39 = v2[8];
    v38 = v2[9];
    v41 = v2[6];
    v40 = v2[7];
    v43 = v2[4];
    v42 = v2[5];
    v44 = v2[3];
    v45 = (*v2 + *(v2 + 28));
    *v45 = v13;
    v45[1] = v14;
    v45[2] = v15;
    v45[3] = v16;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v17 = v2[8];
    v18 = v2[1];
    v19 = v2[2];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, v17, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v20 = (*(v19 + 48))(v17, 1, v18);
    v21 = v2[12];
    v23 = v2[10];
    v22 = v2[11];
    v24 = v2[9];
    if (v20 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2[9], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v23, v22);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v47 = v2[3];
      v46 = v2[4];
      v59 = v2[12];
      v61 = v2[13];
      v48 = v2[1];
      v49 = v2[2];
      v50 = *v2;
      (*(v49 + 32))(v46, v2[8], v48);
      (*(v49 + 16))(v47, v46, v48);
      v57 = specialized PromptEnvelope.init(sealing:xpcData:)(v47, v50);
      v52 = v51;
      v27 = v53;
      v28 = v54;
      (*(v49 + 8))(v46, v48);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v23, v22);
      v26 = v52;
      v25 = v57;
    }

    v39 = v2[8];
    v38 = v2[9];
    v41 = v2[6];
    v40 = v2[7];
    v43 = v2[4];
    v42 = v2[5];
    v44 = v2[3];
    v55 = (*v2 + *(v2 + 28));
    *v55 = v25;
    v55[1] = v26;
    v55[2] = v27;
    v55[3] = v28;
  }

  free(v38);
  free(v39);
  free(v40);
  free(v41);
  free(v42);
  free(v43);
  free(v44);

  free(v2);
}

uint64_t CountTokensPromptTemplateRequest.promptVariant.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = a1(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + *(v13 + 24), v12, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v14 = type metadata accessor for PromptVariantEnvelope(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    v15 = 1;
  }

  else
  {
    v16 = type metadata accessor for XPCDictionary();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v8, v2, v16);
    (*(v17 + 56))(v8, 0, 1, v16);
    PromptVariantEnvelope.unseal(_:)(v8, a2);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for PromptVariantEnvelope);
    v15 = 0;
  }

  v18 = type metadata accessor for PromptVariant();
  return (*(*(v18 - 8) + 56))(a2, v15, 1, v18);
}

uint64_t key path setter for CompletePromptTemplateRequest.prompt : CompletePromptTemplateRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v16 - v13;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t ClassifyPromptTemplateRequest.promptVariant.setter(uint64_t a1)
{
  v3 = type metadata accessor for PromptVariant();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - v17;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v14, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v19 = 1;
  }

  else
  {
    (*(v4 + 32))(v10, v14, v3);
    (*(v4 + 16))(v8, v10, v3);
    PromptVariantEnvelope.init(sealing:xpcData:)(v8, v1, v18);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*(v4 + 8))(v10, v3);
    v19 = 0;
  }

  v20 = type metadata accessor for PromptVariantEnvelope(0);
  (*(*(v20 - 8) + 56))(v18, v19, 1, v20);
  v21 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v18, v1 + *(v21 + 24), &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
}

void (*ClassifyPromptTemplateRequest.promptVariant.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for PromptVariant();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[5] = v12;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR) - 8) + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v16 = v15;
  v5[7] = v15;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64);
  if (v3)
  {
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v5[8] = malloc(v17);
    v5[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v5[10] = v18;
  v20 = *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 24);
  *(v5 + 26) = v20;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + v20, v16, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v21 = type metadata accessor for PromptVariantEnvelope(0);
  v5[11] = v21;
  v22 = *(v21 - 8);
  v5[12] = v22;
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    v23 = 1;
  }

  else
  {
    v24 = type metadata accessor for XPCDictionary();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v13, v1, v24);
    (*(v25 + 56))(v13, 0, 1, v24);
    PromptVariantEnvelope.unseal(_:)(v13, v19);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    outlined destroy of DocumentResourceEnvelope(v16, type metadata accessor for PromptVariantEnvelope);
    v23 = 0;
  }

  (*(v8 + 56))(v19, v23, 1, v6);
  return ClassifyPromptTemplateRequest.promptVariant.modify;
}

void ClassifyPromptTemplateRequest.promptVariant.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v6 = v2[7];
    v5 = v2[8];
    v8 = v2[5];
    v7 = v2[6];
    v25 = v2[3];
    v26 = v2[4];
    v9 = *v2;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v5, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    ClassifyPromptTemplateRequest.promptVariant.setter(v5);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v10 = v2[1];
    v11 = v2[2];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?((*a1)[10], v3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v12 = 1;
    if ((*(v11 + 48))(v3, 1, v10) != 1)
    {
      v13 = v2[6];
      v15 = v2[3];
      v14 = v2[4];
      v16 = v2[1];
      v17 = v2[2];
      v18 = *v2;
      (*(v17 + 32))(v14, v2[9], v16);
      (*(v17 + 16))(v15, v14, v16);
      PromptVariantEnvelope.init(sealing:xpcData:)(v15, v18, v13);
      (*(v17 + 8))(v14, v16);
      v12 = 0;
    }

    v19 = v2[12];
    v23 = v2[11];
    v24 = *(v2 + 26);
    v3 = v2[9];
    v4 = v2[10];
    v6 = v2[7];
    v5 = v2[8];
    v20 = v2[5];
    v7 = v2[6];
    v25 = v2[3];
    v26 = v2[4];
    v21 = *v2;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*(v19 + 56))(v7, v12, 1, v23);
    v22 = v21 + v24;
    v8 = v20;
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v7, v22, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  free(v4);
  free(v3);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v26);
  free(v25);

  free(v2);
}

uint64_t key path getter for CompletePromptTemplateRequest.promptTemplateInfo : CompletePromptTemplateRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24[-v14];
  v16 = (a1 + *(a4(0) + 28));
  v17 = type metadata accessor for XPCDictionary();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15, a1, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  v20 = v16[1];
  v19 = v16[2];
  v21 = *v16;
  v25 = v15;

  specialized _NativeDictionary.mapValues<A>(_:)(a5, v24, v21);
  v22 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16 + *(v22 + 24), v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t key path setter for CompletePromptTemplateRequest.promptTemplateInfo : CompletePromptTemplateRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[0] = a5;
  v7 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PromptTemplateInfo();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v28 - v18;
  v20 = v13[2];
  v20(v28 - v18, a1, v12);
  v20(v17, v19, v12);
  v11[1] = PromptTemplateInfo.templateID.getter();
  v11[2] = v21;
  v22 = PromptTemplateInfo.richVariableBindings.getter();
  v23 = specialized _NativeDictionary.mapValues<A>(_:)(v22, a2);

  *v11 = v23;
  v24 = v11 + *(v8 + 32);
  PromptTemplateInfo.locale.getter();
  v25 = v13[1];
  v25(v17, v12);
  v25(v19, v12);
  v26 = (v28[0])(0);
  return outlined assign with take of PromptVariantEnvelope(v11, a2 + *(v26 + 28), type metadata accessor for PromptTemplateInfoEnvelope);
}

uint64_t CompletePromptTemplateRequest.promptTemplateInfo.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v6 = type metadata accessor for PromptTemplateInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, a1, v6, v14);
  v16[1] = PromptTemplateInfo.templateID.getter();
  v16[2] = v17;
  v18 = PromptTemplateInfo.richVariableBindings.getter();
  v19 = specialized _NativeDictionary.mapValues<A>(_:)(v18, v4);

  *v16 = v19;
  v20 = v16 + *(v12 + 32);
  PromptTemplateInfo.locale.getter();
  v21 = *(v7 + 8);
  v21(a1, v6);
  v21(v10, v6);
  v22 = a2(0);
  return outlined assign with take of PromptVariantEnvelope(v16, v4 + *(v22 + 28), type metadata accessor for PromptTemplateInfoEnvelope);
}

uint64_t (*ClassifyPromptTemplateRequest.promptTemplateInfo.modify(void *a1))()
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v6[1] = v7;
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v6[2] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64);
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  v11 = v10;
  v6[3] = v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v4)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[4] = v13;
  v15 = type metadata accessor for PromptTemplateInfo();
  v6[5] = v15;
  v16 = *(v15 - 8);
  v6[6] = v16;
  v17 = *(v16 + 64);
  v28[4] = a1;
  if (v4)
  {
    v6[7] = swift_coroFrameAlloc();
    v6[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v6[7] = malloc(v17);
    v6[8] = malloc(v17);
    v18 = malloc(v17);
  }

  v6[9] = v18;
  v19 = *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 28);
  *(v6 + 22) = v19;
  v20 = (v2 + v19);
  v21 = type metadata accessor for XPCDictionary();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v14, v2, v21);
  v23 = (*(v22 + 56))(v14, 0, 1, v21);
  v25 = v20[1];
  v24 = v20[2];
  v26 = *v20;
  MEMORY[0x1EEE9AC00](v23);
  v28[2] = v14;

  specialized _NativeDictionary.mapValues<A>(_:)(closure #1 in PromptTemplateInfoEnvelope.unseal(_:)partial apply, v28, v26);
  v6[10] = 0;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20 + *(v7 + 24), v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return ClassifyPromptTemplateRequest.promptTemplateInfo.modify;
}

void CompletePromptTemplateRequest.promptTemplateInfo.modify(int **a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 6) + 16);
  v4(*(*a1 + 8), *(v3 + 9), *(v3 + 5));
  v5 = *(v3 + 10);
  v25 = v3[22];
  v26 = *(v3 + 9);
  v6 = *(v3 + 7);
  v7 = *(v3 + 5);
  v8 = *(v3 + 6);
  v27 = *(v3 + 4);
  v28 = *(v3 + 3);
  v9 = *(v3 + 2);
  v24 = *(v3 + 1);
  v10 = *v3;
  if (a2)
  {
    v11 = *(v3 + 8);
    v4(v6, v11, v7);
    v12 = v11;
    v9[1] = PromptTemplateInfo.templateID.getter();
    v9[2] = v13;
    v14 = PromptTemplateInfo.richVariableBindings.getter();
    v15 = specialized _NativeDictionary.mapValues<A>(_:)(v14, v10);

    *v9 = v15;
    v16 = v9 + *(v24 + 24);
    PromptTemplateInfo.locale.getter();
    v17 = *(v8 + 8);
    v17(v6, v7);
    v17(v11, v7);
    outlined assign with take of PromptVariantEnvelope(v9, v10 + v25, type metadata accessor for PromptTemplateInfoEnvelope);
    v18 = v26;
    v17(v26, v7);
  }

  else
  {
    v12 = *(v3 + 8);
    v9[1] = PromptTemplateInfo.templateID.getter();
    v9[2] = v19;
    v20 = PromptTemplateInfo.richVariableBindings.getter();
    v21 = specialized _NativeDictionary.mapValues<A>(_:)(v20, v10);

    *v9 = v21;
    v22 = v9 + *(v24 + 24);
    PromptTemplateInfo.locale.getter();
    v23 = *(v8 + 8);
    v23(v12, v7);
    v18 = v26;
    v23(v26, v7);
    outlined assign with take of PromptVariantEnvelope(v9, v10 + v25, type metadata accessor for PromptTemplateInfoEnvelope);
  }

  free(v18);
  free(v12);
  free(v6);
  free(v27);
  free(v28);
  free(v9);

  free(v3);
}

uint64_t ClassifyPromptTemplateRequest.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ClassifyPromptTemplateRequest.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;
}

uint64_t ClassifyPromptTemplateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v12 = (v3 + v11[5]);
  v13 = v12[1];
  v26 = *v12;
  v27 = v13;
  v31 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v11[7];
    LOBYTE(v26) = 1;
    type metadata accessor for PromptTemplateInfoEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v15) = *(v15 + 16);
    *&v26 = v16;
    *(&v26 + 1) = v17;
    LOBYTE(v27) = v15;
    v31 = 2;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v18 = (v3 + v11[9]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    v24 = v18[6];
    *&v26 = *v18;
    *(&v26 + 1) = v19;
    *&v27 = v20;
    *(&v27 + 1) = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ClassifyPromptTemplateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - v10;
  v12 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v41 = v12;
  v16 = *(v12 + 24);
  v17 = type metadata accessor for PromptVariantEnvelope(0);
  v18 = *(*(v17 - 8) + 56);
  v40 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v20 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v42);
    v23 = type metadata accessor for XPCDictionary();
    (*(*(v23 - 8) + 8))(v15, v23);
    outlined consume of PromptEnvelope?(0, 0);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v15[v40], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  else
  {
    v21 = v38;
    v48 = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    v22 = v39;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v41;
    v25 = &v15[v41[5]];
    v26 = *(&v43 + 1);
    v27 = v44;
    v28 = v45;
    v36[2] = *(&v43 + 1);
    v36[3] = v43;
    *v25 = v43;
    *(v25 + 1) = v26;
    v36[1] = v27;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    LOBYTE(v43) = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v7, &v15[v24[7]], type metadata accessor for PromptTemplateInfoEnvelope);
    v48 = 2;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v44;
    v30 = &v15[v24[8]];
    *v30 = v43;
    v30[16] = v29;
    v48 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v11, v22);
    v31 = v44;
    v32 = v45;
    v33 = v47;
    v34 = &v15[v24[9]];
    *v34 = v43;
    *(v34 + 2) = v31;
    *(v34 + 3) = v32;
    *(v34 + 2) = v46;
    *(v34 + 6) = v33;
    outlined init with copy of DocumentResourceEnvelope(v15, v37, type metadata accessor for ClassifyPromptTemplateRequest);
    __swift_destroy_boxed_opaque_existential_0(v42);
    return outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for ClassifyPromptTemplateRequest);
  }
}

uint64_t protocol witness for XPCRevivable.xpcData.getter in conformance CompileAdapterRequest@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for XPCDictionary();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassifyPromptResponse.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassifyPromptResponse.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptResponse.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptResponse.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptResponse.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptResponse.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifyPromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifyPromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationResponseEnvelope.unseal(_:)@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Rendering.Source();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v31 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = v1[3];

  ModelInformationEnvelope.unseal()(v9, v11, v12, v36);
  v35 = v36[1];
  v33 = v36[0];
  v34 = v36[2];
  if (v1[6])
  {
    v32 = v8;
    v13 = v1[16];
    v14 = v1[17];
    v15 = v1[15];
    v31[2] = v1[14];
    v31[3] = v15;
    v16 = v1[12];
    v17 = v1[13];
    v31[5] = v13;
    v31[6] = v16;
    v18 = v1[10];
    v31[0] = v1[11];
    v31[1] = v17;
    v31[4] = v18;
    v20 = v1[8];
    v19 = v1[9];
    v21 = v1[7];
    v22 = v10;
    v23 = v1[5];

    v10 = v22;
    Prompt.Rendering.Source.init(identifier:version:)();

    v8 = v32;
    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    v24 = type metadata accessor for Prompt.Rendering();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  }

  else
  {
    v24 = type metadata accessor for Prompt.Rendering();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  }

  v25 = *(v1 + 32);
  v26 = type metadata accessor for ClassificationResponse();
  v27 = *(v26 + 24);
  type metadata accessor for Prompt.Rendering();
  (*(*(v24 - 8) + 56))(&a1[v27], 1, 1, v24);
  v28 = v33;
  *a1 = v10;
  *(a1 + 1) = v28;
  v29 = v34;
  *(a1 + 2) = v35;
  *(a1 + 3) = v29;
  a1[*(v26 + 28)] = v25;
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v8, &a1[v27], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
}

__n128 ClassifyPromptResponse.init(response:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ClassificationResponse();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  XPCDictionary.init()();
  outlined init with copy of DocumentResourceEnvelope(a1, v7, type metadata accessor for ClassificationResponse);
  specialized ClassificationResponseEnvelope.init(sealing:xpcData:)(v7, v13);
  outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ClassificationResponse);
  v8 = a2 + *(type metadata accessor for ClassifyPromptResponse(0) + 20);
  v9 = v13[7];
  *(v8 + 96) = v13[6];
  *(v8 + 112) = v9;
  *(v8 + 128) = v13[8];
  v10 = v13[3];
  *(v8 + 32) = v13[2];
  *(v8 + 48) = v10;
  v11 = v13[5];
  *(v8 + 64) = v13[4];
  *(v8 + 80) = v11;
  result = v13[1];
  *v8 = v13[0];
  *(v8 + 16) = result;
  return result;
}

uint64_t ClassifyPromptResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (v2 + *(type metadata accessor for ClassifyPromptResponse(0) + 20));
  v11 = v10[5];
  v12 = v10[7];
  v35 = v10[6];
  v36 = v12;
  v13 = v10[7];
  v37 = v10[8];
  v14 = v10[1];
  v15 = v10[3];
  v31 = v10[2];
  v32 = v15;
  v16 = v10[3];
  v17 = v10[5];
  v33 = v10[4];
  v34 = v17;
  v18 = v10[1];
  v30[0] = *v10;
  v30[1] = v18;
  v27 = v35;
  v28 = v13;
  v29 = v10[8];
  v23 = v31;
  v24 = v16;
  v25 = v33;
  v26 = v11;
  v21 = v30[0];
  v22 = v14;
  outlined init with copy of ClassificationResponseEnvelope(v30, v20);
  lazy protocol witness table accessor for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v20[6] = v27;
  v20[7] = v28;
  v20[8] = v29;
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v26;
  v20[0] = v21;
  v20[1] = v22;
  outlined destroy of ClassificationResponseEnvelope(v20);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ClassifyPromptResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ClassifyPromptResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v14 = type metadata accessor for XPCDictionary();
    return (*(*(v14 - 8) + 8))(v11, v14);
  }

  else
  {
    v13 = v22;
    lazy protocol witness table accessor for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v32 + 8))(v7, v4);
    v15 = &v11[*(v8 + 20)];
    v16 = v30;
    *(v15 + 6) = v29;
    *(v15 + 7) = v16;
    *(v15 + 8) = v31;
    v17 = v26;
    *(v15 + 2) = v25;
    *(v15 + 3) = v17;
    v18 = v28;
    *(v15 + 4) = v27;
    *(v15 + 5) = v18;
    v19 = v24;
    *v15 = v23;
    *(v15 + 1) = v19;
    outlined init with copy of DocumentResourceEnvelope(v11, v13, type metadata accessor for ClassifyPromptResponse);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for ClassifyPromptResponse);
  }
}

uint64_t FunctionDescription.init(name:usageDescription:argumentsSchema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for FunctionDescription(0) + 24);
  v9 = type metadata accessor for Schema();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t ToolDescription.toolType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[1] = a1;
  v3 = type metadata accessor for FunctionDescription(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FileGenerationParameters();
  v28[0] = *(v7 - 8);
  v8 = *(v28[0] + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImageGenerationParameters();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ToolType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v19, type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v27 = v28[0];
      (*(v28[0] + 32))(v10, v19, v7);
      static ToolType.fileGenerationTool(parameters:)();
      return (*(v27 + 8))(v10, v7);
    }

    else
    {
      (*(v12 + 32))(v15, v19, v11);
      static ToolType.imageGenerationTool(parameters:)();
      return (*(v12 + 8))(v15, v11);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined init with take of DocumentRegistrationEnvelope(v19, v6, type metadata accessor for FunctionDescription);
    v22 = *v6;
    v23 = v6[1];
    v24 = v6[2];
    v25 = v6[3];
    v26 = v6 + *(v3 + 24);
    static ToolType.function(name:description:parameters:)();
    return outlined destroy of DocumentResourceEnvelope(v6, type metadata accessor for FunctionDescription);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return static ToolType.browser.getter();
  }

  else
  {
    return static ToolType.imageGenerator.getter();
  }
}

uint64_t static FunctionDescription.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for FunctionDescription(0) + 24);

  return static Schema.== infix(_:_:)();
}

uint64_t ToolDescription.hash(into:)(uint64_t a1)
{
  v26[1] = a1;
  v26[0] = type metadata accessor for FunctionDescription(0);
  v2 = *(*(v26[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v26[0]);
  v4 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FileGenerationParameters();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImageGenerationParameters();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ToolType(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v1, v18, type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v9, v18, v5);
      MEMORY[0x1AC5A6570](3);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(v11 + 32))(v14, v18, v10);
      MEMORY[0x1AC5A6570](2);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v11 + 8))(v14, v10);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined init with take of DocumentRegistrationEnvelope(v18, v4, type metadata accessor for FunctionDescription);
    MEMORY[0x1AC5A6570](4);
    v20 = *v4;
    v21 = v4[1];
    String.hash(into:)();
    v22 = v4[2];
    v23 = v4[3];
    String.hash(into:)();
    v24 = *(v26[0] + 24);
    type metadata accessor for Schema();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
    dispatch thunk of Hashable.hash(into:)();
    return outlined destroy of DocumentResourceEnvelope(v4, type metadata accessor for FunctionDescription);
  }

  else
  {
    return MEMORY[0x1AC5A6570](EnumCaseMultiPayload != 3);
  }
}

Swift::Int ToolDescription.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolDescription(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolDescription(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t FunctionDescription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FunctionDescription.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FunctionDescription.usageDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FunctionDescription.usageDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FunctionDescription.argumentsSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FunctionDescription(0) + 24);
  v4 = type metadata accessor for Schema();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FunctionDescription.argumentsSchema.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FunctionDescription(0) + 24);
  v4 = type metadata accessor for Schema();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FunctionDescription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = *(type metadata accessor for FunctionDescription(0) + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int FunctionDescription.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = *(type metadata accessor for FunctionDescription(0) + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FunctionDescription(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  v5 = v1[2];
  v6 = v1[3];
  String.hash(into:)();
  v7 = *(a1 + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FunctionDescription(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  v8 = *(a2 + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionDescription(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  v8 = *(a2 + 24);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FunctionDescription(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return static Schema.== infix(_:_:)();
}

uint64_t CompletePromptResponse.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PromptCompletion(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseVSgMd, &_s9PromptKit17InferenceResponseVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34[-v13];
  v15 = type metadata accessor for CompletePromptResponse(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + *(v15 + 20), v10, &_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  v16 = type metadata accessor for InferenceResponseEnvelope();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
    v18 = type metadata accessor for InferenceResponse();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v14, 1, 1, v18);
    v20 = v1[7];
    v21 = v1[9];
    v53 = v1[8];
    v54 = v21;
    v22 = v1[9];
    v55 = v1[10];
    v23 = v1[3];
    v24 = v1[5];
    v49 = v1[4];
    v50 = v24;
    v25 = v1[5];
    v26 = v1[7];
    v51 = v1[6];
    v52 = v26;
    v27 = v1[1];
    v46[0] = *v1;
    v46[1] = v27;
    v28 = v1[3];
    v30 = *v1;
    v29 = v1[1];
    v47 = v1[2];
    v48 = v28;
    v43 = v53;
    v44 = v22;
    v45 = v1[10];
    v39 = v49;
    v40 = v25;
    v41 = v51;
    v42 = v20;
    v35 = v30;
    v36 = v29;
    v37 = v47;
    v38 = v23;
    outlined init with copy of PromptCompletionEnvelope(v46, v34);
    PromptCompletionEnvelope.unseal()(v6);
    v56[8] = v43;
    v56[9] = v44;
    v56[10] = v45;
    v56[4] = v39;
    v56[5] = v40;
    v56[6] = v41;
    v56[7] = v42;
    v56[0] = v35;
    v56[1] = v36;
    v56[2] = v37;
    v56[3] = v38;
    outlined destroy of PromptCompletionEnvelope(v56);
    InferenceResponse.init(_:)(v6, a1);
    result = (*(v19 + 48))(v14, 1, v18);
    if (result != 1)
    {
      return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s9PromptKit17InferenceResponseVSgMd, &_s9PromptKit17InferenceResponseVSgMR);
    }
  }

  else
  {
    InferenceResponseEnvelope.unseal()();
    (*(v17 + 8))(v10, v16);
    v32 = type metadata accessor for InferenceResponse();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v14, 0, 1, v32);
    return (*(v33 + 32))(a1, v14, v32);
  }

  return result;
}

__n128 CompletePromptResponse.init(response:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptCompletion(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for InferenceResponse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  v14 = *(v9 + 16);
  v14(v12, a1, v8);
  InferenceResponseEnvelope.init(sealing:)();
  v15 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v15 - 8) + 56))(a2 + v13, 0, 1, v15);
  v14(v12, a1, v8);
  PromptCompletion.init(_:)(v12, v7);
  v16 = PromptCompletionEnvelope.init(sealing:)(v7, v22);
  (*(v9 + 8))(a1, v8, v16);
  v17 = v22[9];
  *(a2 + 128) = v22[8];
  *(a2 + 144) = v17;
  *(a2 + 160) = v22[10];
  v18 = v22[5];
  *(a2 + 64) = v22[4];
  *(a2 + 80) = v18;
  v19 = v22[7];
  *(a2 + 96) = v22[6];
  *(a2 + 112) = v19;
  v20 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v20;
  result = v22[3];
  *(a2 + 32) = v22[2];
  *(a2 + 48) = result;
  return result;
}

double PromptCompletionEnvelope.init(sealing:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  *&v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - v12;
  v14 = a1[1];
  v15 = a1[2];
  *&v67 = *a1;
  *(&v67 + 1) = v14;
  *&v68 = v15;

  v16 = specialized ModelInformationEnvelope.init(sealing:)(&v67);
  v17 = a1[3];
  v63 = v18;
  v62 = v19;
  *&v61 = v13;
  if (v17)
  {
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v17);
    if (*(v20 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
      v21 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC8];
    }

    *&v67 = v21;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v20, 1, &v67);
    v22 = v67;
  }

  else
  {
    v22 = 0;
  }

  v23 = a1[5];
  v60 = a1[6];
  v59 = v23;
  v24 = a1[4];
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v51 = v22;
    v52 = v16;
    *&v54 = v5;
    *&v55 = v4;
    *&v56 = a1;
    *&v57 = a2;
    v64 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v64;
    v27 = (v24 + 80);
    do
    {
      v28 = *(v27 - 5);
      v29 = *(v27 - 4);
      v30 = *(v27 - 3);
      v32 = *(v27 - 2);
      v31 = *(v27 - 1);
      v33 = *v27;
      *&v67 = *(v27 - 6);
      *(&v67 + 1) = v28;
      *&v68 = v29;
      *(&v68 + 1) = v30;
      *&v69 = v32;
      *(&v69 + 1) = v31;
      *&v70 = v33;

      outlined copy of FinishReason(v30, v32);
      outlined copy of Data._Representation(v31, v33);
      specialized PromptCompletionEnvelope.CandidateEnvelope.init(sealing:)(&v67, v65);
      v64 = v26;
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v26 = v64;
      }

      v27 += 7;
      *(v26 + 16) = v35 + 1;
      v36 = v26 + 56 * v35;
      v37 = v65[0];
      v38 = v65[1];
      v39 = v65[2];
      *(v36 + 80) = v66;
      *(v36 + 48) = v38;
      *(v36 + 64) = v39;
      *(v36 + 32) = v37;
      --v25;
    }

    while (v25);
    a2 = v57;
    a1 = v56;
    v4 = v55;
    v5 = v54;
    v16 = v52;
    v22 = v51;
  }

  v40 = type metadata accessor for PromptCompletion(0);
  v41 = v61;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v40 + 36), v61, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v5 + 48))(v41, 1, v4) == 1)
  {
    v42 = 0;
    v61 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
  }

  else
  {
    v43 = v53;
    (*(v5 + 32))(v53, v41, v4);
    v44 = v58;
    (*(v5 + 16))(v58, v43, v4);
    specialized PromptRenderingEnvelope.init(sealing:)(v44, &v67);
    v58 = v68;
    v61 = v67;
    v56 = v70;
    v57 = v69;
    v54 = v72;
    v55 = v71;
    v42 = v73;
    (*(v5 + 8))(v43, v4);
  }

  v45 = a1[7];
  v46 = a1[8];
  outlined copy of Data._Representation(v45, v46);
  outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for PromptCompletion);
  v47 = v63;
  *a2 = v16;
  *(a2 + 8) = v47;
  *(a2 + 16) = v62;
  *(a2 + 24) = v22;
  v48 = v60;
  *(a2 + 32) = v59;
  *(a2 + 40) = v48;
  *(a2 + 48) = v26;
  *(a2 + 56) = v45;
  *(a2 + 64) = v46;
  *(a2 + 88) = v58;
  *(a2 + 72) = v61;
  *(a2 + 120) = v56;
  *(a2 + 104) = v57;
  *(a2 + 152) = v54;
  result = *&v55;
  *(a2 + 136) = v55;
  *(a2 + 168) = v42;
  return result;
}

__n128 CompletePromptResponse.init(completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptCompletion(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for InferenceResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  outlined init with copy of DocumentResourceEnvelope(a1, v7, type metadata accessor for PromptCompletion);
  InferenceResponse.init(_:)(v7, v11);
  InferenceResponseEnvelope.init(sealing:)();
  v13 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v13 - 8) + 56))(a2 + v12, 0, 1, v13);
  outlined init with copy of DocumentResourceEnvelope(a1, v7, type metadata accessor for PromptCompletion);
  PromptCompletionEnvelope.init(sealing:)(v7, v19);
  outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for PromptCompletion);
  v14 = v19[9];
  *(a2 + 128) = v19[8];
  *(a2 + 144) = v14;
  *(a2 + 160) = v19[10];
  v15 = v19[5];
  *(a2 + 64) = v19[4];
  *(a2 + 80) = v15;
  v16 = v19[7];
  *(a2 + 96) = v19[6];
  *(a2 + 112) = v16;
  v17 = v19[1];
  *a2 = v19[0];
  *(a2 + 16) = v17;
  result = v19[3];
  *(a2 + 32) = v19[2];
  *(a2 + 48) = result;
  return result;
}

__n128 CompletePromptResponse.init(tokens:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v100 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for InferenceResponse();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v87 - v8;
  v88 = type metadata accessor for PromptCompletion(0);
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v91 = (&v87 - v13);
  *&v97 = type metadata accessor for Token();
  v14 = *(v97 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.inference);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1AB828000, v19, v20, "Metadata like usage and finish reason will be bogus because a deprecated initializer is being used. Use init(completion:) instead.", v21, 2u);
    MEMORY[0x1AC5A6CD0](v21, -1, -1);
  }

  v93 = v9;

  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v98 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v24 = v98;
    v26 = *(v14 + 16);
    v25 = v14 + 16;
    v95 = v26;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v87 = a1;
    v28 = a1 + v27;
    v94 = *(v25 + 56);
    v96 = v25;
    v29 = (v25 - 8);
    do
    {
      v30 = v97;
      v95(v17, v28, v97);
      v31 = Token.text.getter();
      v33 = v32;
      (*v29)(v17, v30);
      v98 = v24;
      v35 = v24[2];
      v34 = v24[3];
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v24 = v98;
      }

      v24[2] = v35 + 1;
      v36 = &v24[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
      v28 += v94;
      --v22;
    }

    while (v22);

    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v98 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v37 = BidirectionalCollection<>.joined(separator:)();
  v39 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMR);
  v40 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  v97 = xmmword_1ABA1D930;
  *(v43 + 16) = xmmword_1ABA1D930;
  v44 = v43 + v42;
  *v44 = v37;
  *(v44 + 8) = v39;
  *(v44 + 16) = v23;
  *(v44 + 24) = xmmword_1ABA1D8C0;
  type metadata accessor for PromptCompletion.Content(0);
  swift_storeEnumTagMultiPayload();

  outlined copy of Data?(0, 0xF000000000000000);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v23);
  v45 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v98 = 0;
  v47 = [v45 dataWithJSONObject:isa options:0 error:&v98];

  v48 = v98;
  if (!v47)
  {
    v56 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
    goto LABEL_17;
  }

  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMR);
  v52 = swift_allocObject();
  *(v52 + 16) = v97;
  v53 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v54 = Dictionary._bridgeToObjectiveC()().super.isa;
  v98 = 0;
  v55 = [v45 dataWithJSONObject:v54 options:0 error:&v98];

  v56 = v98;
  if (!v55)
  {
LABEL_17:
    v85 = v56;
    _convertNSErrorToError(_:)();

    v67 = swift_willThrow();
    __break(1u);
LABEL_18:
    v86 = v67;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v96 = v39;
  v57 = v98;

  v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  *(v52 + 32) = 0;
  *(v52 + 40) = 0xE000000000000000;
  *(v52 + 48) = xmmword_1ABA2BBC0;
  *(v52 + 64) = v58;
  *(v52 + 72) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR);
  v61 = swift_allocObject();
  *(v61 + 16) = v97;
  *(v61 + 32) = v43;
  *(v61 + 40) = v53;
  *(v61 + 48) = 0;
  *(v61 + 56) = 0;
  *(v61 + 64) = 0;
  *(v61 + 72) = v49;
  *(v61 + 80) = v51;

  outlined copy of FinishReason(0, 0);
  *&v97 = v49;
  v95 = v51;
  outlined copy of Data._Representation(v49, v51);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v53);
  v62 = type metadata accessor for Prompt.Rendering();
  v63 = *(*(v62 - 8) + 56);
  v94 = v43;
  v64 = v93;
  v63(v93, 1, 1, v62);
  v65 = Dictionary._bridgeToObjectiveC()().super.isa;
  v98 = 0;
  v66 = [v45 dataWithJSONObject:v65 options:0 error:&v98];

  v67 = v98;
  if (!v66)
  {
    goto LABEL_18;
  }

  v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v71 = v91;
  v91[3] = 0;
  v72 = *(v88 + 36);
  v63(v71 + v72, 1, 1, v62);
  v71[1] = 0;
  v71[2] = 0;
  *v71 = v52;
  v73 = v71[3];

  v71[3] = 0;
  v71[4] = v61;
  v71[5] = 0;
  v71[6] = 0;
  v71[7] = v68;
  v71[8] = v70;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v64, v71 + v72, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v74 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  v75 = v89;
  outlined init with copy of DocumentResourceEnvelope(v71, v89, type metadata accessor for PromptCompletion);
  InferenceResponse.init(_:)(v75, v90);
  v76 = v92;
  InferenceResponseEnvelope.init(sealing:)();
  v77 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v77 - 8) + 56))(v76 + v74, 0, 1, v77);
  outlined init with copy of DocumentResourceEnvelope(v71, v75, type metadata accessor for PromptCompletion);
  PromptCompletionEnvelope.init(sealing:)(v75, v99);

  outlined consume of FinishReason(0, 0);
  outlined consume of Data._Representation(v97, v95);

  outlined consume of Data?(0, 0xF000000000000000);
  outlined destroy of DocumentResourceEnvelope(v71, type metadata accessor for PromptCompletion);
  v78 = v99[9];
  *(v76 + 128) = v99[8];
  *(v76 + 144) = v78;
  *(v76 + 160) = v99[10];
  v79 = v99[5];
  *(v76 + 64) = v99[4];
  *(v76 + 80) = v79;
  v80 = v99[7];
  *(v76 + 96) = v99[6];
  *(v76 + 112) = v80;
  v82 = v99[1];
  v81 = v99[2];
  *v76 = v99[0];
  *(v76 + 16) = v82;
  result = v99[3];
  *(v76 + 32) = v81;
  *(v76 + 48) = result;
  v84 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 CompletePromptResponse.init(toolCalls:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for InferenceResponse();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v53 - v9;
  v56 = type metadata accessor for PromptCompletion(0);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v59 = v10;
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.inference);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1AB828000, v17, v18, "Metadata like usage and finish reason will be bogus because a deprecated initializer is being used. Use init(completion:) instead.", v19, 2u);
    MEMORY[0x1AC5A6CD0](v19, -1, -1);
  }

  v20 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v21 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v60[0] = 0;
  v23 = [v21 dataWithJSONObject:isa options:0 error:v60];

  v24 = *&v60[0];
  if (!v23)
  {
    v51 = v24;
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
LABEL_9:
    v52 = v34;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1ABA1D930;
  *(v28 + 32) = v20;
  *(v28 + 40) = a1;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  *(v28 + 64) = 0;
  *(v28 + 72) = v25;
  *(v28 + 80) = v27;

  outlined copy of FinishReason(0, 0);
  v55 = v25;
  v54 = v27;
  outlined copy of Data._Representation(v25, v27);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v20);
  v29 = type metadata accessor for Prompt.Rendering();
  v30 = *(v29 - 8);
  v53 = a1;
  v31 = *(v30 + 56);
  v31(v59, 1, 1, v29);
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v60[0] = 0;
  v33 = [v21 dataWithJSONObject:v32 options:0 error:v60];

  v34 = *&v60[0];
  if (!v33)
  {
    goto LABEL_9;
  }

  v35 = *&v60[0];

  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(v15 + 3) = 0;
  v39 = *(v56 + 36);
  v31(&v15[v39], 1, 1, v29);
  *(v15 + 2) = 0;
  *v15 = MEMORY[0x1E69E7CC0];
  *(v15 + 1) = 0;
  v40 = *(v15 + 3);

  *(v15 + 3) = 0;
  *(v15 + 4) = v28;
  *(v15 + 5) = 0;
  *(v15 + 6) = 0;
  *(v15 + 7) = v36;
  *(v15 + 8) = v38;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v59, &v15[v39], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v41 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  v42 = v57;
  outlined init with copy of DocumentResourceEnvelope(v15, v57, type metadata accessor for PromptCompletion);
  InferenceResponse.init(_:)(v42, v58);
  InferenceResponseEnvelope.init(sealing:)();
  v43 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v43 - 8) + 56))(a2 + v41, 0, 1, v43);
  outlined init with copy of DocumentResourceEnvelope(v15, v42, type metadata accessor for PromptCompletion);
  PromptCompletionEnvelope.init(sealing:)(v42, v60);

  outlined consume of FinishReason(0, 0);
  outlined consume of Data._Representation(v55, v54);
  outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for PromptCompletion);
  v44 = v60[9];
  *(a2 + 128) = v60[8];
  *(a2 + 144) = v44;
  *(a2 + 160) = v60[10];
  v45 = v60[5];
  *(a2 + 64) = v60[4];
  *(a2 + 80) = v45;
  v46 = v60[7];
  *(a2 + 96) = v60[6];
  *(a2 + 112) = v46;
  v48 = v60[1];
  v47 = v60[2];
  *a2 = v60[0];
  *(a2 + 16) = v48;
  result = v60[3];
  *(a2 + 32) = v47;
  *(a2 + 48) = result;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void *CompletePromptResponse.tokens.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PromptCompletion.Content(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for Token();
  v62 = *(v59 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptCompletion.Segment(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptCompletion(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.inference);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v58 = v19;
    v60 = swift_slowAlloc();
    *&v65[0] = v60;
    *v19 = 136315138;
    *&v64[0] = type metadata accessor for CompletePromptResponse(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22CompletePromptResponseVmMd, &_s15TokenGeneration22CompletePromptResponseVmMR);
    v20 = String.init<A>(describing:)();
    v22 = v15;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v65);

    v24 = v58;
    *(v58 + 1) = v23;
    v15 = v22;
    _os_log_impl(&dword_1AB828000, v17, v18, "Accessing tokens on %s is deprecated.", v24, 0xCu);
    v25 = v60;
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x1AC5A6CD0](v25, -1, -1);
    MEMORY[0x1AC5A6CD0](v24, -1, -1);
  }

  v26 = v1[9];
  v64[8] = v1[8];
  v64[9] = v26;
  v64[10] = v1[10];
  v27 = v1[5];
  v64[4] = v1[4];
  v64[5] = v27;
  v28 = v1[7];
  v64[6] = v1[6];
  v64[7] = v28;
  v29 = v1[1];
  v64[0] = *v1;
  v64[1] = v29;
  v30 = v1[3];
  v64[2] = v1[2];
  v64[3] = v30;
  outlined init with copy of PromptCompletionEnvelope(v64, v65);
  PromptCompletionEnvelope.unseal()(v15);
  v31 = v1[9];
  v65[8] = v1[8];
  v65[9] = v31;
  v65[10] = v1[10];
  v32 = v1[5];
  v65[4] = v1[4];
  v65[5] = v32;
  v33 = v1[7];
  v65[6] = v1[6];
  v65[7] = v33;
  v34 = v1[1];
  v65[0] = *v1;
  v65[1] = v34;
  v35 = v1[3];
  v65[2] = v1[2];
  v65[3] = v35;
  outlined destroy of PromptCompletionEnvelope(v65);
  v36 = *(v15 + 4);

  outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for PromptCompletion);
  if (!v36[2])
  {
    goto LABEL_17;
  }

  v58 = v9;
  v60 = v2;
  v37 = v36[4];
  v38 = v36[5];
  v39 = v36[6];
  v40 = v36[7];
  v42 = v36[8];
  v41 = v36[9];
  v43 = v36[10];

  outlined copy of FinishReason(v40, v42);
  outlined copy of Data._Representation(v41, v43);

  outlined consume of FinishReason(v40, v42);
  outlined consume of Data._Representation(v41, v43);
  v57[0] = v37;
  v44 = *(v37 + 16);
  if (v44)
  {
    v45 = v57[0] + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v46 = *(v58 + 9);
    v47 = v61;
    v57[1] = v62 + 32;
    v48 = MEMORY[0x1E69E7CC0];
    v58 = v46;
    do
    {
      outlined init with copy of DocumentResourceEnvelope(v45, v47, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of DocumentResourceEnvelope(v47, v5, type metadata accessor for PromptCompletion.Content);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of DocumentResourceEnvelope(v47, type metadata accessor for PromptCompletion.Segment);
        outlined destroy of DocumentResourceEnvelope(v5, type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v49 = *v5;
        v50 = v5[1];
        v51 = v5[2];
        v52 = v5[3];
        v53 = v5[4];

        Token.init(text:)();
        v47 = v61;

        outlined consume of Data?(v52, v53);
        outlined destroy of DocumentResourceEnvelope(v47, type metadata accessor for PromptCompletion.Segment);
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
        (*(v62 + 32))(v48 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v55, v63, v59);
        v46 = v58;
      }

      v45 += v46;
      --v44;
    }

    while (v44);
  }

  else
  {
LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t CompletePromptResponse.toolCalls.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PromptCompletion(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.inference);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v34[0] = v10;
    *v9 = 136315138;
    *&v33[0] = type metadata accessor for CompletePromptResponse(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22CompletePromptResponseVmMd, &_s15TokenGeneration22CompletePromptResponseVmMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v34);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AB828000, v7, v8, "Accessing tool calls on %s is deprecated.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1AC5A6CD0](v10, -1, -1);
    MEMORY[0x1AC5A6CD0](v9, -1, -1);
  }

  v14 = v1[9];
  v33[8] = v1[8];
  v33[9] = v14;
  v33[10] = v1[10];
  v15 = v1[5];
  v33[4] = v1[4];
  v33[5] = v15;
  v16 = v1[7];
  v33[6] = v1[6];
  v33[7] = v16;
  v17 = v1[1];
  v33[0] = *v1;
  v33[1] = v17;
  v18 = v1[3];
  v33[2] = v1[2];
  v33[3] = v18;
  outlined init with copy of PromptCompletionEnvelope(v33, v34);
  PromptCompletionEnvelope.unseal()(v5);
  v19 = v1[9];
  v34[8] = v1[8];
  v34[9] = v19;
  v34[10] = v1[10];
  v20 = v1[5];
  v34[4] = v1[4];
  v34[5] = v20;
  v21 = v1[7];
  v34[6] = v1[6];
  v34[7] = v21;
  v22 = v1[1];
  v34[0] = *v1;
  v34[1] = v22;
  v23 = v1[3];
  v34[2] = v1[2];
  v34[3] = v23;
  outlined destroy of PromptCompletionEnvelope(v34);
  v24 = *(v5 + 4);

  outlined destroy of DocumentResourceEnvelope(v5, type metadata accessor for PromptCompletion);
  if (v24[2])
  {
    v26 = v24[4];
    v25 = v24[5];
    v27 = v24[6];
    v28 = v24[7];
    v29 = v24[8];
    v30 = v24[9];
    v31 = v24[10];

    outlined copy of FinishReason(v28, v29);
    outlined copy of Data._Representation(v30, v31);

    outlined consume of FinishReason(v28, v29);
    outlined consume of Data._Representation(v30, v31);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v25;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CompletePromptResponse.CodingKeys()
{
  if (*v0)
  {
    result = 0x736E6F707365725FLL;
  }

  else
  {
    result = 0x74656C706D6F635FLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74656C706D6F635FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F707365725FLL && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompletePromptResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[8];
  v11 = v3[6];
  v44 = v3[7];
  v45 = v10;
  v12 = v3[8];
  v13 = v3[10];
  v46 = v3[9];
  v47 = v13;
  v14 = v3[4];
  v15 = v3[2];
  v40 = v3[3];
  v41 = v14;
  v16 = v3[4];
  v17 = v3[6];
  v42 = v3[5];
  v43 = v17;
  v18 = *v3;
  v19 = v3[2];
  v38 = v3[1];
  v39 = v19;
  v20 = *v3;
  v34 = v12;
  v35 = v46;
  v36 = v3[10];
  v37 = v20;
  v30 = v16;
  v31 = v42;
  v32 = v11;
  v33 = v44;
  v26 = v18;
  v27 = v38;
  v28 = v15;
  v29 = v40;
  v25 = 0;
  outlined init with copy of PromptCompletionEnvelope(&v37, v24);
  lazy protocol witness table accessor for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v24[8] = v34;
  v24[9] = v35;
  v24[10] = v36;
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[7] = v33;
  v24[0] = v26;
  v24[1] = v27;
  v24[2] = v28;
  v24[3] = v29;
  outlined destroy of PromptCompletionEnvelope(v24);
  if (!v2)
  {
    v21 = *(type metadata accessor for CompletePromptResponse(0) + 20);
    v23[15] = 1;
    type metadata accessor for InferenceResponseEnvelope();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type InferenceResponseEnvelope and conformance InferenceResponseEnvelope, MEMORY[0x1E69C6508]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v48 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.init(sealing:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PromptCompletionEvent(a1, v5);
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v5, a2);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t CompletePromptResponseElement.token.getter()
{
  PromptCompletionStreamElementEnvelope.Envelope.unseal()(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v9 = v3;
    v10 = v4;
    v0 = v6;
    v11 = v5;
    v14 = v7;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v9 = 0u;
    v10 = 0u;
    v14 = 0uLL;
    v11 = 0;
  }

  v12 = v0;
  v13 = v1;
  Token.init(text:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v9, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptResponseElement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6576655FLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompletePromptResponseElement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope and conformance PromptCompletionStreamElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CompletePromptResponseElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CompletePromptResponseElement(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope and conformance PromptCompletionStreamElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for PromptCompletionStreamElementEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for CompletePromptResponseElement);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CompletePromptResponseElement(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope and conformance PromptCompletionStreamElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t FetchModelMetadataRequest.metadata.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchModelMetadataRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461646174656D5FLL && a2 == 0xE900000000000061)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchTokenizerMetadataRequest.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchTokenizerMetadataRequest.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadata);
}

uint64_t FetchModelMetadataRequest.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v31 = *(v23 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v18 - v8;
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[3];
  v19 = v5[2];
  v20 = v10;
  v13 = v5[5];
  v18 = v5[4];
  v14 = v5[6];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = v20;
  v25 = v11;
  v26 = v19;
  v27 = v12;
  v28 = v18;
  v29 = v13;
  v30 = v14;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
  v16 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v31 + 8))(v9, v16);
}

uint64_t FetchModelMetadataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v13 = v19;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v25 + 8))(v11, v8);
    v14 = v21;
    v15 = v22;
    v16 = v24;
    v17 = v23;
    *v13 = v20;
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v17;
    *(v13 + 48) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 FetchTokenizerMetadataResponse.imageTokenizationRecommendations.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 FetchTokenizerMetadataResponse.imageTokenizationRecommendations.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

__n128 FetchTokenizerMetadataResponse.init(imageTokenizationRecommendations:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchTokenizerMetadataResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001ABA41800 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchTokenizerMetadataResponse.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchTokenizerMetadataResponse.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadata);
}

uint64_t FetchTokenizerMetadataResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  *v11 = *v1;
  v8 = *(v1 + 16);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v11[3] = *v11;
  v11[5] = v8;
  lazy protocol witness table accessor for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FetchTokenizerMetadataResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Constraints.CodingKeys()
{
  v1 = *v0;
  v2 = 0x616D65686373;
  v3 = 0x476C616974726170;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72616D6D617267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Constraints.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Constraints.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.GrammarIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.GrammarIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.PartialGrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.PartialGrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.SchemaIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.SchemaIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Constraints.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  v18 = type metadata accessor for GenerationSchema();
  v69 = *(v18 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Constraints(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v76 = *(v78 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v28 = &v59 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();
  v77 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v75, v25, type metadata accessor for Constraints);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v21;
    v38 = v72;
    v39 = v73;
    v40 = v17;
    v42 = v69;
    v41 = v70;
    v43 = v74;
    v44 = v71;
    if (EnumCaseMultiPayload)
    {
      v57 = *v25;
      v56 = v25[1];
      v80 = 1;
      lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();
      v58 = v38;
      v31 = v78;
      v35 = v77;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v39 + 8))(v58, v43);
      return (*(v76 + 8))(v35, v31);
    }

    v45 = v37;
    (*(v69 + 32))(v37, v25, v18);
    v79 = 0;
    lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();
    v46 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v41 + 8))(v40, v44);
    (*(v42 + 8))(v45, v18);
    v31 = v78;
    return (*(v76 + 8))(v46, v31);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v48 = *v25;
    v47 = v25[1];
    v81 = 2;
    lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();
    v49 = v60;
    v31 = v78;
    v35 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v50 = v62;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v61 + 8))(v49, v50);
    return (*(v76 + 8))(v35, v31);
  }

  v31 = v78;
  if (EnumCaseMultiPayload != 3)
  {
    v52 = *v25;
    v51 = v25[1];
    v83 = 4;
    lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();
    v53 = v66;
    v46 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v68;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v67 + 8))(v53, v54);
    return (*(v76 + 8))(v46, v31);
  }

  v33 = *v25;
  v32 = v25[1];
  v82 = 3;
  lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();
  v34 = v63;
  v35 = v77;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v36 = v65;
  KeyedEncodingContainer.encode(_:forKey:)();

  (*(v64 + 8))(v34, v36);
  return (*(v76 + 8))(v35, v31);
}

uint64_t Constraints.hash(into:)()
{
  v1 = type metadata accessor for GenerationSchema();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Constraints(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v0, v9, type metadata accessor for Constraints);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1AC5A6570](0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v2 + 8))(v5, v1);
    }

    v17 = *v9;
    v18 = v9[1];
    v13 = 1;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v15 = *v9;
    v16 = v9[1];
    v13 = 2;
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    if (EnumCaseMultiPayload == 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }
  }

  MEMORY[0x1AC5A6570](v13);
  String.hash(into:)();
}

uint64_t Constraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  v101 = v3;
  v102 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v87 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v98 = *(v94 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v110 = &v87 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v96 = *(v97 - 8);
  v12 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v109 = &v87 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v93 = *(v95 - 8);
  v14 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v103 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v107 = *(v16 - 8);
  v108 = v16;
  v17 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v87 - v18;
  v106 = type metadata accessor for Constraints(0);
  v20 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v92 = (&v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v87 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v87 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v87 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();
  v39 = v113;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_0(v112);
  }

  v88 = v30;
  v89 = v27;
  v90 = v24;
  v113 = v33;
  v41 = v109;
  v40 = v110;
  v42 = v111;
  v91 = v36;
  v43 = v107;
  v44 = v108;
  v45 = KeyedDecodingContainer.allKeys.getter();
  v46 = (2 * *(v45 + 16)) | 1;
  v114 = v45;
  v115 = v45 + 32;
  v116 = 0;
  v117 = v46;
  v47 = specialized Collection<>.popFirst()();
  if (v47 == 5 || v116 != v117 >> 1)
  {
    v53 = type metadata accessor for DecodingError();
    swift_allocError();
    v55 = v54;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v55 = v106;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    (*(v43 + 8))(v19, v44);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v112);
  }

  if (v47 > 1u)
  {
    v48 = v91;
    if (v47 != 2)
    {
      if (v47 == 3)
      {
        v118 = 3;
        lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();
        v49 = v104;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = v48;
        v51 = v100;
        v52 = KeyedDecodingContainer.decode(_:forKey:)();
        v71 = v51;
        v72 = v52;
        v74 = v73;
        (*(v99 + 8))(v49, v71);
        (*(v43 + 8))(v19, v44);
        swift_unknownObjectRelease();
        v75 = v90;
        *v90 = v72;
        v75[1] = v74;
        swift_storeEnumTagMultiPayload();
        v76 = v75;
        v77 = v112;
        v78 = v105;
        v79 = v50;
      }

      else
      {
        v79 = v91;
        v118 = 4;
        lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v60 = v101;
        v80 = KeyedDecodingContainer.decode(_:forKey:)();
        v82 = v81;
        (*(v102 + 8))(v42, v60);
        (*(v43 + 8))(v19, v44);
        swift_unknownObjectRelease();
        v83 = v92;
        *v92 = v80;
        v83[1] = v82;
        swift_storeEnumTagMultiPayload();
        v76 = v83;
        v77 = v112;
        v78 = v105;
      }

      goto LABEL_16;
    }

    v118 = 2;
    lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v94;
    v67 = KeyedDecodingContainer.decode(_:forKey:)();
    v69 = v68;
    (*(v98 + 8))(v40, v59);
    (*(v43 + 8))(v19, v44);
    swift_unknownObjectRelease();
    v70 = v89;
    *v89 = v67;
    v70[1] = v69;
    swift_storeEnumTagMultiPayload();
    v76 = v70;
    v77 = v112;
    v78 = v105;
    goto LABEL_15;
  }

  v78 = v105;
  if (v47)
  {
    v118 = 1;
    lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v64 = v97;
    v65 = KeyedDecodingContainer.decode(_:forKey:)();
    v113 = v66;
    v84 = v65;
    (*(v96 + 8))(v41, v64);
    (*(v43 + 8))(v19, v44);
    swift_unknownObjectRelease();
    v85 = v88;
    v86 = v113;
    *v88 = v84;
    v85[1] = v86;
    swift_storeEnumTagMultiPayload();
    v76 = v85;
    v77 = v112;
LABEL_15:
    v79 = v91;
    goto LABEL_16;
  }

  v118 = 0;
  lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();
  v58 = v103;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for GenerationSchema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
  v61 = v113;
  v62 = v58;
  v63 = v95;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v93 + 8))(v62, v63);
  (*(v43 + 8))(v19, v44);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v77 = v112;
  v79 = v91;
  v76 = v61;
LABEL_16:
  outlined init with take of DocumentRegistrationEnvelope(v76, v79, type metadata accessor for Constraints);
  outlined init with take of DocumentRegistrationEnvelope(v79, v78, type metadata accessor for Constraints);
  return __swift_destroy_boxed_opaque_existential_0(v77);
}

uint64_t RequestMetadata.invocationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RequestMetadata.invocationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RequestMetadata.functionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RequestMetadata.functionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RequestMetadata.clientRequestIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RequestMetadata.clientRequestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RequestMetadata.userInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t RequestMetadata.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  String.hash(into:)();
  String.hash(into:)();
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return specialized Dictionary<>.hash(into:)(a1, v9);
}

Swift::Int RequestMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(v9, v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RequestMetadata(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  String.hash(into:)();
  String.hash(into:)();
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return specialized Dictionary<>.hash(into:)(a1, v9);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestMetadata()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(v9, v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionEnvelope.CandidateEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionEnvelope.SegmentEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMR);
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v47 - v4;
  v54 = type metadata accessor for FileContentEnvelope(0);
  v5 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMR);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMR);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMR);
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v60 = *(v22 - 8);
  v61 = v22;
  v23 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v47 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v59, v21, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = *v21;
      v35 = v21[1];
      LOBYTE(v62) = 2;
      lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();
      v36 = v51;
      v37 = v61;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v34;
      v63 = v35;
      lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope();
      v38 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v52 + 8))(v36, v38);
      (*(v60 + 8))(v25, v37);
      return outlined consume of Data._Representation(v34, v35);
    }

    else
    {
      v43 = v55;
      outlined init with take of DocumentRegistrationEnvelope(v21, v55, type metadata accessor for FileContentEnvelope);
      LOBYTE(v62) = 3;
      lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();
      v44 = v56;
      v45 = v61;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope);
      v46 = v58;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v57 + 8))(v44, v46);
      outlined destroy of DocumentResourceEnvelope(v43, type metadata accessor for FileContentEnvelope);
      return (*(v60 + 8))(v25, v45);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = *v21;
    v40 = v21[1];
    LOBYTE(v62) = 1;
    lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();
    v41 = v61;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = v39;
    v63 = v40;
    lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope();
    v42 = v50;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v49 + 8))(v13, v42);
    (*(v60 + 8))(v25, v41);
    return outlined consume of Data._Representation(v39, v40);
  }

  else
  {
    v28 = v21[1];
    v59 = *v21;
    v30 = v21[2];
    v29 = v21[3];
    v31 = v21[4];
    LOBYTE(v62) = 0;
    lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();
    v32 = v61;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = v59;
    v63 = v28;
    v64 = v30;
    v65 = v29;
    v66 = v31;
    lazy protocol witness table accessor for type TextContentEnvelope and conformance TextContentEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v48 + 8))(v17, v14);
    (*(v60 + 8))(v25, v32);

    return outlined consume of Data?(v29, v31);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v27 = v1[3];
  v28 = v7;
  v10 = v1[4];
  v25 = v1[5];
  v26 = v10;
  v11 = v1[6];
  v23 = *(v1 + 7);
  v24 = v11;
  v12 = *(v1 + 15);
  v13 = *(v1 + 19);
  v44 = *(v1 + 17);
  v45 = v13;
  v46 = v1[21];
  v14 = *(v1 + 11);
  v40 = *(v1 + 9);
  v41 = v14;
  v42 = *(v1 + 13);
  v43 = v12;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v33 = v8;
  *(&v33 + 1) = v28;
  v16 = v6;
  *&v34 = v9;
  LOBYTE(v31[0]) = 0;
  lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
  v17 = v29;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v17)
  {

    return (*(v30 + 8))(v6, v3);
  }

  else
  {
    v19 = v25;
    v20 = v26;
    v21 = v30;

    *&v33 = v27;
    LOBYTE(v31[0]) = 1;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v33 = v20;
    *(&v33 + 1) = v19;
    LOBYTE(v31[0]) = 2;
    lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v33 = v24;
    LOBYTE(v31[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v33 = v23;
    LOBYTE(v31[0]) = 4;
    outlined copy of Data._Representation(v23, *(&v23 + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v33, *(&v33 + 1));
    v37 = v44;
    v38 = v45;
    v39 = v46;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v47 = 5;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v40, v31, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31[4] = v37;
    v31[5] = v38;
    v32 = v39;
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
    return (*(v21 + 8))(v16, v3);
  }
}

uint64_t TextContentEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v16 = v3[2];
    v15[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type [AnnotationEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 3);
    v17 = v16;
    v15[23] = 2;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v17, v15, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextContentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TextContentEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TextContentEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return TextContentEnvelope.encode(to:)(a1);
}

uint64_t AnnotationEnvelope.CitationTypeEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMR);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v31 - v4;
  v35 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMR);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v32 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMR);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v21 = &v31 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v40, v17, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  v23 = (v18 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v36;
    outlined init with take of DocumentRegistrationEnvelope(v17, v36, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
    v43 = 1;
    lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();
    v25 = v37;
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope and conformance AnnotationEnvelope.DocumentCitationEnvelope, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
    v27 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v25, v27);
    outlined destroy of DocumentResourceEnvelope(v24, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
    return (*v23)(v21, v26);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v17, v13, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
    v42 = 0;
    lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();
    v29 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope and conformance AnnotationEnvelope.URLCitationEnvelope, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
    v30 = v34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v30);
    outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
    return (*v23)(v21, v29);
  }
}

uint64_t AnnotationEnvelope.CitationTypeEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMR);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMR);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMR);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();
  v24 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(v58);
  }

  v46 = v15;
  v47 = v18;
  v26 = v55;
  v25 = v56;
  v48 = 0;
  v45 = v21;
  v57 = v12;
  v27 = v54;
  v28 = KeyedDecodingContainer.allKeys.getter();
  v29 = (2 * *(v28 + 16)) | 1;
  v59 = v28;
  v60 = v28 + 32;
  v61 = 0;
  v62 = v29;
  v30 = specialized Collection<>.popFirst()();
  v31 = v8;
  v32 = v11;
  if (v30 == 2 || v61 != v62 >> 1)
  {
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v39 = v57;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v30 & 1) == 0)
  {
    v63 = 0;
    lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();
    v42 = v48;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v42)
    {
      type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope and conformance AnnotationEnvelope.URLCitationEnvelope, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
      v35 = v47;
      v43 = v52;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v51 + 8))(v26, v43);
      (*(v27 + 8))(v11, v8);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v63 = 1;
  lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();
  v33 = v25;
  v34 = v48;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v34)
  {
LABEL_8:
    (*(v27 + 8))(v32, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v58);
  }

  type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope and conformance AnnotationEnvelope.DocumentCitationEnvelope, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
  v35 = v46;
  v36 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v53 + 8))(v33, v36);
  (*(v27 + 8))(v32, v31);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v44 = v45;
  outlined init with take of DocumentRegistrationEnvelope(v35, v45, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  outlined init with take of DocumentRegistrationEnvelope(v44, v49, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t AnnotationEnvelope.URLCitationEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0) + 20);
    v15[14] = 1;
    type metadata accessor for URL();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AnnotationEnvelope.URLCitationEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for URL();
  v21 = *(v24 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMR);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = v19 - v8;
  v10 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v10;
  v16 = v23;
  v15 = v24;
  v27 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v19[1] = v17;
  v26 = 1;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v25);
  (*(v21 + 32))(v13 + *(v20 + 20), v6, v15);
  outlined init with copy of DocumentResourceEnvelope(v13, v22, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
}

uint64_t AnnotationEnvelope.DocumentCitationEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of DocumentRegistrationEnvelope(v14, v17, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AnnotationEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v14[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(type metadata accessor for AnnotationEnvelope(0) + 20);
    v14[14] = 1;
    type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope and conformance AnnotationEnvelope.CitationTypeEnvelope, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AnnotationEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AnnotationEnvelope(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v21 = v10;
    v15 = v23;
    v27 = 0;
    v16 = v25;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v13;
    *v13 = v17;
    v26 = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope and conformance AnnotationEnvelope.CitationTypeEnvelope, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v9, v16);
    v18 = v20;
    outlined init with take of DocumentRegistrationEnvelope(v6, v20 + *(v21 + 20), type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v18, v22, type metadata accessor for AnnotationEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ImageContentEnvelope.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3;
  outlined copy of Data._Representation(a2, a3);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v18, v19);
  return (*(v10 + 8))(v13, v9);
}

uint64_t FileContentEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20[15] = 0;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for FileContentEnvelope(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v20[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v20[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v11[7]);
    v20[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FileContentEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for URL();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v24 - v8;
  v10 = type metadata accessor for FileContentEnvelope(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v26;
  v33 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v13, v28, v4);
  v32 = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = &v13[v10[5]];
  *v17 = v16;
  v17[1] = v18;
  v31 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v13[v10[6]];
  *v20 = v19;
  v20[1] = v21;
  v30 = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v27 + 8))(v9, v29);
  *&v13[v10[7]] = v22;
  outlined init with copy of DocumentResourceEnvelope(v13, v25, type metadata accessor for FileContentEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for FileContentEnvelope);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x74617469436C7275;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74617469436C7275 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41CE0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41D00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AnnotationEnvelope.DocumentCitationEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnnotationEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageContentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AudioContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AudioContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ImageContentEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, void *a5@<X8>)
{
  result = specialized ImageContentEnvelope.init(from:)(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FileContentEnvelope.CodingKeys()
{
  v1 = 7107189;
  v2 = 0x65707954656D696DLL;
  if (*v0 != 2)
  {
    v2 = 1702521203;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FileContentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized FileContentEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FileContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FileContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelInformationEnvelope.AssetEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope.CodingKeys and conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 2);
    v19 = v18;
    v17[23] = 2;
    outlined init with copy of Data(&v19, v17);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ModelInformationEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMd, &_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMR);
  lazy protocol witness table accessor for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ModelInformationEnvelope.AssetEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope.CodingKeys and conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope.CodingKeys and conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ModelInformationEnvelope.AssetEnvelope@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized ModelInformationEnvelope.AssetEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ModelInformationEnvelope.AssetEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return ModelInformationEnvelope.AssetEnvelope.encode(to:)(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ModelInformationEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x65566D6574737973;
  }

  else
  {
    result = 0x737465737361;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelInformationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelInformationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelInformationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ModelInformationEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ModelInformationEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = type metadata accessor for PromptCompletion.FileContent(0);
  v4 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
  v6 = *(*(v137 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v137);
  v133 = (&v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v136 = &v131 - v9;
  v10 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v140 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for PromptCompletion.URLCitation(0);
  v13 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v15 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for PromptCompletion.Annotation(0);
  v17 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v142 = (&v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  v19 = *(*(v147 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v147);
  v141 = (&v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v131 - v22;
  v23 = type metadata accessor for Prompt.Rendering();
  v148 = *(v23 - 8);
  v24 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PromptCompletionEventRenderedPrompt(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v131 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v131 - v35;
  outlined init with copy of PromptCompletionEvent(a1, v171);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v37 = v149;
    v163 = v150;
    *&v164 = v151;

    v38 = specialized ModelInformationEnvelope.init(sealing:)(&v163);
    v40 = v39;
    v42 = v41;

    __swift_destroy_boxed_opaque_existential_0(a1);
    *a2 = v37;
    *(a2 + 16) = v38;
    *(a2 + 24) = v40;
    *(a2 + 32) = v42;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
LABEL_20:
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_0(v171);
  }

  v132 = a1;
  if (swift_dynamicCast())
  {
    outlined init with take of DocumentRegistrationEnvelope(v36, v34, type metadata accessor for PromptCompletionEventRenderedPrompt);
    outlined init with copy of DocumentResourceEnvelope(v34, v31, type metadata accessor for PromptCompletionEventRenderedPrompt);
    v44 = *v31;
    v43 = *(v31 + 1);
    (*(v148 + 16))(v26, &v31[*(v27 + 20)], v23);

    specialized PromptRenderingEnvelope.init(sealing:)(v26, &v149);
    __swift_destroy_boxed_opaque_existential_0(v132);
    outlined destroy of DocumentResourceEnvelope(v31, type metadata accessor for PromptCompletionEventRenderedPrompt);
    outlined destroy of DocumentResourceEnvelope(v34, type metadata accessor for PromptCompletionEventRenderedPrompt);
    *a2 = v44;
    *(a2 + 8) = v43;
    v45 = v154;
    *(a2 + 80) = v153;
    *(a2 + 96) = v45;
    *(a2 + 112) = v155;
    v46 = v150;
    *(a2 + 16) = v149;
    *(a2 + 32) = v46;
    v47 = v152;
    *(a2 + 48) = v151;
    *(a2 + 64) = v47;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v48 = v149;
    v49 = v150;

    v50 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v49);
    if (*(v50 + 16))
    {
      v51 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
      v52 = static _DictionaryStorage.allocate(capacity:)();
      v50 = v51;
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC8];
    }

    *&v163 = v52;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v50, 1, &v163);
    v66 = v132;

    __swift_destroy_boxed_opaque_existential_0(v66);
    v67 = v163;
    *a2 = v48;
    *(a2 + 16) = v67;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v53 = v149;
    v54 = v150;
    v55 = v151;

    v56 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v55);
    if (*(v56 + 16))
    {
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
      v58 = static _DictionaryStorage.allocate(capacity:)();
      v56 = v57;
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC8];
    }

    *&v163 = v58;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v56, 1, &v163);

    __swift_destroy_boxed_opaque_existential_0(v132);
    v81 = v163;
    *a2 = v53;
    *(a2 + 16) = v54;
    *(a2 + 32) = v81;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v132);
    v59 = v149;
    v60 = v150;
    v148 = *(&v151 + 1);
    v61 = v151;
    v62 = v152;
    v63 = v153;

    outlined copy of Data?(*(&v62 + 1), v63);
    outlined consume of Data?(0, 0xF000000000000000);

    outlined consume of Data?(*(&v62 + 1), v63);
    v157 = v59;
    v158 = v60;
    *&v159 = v61;
    *(&v159 + 1) = v148;
    v160 = v62;
    *&v161 = v63;
    v163 = v59;
    v164 = v60;
    v165 = v61;
    v166 = v148;
    v167 = v62;
    v168 = v63;
    outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(&v157, v156);
    outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(&v163);
    v64 = v160;
    *(a2 + 32) = v159;
    *(a2 + 48) = v64;
    *(a2 + 64) = v161;
    v65 = v158;
    *a2 = v157;
    *(a2 + 16) = v65;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  v68 = v146;
  v69 = v147;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v132);
    v70 = v141;
    outlined init with take of DocumentRegistrationEnvelope(v68, v141, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    v71 = v70[1];
    *a2 = *v70;
    *(a2 + 8) = v71;
    v72 = v70[3];
    *(a2 + 16) = v70[2];
    *(a2 + 24) = v72;
    *(a2 + 32) = v70[4];
    v73 = v70 + *(v69 + 28);
    v74 = v142;
    outlined init with copy of DocumentResourceEnvelope(v73, v142, type metadata accessor for PromptCompletion.Annotation);

    outlined destroy of DocumentResourceEnvelope(v70, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    v75 = (a2 + *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0) + 28));
    *v75 = *v74;
    v76 = v74 + *(v143 + 20);
    v77 = v145;
    outlined init with take of DocumentRegistrationEnvelope(v76, v145, type metadata accessor for PromptCompletion.Annotation.Type);
    LODWORD(v72) = swift_getEnumCaseMultiPayload();
    v78 = v75 + *(type metadata accessor for AnnotationEnvelope(0) + 20);
    if (v72 == 1)
    {
      v79 = v140;
      outlined init with take of DocumentRegistrationEnvelope(v77, v140, type metadata accessor for PromptCompletion.DocumentCitation);
      v80 = type metadata accessor for DocumentResourceIdentifier();
      (*(*(v80 - 8) + 32))(v78, v79, v80);
    }

    else
    {
      v92 = v139;
      outlined init with take of DocumentRegistrationEnvelope(v77, v139, type metadata accessor for PromptCompletion.URLCitation);
      v93 = *(v92 + 1);
      *v78 = *v92;
      *(v78 + 1) = v93;
      v94 = *(v138 + 20);
      v95 = *(type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0) + 20);
      v96 = type metadata accessor for URL();
      (*(*(v96 - 8) + 32))(&v78[v95], &v92[v94], v96);
    }

    type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v132);
    v83 = v149;
    v84 = *(&v150 + 1);
    v85 = *(&v151 + 1);
    v147 = v151;
    v148 = v150;
    v86 = *(&v152 + 1);
    v87 = *(&v153 + 1);
    v145 = v153;
    v146 = v152;
    v88 = v154;

    outlined copy of Data?(v88, *(&v88 + 1));
    outlined consume of Data?(0, 0xF000000000000000);

    outlined consume of Data?(v88, *(&v88 + 1));
    v157 = v83;
    *&v158 = v148;
    *(&v158 + 1) = v84;
    *&v159 = v147;
    *(&v159 + 1) = v85;
    *&v160 = v146;
    *(&v160 + 1) = v86;
    *&v161 = v145;
    *(&v161 + 1) = v87;
    v162 = v88;
    v163 = v83;
    *&v164 = v148;
    *(&v164 + 1) = v84;
    v165 = v147;
    v166 = v85;
    *&v167 = v146;
    *(&v167 + 1) = v86;
    v168 = v145;
    v169 = v87;
    v170 = v88;
    outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(&v157, v156);
    outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(&v163);
    v89 = v160;
    *(a2 + 32) = v159;
    *(a2 + 48) = v89;
    v90 = v162;
    *(a2 + 64) = v161;
    *(a2 + 80) = v90;
    v91 = v158;
    *a2 = v157;
    *(a2 + 16) = v91;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v132);
    v97 = v149;
    v98 = v150;
    v99 = v151;
    v100 = v152;

    outlined copy of Data._Representation(*(&v99 + 1), v100);

    outlined consume of Data._Representation(*(&v99 + 1), v100);
    *a2 = v97;
    *(a2 + 16) = v98;
    *(a2 + 32) = v99;
    *(a2 + 48) = v100;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  v101 = v136;
  v102 = v137;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v132);
    v103 = v133;
    outlined init with take of DocumentRegistrationEnvelope(v101, v133, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v104 = v103[1];
    *a2 = *v103;
    *(a2 + 8) = v104;
    v105 = v103[3];
    *(a2 + 16) = v103[2];
    *(a2 + 24) = v105;
    *(a2 + 32) = v103[4];
    v106 = v135;
    outlined init with copy of DocumentResourceEnvelope(v103 + *(v102 + 28), v135, type metadata accessor for PromptCompletion.FileContent);

    outlined destroy of DocumentResourceEnvelope(v103, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v107 = a2 + *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0) + 28);
    v108 = type metadata accessor for URL();
    (*(*(v108 - 8) + 16))(v107, v106, v108);
    v109 = v134;
    v110 = (v106 + *(v134 + 20));
    v112 = *v110;
    v111 = v110[1];
    v113 = type metadata accessor for FileContentEnvelope(0);
    v114 = (v107 + v113[5]);
    *v114 = v112;
    v114[1] = v111;
    v115 = (v106 + *(v109 + 24));
    v116 = *v115;
    v117 = v115[1];
    v118 = (v107 + v113[6]);
    *v118 = v116;
    v118[1] = v117;
    v119 = *(v106 + *(v109 + 28));

    outlined destroy of DocumentResourceEnvelope(v106, type metadata accessor for PromptCompletion.FileContent);
    *(v107 + v113[7]) = v119;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v120 = *(&v149 + 1);
    v148 = v149;
    v121 = v150;
    v122 = v151;
    v123 = v152;
    if (*(&v151 + 1) >= 3uLL)
    {
      v124 = v151;
    }

    else
    {
      v124 = 0;
    }

    outlined copy of FinishReason(v122, *(&v122 + 1));
    outlined copy of Data._Representation(v123, *(&v123 + 1));

    outlined consume of FinishReason(v122, *(&v122 + 1));
    outlined consume of Data._Representation(v123, *(&v123 + 1));
    __swift_destroy_boxed_opaque_existential_0(v132);
    *a2 = v148;
    *(a2 + 8) = v120;
    *(a2 + 16) = v121;
    *(a2 + 32) = v124;
    *(a2 + 40) = *(&v122 + 1);
    *(a2 + 48) = v123;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v132);
    v125 = *(&v149 + 1);
    *a2 = v149;
    *(a2 + 8) = v125;
    *(a2 + 16) = v150;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  v126 = swift_dynamicCast();
  v127 = v132;
  if (v126)
  {
    __swift_destroy_boxed_opaque_existential_0(v132);
    v128 = v149;
    v129 = v150;

    outlined copy of Data._Representation(v129, *(&v129 + 1));

    outlined consume of Data._Representation(v129, *(&v129 + 1));
    *a2 = v128;
    *(a2 + 16) = v129;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  *&v149 = 0;
  *(&v149 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  *&v149 = 0xD00000000000002FLL;
  *(&v149 + 1) = 0x80000001ABA41A10;
  __swift_project_boxed_opaque_existential_1(v127, v127[3]);
  swift_getDynamicType();
  v130 = _typeName(_:qualified:)();
  MEMORY[0x1AC5A5BC0](v130);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.unseal()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Prompt.Rendering.Source();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v17, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = *(v17 + 5);
      v113 = *(v17 + 4);
      v114 = v76;
      v115 = *(v17 + 6);
      v116 = *(v17 + 14);
      v77 = *(v17 + 1);
      *v110 = *v17;
      *&v110[16] = v77;
      v78 = *(v17 + 3);
      v111 = *(v17 + 2);
      v112 = v78;
      v79 = type metadata accessor for PromptCompletionEventRenderedPrompt(0);
      a1[3] = v79;
      a1[4] = &protocol witness table for PromptCompletionEventRenderedPrompt;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v108 = *&v110[8];
      *&v109 = *v110;
      v107 = *(&v112 + 1);
      v105[1] = v112;
      v106 = *(&v113 + 1);
      v105[2] = v113;
      v105[3] = v114;
      v105[4] = *(&v115 + 1);

      Prompt.Rendering.Source.init(identifier:version:)();
      v81 = *(v79 + 20);

      Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
      result = outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(v110);
      v82 = v108;
      *boxed_opaque_existential_1 = v109;
      boxed_opaque_existential_1[1] = v82;
      break;
    case 2u:
      v62 = *v17;
      v61 = *(v17 + 1);
      v63 = *(v17 + 2);
      a1[3] = &type metadata for PromptCompletionEventPromptModeration;
      a1[4] = &protocol witness table for PromptCompletionEventPromptModeration;

      v64 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(v63);
      if (*(v64 + 16))
      {
        v65 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
        v66 = static _DictionaryStorage.allocate(capacity:)();
        v64 = v65;
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC8];
      }

      *v110 = v66;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v64, 1, v110);

      v104 = *v110;
      *a1 = v62;
      a1[1] = v61;
      a1[2] = v104;
      break;
    case 3u:
      v67 = *(v17 + 1);
      *v110 = *v17;
      *&v110[16] = v67;
      *&v111 = *(v17 + 4);
      a1[3] = &type metadata for PromptCompletionEventCandidateModeration;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateModeration;
      v68 = swift_allocObject();
      *a1 = v68;
      PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.unseal()(v68 + 16);
      v117 = *v110;
      outlined destroy of String(&v117);
      v118 = *&v110[16];
      outlined destroy of String(&v118);
      v119 = v111;
      result = outlined destroy of ModerationEnvelope(&v119);
      break;
    case 4u:
      v29 = *v17;
      v28 = *(v17 + 1);
      v31 = *(v17 + 2);
      v30 = *(v17 + 3);
      v32 = *(v17 + 4);
      *&v109 = *(v17 + 5);
      v34 = *(v17 + 6);
      v33 = *(v17 + 7);
      v35 = *(v17 + 8);
      a1[3] = &type metadata for PromptCompletionEventCandidateTextDelta;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateTextDelta;
      v36 = swift_allocObject();
      *a1 = v36;
      *(v36 + 72) = xmmword_1ABA1D8C0;
      *(v36 + 16) = v29;
      *(v36 + 24) = v28;
      *(v36 + 32) = v31;
      *(v36 + 40) = v30;
      v37 = v109;
      *(v36 + 48) = v32;
      *(v36 + 56) = v37;
      *(v36 + 64) = v34;

      outlined copy of Data?(v33, v35);
      outlined consume of Data?(0, 0xF000000000000000);

      result = outlined consume of Data?(v33, v35);
      *(v36 + 72) = v33;
      *(v36 + 80) = v35;
      break;
    case 5u:
      outlined init with take of DocumentRegistrationEnvelope(v17, v11, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      a1[3] = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
      a1[4] = &protocol witness table for PromptCompletionEventCandidateAnnotation;
      v83 = __swift_allocate_boxed_opaque_existential_1(a1);
      PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.unseal()(v83);
      result = outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      break;
    case 6u:
      v85 = *v17;
      v84 = *(v17 + 1);
      v86 = *(v17 + 3);
      *&v109 = *(v17 + 2);
      v87 = *(v17 + 5);
      v108 = *(v17 + 4);
      v88 = *(v17 + 7);
      v107 = *(v17 + 6);
      v89 = *(v17 + 9);
      v106 = *(v17 + 8);
      v90 = *(v17 + 10);
      v91 = *(v17 + 11);
      a1[3] = &type metadata for PromptCompletionEventCandidateToolCallDelta;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateToolCallDelta;
      v92 = swift_allocObject();
      *a1 = v92;
      *(v92 + 96) = xmmword_1ABA1D8C0;
      *(v92 + 16) = v85;
      *(v92 + 24) = v84;
      *(v92 + 32) = v109;
      *(v92 + 40) = v86;
      *(v92 + 48) = v108;
      *(v92 + 56) = v87;
      *(v92 + 64) = v107;
      *(v92 + 72) = v88;
      *(v92 + 80) = v106;
      *(v92 + 88) = v89;

      outlined copy of Data?(v90, v91);
      outlined consume of Data?(0, 0xF000000000000000);

      result = outlined consume of Data?(v90, v91);
      *(v92 + 96) = v90;
      *(v92 + 104) = v91;
      break;
    case 7u:
      v70 = *v17;
      v69 = *(v17 + 1);
      v72 = *(v17 + 2);
      v71 = *(v17 + 3);
      v74 = *(v17 + 4);
      v73 = *(v17 + 5);
      v75 = *(v17 + 6);
      a1[3] = &type metadata for PromptCompletionEventCandidateImageGeneration;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateImageGeneration;
      goto LABEL_19;
    case 8u:
      v70 = *v17;
      v69 = *(v17 + 1);
      v72 = *(v17 + 2);
      v71 = *(v17 + 3);
      v74 = *(v17 + 4);
      v73 = *(v17 + 5);
      v75 = *(v17 + 6);
      a1[3] = &type metadata for PromptCompletionEventCandidateAudioGeneration;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateAudioGeneration;
LABEL_19:
      v103 = swift_allocObject();
      *a1 = v103;

      outlined copy of Data._Representation(v73, v75);

      result = outlined consume of Data._Representation(v73, v75);
      v103[2] = v70;
      v103[3] = v69;
      v103[4] = v72;
      v103[5] = v71;
      v103[6] = v74;
      v103[7] = v73;
      v103[8] = v75;
      break;
    case 9u:
      outlined init with take of DocumentRegistrationEnvelope(v17, v7, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      v43 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
      a1[3] = v43;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateFileGeneration;
      v44 = __swift_allocate_boxed_opaque_existential_1(a1);
      v45 = v7[1];
      *&v109 = *v7;
      v46 = v7[3];
      v108 = v7[2];
      v107 = v7[4];
      v47 = v7 + *(v4 + 28);
      v48 = v44 + *(v43 + 28);
      v49 = type metadata accessor for URL();
      (*(*(v49 - 8) + 16))(v48, v47, v49);
      v50 = type metadata accessor for FileContentEnvelope(0);
      v51 = v50[6];
      v52 = &v47[v50[5]];
      v54 = *v52;
      v53 = *(v52 + 1);
      v56 = *&v47[v51];
      v55 = *&v47[v51 + 8];
      v57 = *&v47[v50[7]];
      v58 = type metadata accessor for PromptCompletion.FileContent(0);
      v59 = &v48[v58[5]];
      *v59 = v54;
      *(v59 + 1) = v53;
      v60 = &v48[v58[6]];
      *v60 = v56;
      *(v60 + 1) = v55;
      *&v48[v58[7]] = v57;
      *v44 = v109;
      v44[1] = v45;
      v44[2] = v108;
      v44[3] = v46;
      v44[4] = v107;

      result = outlined destroy of DocumentResourceEnvelope(v7, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      break;
    case 0xAu:
      v94 = *v17;
      v93 = *(v17 + 1);
      v96 = *(v17 + 2);
      v95 = *(v17 + 3);
      v98 = *(v17 + 4);
      v97 = *(v17 + 5);
      v100 = *(v17 + 6);
      v99 = *(v17 + 7);
      a1[3] = &type metadata for PromptCompletionEventCandidateFinished;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateFinished;
      v101 = swift_allocObject();
      *a1 = v101;
      if (v97 >= 3)
      {
        v102 = v98;
      }

      else
      {
        v102 = 0;
      }

      outlined copy of FinishReason(v98, v97);
      outlined copy of Data._Representation(v100, v99);

      outlined consume of FinishReason(v98, v97);
      result = outlined consume of Data._Representation(v100, v99);
      v101[2] = v94;
      v101[3] = v93;
      v101[4] = v96;
      v101[5] = v95;
      v101[6] = v102;
      v101[7] = v97;
      v101[8] = v100;
      v101[9] = v99;
      break;
    case 0xBu:
      v109 = *v17;
      v26 = *(v17 + 2);
      v27 = *(v17 + 3);
      a1[3] = &type metadata for PromptCompletionEventUsage;
      a1[4] = &protocol witness table for PromptCompletionEventUsage;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v109;
      *(result + 32) = v26;
      *(result + 40) = v27;
      break;
    case 0xCu:
      v39 = *v17;
      v38 = *(v17 + 1);
      v40 = *(v17 + 2);
      v41 = *(v17 + 3);
      a1[3] = &type metadata for PromptCompletionEventResponseMetadata;
      a1[4] = &protocol witness table for PromptCompletionEventResponseMetadata;
      v42 = swift_allocObject();
      *a1 = v42;

      outlined copy of Data._Representation(v40, v41);

      result = outlined consume of Data._Representation(v40, v41);
      v42[2] = v39;
      v42[3] = v38;
      v42[4] = v40;
      v42[5] = v41;
      break;
    default:
      v19 = *v17;
      v18 = *(v17 + 1);
      v20 = *(v17 + 2);
      v21 = *(v17 + 3);
      v22 = *(v17 + 4);
      a1[3] = &type metadata for PromptCompletionEventModelInformation;
      a1[4] = &protocol witness table for PromptCompletionEventModelInformation;
      v23 = swift_allocObject();
      *a1 = v23;

      ModelInformationEnvelope.unseal()(v20, v21, v22, v110);

      v24 = *v110;
      *(v23 + 16) = v19;
      *(v23 + 24) = v18;
      *(v23 + 32) = v24;
      *(v23 + 40) = *&v110[8];

      break;
  }

  return result;
}