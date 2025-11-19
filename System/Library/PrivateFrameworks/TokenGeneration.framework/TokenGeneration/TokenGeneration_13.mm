double PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.unseal()@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v12 = v1[1];
  v13 = v3;
  v4 = *(v1 + 4);
  outlined init with copy of String(&v13, v11);
  outlined init with copy of String(&v12, v11);
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(v4);
  if (*(v5 + 16))
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v5 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v11[0] = v7;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, 1, v11);
  v8 = v11[0];
  v10 = v12;
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.unseal()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PromptCompletion.Annotation(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v1[1];
  v42 = *v1;
  v43 = v22;
  v23 = v1[2];
  v44 = v1[3];
  v40 = v1[4];
  v41 = v23;
  v24 = (v1 + *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0) + 28));
  v39 = *v24;
  v25 = type metadata accessor for AnnotationEnvelope(0);
  outlined init with copy of DocumentResourceEnvelope(v24 + *(v25 + 20), v13, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v13, v6, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
    v26 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v26 - 8) + 32))(v17, v6, v26);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v13, v9, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
    v27 = *v9;
    v28 = *(v9 + 1);
    v29 = *(v38 + 20);
    v30 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 32))(&v17[v30], &v9[v29], v31);
    *v17 = v27;
    *(v17 + 1) = v28;
  }

  swift_storeEnumTagMultiPayload();
  *v21 = v39;
  outlined init with take of DocumentRegistrationEnvelope(v17, v21 + *(v18 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
  v32 = v43;
  *a1 = v42;
  a1[1] = v32;
  v33 = v40;
  v34 = v44;
  a1[2] = v41;
  a1[3] = v34;
  a1[4] = v33;
  v35 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  outlined init with take of DocumentRegistrationEnvelope(v21, a1 + *(v35 + 28), type metadata accessor for PromptCompletion.Annotation);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ModelInformationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ModelInformationiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = v3[4];
    v14[15] = 1;
    lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f8RenderediJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f8RenderediJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 4);
    v15 = *(v3 + 6);
    v33 = *(v3 + 5);
    v34 = v15;
    v16 = *(v3 + 2);
    v30[0] = *(v3 + 1);
    v30[1] = v16;
    v17 = *(v3 + 4);
    v19 = *(v3 + 1);
    v18 = *(v3 + 2);
    v31 = *(v3 + 3);
    v32 = v17;
    v20 = *(v3 + 6);
    v27 = v33;
    v28 = v20;
    v23 = v19;
    v24 = v18;
    v35 = v3[14];
    v29 = v3[14];
    v25 = v31;
    v26 = v14;
    v36 = 1;
    outlined init with copy of PromptRenderingEnvelope(v30, v21);
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21[4] = v27;
    v21[5] = v28;
    v22 = v29;
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v21[3] = v26;
    outlined destroy of PromptRenderingEnvelope(v21);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f10ModerationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f10ModerationiJ0V10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO019CandidateModerationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO019CandidateModerationiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v16[15] = 2;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41B80 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E697265646E6572;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E697265646E6572 && a2 == 0xE900000000000067)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.init(from:)(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 14);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x6974617265646F6DLL;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6974617265646F6DLL && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys()
{
  v1 = 0x6974617265646F6DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.encode(to:)(a1);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO09TextDeltaiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO09TextDeltaiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 7);
    v22 = v21;
    v20[23] = 4;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v22, v20, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v21, *(&v21 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v18[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v18[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0) + 28);
    v18[12] = 3;
    type metadata accessor for AnnotationEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for AnnotationEnvelope(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMR);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();
  v28 = v10;
  v16 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = a1;
  v18 = v6;
  v20 = v26;
  v19 = v27;
  v33 = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v21;
  v29 = v21;
  v32 = 1;
  v14[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[3] = v22;
  v31 = 2;
  v24 = 0;
  v14[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = 3;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v28, v19);
  outlined init with take of DocumentRegistrationEnvelope(v18, v14 + *(v11 + 28), type metadata accessor for AnnotationEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v14, v25, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return outlined destroy of DocumentResourceEnvelope(v14, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x49746E656D676573;
  v3 = 0x746C654474786574;
  if (v1 != 3)
  {
    v3 = 0x6F666E4972657375;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 0x697461746F6E6E61;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO013ToolCallDeltaiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO013ToolCallDeltaiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v24) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 5);
    v25 = v24;
    v23[23] = 5;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v25, v23, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v24, *(&v24 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 5);
    v20 = v19;
    v18[23] = 3;
    outlined init with copy of ImageContentEnvelope(&v20, v18);
    lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioeiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioeiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 5);
    v20 = v19;
    v18[23] = 3;
    outlined init with copy of AudioContentEnvelope(&v20, v18);
    lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v18[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v18[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0) + 28);
    v18[12] = 3;
    type metadata accessor for FileContentEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for FileContentEnvelope(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMR);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();
  v28 = v10;
  v16 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = a1;
  v18 = v6;
  v20 = v26;
  v19 = v27;
  v33 = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v21;
  v29 = v21;
  v32 = 1;
  v14[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[3] = v22;
  v31 = 2;
  v24 = 0;
  v14[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = 3;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v28, v19);
  outlined init with take of DocumentRegistrationEnvelope(v18, v14 + *(v11 + 28), type metadata accessor for FileContentEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v14, v25, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return outlined destroy of DocumentResourceEnvelope(v14, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO017CandidateFinishediJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO017CandidateFinishediJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys();
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
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 2);
    v17[0] = 2;
    lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + 3);
    v19 = v18;
    v17[23] = 3;
    outlined init with copy of Data(&v19, v17);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05UsageiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05UsageiJ0V10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ResponseMetadataiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ResponseMetadataiJ0V10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    outlined copy of Data._Representation(v14, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.CodingKeys.stringValue.getter(char a1)
{
  result = 0x64657265646E6572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x746C654474786574;
      break;
    case 5:
      result = 0x697461746F6E6E61;
      break;
    case 6:
      result = 0x6C6C61436C6F6F74;
      break;
    case 7:
      v3 = 0x476567616D69;
      goto LABEL_15;
    case 8:
      v3 = 0x476F69647561;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 9:
      result = 0x656E6547656C6966;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6567617375;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.encode(to:)(void *a1)
{
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMR);
  v141 = *(v171 - 8);
  v2 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v130 - v3;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMR);
  v140 = *(v169 - 8);
  v4 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v130 - v5;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMR);
  v139 = *(v168 - 8);
  v6 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v130 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMR);
  v138 = *(v165 - 8);
  v8 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v130 - v9;
  v162 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
  v10 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMR);
  v137 = *(v161 - 8);
  v12 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v130 - v13;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMR);
  v136 = *(v159 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v130 - v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMR);
  v135 = *(v158 - 8);
  v16 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v130 - v17;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMR);
  v134 = *(v155 - 8);
  v18 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v130 - v19;
  v151 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
  v20 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMR);
  v133 = *(v152 - 8);
  v22 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v130 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMR);
  v132 = *(v149 - 8);
  v24 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v130 - v25;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMR);
  v131 = *(v147 - 8);
  v26 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v130 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMR);
  v145 = *(v28 - 8);
  v146 = v28;
  v29 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v143 = &v130 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMR);
  v142 = *(v31 - 8);
  v32 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v130 - v33;
  v35 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v172 = *(v191 - 8);
  v39 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v41 = &v130 - v40;
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();
  v174 = v41;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v173, v38, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v105 = *(v38 + 5);
      v187 = *(v38 + 4);
      v188 = v105;
      v189 = *(v38 + 6);
      v190 = *(v38 + 14);
      v106 = *(v38 + 1);
      v183 = *v38;
      v184 = v106;
      v107 = *(v38 + 3);
      v185 = *(v38 + 2);
      v186 = v107;
      LOBYTE(v175) = 1;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();
      v108 = v143;
      v109 = v191;
      v110 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v179 = v187;
      v180 = v188;
      v181 = v189;
      v182 = v190;
      v175 = v183;
      v176 = v184;
      v177 = v185;
      v178 = v186;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope();
      v111 = v146;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v145 + 8))(v108, v111);
      (*(v172 + 8))(v110, v109);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(&v183);
    case 2u:
      v80 = *v38;
      v81 = *(v38 + 1);
      v82 = *(v38 + 2);
      LOBYTE(v183) = 2;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();
      v83 = v144;
      v84 = v191;
      v85 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v183 = v80;
      *(&v183 + 1) = v81;
      *&v184 = v82;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope();
      v86 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v131 + 8))(v83, v86);
      (*(v172 + 8))(v85, v84);

    case 3u:
      v88 = *v38;
      v87 = *(v38 + 1);
      v90 = *(v38 + 2);
      v89 = *(v38 + 3);
      v91 = *(v38 + 4);
      LOBYTE(v183) = 3;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();
      v92 = v148;
      v93 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v183 = v88;
      *(&v183 + 1) = v87;
      v173 = v87;
      *&v184 = v90;
      *(&v184 + 1) = v89;
      *&v185 = v91;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope();
      v94 = v149;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v132 + 8))(v92, v94);
      (*(v172 + 8))(v93, v191);

    case 4u:
      v58 = *(v38 + 3);
      v185 = *(v38 + 2);
      v186 = v58;
      *&v187 = *(v38 + 8);
      v59 = *(v38 + 1);
      v183 = *v38;
      v184 = v59;
      LOBYTE(v175) = 4;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();
      v60 = v150;
      v61 = v191;
      v62 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v177 = v185;
      v178 = v186;
      *&v179 = v187;
      v175 = v183;
      v176 = v184;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope();
      v63 = v152;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v133 + 8))(v60, v63);
      (*(v172 + 8))(v62, v61);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(&v183);
    case 5u:
      v74 = v153;
      outlined init with take of DocumentRegistrationEnvelope(v38, v153, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      LOBYTE(v183) = 5;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();
      v112 = v154;
      v76 = v191;
      v77 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      v113 = v155;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v134 + 8))(v112, v113);
      v79 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope;
      goto LABEL_13;
    case 6u:
      v114 = *(v38 + 3);
      v185 = *(v38 + 2);
      v186 = v114;
      v115 = *(v38 + 5);
      v187 = *(v38 + 4);
      v188 = v115;
      v116 = *(v38 + 1);
      v183 = *v38;
      v184 = v116;
      LOBYTE(v175) = 6;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();
      v117 = v156;
      v118 = v191;
      v119 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v177 = v185;
      v178 = v186;
      v179 = v187;
      v180 = v188;
      v175 = v183;
      v176 = v184;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope();
      v120 = v158;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v135 + 8))(v117, v120);
      (*(v172 + 8))(v119, v118);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(&v183);
    case 7u:
      v95 = *(v38 + 1);
      v173 = *v38;
      v96 = *(v38 + 2);
      v97 = *(v38 + 3);
      v98 = *(v38 + 5);
      v170 = *(v38 + 4);
      v171 = v96;
      v99 = *(v38 + 6);
      LOBYTE(v183) = 7;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();
      v100 = v157;
      v101 = v191;
      v102 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v183 = v173;
      *(&v183 + 1) = v95;
      v173 = v95;
      *&v184 = v171;
      *(&v184 + 1) = v97;
      *&v185 = v170;
      *(&v185 + 1) = v98;
      *&v186 = v99;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope();
      v103 = v159;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v104 = v136;
      goto LABEL_17;
    case 8u:
      v127 = *(v38 + 1);
      v173 = *v38;
      v128 = *(v38 + 2);
      v129 = *(v38 + 3);
      v98 = *(v38 + 5);
      v170 = *(v38 + 4);
      v171 = v128;
      v99 = *(v38 + 6);
      LOBYTE(v183) = 8;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();
      v100 = v160;
      v101 = v191;
      v102 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v183 = v173;
      *(&v183 + 1) = v127;
      v173 = v127;
      *&v184 = v171;
      *(&v184 + 1) = v129;
      *&v185 = v170;
      *(&v185 + 1) = v98;
      *&v186 = v99;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope();
      v103 = v161;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v104 = v137;
LABEL_17:
      (*(v104 + 8))(v100, v103);
      (*(v172 + 8))(v102, v101);

      v72 = v98;
      v73 = v99;
      goto LABEL_18;
    case 9u:
      v74 = v163;
      outlined init with take of DocumentRegistrationEnvelope(v38, v163, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      LOBYTE(v183) = 9;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();
      v75 = v164;
      v76 = v191;
      v77 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      v78 = v165;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v138 + 8))(v75, v78);
      v79 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope;
LABEL_13:
      outlined destroy of DocumentResourceEnvelope(v74, v79);
      return (*(v172 + 8))(v77, v76);
    case 0xAu:
      v121 = *(v38 + 1);
      v183 = *v38;
      v184 = v121;
      v122 = *(v38 + 3);
      v185 = *(v38 + 2);
      v186 = v122;
      LOBYTE(v175) = 10;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();
      v123 = v166;
      v124 = v191;
      v125 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v175 = v183;
      v176 = v184;
      v177 = v185;
      v178 = v186;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope();
      v126 = v168;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v139 + 8))(v123, v126);
      (*(v172 + 8))(v125, v124);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope(&v183);
    case 0xBu:
      v50 = *v38;
      v49 = *(v38 + 1);
      v51 = *(v38 + 2);
      v52 = *(v38 + 3);
      LOBYTE(v183) = 11;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();
      v53 = v167;
      v54 = v191;
      v55 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v183 = v50;
      *(&v183 + 1) = v49;
      *&v184 = v51;
      *(&v184 + 1) = v52;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope();
      v56 = v169;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v140 + 8))(v53, v56);
      (*(v172 + 8))(v55, v54);
      goto LABEL_4;
    case 0xCu:
      v65 = *v38;
      v64 = *(v38 + 1);
      v66 = *(v38 + 2);
      v67 = *(v38 + 3);
      LOBYTE(v183) = 12;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();
      v68 = v170;
      v69 = v191;
      v70 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v183 = v65;
      *(&v183 + 1) = v64;
      *&v184 = v66;
      *(&v184 + 1) = v67;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope();
      v71 = v171;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v141 + 8))(v68, v71);
      (*(v172 + 8))(v70, v69);

      v72 = v66;
      v73 = v67;
LABEL_18:
      result = outlined consume of Data._Representation(v72, v73);
      break;
    default:
      v43 = *v38;
      v173 = *(v38 + 1);
      v44 = v173;
      v45 = *(v38 + 2);
      v170 = *(v38 + 3);
      v171 = v43;
      v46 = *(v38 + 4);
      LOBYTE(v183) = 0;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();
      v47 = v191;
      v48 = v174;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v183 = v171;
      *(&v183 + 1) = v44;
      *&v184 = v45;
      *(&v184 + 1) = v170;
      *&v185 = v46;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v142 + 8))(v34, v31);
      (*(v172 + 8))(v48, v47);

LABEL_4:

      break;
  }

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMR);
  v167 = *(v186 - 8);
  v3 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v198 = &v147 - v4;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMR);
  v166 = *(v185 - 8);
  v5 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v197 = &v147 - v6;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMR);
  v182 = *(v184 - 8);
  v7 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v196 = &v147 - v8;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMR);
  v165 = *(v183 - 8);
  v9 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v195 = &v147 - v10;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMR);
  v164 = *(v181 - 8);
  v11 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v194 = &v147 - v12;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMR);
  v163 = *(v180 - 8);
  v13 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v193 = &v147 - v14;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMR);
  v177 = *(v179 - 8);
  v15 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v192 = &v147 - v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMR);
  v162 = *(v178 - 8);
  v17 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v191 = &v147 - v18;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMR);
  v175 = *(v176 - 8);
  v19 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v202 = &v147 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMR);
  v161 = *(v174 - 8);
  v21 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v190 = &v147 - v22;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMR);
  v160 = *(v173 - 8);
  v23 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v189 = &v147 - v24;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMR);
  v172 = *(v201 - 8);
  v25 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v188 = &v147 - v26;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMR);
  v170 = *(v171 - 8);
  v27 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v187 = &v147 - v28;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v203 = *(v200 - 8);
  v29 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v31 = &v147 - v30;
  v204 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  v32 = *(*(v204 - 8) + 64);
  MEMORY[0x1EEE9AC00](v204);
  v159 = (&v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v158 = (&v147 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v157 = (&v147 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v169 = &v147 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v156 = (&v147 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v155 = (&v147 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v154 = &v147 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v168 = &v147 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v153 = &v147 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v147 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v147 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v147 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v147 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v147 - v63;
  v66 = a1[3];
  v65 = a1[4];
  v206 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v66);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();
  v199 = v31;
  v67 = v217;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v67)
  {
LABEL_9:
    v89 = v206;
    return __swift_destroy_boxed_opaque_existential_0(v89);
  }

  v148 = v61;
  v149 = v55;
  v150 = v52;
  v151 = v58;
  v68 = v201;
  v69 = v202;
  v217 = 0;
  v70 = v204;
  v152 = v64;
  v71 = v205;
  v72 = v200;
  v73 = v199;
  v74 = KeyedDecodingContainer.allKeys.getter();
  v75 = (2 * *(v74 + 16)) | 1;
  v213 = v74;
  v214 = v74 + 32;
  v215 = 0;
  v216 = v75;
  v76 = specialized Collection<>.popFirst()();
  if (v215 != v216 >> 1)
  {
LABEL_6:
    v82 = type metadata accessor for DecodingError();
    swift_allocError();
    v84 = v83;
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v84 = v70;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x1E69E6AF8], v82);
    swift_willThrow();
    v86 = *(v203 + 8);
    v87 = v73;
    v88 = v72;
LABEL_7:
    v86(v87, v88);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v77 = v72;
  v72 = v70;
  v78 = v217;
  switch(v76)
  {
    case 0:
      v207[0] = 0;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();
      v79 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v78)
      {
        lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope();
        v80 = v171;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v170 + 8))(v79, v80);
        (*(v203 + 8))(v73, v77);
        swift_unknownObjectRelease();
        v81 = v148;
        *v148 = *v207;
        *(v81 + 8) = *&v207[8];
        *(v81 + 24) = *&v207[24];
        goto LABEL_41;
      }

      (*(v203 + 8))(v73, v77);
      goto LABEL_8;
    case 1:
      v207[0] = 1;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();
      v118 = v188;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        v86 = *(v203 + 8);
        v87 = v73;
        goto LABEL_36;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v131 = (v203 + 8);
      (*(v172 + 8))(v118, v68);
      (*v131)(v73, v77);
      swift_unknownObjectRelease();
      v137 = v210;
      v136 = v151;
      *(v151 + 4) = v209;
      *(v136 + 80) = v137;
      *(v136 + 96) = v211;
      *(v136 + 112) = v212;
      v138 = *&v207[16];
      *v136 = *v207;
      *(v136 + 16) = v138;
      v139 = v208;
      *(v136 + 32) = *&v207[32];
      *(v136 + 48) = v139;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v140 = v152;
      outlined init with take of DocumentRegistrationEnvelope(v136, v152, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
      v71 = v205;
      v141 = v206;
      goto LABEL_43;
    case 2:
      v207[0] = 2;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();
      v106 = v189;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope();
      v107 = v173;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v108 = v203;
      (*(v160 + 8))(v106, v107);
      (*(v108 + 8))(v73, v77);
      swift_unknownObjectRelease();
      v136 = v149;
      *v149 = *v207;
      *(v136 + 8) = *&v207[8];
      goto LABEL_39;
    case 3:
      v207[0] = 3;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();
      v109 = v190;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope();
      v110 = v174;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v111 = v203;
      (*(v161 + 8))(v109, v110);
      (*(v111 + 8))(v73, v77);
      swift_unknownObjectRelease();
      v112 = *&v207[16];
      v81 = v150;
      *v150 = *v207;
      *(v81 + 2) = v112;
      *(v81 + 24) = *&v207[24];
      goto LABEL_41;
    case 4:
      v207[0] = 4;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();
      v96 = v69;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope();
      v97 = v176;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v98 = (v203 + 8);
      (*(v175 + 8))(v96, v97);
      (*v98)(v73, v77);
      swift_unknownObjectRelease();
      v134 = v208;
      v81 = v153;
      *(v153 + 2) = *&v207[32];
      v81[3] = v134;
      *(v81 + 8) = v209;
      v135 = *&v207[16];
      *v81 = *v207;
      v81[1] = v135;
      goto LABEL_41;
    case 5:
      v207[0] = 5;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();
      v119 = v191;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      v104 = v168;
      v120 = v178;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v162 + 8))(v119, v120);
      (*(v203 + 8))(v73, v77);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 6:
      v207[0] = 6;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();
      v121 = v192;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope();
      v122 = v179;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v123 = (v203 + 8);
      (*(v177 + 8))(v121, v122);
      (*v123)(v73, v77);
      swift_unknownObjectRelease();
      v124 = v208;
      v81 = v154;
      *(v154 + 2) = *&v207[32];
      v81[3] = v124;
      v125 = v210;
      v81[4] = v209;
      v81[5] = v125;
      v126 = *&v207[16];
      *v81 = *v207;
      v81[1] = v126;
      goto LABEL_41;
    case 7:
      v207[0] = 7;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();
      v113 = v193;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope();
      v114 = v180;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v115 = v203;
      (*(v163 + 8))(v113, v114);
      (*(v115 + 8))(v73, v77);
      swift_unknownObjectRelease();
      v116 = *&v207[16];
      v117 = v208;
      v81 = v155;
      *v155 = *v207;
      v81[1] = v116;
      v81[2] = *&v207[32];
      *(v81 + 6) = v117;
      goto LABEL_41;
    case 8:
      v207[0] = 8;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();
      v130 = v194;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope();
      v132 = v181;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v133 = v203;
      (*(v164 + 8))(v130, v132);
      (*(v133 + 8))(v73, v77);
      swift_unknownObjectRelease();
      v145 = *&v207[16];
      v146 = v208;
      v81 = v156;
      *v156 = *v207;
      v81[1] = v145;
      v81[2] = *&v207[32];
      *(v81 + 6) = v146;
      goto LABEL_41;
    case 9:
      v207[0] = 9;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();
      v103 = v195;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      v104 = v169;
      v105 = v183;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v165 + 8))(v103, v105);
      (*(v203 + 8))(v73, v77);
      swift_unknownObjectRelease();
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v142 = v104;
      goto LABEL_42;
    case 10:
      v207[0] = 10;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();
      v127 = v196;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope();
      v128 = v184;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v129 = (v203 + 8);
      (*(v182 + 8))(v127, v128);
      (*v129)(v73, v77);
      swift_unknownObjectRelease();
      v143 = *&v207[16];
      v81 = v157;
      *v157 = *v207;
      v81[1] = v143;
      v144 = v208;
      v81[2] = *&v207[32];
      v81[3] = v144;
      goto LABEL_41;
    case 11:
      v207[0] = 11;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();
      v91 = v197;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope();
      v93 = v185;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v94 = v203;
      (*(v166 + 8))(v91, v93);
      (*(v94 + 8))(v73, v77);
      swift_unknownObjectRelease();
      v95 = *&v207[8];
      v81 = v158;
      *v158 = *v207;
      *(v81 + 1) = v95;
      v81[1] = *&v207[16];
      goto LABEL_41;
    case 12:
      v207[0] = 12;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();
      v99 = v198;
      v92 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
LABEL_35:
        v86 = *(v203 + 8);
        v87 = v73;
LABEL_36:
        v88 = v92;
        goto LABEL_7;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope();
      v100 = v186;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v203;
      (*(v167 + 8))(v99, v100);
      (*(v101 + 8))(v73, v77);
      swift_unknownObjectRelease();
      v102 = *&v207[8];
      v81 = v159;
      *v159 = *v207;
      *(v81 + 1) = v102;
      v81[1] = *&v207[16];
LABEL_41:
      swift_storeEnumTagMultiPayload();
      v142 = v81;
LABEL_42:
      v140 = v152;
      outlined init with take of DocumentRegistrationEnvelope(v142, v152, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
      v141 = v206;
LABEL_43:
      outlined init with take of DocumentRegistrationEnvelope(v140, v71, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
      v89 = v141;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v89);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E6F6974636E7566;
  v3 = 0x746E656D75677261;
  if (v1 != 4)
  {
    v3 = 0x6F666E4972657375;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.init(from:)(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 0x6567616D69;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 0x6F69647561;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 1701603686;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys()
{
  v1 = 0x65526873696E6966;
  if (*v0 != 2)
  {
    v1 = 0x617461646174656DLL;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.init(from:)(a1, v7);
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

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.encode(to:)(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x6567617375;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000061746144)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65706F6C65766E65 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionStreamElementEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope and conformance PromptCompletionStreamElementEnvelope.Envelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PromptCompletionStreamElementEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope and conformance PromptCompletionStreamElementEnvelope.Envelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for PromptCompletionStreamElementEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope and conformance PromptCompletionStreamElementEnvelope.Envelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolChoiceEnvelope.CodingKeys()
{
  v1 = 1701736302;
  v2 = 0x6465726975716572;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974636E7566;
  }

  if (*v0)
  {
    v1 = 0x6974616D6F747561;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolChoiceEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ToolChoiceEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.RequiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.RequiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolChoiceEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v29 - v19;
  v21 = v1[1];
  v29[1] = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v21)
  {
    case 0:
      v41 = 0;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();
      v24 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v16, v13);
      return (*(v39 + 8))(v20, v24);
    case 1:
      v42 = 1;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();
      v24 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v12, v32);
      return (*(v39 + 8))(v20, v24);
    case 2:
      v43 = 2;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();
      v23 = v33;
      v24 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v23, v35);
      return (*(v39 + 8))(v20, v24);
  }

  v44 = 3;
  lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();
  v26 = v36;
  v27 = v40;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v28 = v38;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v37 + 8))(v26, v28);
  return (*(v39 + 8))(v20, v27);
}

uint64_t ToolChoiceEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v51 = *(v55 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v44 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v46 = *(v49 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v44 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v48 = *(v50 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();
  v21 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v13;
    v44 = v10;
    v45 = 0;
    v23 = v9;
    v24 = v52;
    v25 = v53;
    v56 = v15;
    v26 = v54;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = specialized Collection<>.popFirst()();
    if (v29 == 4 || v60 != v61 >> 1)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v36 = &type metadata for ToolChoiceEnvelope;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
LABEL_9:
      (*(v56 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v57);
    }

    if (v29 <= 1u)
    {
      if (v29)
      {
        v62 = 1;
        lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();
        v41 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v41)
        {
          (*(v48 + 8))(v23, v50);
          (*(v56 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 1;
          v33 = v26;
          goto LABEL_21;
        }
      }

      else
      {
        v62 = 0;
        lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();
        v30 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v30)
        {
          (*(v47 + 8))(v22, v44);
          (*(v56 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = v26;
LABEL_21:
          *v33 = v31;
          v33[1] = v32;
          return __swift_destroy_boxed_opaque_existential_0(v57);
        }
      }

      goto LABEL_9;
    }

    v33 = v26;
    v39 = v56;
    if (v29 == 2)
    {
      v62 = 2;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();
      v40 = v45;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v40)
      {
        (*(v46 + 8))(v24, v49);
        v33 = v26;
        (*(v39 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 2;
        goto LABEL_21;
      }

      (*(v39 + 8))(v18, v14);
      goto LABEL_10;
    }

    v62 = 3;
    lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();
    v42 = v45;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v42)
    {
      v31 = KeyedDecodingContainer.decode(_:forKey:)();
      v32 = v43;
      (*(v51 + 8))(v25, v55);
      (*(v39 + 8))(v18, v14);
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    (*(v39 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v57);
}

uint64_t UsageEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration13UsageEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration13UsageEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance UsageEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UsageEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABA41BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001ABA41BE0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UsageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UsageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UsageEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized UsageEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UsageEnvelope(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return UsageEnvelope.encode(to:)(a1);
}

uint64_t ModerationEnvelope.ProbabilityEnvelope.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O14HighCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O14HighCodingKeysOGMR);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O16MediumCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O16MediumCodingKeysOGMR);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O13LowCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O13LowCodingKeysOGMR);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O20NegligibleCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O20NegligibleCodingKeysOGMR);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O10CodingKeysOGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys();
      v12 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t ModerationEnvelope.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OGMd, &_sSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OGMR);
  lazy protocol witness table accessor for type [String : ModerationEnvelope.ProbabilityEnvelope] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : ModerationEnvelope.ProbabilityEnvelope] and conformance <> [A : B], lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t FinishReasonEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMR);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMR);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMR);
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMR);
  v29 = *(v14 - 8);
  v15 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();
  v24 = v39;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v24)
  {
    if (v24 == 1)
    {
      v42 = 2;
      lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();
      v26 = v30;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v33 + 8))(v26, v34);
    }

    else if (v24 == 2)
    {
      v43 = 3;
      lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();
      v25 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v36 + 8))(v25, v37);
    }

    else
    {
      v41 = 1;
      lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v31 + 8))(v13, v27);
    }
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v29 + 8))(v17, v14);
  }

  return (*(v19 + 8))(v22, v18);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys()
{
  v1 = 0x626967696C67656ELL;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 1751607656;
  }

  if (*v0)
  {
    v1 = 7827308;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ModerationEnvelope.ProbabilityEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ModerationEnvelope.ProbabilityEnvelope@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ModerationEnvelope.ProbabilityEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModerationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E69746172 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ModerationEnvelope@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized ModerationEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.InvokedToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.InvokedToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestMetadataEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23RequestMetadataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23RequestMetadataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v20 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[6];
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RequestMetadataEnvelope.CodingKeys()
{
  v1 = 0x6F666E4972657375;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestMetadataEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized RequestMetadataEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestMetadataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestMetadataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance RequestMetadataEnvelope@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized RequestMetadataEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance RequestMetadataEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return RequestMetadataEnvelope.encode(to:)(a1);
}

uint64_t closure #2 in PromptEnvelope.unseal(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.AttachmentContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  PromptEnvelope.AttachmentContentEnvelope.unseal(_:)(a2, (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v7 = type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
  v8 = *(a1 + *(v7 + 20));
  v9 = *(a1 + *(v7 + 24));
  return Prompt.Attachment.init(content:position:priority:)();
}

uint64_t PromptEnvelope.DelimiterEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v21[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v21[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
    v18 = *(v17 + 32);
    v21[11] = 4;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = *(v3 + *(v17 + 36));
    v21[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptEnvelope.DelimiterEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMR);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v31 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v18;
  v30 = 1;
  v15[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[3] = v19;
  v29 = 2;
  v15[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = 3;
  v15[5] = KeyedDecodingContainer.decode(_:forKey:)();
  type metadata accessor for Locale();
  v27 = 4;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v7, v15 + *(v12 + 32), &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v26 = 5;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v11, v24);
  *(v15 + *(v12 + 36)) = v20 & 1;
  outlined init with copy of DocumentResourceEnvelope(v15, v23, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x797469726F697270;
  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x697461746F6E6E61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65636E6174736E69;
  if (v1 != 1)
  {
    v5 = 0x6E6F697469736F70;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptEnvelope.DelimiterEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.init(sealing:xpcData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v185 = a2;
  v200 = a3;
  v196 = type metadata accessor for Prompt.ToolCall.Function();
  v163 = *(v196 - 8);
  v4 = *(v163 + 64);
  v5 = MEMORY[0x1EEE9AC00](v196);
  v195 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v194 = &v157 - v7;
  v198 = type metadata accessor for Prompt.ToolCall.Kind();
  v162 = *(v198 - 8);
  v8 = *(v162 + 64);
  v9 = MEMORY[0x1EEE9AC00](v198);
  v193 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v197 = &v157 - v11;
  v192 = type metadata accessor for Prompt.ToolCall();
  v161 = *(v192 - 8);
  v12 = *(v161 + 64);
  v13 = MEMORY[0x1EEE9AC00](v192);
  v191 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v190 = &v157 - v15;
  v199 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  v16 = *(*(v199 - 8) + 64);
  MEMORY[0x1EEE9AC00](v199);
  v164 = (&v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = type metadata accessor for Prompt.ToolDefinitions();
  v167 = *(v168 - 8);
  v18 = *(v167 + 64);
  v19 = MEMORY[0x1EEE9AC00](v168);
  v165 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v166 = &v157 - v21;
  v22 = type metadata accessor for Prompt.ResponseFormat.Kind();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v171 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for Prompt.ResponseFormat();
  v172 = *(v173 - 1);
  v25 = *(v172 + 64);
  v26 = MEMORY[0x1EEE9AC00](v173);
  v170 = (&v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v169 = &v157 - v28;
  v177 = type metadata accessor for Prompt.PreprocessedImageAttachment();
  v176 = *(v177 - 8);
  v29 = *(v176 + 64);
  v30 = MEMORY[0x1EEE9AC00](v177);
  v175 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v174 = &v157 - v32;
  v33 = type metadata accessor for Prompt.ImageEmbeddingAttachment.Encoding();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v186 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for Prompt.ImageEmbeddingAttachment();
  v188 = *(v189 - 8);
  v36 = *(v188 + 64);
  v37 = MEMORY[0x1EEE9AC00](v189);
  v39 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v187 = &v157 - v40;
  v181 = type metadata accessor for UUID();
  v179 = *(v181 - 8);
  v41 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v178 = (&v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v184 = type metadata accessor for Prompt.ImageSurfaceAttachment();
  v183 = *(v184 - 8);
  v43 = *(v183 + 64);
  v44 = MEMORY[0x1EEE9AC00](v184);
  v182 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v180 = &v157 - v46;
  v47 = type metadata accessor for Prompt.ImageAttachment.Format();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = &v157 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Prompt.ImageAttachment();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v157 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v157 - v57;
  v59 = type metadata accessor for Prompt.AttachmentContent();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v157 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v60 + 16))(v63, a1, v59);
  v64 = (*(v60 + 88))(v63, v59);
  if (v64 == *MEMORY[0x1E69DA770])
  {
    (*(v60 + 96))(v63, v59);
    (*(v52 + 32))(v58, v63, v51);
    (*(v52 + 16))(v56, v58, v51);
    Prompt.ImageAttachment.format.getter();
    LOBYTE(v206[0]) = specialized ImageFormatEnvelope.init(sealing:)(v50) & 1;
    v65 = Prompt.ImageAttachment.data.getter();
    v67 = v66;
    (*(v60 + 8))(a1, v59);
    v68 = *(v52 + 8);
    v68(v56, v51);
    v68(v58, v51);
    v69 = v200;
    *v200 = v206[0];
    v69[1] = v65;
    v69[2] = v67;
    return swift_storeEnumTagMultiPayload();
  }

  v158 = v60;
  v159 = v59;
  v160 = a1;
  if (v64 == *MEMORY[0x1E69DA750])
  {
    v70 = v158;
    v71 = v159;
    (*(v158 + 96))(v63, v159);
    v72 = v188;
    v73 = v187;
    v74 = v189;
    (*(v188 + 32))(v187, v63, v189);
    (*(v72 + 16))(v39, v73, v74);
    v75 = v186;
    Prompt.ImageEmbeddingAttachment.encoding.getter();
    LOBYTE(v206[0]) = specialized ImageEmbeddingEncodingEnvelope.init(sealing:)(v75) & 1;
    v198 = Prompt.ImageEmbeddingAttachment.data.getter();
    v197 = v76;
    v77 = Prompt.ImageEmbeddingAttachment.tokenCount.getter();
    v78 = Prompt.ResponseFormat.GrammarDetails.grammar.getter();
    v80 = v79;
    (*(v70 + 8))(v160, v71);
    v81 = *(v72 + 8);
    v81(v39, v74);
    v81(v73, v74);
    v82 = v200;
    *v200 = v206[0];
    v83 = v197;
    v82[1] = v198;
    v82[2] = v83;
    v82[3] = v77;
    v82[4] = v78;
    v82[5] = v80;
    return swift_storeEnumTagMultiPayload();
  }

  v84 = v158;
  if (v64 == *MEMORY[0x1E69DA748])
  {
    v85 = v159;
    (*(v158 + 96))(v63, v159);
    v86 = v183;
    v87 = v180;
    v88 = v184;
    (*(v183 + 32))(v180, v63, v184);
    v89 = v182;
    (*(v86 + 16))(v182, v87, v88);
    v90 = Prompt.ImageSurfaceAttachment.surface.getter();
    v91 = v178;
    UUID.init()();
    v92 = v84;
    v93 = UUID.uuidString.getter();
    v95 = v94;
    (*(v179 + 8))(v91, v181);
    v96 = v90;
    IOSurfaceCreateXPCObject(v96);

    XPCDictionary.subscript.setter();

    (*(v92 + 8))(v160, v85);
    v97 = *(v86 + 8);
    v97(v89, v88);
    v97(v87, v88);
    v98 = v200;
    *v200 = v93;
    v98[1] = v95;
    return swift_storeEnumTagMultiPayload();
  }

  v99 = v159;
  if (v64 == *MEMORY[0x1E69DA768])
  {
    (*(v158 + 96))(v63, v159);
    v100 = v176;
    v101 = v174;
    v102 = v177;
    (*(v176 + 32))(v174, v63, v177);
    v103 = v175;
    (*(v100 + 16))(v175, v101, v102);
    v104 = Prompt.PreprocessedImageAttachment.data.getter();
    v105 = Prompt.PreprocessedImageAttachment.shape.getter();
    (*(v84 + 8))(v160, v99);
    v106 = *(v100 + 8);
    v106(v103, v102);
    v106(v101, v102);
    v107 = v200;
    *v200 = v104;
    v107[1] = v105;
    return swift_storeEnumTagMultiPayload();
  }

  v108 = v160;
  if (v64 == *MEMORY[0x1E69DA758])
  {
    (*(v158 + 96))(v63, v159);
    v109 = v172;
    v110 = v169;
    v111 = v173;
    (*(v172 + 32))(v169, v63, v173);
    v112 = v170;
    (*(v109 + 16))(v170, v110, v111);
    v113 = v171;
    Prompt.ResponseFormat.kind.getter();
    ResponseFormatEnvelope.KindEnvelope.init(sealing:)(v113, v200);
    (*(v84 + 8))(v108, v99);
    v114 = *(v109 + 8);
    v114(v112, v111);
    v114(v110, v111);
    return swift_storeEnumTagMultiPayload();
  }

  if (v64 == *MEMORY[0x1E69DA760])
  {
    (*(v158 + 96))(v63, v159);
    v115 = v167;
    v116 = v166;
    v117 = v168;
    (*(v167 + 32))(v166, v63, v168);
    v118 = v165;
    (*(v115 + 16))(v165, v116, v117);
    v119 = specialized ToolDefinitionsEnvelope.init(sealing:)(v118);
    (*(v84 + 8))(v108, v99);
    (*(v115 + 8))(v116, v117);
    *v200 = v119;
    return swift_storeEnumTagMultiPayload();
  }

  v121 = v200;
  if (v64 != *MEMORY[0x1E69DA778])
  {
    goto LABEL_29;
  }

  (*(v158 + 96))(v63, v159);
  v122 = *v63;
  v123 = v84;
  v124 = *(*v63 + 16);
  v125 = v197;
  if (v124)
  {
    v207 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124, 0);
    v126 = v198;
    if (*(v122 + 16))
    {
      v127 = 0;
      v128 = (v122 + ((*(v161 + 80) + 32) & ~*(v161 + 80)));
      v180 = (v161 + 16);
      v179 = v162 + 16;
      v178 = (v162 + 88);
      LODWORD(v177) = *MEMORY[0x1E69DA808];
      v176 = v162 + 96;
      v175 = (v163 + 32);
      v174 = (v163 + 16);
      v173 = (v163 + 8);
      v172 = v162 + 8;
      v171 = (v161 + 8);
      v129 = v207;
      v168 = *(v161 + 72);
      v170 = *(v161 + 16);
      v169 = (v124 - 1);
      v181 = v122;
      while (1)
      {
        v188 = v129;
        v189 = v127;
        v130 = v190;
        v182 = v128;
        v131 = v192;
        v132 = v170;
        v170(v190);
        v133 = v191;
        v132(v191, v130, v131);
        v187 = Prompt.ToolCall.id.getter();
        v186 = v134;
        Prompt.ToolCall.kind.getter();
        v135 = v193;
        (*v179)(v193, v125, v126);
        v136 = (*v178)(v135, v126);
        if (v136 != v177)
        {
          break;
        }

        (*v176)(v135, v126);
        v137 = v194;
        v138 = v196;
        (*v175)(v194, v135, v196);
        v139 = v195;
        (*v174)(v195, v137, v138);
        v185 = Prompt.ToolCall.Function.name.getter();
        v184 = v140;
        v183 = Prompt.ToolCall.Function.arguments.getter();
        v142 = v141;
        v143 = *v173;
        (*v173)(v139, v138);
        v144 = v137;
        v126 = v198;
        v143(v144, v138);
        (*v172)(v125, v126);
        v145 = Prompt.ToolCall._userInfo.getter();
        v147 = v146;
        v148 = *v171;
        (*v171)(v133, v131);
        v148(v130, v131);
        outlined consume of Data?(0, 0xF000000000000000);
        *&v202 = v187;
        *(&v202 + 1) = v186;
        *&v203 = v185;
        *(&v203 + 1) = v184;
        *&v204 = v183;
        *(&v204 + 1) = v142;
        *&v205 = v145;
        *(&v205 + 1) = v147;
        v206[0] = v187;
        v206[1] = v186;
        v206[2] = v185;
        v206[3] = v184;
        v206[4] = v183;
        v206[5] = v142;
        v206[6] = v145;
        v206[7] = v147;
        outlined init with copy of ToolCallEnvelope(&v202, v201);
        outlined destroy of ToolCallEnvelope(v206);
        v129 = v188;
        v207 = v188;
        v150 = *(v188 + 16);
        v149 = *(v188 + 24);
        if (v150 >= v149 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1);
          v129 = v207;
        }

        *(v129 + 16) = v150 + 1;
        v151 = (v129 + (v150 << 6));
        v152 = v202;
        v153 = v203;
        v154 = v205;
        v151[4] = v204;
        v151[5] = v154;
        v151[2] = v152;
        v151[3] = v153;
        if (v169 == v189)
        {
          (*(v158 + 8))(v160, v159);

          v121 = v200;
          goto LABEL_26;
        }

        v127 = v189 + 1;
        v128 = &v182[v168];
        v125 = v197;
        if ((v189 + 1) >= *(v181 + 16))
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      __break(1u);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_29:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v155 = *v63;

  (*(v123 + 8))(v108, v99);
  v129 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v156 = v164;
  *v164 = v129;
  swift_storeEnumTagMultiPayload();
  return outlined init with take of DocumentRegistrationEnvelope(v156, v121, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a1;
  v70 = type metadata accessor for Prompt.ToolCall.Kind();
  v66 = *(v70 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Prompt.ToolCall();
  v71 = *(v68 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.ResponseFormat.Kind();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResponseFormatEnvelope(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt.ImageEmbeddingAttachment.Encoding();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Prompt.ImageAttachment.Format();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v74, v27, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        ToolDefinitionsEnvelope.unseal()(*v27, a2);

        v31 = MEMORY[0x1E69DA760];
      }

      else
      {
        v46 = *v27;
        v47 = *(*v27 + 16);
        if (v47)
        {
          v63 = a2;
          v75 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
          v48 = v75;
          v67 = *MEMORY[0x1E69DA808];
          v65 = v71 + 32;
          v66 += 104;
          v62 = v46;
          v49 = (v46 + 48);
          v50 = v64;
          do
          {
            v51 = *(v49 - 1);
            v73 = *(v49 - 2);
            v74 = v47;
            v53 = *v49;
            v52 = v49[1];
            v54 = v49[3];
            v72 = v49[2];
            v55 = v49[4];
            v56 = v49[5];

            outlined copy of Data?(v55, v56);

            v57 = v69;
            Prompt.ToolCall.Function.init(name:arguments:)();
            (*v66)(v57, v67, v70);
            MEMORY[0x1AC5A36E0](v73, v51, v57);
            outlined copy of Data?(v55, v56);
            Prompt.ToolCall._userInfo.setter();

            outlined consume of Data?(v55, v56);
            v75 = v48;
            v59 = *(v48 + 16);
            v58 = *(v48 + 24);
            if (v59 >= v58 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
              v48 = v75;
            }

            *(v48 + 16) = v59 + 1;
            (*(v71 + 32))(v48 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v59, v50, v68);
            v49 += 8;
            v47 = v74 - 1;
          }

          while (v74 != 1);

          a2 = v63;
        }

        else
        {

          v48 = MEMORY[0x1E69E7CC0];
        }

        *a2 = v48;
        v31 = MEMORY[0x1E69DA778];
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v29 = *v27;
      v30 = v27[1];
      Prompt.PreprocessedImageAttachment.init(data:shape:)();
      v31 = MEMORY[0x1E69DA768];
    }

    else
    {
      outlined init with take of DocumentRegistrationEnvelope(v27, v13, type metadata accessor for ResponseFormatEnvelope);
      ResponseFormatEnvelope.KindEnvelope.unseal()(v72);
      Prompt.ResponseFormat.init(kind:)();
      outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for ResponseFormatEnvelope);
      v31 = MEMORY[0x1E69DA758];
    }

    goto LABEL_27;
  }

  if (!EnumCaseMultiPayload)
  {
    v32 = v27[1];
    v33 = v27[2];
    if (*v27)
    {
      v34 = MEMORY[0x1E69DA728];
    }

    else
    {
      v34 = MEMORY[0x1E69DA730];
    }

    (*(v20 + 104))(v23, *v34, v19);
    Prompt.ImageAttachment.init(format:data:)();
    v31 = MEMORY[0x1E69DA770];
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 1)
  {
    ImageSurfaceEnvelope.unsealSurface(_:)(v73, *v27, v27[1]);

    Prompt.ImageSurfaceAttachment.init(surface:)();
    v31 = MEMORY[0x1E69DA748];
LABEL_27:
    v60 = *v31;
    v61 = type metadata accessor for Prompt.AttachmentContent();
    return (*(*(v61 - 8) + 104))(a2, v60, v61);
  }

  v35 = *v27;
  v36 = v27[1];
  v37 = v27[2];
  v38 = a2;
  v39 = v27[3];
  v40 = v27[4];
  v41 = v27[5];
  if (v35)
  {
    v42 = MEMORY[0x1E69DA788];
  }

  else
  {
    v42 = MEMORY[0x1E69DA780];
  }

  (*(v15 + 104))(v18, *v42, v14);
  outlined copy of Data._Representation(v36, v37);

  Prompt.ImageEmbeddingAttachment.init(encoding:data:tokenCount:signature:)();
  outlined consume of Data._Representation(v36, v37);

  v43 = *MEMORY[0x1E69DA750];
  v44 = type metadata accessor for Prompt.AttachmentContent();
  return (*(*(v44 - 8) + 104))(v38, v43, v44);
}

uint64_t PromptEnvelope.AttachmentEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.AttachmentContentEnvelope and conformance PromptEnvelope.AttachmentContentEnvelope, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PromptEnvelope.AttachmentEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMR);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.AttachmentContentEnvelope and conformance PromptEnvelope.AttachmentContentEnvelope, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of DocumentRegistrationEnvelope(v24, v17, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  v26 = 1;
  *(v17 + *(v11 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 24)) = v19;
  outlined init with copy of DocumentResourceEnvelope(v17, v21, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v17, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys()
{
  v1 = 0x6E6F697469736F70;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptEnvelope.AttachmentEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolDefinitionsEnvelope.unseal()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerationSchema();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Schema();
  v69 = *(v61 - 8);
  v7 = *(v69 + 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Tool.Function();
  v9 = *(v64 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v59 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FileGenerationParameters();
  v63 = *(v58 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ImageGenerationParameters();
  v66 = *(v56 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
  v16 = *(v67 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v67);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v70 = v46 - v21;
  v68 = type metadata accessor for Tool();
  v22 = *(v68 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v68);
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v46 - v27;
  v29 = *(a1 + 16);
  if (v29)
  {
    v46[0] = a2;
    v71 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v30 = v71;
    v31 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v51 = (v69 + 8);
    v52 = (v9 + 32);
    v50 = (v9 + 8);
    v65 = *(v16 + 72);
    v49 = (v63 + 32);
    v48 = v63 + 8;
    v47 = (v66 + 32);
    v46[1] = v66 + 8;
    v32 = (v22 + 32);
    v66 = v22;
    v69 = v26;
    v53 = v28;
    v54 = v20;
    do
    {
      v33 = v70;
      outlined init with copy of DocumentResourceEnvelope(v31, v70, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v33, v20, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v36 = v57;
          v35 = v58;
          (*v49)(v57, v20, v58);
          static Tool.fileGenerationTool(parameters:)();
          v37 = &v73;
        }

        else
        {
          v36 = v55;
          v35 = v56;
          (*v47)(v55, v20, v56);
          static Tool.imageGenerationTool(parameters:)();
          v37 = &v72;
        }

        (**(v37 - 32))(v36, v35);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v38 = v59;
        (*v52)(v59, v20, v64);
        v63 = Tool.Function.name.getter();
        Tool.Function.description.getter();
        Tool.Function.parameters.getter();
        v39 = v60;
        v26 = v69;
        Schema.init(type:)();
        static Tool.function(name:description:parameters:)();
        v20 = v54;

        v28 = v53;

        (*v51)(v39, v61);
        (*v50)(v38, v64);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        static Tool.browser.getter();
      }

      else
      {
        static Tool.imageGenerator.getter();
      }

      v40 = v68;
      outlined destroy of DocumentResourceEnvelope(v70, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      v41 = *v32;
      (*v32)(v28, v26, v40);
      v71 = v30;
      v42 = v28;
      v44 = *(v30 + 16);
      v43 = *(v30 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
        v40 = v68;
        v30 = v71;
      }

      *(v30 + 16) = v44 + 1;
      v41((v30 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v44), v42, v40);
      v31 += v65;
      --v29;
      v26 = v69;
      v28 = v42;
    }

    while (v29);
  }

  return Prompt.ToolDefinitions.init(tools:)();
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMR);
  v83 = *(v2 - 8);
  v84 = v2;
  v3 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v70 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMR);
  v80 = *(v81 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v70 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMR);
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v70 - v8;
  v74 = type metadata accessor for ResponseFormatEnvelope(0);
  v9 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMR);
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMR);
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v70 - v15;
  *&v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMR);
  v70 = *(v86 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMR);
  v85 = *(v19 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v70 - v21;
  v23 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMR);
  v28 = *(v27 - 8);
  v92 = v27;
  v93 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v70 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();
  v90 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v91, v26, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v40 = v18;
    v42 = v85;
    v41 = v86;
    v44 = v87;
    v43 = v88;
    v45 = v89;
    if (!EnumCaseMultiPayload)
    {
      v56 = *v26;
      v58 = *(v26 + 1);
      v57 = *(v26 + 2);
      *&v91 = v57;
      LOBYTE(v94) = 0;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();
      v59 = v22;
      v60 = v92;
      v61 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v94) = v56;
      *&v95 = v58;
      *(&v95 + 1) = v57;
      lazy protocol witness table accessor for type ImageDataEnvelope and conformance ImageDataEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v42 + 8))(v59, v19);
      (*(v93 + 8))(v61, v60);
      return outlined consume of Data._Representation(v58, v91);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v46 = *v26;
      v47 = *(v26 + 1);
      LOBYTE(v94) = 1;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();
      v48 = v92;
      v49 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v94 = v46;
      *&v95 = v47;
      lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v70 + 8))(v40, v41);
      (*(v93 + 8))(v49, v48);
    }

    else
    {
      v63 = *v26;
      v64 = *(v26 + 5);
      LOBYTE(v94) = 2;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();
      v91 = *(v26 + 8);
      v86 = *(v26 + 24);
      v65 = v92;
      v66 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v94) = v63;
      v95 = v91;
      v96 = v86;
      *&v86 = v64;
      v97 = v64;
      lazy protocol witness table accessor for type ImageEmbeddingEnvelope and conformance ImageEmbeddingEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v44, v45);
      (*(v93 + 8))(v66, v65);
      outlined consume of Data._Representation(v91, *(&v91 + 1));
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v50 = v92;
    v51 = v90;
    v52 = *v26;
    if (EnumCaseMultiPayload == 5)
    {
      LOBYTE(v94) = 5;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();
      v53 = v77;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v94 = v52;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope and conformance ToolDefinitionsEnvelope();
      v54 = v81;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v55 = v80;
    }

    else
    {
      LOBYTE(v94) = 6;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();
      v53 = v82;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v94 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
      lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
      v54 = v84;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v55 = v83;
    }

    (*(v55 + 8))(v53, v54);
    (*(v93 + 8))(v51, v50);
  }

  else
  {
    v34 = v92;
    v35 = v90;
    if (EnumCaseMultiPayload != 3)
    {
      v67 = v75;
      outlined init with take of DocumentRegistrationEnvelope(v26, v75, type metadata accessor for ResponseFormatEnvelope);
      LOBYTE(v94) = 4;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();
      v68 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope and conformance ResponseFormatEnvelope, type metadata accessor for ResponseFormatEnvelope);
      v69 = v79;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v78 + 8))(v68, v69);
      outlined destroy of DocumentResourceEnvelope(v67, type metadata accessor for ResponseFormatEnvelope);
      return (*(v93 + 8))(v35, v34);
    }

    v36 = *v26;
    v37 = *(v26 + 1);
    LOBYTE(v94) = 3;
    lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();
    v38 = v71;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v94 = v36;
    *&v95 = v37;
    lazy protocol witness table accessor for type PreprocessedImageDataEnvelope and conformance PreprocessedImageDataEnvelope();
    v39 = v73;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v72 + 8))(v38, v39);
    (*(v93 + 8))(v35, v34);
  }
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMR);
  v110 = *(v109 - 8);
  v3 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v122 = &v88 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMR);
  v107 = *(v108 - 8);
  v5 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v121 = &v88 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMR);
  v105 = *(v106 - 8);
  v7 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v114 = &v88 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMR);
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v120 = &v88 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMR);
  v102 = *(v101 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v112 = &v88 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMR);
  v99 = *(v100 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v113 = &v88 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMR);
  v97 = *(v98 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v117 = &v88 - v16;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMR);
  v116 = *(v119 - 8);
  v17 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v19 = &v88 - v18;
  v115 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  v20 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v95 = (&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v94 = (&v88 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v88 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v88 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v88 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v88 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v88 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v88 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();
  v118 = v19;
  v43 = v131;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v43)
  {
    goto LABEL_12;
  }

  v89 = v37;
  v90 = v34;
  v91 = v31;
  v92 = v28;
  v44 = v117;
  v131 = 0;
  v45 = v120;
  v46 = v121;
  v47 = v122;
  v93 = v40;
  v49 = v118;
  v48 = v119;
  v50 = KeyedDecodingContainer.allKeys.getter();
  v51 = (2 * *(v50 + 16)) | 1;
  v127 = v50;
  v128 = v50 + 32;
  v129 = 0;
  v130 = v51;
  v52 = specialized Collection<>.popFirst()();
  if (v52 == 7 || v129 != v130 >> 1)
  {
    v56 = type metadata accessor for DecodingError();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v58 = v115;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
  }

  else
  {
    if (v52 > 2u)
    {
      if (v52 > 4u)
      {
        v66 = v116;
        if (v52 == 5)
        {
          v124[0] = 5;
          lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();
          v67 = v48;
          v68 = v131;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v68)
          {
            lazy protocol witness table accessor for type ToolDefinitionsEnvelope and conformance ToolDefinitionsEnvelope();
            v69 = v108;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v107 + 8))(v46, v69);
            (*(v66 + 8))(v49, v48);
            swift_unknownObjectRelease();
            v84 = v94;
            *v94 = *v124;
            goto LABEL_32;
          }
        }

        else
        {
          v124[0] = 6;
          lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();
          v78 = v47;
          v67 = v48;
          v79 = v131;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v79)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
            lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
            v80 = v109;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v110 + 8))(v78, v80);
            (*(v66 + 8))(v49, v48);
            swift_unknownObjectRelease();
            v84 = v95;
            *v95 = *v124;
            goto LABEL_32;
          }
        }

        (*(v66 + 8))(v49, v67);
        goto LABEL_11;
      }

      v53 = v116;
      if (v52 == 3)
      {
        v124[0] = 3;
        lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();
        v54 = v131;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v54)
        {
          lazy protocol witness table accessor for type PreprocessedImageDataEnvelope and conformance PreprocessedImageDataEnvelope();
          v55 = v104;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v103 + 8))(v45, v55);
          (*(v53 + 8))(v49, v48);
          swift_unknownObjectRelease();
          v84 = v92;
          *v92 = *v124;
LABEL_32:
          swift_storeEnumTagMultiPayload();
          v85 = v84;
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      v124[0] = 4;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();
      v74 = v114;
      v75 = v131;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v75)
      {
LABEL_27:
        (*(v53 + 8))(v49, v48);
        goto LABEL_11;
      }

      type metadata accessor for ResponseFormatEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope and conformance ResponseFormatEnvelope, type metadata accessor for ResponseFormatEnvelope);
      v76 = v96;
      v77 = v106;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v105 + 8))(v74, v77);
      (*(v53 + 8))(v49, v48);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v85 = v76;
LABEL_33:
      v86 = v93;
      outlined init with take of DocumentRegistrationEnvelope(v85, v93, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
      v87 = v123;
      outlined init with take of DocumentRegistrationEnvelope(v86, v111, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
      v60 = v87;
      return __swift_destroy_boxed_opaque_existential_0(v60);
    }

    if (v52)
    {
      v62 = v131;
      if (v52 == 1)
      {
        v124[0] = 1;
        lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();
        v63 = v113;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v62)
        {
          lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
          v64 = v100;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v65 = v116;
          (*(v99 + 8))(v63, v64);
          (*(v65 + 8))(v49, v48);
          swift_unknownObjectRelease();
          v81 = *&v124[8];
          v82 = v90;
          *v90 = *v124;
          *(v82 + 1) = v81;
LABEL_31:
          swift_storeEnumTagMultiPayload();
          v85 = v82;
          goto LABEL_33;
        }
      }

      else
      {
        v124[0] = 2;
        lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();
        v72 = v112;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v62)
        {
          lazy protocol witness table accessor for type ImageEmbeddingEnvelope and conformance ImageEmbeddingEnvelope();
          v73 = v101;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v102 + 8))(v72, v73);
          (*(v116 + 8))(v49, v48);
          swift_unknownObjectRelease();
          v83 = v126;
          v82 = v91;
          *v91 = v124[0];
          *(v82 + 8) = *&v124[8];
          *(v82 + 24) = v125;
          *(v82 + 5) = v83;
          goto LABEL_31;
        }
      }
    }

    else
    {
      v124[0] = 0;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();
      v70 = v131;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v70)
      {
        lazy protocol witness table accessor for type ImageDataEnvelope and conformance ImageDataEnvelope();
        v71 = v98;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v97 + 8))(v44, v71);
        (*(v116 + 8))(v49, v48);
        swift_unknownObjectRelease();
        v84 = v89;
        *v89 = v124[0];
        *(v84 + 1) = *&v124[8];
        goto LABEL_32;
      }
    }
  }

  (*(v116 + 8))(v49, v48);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v60 = v123;
  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t PromptEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMR);
    lazy protocol witness table accessor for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v13;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMR);
    lazy protocol witness table accessor for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x696665446C6F6F74;
  if (v1 != 5)
  {
    v3 = 0x6C6C61436C6F6F74;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x65736E6F70736572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7275536567616D69;
  if (v1 != 1)
  {
    v5 = 0x626D456567616D69;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptEnvelope.AttachmentContentEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.CodingKeys()
{
  v1 = 0x6574696D696C6564;
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
    return 0x676E69727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PromptEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t Prompt.seal(xpcData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a1;
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = &v89[-v5];
  v101 = type metadata accessor for UUID();
  v6 = *(v101 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = type metadata accessor for Prompt.ImageSurface();
  v9 = *(v104 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Prompt();
  v115 = *(v12 - 8);
  v13 = *(v115 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v143 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v113 = &v89[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v89[-v18];
  v140 = type metadata accessor for Prompt.Component.Value();
  v19 = *(v140 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v140);
  v116 = &v89[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v118 = &v89[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v89[-v25];
  v27 = type metadata accessor for Prompt.Component();
  v135 = *(v27 - 8);
  v28 = *(v135 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v123 = &v89[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v133 = &v89[-v32];
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v89[-v33];
  v150 = MEMORY[0x1E69E7CC0];
  v108 = v2;
  result = Prompt.components.getter();
  v132 = *(result + 16);
  if (!v132)
  {
LABEL_51:

    (*(v115 + 16))(v109, v108, v12);
    return Prompt.components.setter();
  }

  v36 = 0;
  v139 = v135 + 16;
  v137 = *MEMORY[0x1E69C6318];
  v130 = (v19 + 88);
  v120 = *MEMORY[0x1E69C6328];
  v114 = *MEMORY[0x1E69C6320];
  v111 = *MEMORY[0x1E69C62F8];
  v110 = *MEMORY[0x1E69C6310];
  v107 = *MEMORY[0x1E69C6300];
  v106 = *MEMORY[0x1E69C62E0];
  v105 = *MEMORY[0x1E69C62D8];
  v103 = *MEMORY[0x1E69C6338];
  v98 = *MEMORY[0x1E69C62D0];
  v112 = (v19 + 8);
  v127 = (v135 + 8);
  v122 = (v19 + 96);
  v96 = *MEMORY[0x1E69C62E8];
  v95 = (v9 + 32);
  v94 = (v6 + 8);
  v121 = (v19 + 104);
  v92 = *MEMORY[0x1E69C62F0];
  v93 = (v9 + 8);
  v142 = v115 + 16;
  v97 = *MEMORY[0x1E69C6308];
  v145 = (v115 + 8);
  v91 = *MEMORY[0x1E69C62C8];
  v146 = (v115 + 32);
  v129 = xmmword_1ABA1D930;
  v90 = *MEMORY[0x1E69C6340];
  v119 = v26;
  v131 = v34;
  v128 = result;
  v126 = v27;
  while (v36 < *(result + 16))
  {
    v46 = *(v135 + 80);
    v47 = (v46 + 32) & ~v46;
    v141 = *(v135 + 72);
    v48 = *(v135 + 16);
    v48(v34, result + v47 + v141 * v36, v27);
    Prompt.Component.value.getter();
    v49 = (*v130)(v26, v140);
    v138 = v36;
    if (v49 == v137)
    {
      v50 = v140;
      (*v122)(v26, v140);
      (*v146)(v134, v26, v12);
      v51 = v34;
      v52 = v133;
      v48(v133, v51, v27);
      v53 = v118;
      Prompt.seal(xpcData:)(v147);
      (*v121)(v53, v137, v50);
      Prompt.Component.value.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v54 = swift_allocObject();
      *(v54 + 16) = v129;
      v48((v54 + v47), v52, v27);
      v55 = v150;
      v56 = v150[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v57 = v55[3] >> 1, v57 <= v56))
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v56 + 1, 1, v55);
        v55 = result;
        v57 = *(result + 24) >> 1;
      }

      v34 = v131;
      if (v57 <= v55[2])
      {
        goto LABEL_53;
      }

      swift_arrayInitWithCopy();

      ++v55[2];
      v150 = v55;
      v58 = *v127;
      (*v127)(v133, v27);
      (*v145)(v134, v12);
      v58(v34, v27);
      v26 = v119;
    }

    else
    {
      v136 = v48;
      v124 = v46;
      v125 = (v46 + 32) & ~v46;
      if (v49 == v120)
      {
        (*v122)(v26, v140);
        v59 = *v26;
        v60 = v136;
        (v136)(v123, v34, v126);
        v61 = *(v59 + 16);
        if (v61)
        {
          v148 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61, 0);
          v62 = v148;
          v63 = (*(v115 + 80) + 32) & ~*(v115 + 80);
          v117 = v59;
          v144 = v63;
          v64 = v59 + v63;
          v65 = *(v115 + 72);
          v66 = *(v115 + 16);
          v67 = v113;
          do
          {
            v68 = v143;
            v66(v143, v64, v12);
            Prompt.seal(xpcData:)(v147);
            (*v145)(v68, v12);
            v148 = v62;
            v70 = *(v62 + 16);
            v69 = *(v62 + 24);
            if (v70 >= v69 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1);
              v62 = v148;
            }

            *(v62 + 16) = v70 + 1;
            (*v146)(v62 + v144 + v70 * v65, v67, v12);
            v64 += v65;
            --v61;
          }

          while (v61);

          v26 = v119;
          v60 = v136;
        }

        else
        {

          v62 = MEMORY[0x1E69E7CC0];
        }

        v80 = v116;
        *v116 = v62;
        (*v121)(v80, v120, v140);
        v81 = v123;
        Prompt.Component.value.setter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v82 = v125;
        v83 = swift_allocObject();
        *(v83 + 16) = v129;
        v84 = v126;
        v60(v83 + v82, v81);
        v85 = v150;
        v86 = v150[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v87 = v85[3] >> 1, v87 <= v86))
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v86 + 1, 1, v85);
          v85 = result;
          v87 = *(result + 24) >> 1;
        }

        v34 = v131;
        if (v87 <= v85[2])
        {
          goto LABEL_54;
        }

        v27 = v84;
        swift_arrayInitWithCopy();

        ++v85[2];
        v150 = v85;
        v88 = *v127;
        (*v127)(v123, v84);
        v88(v34, v84);
      }

      else
      {
        v71 = v125;
        if (v49 == v114)
        {
          goto LABEL_21;
        }

        if (v49 == v111 || v49 == v110)
        {
          goto LABEL_22;
        }

        if (v49 == v107 || v49 == v106 || v49 == v105 || v49 == v103)
        {
          goto LABEL_21;
        }

        if (v49 == v98)
        {
          (*v122)(v26, v140);
          v37 = v99;
          (*v95)(v99, v26, v104);
          v38 = Prompt.ImageSurface.surface.getter();
          v39 = v100;
          UUID.init()();
          v40 = UUID.uuidString.getter();
          v144 = v12;
          v41 = v40;
          v43 = v42;
          (*v94)(v39, v101);
          v44 = v38;
          IOSurfaceCreateXPCObject(v44);

          XPCDictionary.subscript.setter();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
          v45 = swift_allocObject();
          *(v45 + 16) = v129;
          v148 = v41;
          v149 = v43;
          lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
          Prompt.Component.Value.CustomData.init<A>(value:)();
          (*v121)(v118, v97, v140);
          Prompt.Component.priority.getter();
          Prompt.Component.privacy.getter();
          v27 = v126;
          v12 = v144;
          v26 = v119;
          v34 = v131;
          Prompt.Component.init(value:priority:privacy:)();
          specialized Array.append<A>(contentsOf:)(v45, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69C6360]);
          (*v93)(v37, v104);
          goto LABEL_4;
        }

        if (v49 == v96)
        {
          goto LABEL_21;
        }

        if (v49 != v92)
        {
          if (v49 != v97 && v49 != v91 && v49 != v90)
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            goto LABEL_51;
          }

LABEL_21:
          (*v112)(v26, v140);
LABEL_22:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
          v72 = swift_allocObject();
          *(v72 + 16) = v129;
          (v136)(v72 + v71, v34, v126);
          v73 = v150;
          v74 = v150[2];
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v75 = v73[3] >> 1, v75 <= v74))
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v74 + 1, 1, v73);
            v73 = result;
            v75 = *(result + 24) >> 1;
          }

          v34 = v131;
          if (v75 <= v73[2])
          {
            goto LABEL_55;
          }

          v27 = v126;
          swift_arrayInitWithCopy();

          ++v73[2];
          v150 = v73;
LABEL_4:
          (*v127)(v34, v27);
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v76 = swift_allocObject();
        *(v76 + 16) = v129;
        (v136)(v76 + v71, v34, v126);
        v77 = v150;
        v78 = v150[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v79 = v77[3] >> 1, v79 <= v78))
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v78 + 1, 1, v77);
          v77 = result;
          v79 = *(result + 24) >> 1;
        }

        v34 = v131;
        if (v79 <= v77[2])
        {
          goto LABEL_56;
        }

        v27 = v126;
        swift_arrayInitWithCopy();

        ++v77[2];
        v150 = v77;
        (*v127)(v34, v27);
        (*v112)(v26, v140);
      }
    }

LABEL_5:
    v36 = v138 + 1;
    result = v128;
    if (v138 + 1 == v132)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t Prompt.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a1;
  v129 = a2;
  v125 = type metadata accessor for Prompt.Component.Value.CustomData();
  v4 = *(v125 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt();
  v135 = *(v7 - 8);
  v8 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v165 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v153 = &v111 - v14;
  v163 = type metadata accessor for Prompt.Component.Value();
  v15 = *(v163 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v136 = (&v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v111 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v111 - v21;
  v22 = type metadata accessor for Prompt.Component();
  v154 = *(v22 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v152 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v162 = (&v111 - v31);
  v172 = MEMORY[0x1E69E7CC0];
  v128 = v2;
  v32 = Prompt.components.getter();
  v151 = *(v32 + 16);
  if (!v151)
  {
LABEL_57:

    (*(v135 + 16))(v129, v128, v7);
    return Prompt.components.setter();
  }

  v33 = 0;
  v117 = 0;
  v159 = *MEMORY[0x1E69C6318];
  v160 = v154 + 16;
  v150 = (v15 + 88);
  v140 = *MEMORY[0x1E69C6328];
  v133 = *MEMORY[0x1E69C6320];
  v131 = *MEMORY[0x1E69C62F8];
  v130 = *MEMORY[0x1E69C6310];
  v127 = *MEMORY[0x1E69C6300];
  v126 = *MEMORY[0x1E69C62E0];
  v123 = *MEMORY[0x1E69C62D8];
  v132 = (v15 + 8);
  v122 = *MEMORY[0x1E69C6338];
  v142 = (v15 + 96);
  v115 = (v4 + 16);
  v121 = *MEMORY[0x1E69C62D0];
  v116 = 0x80000001ABA330B0;
  v120 = *MEMORY[0x1E69C62E8];
  v114 = (v4 + 8);
  v141 = (v15 + 104);
  v146 = (v154 + 8);
  v119 = *MEMORY[0x1E69C62F0];
  v164 = v135 + 16;
  v167 = (v135 + 8);
  v118 = *MEMORY[0x1E69C6308];
  v168 = (v135 + 32);
  v113 = *MEMORY[0x1E69C62C8];
  v149 = xmmword_1ABA1D930;
  v112 = *MEMORY[0x1E69C6340];
  v148 = v25;
  v134 = v22;
  v147 = v32;
  v138 = v12;
  v158 = v7;
  while (v33 < *(v32 + 16))
  {
    v37 = *(v154 + 80);
    v38 = (v37 + 32) & ~v37;
    v39 = *(v154 + 72);
    v161 = v33;
    v40 = *(v154 + 16);
    v41 = v162;
    v40(v162, v32 + v38 + v39 * v33, v22);
    v42 = v157;
    Prompt.Component.value.getter();
    v43 = (*v150)(v42, v163);
    if (v43 == v159)
    {
      v44 = v163;
      (*v142)(v42, v163);
      (*v168)(v153, v42, v158);
      v45 = v152;
      v40(v152, v41, v22);
      v46 = v139;
      Prompt.unseal(_:)(v169);
      (*v141)(v46, v159, v44);
      Prompt.Component.value.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v25 = v39;
      v47 = swift_allocObject();
      *(v47 + 16) = v149;
      v3 = ((v37 + 32) & ~v37);
      v40((v47 + v38), v45, v22);
      v48 = v172;
      v49 = v172[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v51 = v48[3] >> 1, v51 <= v49))
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v49 + 1, 1, v48);
        v51 = v48[3] >> 1;
      }

      v52 = v162;
      v12 = v138;
      v7 = v158;
      if (v51 <= v48[2])
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      ++v48[2];
      v172 = v48;
      v53 = *v146;
      (*v146)(v152, v22);
      (*v167)(v153, v7);
      v53(v52, v22);
    }

    else
    {
      v145 = v37;
      v155 = v40;
      v144 = v39;
      v156 = (v37 + 32) & ~v37;
      if (v43 != v140)
      {
        v65 = v155;
        v3 = v41;
        if (v43 == v133)
        {
          goto LABEL_22;
        }

        if (v43 != v131 && v43 != v130)
        {
          if (v43 != v127 && v43 != v126 && v43 != v123 && v43 != v122 && v43 != v121 && v43 != v120)
          {
            if (v43 == v119)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
              v71 = v156;
              v72 = swift_allocObject();
              *(v72 + 16) = v149;
              v65((v72 + v71), v3, v22);
              v73 = v172;
              v74 = v172[2];
              v75 = swift_isUniquelyReferenced_nonNull_native();
              if (!v75 || (v76 = v73[3] >> 1, v76 <= v74))
              {
                v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v75, v74 + 1, 1, v73);
                v76 = v73[3] >> 1;
              }

              v7 = v158;
              v77 = v162;
              if (v76 <= v73[2])
              {
                goto LABEL_62;
              }

              swift_arrayInitWithCopy();

              ++v73[2];
              v172 = v73;
              (*v146)(v77, v22);
              (*v132)(v157, v163);
              goto LABEL_6;
            }

            if (v43 == v118)
            {
              v89 = v157;
              (*v142)(v157, v163);
              v90 = v124;
              (*v115)(v124, v89, v125);
              if (Prompt.Component.Value.CustomData.name.getter() == 0xD000000000000014 && v116 == v91)
              {

                v92 = v156;
LABEL_54:
                v3 = v22;
                v65(v25, v162, v22);
                lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
                v94 = v117;
                Prompt.Component.Value.CustomData.value<A>(type:)();
                v117 = v94;
                if (v94)
                {
                  goto LABEL_64;
                }

                ImageSurfaceEnvelope.unsealSurface(_:)(v169, v170, v171);

                v95 = v139;
                Prompt.ImageSurface.init(surface:)();
                (*v141)(v95, v121, v163);
                Prompt.Component.value.setter();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
                v96 = swift_allocObject();
                *(v96 + 16) = v149;
                v65((v96 + v92), v25, v22);
                specialized Array.append<A>(contentsOf:)(v96, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69C6360]);
                v97 = *v146;
                (*v146)(v25, v22);
                v98 = *v114;
                v99 = v125;
                (*v114)(v124, v125);
                v97(v162, v22);
                v98(v157, v99);
                v7 = v158;
                goto LABEL_6;
              }

              v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v25 = v148;

              v92 = v156;
              if (v93)
              {
                goto LABEL_54;
              }

              v100 = *v114;
              v101 = v90;
              v102 = v125;
              (*v114)(v101, v125);
              v100(v157, v102);
              v3 = v162;
              goto LABEL_23;
            }

            if (v43 != v113 && v43 != v112)
            {
              goto LABEL_63;
            }
          }

LABEL_22:
          (*v132)(v157, v163);
        }

LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v66 = v156;
        v67 = swift_allocObject();
        *(v67 + 16) = v149;
        v65((v67 + v66), v3, v22);
        v34 = v172;
        v68 = v172[2];
        v69 = swift_isUniquelyReferenced_nonNull_native();
        if (!v69 || (v35 = v34[3] >> 1, v35 <= v68))
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69, v68 + 1, 1, v34);
          v35 = v34[3] >> 1;
        }

        v7 = v158;
        v36 = v162;
        if (v35 <= v34[2])
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        ++v34[2];
        v172 = v34;
        (*v146)(v36, v22);
        goto LABEL_6;
      }

      v54 = v157;
      (*v142)(v157, v163);
      v55 = *v54;
      v3 = v155;
      v155(v143, v41, v22);
      v56 = *(v55 + 16);
      if (v56)
      {
        v170 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
        v57 = v170;
        v58 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v137 = v55;
        v166 = v58;
        v59 = v55 + v58;
        v60 = *(v135 + 72);
        v61 = *(v135 + 16);
        v7 = v158;
        do
        {
          v62 = v165;
          v61(v165, v59, v7);
          Prompt.unseal(_:)(v169);
          (*v167)(v62, v7);
          v170 = v57;
          v64 = *(v57 + 16);
          v63 = *(v57 + 24);
          if (v64 >= v63 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1);
            v57 = v170;
          }

          *(v57 + 16) = v64 + 1;
          (*v168)((v57 + v166 + v64 * v60), v12, v7);
          v59 += v60;
          --v56;
        }

        while (v56);
        v70 = v12;

        v3 = v155;
      }

      else
      {
        v70 = v12;

        v57 = MEMORY[0x1E69E7CC0];
        v7 = v158;
      }

      v78 = v136;
      *v136 = v57;
      (*v141)(v78, v140, v163);
      v79 = v143;
      Prompt.Component.value.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v80 = v156;
      v25 = v144;
      v81 = swift_allocObject();
      *(v81 + 16) = v149;
      v82 = v134;
      v3(v81 + v80, v79);
      v83 = v172;
      v84 = v172[2];
      v85 = swift_isUniquelyReferenced_nonNull_native();
      if (!v85 || (v86 = v83[3] >> 1, v86 <= v84))
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85, v84 + 1, 1, v83);
        v86 = v83[3] >> 1;
      }

      v87 = v162;
      if (v86 <= v83[2])
      {
        goto LABEL_60;
      }

      v22 = v82;
      swift_arrayInitWithCopy();

      ++v83[2];
      v172 = v83;
      v88 = *v146;
      (*v146)(v143, v82);
      v88(v87, v82);
      v12 = v70;
    }

LABEL_6:
    v33 = v161 + 1;
    v25 = v148;
    v32 = v147;
    if (v161 + 1 == v151)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_64:
  (*v146)(v25, v3);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, static Log.inference);
  v105 = v117;
  MEMORY[0x1AC5A6AE0](v117);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v108 = 138412290;
    MEMORY[0x1AC5A6AE0](v117);
    v110 = _swift_stdlib_bridgeErrorToNSError();
    *(v108 + 4) = v110;
    *v109 = v110;
    _os_log_impl(&dword_1AB828000, v106, v107, "Unable to decode ImageSurfaceEnvelope: %@", v108, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v109, -1, -1);
    MEMORY[0x1AC5A6CD0](v108, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ImageSurfaceEnvelope.unsealSurface(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for XPCDictionary();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v19 = 0xD00000000000001DLL;
    v20 = 0x80000001ABA41930;
    MEMORY[0x1AC5A5BC0](a2, a3);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v15 = XPCDictionary.subscript.getter();
    if (v15)
    {
      v16 = IOSurfaceLookupFromXPCObject(v15);
      if (v16)
      {
        v17 = v16;
        swift_unknownObjectRelease();

        (*(v11 + 8))(v14, v10);
        return v17;
      }

      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v19 = 0xD000000000000021;
      v20 = 0x80000001ABA41970;
      MEMORY[0x1AC5A5BC0](a2, a3);
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v19 = 0xD00000000000001ALL;
      v20 = 0x80000001ABA41950;
      MEMORY[0x1AC5A5BC0](a2, a3);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t closure #1 in PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for Prompt();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Decodable & Encodable(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    a3[3] = v10;
    v17 = MEMORY[0x1E69C63A0];
    a3[4] = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69C63A0]);
    a3[5] = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, v17);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    Prompt.unseal(_:)(a2, boxed_opaque_existential_1);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16(v9, 1, 1, v10);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    outlined init with copy of Decodable & Encodable(a1, v25);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v24[1];
      MEMORY[0x1EEE9AC00](v21);
      v24[-2] = a2;
      v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PromptKit011ChatMessageD0VG_AHs5NeverOTg5(partial apply for closure #1 in closure #1 in PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.unseal(_:), &v24[-4], v22);

      a3[3] = v20;
      a3[4] = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
      result = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
      a3[5] = result;
      *a3 = v23;
    }

    else
    {
      return outlined init with copy of Decodable & Encodable(a1, a3);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Prompt();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = type metadata accessor for ChatMessagePrompt();
  (*(*(v14 - 8) + 16))(a3, a1, v14);
  ChatMessagePrompt.prompt.getter();
  Prompt.unseal(_:)(a2, v13);
  (*(v7 + 8))(v10, v6);
  return ChatMessagePrompt.prompt.setter();
}

uint64_t PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for OverridableConfigurationStorage();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type OverridableConfigurationStorage and conformance OverridableConfigurationStorage, MEMORY[0x1E69C6520]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of DocumentRegistrationEnvelope(v14, v17, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for OverridableConfigurationStorage();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type OverridableConfigurationStorage and conformance OverridableConfigurationStorage, MEMORY[0x1E69C6520]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PromptVariantEnvelope.ChatMessagesPromptEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PromptVariantEnvelope.CompletionPromptEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PromptVariantEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMR);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v31 - v4;
  v35 = type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMR);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v32 = type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PromptVariantEnvelope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v21 = &v31 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v40, v17, type metadata accessor for PromptVariantEnvelope);
  v23 = (v18 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v36;
    outlined init with take of DocumentRegistrationEnvelope(v17, v36, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    v43 = 1;
    lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();
    v25 = v37;
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope and conformance PromptVariantEnvelope.CompletionPromptEnvelope, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    v27 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v25, v27);
    outlined destroy of DocumentResourceEnvelope(v24, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    return (*v23)(v21, v26);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v17, v13, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    v42 = 0;
    lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();
    v29 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    v30 = v34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v30);
    outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    return (*v23)(v21, v29);
  }
}

uint64_t PromptVariantEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMR);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMR);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for PromptVariantEnvelope(0);
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
  lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();
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
    lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();
    v42 = v48;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v42)
    {
      type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
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
  lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();
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

  type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope and conformance PromptVariantEnvelope.CompletionPromptEnvelope, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
  v35 = v46;
  v36 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v53 + 8))(v33, v36);
  (*(v27 + 8))(v32, v31);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v44 = v45;
  outlined init with take of DocumentRegistrationEnvelope(v35, v45, type metadata accessor for PromptVariantEnvelope);
  outlined init with take of DocumentRegistrationEnvelope(v44, v49, type metadata accessor for PromptVariantEnvelope);
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001ABA41D20 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptVariantEnvelope.CompletionPromptEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.ChatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.ChatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptVariantEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x6974656C706D6F63;
  }

  else
  {
    result = 1952540771;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptVariantEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952540771 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.CompletionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.CompletionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptRenderingEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v20 = 0;
  lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v21 = *(v3 + 4);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 5);
    v13 = *(v3 + 6);
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 7);
    v15 = *(v3 + 8);
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v21 = *(v3 + 9);
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v21 = *(v3 + 10);
    v20 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 11);
    v17 = *(v3 + 12);
    LOBYTE(v21) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptRenderingEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptRenderingEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptRenderingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptRenderingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptRenderingEnvelope(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return PromptRenderingEnvelope.encode(to:)(a1);
}

uint64_t ImageDataEnvelope.encode(to:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration17ImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration17ImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageDataEnvelope.CodingKeys and conformance ImageDataEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = a2 & 1;
  v19 = 0;
  lazy protocol witness table accessor for type ImageFormatEnvelope and conformance ImageFormatEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    outlined copy of Data._Representation(a3, v16);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageDataEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x74616D726F66;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageDataEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageDataEnvelope.CodingKeys and conformance ImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageDataEnvelope.CodingKeys and conformance ImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageDataEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ImageDataEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t PreprocessedImageDataEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29PreprocessedImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29PreprocessedImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreprocessedImageDataEnvelope.CodingKeys and conformance PreprocessedImageDataEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7Float16VGMd, &_sSays7Float16VGMR);
  lazy protocol witness table accessor for type [Float16] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PreprocessedImageDataEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x6570616873;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreprocessedImageDataEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreprocessedImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreprocessedImageDataEnvelope.CodingKeys and conformance PreprocessedImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreprocessedImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreprocessedImageDataEnvelope.CodingKeys and conformance PreprocessedImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PreprocessedImageDataEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PreprocessedImageDataEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageSurfaceEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001ABA41DF0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageSurfaceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageSurfaceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageSurfaceEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ImageSurfaceEnvelope(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for PromptComponentValueConvertible.toValue() in conformance ImageSurfaceEnvelope(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();

  return MEMORY[0x1EEE30290](a1, v2);
}

uint64_t ResponseFormatEnvelope.KindEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.GrammarDetails();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v45 - v9;
  v49 = type metadata accessor for Schema();
  v47 = *(v49 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v20 = type metadata accessor for Prompt.ResponseFormat.Kind();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v21 + 16);
  v52 = a1;
  v25(v24, a1, v20);
  v26 = (*(v21 + 88))(v24, v20);
  if (v26 == *MEMORY[0x1E69DA710])
  {
    (*(v21 + 96))(v24, v20);
    (*(v13 + 32))(v19, v24, v12);
    (*(v13 + 16))(v17, v19, v12);
    *a2 = Prompt.SpecialToken.identifier.getter();
    a2[1] = v27;
    a2[2] = Prompt.ResponseFormat.SchemaDetails.description.getter();
    a2[3] = v28;
    v29 = v46;
    Prompt.ResponseFormat.SchemaDetails.schema.getter();
    v30 = a2 + *(type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0) + 24);
    Schema.type.getter();
    (*(v21 + 8))(v52, v20);
    (*(v47 + 8))(v29, v49);
    v31 = *(v13 + 8);
    v31(v17, v12);
    v31(v19, v12);
LABEL_5:
    type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v26 == *MEMORY[0x1E69DA718])
  {
    (*(v21 + 96))(v24, v20);
    v33 = v50;
    v32 = v51;
    v34 = v48;
    (*(v50 + 32))(v48, v24, v51);
    (*(v33 + 16))(v8, v34, v32);
    v49 = Prompt.ResponseFormat.GrammarDetails.name.getter();
    v47 = v35;
    v36 = Prompt.ResponseFormat.GrammarDetails.description.getter();
    v46 = v37;
    v38 = Prompt.ResponseFormat.GrammarDetails.grammar.getter();
    v40 = v39;
    (*(v21 + 8))(v52, v20);
    v41 = *(v33 + 8);
    v41(v8, v32);
    v41(v34, v32);
    v42 = v46;
    v43 = v47;
    *a2 = v49;
    a2[1] = v43;
    a2[2] = v36;
    a2[3] = v42;
    a2[4] = v38;
    a2[5] = v40;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ResponseFormatEnvelope.KindEnvelope.unseal()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for GenerationSchema();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Schema();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v2, v17, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v17, v13, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    v18 = *v13;
    v19 = *(v13 + 1);
    v20 = *(v13 + 2);
    v21 = *(v13 + 3);
    (*(v4 + 16))(v7, &v13[*(v10 + 24)], v3);

    Schema.init(type:)();
    v22 = v34;
    Prompt.ResponseFormat.SchemaDetails.init(name:description:schema:)();
    outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    v23 = MEMORY[0x1E69DA710];
  }

  else
  {
    v24 = *v17;
    v25 = v17[1];
    v26 = v17[2];
    v27 = v17[3];
    v28 = v17[4];
    v29 = v17[5];
    v22 = v34;
    Prompt.ResponseFormat.GrammarDetails.init(name:description:grammar:)();
    v23 = MEMORY[0x1E69DA718];
  }

  v30 = *v23;
  v31 = type metadata accessor for Prompt.ResponseFormat.Kind();
  return (*(*(v31 - 8) + 104))(v22, v30, v31);
}

uint64_t ResponseFormatEnvelope.KindEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMR);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v32 - v4;
  v34 = type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
  v5 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMR);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMR);
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v32 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v38, v15, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v15, v7, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    LOBYTE(v40) = 1;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();
    v21 = v35;
    v22 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.SchemaDetailsEnvelope and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    v23 = v37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v36 + 8))(v21, v23);
    outlined destroy of DocumentResourceEnvelope(v7, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    return (*(v16 + 8))(v19, v22);
  }

  else
  {
    v25 = *v15;
    v26 = v15[1];
    v27 = v15[2];
    v28 = v15[3];
    v29 = v15[5];
    v37 = v15[4];
    v38 = v25;
    LOBYTE(v40) = 0;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();
    v30 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = v38;
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v44 = v37;
    v45 = v29;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope();
    v31 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v11, v31);
    (*(v16 + 8))(v19, v30);
  }
}

uint64_t ResponseFormatEnvelope.KindEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMR);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMR);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMR);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v14 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();
  v26 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0(v69);
  }

  v49 = v20;
  v50 = v23;
  v59 = v17;
  v28 = v57;
  v27 = v58;
  v29 = v56;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = (2 * *(v30 + 16)) | 1;
  v65 = v30;
  v66 = v30 + 32;
  v67 = 0;
  v68 = v31;
  v32 = specialized Collection<>.popFirst()();
  v33 = v13;
  if (v32 == 2 || v67 != v68 >> 1)
  {
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v37 = v14;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v69);
  }

  if (v32)
  {
    LOBYTE(v60) = 1;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();
    v34 = v27;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.SchemaDetailsEnvelope and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    v41 = v59;
    v42 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v55 + 8))(v34, v42);
    (*(v29 + 8))(v33, v10);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v47 = v41;
  }

  else
  {
    LOBYTE(v60) = 0;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope();
    v40 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 8))(v28, v40);
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v43 = v61;
    v44 = v63;
    v45 = v64;
    v46 = v49;
    *v49 = v60;
    v46[1] = v43;
    *(v46 + 1) = v62;
    v46[4] = v44;
    v46[5] = v45;
    swift_storeEnumTagMultiPayload();
    v47 = v46;
  }

  v48 = v50;
  outlined init with take of DocumentRegistrationEnvelope(v47, v50, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  outlined init with take of DocumentRegistrationEnvelope(v48, v51, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x616D65686373;
  }

  else
  {
    result = 0x72616D6D617267;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72616D6D617267 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseFormatEnvelope.GrammarDetailsEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV014GrammarDetailsH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV014GrammarDetailsH0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x72616D6D617267;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized ResponseFormatEnvelope.GrammarDetailsEnvelope.init(from:)(a1, v6);
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

uint64_t protocol witness for Encodable.encode(to:) in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return ResponseFormatEnvelope.GrammarDetailsEnvelope.encode(to:)(a1);
}

uint64_t ResponseFormatEnvelope.SchemaDetailsEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();
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
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0) + 24);
    v17[13] = 2;
    type metadata accessor for GenerationSchema();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ResponseFormatEnvelope.SchemaDetailsEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for GenerationSchema();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMR);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = a1;
  v16 = v24;
  v15 = v25;
  v29 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v20[1] = v17;
  v28 = 1;
  v13[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13[3] = v18;
  v27 = 2;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v26);
  (*(v22 + 32))(v13 + *(v10 + 24), v6, v15);
  outlined init with copy of DocumentResourceEnvelope(v13, v23, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
}

uint64_t ResponseFormatEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ResponseFormatEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.KindEnvelope and conformance ResponseFormatEnvelope.KindEnvelope, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    outlined init with take of DocumentRegistrationEnvelope(v17, v14, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v16, type metadata accessor for ResponseFormatEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x616D65686373;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ResponseFormatEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.KindEnvelope and conformance ResponseFormatEnvelope.KindEnvelope, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ToolDefinitionsEnvelope.ToolEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMR);
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v57 - v4;
  v5 = type metadata accessor for Tool.Function();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMR);
  v63 = *(v78 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v57 - v9;
  v10 = type metadata accessor for FileGenerationParameters();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMR);
  v62 = *(v73 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v57 - v14;
  v15 = type metadata accessor for ImageGenerationParameters();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMR);
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v21 = &v57 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMR);
  v58 = *(v59 - 8);
  v22 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v24 = &v57 - v23;
  v25 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMR);
  v81 = *(v83 - 8);
  v29 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v31 = &v57 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();
  v80 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v79, v28, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v18;
    v37 = v72;
    v39 = v73;
    v38 = v74;
    v41 = v76;
    v40 = v77;
    v42 = v75;
    v43 = v78;
    if (EnumCaseMultiPayload)
    {
      (*(v75 + 32))(v74, v28, v76);
      v87 = 3;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();
      v47 = v80;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8]);
      v56 = v82;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v56)
      {
        (*(v63 + 8))(v40, v43);
        (*(v42 + 8))(v38, v41);
        goto LABEL_13;
      }

      (*(v63 + 8))(v40, v43);
      (*(v42 + 8))(v38, v41);
    }

    else
    {
      v44 = v70;
      v45 = v36;
      v46 = v71;
      (*(v70 + 32))(v36, v28, v71);
      v86 = 2;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();
      v47 = v80;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90]);
      v48 = v82;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v48)
      {
        (*(v62 + 8))(v37, v39);
        (*(v44 + 8))(v45, v46);
LABEL_13:
        v53 = v83;
        return (*(v81 + 8))(v47, v53);
      }

      (*(v62 + 8))(v37, v39);
      (*(v44 + 8))(v45, v46);
    }

    return (*(v81 + 8))(v47, v83);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v50 = v66;
    v49 = v67;
    v51 = v64;
    (*(v66 + 32))();
    v88 = 4;
    lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();
    v52 = v65;
    v53 = v83;
    v47 = v80;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Tool.Function and conformance Tool.Function, MEMORY[0x1E69A0DD8]);
    v54 = v69;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v68 + 8))(v52, v54);
    (*(v50 + 8))(v51, v49);
    return (*(v81 + 8))(v47, v53);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v84 = 0;
    lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();
    v34 = v83;
    v35 = v80;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v58 + 8))(v24, v59);
  }

  else
  {
    v85 = 1;
    lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();
    v34 = v83;
    v35 = v80;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v60 + 8))(v21, v61);
  }

  return (*(v81 + 8))(v35, v34);
}

uint64_t ToolDefinitionsEnvelope.ToolEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMR);
  v73 = *(v70 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v81 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMR);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMR);
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v59 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMR);
  v67 = *(v66 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v79 = &v59 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMR);
  v64 = *(v65 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v77 = &v59 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMR);
  v76 = *(v78 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v17 = &v59 - v16;
  v18 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
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
  lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();
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
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v75;
      v51 = v76;
      (*(v67 + 8))(v36, v66);
    }

    else
    {
      v88 = 0;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();
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
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();
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
        lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();
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
        lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for Tool.Function();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Tool.Function and conformance Tool.Function, MEMORY[0x1E69A0DD8]);
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
    outlined init with take of DocumentRegistrationEnvelope(v43, v83, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
    v58 = v82;
    v52 = v75;
  }

  outlined init with take of DocumentRegistrationEnvelope(v53, v52, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
  v49 = v58;
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t ToolDefinitionsEnvelope.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDefinitionsEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0cE0OGMd, &_sSay15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0cE0OGMR);
  lazy protocol witness table accessor for type [ToolDefinitionsEnvelope.ToolEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x726573776F7262;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDefinitionsEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ToolDefinitionsEnvelope@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized ToolDefinitionsEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ImageFormatEnvelope.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13JpgCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13JpgCodingKeysOGMR);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13PngCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13PngCodingKeysOGMR);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageFormatEnvelope.CodingKeys and conformance ImageFormatEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    lazy protocol witness table accessor for type ImageFormatEnvelope.JpgCodingKeys and conformance ImageFormatEnvelope.JpgCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    lazy protocol witness table accessor for type ImageFormatEnvelope.PngCodingKeys and conformance ImageFormatEnvelope.PngCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageFormatEnvelope.CodingKeys()
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageFormatEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6778480 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6778986 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.CodingKeys and conformance ImageFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.CodingKeys and conformance ImageFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageFormatEnvelope.JpgCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.JpgCodingKeys and conformance ImageFormatEnvelope.JpgCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageFormatEnvelope.JpgCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.JpgCodingKeys and conformance ImageFormatEnvelope.JpgCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageFormatEnvelope.PngCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.PngCodingKeys and conformance ImageFormatEnvelope.PngCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageFormatEnvelope.PngCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.PngCodingKeys and conformance ImageFormatEnvelope.PngCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageFormatEnvelope@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ImageFormatEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t ImageEmbeddingEncodingEnvelope.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO17Float16CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO17Float16CodingKeysOGMR);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15Uint8CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15Uint8CodingKeysOGMR);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.CodingKeys and conformance ImageEmbeddingEncodingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Float16CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Uint8CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageEmbeddingEncodingEnvelope.CodingKeys()
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageEmbeddingEncodingEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x38746E6975 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEncodingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.CodingKeys and conformance ImageEmbeddingEncodingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEncodingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.CodingKeys and conformance ImageEmbeddingEncodingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Float16CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Float16CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Uint8CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Uint8CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageEmbeddingEncodingEnvelope@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ImageEmbeddingEncodingEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t ImageEmbeddingEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ImageEmbeddingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ImageEmbeddingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageEmbeddingEnvelope.CodingKeys and conformance ImageEmbeddingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = *v3;
  v16[0] = 0;
  lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope and conformance ImageEmbeddingEncodingEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = *(v3 + 8);
    v18 = v17;
    v16[23] = 1;
    outlined init with copy of Data(&v18, v16);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v17, *(&v17 + 1));
    v11 = *(v3 + 24);
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageEmbeddingEnvelope.CodingKeys()
{
  v1 = 0x676E69646F636E65;
  v2 = 0x756F436E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x727574616E676973;
  }

  if (*v0)
  {
    v1 = 1635017060;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageEmbeddingEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ImageEmbeddingEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEnvelope.CodingKeys and conformance ImageEmbeddingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEnvelope.CodingKeys and conformance ImageEmbeddingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ImageEmbeddingEnvelope@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized ImageEmbeddingEnvelope.init(from:)(a1, v6);
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

uint64_t protocol witness for Encodable.encode(to:) in conformance ImageEmbeddingEnvelope(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return ImageEmbeddingEnvelope.encode(to:)(a1);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O04TextI0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O04TextI0V10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMR);
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v62 - v4;
  v5 = type metadata accessor for Prompt.PreprocessedImageData();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMR);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v62 - v10;
  v70 = type metadata accessor for Prompt.ImageEmbeddingData();
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMR);
  v65 = *(v66 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMR);
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v62 - v17;
  v18 = type metadata accessor for Prompt.ImageData();
  v79 = *(v18 - 8);
  v80 = v18;
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMR);
  v63 = *(v22 - 8);
  v23 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - v24;
  v26 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMR);
  v85 = *(v90 - 8);
  v30 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v32 = &v62 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();
  v86 = v32;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v84, v29, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v35 = v69;
        v36 = v67;
        v37 = v70;
        (*(v69 + 32))(v67, v29, v70);
        LOBYTE(v87) = 3;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();
        v38 = v68;
        v39 = v90;
        v40 = v86;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268]);
        v41 = v72;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v42 = v71;
      }

      else
      {
        v35 = v75;
        v37 = v76;
        v36 = v73;
        (*(v75 + 32))(v73, v29, v76);
        LOBYTE(v87) = 4;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();
        v38 = v74;
        v39 = v90;
        v40 = v86;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288]);
        v41 = v78;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v42 = v77;
      }

      (*(v42 + 8))(v38, v41);
      (*(v35 + 8))(v36, v37);
      return (*(v85 + 8))(v40, v39);
    }

    v55 = *v29;
    v54 = *(v29 + 1);
    LOBYTE(v87) = 2;
    lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();
    v56 = v64;
    v57 = v90;
    v58 = v86;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v87 = v55;
    v88 = v54;
    lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
    v59 = v66;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v65 + 8))(v56, v59);
    (*(v85 + 8))(v58, v57);
  }

  v43 = v22;
  v44 = v21;
  v46 = v80;
  v45 = v81;
  v48 = v82;
  v47 = v83;
  if (!EnumCaseMultiPayload)
  {
    v50 = *v29;
    v49 = *(v29 + 1);
    v51 = v29[16];
    LOBYTE(v87) = 0;
    lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();
    v52 = v90;
    v53 = v86;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v87 = v50;
    v88 = v49;
    v89 = v51;
    lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v63 + 8))(v25, v43);
    (*(v85 + 8))(v53, v52);
  }

  v61 = v79;
  (*(v79 + 32))(v44, v29, v80);
  LOBYTE(v87) = 1;
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();
  v40 = v86;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v48 + 8))(v45, v47);
  (*(v61 + 8))(v44, v46);
  v39 = v90;
  return (*(v85 + 8))(v40, v39);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.hash(into:)()
{
  v1 = type metadata accessor for Prompt.PreprocessedImageData();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.ImageEmbeddingData();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.ImageData();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v0, v17, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v10 + 32))(v13, v17, v9);
      MEMORY[0x1AC5A6570](1);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v10 + 8))(v13, v9);
    }

    v21 = *v17;
    v22 = *(v17 + 1);
    v23 = v17[16];
    MEMORY[0x1AC5A6570](0);
    String.hash(into:)();
    Hasher._combine(_:)(v23);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v24 = *v17;
    v25 = *(v17 + 1);
    MEMORY[0x1AC5A6570](2);
    String.hash(into:)();
  }

  if (EnumCaseMultiPayload == 3)
  {
    v19 = v29;
    (*(v29 + 32))(v8, v17, v5);
    MEMORY[0x1AC5A6570](3);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v19 + 8))(v8, v5);
  }

  else
  {
    v27 = v30;
    v26 = v31;
    (*(v30 + 32))(v4, v17, v31);
    MEMORY[0x1AC5A6570](4);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v27 + 8))(v4, v26);
  }
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMR);
  v4 = *(v3 - 8);
  v89 = v3;
  v90 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v76 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMR);
  v88 = *(v87 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v93 = &v76 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMR);
  v86 = *(v83 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v99 = &v76 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMR);
  v85 = *(v84 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v98 = &v76 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMR);
  v82 = *(v96 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v76 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMR);
  v95 = *(v97 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v17 = &v76 - v16;
  v94 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v18 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v81 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v76 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v76 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();
  v37 = v109;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    goto LABEL_9;
  }

  v77 = v31;
  v78 = v25;
  v79 = v28;
  v80 = v22;
  v38 = v96;
  v39 = v97;
  v41 = v98;
  v40 = v99;
  v109 = v34;
  v42 = v100;
  v43 = KeyedDecodingContainer.allKeys.getter();
  v44 = (2 * *(v43 + 16)) | 1;
  v105 = v43;
  v106 = v43 + 32;
  v107 = 0;
  v108 = v44;
  v45 = specialized Collection<>.popFirst()();
  if (v45 == 5 || v107 != v108 >> 1)
  {
    v50 = type metadata accessor for DecodingError();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v52 = v94;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v95 + 8))(v17, v39);
    swift_unknownObjectRelease();
LABEL_9:
    v54 = v101;
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  if (v45 <= 1u)
  {
    v56 = v42;
    if (v45)
    {
      LOBYTE(v102) = 1;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();
      v63 = v41;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = v95;
      type metadata accessor for Prompt.ImageData();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368]);
      v65 = v79;
      v66 = v84;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v85 + 8))(v63, v66);
      (*(v64 + 8))(v17, v39);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v70 = v65;
    }

    else
    {
      LOBYTE(v102) = 0;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();
      v57 = v91;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = v95;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v82 + 8))(v57, v38);
      (*(v58 + 8))(v17, v39);
      swift_unknownObjectRelease();
      v67 = v103;
      v68 = v104;
      v69 = v77;
      *v77 = v102;
      v69[1] = v67;
      *(v69 + 16) = v68;
      swift_storeEnumTagMultiPayload();
      v70 = v69;
    }

    v74 = v109;
    outlined init with take of DocumentRegistrationEnvelope(v70, v109, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v75 = v101;
  }

  else
  {
    if (v45 == 2)
    {
      LOBYTE(v102) = 2;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();
      v59 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
      v60 = v83;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v86 + 8))(v59, v60);
      (*(v95 + 8))(v17, v39);
      swift_unknownObjectRelease();
      v71 = v103;
      v72 = v78;
      *v78 = v102;
      v72[1] = v71;
      swift_storeEnumTagMultiPayload();
      v73 = v72;
    }

    else
    {
      if (v45 == 3)
      {
        LOBYTE(v102) = 3;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v46 = v95;
        type metadata accessor for Prompt.ImageEmbeddingData();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268]);
        v47 = v80;
        v48 = v87;
        v49 = v93;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v88 + 8))(v49, v48);
      }

      else
      {
        LOBYTE(v102) = 4;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v46 = v95;
        type metadata accessor for Prompt.PreprocessedImageData();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288]);
        v47 = v81;
        v61 = v89;
        v62 = v92;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v90 + 8))(v62, v61);
      }

      (*(v46 + 8))(v17, v39);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v73 = v47;
    }

    v74 = v109;
    outlined init with take of DocumentRegistrationEnvelope(v73, v109, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v75 = v101;
    v56 = v42;
  }

  outlined init with take of DocumentRegistrationEnvelope(v74, v56, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  v54 = v75;
  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys()
{
  if (*v0)
  {
    result = 0x7441666C65537369;
  }

  else
  {
    result = 0x676E69727473;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7441666C65537369 && a2 == 0xEF6E6F69746E6574)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x7275536567616D69;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461446567616D69;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v3, v9, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = type metadata accessor for Prompt.ImageData();
      (*(*(v17 - 8) + 32))(a2, v9, v17);
      v12 = MEMORY[0x1E69DA8B0];
    }

    else
    {
      v13 = *v9;
      v14 = *(v9 + 1);
      v15 = v9[16];
      PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:isSelfAttention:)();
      v12 = MEMORY[0x1E69DA8A8];
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    ImageSurfaceEnvelope.unsealSurface(_:)(a1, *v9, *(v9 + 1));

    PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface.init(surface:)();
    v12 = MEMORY[0x1E69DA890];
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = type metadata accessor for Prompt.ImageEmbeddingData();
    (*(*(v11 - 8) + 32))(a2, v9, v11);
    v12 = MEMORY[0x1E69DA898];
  }

  else
  {
    v16 = type metadata accessor for Prompt.PreprocessedImageData();
    (*(*(v16 - 8) + 32))(a2, v9, v16);
    v12 = MEMORY[0x1E69DA8A0];
  }

  v18 = *v12;
  v19 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  return (*(*(v19 - 8) + 104))(a2, v18, v19);
}