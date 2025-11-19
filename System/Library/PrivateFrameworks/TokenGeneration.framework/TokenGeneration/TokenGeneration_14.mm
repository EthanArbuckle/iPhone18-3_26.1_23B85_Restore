uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t closure #1 in PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.unseal(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.unseal(_:)(a2, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  return PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMd, &_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMR);
  lazy protocol witness table accessor for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void *protocol witness for Decodable.init(from:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t PromptTemplateInfoEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v15[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMd, &_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMR);
  lazy protocol witness table accessor for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B], lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v15[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
    v15[5] = 2;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void PromptTemplateInfoEnvelope.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  specialized Dictionary<>.hash(into:)(a1, *v1);
  v12 = v1[1];
  v13 = v1[2];
  String.hash(into:)();
  v14 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + *(v14 + 24), v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
  }
}

Swift::Int PromptTemplateInfoEnvelope.hashValue.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15[-v8 - 8];
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v15, *v0);
  v10 = v0[1];
  v11 = v0[2];
  String.hash(into:)();
  v12 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + *(v12 + 24), v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  return Hasher._finalize()();
}

uint64_t PromptTemplateInfoEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v12;
  v17 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMd, &_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMR);
  v28 = 0;
  lazy protocol witness table accessor for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B], lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope);
  v18 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v29;
  *v15 = v29;
  v27 = 1;
  v15[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[2] = v19;
  type metadata accessor for Locale();
  v26 = 2;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v11, v18);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v7, v15 + *(v22 + 24), &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of DocumentResourceEnvelope(v15, v23, type metadata accessor for PromptTemplateInfoEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for PromptTemplateInfoEnvelope);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptTemplateInfoEnvelope.CodingKeys()
{
  v1 = 0x6574616C706D6574;
  if (*v0 != 1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptTemplateInfoEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptTemplateInfoEnvelope(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17[-v11 - 8];
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v17, *v2);
  v13 = v2[1];
  v14 = v2[2];
  String.hash(into:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + *(a2 + 24), v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

uint64_t DocumentResourceEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for DocumentResourceEnvelope(0);
    v12 = *(v3 + *(v11 + 20));
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DocumentResourceEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for URL();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for DocumentResourceEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v14;
  v17 = v21;
  v28 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v24, v4);
  v27 = 1;
  *(v16 + *(v11 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v26 = 2;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v25;
  outlined init with copy of DocumentResourceEnvelope(v16, v20, type metadata accessor for DocumentResourceEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v16, type metadata accessor for DocumentResourceEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DocumentResourceEnvelope.CodingKeys()
{
  v1 = 0x63736544656C6966;
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
    return 7107189;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DocumentResourceEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DocumentResourceEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentResourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentResourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DocumentRegistrationStatusEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentRegistration.Progress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v26 - v10;
  v12 = type metadata accessor for DocumentRegistration.InternalStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x1E69A1508])
  {
    (*(v13 + 96))(v16, v12);
    (*(v5 + 32))(v11, v16, v4);
    (*(v5 + 16))(v9, v11, v4);
    DocumentRegistration.Progress.progress.getter();
    v19 = v18;
    v20 = DocumentRegistration.Progress.bytes.getter();
    v21 = DocumentRegistration.Progress.totalBytes.getter();
    (*(v13 + 8))(a1, v12);
    v22 = *(v5 + 8);
    v22(v9, v4);
    v22(v11, v4);
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
    type metadata accessor for DocumentRegistrationStatusEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v17 == *MEMORY[0x1E69A1518])
  {
    (*(v13 + 8))(a1, v12);
    (*(v13 + 96))(v16, v12);
    v23 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v23 - 8) + 32))(a2, v16, v23);
    type metadata accessor for DocumentRegistrationStatusEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v17 == *MEMORY[0x1E69A1510])
  {
    (*(v13 + 8))(a1, v12);
    (*(v13 + 96))(v16, v12);
    v24 = v16[1];
    *a2 = *v16;
    *(a2 + 8) = v24;
    type metadata accessor for DocumentRegistrationStatusEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1AC5A5BC0](0xD000000000000026, 0x80000001ABA419E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DocumentRegistrationEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DocumentRegistrationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DocumentRegistrationEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope and conformance DocumentRegistrationStatusEnvelope, type metadata accessor for DocumentRegistrationStatusEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
    v11[14] = 1;
    type metadata accessor for URL();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t DocumentRegistrationEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = type metadata accessor for URL();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v28 = *(v32 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v25 - v10;
  v12 = type metadata accessor for DocumentRegistrationEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = a1;
  v17 = v15;
  v18 = v28;
  v19 = v29;
  v34 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope and conformance DocumentRegistrationStatusEnvelope, type metadata accessor for DocumentRegistrationStatusEnvelope);
  v20 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of DocumentRegistrationEnvelope(v20, v17, type metadata accessor for DocumentRegistrationStatusEnvelope);
  v33 = 1;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v21 = v6;
  v22 = v19;
  v23 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v11, v23);
  (*(v26 + 32))(v17 + *(v12 + 20), v21, v22);
  outlined init with copy of DocumentResourceEnvelope(v17, v27, type metadata accessor for DocumentRegistrationEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return outlined destroy of DocumentResourceEnvelope(v17, type metadata accessor for DocumentRegistrationEnvelope);
}

uint64_t DocumentRegistrationStatusEnvelope.encode(to:)(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMR);
  v42 = *(v44 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v36 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMR);
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v36 - v5;
  v6 = type metadata accessor for DocumentResourceIdentifier();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v47 = *(v17 - 8);
  v18 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v46, v16, type metadata accessor for DocumentRegistrationStatusEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v40;
      v23 = v41;
      v25 = v37;
      (*(v40 + 32))(v37, v16, v41);
      LOBYTE(v48) = 1;
      lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();
      v26 = v39;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
      v27 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v26, v27);
      (*(v24 + 8))(v25, v23);
    }

    else
    {
      v31 = *v16;
      v32 = v16[1];
      LOBYTE(v48) = 2;
      lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();
      v33 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v44;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v42 + 8))(v33, v34);
    }
  }

  else
  {
    v28 = *v16;
    v29 = v16[1];
    v30 = v16[2];
    LOBYTE(v48) = 0;
    lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v28;
    v49 = v29;
    v50 = v30;
    lazy protocol witness table accessor for type ProgressEnvelope and conformance ProgressEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v36 + 8))(v12, v9);
  }

  return (*(v47 + 8))(v20, v17);
}

uint64_t DocumentRegistrationStatusEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMR);
  v66 = *(v61 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v70 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMR);
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMR);
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v72 = *(v68 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v13 = &v56 - v12;
  v14 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();
  v29 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v57 = v23;
    v58 = v17;
    v59 = v20;
    v30 = v67;
    v31 = v68;
    v33 = v69;
    v32 = v70;
    v73 = v26;
    v60 = v14;
    v34 = v71;
    v35 = KeyedDecodingContainer.allKeys.getter();
    v36 = (2 * *(v35 + 16)) | 1;
    v76 = v35;
    v77 = v35 + 32;
    v78 = 0;
    v79 = v36;
    v37 = specialized Collection<>.popFirst()();
    if (v37 != 3 && v78 == v79 >> 1)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          LOBYTE(v74) = 1;
          lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();
          v38 = v33;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v31;
          type metadata accessor for DocumentResourceIdentifier();
          lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
          v40 = v59;
          v41 = v65;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v42 = v72;
          (*(v64 + 8))(v38, v41);
          (*(v42 + 8))(v13, v39);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v40;
LABEL_12:
          v55 = v73;
          outlined init with take of DocumentRegistrationEnvelope(v51, v73, type metadata accessor for DocumentRegistrationStatusEnvelope);
          outlined init with take of DocumentRegistrationEnvelope(v55, v34, type metadata accessor for DocumentRegistrationStatusEnvelope);
          return __swift_destroy_boxed_opaque_existential_0(v80);
        }

        LOBYTE(v74) = 2;
        lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v48 = v61;
        v52 = KeyedDecodingContainer.decode(_:forKey:)();
        v54 = v53;
        (*(v66 + 8))(v32, v48);
        (*(v72 + 8))(v13, v31);
        swift_unknownObjectRelease();
        v50 = v58;
        *v58 = v52;
        v50[1] = v54;
      }

      else
      {
        LOBYTE(v74) = 0;
        lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type ProgressEnvelope and conformance ProgressEnvelope();
        v49 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v62 + 8))(v30, v49);
        (*(v72 + 8))(v13, v31);
        swift_unknownObjectRelease();
        v50 = v57;
        *v57 = v74;
        *(v50 + 1) = v75;
      }

      swift_storeEnumTagMultiPayload();
      v51 = v50;
      goto LABEL_12;
    }

    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v45 = v60;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v72 + 8))(v13, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v80);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DocumentRegistrationStatusEnvelope.CodingKeys()
{
  v1 = 0x64656873696E6966;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265747369676572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DocumentRegistrationStatusEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DocumentRegistrationStatusEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProgressEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ProgressEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ProgressEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressEnvelope.CodingKeys()
{
  v1 = 0x7365747962;
  if (*v0 != 1)
  {
    v1 = 0x7479426C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736572676F7270;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ProgressEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ProgressEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ProgressEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ProgressEnvelope(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  return ProgressEnvelope.encode(to:)(a1);
}

unint64_t SamplingParametersEnvelope.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7967657461727473;
  switch(a1)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x65506874676E656CLL;
      break;
    case 4:
      result = 0x546D756D6978616DLL;
      break;
    case 5:
      result = 0x75716553706F7473;
      break;
    case 6:
      result = 0x65536D6F646E6172;
      break;
    case 7:
      result = 0x74756F656D6974;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x6165486E656B6F74;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SamplingParametersEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SamplingParametersEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SamplingParametersEnvelope.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = v2[2];
  v41 = *(v2 + 24);
  v35 = v2[4];
  v36 = v11;
  v34 = *(v2 + 40);
  v33 = v2[6];
  LODWORD(v11) = *(v2 + 56);
  v12 = v2[8];
  v31 = *(v2 + 72);
  v32 = v11;
  v13 = v2[11];
  v29 = v2[10];
  v30 = v12;
  v27 = v13;
  v28 = *(v2 + 96);
  v25 = v2[13];
  v26 = *(v2 + 112);
  v23 = v2[15];
  v24 = *(v2 + 128);
  v22 = *(v2 + 129);
  v21 = *(v2 + 130);
  v20 = *(v2 + 131);
  v14 = v2[18];
  v19[0] = v2[17];
  v19[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v38 = v9;
  BYTE8(v38) = v10;
  v42 = 0;
  lazy protocol witness table accessor for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope();
  v16 = v37;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v16)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v37 = v5;
  LOBYTE(v38) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v38 = v29;
  v42 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v38) = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v38) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = *(v2 + 21);
  v38 = *(v2 + 19);
  v39 = v18;
  v40[0] = *(v2 + 23);
  *(v40 + 10) = *(v2 + 194);
  v42 = 13;
  lazy protocol witness table accessor for type SpeculationParameters and conformance SpeculationParameters();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v37 + 8))(v8, v4);
}

uint64_t SamplingParametersEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v113 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v50) = 0;
  lazy protocol witness table accessor for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v60;
  v12 = v61;
  LOBYTE(v60) = 1;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v111 = v13 & 1;
  LOBYTE(v60) = 2;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = v14 & 1;
  LOBYTE(v60) = 3;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = v15 & 1;
  LOBYTE(v60) = 4;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v105 = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  LOBYTE(v50) = 5;
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v60;
  LOBYTE(v60) = 6;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v103 = v17 & 1;
  LOBYTE(v60) = 7;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v18 & 1;
  LOBYTE(v60) = 8;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v99 = v19 & 1;
  LOBYTE(v60) = 9;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v60) = 10;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v60) = 11;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v60) = 12;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v20;
  v92 = 13;
  lazy protocol witness table accessor for type SpeculationParameters and conformance SpeculationParameters();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v8, v113);
  v96 = v93;
  v97 = v94;
  v98[0] = v95[0];
  *(v98 + 10) = *(v95 + 10);
  *&v50 = v11;
  LOBYTE(v10) = v12;
  BYTE8(v50) = v12;
  v21 = v49;
  *&v51 = v49;
  v22 = v111;
  BYTE8(v51) = v111;
  *&v52 = v48;
  v32 = v109;
  BYTE8(v52) = v109;
  *&v53 = v47;
  v33 = v107;
  BYTE8(v53) = v107;
  *&v54 = v46;
  v34 = v105;
  BYTE8(v54) = v105;
  *&v55 = v45;
  *(&v55 + 1) = v44;
  v35 = v103;
  LOBYTE(v56) = v103;
  *(&v56 + 1) = v43;
  v36 = v101;
  LOBYTE(v57) = v101;
  *(&v57 + 1) = v42;
  LODWORD(v113) = v99;
  LOBYTE(v58) = v99;
  BYTE1(v58) = v41;
  BYTE2(v58) = v40;
  BYTE3(v58) = v39;
  *(&v58 + 1) = v37;
  *v59 = v38;
  *&v59[50] = *(v95 + 10);
  *&v59[40] = v95[0];
  *&v59[24] = v94;
  *&v59[8] = v93;
  v23 = v51;
  *a2 = v50;
  *(a2 + 16) = v23;
  v24 = v55;
  *(a2 + 64) = v54;
  *(a2 + 80) = v24;
  v25 = v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = v25;
  *(a2 + 208) = *&v59[64];
  v26 = *&v59[48];
  *(a2 + 176) = *&v59[32];
  *(a2 + 192) = v26;
  v27 = *&v59[16];
  *(a2 + 144) = *v59;
  *(a2 + 160) = v27;
  v28 = v56;
  v29 = v58;
  *(a2 + 112) = v57;
  *(a2 + 128) = v29;
  *(a2 + 96) = v28;
  outlined init with copy of SamplingParametersEnvelope(&v50, &v60);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v91[10] = *(v98 + 10);
  *v91 = v98[0];
  v90 = v97;
  v60 = v11;
  v61 = v10;
  *v62 = v112[0];
  *&v62[3] = *(v112 + 3);
  v63 = v21;
  v64 = v22;
  *v65 = *v110;
  *&v65[3] = *&v110[3];
  v66 = v48;
  v67 = v32;
  *v68 = *v108;
  *&v68[3] = *&v108[3];
  v69 = v47;
  v70 = v33;
  *v71 = *v106;
  *&v71[3] = *&v106[3];
  v72 = v46;
  v73 = v34;
  *v74 = *v104;
  *&v74[3] = *&v104[3];
  v75 = v45;
  v76 = v44;
  v77 = v35;
  *&v78[3] = *&v102[3];
  *v78 = *v102;
  v79 = v43;
  v80 = v36;
  *&v81[3] = *&v100[3];
  *v81 = *v100;
  v82 = v42;
  v83 = v113;
  v84 = v41;
  v85 = v40;
  v86 = v39;
  v87 = v37;
  v88 = v38;
  v89 = v96;
  return outlined destroy of SamplingParametersEnvelope(&v60);
}

uint64_t SamplingStrategyEnvelope.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v32 = a3;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14TopKCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14TopKCodingKeysOGMR);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO07NucleusF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO07NucleusF10CodingKeysOGMR);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO16ArgmaxCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO16ArgmaxCodingKeysOGMR);
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v32)
  {
    v34 = 1;
    lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v27;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v26 + 8))(v10, v23);
    return (*(v16 + 8))(v19, v15);
  }

  if (v32 == 1)
  {
    v35 = 2;
    lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys();
    v21 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v30;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v29 + 8))(v21, v22);
    return (*(v16 + 8))(v19, v15);
  }

  v33 = 0;
  lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v25 + 8))(v14, v11);
  return (*(v16 + 8))(v19, v15);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SamplingStrategyEnvelope.CodingKeys()
{
  v1 = 0x537375656C63756ELL;
  if (*v0 != 1)
  {
    v1 = 1265659764;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x78616D677261;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SamplingStrategyEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SamplingStrategyEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.TopKCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.TopKCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SamplingStrategyEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SamplingStrategyEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t SchemaEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for GenerationSchema();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SchemaEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of DocumentRegistrationEnvelope(v14, v17, type metadata accessor for SchemaEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SchemaEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SchemaEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SchemaEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SchemaEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for GenerationSchema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ToolDescriptionEnvelope.ToolTypeEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Schema();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FunctionDescription(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ToolType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(a1, v19, type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
      v21 = type metadata accessor for FileGenerationParameters();
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
      v21 = type metadata accessor for ImageGenerationParameters();
    }

    (*(*(v21 - 8) + 32))(a2, v19, v21);
    type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of DocumentRegistrationEnvelope(v19, v15, type metadata accessor for FunctionDescription);
      outlined init with copy of DocumentResourceEnvelope(v15, v12, type metadata accessor for FunctionDescription);
      v22 = *(v12 + 1);
      *a2 = *v12;
      a2[1] = v22;
      v23 = *(v12 + 3);
      a2[2] = *(v12 + 2);
      a2[3] = v23;
      (*(v5 + 16))(v8, &v12[*(v9 + 24)], v4);
      v24 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

      Schema.type.getter();
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
      (*(v5 + 8))(v8, v4);
      outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for FunctionDescription);
      outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for FunctionDescription);
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
    }

    type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ToolDescriptionEnvelope.ToolTypeEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMR);
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v58 - v4;
  v64 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMR);
  v63 = *(v77 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v58 - v8;
  v9 = type metadata accessor for FileGenerationParameters();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMR);
  v62 = *(v72 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v58 - v13;
  v14 = type metadata accessor for ImageGenerationParameters();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMR);
  v60 = *(v61 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v20 = &v58 - v19;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMR);
  v58 = *(v59 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v23 = &v58 - v22;
  v24 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v80 = *(v28 - 8);
  v81 = v28;
  v29 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v58 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();
  v79 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v78, v27, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v17;
    v38 = v70;
    v37 = v71;
    v40 = v72;
    v39 = v73;
    v41 = v76;
    v42 = v74;
    v43 = v77;
    if (EnumCaseMultiPayload)
    {
      v54 = v27;
      v55 = v75;
      (*(v74 + 32))(v73, v54, v75);
      v86 = 3;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();
      v46 = v81;
      v56 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8]);
      v57 = v82;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v57)
      {
        (*(v63 + 8))(v41, v43);
        (*(v42 + 8))(v39, v55);
        return (*(v80 + 8))(v56, v46);
      }

      (*(v63 + 8))(v41, v43);
      (*(v42 + 8))(v39, v55);
      v47 = v56;
    }

    else
    {
      v44 = v69;
      v45 = v36;
      (*(v69 + 32))(v36, v27, v70);
      v85 = 2;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();
      v46 = v81;
      v47 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v62 + 8))(v37, v40);
      (*(v44 + 8))(v45, v38);
    }

    return (*(v80 + 8))(v47, v46);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v48 = v65;
    outlined init with take of DocumentRegistrationEnvelope(v27, v65, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
    v87 = 4;
    lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();
    v49 = v66;
    v50 = v81;
    v51 = v79;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
    v52 = v68;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v67 + 8))(v49, v52);
    outlined destroy of DocumentResourceEnvelope(v48, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
    return (*(v80 + 8))(v51, v50);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v83 = 0;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();
      v34 = v81;
      v35 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v58 + 8))(v23, v59);
    }

    else
    {
      v84 = 1;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();
      v34 = v81;
      v35 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v60 + 8))(v20, v61);
    }

    return (*(v80 + 8))(v35, v34);
  }
}

uint64_t ToolDescriptionEnvelope.ToolTypeEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMR);
  v73 = *(v70 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v81 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMR);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMR);
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v59 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMR);
  v67 = *(v66 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v79 = &v59 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMR);
  v64 = *(v65 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v77 = &v59 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v76 = *(v78 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v17 = &v59 - v16;
  v18 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();
  v33 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    goto LABEL_10;
  }

  v34 = v77;
  v60 = v27;
  v61 = v24;
  v62 = v21;
  v36 = v79;
  v35 = v80;
  v37 = v81;
  v63 = v18;
  v83 = v30;
  v38 = v78;
  v39 = KeyedDecodingContainer.allKeys.getter();
  v40 = (2 * *(v39 + 16)) | 1;
  v84 = v39;
  v85 = v39 + 32;
  v86 = 0;
  v87 = v40;
  v41 = specialized Collection<>.popFirst()();
  if (v41 == 5 || v86 != v87 >> 1)
  {
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v47 = v63;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v76 + 8))(v17, v38);
    swift_unknownObjectRelease();
LABEL_10:
    v49 = v82;
    return __swift_destroy_boxed_opaque_existential_0(v49);
  }

  if (v41 <= 1u)
  {
    if (v41)
    {
      v88 = 1;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v75;
      v51 = v76;
      (*(v67 + 8))(v36, v66);
    }

    else
    {
      v88 = 0;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v75;
      v51 = v76;
      (*(v64 + 8))(v34, v65);
    }

    (*(v51 + 8))(v17, v38);
    swift_unknownObjectRelease();
    v53 = v83;
    swift_storeEnumTagMultiPayload();
    v58 = v82;
  }

  else
  {
    if (v41 == 2)
    {
      v88 = 2;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for ImageGenerationParameters();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90]);
      v43 = v60;
      v54 = v69;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v55 = v76;
      (*(v68 + 8))(v35, v54);
      (*(v55 + 8))(v17, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v41 == 3)
      {
        v88 = 3;
        lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();
        v42 = v74;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for FileGenerationParameters();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8]);
        v43 = v61;
        v44 = v72;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v71 + 8))(v42, v44);
        (*(v76 + 8))(v17, v38);
      }

      else
      {
        v88 = 4;
        lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v43 = v62;
        v56 = v70;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v57 = v76;
        (*(v73 + 8))(v37, v56);
        (*(v57 + 8))(v17, v38);
      }

      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v53 = v83;
    outlined init with take of DocumentRegistrationEnvelope(v43, v83, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
    v58 = v82;
    v52 = v75;
  }

  outlined init with take of DocumentRegistrationEnvelope(v53, v52, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  v49 = v58;
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t ToolDescriptionEnvelope.FunctionDescriptionEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);
    v17[13] = 2;
    type metadata accessor for SchemaEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type SchemaEnvelope and conformance SchemaEnvelope, type metadata accessor for SchemaEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ToolDescriptionEnvelope.FunctionDescriptionEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for SchemaEnvelope(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = a1;
  v16 = v27;
  v17 = v28;
  v31 = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v18;
  v30 = 1;
  v14[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[3] = v19;
  v29 = 2;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type SchemaEnvelope and conformance SchemaEnvelope, type metadata accessor for SchemaEnvelope);
  v23 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v10, v17);
  v20 = *(v11 + 24);
  v21 = v23;
  outlined init with take of DocumentRegistrationEnvelope(v6, v23 + v20, type metadata accessor for SchemaEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v21, v25, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return outlined destroy of DocumentResourceEnvelope(v21, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x72657773776F7262;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974636E7566;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E65476567616D69;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDescriptionEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolDescriptionEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope and conformance ToolDescriptionEnvelope.ToolTypeEnvelope, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ToolDescriptionEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ToolDescriptionEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope and conformance ToolDescriptionEnvelope.ToolTypeEnvelope, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for ToolDescriptionEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ToolDescriptionEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope and conformance ToolDescriptionEnvelope.ToolTypeEnvelope, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ToolCallEnvelope.KindEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v18 = a2;
  v19 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O18FunctionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O18FunctionCodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.CodingKeys and conformance ToolCallEnvelope.KindEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.FunctionCodingKeys and conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  lazy protocol witness table accessor for type ToolCallEnvelope.FunctionEnvelope and conformance ToolCallEnvelope.FunctionEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t PromptRenderingEnvelope.SourceEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v19 = v21[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t ToolCallEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolCallEnvelope.CodingKeys and conformance ToolCallEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    outlined init with take of Any(v3 + 1, v18);
    outlined init with take of Any(v18, &v16);
    v15[0] = 1;
    lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope and conformance ToolCallEnvelope.KindEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 3);
    v16 = *(v3 + 3);
    v15[23] = 2;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v17, v15, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolCallEnvelope.KindEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.CodingKeys and conformance ToolCallEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.CodingKeys and conformance ToolCallEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.FunctionCodingKeys and conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.FunctionCodingKeys and conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ToolCallEnvelope.KindEnvelope@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized ToolCallEnvelope.KindEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x746E656D75677261;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.FunctionEnvelope.CodingKeys and conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.FunctionEnvelope.CodingKeys and conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolCallEnvelope.CodingKeys()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolCallEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ToolCallEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.CodingKeys and conformance ToolCallEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.CodingKeys and conformance ToolCallEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ToolCallEnvelope@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized ToolCallEnvelope.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ToolCallEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return ToolCallEnvelope.encode(to:)(a1);
}

uint64_t ClassificationResponseEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration30ClassificationResponseEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration30ClassificationResponseEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v21 = *v3;
  LOBYTE(v19[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  lazy protocol witness table accessor for type [String : Bool] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Bool] and conformance <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v21 = *(v3 + 8);
    *&v22 = *(v3 + 24);
    LOBYTE(v19[0]) = 1;
    lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 32);
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 88);
    v13 = *(v3 + 120);
    v28[4] = *(v3 + 104);
    v28[5] = v13;
    v29 = *(v3 + 136);
    v14 = *(v3 + 56);
    v28[0] = *(v3 + 40);
    v28[1] = v14;
    v28[2] = *(v3 + 72);
    v28[3] = v12;
    v15 = *(v3 + 88);
    v16 = *(v3 + 120);
    v25 = *(v3 + 104);
    v26 = v16;
    v27 = *(v3 + 136);
    v17 = *(v3 + 56);
    v21 = *(v3 + 40);
    v22 = v17;
    v23 = *(v3 + 72);
    v24 = v15;
    v30 = 3;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v19, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
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

  return (*(v6 + 8))(v9, v5);
}

uint64_t ClassificationParametersEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration();
  v11 = v13[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v11)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ClassificationParametersEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v15[0];
  v11 = v15[1];
  LOBYTE(v15[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t OneShotRequest.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x6B6F54746E756F63;
    v5 = 0xD000000000000019;
    if (a1 != 2)
    {
      v5 = 0x6574656C706D6F63;
    }

    if (!a1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7966697373616C63;
    v2 = 0xD000000000000016;
    if (a1 != 7)
    {
      v2 = 0x41656C69706D6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000016;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassificationResponseEnvelope.CodingKeys()
{
  v1 = 0x736C6562616CLL;
  v2 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v2 = 0x64657265646E6572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationResponseEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ClassificationResponseEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationResponseEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationResponseEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 protocol witness for Decodable.init(from:) in conformance ClassificationResponseEnvelope@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ClassificationResponseEnvelope.init(from:)(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ClassificationResponseEnvelope(void *a1)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return ClassificationResponseEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassificationParametersEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000021;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationParametersEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001ABA41B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001ABA41B50 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadataCodingKeys);
}

uint64_t RequestPayload.encode(to:)(void *a1)
{
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v100 = *(v123 - 8);
  v2 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v94 - v3;
  v120 = type metadata accessor for CompileAdapterRequest(0);
  v4 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v99 = *(v119 - 8);
  v6 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v94 - v7;
  v116 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v8 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v98 = *(v115 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v94 - v11;
  v112 = type metadata accessor for ClassifyPromptRequest(0);
  v12 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v97 = *(v111 - 8);
  v14 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v94 - v15;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v96 = *(v109 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v94 - v17;
  v106 = type metadata accessor for CompletePromptTemplateRequest(0);
  v18 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v94 = *(v131 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v94 - v21;
  v104 = type metadata accessor for CompletePromptRequest(0);
  v22 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v95 = *(v128 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v94 - v25;
  v102 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v26 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v126 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v105 = *(v125 - 8);
  v28 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v94 - v29;
  v103 = type metadata accessor for CountTokensRequest(0);
  v30 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v101 = *(v33 - 8);
  v34 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v94 - v35;
  v37 = type metadata accessor for RequestPayload(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v132 = *(v142 - 8);
  v41 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v43 = &v94 - v42;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();
  v134 = v43;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v133, v40, type metadata accessor for RequestPayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v52 = v32;
    v54 = v124;
    v53 = v125;
    v55 = v127;
    v56 = v128;
    v57 = v130;
    v58 = v131;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v59 = *v40;
        v60 = v40[1];
        v61 = v40[3];
        v130 = v40[2];
        v131 = v59;
        v62 = v40[4];
        v133 = v40[5];
        v63 = v133;
        v128 = v40[6];
        v129 = v62;
        LOBYTE(v135) = 0;
        lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();
        v64 = v142;
        v65 = v134;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v135 = v131;
        v136 = v60;
        v137 = v130;
        v138 = v61;
        v139 = v129;
        v140 = v63;
        v141 = v128;
        lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v101 + 8))(v36, v33);
        (*(v132 + 8))(v65, v64);
      }

      v80 = v52;
      outlined init with take of DocumentRegistrationEnvelope(v40, v52, type metadata accessor for CountTokensRequest);
      LOBYTE(v135) = 1;
      lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();
      v46 = v142;
      v47 = v134;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v105 + 8))(v54, v53);
      v81 = type metadata accessor for CountTokensRequest;
      v82 = v80;
      goto LABEL_18;
    }

    v46 = v142;
    if (EnumCaseMultiPayload == 2)
    {
      v67 = v126;
      outlined init with take of DocumentRegistrationEnvelope(v40, v126, type metadata accessor for CountTokensPromptTemplateRequest);
      LOBYTE(v135) = 2;
      lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();
      v68 = v134;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v95 + 8))(v55, v56);
      outlined destroy of DocumentResourceEnvelope(v67, type metadata accessor for CountTokensPromptTemplateRequest);
      v69 = *(v132 + 8);
      v70 = v68;
      return v69(v70, v46);
    }

    v48 = v129;
    outlined init with take of DocumentRegistrationEnvelope(v40, v129, type metadata accessor for CompletePromptRequest);
    LOBYTE(v135) = 3;
    lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();
    v47 = v134;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v94 + 8))(v57, v58);
    v51 = type metadata accessor for CompletePromptRequest;
LABEL_17:
    v81 = v51;
    v82 = v48;
LABEL_18:
    outlined destroy of DocumentResourceEnvelope(v82, v81);
    v69 = *(v132 + 8);
    v70 = v47;
    return v69(v70, v46);
  }

  if (EnumCaseMultiPayload > 5)
  {
    v46 = v142;
    v47 = v134;
    if (EnumCaseMultiPayload == 6)
    {
      v48 = v113;
      outlined init with take of DocumentRegistrationEnvelope(v40, v113, type metadata accessor for ClassifyPromptRequest);
      LOBYTE(v135) = 6;
      lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();
      v78 = v114;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest);
      v79 = v115;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v98 + 8))(v78, v79);
      v51 = type metadata accessor for ClassifyPromptRequest;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v48 = v117;
      outlined init with take of DocumentRegistrationEnvelope(v40, v117, type metadata accessor for ClassifyPromptTemplateRequest);
      LOBYTE(v135) = 7;
      lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();
      v49 = v118;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest);
      v50 = v119;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v99 + 8))(v49, v50);
      v51 = type metadata accessor for ClassifyPromptTemplateRequest;
    }

    else
    {
      v48 = v121;
      outlined init with take of DocumentRegistrationEnvelope(v40, v121, type metadata accessor for CompileAdapterRequest);
      LOBYTE(v135) = 8;
      lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();
      v83 = v122;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest);
      v84 = v123;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v100 + 8))(v83, v84);
      v51 = type metadata accessor for CompileAdapterRequest;
    }

    goto LABEL_17;
  }

  v71 = v142;
  if (EnumCaseMultiPayload == 4)
  {
    v72 = v40;
    v73 = v107;
    outlined init with take of DocumentRegistrationEnvelope(v72, v107, type metadata accessor for CompletePromptTemplateRequest);
    LOBYTE(v135) = 4;
    lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();
    v74 = v108;
    v75 = v71;
    v76 = v134;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
    v77 = v109;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v96 + 8))(v74, v77);
    outlined destroy of DocumentResourceEnvelope(v73, type metadata accessor for CompletePromptTemplateRequest);
    return (*(v132 + 8))(v76, v75);
  }

  else
  {
    v85 = v40[1];
    v133 = *v40;
    v87 = v40[2];
    v86 = v40[3];
    v89 = v40[4];
    v88 = v40[5];
    v90 = v40[6];
    LOBYTE(v135) = 5;
    lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();
    v91 = v110;
    v92 = v134;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v135 = v133;
    v136 = v85;
    v133 = v85;
    v137 = v87;
    v138 = v86;
    v139 = v89;
    v140 = v88;
    v141 = v90;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v93 = v111;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v97 + 8))(v91, v93);
    (*(v132 + 8))(v92, v142);
  }
}

uint64_t RequestPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v137 = *(v136 - 8);
  v3 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v142 = &v111 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v134 = *(v135 - 8);
  v5 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v143 = &v111 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v132 = *(v133 - 8);
  v7 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v149 = &v111 - v8;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v130 = *(v131 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v141 = &v111 - v10;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v128 = *(v129 - 8);
  v11 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v140 = &v111 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v126 = *(v127 - 8);
  v13 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v148 = &v111 - v14;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v125 = *(v124 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v147 = &v111 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v122 = *(v123 - 8);
  v17 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v139 = &v111 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v120 = *(v121 - 8);
  v19 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v138 = &v111 - v20;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v145 = *(v151 - 8);
  v21 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v23 = &v111 - v22;
  v144 = type metadata accessor for RequestPayload(0);
  v24 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v119 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v115 = (&v111 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v116 = &v111 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v111 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v111 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v111 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v111 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v111 - v47;
  v49 = a1[3];
  v50 = a1[4];
  v152 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();
  v146 = v23;
  v51 = v162;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
    return __swift_destroy_boxed_opaque_existential_0(v152);
  }

  v111 = v45;
  v112 = v42;
  v113 = v39;
  v114 = v36;
  v53 = v147;
  v52 = v148;
  v162 = v48;
  v55 = v149;
  v54 = v150;
  v56 = v151;
  v57 = v146;
  v58 = KeyedDecodingContainer.allKeys.getter();
  v59 = (2 * *(v58 + 16)) | 1;
  v158 = v58;
  v159 = v58 + 32;
  v160 = 0;
  v161 = v59;
  v60 = specialized Collection<>.popFirst()();
  if (v60 == 9 || v160 != v161 >> 1)
  {
    v66 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v67;
    v69 = v57;
    v70 = v56;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v68 = v144;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v66);
    swift_willThrow();
    (*(v145 + 8))(v69, v70);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v152);
  }

  if (v60 > 3u)
  {
    if (v60 > 5u)
    {
      if (v60 == 6)
      {
        LOBYTE(v153) = 6;
        lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();
        v87 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v88 = v145;
        v89 = v57;
        type metadata accessor for ClassifyPromptRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest);
        v64 = v117;
        v90 = v133;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v132 + 8))(v87, v90);
        (*(v88 + 8))(v89, v151);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v61 = v145;
      if (v60 == 7)
      {
        LOBYTE(v153) = 7;
        lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();
        v62 = v143;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v57;
        type metadata accessor for ClassifyPromptTemplateRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest);
        v64 = v118;
        v65 = v135;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v134 + 8))(v62, v65);
        (*(v61 + 8))(v63, v151);
        swift_unknownObjectRelease();
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v105 = v64;
        goto LABEL_25;
      }

      LOBYTE(v153) = 8;
      lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();
      v95 = v142;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for CompileAdapterRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest);
      v101 = v119;
      v102 = v136;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v137 + 8))(v95, v102);
      (*(v61 + 8))(v57, v151);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v105 = v101;
      goto LABEL_25;
    }

    if (v60 == 4)
    {
      LOBYTE(v153) = 4;
      lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();
      v83 = v140;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v84 = v145;
      type metadata accessor for CompletePromptTemplateRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
      v85 = v116;
      v86 = v129;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v128 + 8))(v83, v86);
      (*(v84 + 8))(v57, v151);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v105 = v85;
      goto LABEL_25;
    }

    LOBYTE(v153) = 5;
    lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();
    v96 = v141;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v97 = v56;
    v98 = v145;
    v103 = v97;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v104 = v131;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v130 + 8))(v96, v104);
    (*(v98 + 8))(v57, v103);
    swift_unknownObjectRelease();
    v106 = v154;
    v107 = v155;
    v108 = v157;
    v80 = v115;
    *v115 = v153;
    *(v80 + 2) = v106;
    *(v80 + 3) = v107;
    v80[2] = v156;
    *(v80 + 6) = v108;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    v105 = v80;
    goto LABEL_25;
  }

  if (v60 <= 1u)
  {
    if (v60)
    {
      LOBYTE(v153) = 1;
      lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();
      v91 = v139;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v92 = v145;
      v99 = v57;
      type metadata accessor for CountTokensRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest);
      v64 = v112;
      v100 = v123;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v122 + 8))(v91, v100);
      (*(v92 + 8))(v99, v151);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    LOBYTE(v153) = 0;
    lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();
    v73 = v138;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v74 = v56;
    v75 = v145;
    lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
    v76 = v121;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v120 + 8))(v73, v76);
    (*(v75 + 8))(v57, v74);
    swift_unknownObjectRelease();
    v77 = v154;
    v78 = v155;
    v79 = v157;
    v80 = v111;
    *v111 = v153;
    *(v80 + 2) = v77;
    *(v80 + 3) = v78;
    v80[2] = v156;
    *(v80 + 6) = v79;
    goto LABEL_24;
  }

  if (v60 == 2)
  {
    LOBYTE(v153) = 2;
    lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v81 = v57;
    type metadata accessor for CountTokensPromptTemplateRequest(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest);
    v64 = v113;
    v82 = v124;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v125 + 8))(v53, v82);
    (*(v145 + 8))(v81, v151);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  LOBYTE(v153) = 3;
  lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for CompletePromptRequest(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
  v93 = v114;
  v94 = v127;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v126 + 8))(v52, v94);
  (*(v145 + 8))(v57, v56);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v105 = v93;
LABEL_25:
  v109 = v162;
  outlined init with take of DocumentRegistrationEnvelope(v105, v162, type metadata accessor for RequestPayload);
  v110 = v152;
  outlined init with take of DocumentRegistrationEnvelope(v109, v54, type metadata accessor for RequestPayload);
  return __swift_destroy_boxed_opaque_existential_0(v110);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance StreamingRequestPayload.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x6574656C706D6F63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StreamingRequestPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656C706D6F63 && a2 == 0xEE0074706D6F7250;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA41290 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamingRequestPayload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v31 - v4;
  v35 = type metadata accessor for CompletePromptTemplateRequest(0);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v32 = type metadata accessor for CompletePromptRequest(0);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StreamingRequestPayload(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v21 = &v31 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v40, v17, type metadata accessor for StreamingRequestPayload);
  v23 = (v18 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v36;
    outlined init with take of DocumentRegistrationEnvelope(v17, v36, type metadata accessor for CompletePromptTemplateRequest);
    v43 = 1;
    lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();
    v25 = v37;
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
    v27 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v25, v27);
    outlined destroy of DocumentResourceEnvelope(v24, type metadata accessor for CompletePromptTemplateRequest);
    return (*v23)(v21, v26);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v17, v13, type metadata accessor for CompletePromptRequest);
    v42 = 0;
    lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();
    v29 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
    v30 = v34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v30);
    outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for CompletePromptRequest);
    return (*v23)(v21, v29);
  }
}

uint64_t StreamingRequestPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for StreamingRequestPayload(0);
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
  lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();
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
    lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();
    v42 = v48;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v42)
    {
      type metadata accessor for CompletePromptRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest);
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
  lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();
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

  type metadata accessor for CompletePromptTemplateRequest(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest);
  v35 = v46;
  v36 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v53 + 8))(v33, v36);
  (*(v27 + 8))(v32, v31);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v44 = v45;
  outlined init with take of DocumentRegistrationEnvelope(v35, v45, type metadata accessor for StreamingRequestPayload);
  outlined init with take of DocumentRegistrationEnvelope(v44, v49, type metadata accessor for StreamingRequestPayload);
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t StreamingRequestPayload.xpcData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CompletePromptTemplateRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CompletePromptRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StreamingRequestPayload(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v15, type metadata accessor for StreamingRequestPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v15, v7, type metadata accessor for CompletePromptTemplateRequest);
    v16 = type metadata accessor for XPCDictionary();
    (*(*(v16 - 8) + 16))(a1, v7, v16);
    v17 = type metadata accessor for CompletePromptTemplateRequest;
    v18 = v7;
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v15, v11, type metadata accessor for CompletePromptRequest);
    v19 = type metadata accessor for XPCDictionary();
    (*(*(v19 - 8) + 16))(a1, v11, v19);
    v17 = type metadata accessor for CompletePromptRequest;
    v18 = v11;
  }

  return outlined destroy of DocumentResourceEnvelope(v18, v17);
}

uint64_t StreamingRequestPayload.revive(withXpcData:)(uint64_t a1)
{
  v3 = type metadata accessor for CompletePromptTemplateRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CompletePromptRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StreamingRequestPayload(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of DocumentRegistrationEnvelope(v1, v14, type metadata accessor for StreamingRequestPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v14, v6, type metadata accessor for CompletePromptTemplateRequest);
    v15 = type metadata accessor for XPCDictionary();
    (*(*(v15 - 8) + 24))(v6, a1, v15);
    outlined init with take of DocumentRegistrationEnvelope(v6, v1, type metadata accessor for CompletePromptTemplateRequest);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v14, v10, type metadata accessor for CompletePromptRequest);
    v16 = type metadata accessor for XPCDictionary();
    (*(*(v16 - 8) + 24))(v10, a1, v16);
    outlined init with take of DocumentRegistrationEnvelope(v10, v1, type metadata accessor for CompletePromptRequest);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for XPCRevivable.xpcData.getter in conformance StreamingRequestPayload@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for CompletePromptTemplateRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CompletePromptRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v4, v17, type metadata accessor for StreamingRequestPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v17, v9, type metadata accessor for CompletePromptTemplateRequest);
    v18 = type metadata accessor for XPCDictionary();
    (*(*(v18 - 8) + 16))(a2, v9, v18);
    v19 = type metadata accessor for CompletePromptTemplateRequest;
    v20 = v9;
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v17, v13, type metadata accessor for CompletePromptRequest);
    v21 = type metadata accessor for XPCDictionary();
    (*(*(v21 - 8) + 16))(a2, v13, v21);
    v19 = type metadata accessor for CompletePromptRequest;
    v20 = v13;
  }

  return outlined destroy of DocumentResourceEnvelope(v20, v19);
}

uint64_t OneShotRequest.xpcData.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v53 = a4;
  v7 = type metadata accessor for CompileAdapterRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClassifyPromptRequest(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CompletePromptTemplateRequest(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CompletePromptRequest(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for CountTokensRequest(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v50 - v36;
  outlined init with copy of DocumentResourceEnvelope(v4, &v50 - v36, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        outlined init with take of DocumentRegistrationEnvelope(v37, v25, type metadata accessor for CompletePromptRequest);
        v48 = type metadata accessor for XPCDictionary();
        (*(*(v48 - 8) + 16))(v53, v25, v48);
        v40 = type metadata accessor for CompletePromptRequest;
        v41 = v25;
        return outlined destroy of DocumentResourceEnvelope(v41, v40);
      }

      outlined init with take of DocumentRegistrationEnvelope(v37, v29, type metadata accessor for CountTokensPromptTemplateRequest);
      v43 = type metadata accessor for XPCDictionary();
      (*(*(v43 - 8) + 16))(v53, v29, v43);
      v44 = type metadata accessor for CountTokensPromptTemplateRequest;
LABEL_17:
      v40 = v44;
      v41 = v29;
      return outlined destroy of DocumentResourceEnvelope(v41, v40);
    }

    if (EnumCaseMultiPayload)
    {
      outlined init with take of DocumentRegistrationEnvelope(v37, v33, type metadata accessor for CountTokensRequest);
      v42 = type metadata accessor for XPCDictionary();
      (*(*(v42 - 8) + 16))(v53, v33, v42);
      v40 = type metadata accessor for CountTokensRequest;
      v41 = v33;
      return outlined destroy of DocumentResourceEnvelope(v41, v40);
    }

LABEL_13:
    outlined destroy of DocumentResourceEnvelope(v37, v52);
    return XPCDictionary.init()();
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      outlined init with take of DocumentRegistrationEnvelope(v37, v21, type metadata accessor for CompletePromptTemplateRequest);
      v45 = type metadata accessor for XPCDictionary();
      (*(*(v45 - 8) + 16))(v53, v21, v45);
      v40 = type metadata accessor for CompletePromptTemplateRequest;
      v41 = v21;
      return outlined destroy of DocumentResourceEnvelope(v41, v40);
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 6)
  {
    outlined init with take of DocumentRegistrationEnvelope(v37, v17, type metadata accessor for ClassifyPromptRequest);
    v47 = type metadata accessor for XPCDictionary();
    (*(*(v47 - 8) + 16))(v53, v17, v47);
    v40 = type metadata accessor for ClassifyPromptRequest;
    v41 = v17;
    return outlined destroy of DocumentResourceEnvelope(v41, v40);
  }

  if (EnumCaseMultiPayload != 7)
  {
    v29 = v51;
    outlined init with take of DocumentRegistrationEnvelope(v37, v51, type metadata accessor for CompileAdapterRequest);
    v49 = type metadata accessor for XPCDictionary();
    (*(*(v49 - 8) + 16))(v53, v29, v49);
    v44 = type metadata accessor for CompileAdapterRequest;
    goto LABEL_17;
  }

  outlined init with take of DocumentRegistrationEnvelope(v37, v13, type metadata accessor for ClassifyPromptTemplateRequest);
  v39 = type metadata accessor for XPCDictionary();
  (*(*(v39 - 8) + 16))(v53, v13, v39);
  v40 = type metadata accessor for ClassifyPromptTemplateRequest;
  v41 = v13;
  return outlined destroy of DocumentResourceEnvelope(v41, v40);
}

uint64_t OneShotRequest.revive(withXpcData:)(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v51 = a3;
  v52 = a4;
  v6 = v4;
  v50 = a1;
  v7 = type metadata accessor for CompileAdapterRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClassifyPromptRequest(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CompletePromptTemplateRequest(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CompletePromptRequest(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for CountTokensRequest(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2(0, v32);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v49 - v37;
  outlined init with copy of DocumentResourceEnvelope(v6, &v49 - v37, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        outlined destroy of DocumentResourceEnvelope(v6, v52);
        outlined init with take of DocumentRegistrationEnvelope(v38, v17, type metadata accessor for ClassifyPromptRequest);
        v45 = type metadata accessor for XPCDictionary();
        (*(*(v45 - 8) + 24))(v17, v50, v45);
        outlined init with take of DocumentRegistrationEnvelope(v17, v6, type metadata accessor for ClassifyPromptRequest);
      }

      else if (EnumCaseMultiPayload == 7)
      {
        outlined destroy of DocumentResourceEnvelope(v6, v52);
        outlined init with take of DocumentRegistrationEnvelope(v38, v13, type metadata accessor for ClassifyPromptTemplateRequest);
        v40 = type metadata accessor for XPCDictionary();
        (*(*(v40 - 8) + 24))(v13, v50, v40);
        outlined init with take of DocumentRegistrationEnvelope(v13, v6, type metadata accessor for ClassifyPromptTemplateRequest);
      }

      else
      {
        outlined destroy of DocumentResourceEnvelope(v6, v52);
        v47 = v49;
        outlined init with take of DocumentRegistrationEnvelope(v38, v49, type metadata accessor for CompileAdapterRequest);
        v48 = type metadata accessor for XPCDictionary();
        (*(*(v48 - 8) + 24))(v47, v50, v48);
        outlined init with take of DocumentRegistrationEnvelope(v47, v6, type metadata accessor for CompileAdapterRequest);
      }

      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 4)
    {
      outlined destroy of DocumentResourceEnvelope(v6, v52);
      outlined init with take of DocumentRegistrationEnvelope(v38, v21, type metadata accessor for CompletePromptTemplateRequest);
      v43 = type metadata accessor for XPCDictionary();
      (*(*(v43 - 8) + 24))(v21, v50, v43);
      outlined init with take of DocumentRegistrationEnvelope(v21, v6, type metadata accessor for CompletePromptTemplateRequest);
      return swift_storeEnumTagMultiPayload();
    }

    return outlined destroy of DocumentResourceEnvelope(v38, v52);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined destroy of DocumentResourceEnvelope(v6, v52);
      outlined init with take of DocumentRegistrationEnvelope(v38, v29, type metadata accessor for CountTokensPromptTemplateRequest);
      v42 = type metadata accessor for XPCDictionary();
      (*(*(v42 - 8) + 24))(v29, v50, v42);
      outlined init with take of DocumentRegistrationEnvelope(v29, v6, type metadata accessor for CountTokensPromptTemplateRequest);
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(v6, v52);
      outlined init with take of DocumentRegistrationEnvelope(v38, v25, type metadata accessor for CompletePromptRequest);
      v46 = type metadata accessor for XPCDictionary();
      (*(*(v46 - 8) + 24))(v25, v50, v46);
      outlined init with take of DocumentRegistrationEnvelope(v25, v6, type metadata accessor for CompletePromptRequest);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (!EnumCaseMultiPayload)
  {
    return outlined destroy of DocumentResourceEnvelope(v38, v52);
  }

  outlined destroy of DocumentResourceEnvelope(v6, v52);
  outlined init with take of DocumentRegistrationEnvelope(v38, v34, type metadata accessor for CountTokensRequest);
  v41 = type metadata accessor for XPCDictionary();
  (*(*(v41 - 8) + 24))(v34, v50, v41);
  outlined init with take of DocumentRegistrationEnvelope(v34, v6, type metadata accessor for CountTokensRequest);
  return swift_storeEnumTagMultiPayload();
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    MEMORY[0x1AC5A6AE0](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA41680);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1AC5A5BC0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v38 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v32 = *a3;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + v27) = v25;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v34[2] = v37;
      v5 += 24;
      if (v38 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  v38 = *(a1 + 16);
  if (!v38)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    MEMORY[0x1AC5A6AE0](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA41680);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1AC5A5BC0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v38 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v25 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v32 = *a3;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v8;
      v35[1] = v7;
      *(v34[7] + v27) = v25;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v34[2] = v37;
      v5 += 24;
      if (v38 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

unint64_t lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DocumentResourceEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope, type metadata accessor for DocumentResourceEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope, type metadata accessor for DocumentResourceEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope()
{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope;
  if (!lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope;
  if (!lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope);
  }

  return result;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = type metadata accessor for ChatMessagePrompt();
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v73 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v68 - v8;
  v10 = type metadata accessor for Prompt();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v97 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v96 = v68 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v79 = v68 - v17;
  v18 = type metadata accessor for GenerativeConfigurationKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit26GenerativeConfigurationKeyVSe_SEpGMd, &_ss18_DictionaryStorageCy9PromptKit26GenerativeConfigurationKeyVSe_SEpGMR);
  result = static _DictionaryStorage.copy(original:)();
  v26 = v10;
  v27 = result;
  v28 = 0;
  v29 = *(a1 + 64);
  v77 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v76 = (v30 + 63) >> 6;
  v82 = v19 + 16;
  v85 = v19;
  v91 = v19 + 32;
  v33 = v23;
  v81 = (v11 + 56);
  v99 = (v11 + 8);
  v94 = (v75 + 32);
  v95 = v75 + 16;
  v78 = (v11 + 32);
  v80 = result + 64;
  v83 = result;
  v74 = v9;
  if (v32)
  {
    while (1)
    {
      v86 = (v32 - 1) & v32;
      v87 = v28;
      v34 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_10:
      v38 = *(a1 + 48);
      v39 = v85;
      v40 = *(v85 + 16);
      v89 = *(v85 + 72) * v34;
      v41 = v84;
      v40(v84, v38 + v89, v18);
      v42 = *(a1 + 56);
      v90 = v34;
      outlined init with copy of Decodable & Encodable(v42 + 48 * v34, &v105);
      v43 = *(v39 + 32);
      v43(v33, v41, v18);
      outlined init with copy of Decodable & Encodable(&v105, &v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
      v44 = swift_dynamicCast();
      v45 = *v81;
      v88 = v43;
      if (v44)
      {
        v45(v9, 0, 1, v26);
        v46 = v18;
        v47 = v79;
        (*v78)(v79, v9, v26);
        v102 = v26;
        v48 = MEMORY[0x1E69C63A0];
        v103 = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69C63A0]);
        v104 = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, v48);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
        Prompt.seal(xpcData:)(v100, boxed_opaque_existential_1);
        v50 = v47;
        v18 = v46;
        (*v99)(v50, v26);
      }

      else
      {
        v45(v9, 1, 1, v26);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
        outlined init with copy of Decodable & Encodable(&v105, &v101);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR);
        if (swift_dynamicCast())
        {
          v52 = v106;
          v53 = *(v106 + 16);
          if (v53)
          {
            v69 = v51;
            v70 = v33;
            v71 = v18;
            v98 = v26;
            v72 = a1;
            *&v101 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53, 0);
            v54 = v101;
            v55 = (*(v75 + 80) + 32) & ~*(v75 + 80);
            v68[1] = v52;
            v93 = v55;
            v56 = v52 + v55;
            v57 = *(v75 + 72);
            v92 = *(v75 + 16);
            v58 = v73;
            do
            {
              v92(v58, v56, v3);
              v59 = v97;
              ChatMessagePrompt.prompt.getter();
              Prompt.seal(xpcData:)(v100, v96);
              (*v99)(v59, v98);
              ChatMessagePrompt.prompt.setter();
              *&v101 = v54;
              v60 = v3;
              v62 = *(v54 + 16);
              v61 = *(v54 + 24);
              if (v62 >= v61 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1);
                v54 = v101;
              }

              *(v54 + 16) = v62 + 1;
              (*v94)(v54 + v93 + v62 * v57, v58, v60);
              v56 += v57;
              --v53;
              v3 = v60;
            }

            while (v53);

            a1 = v72;
            v26 = v98;
            v18 = v71;
            v33 = v70;
            v51 = v69;
          }

          else
          {

            v54 = MEMORY[0x1E69E7CC0];
          }

          v102 = v51;
          v103 = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
          v104 = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
          *&v101 = v54;
          v9 = v74;
        }

        else
        {
          outlined init with copy of Decodable & Encodable(&v105, &v101);
        }
      }

      v27 = v83;
      v63 = v89;
      __swift_destroy_boxed_opaque_existential_0(&v105);
      v64 = v90;
      *(v80 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
      v88(v27[6] + v63, v33, v18);
      result = outlined init with take of Decodable & Encodable(&v101, (v27[7] + 48 * v64));
      v65 = v27[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        break;
      }

      v27[2] = v67;
      v28 = v87;
      v32 = v86;
      if (!v86)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v35 = v28;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v76)
      {
        return v27;
      }

      v37 = *(v77 + 8 * v36);
      ++v35;
      if (v37)
      {
        v86 = (v37 - 1) & v37;
        v87 = v36;
        v34 = __clz(__rbit64(v37)) | (v36 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v47 = a2;
  v45 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingH0VGMd, &_ss18_DictionaryStorageCySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingH0VGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = 0;
  v46 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v36 = (v13 + 63) >> 6;
  v37 = v11;
  v44 = v3;
  v39 = v3 + 8;
  v40 = v3 + 16;
  v38 = result + 64;
  v41 = result;
  v16 = v45;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v49 = 16 * v20;
      v21 = *(v46 + 56);
      v22 = (*(v46 + 48) + 16 * v20);
      v23 = v22[1];
      v50 = *v22;
      v24 = v44;
      v25 = *(v44 + 16);
      v26 = v42;
      v25(v42, v21 + *(v44 + 72) * v20, v16);
      v27 = v43;
      v25(v43, v26, v16);

      v28 = PromptTemplateInfo.RichVariableBinding.components.getter();
      v29 = v51;
      v51 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVG_0dE00ghI8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jklN0V0mN0Vs5NeverOTg504_s15d12Generation26ghi11Envelope33_opqrstuvw6LLV019jklu69V7sealing7xpcDataAF0aB4Core0cdE0V0pqR0V_3XPC13XPCDictionaryVztcfcAF09mU12VAM0Y0VXEfU_3XPC13XPCDictionaryVTf1cn_n(v28, v47);

      v30 = *(v24 + 8);
      v30(v27, v16);
      v30(v26, v16);
      *(v38 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v41;
      v31 = (*(v41 + 48) + v49);
      *v31 = v50;
      v31[1] = v23;
      *(*(result + 56) + 8 * v20) = v51;
      v32 = *(result + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(result + 16) = v34;
      v51 = v29;
      v15 = v48;
      if (!v48)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v36)
      {
        return result;
      }

      v19 = *(v37 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v48 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v34 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v38 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v32 = result + 64;
  v33 = v4;
  v31 = v4 + 32;
  v35 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v38 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v41 = *(*(v38 + 56) + 8 * v21);

      v25 = v40;
      v36(&v41);

      v40 = v25;
      if (v25)
      {
        break;
      }

      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = v34;
      v9 = v35;
      v27 = (*(v35 + 48) + 16 * v21);
      *v27 = v24;
      v27[1] = v23;
      result = (*(v33 + 32))(*(v9 + 56) + *(v33 + 72) * v21, v7, v26);
      v28 = *(v9 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      *(v9 + 16) = v30;
      v16 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }

    v9 = v35;

    return v9;
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized static Constraints.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for GenerationSchema();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Constraints(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v43 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v43 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsO_ACtMd, &_s15TokenGeneration11ConstraintsO_ACtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = (&v43 + *(v26 + 56) - v25);
  v28 = a1;
  v29 = &v43 - v25;
  outlined init with copy of DocumentResourceEnvelope(v28, &v43 - v25, type metadata accessor for Constraints);
  outlined init with copy of DocumentResourceEnvelope(v46, v27, type metadata accessor for Constraints);
  v46 = v29;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of DocumentResourceEnvelope(v46, v16, type metadata accessor for Constraints);
      v32 = *v16;
      v31 = v16[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of DocumentResourceEnvelope(v46, v13, type metadata accessor for Constraints);
      v32 = *v13;
      v31 = v13[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_24;
      }

LABEL_12:
      if (v32 != *v27 || v31 != v27[1])
      {
        goto LABEL_22;
      }

LABEL_27:

      goto LABEL_28;
    }

    outlined init with copy of DocumentResourceEnvelope(v46, v10, type metadata accessor for Constraints);
    v32 = *v10;
    v31 = v10[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_24:

LABEL_25:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, &_s15TokenGeneration11ConstraintsO_ACtMd, &_s15TokenGeneration11ConstraintsO_ACtMR);
    goto LABEL_26;
  }

  v34 = v44;
  v33 = v45;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of DocumentResourceEnvelope(v46, v22, type metadata accessor for Constraints);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v34 + 32))(v6, v27, v33);
      v40 = static GenerationSchema.== infix(_:_:)();
      v42 = *(v34 + 8);
      v42(v6, v33);
      v42(v22, v33);
      outlined destroy of DocumentResourceEnvelope(v46, type metadata accessor for Constraints);
      return v40 & 1;
    }

    (*(v34 + 8))(v22, v33);
    goto LABEL_25;
  }

  outlined init with copy of DocumentResourceEnvelope(v46, v19, type metadata accessor for Constraints);
  v37 = *v19;
  v36 = v19[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_24;
  }

  if (v37 == *v27 && v36 == v27[1])
  {
    goto LABEL_27;
  }

LABEL_22:
  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
LABEL_28:
    outlined destroy of DocumentResourceEnvelope(v46, type metadata accessor for Constraints);
    v40 = 1;
    return v40 & 1;
  }

  outlined destroy of DocumentResourceEnvelope(v46, type metadata accessor for Constraints);
LABEL_26:
  v40 = 0;
  return v40 & 1;
}

uint64_t specialized static RequestMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v5, v11);
}

uint64_t specialized static ToolType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v44 = type metadata accessor for FunctionDescription(0);
  v2 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for FileGenerationParameters();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageGenerationParameters();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v46 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration8ToolTypeO_ACtMd, &_s15TokenGeneration8ToolTypeO_ACtMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v43 - v23;
  v26 = *(v25 + 56);
  outlined init with copy of DocumentResourceEnvelope(v49, &v43 - v23, type metadata accessor for ToolType);
  outlined init with copy of DocumentResourceEnvelope(v50, &v24[v26], type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v49 = v7;
    v50 = v8;
    v29 = v47;
    v28 = v48;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of DocumentResourceEnvelope(v24, v17, type metadata accessor for ToolType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v28 + 8))(v17, v4);
        goto LABEL_24;
      }

      v34 = v28;
      v35 = &v24[v26];
      v36 = v49;
      (*(v28 + 32))(v49, v35, v4);
      v33 = static FileGenerationParameters.== infix(_:_:)();
      v37 = *(v34 + 8);
      v37(v36, v4);
      v37(v17, v4);
    }

    else
    {
      outlined init with copy of DocumentResourceEnvelope(v24, v20, type metadata accessor for ToolType);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v29 + 8))(v20, v50);
        goto LABEL_24;
      }

      v38 = v29;
      v39 = *(v29 + 32);
      v40 = v50;
      v39(v11, &v24[v26], v50);
      v33 = static ImageGenerationParameters.== infix(_:_:)();
      v41 = *(v38 + 8);
      v41(v11, v40);
      v41(v20, v40);
    }

    outlined destroy of DocumentResourceEnvelope(v24, type metadata accessor for ToolType);
    return v33 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v30 = v46;
    outlined init with copy of DocumentResourceEnvelope(v24, v46, type metadata accessor for ToolType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = v45;
      outlined init with take of DocumentRegistrationEnvelope(&v24[v26], v45, type metadata accessor for FunctionDescription);
      if ((*v30 != *v31 || v30[1] != v31[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v30[2] != v31[2] || v30[3] != v31[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v32 = *(v44 + 24), (static Schema.== infix(_:_:)() & 1) == 0))
      {
        outlined destroy of DocumentResourceEnvelope(v31, type metadata accessor for FunctionDescription);
        outlined destroy of DocumentResourceEnvelope(v30, type metadata accessor for FunctionDescription);
        outlined destroy of DocumentResourceEnvelope(v24, type metadata accessor for ToolType);
        goto LABEL_25;
      }

      outlined destroy of DocumentResourceEnvelope(v31, type metadata accessor for FunctionDescription);
      outlined destroy of DocumentResourceEnvelope(v30, type metadata accessor for FunctionDescription);
      goto LABEL_19;
    }

    outlined destroy of DocumentResourceEnvelope(v30, type metadata accessor for FunctionDescription);
LABEL_24:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration8ToolTypeO_ACtMd, &_s15TokenGeneration8ToolTypeO_ACtMR);
LABEL_25:
    v33 = 0;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_24;
  }

LABEL_19:
  outlined destroy of DocumentResourceEnvelope(v24, type metadata accessor for ToolType);
  v33 = 1;
  return v33 & 1;
}

uint64_t specialized static PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v2 = type metadata accessor for Prompt.PreprocessedImageData();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.ImageEmbeddingData();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt.ImageData();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v62 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMd, &_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v62 - v29;
  v32 = &v62 + *(v31 + 56) - v29;
  outlined init with copy of DocumentResourceEnvelope(v70, &v62 - v29, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v71, v32, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v11;
    v42 = v69;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of DocumentResourceEnvelope(v30, v23, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v42 + 32))(v41, v32, v8);
        v37 = static Prompt.ImageData.== infix(_:_:)();
        v59 = *(v42 + 8);
        v59(v41, v8);
        v59(v23, v8);
        goto LABEL_28;
      }

      (*(v42 + 8))(v23, v8);
      goto LABEL_33;
    }

    outlined init with copy of DocumentResourceEnvelope(v30, v26, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v44 = *v26;
    v43 = *(v26 + 1);
    v45 = v26[16];
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = v32[16];
      if (v44 != *v32 || v43 != *(v32 + 1))
      {
        v48 = *(v32 + 1);
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) != 0 && ((v45 ^ v46) & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v61 = *(v32 + 1);

      if (v45 != v46)
      {
        goto LABEL_38;
      }

LABEL_39:
      outlined destroy of DocumentResourceEnvelope(v30, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
      v37 = 1;
      return v37 & 1;
    }

LABEL_22:

LABEL_33:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMd, &_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMR);
LABEL_34:
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of DocumentResourceEnvelope(v30, v20, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v51 = *v20;
    v50 = v20[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v51 != *v32 || v50 != *(v32 + 1))
      {
        v53 = *(v32 + 1);
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v54)
        {
          goto LABEL_39;
        }

LABEL_38:
        outlined destroy of DocumentResourceEnvelope(v30, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v55 = v64;
    outlined init with copy of DocumentResourceEnvelope(v30, v64, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v57 = v67;
      v56 = v68;
      v58 = v63;
      (*(v67 + 32))(v63, v32, v68);
      v37 = static Prompt.PreprocessedImageData.== infix(_:_:)();
      v38 = *(v57 + 8);
      v38(v58, v56);
      v39 = v55;
      v40 = v56;
      goto LABEL_25;
    }

    (*(v67 + 8))(v55, v68);
    goto LABEL_33;
  }

  outlined init with copy of DocumentResourceEnvelope(v30, v17, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v65 + 8))(v17, v66);
    goto LABEL_33;
  }

  v35 = v65;
  v34 = v66;
  v36 = v62;
  (*(v65 + 32))(v62, v32, v66);
  v37 = static Prompt.ImageEmbeddingData.== infix(_:_:)();
  v38 = *(v35 + 8);
  v38(v36, v34);
  v39 = v17;
  v40 = v34;
LABEL_25:
  v38(v39, v40);
LABEL_28:
  outlined destroy of DocumentResourceEnvelope(v30, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  return v37 & 1;
}

uint64_t specialized static FetchTokenizerMetadataResponse.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*(a1 + 16) == 0xFF)
  {
    if (v3 == 255)
    {
      return 1;
    }
  }

  else if (v3 != 255)
  {
    v4 = *a1;
    v5 = *a2;
    if (v2)
    {
      if ((v3 & 1) == 0 || v4 != v5)
      {
        return 0;
      }
    }

    else if ((v3 & 1) != 0 || v4 != v5 || a1[1] != a2[1])
    {
      return 0;
    }

    if (HIDWORD(v2) == *(a2 + 5))
    {
      return 1;
    }
  }

  return 0;
}

BOOL specialized static PromptTemplateInfoEnvelope.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingG0VTt1g5(*a1, *a2);
  if ((v17 & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v26 = v8;
  v18 = *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  v19 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v18, v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v18, &v16[v19], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      return 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_10:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
    return 0;
  }

  v22 = v26;
  (*(v5 + 32))(v26, &v16[v19], v4);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v12, v4);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return (v23 & 1) != 0;
}

uint64_t specialized ImageFormatEnvelope.init(sealing:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.ImageAttachment.Format();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69DA730] || v7 == *MEMORY[0x1E69DA728])
  {
    v9 = v7 != *MEMORY[0x1E69DA730];
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v12 = 0xD000000000000015;
    v13 = 0x80000001ABA41A40;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format, MEMORY[0x1E69DA738]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC5A5BC0](v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ImageEmbeddingEncodingEnvelope.init(sealing:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.ImageEmbeddingAttachment.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69DA780] || v7 == *MEMORY[0x1E69DA788])
  {
    v9 = v7 != *MEMORY[0x1E69DA780];
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v12 = 0xD000000000000021;
    v13 = 0x80000001ABA41A60;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding, MEMORY[0x1E69DA790]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC5A5BC0](v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ToolDefinitionsEnvelope.init(sealing:)(uint64_t a1)
{
  v2 = type metadata accessor for Tool.Type();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - v8;
  v10 = type metadata accessor for Tool();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v49 - v16;
  v17 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v49 - v21;
  v22 = Prompt.ToolDefinitions.tools.getter();
  v23 = *(v22 + 16);
  if (v23)
  {
    v69 = v15;
    v49 = v7;
    v52 = a1;
    v73 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v25 = *(v11 + 16);
    v24 = v11 + 16;
    v26 = v73;
    v27 = *(v24 + 64);
    v51 = v22;
    v28 = v22 + ((v27 + 32) & ~v27);
    v61 = *(v24 + 56);
    v62 = v25;
    v60 = (v3 + 88);
    v59 = *MEMORY[0x1E69A0DD0];
    v56 = *MEMORY[0x1E69A0DB8];
    v55 = *MEMORY[0x1E69A0DB0];
    v54 = *MEMORY[0x1E69A0DC8];
    v53 = *MEMORY[0x1E69A0DC0];
    v63 = v24;
    v58 = (v24 - 8);
    v50 = v3;
    v57 = (v3 + 96);
    v64 = v2;
    while (1)
    {
      v29 = v70;
      v30 = v10;
      v31 = v10;
      v32 = v9;
      v33 = v62;
      v62(v70, v28, v30);
      v34 = v69;
      v33(v69, v29, v31);
      v9 = v32;
      Tool.type.getter();
      v35 = (*v60)(v32, v2);
      if (v35 == v59)
      {
        v36 = *v58;
        (*v58)(v34, v31);
        (*v57)(v32, v2);
        v37 = type metadata accessor for Tool.Function();
        v38 = v65;
        (*(*(v37 - 8) + 32))(v65, v32, v37);
        v10 = v31;
      }

      else if (v35 == v56)
      {
        v36 = *v58;
        v10 = v31;
        (*v58)(v69, v31);
        (*v57)(v9, v2);
        v39 = type metadata accessor for ImageGenerationParameters();
        v38 = v65;
        (*(*(v39 - 8) + 32))(v65, v9, v39);
      }

      else
      {
        v10 = v31;
        if (v35 == v55)
        {
          v36 = *v58;
          (*v58)(v69, v31);
          (*v57)(v9, v2);
          v40 = type metadata accessor for FileGenerationParameters();
          v38 = v65;
          (*(*(v40 - 8) + 32))(v65, v9, v40);
        }

        else
        {
          if (v35 != v54 && v35 != v53)
          {
            v71 = 0;
            v72 = 0xE000000000000000;
            _StringGuts.grow(_:)(21);
            MEMORY[0x1AC5A5BC0](0xD000000000000013, 0x80000001ABA41750);
            v48 = v49;
            Tool.type.getter();
            _print_unlocked<A, B>(_:_:)();
            (*(v50 + 8))(v48, v2);
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v36 = *v58;
          (*v58)(v69, v31);
          v38 = v65;
        }
      }

      swift_storeEnumTagMultiPayload();
      v41 = v38;
      v42 = v68;
      outlined init with take of DocumentRegistrationEnvelope(v41, v68, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      v36(v70, v10);
      v73 = v26;
      v44 = *(v26 + 16);
      v43 = *(v26 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
        v42 = v68;
        v26 = v73;
      }

      *(v26 + 16) = v44 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v42, v26 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v44, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      v28 += v61;
      --v23;
      v2 = v64;
      if (!v23)
      {
        v45 = type metadata accessor for Prompt.ToolDefinitions();
        (*(*(v45 - 8) + 8))(v52, v45);

        return v26;
      }
    }
  }

  v46 = type metadata accessor for Prompt.ToolDefinitions();
  (*(*(v46 - 8) + 8))(a1, v46);
  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized PromptEnvelope.init(sealing:xpcData:)(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Prompt.SpecialToken();
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Prompt.Delimiter();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v57 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v48 - v12;
  v13 = type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = Prompt.string.getter();
  v19 = v18;
  v20 = Prompt.delimiters.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v48[2] = v19;
    v49 = v17;
    v50 = a2;
    v51 = a1;
    v65 = MEMORY[0x1E69E7CC0];
    v63 = v21;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v22 = v65;
    v24 = *(v8 + 16);
    v23 = v8 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v48[1] = v20;
    v26 = v20 + v25;
    v54 = *(v23 + 56);
    v55 = v24;
    v52 = (v23 - 8);
    v53 = v4 + 8;
    v56 = v23;
    v27 = (v4 + 8);
    do
    {
      v62 = v22;
      v28 = v64;
      v29 = v60;
      v30 = v55;
      v55(v64, v26, v60);
      v31 = v57;
      v30(v57, v28, v29);
      v16[4] = Prompt.Delimiter.position.getter();
      Prompt.Delimiter.token.getter();
      v32 = Prompt.SpecialToken.identifier.getter();
      v34 = v33;
      v35 = *v27;
      v36 = v61;
      (*v27)(v7, v61);
      *v16 = v32;
      v16[1] = v34;
      Prompt.Delimiter.token.getter();
      v37 = Prompt.SpecialToken.instance.getter();
      v39 = v38;
      v35(v7, v36);
      v16[2] = v37;
      v16[3] = v39;
      v16[5] = Prompt.Delimiter.priority.getter();
      Prompt.Delimiter.token.getter();
      v40 = v59;
      v41 = v16 + *(v59 + 32);
      Prompt.SpecialToken.locale.getter();
      v35(v7, v36);
      Prompt.Delimiter.token.getter();
      LOBYTE(v37) = Prompt.SpecialToken.annotationOnly.getter();
      v35(v7, v36);
      v42 = *v52;
      (*v52)(v31, v29);
      v22 = v62;
      v42(v64, v29);
      *(v16 + *(v40 + 36)) = v37 & 1;
      v65 = v22;
      v44 = *(v22 + 16);
      v43 = *(v22 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
        v22 = v65;
      }

      *(v22 + 16) = v44 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v16, v22 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
      v26 += v54;
      --v63;
    }

    while (v63);

    a2 = v50;
    a1 = v51;
    v17 = v49;
  }

  else
  {
  }

  v45 = Prompt.attachments.getter();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV10AttachmentVG_AF0F8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0gH0Vs5NeverOTg504_s15d12Generation14f11Envelope33_ijklmnopq57LLV7sealing7xpcDataAdA0C0V_3XPC13XPCDictionaryVztcfcAD010G14D0VAH0S0VXEfU_3XPC13XPCDictionaryVTf1cn_n(v45, a2);

  v46 = type metadata accessor for Prompt();
  (*(*(v46 - 8) + 8))(a1, v46);
  return v17;
}

BOOL specialized static TokenGenerationInterfaceVersion.isVersionSupported(requestVersion:)(uint64_t a1)
{
  v2 = type metadata accessor for Version();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v34 = Version.major.getter();
  if (one-time initialization token for currentInterfaceVersion != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
  v33 = Version.major.getter();
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.inference);
  v14 = v3[2];
  v14(v12, a1, v2);
  v14(v9, a1, v2);
  v14(v6, a1, v2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v16;
    v18 = v17;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v18 = 67110658;
    v19 = Version.major.getter();
    v20 = v3[1];
    v20(v12, v2);
    *(v18 + 4) = v19;
    *(v18 + 8) = 1024;
    v21 = Version.minor.getter();
    v20(v9, v2);
    *(v18 + 10) = v21;
    *(v18 + 14) = 1024;
    v22 = Version.patch.getter();
    v20(v6, v2);
    *(v18 + 16) = v22;
    *(v18 + 20) = 1024;
    *(v18 + 22) = Version.major.getter();
    *(v18 + 26) = 1024;
    *(v18 + 28) = Version.minor.getter();
    *(v18 + 32) = 1024;
    *(v18 + 34) = Version.patch.getter();
    *(v18 + 38) = 2080;
    v24 = v33;
    v23 = v34;
    if (v33 < v34)
    {
      v25 = 7630702;
    }

    else
    {
      v25 = 0;
    }

    if (v33 < v34)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v35);

    *(v18 + 40) = v27;
    _os_log_impl(&dword_1AB828000, v15, v32, "    Client Request Interface Version: v%u.%u.%u\n    Current Inference Provider Interface Version: v%u.%u.%u\n    Compatibility: Request interface is %s supported", v18, 0x30u);
    v28 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1AC5A6CD0](v28, -1, -1);
    MEMORY[0x1AC5A6CD0](v18, -1, -1);
  }

  else
  {
    v29 = v3[1];
    v29(v6, v2);
    v29(v9, v2);
    v29(v12, v2);

    v24 = v33;
    v23 = v34;
  }

  return v24 >= v23;
}

uint64_t specialized ModelInformationEnvelope.init(sealing:)(void *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = *(*a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v15 = a1[2];
    v16 = a1[1];
    v18 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v18;
    v5 = (v1 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 2);
      v17 = *(v5 - 3);
      v9 = *(v5 - 1);
      v10 = *v5;

      outlined copy of Data._Representation(v9, v10);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      v5 += 6;
      *(v18 + 16) = v12 + 1;
      v13 = (v18 + 48 * v12);
      v13[4] = v6;
      v13[5] = v7;
      v13[6] = v17;
      v13[7] = v8;
      v13[8] = v9;
      v13[9] = v10;
      --v3;
    }

    while (v3);
  }

  return v4;
}

__n128 specialized PromptRenderingEnvelope.init(sealing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Rendering.Source();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Prompt.Rendering.source.getter();
  v9 = Prompt.string.getter();
  v31 = v10;
  v32 = v9;
  v11 = Prompt.Rendering.Source.version.getter();
  v29 = v12;
  v30 = v11;
  (*(v5 + 8))(v8, v4);
  v28 = Prompt.Rendering.segments.getter();
  v13 = Prompt.Rendering.renderedString.getter();
  v27 = v14;
  v15 = Prompt.Rendering.originalPrompt.getter();
  v17 = v16;
  v18 = Prompt.Rendering.tokenIDs.getter();
  v19 = Prompt.Rendering.userInfo.getter();
  v20 = Prompt.Rendering.detokenizedString.getter();
  v22 = v21;
  v23 = type metadata accessor for Prompt.Rendering();
  (*(*(v23 - 8) + 8))(a1, v23);
  *&v34 = v32;
  *(&v34 + 1) = v31;
  *&v35 = v30;
  *(&v35 + 1) = v29;
  *&v36 = v28;
  *(&v36 + 1) = v13;
  v37.n128_u64[0] = v27;
  v37.n128_u64[1] = v15;
  *&v38 = v17;
  *(&v38 + 1) = v18;
  *&v39 = v19;
  *(&v39 + 1) = v20;
  v40 = v22;
  v41[0] = v32;
  v41[1] = v31;
  v41[2] = v30;
  v41[3] = v29;
  v41[4] = v28;
  v41[5] = v13;
  v41[6] = v27;
  v41[7] = v15;
  v41[8] = v17;
  v41[9] = v18;
  v41[10] = v19;
  v41[11] = v20;
  v41[12] = v22;
  outlined init with copy of PromptRenderingEnvelope(&v34, &v33);
  outlined destroy of PromptRenderingEnvelope(v41);
  v24 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v24;
  *(a2 + 96) = v40;
  v25 = v35;
  *a2 = v34;
  *(a2 + 16) = v25;
  result = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in PromptTemplateInfoEnvelope.unseal(_:)(uint64_t *a1)
{
  return partial apply for closure #1 in PromptTemplateInfoEnvelope.unseal(_:)(a1);
}

{
  v2 = *a1;
  v4[2] = *(v1 + 16);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VG_AF0F0V0Q0Vs5NeverOTg5Tm(partial apply for closure #1 in PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.unseal(_:), v4, v2, MEMORY[0x1E69DA8B8], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
  return PromptTemplateInfo.RichVariableBinding.init(components:)();
}

unint64_t lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

uint64_t outlined consume of PromptEnvelope?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined assign with take of PromptVariantEnvelope(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope and conformance ToolDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope and conformance ToolDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope()
{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

uint64_t specialized StreamingRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xEE0074706D6F7250;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA41290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41270 == a2)
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

unint64_t specialized CompileAdapterRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CompileAdapterRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized CompileAdapterResponse.DraftModelCompileResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D74666172446F6ELL && a2 == 0xEC0000006C65646FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4379646165726C61 && a2 == 0xEF64656C69706D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001ABA417C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69706D6F43746F6ELL && a2 == 0xEB0000000064656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C69706D6F63 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t specialized CountTokensRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CountTokensRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CompletePromptTemplateRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CompletePromptTemplateRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CompletePromptRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CompletePromptRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ClassifyPromptRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClassifyPromptRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized ClassificationResponseEnvelope.init(sealing:xpcData:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35 - v14;
  v16 = *a1;
  v18 = a1[2];
  v17 = a1[3];
  *&v44 = a1[1];
  *(&v44 + 1) = v18;
  *&v45 = v17;

  v19 = specialized ModelInformationEnvelope.init(sealing:)(&v44);
  v42 = v20;
  v43 = v19;
  v41 = v21;
  v22 = type metadata accessor for ClassificationResponse();
  v23 = *(a1 + *(v22 + 28));
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v22 + 24), v15, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    result = outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ClassificationResponse);
    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
  }

  else
  {
    (*(v5 + 32))(v11, v15, v4);
    (*(v5 + 16))(v8, v11, v4);
    specialized PromptRenderingEnvelope.init(sealing:)(v8, &v44);
    v39 = v45;
    v40 = v44;
    v38 = v46;
    v37 = v47;
    v36 = v48;
    v35 = v49;
    v25 = v50;
    outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ClassificationResponse);
    result = (*(v5 + 8))(v11, v4);
    v31 = v35;
    v30 = v36;
    v29 = v37;
    v28 = v38;
    v27 = v39;
    v26 = v40;
  }

  v33 = v42;
  v32 = v43;
  *a2 = v16;
  *(a2 + 8) = v32;
  v34 = v41;
  *(a2 + 16) = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v23;
  *(a2 + 40) = v26;
  *(a2 + 56) = v27;
  *(a2 + 72) = v28;
  *(a2 + 88) = v29;
  *(a2 + 104) = v30;
  *(a2 + 120) = v31;
  *(a2 + 136) = v25;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope()
{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope);
  }

  return result;
}

uint64_t specialized TextContentEnvelope.init(sealing:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for PromptCompletion.URLCitation(0);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptCompletion.Annotation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for AnnotationEnvelope(0);
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *a1;
  v23 = a1[1];
  v25 = a1[2];
  v26 = a1[3];
  v59 = a1[4];
  v60 = v26;
  v27 = *(v25 + 16);
  v58 = v25;
  if (v27)
  {
    v28 = v25;
    v66 = &v55 - v22;
    v56 = v24;
    v57 = a2;
    v70 = MEMORY[0x1E69E7CC0];
    v55 = v23;

    v64 = v20;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v29 = v64;
    v69 = v70;
    v30 = v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v65 = *(v13 + 72);
    do
    {
      outlined init with copy of DocumentResourceEnvelope(v30, v16, type metadata accessor for PromptCompletion.Annotation);
      *v29 = *v16;
      outlined init with take of DocumentRegistrationEnvelope(v16 + *(v12 + 20), v11, type metadata accessor for PromptCompletion.Annotation.Type);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = (v29 + *(v17 + 20));
      if (EnumCaseMultiPayload == 1)
      {
        v33 = v63;
        outlined init with take of DocumentRegistrationEnvelope(v11, v63, type metadata accessor for PromptCompletion.DocumentCitation);
        v34 = type metadata accessor for DocumentResourceIdentifier();
        (*(*(v34 - 8) + 32))(v32, v33, v34);
      }

      else
      {
        v35 = v61;
        outlined init with take of DocumentRegistrationEnvelope(v11, v61, type metadata accessor for PromptCompletion.URLCitation);
        v36 = *(v35 + 1);
        *v32 = *v35;
        v32[1] = v36;
        v37 = *(v62 + 20);
        v38 = v17;
        v39 = v16;
        v40 = v12;
        v41 = v11;
        v42 = *(type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0) + 20);
        v43 = type metadata accessor for URL();
        v44 = v32 + v42;
        v11 = v41;
        v12 = v40;
        v16 = v39;
        v17 = v38;
        v29 = v64;
        (*(*(v43 - 8) + 32))(v44, &v35[v37], v43);
      }

      type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
      swift_storeEnumTagMultiPayload();
      v45 = v66;
      outlined init with take of DocumentRegistrationEnvelope(v29, v66, type metadata accessor for AnnotationEnvelope);
      v46 = v69;
      v70 = v69;
      v48 = *(v69 + 16);
      v47 = *(v69 + 24);
      if (v48 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
        v29 = v64;
        v46 = v70;
      }

      *(v46 + 16) = v48 + 1;
      v49 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v69 = v46;
      outlined init with take of DocumentRegistrationEnvelope(v45, v46 + v49 + *(v67 + 72) * v48, type metadata accessor for AnnotationEnvelope);
      v30 += v65;
      --v27;
    }

    while (v27);
    v24 = v56;
    a2 = v57;
    v50 = v55;
    v51 = v69;
  }

  else
  {
    v50 = v23;

    v51 = MEMORY[0x1E69E7CC0];
  }

  v53 = v59;
  v52 = v60;
  outlined copy of Data?(v60, v59);
  outlined consume of Data?(0, 0xF000000000000000);

  outlined consume of Data?(v52, v53);

  outlined copy of Data?(v52, v53);

  result = outlined consume of Data?(v52, v53);
  *a2 = v24;
  a2[1] = v50;
  a2[2] = v51;
  a2[3] = v52;
  a2[4] = v53;
  return result;
}

uint64_t specialized PromptCompletionEnvelope.CandidateEnvelope.init(sealing:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v113 = a2;
  v132 = type metadata accessor for Prompt.ToolCall.Function();
  v119 = *(v132 - 8);
  v3 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v130 = &v106 - v6;
  v7 = type metadata accessor for Prompt.ToolCall.Kind();
  v118 = *(v7 - 8);
  v8 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v106 - v12;
  v129 = type metadata accessor for Prompt.ToolCall();
  v116 = *(v129 - 8);
  v14 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v106 - v17;
  v137 = type metadata accessor for PromptCompletion.FileContent(0);
  v18 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PromptCompletion.Content(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for PromptCompletion.Segment(0);
  v138 = *(v24 - 8);
  v25 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v142 = &v106 - v29;
  v140 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  v139 = *(v140 - 8);
  v30 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v141 = &v106 - v34;
  v35 = *a1;
  v134 = a1[1];
  v36 = a1[3];
  v107 = a1[2];
  v108 = v36;
  v37 = a1[5];
  v112 = a1[4];
  v111 = v37;
  v110 = a1[6];
  v38 = *(v35 + 16);
  v143 = v7;
  v133 = v10;
  v109 = v35;
  if (v38)
  {
    v125 = v13;
    *&v145 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v145;
    v40 = v35 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v138 = *(v138 + 72);
    v135 = v20;
    v126 = v27;
    while (1)
    {
      v41 = v142;
      outlined init with copy of DocumentResourceEnvelope(v40, v142, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of DocumentResourceEnvelope(v41, v27, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of DocumentResourceEnvelope(v27, v23, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
LABEL_8:
          outlined destroy of DocumentResourceEnvelope(v27, type metadata accessor for PromptCompletion.Segment);
          *v32 = *v23;
          goto LABEL_9;
        }

        outlined destroy of DocumentResourceEnvelope(v27, type metadata accessor for PromptCompletion.Segment);
        v44 = v136;
        outlined init with take of DocumentRegistrationEnvelope(v23, v136, type metadata accessor for PromptCompletion.FileContent);
        v45 = type metadata accessor for URL();
        (*(*(v45 - 8) + 16))(v32, v44, v45);
        v46 = v137;
        v47 = (v44 + *(v137 + 20));
        v49 = *v47;
        v48 = v47[1];
        v50 = type metadata accessor for FileContentEnvelope(0);
        v51 = &v32[v50[5]];
        *v51 = v49;
        *(v51 + 1) = v48;
        v52 = (v44 + *(v46 + 24));
        v53 = *v52;
        v54 = v52[1];
        v55 = &v32[v50[6]];
        *v55 = v53;
        *(v55 + 1) = v54;
        v56 = *(v46 + 28);
        v57 = v39;
        v58 = *(v44 + v56);

        v59 = v44;
        v27 = v126;
        outlined destroy of DocumentResourceEnvelope(v59, type metadata accessor for PromptCompletion.FileContent);
        *&v32[v50[7]] = v58;
        v39 = v57;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_8;
        }

        v149 = *v23;
        v150 = *(v23 + 8);
        v151 = *(v23 + 24);
        specialized TextContentEnvelope.init(sealing:)(&v149, v156);
        outlined destroy of DocumentResourceEnvelope(v27, type metadata accessor for PromptCompletion.Segment);
        v43 = v156[1];
        *v32 = v156[0];
        *(v32 + 1) = v43;
        *(v32 + 4) = v157;
      }

LABEL_9:
      v60 = v141;
      swift_storeEnumTagMultiPayload();
      outlined init with take of DocumentRegistrationEnvelope(v32, v60, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      outlined destroy of DocumentResourceEnvelope(v142, type metadata accessor for PromptCompletion.Segment);
      *&v145 = v39;
      v62 = *(v39 + 16);
      v61 = *(v39 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1);
        v60 = v141;
        v39 = v145;
      }

      *(v39 + 16) = v62 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v60, v39 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v62, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      v40 += v138;
      if (!--v38)
      {
        v10 = v133;
        v13 = v125;
        goto LABEL_14;
      }
    }
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v63 = v134;
  v64 = *(v134 + 16);
  v65 = MEMORY[0x1E69E7CC0];
  if (v64)
  {
    v106 = v39;
    v155 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
    if (*(v63 + 16))
    {
      v66 = 0;
      v67 = v63 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v126 = (v116 + 16);
      v125 = (v118 + 16);
      v124 = (v118 + 88);
      v123 = *MEMORY[0x1E69DA808];
      v122 = (v118 + 96);
      v121 = (v119 + 32);
      v120 = (v119 + 16);
      v119 += 8;
      v118 += 8;
      v117 = (v116 + 8);
      v65 = v155;
      v114 = *(v116 + 72);
      v116 = *(v116 + 16);
      v115 = (v64 - 1);
      while (1)
      {
        v141 = v66;
        v142 = v65;
        v68 = v127;
        v135 = v67;
        v69 = v129;
        v70 = v116;
        (v116)(v127);
        v71 = v128;
        v70(v128, v68, v69);
        v140 = Prompt.ToolCall.id.getter();
        v139 = v72;
        Prompt.ToolCall.kind.getter();
        v73 = v143;
        (*v125)(v10, v13, v143);
        v74 = (*v124)(v10, v73);
        if (v74 != v123)
        {
          break;
        }

        (*v122)(v10, v143);
        v75 = v130;
        v76 = v10;
        v77 = v132;
        (*v121)(v130, v76, v132);
        v78 = v131;
        (*v120)(v131, v75, v77);
        v138 = Prompt.ToolCall.Function.name.getter();
        v137 = v79;
        v136 = Prompt.ToolCall.Function.arguments.getter();
        v81 = v80;
        v82 = *v119;
        (*v119)(v78, v77);
        v82(v75, v77);
        (*v118)(v13, v143);
        v83 = Prompt.ToolCall._userInfo.getter();
        v85 = v84;
        v86 = *v117;
        (*v117)(v71, v69);
        v86(v68, v69);
        outlined consume of Data?(0, 0xF000000000000000);
        *&v145 = v140;
        *(&v145 + 1) = v139;
        *&v146 = v138;
        *(&v146 + 1) = v137;
        *&v147 = v136;
        *(&v147 + 1) = v81;
        *&v148 = v83;
        *(&v148 + 1) = v85;
        v149 = v140;
        *&v150 = v139;
        *(&v150 + 1) = v138;
        *&v151 = v137;
        *(&v151 + 1) = v136;
        v152 = v81;
        v153 = v83;
        v154 = v85;
        outlined init with copy of ToolCallEnvelope(&v145, v144);
        outlined destroy of ToolCallEnvelope(&v149);
        v65 = v142;
        v155 = v142;
        v88 = *(v142 + 16);
        v87 = *(v142 + 24);
        if (v88 >= v87 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
          v65 = v155;
        }

        *(v65 + 16) = v88 + 1;
        v89 = (v65 + (v88 << 6));
        v90 = v145;
        v91 = v146;
        v92 = v148;
        v89[4] = v147;
        v89[5] = v92;
        v89[2] = v90;
        v89[3] = v91;
        if (v115 == v141)
        {
          v39 = v106;
          goto LABEL_24;
        }

        v66 = v141 + 1;
        v67 = v135 + v114;
        v10 = v133;
        if ((v141 + 1) >= *(v134 + 16))
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      __break(1u);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_24:
    v93 = v107;
    if (v107)
    {
      swift_bridgeObjectRetain_n();
      v94 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v93);

      if (*(v94 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
        v95 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v95 = MEMORY[0x1E69E7CC8];
      }

      v97 = v39;
      v149 = v95;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v94, 1, &v149);
      v96 = v65;

      v98 = v149;
    }

    else
    {
      v96 = v65;
      v97 = v39;
      v98 = 0;
    }

    v99 = v112;
    v100 = v108;
    if (v112 >= 3)
    {
      v101 = v108;
    }

    else
    {
      v101 = 0;
    }

    outlined copy of FinishReason(v108, v112);
    v102 = v111;
    v103 = v110;
    outlined copy of Data._Representation(v111, v110);

    outlined consume of FinishReason(v100, v99);
    result = outlined consume of Data._Representation(v102, v103);
    v105 = v113;
    *v113 = v97;
    v105[1] = v96;
    v105[2] = v98;
    v105[3] = v101;
    v105[4] = v99;
    v105[5] = v102;
    v105[6] = v103;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope()
{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope()
{
  result = lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope;
  if (!lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope;
  if (!lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope()
{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpeculationParameters and conformance SpeculationParameters()
{
  result = lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters;
  if (!lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters;
  if (!lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters;
  if (!lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}