uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
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
    v5 = MEMORY[0x1AC5A5C10](15, a1 >> 16);
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

uint64_t specialized static GenerationError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.SpecialToken();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0B5ErrorO_ACtMd, &_s15TokenGeneration0B5ErrorO_ACtMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  v20 = (&v27 + *(v19 + 56) - v17);
  outlined init with copy of TokenGenerationError(a1, &v27 - v17, type metadata accessor for GenerationError);
  outlined init with copy of TokenGenerationError(a2, v20, type metadata accessor for GenerationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_27;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_27;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_27;
    }

LABEL_25:
    outlined destroy of TokenGenerationError(v18, type metadata accessor for GenerationError);
    v23 = 1;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of TokenGenerationError(v18, v11, type metadata accessor for GenerationError);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v28;
      (*(v28 + 32))(v7, v20, v4);
      v23 = MEMORY[0x1AC5A32D0](v11, v7);
      v25 = *(v24 + 8);
      v25(v7, v4);
      v25(v11, v4);
      goto LABEL_19;
    }

    (*(v28 + 8))(v11, v4);
    goto LABEL_27;
  }

  outlined init with copy of TokenGenerationError(v18, v14, type metadata accessor for GenerationError);
  v22 = v14[1];
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_27:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration0B5ErrorO_ACtMd, &_s15TokenGeneration0B5ErrorO_ACtMR);
LABEL_28:
    v23 = 0;
    return v23 & 1;
  }

  if (*v14 != *v20)
  {
    outlined destroy of TokenGenerationError(v18, type metadata accessor for GenerationError);
    goto LABEL_28;
  }

  v23 = v22 == v20[1];
LABEL_19:
  outlined destroy of TokenGenerationError(v18, type metadata accessor for GenerationError);
  return v23 & 1;
}

uint64_t outlined init with copy of TokenGenerationError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TokenGenerationError.Code and conformance TokenGenerationError.Code()
{
  result = lazy protocol witness table cache variable for type TokenGenerationError.Code and conformance TokenGenerationError.Code;
  if (!lazy protocol witness table cache variable for type TokenGenerationError.Code and conformance TokenGenerationError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationError.Code and conformance TokenGenerationError.Code);
  }

  return result;
}

uint64_t base witness table accessor for Error in TokenGenerationError()
{
  return lazy protocol witness table accessor for type Prompt.SpecialToken and conformance Prompt.SpecialToken(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
}

{
  return lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError);
}

uint64_t lazy protocol witness table accessor for type Prompt.SpecialToken and conformance Prompt.SpecialToken(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for TokenGenerationError()
{
  type metadata accessor for (count: Int, maximum: Int, TokenGenerationError.Context)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Prompt.SpecialToken, TokenGenerationError.Context)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (name: String, TokenGenerationError.Context)(319, &lazy cache variable for type metadata for (name: String, TokenGenerationError.Context));
      if (v2 <= 0x3F)
      {
        type metadata accessor for (document: DocumentResource, TokenGenerationError.Context)(319, &lazy cache variable for type metadata for (document: DocumentResource, TokenGenerationError.Context), MEMORY[0x1E69A1500]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for (document: DocumentResource, TokenGenerationError.Context)(319, &lazy cache variable for type metadata for (category: GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.ViolationCategory, TokenGenerationError.Context), MEMORY[0x1E69A0970]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (count: Int, maximum: Int, TokenGenerationError.Context)()
{
  if (!lazy cache variable for type metadata for (count: Int, maximum: Int, TokenGenerationError.Context))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (count: Int, maximum: Int, TokenGenerationError.Context));
    }
  }
}

void type metadata accessor for (Prompt.SpecialToken, TokenGenerationError.Context)()
{
  if (!lazy cache variable for type metadata for (Prompt.SpecialToken, TokenGenerationError.Context))
  {
    type metadata accessor for Prompt.SpecialToken();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Prompt.SpecialToken, TokenGenerationError.Context));
    }
  }
}

void type metadata accessor for (document: DocumentResource, TokenGenerationError.Context)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TokenGenerationError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenGenerationError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for GenerationError()
{
  type metadata accessor for (name: String, TokenGenerationError.Context)(319, &lazy cache variable for type metadata for (count: Int, maximum: Int));
  if (v0 <= 0x3F)
  {
    type metadata accessor for Prompt.SpecialToken();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (name: String, TokenGenerationError.Context)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of TokenGenerationError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TokenGenerationError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of PromptCompletion.Segment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.Segment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TokenGenerationError.descriptionWithoutUnderlying.getter()
{
  result = TokenGenerationError.errorDescription.getter();
  if (!v1)
  {
    _StringGuts.grow(_:)(37);

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC5A5BC0](v2);

    return 0xD000000000000023;
  }

  return result;
}

uint64_t TokenGenerationError.underlyingErrors.getter()
{
  TokenGenerationError.context.getter(&v3);
  v0 = v4;
  MEMORY[0x1AC5A6AE0](v4);

  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1ABA1D930;
  convertToAppleIntelligenceError(error:)();

  return v1;
}

uint64_t TokenGenerationError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TokenGenerationError(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TokenGenerationError.context.getter(&v31);
  v7 = v32;
  MEMORY[0x1AC5A6AE0](v32);

  if (v7)
  {
    convertToAppleIntelligenceError(error:)();
    __swift_project_boxed_opaque_existential_1(&v31, v33);
    dispatch thunk of AppleIntelligenceError.category.getter();

    return __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  else
  {
    outlined init with copy of TokenGenerationError(v1, v6);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C2C0];
        goto LABEL_20;
      case 2u:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C328];
        goto LABEL_20;
      case 3u:
        outlined destroy of TokenGenerationError(v6);
        goto LABEL_15;
      case 4u:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C348];
        goto LABEL_20;
      case 5u:
      case 9u:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C2A0];
        goto LABEL_20;
      case 6u:
        v24 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_AA0aB5ErrorO7ContextVtMd, &_s15TokenGeneration6PromptV07SpecialA0V_AA0aB5ErrorO7ContextVtMR) + 48)];
        v25 = *(v24 + 1);
        v26 = *(v24 + 2);
        v27 = *(v24 + 4);
        v28 = *(v24 + 5);

        v23 = type metadata accessor for Prompt.SpecialToken();
        goto LABEL_12;
      case 7u:
      case 8u:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C318];
        goto LABEL_20;
      case 0xAu:
      case 0xBu:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C330];
        goto LABEL_20;
      case 0xCu:
        v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48)];
        v19 = *(v18 + 1);
        v20 = *(v18 + 2);
        v21 = *(v18 + 4);
        v22 = *(v18 + 5);

        v23 = type metadata accessor for DocumentResource();
LABEL_12:
        (*(*(v23 - 8) + 8))(v6, v23);
LABEL_15:
        v9 = MEMORY[0x1E698C310];
        goto LABEL_20;
      case 0xDu:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C2B8];
        goto LABEL_20;
      case 0xEu:
      case 0x10u:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C2E0];
        goto LABEL_20;
      case 0xFu:
        v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryO8category_15TokenGeneration0mnD0O7ContextVtMd, &_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryO8category_15TokenGeneration0mnD0O7ContextVtMR) + 48)];
        v11 = *(v10 + 1);
        v12 = *(v10 + 2);
        v13 = *(v10 + 4);
        v14 = *(v10 + 5);

        v15 = *MEMORY[0x1E698C2A0];
        v16 = type metadata accessor for AppleIntelligenceErrorCategory();
        (*(*(v16 - 8) + 104))(a1, v15, v16);
        v17 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.ViolationCategory();
        return (*(*(v17 - 8) + 8))(v6, v17);
      case 0x11u:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C2E8];
        goto LABEL_20;
      default:
        outlined destroy of TokenGenerationError(v6);
        v9 = MEMORY[0x1E698C338];
LABEL_20:
        v29 = *v9;
        v30 = type metadata accessor for AppleIntelligenceErrorCategory();
        result = (*(*(v30 - 8) + 104))(a1, v29, v30);
        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of TokenGenerationError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenGenerationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TokenGenerationError(uint64_t a1)
{
  v2 = type metadata accessor for TokenGenerationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for AppleIntelligenceError.underlyingErrors.getter in conformance TokenGenerationError()
{
  TokenGenerationError.context.getter(&v3);
  v0 = v4;
  MEMORY[0x1AC5A6AE0](v4);

  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1ABA1D930;
  convertToAppleIntelligenceError(error:)();

  return v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError);

  return MEMORY[0x1EEDED5B8](a1, v2);
}

void protocol witness for CustomNSError.errorCode.getter in conformance TokenGenerationError()
{
  lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError);

  JUMPOUT(0x1AC5A40C0);
}

uint64_t lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TokenGenerationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TokenGenerator.countTokens(in:metadata:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = v2;
  v5 = type metadata accessor for Prompt();
  *(v3 + 312) = v5;
  v6 = *(v5 - 8);
  *(v3 + 320) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v3 + 336) = v8;
  *(v3 + 344) = v9;
  *(v3 + 352) = *(a2 + 1);
  *(v3 + 368) = a2[3];
  *(v3 + 376) = *(a2 + 2);
  *(v3 + 392) = a2[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator.countTokens(in:metadata:), 0, 0);
}

uint64_t TokenGenerator.countTokens(in:metadata:)()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  PromptVariant.tgPrompt.getter();
  v3 = *(v0 + 392);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  *(v0 + 240) = *(v0 + 344);
  *(v0 + 256) = v5;
  *(v0 + 264) = v4;
  *(v0 + 272) = *(v0 + 376);
  *(v0 + 288) = v3;
  v6 = swift_task_alloc();
  *(v0 + 400) = v6;
  *v6 = v0;
  v6[1] = TokenGenerator.countTokens(in:metadata:);
  v7 = *(v0 + 336);
  v8 = *(v0 + 296);
  v9 = *(v0 + 304);

  return TokenGenerator._countTokens(in:promptVariant:metadata:)(v0 + 16, v7, v8, (v0 + 240));
}

{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = TokenGenerator.countTokens(in:metadata:);
  }

  else
  {
    v3 = TokenGenerator.countTokens(in:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v32 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  outlined destroy of CountTokensResponse(v0 + 128);
  v4 = *(v0 + 128);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generator);
  (*(v7 + 16))(v6, v5, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  if (v12)
  {
    v30 = *(v0 + 336);
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v17 = 134218243;
    *(v17 + 4) = v4;
    *(v17 + 12) = 2085;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v11;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v31);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1AB828000, v10, v28, "Counted %ld tokens in prompt: %{sensitive}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1AC5A6CD0](v29, -1, -1);
    MEMORY[0x1AC5A6CD0](v17, -1, -1);

    v21(v30, v16);
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v13, v16);
    v23(v14, v16);
  }

  v25 = *(v0 + 328);
  v24 = *(v0 + 336);

  v26 = *(v0 + 8);

  return v26(v4);
}

{
  (*(v0[40] + 8))(v0[42], v0[39]);
  v1 = v0[51];
  v3 = v0[41];
  v2 = v0[42];

  v4 = v0[1];

  return v4();
}

uint64_t TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 296) = a2;
  v7 = type metadata accessor for PromptTemplateInfo();
  *(v3 + 304) = v7;
  v8 = *(v7 - 8);
  *(v3 + 312) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  v10 = *(a3 + 48);
  v11 = *(a3 + 16);
  *(v3 + 240) = *a3;
  v12 = *(a3 + 32);
  *(v3 + 256) = v11;
  *(v3 + 272) = v12;
  *(v3 + 288) = v10;
  v13 = swift_task_alloc();
  *(v3 + 336) = v13;
  *v13 = v3;
  v13[1] = TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:);

  return TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(v3 + 16, a1, a2, v3 + 240);
}

uint64_t TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:)()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:);
  }

  else
  {
    v3 = TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  outlined destroy of CountTokensResponse(v0 + 128);
  v4 = *(v0 + 128);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 296);
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generator);
  (*(v6 + 16))(v5, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 328);
  v15 = *(v0 + 304);
  v14 = *(v0 + 312);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v16 = 134218243;
    *(v16 + 4) = v4;
    *(v16 + 12) = 2085;
    v17 = PromptTemplateInfo.templateID.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v26);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_1AB828000, v10, v11, "Counted %ld tokens for prompt template: %{sensitive}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1AC5A6CD0](v25, -1, -1);
    MEMORY[0x1AC5A6CD0](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = *(v0 + 320);
  v21 = *(v0 + 328);

  v23 = *(v0 + 8);

  return v23(v4);
}

{
  v31 = v0;
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.generator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x1AC5A6AE0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[39];
    v9 = v0[40];
    v28 = v0[38];
    v29 = v0[43];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v11 = 136643075;
    v14 = PromptTemplateInfo.templateID.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v28);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v30);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v29);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_1AB828000, v7, v8, "Failed to count tokens for prompt template: %{sensitive}s. %@", v11, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
    MEMORY[0x1AC5A6CD0](v11, -1, -1);
  }

  else
  {
    v20 = v0[39];
    v19 = v0[40];
    v21 = v0[38];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[43];
  v23 = v0[40];
  v24 = v0[41];
  swift_willThrow();

  v25 = v0[1];
  v26 = v0[43];

  return v25();
}

uint64_t TokenGenerator.complete(prompt:parameters:tools:toolChoice:documents:constraint:metadata:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (**a6)(char *, uint64_t)@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v217 = a3;
  v236 = a6;
  v237 = a4;
  v215 = a5;
  v216 = a8;
  v253 = a1;
  v231 = type metadata accessor for Schema();
  v205 = *(v231 - 8);
  v10 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v235 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for FunctionDescription(0);
  v12 = *(*(v229 - 8) + 64);
  MEMORY[0x1EEE9AC00](v229);
  v251 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v193 - v15;
  v246 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v16 = *(*(v246 - 8) + 64);
  MEMORY[0x1EEE9AC00](v246);
  v245 = (&v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v244 = type metadata accessor for ToolType(0);
  v18 = *(*(v244 - 8) + 64);
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v257 = (&v193 - v21);
  v22 = type metadata accessor for ToolDescription(0);
  v248 = *(v22 - 8);
  v23 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v204 = (&v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v254 = (&v193 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v250 = (&v193 - v28);
  v29 = type metadata accessor for ToolDescriptionEnvelope(0);
  v242 = *(v29 - 8);
  v30 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v241 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v233 = &v193 - v34;
  v232 = type metadata accessor for AnyTooling();
  v234 = *(v232 - 8);
  v35 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v247 = &v193 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for ToolType();
  v252 = *(v255 - 8);
  v37 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v240 = (&v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v256 = &v193 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v276 = &v193 - v42;
  v43 = type metadata accessor for ToolChoice();
  v213 = *(v43 - 8);
  v214 = v43;
  v44 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v212 = &v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v211 = &v193 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v249 = (&v193 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v51);
  v220 = &v193 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v222 = &v193 - v55;
  v56 = type metadata accessor for PromptVariant();
  v218 = *(v56 - 8);
  v219 = v56;
  v57 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v209 = &v193 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v226 = &v193 - v60;
  v221 = type metadata accessor for CompletePromptRequest(0);
  v61 = *(*(v221 - 8) + 64);
  MEMORY[0x1EEE9AC00](v221);
  v224 = &v193 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v223 = &v193 - v64;
  v65 = type metadata accessor for UUID();
  v207 = *(v65 - 8);
  v208 = v65;
  v66 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v206 = &v193 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Prompt();
  v227 = *(v68 - 8);
  v228 = v68;
  v69 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v210 = &v193 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v225 = &v193 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v193 - v74;
  v76 = *(a2 + 176);
  v272 = *(a2 + 160);
  v273 = v76;
  v274 = *(a2 + 192);
  v275 = *(a2 + 208);
  v77 = *(a2 + 112);
  v268 = *(a2 + 96);
  v269 = v77;
  v78 = *(a2 + 144);
  v270 = *(a2 + 128);
  v271 = v78;
  v79 = *(a2 + 48);
  v264 = *(a2 + 32);
  v265 = v79;
  v80 = *(a2 + 80);
  v266 = *(a2 + 64);
  v267 = v80;
  v81 = *(a2 + 16);
  v262 = *a2;
  v263 = v81;
  v82 = *a7;
  v238 = a7[1];
  v83 = a7[2];
  v84 = a7[3];
  v85 = a7[4];
  v86 = a7[5];
  v87 = a7[6];
  v88 = v239;
  result = PromptVariant.tgPrompt.getter();
  if (!v88)
  {
    v199 = v87;
    v200 = v86;
    v201 = v85;
    v202 = v84;
    v239 = v83;
    v193 = v82;
    v90 = v206;
    v91 = v207;
    v92 = v208;
    v198 = 0;
    v203 = v75;
    if (v238)
    {
      v93 = v193;
      v196 = v238;
      v197 = v193;
      v206 = v201;
      v194 = v239;
      v195 = v200;
      v207 = v199;
      v208 = v202;
      v94 = v226;
      v95 = v227;
      v96 = v203;
      v98 = v224;
      v97 = v225;
      v99 = v218;
    }

    else
    {
      UUID.init()();
      v100 = UUID.uuidString.getter();
      v196 = v101;
      v197 = v100;
      (*(v91 + 8))(v90, v92);
      v208 = 0x80000001ABA42970;
      v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v206 = 0;
      v207 = v102;
      v194 = 0xD000000000000054;
      v195 = 0;
      v94 = v226;
      v95 = v227;
      v96 = v203;
      v98 = v224;
      v97 = v225;
      v99 = v218;
      v93 = v193;
    }

    v103 = *(v95 + 16);
    v104 = v228;
    v103(v97, v96, v228);
    v105 = *(v99 + 16);
    v106 = v94;
    v107 = v219;
    v105(v106, v253, v219);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v236, v222, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v237, v220, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined copy of RequestMetadata?(v93, v238);
    outlined init with copy of SamplingParameters(&v262, v260);
    XPCDictionary.init()();
    v108 = v210;
    v103(v210, v225, v104);
    v109 = specialized PromptEnvelope.init(sealing:xpcData:)(v108, v98);
    v110 = v221;
    v111 = (v98 + *(v221 + 20));
    *v111 = v109;
    v111[1] = v112;
    v111[2] = v113;
    v111[3] = v114;
    v115 = v209;
    v105(v209, v226, v107);
    PromptVariantEnvelope.init(sealing:xpcData:)(v115, v98, v98 + *(v110 + 24));
    v258[10] = v272;
    v258[11] = v273;
    v258[12] = v274;
    v259 = v275;
    v258[6] = v268;
    v258[7] = v269;
    v258[8] = v270;
    v258[9] = v271;
    v258[2] = v264;
    v258[3] = v265;
    v258[4] = v266;
    v258[5] = v267;
    v258[0] = v262;
    v258[1] = v263;
    SamplingParametersEnvelope.init(sealing:)(v258, v260);
    v116 = v98 + *(v110 + 28);
    v117 = v260[11];
    *(v116 + 160) = v260[10];
    *(v116 + 176) = v117;
    *(v116 + 192) = v260[12];
    *(v116 + 208) = v261;
    v118 = v260[7];
    *(v116 + 96) = v260[6];
    *(v116 + 112) = v118;
    v119 = v260[9];
    *(v116 + 128) = v260[8];
    *(v116 + 144) = v119;
    v120 = v260[3];
    *(v116 + 32) = v260[2];
    *(v116 + 48) = v120;
    v121 = v260[5];
    *(v116 + 64) = v260[4];
    *(v116 + 80) = v121;
    v122 = v260[1];
    *v116 = v260[0];
    *(v116 + 16) = v122;
    v123 = v217;
    v124 = *(v217 + 16);
    v125 = MEMORY[0x1E69E7CC0];
    v210 = v124;
    if (v124)
    {
      *&v258[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124, 0);
      v126 = *&v258[0];
      v127 = *(v252 + 16);
      v128 = v123 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
      v237 = *(v252 + 72);
      v238 = v127;
      v239 = v252 + 16;
      v236 = (v252 + 8);
      v129 = v256;
      v130 = v204;
      do
      {
        v253 = v124;
        v131 = v255;
        v132 = v238;
        v238(v129, v128, v255);
        v133 = v240;
        v132(v240, v129, v131);
        ToolDescription.init(toolType:)(v133, v130);
        (*v236)(v129, v131);
        *&v258[0] = v126;
        v135 = *(v126 + 16);
        v134 = *(v126 + 24);
        if (v135 >= v134 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v134 > 1, v135 + 1, 1);
          v126 = *&v258[0];
        }

        *(v126 + 16) = v135 + 1;
        outlined init with take of ToolDescription(v130, v126 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v135, type metadata accessor for ToolDescription);
        v128 += v237;
        v124 = v253 - 1;
        v129 = v256;
      }

      while (v253 != 1);
      v98 = v224;
      v136 = v126;
      v125 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v136 = MEMORY[0x1E69E7CC0];
    }

    v137 = *(v136 + 16);
    v139 = v250;
    v138 = v251;
    v140 = v257;
    v141 = v249;
    if (v137)
    {
      *&v258[0] = v125;
      v142 = v136;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137, 0);
      v143 = *&v258[0];
      v144 = v142 + ((*(v248 + 80) + 32) & ~*(v248 + 80));
      v253 = *(v248 + 72);
      v248 = v205 + 16;
      v239 = v142;
      v240 = (v205 + 8);
      do
      {
        outlined init with copy of ToolDescription(v144, v139, type metadata accessor for ToolDescription);
        v145 = v139;
        v146 = v254;
        outlined init with copy of ToolDescription(v145, v254, type metadata accessor for ToolDescription);
        outlined init with copy of ToolDescription(v146, v140, type metadata accessor for ToolType);
        v147 = v243;
        outlined init with copy of ToolDescription(v140, v243, type metadata accessor for ToolType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            outlined destroy of ToolType(v257, type metadata accessor for ToolType);
            v150 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of ToolType(v257, type metadata accessor for ToolType);
            v150 = type metadata accessor for ImageGenerationParameters();
          }

          v149 = v245;
          (*(*(v150 - 8) + 32))(v245, v147, v150);
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v151 = v147;
          v152 = v230;
          outlined init with take of ToolDescription(v151, v230, type metadata accessor for FunctionDescription);
          outlined init with copy of ToolDescription(v152, v138, type metadata accessor for FunctionDescription);
          v153 = v138[1];
          v154 = v245;
          *v245 = *v138;
          v154[1] = v153;
          v155 = v138;
          v156 = v138[2];
          v157 = v138[3];
          v154[2] = v156;
          v154[3] = v157;
          (*v248)(v235, v155 + *(v229 + 24), v231);
          v158 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

          v149 = v154;

          Schema.type.getter();
          outlined destroy of ToolType(v257, type metadata accessor for ToolType);
          (*v240)(v235, v231);
          outlined destroy of ToolType(v155, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v230, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of ToolType(v257, type metadata accessor for ToolType);
          v149 = v245;
        }

        v139 = v250;
        v159 = v241;
        swift_storeEnumTagMultiPayload();
        outlined init with take of ToolDescription(v149, v159, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of ToolType(v254, type metadata accessor for ToolDescription);
        outlined destroy of ToolType(v139, type metadata accessor for ToolDescription);
        *&v258[0] = v143;
        v161 = *(v143 + 16);
        v160 = *(v143 + 24);
        if (v161 >= v160 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v160 > 1, v161 + 1, 1);
          v143 = *&v258[0];
        }

        *(v143 + 16) = v161 + 1;
        outlined init with take of ToolDescription(v159, v143 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v161, type metadata accessor for ToolDescriptionEnvelope);
        v144 += v253;
        --v137;
        v138 = v251;
        v140 = v257;
        v141 = v249;
      }

      while (v137);

      v98 = v224;
    }

    else
    {

      v143 = MEMORY[0x1E69E7CC0];
    }

    v162 = v220;
    v163 = v221;
    *(v98 + *(v221 + 36)) = v143;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v162, v141, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v165 = v213;
    v164 = v214;
    v166 = (*(v213 + 48))(v141, 1, v214);
    v167 = v276;
    v168 = v141;
    v170 = v211;
    v169 = v212;
    if (v166 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v162, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v218 + 8))(v226, v219);
      v249 = *(v227 + 8);
      v249(v225, v228);
      v171 = xmmword_1ABA26F10;
    }

    else
    {
      (*(v165 + 32))(v211, v168, v164);
      (*(v165 + 16))(v169, v170, v164);
      ToolChoiceEnvelope.init(sealing:)(v169, v258);
      (*(v165 + 8))(v170, v164);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v162, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v218 + 8))(v226, v219);
      v249 = *(v227 + 8);
      v249(v225, v228);
      v171 = v258[0];
    }

    v172 = v252;
    v173 = v222;
    *(v98 + v163[10]) = v171;
    v174 = (v98 + v163[12]);
    v175 = v196;
    *v174 = v197;
    v174[1] = v175;
    v176 = v208;
    v174[2] = v194;
    v174[3] = v176;
    v177 = v195;
    v174[4] = v206;
    v174[5] = v177;
    v174[6] = v207;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v173, v98 + v163[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v98 + v163[11]) = v215;
    outlined init with take of ToolDescription(v98, v223, type metadata accessor for CompletePromptRequest);
    v178 = v210;
    if (v210)
    {
      v180 = *(v172 + 16);
      v179 = v172 + 16;
      v181 = v217 + ((*(v179 + 64) + 32) & ~*(v179 + 64));
      v253 = *(v179 + 56);
      v254 = v180;
      v251 = (v179 - 8);
      v252 = v179;
      v250 = (v234 + 48);

      v257 = MEMORY[0x1E69E7CC0];
      v183 = v232;
      v182 = v233;
      do
      {
        v184 = v254;
        v185 = v255;
        (v254)(v167, v181, v255);
        v186 = v256;
        v184(v256, v276, v185);
        v167 = v276;
        AnyTooling.init(_:)(v186, v182);
        (*v251)(v167, v185);
        if ((*v250)(v182, 1, v183) == 1)
        {
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v182, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
        }

        else
        {
          outlined init with take of ToolDescription(v182, v247, type metadata accessor for AnyTooling);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v257[2] + 1, 1, v257, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v188 = v257[2];
          v187 = v257[3];
          v189 = v234;
          if (v188 >= v187 >> 1)
          {
            v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187 > 1, v188 + 1, 1, v257, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
            v189 = v234;
            v257 = v191;
          }

          v190 = v257;
          v257[2] = v188 + 1;
          outlined init with take of ToolDescription(v247, v190 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v188, type metadata accessor for AnyTooling);
          v183 = v232;
          v182 = v233;
        }

        v181 += v253;
        --v178;
      }

      while (v178);
    }

    else
    {

      v257 = MEMORY[0x1E69E7CC0];
    }

    v192 = v223;
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v223, v257, v216);

    outlined destroy of ToolType(v192, type metadata accessor for CompletePromptRequest);
    return (v249)(v203, v228);
  }

  return result;
}

void TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, void, uint64_t, uint64_t)@<X6>, uint64_t *a8@<X7>, uint64_t (**a9)()@<X8>)
{
  v267 = a6;
  v259 = a5;
  v260 = a7;
  v261 = a4;
  v258 = a2;
  v291 = a1;
  v266 = a9;
  v240 = type metadata accessor for PromptTemplate.PromptTemplateRenderError();
  v238 = *(v240 - 8);
  v11 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v237 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = type metadata accessor for ToolType();
  v301 = *(v295 - 1);
  v13 = *(v301 + 64);
  v14 = MEMORY[0x1EEE9AC00](v295);
  v294 = &v237 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v293 = &v237 - v16;
  v289 = type metadata accessor for Schema();
  v251 = *(v289 - 8);
  v17 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v289);
  v285 = &v237 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = type metadata accessor for FunctionDescription(0);
  v19 = *(*(v284 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v284);
  v283 = &v237 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v288 = &v237 - v22;
  v287 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v23 = *(*(v287 - 8) + 64);
  MEMORY[0x1EEE9AC00](v287);
  v299 = (&v237 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = type metadata accessor for ToolType(0);
  v25 = *(*(v298 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v298);
  v302 = &v237 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v324 = &v237 - v28;
  v29 = type metadata accessor for ToolDescription(0);
  v300 = *(v29 - 8);
  v30 = *(v300 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v250 = (&v237 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x1EEE9AC00](v31);
  v305 = &v237 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v304 = &v237 - v35;
  v36 = type metadata accessor for ToolDescriptionEnvelope(0);
  v297 = *(v36 - 8);
  v37 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v296 = &v237 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ToolChoice();
  v264 = *(v39 - 8);
  v265 = v39;
  v40 = *(v264 + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v247 = &v237 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v246 = &v237 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v245 = &v237 - v46;
  v303 = type metadata accessor for PromptVariant();
  v292 = *(v303 - 8);
  v47 = *(v292 + 64);
  v48 = MEMORY[0x1EEE9AC00](v303);
  v244 = &v237 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v243 = &v237 - v50;
  v51 = type metadata accessor for Prompt();
  v52 = *(v51 - 8);
  v268 = v51;
  v269 = v52;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x1EEE9AC00](v51);
  v241 = &v237 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v242 = &v237 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v276 = &v237 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x1EEE9AC00](v60 - 8);
  v262 = &v237 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v275 = &v237 - v64;
  v279 = type metadata accessor for PromptTemplateInfo();
  v281 = *(v279 - 8);
  v65 = *(v281 + 64);
  v66 = MEMORY[0x1EEE9AC00](v279);
  v257 = &v237 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v278 = &v237 - v68;
  v282 = type metadata accessor for CompletePromptTemplateRequest(0);
  v69 = *(*(v282 - 1) + 64);
  v70 = MEMORY[0x1EEE9AC00](v282);
  v280 = &v237 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v263 = &v237 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x1EEE9AC00](v73 - 8);
  v253 = &v237 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v277 = &v237 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v249 = &v237 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v81 = *(*(v80 - 8) + 64);
  v82 = MEMORY[0x1EEE9AC00](v80 - 8);
  v252 = &v237 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v273 = &v237 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v248 = &v237 - v87;
  MEMORY[0x1EEE9AC00](v86);
  v274 = &v237 - v88;
  v89 = type metadata accessor for UUID();
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v94 = &v237 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(a3 + 176);
  v320 = *(a3 + 160);
  v321 = v95;
  v322 = *(a3 + 192);
  v323 = *(a3 + 208);
  v96 = *(a3 + 112);
  v316 = *(a3 + 96);
  v317 = v96;
  v97 = *(a3 + 144);
  v318 = *(a3 + 128);
  v319 = v97;
  v98 = *(a3 + 32);
  v313 = *(a3 + 48);
  v99 = *(a3 + 80);
  v314 = *(a3 + 64);
  v315 = v99;
  v100 = *(a3 + 16);
  v310 = *a3;
  v311 = v100;
  v312 = v98;
  v101 = *a8;
  v102 = a8[1];
  v104 = a8[2];
  v103 = a8[3];
  v105 = a8[4];
  v106 = a8[5];
  v107 = a8[6];
  if (v102)
  {
    v255 = v105;
    v256 = v101;
    v290 = v102;
    v254 = v104;
    v271 = v103;
    v272 = v106;
    v270 = v107;
  }

  else
  {
    v237 = v105;
    v272 = v91;
    v108 = v92;
    UUID.init()();
    v256 = UUID.uuidString.getter();
    v290 = v109;
    (*(v108 + 8))(v94, v272);
    v271 = 0x80000001ABA429D0;
    v270 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v272 = 0;
    v254 = 0xD00000000000005ELL;
    v255 = 0;
  }

  type metadata accessor for CatalogClient();
  outlined copy of RequestMetadata?(v101, v102);
  v110 = static CatalogClient.canAccessService()();
  v111 = v291;
  if ((v110 & 1) == 0)
  {
    v114 = v268;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    __swift_project_value_buffer(v119, static Log.generator);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    v122 = os_log_type_enabled(v120, v121);
    v123 = v269;
    if (v122)
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_1AB828000, v120, v121, "Skipping fallback prompt rendering since this process is not entitled.", v124, 2u);
      MEMORY[0x1AC5A6CD0](v124, -1, -1);
    }

    v116 = v274;
    v123[7](v274, 1, 1, v114);
    goto LABEL_23;
  }

  v112 = v249;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v291, v249, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v113 = (*(v292 + 48))(v112, 1, v303);
  v114 = v268;
  if (v113 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v112, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v115 = 1;
    v116 = v274;
    v117 = v269;
    v118 = v248;
  }

  else
  {
    v118 = v248;
    v125 = v286;
    PromptVariant.tgPrompt.getter();
    v117 = v269;
    if (v125)
    {
      (*(v292 + 8))(v112, v303);
      *&v308[0] = v125;
      MEMORY[0x1AC5A6AE0](v125);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v127 = v239;
      v126 = v240;
      if (swift_dynamicCast())
      {
        v128 = v238;
        if ((*(v238 + 88))(v127, v126) == *MEMORY[0x1E69DA8D8])
        {

          if (one-time initialization token for generator != -1)
          {
            swift_once();
          }

          v129 = type metadata accessor for Logger();
          __swift_project_value_buffer(v129, static Log.generator);
          v130 = Logger.logObject.getter();
          v131 = static os_log_type_t.error.getter();
          v132 = os_log_type_enabled(v130, v131);
          v111 = v291;
          if (v132)
          {
            v133 = swift_slowAlloc();
            *v133 = 0;
            _os_log_impl(&dword_1AB828000, v130, v131, "Ignoring missing prompt template when attempting to render. Sending nil prompt to inference provider", v133, 2u);
            MEMORY[0x1AC5A6CD0](v133, -1, -1);
          }

          v116 = v274;
          v117[7](v274, 1, 1, v114);

          v286 = 0;
          goto LABEL_22;
        }

        (*(v128 + 8))(v127, v126);
      }

      else
      {
      }

      return;
    }

    v286 = 0;
    (*(v292 + 8))(v112, v303);
    v115 = 0;
    v116 = v274;
    v111 = v291;
  }

  v117[7](v118, v115, 1, v114);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v118, v116, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
LABEL_22:
  v123 = v117;
LABEL_23:
  v134 = v281;
  v135 = v273;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v116, v273, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v111, v277, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v136 = *(v134 + 16);
  v291 = v134 + 16;
  v269 = v136;
  (v136)(v278, v258, v279);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v259, v275, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v260, v276, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of SamplingParameters(&v310, v308);
  v137 = v280;
  XPCDictionary.init()();
  v138 = v282;
  v139 = v137 + v282[5];
  *v139 = 0u;
  *(v139 + 16) = 0u;
  v140 = v138[6];
  v141 = type metadata accessor for PromptVariantEnvelope(0);
  v142 = *(v141 - 8);
  v143 = *(v142 + 56);
  v268 = v140;
  v259 = v142 + 56;
  v260 = v143;
  v143(v137 + v140, 1, 1, v141);
  v144 = v135;
  v145 = v252;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v144, v252, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((v123[6])(v145, 1, v114) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v145, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v146 = v123;
    v147 = v242;
    (v123[4])(v242, v145, v114);
    v148 = v241;
    (v123[2])(v241, v147, v114);
    v149 = specialized PromptEnvelope.init(sealing:xpcData:)(v148, v137);
    v151 = v150;
    v152 = v114;
    v154 = v153;
    v156 = v155;
    (v146[1])(v147, v152);
    *v139 = v149;
    *(v139 + 8) = v151;
    *(v139 + 16) = v154;
    *(v139 + 24) = v156;
  }

  v157 = v303;
  v158 = v253;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v277, v253, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v159 = v292;
  if ((*(v292 + 48))(v158, 1, v157) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v158, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v160 = v280;
  }

  else
  {
    v161 = v243;
    (*(v159 + 32))(v243, v158, v157);
    v162 = v244;
    (*(v159 + 16))(v244, v161, v157);
    v163 = v159;
    v164 = v245;
    v165 = v162;
    v160 = v280;
    PromptVariantEnvelope.init(sealing:xpcData:)(v165, v280, v245);
    (*(v163 + 8))(v161, v157);
    v260(v164, 0, 1, v141);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v164, v160 + v268, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v166 = v257;
  v167 = v279;
  (v269)(v257, v278, v279);
  v168 = v282;
  v169 = (v160 + v282[7]);
  v169[1] = PromptTemplateInfo.templateID.getter();
  v169[2] = v170;
  v171 = PromptTemplateInfo.richVariableBindings.getter();
  v172 = v286;
  v173 = specialized _NativeDictionary.mapValues<A>(_:)(v171, v160);
  v286 = v172;

  *v169 = v173;
  v174 = v169 + *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  PromptTemplateInfo.locale.getter();
  v175 = *(v281 + 8);
  v281 += 8;
  v269 = v175;
  (v175)(v166, v167);
  v306[10] = v320;
  v306[11] = v321;
  v306[12] = v322;
  v307 = v323;
  v306[6] = v316;
  v306[7] = v317;
  v306[8] = v318;
  v306[9] = v319;
  v306[2] = v312;
  v306[3] = v313;
  v306[4] = v314;
  v306[5] = v315;
  v306[0] = v310;
  v306[1] = v311;
  SamplingParametersEnvelope.init(sealing:)(v306, v308);
  v176 = v160 + v168[8];
  v177 = v308[5];
  *(v176 + 64) = v308[4];
  *(v176 + 80) = v177;
  v178 = v308[3];
  *(v176 + 32) = v308[2];
  *(v176 + 48) = v178;
  v179 = v308[9];
  *(v176 + 128) = v308[8];
  *(v176 + 144) = v179;
  v180 = v308[7];
  *(v176 + 96) = v308[6];
  *(v176 + 112) = v180;
  *(v176 + 208) = v309;
  v181 = v308[12];
  *(v176 + 176) = v308[11];
  *(v176 + 192) = v181;
  *(v176 + 160) = v308[10];
  v182 = v308[1];
  *v176 = v308[0];
  *(v176 + 16) = v182;
  v183 = (v160 + v168[13]);
  v184 = v290;
  *v183 = v256;
  v183[1] = v184;
  v185 = v271;
  v183[2] = v254;
  v183[3] = v185;
  v186 = v272;
  v183[4] = v255;
  v183[5] = v186;
  v183[6] = v270;
  v187 = v261;
  v188 = *(v261 + 16);
  v189 = MEMORY[0x1E69E7CC0];
  if (v188)
  {
    *&v306[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v188, 0);
    v190 = *&v306[0];
    v191 = *(v301 + 16);
    v192 = v187 + ((*(v301 + 80) + 32) & ~*(v301 + 80));
    v291 = *(v301 + 72);
    v292 = v191;
    v301 += 16;
    v290 = (v301 - 8);
    v193 = v250;
    do
    {
      v303 = v188;
      v194 = v190;
      v195 = v293;
      v196 = v295;
      v197 = v193;
      v198 = v292;
      (v292)(v293, v192, v295);
      v199 = v294;
      v198(v294, v195, v196);
      v193 = v197;
      ToolDescription.init(toolType:)(v199, v197);
      v200 = v195;
      v190 = v194;
      (*v290)(v200, v196);
      *&v306[0] = v194;
      v202 = *(v194 + 2);
      v201 = *(v194 + 3);
      if (v202 >= v201 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v201 > 1, v202 + 1, 1);
        v190 = *&v306[0];
      }

      *(v190 + 2) = v202 + 1;
      outlined init with take of ToolDescription(v197, &v190[((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v202], type metadata accessor for ToolDescription);
      v192 += v291;
      v188 = v303 - 1;
    }

    while (v303 != 1);
    v189 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v190 = MEMORY[0x1E69E7CC0];
  }

  v203 = *(v190 + 2);
  if (v203)
  {
    *&v306[0] = v189;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v203, 0);
    v204 = *&v306[0];
    v205 = &v190[(*(v300 + 80) + 32) & ~*(v300 + 80)];
    v303 = *(v300 + 72);
    v300 = v251 + 16;
    v294 = v190;
    v295 = (v251 + 8);
    do
    {
      v206 = v304;
      outlined init with copy of ToolDescription(v205, v304, type metadata accessor for ToolDescription);
      v207 = v206;
      v208 = v305;
      outlined init with copy of ToolDescription(v207, v305, type metadata accessor for ToolDescription);
      v209 = v208;
      v210 = v324;
      outlined init with copy of ToolDescription(v209, v324, type metadata accessor for ToolType);
      outlined init with copy of ToolDescription(v210, v302, type metadata accessor for ToolType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of ToolType(v324, type metadata accessor for ToolType);
          v213 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of ToolType(v324, type metadata accessor for ToolType);
          v213 = type metadata accessor for ImageGenerationParameters();
        }

        v212 = v299;
        (*(*(v213 - 8) + 32))(v299, v302, v213);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v214 = v288;
        outlined init with take of ToolDescription(v302, v288, type metadata accessor for FunctionDescription);
        v215 = v283;
        outlined init with copy of ToolDescription(v214, v283, type metadata accessor for FunctionDescription);
        v216 = *v215;
        v301 = *(v215 + 1);
        v217 = v301;
        v212 = v299;
        v218 = v300;
        *v299 = v216;
        v212[1] = v217;
        v219 = *(v215 + 3);
        v212[2] = *(v215 + 2);
        v212[3] = v219;
        v220 = v285;
        (*v218)(v285, &v215[*(v284 + 24)], v289);
        v221 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

        Schema.type.getter();
        outlined destroy of ToolType(v324, type metadata accessor for ToolType);
        (*v295)(v220, v289);
        outlined destroy of ToolType(v215, type metadata accessor for FunctionDescription);
        outlined destroy of ToolType(v288, type metadata accessor for FunctionDescription);
      }

      else
      {
        outlined destroy of ToolType(v324, type metadata accessor for ToolType);
        v212 = v299;
      }

      swift_storeEnumTagMultiPayload();
      v222 = v296;
      outlined init with take of ToolDescription(v212, v296, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      outlined destroy of ToolType(v305, type metadata accessor for ToolDescription);
      outlined destroy of ToolType(v304, type metadata accessor for ToolDescription);
      *&v306[0] = v204;
      v224 = *(v204 + 16);
      v223 = *(v204 + 24);
      if (v224 >= v223 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v223 > 1, v224 + 1, 1);
        v204 = *&v306[0];
      }

      *(v204 + 16) = v224 + 1;
      outlined init with take of ToolDescription(v222, v204 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v224, type metadata accessor for ToolDescriptionEnvelope);
      v205 += v303;
      --v203;
    }

    while (v203);
  }

  else
  {

    v204 = MEMORY[0x1E69E7CC0];
  }

  v225 = v280;
  *(v280 + v282[9]) = v204;
  v226 = v275;
  v227 = v262;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v275, v262, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v229 = v264;
  v228 = v265;
  if ((*(v264 + 48))(v227, 1, v265) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v226, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (v269)(v278, v279);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v277, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v273, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v230 = xmmword_1ABA26F10;
  }

  else
  {
    v231 = v246;
    (*(v229 + 32))(v246, v227, v228);
    v232 = v247;
    (*(v229 + 16))(v247, v231, v228);
    ToolChoiceEnvelope.init(sealing:)(v232, v306);
    (*(v229 + 8))(v231, v228);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v226, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (v269)(v278, v279);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v277, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v273, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v230 = v306[0];
  }

  v233 = v267;
  v234 = v266;
  v235 = v263;
  v236 = v282;
  *(v225 + v282[10]) = v230;
  *(v225 + v236[11]) = v233;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v276, v225 + v236[12], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with take of ToolDescription(v225, v235, type metadata accessor for CompletePromptTemplateRequest);

  TokenGenerator.handleCompletePromptTemplateRequest(request:)(v235, v234);
  outlined destroy of ToolType(v235, type metadata accessor for CompletePromptTemplateRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v274, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
}

uint64_t TokenGenerator.complete<A>(prompt:parameters:tools:toolChoice:documents:generating:metadata:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v243 = a1;
  v217 = a7;
  v199 = a5;
  v200 = a8;
  v228 = a4;
  v201 = a3;
  v216 = a9;
  v220 = type metadata accessor for FunctionDescription(0);
  v11 = *(*(v220 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v220);
  v241 = (v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v221 = v184 - v14;
  v235 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v15 = *(*(v235 - 8) + 64);
  MEMORY[0x1EEE9AC00](v235);
  v234 = (v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = type metadata accessor for ToolType(0);
  v17 = *(*(v233 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v233);
  v232 = v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v279 = (v184 - v20);
  v21 = type metadata accessor for ToolDescription(0);
  v238 = *(v21 - 8);
  v22 = *(v238 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v191 = (v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v244 = v184 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v239 = (v184 - v27);
  v28 = type metadata accessor for ToolDescriptionEnvelope(0);
  v231 = *(v28 - 8);
  v29 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v230 = v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v224 = v184 - v33;
  v237 = type metadata accessor for AnyTooling();
  v222 = *(v237 - 8);
  v34 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v236 = v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for ToolType();
  v240 = *(v245 - 8);
  v36 = *(v240 + 64);
  v37 = MEMORY[0x1EEE9AC00](v245);
  v229 = v184 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v247 = v184 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v246 = v184 - v41;
  v42 = type metadata accessor for ToolChoice();
  v197 = *(v42 - 8);
  v198 = v42;
  v43 = *(v197 + 64);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v190 = v184 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v196 = v184 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v195 = v184 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v203 = v184 - v51;
  v210 = type metadata accessor for PromptVariant();
  v204 = *(v210 - 8);
  v52 = *(v204 + 64);
  v53 = MEMORY[0x1EEE9AC00](v210);
  v227 = (v184 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v53);
  v209 = v184 - v55;
  v214 = type metadata accessor for CompletePromptRequest(0);
  v56 = *(*(v214 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v214);
  v211 = v184 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v206 = v184 - v59;
  v60 = type metadata accessor for Prompt();
  v212 = *(v60 - 8);
  v213 = v60;
  v61 = *(v212 + 64);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v226 = v184 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v208 = v184 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v67 = v184 - v66;
  v223 = type metadata accessor for Schema();
  v215 = *(v223 - 8);
  v68 = *(v215 + 64);
  v69 = MEMORY[0x1EEE9AC00](v223);
  v219 = v184 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v72 = v184 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x1EEE9AC00](v73 - 8);
  v202 = v184 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = *(a2 + 176);
  v275 = *(a2 + 160);
  v276 = v77;
  v277 = *(a2 + 192);
  v278 = *(a2 + 208);
  v78 = *(a2 + 112);
  v271 = *(a2 + 96);
  v272 = v78;
  v79 = *(a2 + 144);
  v273 = *(a2 + 128);
  v274 = v79;
  v80 = *(a2 + 32);
  v268 = *(a2 + 48);
  v81 = *(a2 + 80);
  v269 = *(a2 + 64);
  v270 = v81;
  v82 = *(a2 + 16);
  v84 = v184 - v83;
  v265 = *a2;
  v266 = v82;
  v267 = v80;
  v85 = *a6;
  v86 = a6[1];
  v87 = a6[3];
  v193 = a6[2];
  v194 = v85;
  v88 = a6[5];
  v192 = a6[4];
  v89 = a6[6];
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  v90 = v72;
  v91 = v86;
  v92 = v215 + 8;
  v218 = *(v215 + 8);
  v218(v90, v223);
  v93 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v93 - 8) + 56))(v84, 0, 1, v93);

  v205 = v67;
  v94 = v242;
  PromptVariant.tgPrompt.getter();
  if (v94)
  {

    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v84, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  }

  else
  {
    v207 = v92;
    v184[1] = 0;
    v96 = v213;
    v225 = *(v212 + 16);
    (v225)(v208, v205, v213);
    v242 = *(v204 + 16);
    (v242)(v209, v243, v210);
    v185 = v84;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v84, v202, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v228, v203, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v189 = v91;

    v188 = v87;

    v187 = v88;

    v186 = v89;

    outlined init with copy of SamplingParameters(&v265, v262);
    v97 = v211;
    XPCDictionary.init()();
    v98 = v226;
    (v225)(v226, v208, v96);
    v99 = specialized PromptEnvelope.init(sealing:xpcData:)(v98, v97);
    v100 = v214;
    v101 = (v97 + *(v214 + 20));
    *v101 = v99;
    v101[1] = v102;
    v101[2] = v103;
    v101[3] = v104;
    v105 = v227;
    (v242)(v227, v209, v210);
    PromptVariantEnvelope.init(sealing:xpcData:)(v105, v97, v97 + v100[6]);
    v258 = v275;
    v259 = v276;
    v260 = v277;
    v261 = v278;
    v254 = v271;
    v255 = v272;
    v256 = v273;
    v257 = v274;
    v250 = v267;
    v251 = v268;
    v252 = v269;
    v253 = v270;
    v248 = v265;
    v249 = v266;
    SamplingParametersEnvelope.init(sealing:)(&v248, v262);
    v106 = v97 + v100[7];
    v107 = v262[11];
    *(v106 + 160) = v262[10];
    *(v106 + 176) = v107;
    *(v106 + 192) = v262[12];
    *(v106 + 208) = v263;
    v108 = v262[7];
    *(v106 + 96) = v262[6];
    *(v106 + 112) = v108;
    v109 = v262[9];
    *(v106 + 128) = v262[8];
    *(v106 + 144) = v109;
    v110 = v262[3];
    *(v106 + 32) = v262[2];
    *(v106 + 48) = v110;
    v111 = v262[5];
    *(v106 + 64) = v262[4];
    *(v106 + 80) = v111;
    v112 = v262[1];
    *v106 = v262[0];
    *(v106 + 16) = v112;
    v113 = *(v201 + 16);
    v114 = MEMORY[0x1E69E7CC0];
    v243 = v113;
    if (v113)
    {
      v115 = v201;
      *&v248 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113, 0);
      v116 = v248;
      v117 = *(v240 + 16);
      v118 = (v115 + ((*(v240 + 80) + 32) & ~*(v240 + 80)));
      v226 = *(v240 + 72);
      v227 = v117;
      v228 = v240 + 16;
      v225 = (v240 + 8);
      v119 = v113;
      v120 = v247;
      v121 = v191;
      do
      {
        v242 = v119;
        v122 = v245;
        v123 = v227;
        v227(v120, v118, v245);
        v124 = v229;
        v123(v229, v120, v122);
        ToolDescription.init(toolType:)(v124, v121);
        (*v225)(v120, v122);
        *&v248 = v116;
        v126 = *(v116 + 2);
        v125 = *(v116 + 3);
        if (v126 >= v125 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v125 > 1, v126 + 1, 1);
          v116 = v248;
        }

        *(v116 + 2) = v126 + 1;
        outlined init with take of ToolDescription(v121, &v116[((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v126], type metadata accessor for ToolDescription);
        v118 += v226;
        v119 = v242 - 1;
        v120 = v247;
      }

      while (v242 != 1);
      v100 = v214;
      v114 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v116 = MEMORY[0x1E69E7CC0];
    }

    v127 = *(v116 + 2);
    v128 = v241;
    v129 = v279;
    v131 = v238;
    v130 = v239;
    if (v127)
    {
      *&v248 = v114;
      v132 = v116;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127, 0);
      v133 = v248;
      v134 = *(v131 + 80);
      v229 = v132;
      v135 = &v132[(v134 + 32) & ~v134];
      v242 = *(v131 + 72);
      v238 = v215 + 16;
      do
      {
        outlined init with copy of ToolDescription(v135, v130, type metadata accessor for ToolDescription);
        v136 = v130;
        v137 = v244;
        outlined init with copy of ToolDescription(v136, v244, type metadata accessor for ToolDescription);
        outlined init with copy of ToolDescription(v137, v129, type metadata accessor for ToolType);
        v138 = v232;
        outlined init with copy of ToolDescription(v129, v232, type metadata accessor for ToolType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            outlined destroy of ToolType(v279, type metadata accessor for ToolType);
            v141 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of ToolType(v279, type metadata accessor for ToolType);
            v141 = type metadata accessor for ImageGenerationParameters();
          }

          v140 = v234;
          (*(*(v141 - 8) + 32))(v234, v138, v141);
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v142 = v138;
          v143 = v221;
          outlined init with take of ToolDescription(v142, v221, type metadata accessor for FunctionDescription);
          outlined init with copy of ToolDescription(v143, v128, type metadata accessor for FunctionDescription);
          v144 = v128[1];
          v145 = v234;
          *v234 = *v128;
          v145[1] = v144;
          v146 = v128;
          v147 = v128[2];
          v148 = v128[3];
          v145[2] = v147;
          v145[3] = v148;
          v149 = v219;
          (*v238)(v219, &v146[*(v220 + 24)], v223);
          v150 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

          v140 = v145;

          Schema.type.getter();
          outlined destroy of ToolType(v279, type metadata accessor for ToolType);
          v218(v149, v223);
          outlined destroy of ToolType(v241, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v221, type metadata accessor for FunctionDescription);
        }

        else
        {
          outlined destroy of ToolType(v279, type metadata accessor for ToolType);
          v140 = v234;
        }

        v130 = v239;
        v151 = v230;
        swift_storeEnumTagMultiPayload();
        outlined init with take of ToolDescription(v140, v151, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of ToolType(v244, type metadata accessor for ToolDescription);
        outlined destroy of ToolType(v130, type metadata accessor for ToolDescription);
        *&v248 = v133;
        v153 = *(v133 + 16);
        v152 = *(v133 + 24);
        if (v153 >= v152 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v152 > 1, v153 + 1, 1);
          v133 = v248;
        }

        *(v133 + 16) = v153 + 1;
        outlined init with take of ToolDescription(v151, v133 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v153, type metadata accessor for ToolDescriptionEnvelope);
        v128 = v241;
        v135 += v242;
        --v127;
        v129 = v279;
      }

      while (v127);

      v154 = v198;
      v100 = v214;
    }

    else
    {

      v133 = MEMORY[0x1E69E7CC0];
      v154 = v198;
    }

    *&v211[v100[9]] = v133;
    v155 = v203;
    v156 = v195;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v203, v195, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v157 = v197;
    v158 = (*(v197 + 48))(v156, 1, v154);
    v159 = v224;
    v160 = v212;
    v161 = v196;
    if (v158 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v155, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v204 + 8))(v209, v210);
      v239 = *(v160 + 8);
      v239(v208, v213);
      v162 = xmmword_1ABA26F10;
    }

    else
    {
      (*(v157 + 32))(v196, v156, v154);
      v163 = v155;
      v164 = v161;
      v165 = v190;
      (*(v157 + 16))(v190, v164, v154);
      ToolChoiceEnvelope.init(sealing:)(v165, &v248);
      (*(v157 + 8))(v164, v154);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v163, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v204 + 8))(v209, v210);
      v239 = *(v160 + 8);
      v239(v208, v213);
      v162 = v248;
    }

    v166 = v214;
    v167 = v211;
    *&v211[*(v214 + 40)] = v162;
    v168 = (v167 + v166[12]);
    v169 = v189;
    *v168 = v194;
    v168[1] = v169;
    v170 = v188;
    v168[2] = v193;
    v168[3] = v170;
    v171 = v186;
    v172 = v187;
    v168[4] = v192;
    v168[5] = v172;
    v168[6] = v171;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v202, v167 + v166[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v167 + v166[11]) = v199;
    outlined init with take of ToolDescription(v167, v206, type metadata accessor for CompletePromptRequest);
    if (v243)
    {
      v279 = *(v240 + 16);
      v173 = v201 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
      v244 = *(v240 + 72);
      v242 = v240 + 8;
      v240 += 16;
      v241 = (v222 + 48);

      v174 = MEMORY[0x1E69E7CC0];
      v175 = v246;
      do
      {
        v176 = v245;
        v177 = v279;
        (v279)(v175, v173, v245);
        v178 = v247;
        v177(v247, v246, v176);
        v179 = v178;
        v175 = v246;
        AnyTooling.init(_:)(v179, v159);
        (*v242)(v175, v176);
        if ((*v241)(v159, 1, v237) == 1)
        {
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v159, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
        }

        else
        {
          outlined init with take of ToolDescription(v159, v236, type metadata accessor for AnyTooling);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v180 = v222;
          v182 = v174[2];
          v181 = v174[3];
          if (v182 >= v181 >> 1)
          {
            v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v181 > 1, v182 + 1, 1, v174, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v174[2] = v182 + 1;
          outlined init with take of ToolDescription(v236, v174 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v182, type metadata accessor for AnyTooling);
          v159 = v224;
        }

        v173 += v244;
        --v243;
      }

      while (v243);
    }

    else
    {

      v174 = MEMORY[0x1E69E7CC0];
    }

    v183 = v206;
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v206, v174, v264);

    outlined destroy of ToolType(v183, type metadata accessor for CompletePromptRequest);
    v239(v205, v213);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v185, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v248 = v264[0];
    v249 = v264[1];
    TokenStream<>.map<A>(_:)(v200);
  }
}

uint64_t TokenGenerator.complete<A>(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:generating:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v47 = a5;
  v48 = a6;
  v45 = a2;
  v46 = a4;
  v44 = a1;
  v38 = a8;
  v50 = a10;
  v43 = type metadata accessor for Schema();
  v12 = *(v43 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v37 - v18);
  v20 = a3[10];
  v21 = a3[12];
  v63 = a3[11];
  v64 = v21;
  v22 = a3[6];
  v23 = a3[8];
  v24 = a3[9];
  v59 = a3[7];
  v60 = v23;
  v61 = v24;
  v62 = v20;
  v25 = a3[3];
  v54 = a3[2];
  v55 = v25;
  v26 = a3[5];
  v56 = a3[4];
  v65 = *(a3 + 104);
  v57 = v26;
  v58 = v22;
  v27 = a3[1];
  v52 = *a3;
  v53 = v27;
  v28 = *a7;
  v29 = a7[1];
  v30 = a7[2];
  v41 = a7[3];
  v42 = v30;
  v32 = a7[4];
  v31 = a7[5];
  v39 = v28;
  v40 = v32;
  v67 = v31;
  v33 = a7[6];
  v37 = a9;
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  (*(v12 + 8))(v15, v43);
  v34 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
  v51[0] = v28;
  v51[1] = v29;
  v51[2] = v42;
  v51[3] = v41;
  v51[4] = v40;
  v51[5] = v67;
  v51[6] = v33;

  v35 = v49;
  TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v44, v45, &v52, v46, v47, v48, v19, v51, v66);
  outlined consume of RequestMetadata?(v39, v29);
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  if (!v35)
  {
    v52 = v66[0];
    v53 = v66[1];
    TokenStream<>.map<A>(_:)(v38);
  }

  return result;
}

uint64_t specialized TokenStream.contentAndPromptCompletion()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[9] = a1;
  v7 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = type metadata accessor for PromptCompletion.Content(0);
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v15 = type metadata accessor for InferenceResponse.Content();
  v5[21] = v15;
  v16 = *(v15 - 8);
  v5[22] = v16;
  v17 = *(v16 + 64) + 15;
  v5[23] = swift_task_alloc();
  v18 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  v5[24] = v19;

  v23 = (a4 + *a4);
  v20 = a4[1];
  v21 = swift_task_alloc();
  v5[25] = v21;
  *v21 = v5;
  v21[1] = specialized TokenStream.contentAndPromptCompletion();

  return v23(v19);
}

uint64_t specialized TokenStream.contentAndPromptCompletion()()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = specialized TokenStream.contentAndPromptCompletion();
  }

  else
  {
    v3 = specialized TokenStream.contentAndPromptCompletion();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v100 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  outlined init with take of ToolDescription(v0[24], v3, type metadata accessor for PromptCompletion);

  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v5 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = v0[18];
      v9 = v0[12];
      v96 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v96;
      v10 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11 = *(v9 + 72);
      do
      {
        v12 = v0[19];
        v13 = v0[13];
        outlined init with copy of ToolDescription(v10, v13, type metadata accessor for PromptCompletion.Segment);
        outlined init with copy of ToolDescription(v13, v12, type metadata accessor for PromptCompletion.Content);
        outlined destroy of ToolType(v13, type metadata accessor for PromptCompletion.Segment);
        v96 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
          v7 = v96;
        }

        v16 = v0[19];
        *(v7 + 16) = v15 + 1;
        outlined init with take of ToolDescription(v16, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, type metadata accessor for PromptCompletion.Content);
        v10 += v11;
        --v6;
      }

      while (v6);
    }

    v17 = *(v7 + 16);
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_30:

    v49 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v51 = MEMORY[0x1E69E7CC0];
  v53 = v0[22];
  v52 = v0[23];
  v54 = v0[21];
  v55 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMR);
  v56 = *(v55 + 72);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ABA1D930;
  v96 = 0;
  v97 = 0xE000000000000000;
  v98 = v51;
  v99 = xmmword_1ABA1D8C0;
  InferenceResponse.TextContent.init(_:)(&v96, v52);
  (*(v53 + 104))(v52, *MEMORY[0x1E69C64C0], v54);
  PromptCompletion.Content.init(_:)(v52, (v7 + v57));
  v17 = *(v7 + 16);
  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_9:
  v91 = v0[20];
  v18 = v0[18];
  v19 = v7 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v92 = (v0[15] + 8);
  v90 = v0[26];
  v93 = v20;
  v94 = MEMORY[0x1E69E7CC0];
  v88 = MEMORY[0x1E69E7CC0];
  do
  {
    v21 = v0[17];
    outlined init with copy of ToolDescription(v19, v0[20], type metadata accessor for PromptCompletion.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = v0[20];
    if (EnumCaseMultiPayload)
    {
      outlined destroy of ToolType(v23, type metadata accessor for PromptCompletion.Content);
    }

    else
    {
      v24 = v0[16];
      v25 = v0[14];
      v26 = *v23;
      v28 = v91[1];
      v27 = v91[2];
      v29 = v91[3];
      v30 = v91[4];
      static String.Encoding.utf8.getter();
      v31 = String.data(using:allowLossyConversion:)();
      v32 = v24;
      v34 = v33;
      (*v92)(v32, v25);
      if (v34 >> 60 == 15)
      {

        outlined consume of Data?(v29, v30);
        v20 = v93;
      }

      else
      {
        v35 = v29;
        v89 = v34;
        static Generable.decode(data:)();
        if (v90)
        {
          swift_getErrorValue();
          v37 = v0[2];
          v36 = v0[3];
          v38 = v0[4];
          v39 = Error.localizedDescription.getter();
          v85 = v40;
          v86 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
          }

          v42 = *(v94 + 2);
          v41 = *(v94 + 3);
          if (v42 >= v41 >> 1)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v94);
          }

          outlined consume of Data?(v31, v89);

          outlined consume of Data?(v29, v30);
          v90 = 0;
          *(v94 + 2) = v42 + 1;
          v43 = &v94[16 * v42];
          *(v43 + 4) = v86;
          *(v43 + 5) = v85;
        }

        else
        {
          v44 = v0[6];
          v87 = v0[5];

          v45 = v88;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v88 + 2) + 1, 1, v88);
          }

          v47 = *(v45 + 2);
          v46 = *(v45 + 3);
          if (v47 >= v46 >> 1)
          {
            v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v45);
          }

          else
          {
            v88 = v45;
          }

          outlined consume of Data?(v31, v89);

          outlined consume of Data?(v35, v30);

          v90 = 0;
          *(v88 + 2) = v47 + 1;
          v48 = &v88[16 * v47];
          *(v48 + 4) = v87;
          *(v48 + 5) = v44;
        }

        v20 = v93;
      }
    }

    v19 += v20;
    --v17;
  }

  while (v17);

  v49 = v94;
  v50 = v88;
LABEL_31:
  v58 = *(v50 + 2);
  if (v58)
  {
    v59 = v0[23];
    v60 = v0[24];
    v62 = v0[19];
    v61 = v0[20];
    v63 = v0[16];
    v64 = v0[13];
    v65 = &v50[16 * v58 + 16];
    v66 = *(v65 + 1);
    v95 = *v65;

    v67 = v0[1];

    return v67(v95, v66);
  }

  else
  {
    v69 = 0xD00000000000002DLL;

    if (*(v49 + 2))
    {
      v96 = 0;
      v97 = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      MEMORY[0x1AC5A5BC0](0xD00000000000004DLL, 0x80000001ABA42D20);
      v0[7] = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v70 = BidirectionalCollection<>.joined(separator:)();
      v72 = v71;

      MEMORY[0x1AC5A5BC0](v70, v72);

      v69 = v96;
      v73 = v97;
    }

    else
    {

      v73 = 0x80000001ABA42D70;
    }

    v74 = v0[9];
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    swift_allocError();
    v76 = v75;
    v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v76 = v69;
    v76[1] = v73;
    v76[2] = 0;
    v76[3] = 0;
    v76[4] = 0;
    v76[5] = v77;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of ToolType(v74, type metadata accessor for PromptCompletion);
    v79 = v0[23];
    v78 = v0[24];
    v81 = v0[19];
    v80 = v0[20];
    v82 = v0[16];
    v83 = v0[13];

    v84 = v0[1];

    return v84();
  }
}

{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVG_0dE00ghI8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jklN0V0mN0Vs5NeverOTg504_s15d12Generation26ghi11Envelope33_opqrstuvw6LLV019jklu69V7sealing7xpcDataAF0aB4Core0cdE0V0pqR0V_3XPC13XPCDictionaryVztcfcAF09mU12VAM0Y0VXEfU_3XPC13XPCDictionaryVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v73 = type metadata accessor for UUID();
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface();
  v99 = *(v77 - 8);
  v7 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content.Text();
  v98 = *(v86 - 8);
  v9 = *(v98 + 64);
  v10 = MEMORY[0x1EEE9AC00](v86);
  v85 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v65 - v12;
  v97 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v13 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v91 = *(v16 - 8);
  v17 = *(v91 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - v21;
  v23 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  v96 = *(v23 - 8);
  v24 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v87 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (!v27)
  {
    return v28;
  }

  v65 = v2;
  v100 = MEMORY[0x1E69E7CC0];
  v29 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
  v28 = v100;
  v30 = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component() - 8);
  v31 = v26 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v32 = v91;
  v95 = (v91 + 16);
  v94 = (v91 + 88);
  v93 = *MEMORY[0x1E69DA8A8];
  v82 = *MEMORY[0x1E69DA8B0];
  v76 = *MEMORY[0x1E69DA890];
  v70 = *MEMORY[0x1E69DA898];
  v66 = *MEMORY[0x1E69DA8A0];
  v91 += 96;
  v92 = (v32 + 8);
  v69 = (v99 + 32);
  v68 = (v29 + 8);
  v67 = (v99 + 8);
  v80 = (v98 + 16);
  v81 = (v98 + 32);
  v79 = (v98 + 8);
  v90 = *(v30 + 72);
  v33 = v87;
  v83 = v15;
  v78 = v20;
  while (1)
  {
    v98 = v31;
    v99 = v28;
    PromptTemplateInfo.RichVariableBinding.Component.content.getter();
    (*v95)(v20, v22, v16);
    v34 = (*v94)(v20, v16);
    if (v34 != v93)
    {
      break;
    }

    (*v91)(v20, v16);
    v35 = v22;
    v36 = v84;
    v37 = v86;
    (*v81)(v84, v20, v86);
    v38 = v85;
    (*v80)(v85, v36, v37);
    v39 = PromptTemplateInfo.RichVariableBinding.Component.Content.Text.string.getter();
    v88 = v40;
    v89 = v39;
    v41 = PromptTemplateInfo.RichVariableBinding.Component.Content.Text.isSelfAttention.getter();
    (*v92)(v35, v16);
    v42 = v27;
    v43 = *v79;
    (*v79)(v38, v37);
    v44 = v36;
    v22 = v35;
    v45 = v37;
    v15 = v83;
    v43(v44, v45);
    v27 = v42;
    v46 = v88;
    *v15 = v89;
    *(v15 + 1) = v46;
    LOBYTE(v46) = v41 & 1;
    v20 = v78;
    v47 = v87;
    v15[16] = v46;
LABEL_5:
    v28 = v99;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    outlined init with take of ToolDescription(v15, v47, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v100 = v28;
    v60 = *(v28 + 16);
    v59 = *(v28 + 24);
    if (v60 >= v59 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1);
      v28 = v100;
    }

    *(v28 + 16) = v60 + 1;
    v61 = v28 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v60;
    v33 = v47;
    outlined init with take of ToolDescription(v47, v61, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
    v31 = v98 + v90;
    if (!--v27)
    {
      return v28;
    }
  }

  if (v34 == v82)
  {
    (*v92)(v22, v16);
    (*v91)(v20, v16);
    v48 = type metadata accessor for Prompt.ImageData();
    (*(*(v48 - 8) + 32))(v15, v20, v48);
LABEL_10:
    v28 = v99;
    v47 = v33;
    goto LABEL_11;
  }

  if (v34 == v76)
  {
    (*v91)(v20, v16);
    v49 = *v69;
    v89 = v27;
    v50 = v71;
    v49(v71, v20, v77);
    v51 = PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface.surface.getter();
    v52 = v72;
    UUID.init()();
    v88 = UUID.uuidString.getter();
    v54 = v53;
    (*v68)(v52, v73);
    v55 = v51;
    IOSurfaceCreateXPCObject(v55);

    v75 = v54;

    v56 = v88;
    XPCDictionary.subscript.setter();

    (*v92)(v22, v16);
    v57 = v50;
    v27 = v89;
    (*v67)(v57, v77);
    v58 = v75;
    *v15 = v56;
    *(v15 + 1) = v58;
    goto LABEL_10;
  }

  v47 = v33;
  if (v34 == v70)
  {
    (*v92)(v22, v16);
    (*v91)(v20, v16);
    v62 = type metadata accessor for Prompt.ImageEmbeddingData();
    (*(*(v62 - 8) + 32))(v15, v20, v62);
    goto LABEL_5;
  }

  v28 = v99;
  if (v34 == v66)
  {
    (*v92)(v22, v16);
    (*v91)(v20, v16);
    v63 = type metadata accessor for Prompt.PreprocessedImageData();
    (*(*(v63 - 8) + 32))(v15, v20, v63);
    goto LABEL_11;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t TokenGenerator.render(prompt:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = a2;
  *(v4 + 312) = v3;
  *(v4 + 296) = a1;
  v6 = *(*(type metadata accessor for Prompt.Rendering.Source() - 8) + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  v7 = type metadata accessor for Prompt.Rendering();
  *(v4 + 328) = v7;
  v8 = *(v7 - 8);
  *(v4 + 336) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v4 + 360) = v10;
  v11 = *(v10 - 8);
  *(v4 + 368) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  v13 = type metadata accessor for Prompt();
  *(v4 + 384) = v13;
  v14 = *(v13 - 8);
  *(v4 + 392) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  v16 = *(a3 + 16);
  *(v4 + 432) = *a3;
  *(v4 + 448) = v16;
  *(v4 + 464) = *(a3 + 32);
  *(v4 + 480) = *(a3 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.render(prompt:metadata:), 0, 0);
}

{
  *(v4 + 304) = a2;
  *(v4 + 312) = v3;
  *(v4 + 296) = a1;
  v6 = *(*(type metadata accessor for Prompt.Rendering.Source() - 8) + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  v7 = type metadata accessor for Prompt.Rendering();
  *(v4 + 328) = v7;
  v8 = *(v7 - 8);
  *(v4 + 336) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v10 = type metadata accessor for Prompt();
  *(v4 + 360) = v10;
  v11 = *(v10 - 8);
  *(v4 + 368) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v13 = type metadata accessor for PromptVariant();
  *(v4 + 408) = v13;
  v14 = *(v13 - 8);
  *(v4 + 416) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 424) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v4 + 432) = v16;
  v17 = *(v16 - 8);
  *(v4 + 440) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 448) = swift_task_alloc();
  v19 = *(a3 + 16);
  *(v4 + 456) = *a3;
  *(v4 + 472) = v19;
  *(v4 + 488) = *(a3 + 32);
  *(v4 + 504) = *(a3 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.render(prompt:metadata:), 0, 0);
}

uint64_t TokenGenerator.render(prompt:metadata:)()
{
  v1 = v0[53];
  v2 = v0[38];
  PromptVariant.tgPrompt.getter();
  v3 = v0[55];
  if (v3)
  {
    v4 = v0[54];
    v5 = v4;
    v6 = v0[55];
    v7 = v0[56];
    v8 = v0[57];
    v9 = v0[58];
    v10 = v0[59];
    v11 = v0[60];
  }

  else
  {
    v13 = v0[46];
    v12 = v0[47];
    v14 = v0[45];
    UUID.init()();
    v5 = UUID.uuidString.getter();
    v6 = v15;
    (*(v13 + 8))(v12, v14);
    v8 = 0x80000001ABA42A30;
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v9 = 0;
    v10 = 0;
    v16 = v0[59];
    v17 = v0[60];
    v18 = v0[57];
    v19 = v0[58];
    v3 = v0[55];
    v20 = v0[56];
    v7 = 0xD000000000000018;
    v4 = v0[54];
  }

  v0[63] = v10;
  v0[64] = v11;
  v0[61] = v6;
  v0[62] = v8;
  v0[30] = v5;
  v0[31] = v6;
  v0[32] = v7;
  v0[33] = v8;
  v0[34] = v9;
  v0[35] = v10;
  v0[36] = v11;
  outlined copy of RequestMetadata?(v4, v3);
  v21 = swift_task_alloc();
  v0[65] = v21;
  *v21 = v0;
  v21[1] = TokenGenerator.render(prompt:metadata:);
  v22 = v0[53];
  v23 = v0[38];
  v24 = v0[39];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v0 + 2), v22, v23, v0 + 30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v10 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = TokenGenerator.render(prompt:metadata:);
  }

  else
  {
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[62];

    v4 = TokenGenerator.render(prompt:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v120 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 336);
    v115 = *(v0 + 328);
    v5 = *(v0 + 320);
    v109 = *(v0 + 352);
    v112 = *(v0 + 296);
    v6 = *(v0 + 232);
    v103 = *(v0 + 208);
    v104 = *(v0 + 216);
    v102 = *(v0 + 200);
    v106 = *(v0 + 224);
    log = *(v0 + 192);
    v7 = *(v0 + 184);
    v105 = *(v0 + 176);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(v112, v109, v115);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 416);
    v13 = *(v0 + 424);
    v14 = *(v0 + 384);
    v15 = *(v0 + 392);
    v17 = *(v0 + 336);
    v16 = *(v0 + 344);
    v18 = *(v0 + 328);
    v19 = *(v0 + 296);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.generator);
    (*(v17 + 16))(v16, v19, v18);
    (*(v15 + 16))(v12, v13, v14);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 416);
    v24 = *(v0 + 424);
    v26 = *(v0 + 392);
    v116 = *(v0 + 384);
    v28 = *(v0 + 336);
    v27 = *(v0 + 344);
    v29 = *(v0 + 328);
    if (v23)
    {
      v113 = *(v0 + 424);
      v30 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v119[0] = v110;
      *v30 = 136643075;
      loga = v22;
      v31 = Prompt.Rendering.renderedString.getter();
      v33 = v32;
      (*(v28 + 8))(v27, v29);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v119);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2085;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v38 = *(v26 + 8);
      v38(v25, v116);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v119);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_1AB828000, v21, loga, "Rendered prompt text: %{sensitive}s for prompt: %{sensitive}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v110, -1, -1);
      MEMORY[0x1AC5A6CD0](v30, -1, -1);

      v38(v113, v116);
    }

    else
    {

      v59 = *(v26 + 8);
      v59(v25, v116);
      (*(v28 + 8))(v27, v29);
      v59(v24, v116);
    }

    v61 = *(v0 + 416);
    v60 = *(v0 + 424);
    v63 = *(v0 + 400);
    v62 = *(v0 + 408);
    v64 = *(v0 + 376);
    v66 = *(v0 + 344);
    v65 = *(v0 + 352);
    v67 = *(v0 + 320);

    v68 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v40 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 424);
    v42 = *(v0 + 408);
    v43 = *(v0 + 384);
    v44 = *(v0 + 392);
    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.generator);
    (*(v44 + 16))(v42, v41, v43);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 408);
    v51 = *(v0 + 384);
    v50 = *(v0 + 392);
    if (v48)
    {
      v52 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v119[0] = v117;
      *v52 = 136642819;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
      v53 = v45;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v50 + 8))(v49, v51);
      v57 = v54;
      v45 = v53;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v119);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_1AB828000, v46, v47, "Rendered prompt for: %{sensitive}s is empty", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      v40 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      MEMORY[0x1AC5A6CD0](v117, -1, -1);
      MEMORY[0x1AC5A6CD0](v52, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v49, v51);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    v69 = swift_allocError();
    v71 = v70;
    v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v71 = 0xD000000000000018;
    v71[1] = 0x80000001ABA42A50;
    v71[2] = 0;
    v71[3] = 0;
    v71[4] = 0;
    v71[5] = v72;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v40[219] != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 424);
    v74 = *(v0 + 392);
    v75 = *(v0 + 400);
    v76 = *(v0 + 384);
    __swift_project_value_buffer(v45, static Log.generator);
    (*(v74 + 16))(v75, v73, v76);
    MEMORY[0x1AC5A6AE0](v69);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    v79 = os_log_type_enabled(v77, v78);
    v81 = *(v0 + 392);
    v80 = *(v0 + 400);
    v82 = *(v0 + 384);
    if (v79)
    {
      v83 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v119[0] = v118;
      *v83 = 136643075;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
      v111 = v78;
      v84 = v69;
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v88 = *(v81 + 8);
      v88(v80, v82);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v119);

      *(v83 + 4) = v89;
      *(v83 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v84);
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v90;
      *v114 = v90;
      _os_log_impl(&dword_1AB828000, v77, v111, "Failed to render prompt: %{sensitive}s. %@", v83, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v114, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v114, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x1AC5A6CD0](v118, -1, -1);
      MEMORY[0x1AC5A6CD0](v83, -1, -1);
    }

    else
    {

      v88 = *(v81 + 8);
      v88(v80, v82);
    }

    v91 = *(v0 + 424);
    v92 = *(v0 + 384);
    swift_willThrow();
    v88(v91, v92);
    v94 = *(v0 + 416);
    v93 = *(v0 + 424);
    v96 = *(v0 + 400);
    v95 = *(v0 + 408);
    v97 = *(v0 + 376);
    v99 = *(v0 + 344);
    v98 = *(v0 + 352);
    v100 = *(v0 + 320);

    v68 = *(v0 + 8);
  }

  return v68();
}

{
  v41 = v0;
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[62];

  v5 = v0[66];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[50];
  v9 = v0[48];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.generator);
  (*(v7 + 16))(v8, v6, v9);
  MEMORY[0x1AC5A6AE0](v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[49];
  v14 = v0[50];
  v16 = v0[48];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v17 = 136643075;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
    v37 = v12;
    v18 = v5;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v14, v16);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v40);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v18);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v38 = v24;
    _os_log_impl(&dword_1AB828000, v11, v37, "Failed to render prompt: %{sensitive}s. %@", v17, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1AC5A6CD0](v39, -1, -1);
    MEMORY[0x1AC5A6CD0](v17, -1, -1);
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
  }

  v25 = v0[53];
  v26 = v0[48];
  swift_willThrow();
  v22(v25, v26);
  v28 = v0[52];
  v27 = v0[53];
  v30 = v0[50];
  v29 = v0[51];
  v31 = v0[47];
  v33 = v0[43];
  v32 = v0[44];
  v34 = v0[40];

  v35 = v0[1];

  return v35();
}

{
  v1 = v0[58];
  if (v1)
  {
    v3 = v0[62];
    v2 = v0[63];
    v4 = v0[60];
    v5 = v0[57];
    v31 = v5;
    v6 = v0[58];
    v26 = v0[59];
    v24 = v26;
    v29 = v0[61];
  }

  else
  {
    v7 = v0[55];
    v8 = v0[56];
    v9 = v0[54];
    UUID.init()();
    v31 = UUID.uuidString.getter();
    v6 = v10;
    (*(v7 + 8))(v8, v9);
    v4 = 0x80000001ABA42A30;
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v3 = 0;
    v29 = 0;
    v30 = v0[63];
    v11 = v0[61];
    v28 = v0[60];
    v1 = v0[58];
    v25 = v0[62];
    v27 = v0[59];
    v24 = 0xD000000000000018;
    v5 = v0[57];
  }

  v0[67] = v2;
  v0[66] = v3;
  v0[65] = v4;
  v0[64] = v6;
  v12 = v0[53];
  v13 = v4;
  v14 = v0[50];
  v15 = v0[45];
  v16 = v0[46];
  v17 = v0[38];
  v18 = *(v16 + 16);
  v0[68] = v18;
  v0[69] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v14, v17, v15);
  outlined copy of RequestMetadata?(v5, v1);
  PromptVariant.init(_:)();
  v0[30] = v31;
  v0[31] = v6;
  v0[32] = v24;
  v0[33] = v13;
  v0[34] = v29;
  v0[35] = v3;
  v0[36] = v2;
  v19 = swift_task_alloc();
  v0[70] = v19;
  *v19 = v0;
  v19[1] = TokenGenerator.render(prompt:metadata:);
  v20 = v0[53];
  v21 = v0[38];
  v22 = v0[39];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v0 + 2), v21, v20, v0 + 30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 416);
  v12 = *v1;
  *(*v1 + 568) = v0;

  v5 = (v4 + 8);
  if (v0)
  {
    (*v5)(v2[53], v2[51]);
    v6 = TokenGenerator.render(prompt:metadata:);
  }

  else
  {
    v7 = v2[67];
    v8 = v2[66];
    v9 = v2[65];
    v10 = v2[64];
    (*v5)(v2[53], v2[51]);

    v6 = TokenGenerator.render(prompt:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v118 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 336);
    v111 = *(v0 + 328);
    v5 = *(v0 + 320);
    v105 = *(v0 + 352);
    log = *(v0 + 296);
    v6 = *(v0 + 232);
    v100 = *(v0 + 208);
    v101 = *(v0 + 216);
    v99 = *(v0 + 200);
    v103 = *(v0 + 224);
    v104 = *(v0 + 192);
    v7 = *(v0 + 184);
    v102 = *(v0 + 176);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(log, v105, v111);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v112 = *(v0 + 552);
    v12 = *(v0 + 544);
    v13 = *(v0 + 392);
    v14 = *(v0 + 360);
    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    v17 = *(v0 + 328);
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.generator);
    (*(v16 + 16))(v15, v19, v17);
    v12(v13, v18, v14);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 392);
    v26 = *(v0 + 360);
    v25 = *(v0 + 368);
    v27 = *(v0 + 336);
    v28 = *(v0 + 344);
    v29 = *(v0 + 328);
    if (v23)
    {
      loga = v21;
      v30 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v117[0] = v113;
      *v30 = 136643075;
      v31 = Prompt.Rendering.renderedString.getter();
      v106 = v22;
      v33 = v32;
      (*(v27 + 8))(v28, v29);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v117);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2085;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v25 + 8))(v24, v26);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v117);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1AB828000, loga, v106, "Rendered prompt text: %{sensitive}s for prompt: %{sensitive}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v113, -1, -1);
      MEMORY[0x1AC5A6CD0](v30, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
      (*(v27 + 8))(v28, v29);
    }

    v59 = *(v0 + 448);
    v60 = *(v0 + 424);
    v62 = *(v0 + 392);
    v61 = *(v0 + 400);
    v64 = *(v0 + 376);
    v63 = *(v0 + 384);
    v66 = *(v0 + 344);
    v65 = *(v0 + 352);
    v67 = *(v0 + 320);

    v68 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v39 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 552);
    v41 = *(v0 + 544);
    v42 = *(v0 + 384);
    v43 = *(v0 + 360);
    v44 = *(v0 + 304);
    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.generator);
    v41(v42, v44, v43);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 384);
    v51 = *(v0 + 360);
    v50 = *(v0 + 368);
    if (v48)
    {
      v52 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v117[0] = v114;
      *v52 = 136642819;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v45;
      v56 = v55;
      (*(v50 + 8))(v49, v51);
      v57 = v53;
      v39 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v117);
      v45 = v54;

      *(v52 + 4) = v58;
      _os_log_impl(&dword_1AB828000, v46, v47, "Rendered prompt for: %{sensitive}s is empty", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v114);
      MEMORY[0x1AC5A6CD0](v114, -1, -1);
      MEMORY[0x1AC5A6CD0](v52, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v49, v51);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    v69 = swift_allocError();
    v71 = v70;
    v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v71 = 0xD000000000000018;
    v71[1] = 0x80000001ABA42A50;
    v71[2] = 0;
    v71[3] = 0;
    v71[4] = 0;
    v71[5] = v72;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v39[219] != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 552);
    v74 = *(v0 + 544);
    v75 = *(v0 + 376);
    v76 = *(v0 + 360);
    v77 = *(v0 + 304);
    __swift_project_value_buffer(v45, static Log.generator);
    v74(v75, v77, v76);
    MEMORY[0x1AC5A6AE0](v69);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    v80 = os_log_type_enabled(v78, v79);
    v81 = *(v0 + 368);
    v82 = *(v0 + 376);
    v83 = *(v0 + 360);
    if (v80)
    {
      v84 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117[0] = v115;
      *v84 = 136643075;
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v69;
      v88 = v87;
      (*(v81 + 8))(v82, v83);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v88, v117);

      *(v84 + 4) = v89;
      *(v84 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v86);
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 14) = v90;
      logb->isa = v90;
      _os_log_impl(&dword_1AB828000, v78, v79, "Failed to render prompt: %{sensitive}s. %@", v84, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(logb, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](logb, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v115);
      MEMORY[0x1AC5A6CD0](v115, -1, -1);
      MEMORY[0x1AC5A6CD0](v84, -1, -1);
    }

    else
    {

      (*(v81 + 8))(v82, v83);
    }

    v91 = *(v0 + 448);
    v92 = *(v0 + 424);
    v94 = *(v0 + 392);
    v93 = *(v0 + 400);
    v96 = *(v0 + 376);
    v95 = *(v0 + 384);
    v97 = *(v0 + 352);
    logc = *(v0 + 344);
    v116 = *(v0 + 320);
    swift_willThrow();

    v68 = *(v0 + 8);
  }

  return v68();
}

{
  v39 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];

  v5 = v0[71];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[47];
  v9 = v0[45];
  v10 = v0[38];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.generator);
  v7(v8, v10, v9);
  MEMORY[0x1AC5A6AE0](v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[46];
  v16 = v0[47];
  v17 = v0[45];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v18 = 136643075;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v5;
    v22 = v21;
    (*(v15 + 8))(v16, v17);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, &v38);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v20);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v34 = v24;
    _os_log_impl(&dword_1AB828000, v12, v13, "Failed to render prompt: %{sensitive}s. %@", v18, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1AC5A6CD0](v36, -1, -1);
    MEMORY[0x1AC5A6CD0](v18, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v16, v17);
  }

  v25 = v0[56];
  v26 = v0[53];
  v28 = v0[49];
  v27 = v0[50];
  v30 = v0[47];
  v29 = v0[48];
  v31 = v0[44];
  v35 = v0[43];
  v37 = v0[40];
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 312) = a3;
  *(v5 + 320) = v4;
  *(v5 + 296) = a1;
  *(v5 + 304) = a2;
  v7 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 328) = v7;
  v8 = *(v7 - 8);
  *(v5 + 336) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  v10 = *(*(type metadata accessor for Prompt.Rendering.Source() - 8) + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  v11 = type metadata accessor for Prompt.Rendering();
  *(v5 + 376) = v11;
  v12 = *(v11 - 8);
  *(v5 + 384) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64) + 15;
  *(v5 + 416) = swift_task_alloc();
  v16 = *(a4 + 16);
  *(v5 + 424) = *a4;
  *(v5 + 440) = v16;
  *(v5 + 456) = *(a4 + 32);
  *(v5 + 472) = *(a4 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:), 0, 0);
}

uint64_t TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)()
{
  v1 = *(v0 + 408);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 304), v1, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v2 = type metadata accessor for PromptVariant();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 408), &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v4 = 1;
  }

  else
  {
    v6 = *(v0 + 408);
    v5 = *(v0 + 416);
    PromptVariant.tgPrompt.getter();
    (*(v3 + 8))(*(v0 + 408), v2);
    v4 = 0;
  }

  v7 = *(v0 + 472);
  v17 = *(v0 + 456);
  v8 = *(v0 + 416);
  v9 = type metadata accessor for Prompt();
  v15 = *(v0 + 440);
  v16 = *(v0 + 424);
  (*(*(v9 - 8) + 56))(v8, v4, 1, v9);
  *(v0 + 240) = v16;
  *(v0 + 256) = v15;
  *(v0 + 272) = v17;
  *(v0 + 288) = v7;
  v10 = swift_task_alloc();
  *(v0 + 480) = v10;
  *v10 = v0;
  v10[1] = TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:);
  v11 = *(v0 + 416);
  v12 = *(v0 + 312);
  v13 = *(v0 + 320);

  return TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(v0 + 16, v11, v12, v0 + 240);
}

{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v6 = *v1;
  *(*v1 + 488) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 416), &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if (v0)
  {
    v4 = TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:);
  }

  else
  {
    v4 = TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v113 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 384);
    v107 = *(v0 + 376);
    v5 = *(v0 + 368);
    v102 = *(v0 + 400);
    v104 = *(v0 + 296);
    v6 = *(v0 + 232);
    v97 = *(v0 + 208);
    v98 = *(v0 + 216);
    v96 = *(v0 + 200);
    v100 = *(v0 + 224);
    v101 = *(v0 + 192);
    v7 = *(v0 + 184);
    v99 = *(v0 + 176);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(v104, v102, v107);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 384);
    v12 = *(v0 + 392);
    v14 = *(v0 + 376);
    v15 = *(v0 + 360);
    v16 = *(v0 + 328);
    v17 = *(v0 + 336);
    v18 = *(v0 + 312);
    v19 = *(v0 + 296);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.generator);
    (*(v13 + 16))(v12, v19, v14);
    (*(v17 + 16))(v15, v18, v16);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 384);
    v24 = *(v0 + 392);
    v26 = *(v0 + 376);
    v27 = *(v0 + 360);
    v29 = *(v0 + 328);
    v28 = *(v0 + 336);
    if (v23)
    {
      v105 = v22;
      v30 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v112[0] = v108;
      *v30 = 136643075;
      v31 = Prompt.Rendering.renderedString.getter();
      v103 = v29;
      v33 = v32;
      (*(v25 + 8))(v24, v26);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v112);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2085;
      v35 = PromptTemplateInfo.templateID.getter();
      v37 = v36;
      (*(v28 + 8))(v27, v103);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v112);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1AB828000, v21, v105, "Rendered prompt text: %{sensitive}s for prompt template identifer: %{sensitive}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v108, -1, -1);
      MEMORY[0x1AC5A6CD0](v30, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(v24, v26);
    }

    v60 = *(v0 + 408);
    v59 = *(v0 + 416);
    v62 = *(v0 + 392);
    v61 = *(v0 + 400);
    v64 = *(v0 + 360);
    v63 = *(v0 + 368);
    v66 = *(v0 + 344);
    v65 = *(v0 + 352);

    v67 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v39 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 352);
    v41 = *(v0 + 328);
    v42 = *(v0 + 336);
    v43 = *(v0 + 312);
    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.generator);
    (*(v42 + 16))(v40, v43, v41);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 352);
    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v112[0] = v52;
      *v51 = 136380675;
      v109 = v44;
      v53 = PromptTemplateInfo.templateID.getter();
      v55 = v54;
      (*(v49 + 8))(v48, v50);
      v56 = v53;
      v44 = v109;
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v112);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_1AB828000, v45, v46, "Rendered prompt template: %{private}s is empty", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v58 = v52;
      v39 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      MEMORY[0x1AC5A6CD0](v58, -1, -1);
      MEMORY[0x1AC5A6CD0](v51, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v48, v50);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    v68 = swift_allocError();
    v70 = v69;
    v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v70 = 0xD000000000000018;
    v70[1] = 0x80000001ABA42A50;
    v70[2] = 0;
    v70[3] = 0;
    v70[4] = 0;
    v70[5] = v71;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v39[219] != -1)
    {
      swift_once();
    }

    v72 = *(v0 + 336);
    v73 = *(v0 + 344);
    v74 = *(v0 + 328);
    v75 = *(v0 + 312);
    __swift_project_value_buffer(v44, static Log.generator);
    (*(v72 + 16))(v73, v75, v74);
    MEMORY[0x1AC5A6AE0](v68);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 336);
    v80 = *(v0 + 344);
    v81 = *(v0 + 328);
    if (v78)
    {
      v82 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v112[0] = v110;
      *v82 = 136643075;
      v83 = PromptTemplateInfo.templateID.getter();
      v85 = v84;
      (*(v79 + 8))(v80, v81);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v112);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v68);
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v87;
      *v106 = v87;
      _os_log_impl(&dword_1AB828000, v76, v77, "Failed to render for prompt template: %{sensitive}s. %@", v82, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v106, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v110);
      MEMORY[0x1AC5A6CD0](v110, -1, -1);
      MEMORY[0x1AC5A6CD0](v82, -1, -1);
    }

    else
    {

      (*(v79 + 8))(v80, v81);
    }

    v89 = *(v0 + 408);
    v88 = *(v0 + 416);
    v91 = *(v0 + 392);
    v90 = *(v0 + 400);
    v93 = *(v0 + 360);
    v92 = *(v0 + 368);
    v94 = *(v0 + 352);
    v111 = *(v0 + 344);
    swift_willThrow();

    v67 = *(v0 + 8);
  }

  return v67();
}

{
  v32 = v0;
  v1 = v0[61];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];
  v5 = v0[39];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.generator);
  (*(v2 + 16))(v3, v5, v4);
  MEMORY[0x1AC5A6AE0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[42];
  v11 = v0[43];
  v12 = v0[41];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136643075;
    v14 = PromptTemplateInfo.templateID.getter();
    v16 = v15;
    (*(v10 + 8))(v11, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v28 = v18;
    _os_log_impl(&dword_1AB828000, v7, v8, "Failed to render for prompt template: %{sensitive}s. %@", v13, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1AC5A6CD0](v29, -1, -1);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[51];
  v19 = v0[52];
  v22 = v0[49];
  v21 = v0[50];
  v24 = v0[45];
  v23 = v0[46];
  v25 = v0[44];
  v30 = v0[43];
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t static Tooling.argumentsSchema.getter()
{
  v0 = type metadata accessor for Schema();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static TokenGenerator.isAvailable.getter()
{
  v14[1] = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v1 = domain_answer;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.generator);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1AB828000, v3, v4, "Failed to determine availability with status code: %d", v5, 8u);
      MEMORY[0x1AC5A6CD0](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.generator);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x616C696176417369, 0xEB00000000656C62, v14);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736C6166, 0xE500000000000000, v14);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_1AB828000, v7, v8, "%s: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v10, -1, -1);
      MEMORY[0x1AC5A6CD0](v9, -1, -1);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t TokenGenerator.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 96);
  v6 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v8, &_s15TokenGeneration20SessionConfigurationVSgMd, &_s15TokenGeneration20SessionConfigurationVSgMR);
}

uint64_t TokenGenerator.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = swift_allocObject();
  TokenGenerator.init(configuration:)(a1);
  return v2;
}

uint64_t TokenGenerator.__allocating_init(session:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  outlined init with copy of PromptCompletionEvent(a1, v2 + 104);
  v3 = type metadata accessor for EventReporter();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v2 + 144) = v6;
  return v2;
}

uint64_t TokenGenerator.init(session:)(uint64_t *a1)
{
  v2 = v1;
  outlined init with copy of PromptCompletionEvent(a1, v1 + 104);
  v4 = type metadata accessor for EventReporter();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v2 + 144) = v7;
  return v2;
}

uint64_t TokenGenerator.__allocating_init(session:configuration:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with copy of PromptCompletionEvent(a1, v4 + 104);
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = *(a2 + 80);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = type metadata accessor for EventReporter();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v4 + 144) = v10;
  return v4;
}

uint64_t TokenGenerator.init(session:configuration:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of PromptCompletionEvent(a1, v3 + 104);
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = type metadata accessor for EventReporter();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = EventReporter.init()();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v3 + 144) = v11;
  return v3;
}

uint64_t TokenGenerator.contextSize()()
{
  v1[10] = v0;
  v2 = type metadata accessor for UUID();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.contextSize(), 0, 0);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v0 + 112) = v5;
  (*(v2 + 8))(v1, v3);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 120) = v7;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  strcpy((v0 + 32), "contextSize()");
  *(v0 + 46) = -4864;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v7;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = TokenGenerator.contextSize();
  v9 = *(v0 + 80);

  return TokenGenerator.fetchModelMetadata(requestMetadata:)(v0 + 72, (v0 + 16));
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = TokenGenerator.contextSize();
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 120);

    v4 = TokenGenerator.contextSize();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[9];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1AB828000, v3, v4, "Fetched context size: %ld", v5, 0xCu);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  v6 = v0[13];

  v7 = v0[1];

  return v7(v1);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t TokenGenerator.fetchModelMetadata(requestMetadata:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v5 = type metadata accessor for OneShotRequest(0);
  *(v3 + 48) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v3 + 80) = v10;
  *(v3 + 88) = v11;
  *(v3 + 96) = *(a2 + 1);
  *(v3 + 112) = a2[3];
  *(v3 + 120) = *(a2 + 2);
  *(v3 + 136) = a2[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator.fetchModelMetadata(requestMetadata:), 0, 0);
}

uint64_t TokenGenerator.fetchModelMetadata(requestMetadata:)()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];

  if (v1)
  {
    v5 = v0[15];
    v6 = v1;
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    UUID.init()();
    v7 = UUID.uuidString.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
    v6 = v0[16];
    v2 = v0[17];
    v3 = v0[14];
    v5 = v0[15];
    v4 = v0[12];
  }

  v0[18] = v8;
  v13 = v0[13];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  *v14 = v0[11];
  v14[1] = v4;
  v14[2] = v13;
  v14[3] = v3;
  v14[4] = v5;
  v14[5] = v6;
  v14[6] = v2;
  swift_storeEnumTagMultiPayload();
  v17 = *(v16 + 128);
  __swift_project_boxed_opaque_existential_1((v16 + 104), v17);

  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[19] = v18;
  v19 = swift_task_alloc();
  v0[20] = v19;
  lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse();
  lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse();
  *v19 = v0;
  v19[1] = TokenGenerator.fetchModelMetadata(requestMetadata:);
  v20 = v0[7];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)((v0 + 2), v7, v8, v20, v18, &type metadata for FetchModelMetadataResponse, v17, &type metadata for FetchModelMetadataResponse);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);

  if (v0)
  {
    v7 = TokenGenerator.fetchModelMetadata(requestMetadata:);
  }

  else
  {
    v7 = TokenGenerator.fetchModelMetadata(requestMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v17 = v0;
  v1 = *(v0 + 16);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v1;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AB828000, v3, v4, "Fetched model metadata: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  outlined destroy of ToolType(v6, type metadata accessor for OneShotRequest);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  **(v0 + 32) = v1;

  v14 = *(v0 + 8);

  return v14();
}

{
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  MEMORY[0x1AC5A6AE0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1AC5A6AE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1AB828000, v3, v4, "Failed to fetch model metadata. %@", v6, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  v9 = v0[21];
  v10 = v0[10];
  v11 = v0[7];

  swift_willThrow();

  v12 = v0[1];
  v13 = v0[21];

  return v12();
}

uint64_t TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(int a1, uint64_t *a2, uint64_t a3)
{
  LODWORD(v36) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for PromptVariant();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = *a2;
  v19 = a2[1];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, v11, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v40[0] = v18;
    v40[1] = v19;
    v20.rawValue._countAndFlagsBits = v40;
    TokenGenerator.prewarm(usesGuidedGeneration:urgency:)(v36 & 1, v20);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v22 = *(v13 + 32);
    v36 = v13 + 32;
    v34 = v18;
    v35 = v22;
    v22(v17, v11, v12);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.generator);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v19, v40);
      _os_log_impl(&dword_1AB828000, v24, v25, "Requesting prewarm with prompt and urgency: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
      MEMORY[0x1AC5A6CD0](v26, -1, -1);
    }

    v28 = v39;
    v29 = type metadata accessor for TaskPriority();
    v30 = v38;
    (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
    v31 = v37;
    (*(v13 + 16))(v37, v17, v12);
    v32 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v28;
    v35(&v33[v32], v31, v12);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:), v33);

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[88] = a5;
  v5[87] = a4;
  v6 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v5[89] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR) - 8) + 64) + 15;
  v5[90] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:), 0, 0);
}

uint64_t closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  v4 = MEMORY[0x1E69E7CD0];
  *(v0 + 88) = 0;
  *(v0 + 96) = v4;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 145) = 33686018;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 216) = 768;
  *(v0 + 224) = 0;
  v5 = type metadata accessor for Schema();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  TokenGenerator.complete(prompt:parameters:schema:)(v2, v0 + 16, v1, (v0 + 664));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 720), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v6 = *(v0 + 192);
  *(v0 + 608) = *(v0 + 176);
  *(v0 + 624) = v6;
  *(v0 + 640) = *(v0 + 208);
  *(v0 + 656) = *(v0 + 224);
  v7 = *(v0 + 128);
  *(v0 + 544) = *(v0 + 112);
  *(v0 + 560) = v7;
  v8 = *(v0 + 160);
  *(v0 + 576) = *(v0 + 144);
  *(v0 + 592) = v8;
  v9 = *(v0 + 64);
  *(v0 + 480) = *(v0 + 48);
  *(v0 + 496) = v9;
  v10 = *(v0 + 96);
  *(v0 + 512) = *(v0 + 80);
  *(v0 + 528) = v10;
  v11 = *(v0 + 32);
  *(v0 + 448) = *(v0 + 16);
  *(v0 + 464) = v11;
  outlined destroy of SamplingParameters(v0 + 448);
  v12 = *(v0 + 664);
  v13 = *(v0 + 672);
  *(v0 + 728) = v13;
  v14 = *(v0 + 680);
  v15 = *(v0 + 688);
  *(v0 + 736) = v15;
  v16 = swift_task_alloc();
  *(v0 + 744) = v16;
  *v16 = v0;
  v16[1] = closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:);
  v17 = *(v0 + 712);

  return specialized TokenStream.contentAndPromptCompletion()(v17, v12, v13, v14, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v7 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:);
  }

  else
  {
    v5 = *(v2 + 712);

    outlined destroy of ToolType(v5, type metadata accessor for PromptCompletion);
    v4 = closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[92];
  v2 = v0[91];

  v3 = v0[90];
  v4 = v0[89];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[92];
  v2 = v0[91];

  v3 = v0[94];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.generator);
  MEMORY[0x1AC5A6AE0](v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x1AC5A6AE0](v3);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_1AB828000, v5, v6, "Prewarm failed: %@", v7, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[90];
  v11 = v0[89];

  v12 = v0[1];

  return v12();
}

double TokenGenerator.complete(prompt:parameters:schema:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  v121 = a3;
  v115 = a4;
  v123 = a1;
  v5 = type metadata accessor for ToolChoice();
  v131 = *(v5 - 8);
  v132 = v5;
  v6 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v105 - v9;
  v112 = type metadata accessor for PromptVariant();
  v130 = *(v112 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v105 - v13;
  v113 = type metadata accessor for CompletePromptRequest(0);
  v14 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v120 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v105 - v17;
  v124 = type metadata accessor for Prompt();
  v129 = *(v124 - 8);
  v18 = v129[8];
  MEMORY[0x1EEE9AC00](v124);
  v108 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v105 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v111 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v117 = &v105 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v153 = &v105 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v105 - v33;
  v35 = type metadata accessor for Schema();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v116 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v118 = &v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v105 - v43;
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a2 + 176);
  v149 = *(a2 + 160);
  v150 = v50;
  v151 = *(a2 + 192);
  v152 = *(a2 + 208);
  v51 = *(a2 + 112);
  v145 = *(a2 + 96);
  v146 = v51;
  v52 = *(a2 + 144);
  v147 = *(a2 + 128);
  v148 = v52;
  v53 = *(a2 + 48);
  v141 = *(a2 + 32);
  v142 = v53;
  v54 = *(a2 + 80);
  v143 = *(a2 + 64);
  v144 = v54;
  v55 = *(a2 + 16);
  v139 = *a2;
  v140 = v55;
  UUID.init()();
  v109 = UUID.uuidString.getter();
  v127 = v56;
  (*(v46 + 8))(v49, v45);
  v126 = 0x80000001ABA42A90;
  v125 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v121, v34, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v57 = type metadata accessor for Constraints(0);
    (*(*(v57 - 8) + 56))(v44, 1, 1, v57);
  }

  else
  {
    v58 = v116;
    (*(v36 + 32))(v116, v34, v35);
    Schema.type.getter();
    (*(v36 + 8))(v58, v35);
    v59 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v59 - 8) + 56))(v44, 0, 1, v59);
  }

  v60 = v153;
  (*(v131 + 56))(v153, 1, 1, v132);
  v61 = v133;
  v63 = v122;
  v62 = v123;
  PromptVariant.tgPrompt.getter();
  v64 = v130;
  v65 = v128;
  if (v63)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v60, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  }

  else
  {
    v122 = 0;
    v67 = v129[2];
    v68 = v124;
    v67(v128, v61, v124);
    v121 = *(v64 + 16);
    v69 = v112;
    v121(v119, v62, v112);
    v123 = v44;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, v118, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v153, v117, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

    outlined init with copy of SamplingParameters(&v139, v136);
    v70 = v120;
    XPCDictionary.init()();
    v71 = v108;
    v67(v108, v65, v68);
    v72 = v119;
    v73 = v69;
    v74 = specialized PromptEnvelope.init(sealing:xpcData:)(v71, v70);
    v75 = v113;
    v76 = (v70 + *(v113 + 20));
    *v76 = v74;
    v76[1] = v77;
    v76[2] = v78;
    v76[3] = v79;
    v80 = v110;
    v121(v110, v72, v73);
    v81 = v117;
    v83 = v131;
    v82 = v132;
    PromptVariantEnvelope.init(sealing:xpcData:)(v80, v70, v70 + v75[6]);
    v134[10] = v149;
    v134[11] = v150;
    v134[12] = v151;
    v135 = v152;
    v134[6] = v145;
    v134[7] = v146;
    v134[8] = v147;
    v134[9] = v148;
    v134[2] = v141;
    v134[3] = v142;
    v134[4] = v143;
    v134[5] = v144;
    v134[0] = v139;
    v134[1] = v140;
    SamplingParametersEnvelope.init(sealing:)(v134, v136);
    v84 = v70 + v75[7];
    v85 = v136[11];
    *(v84 + 160) = v136[10];
    *(v84 + 176) = v85;
    *(v84 + 192) = v136[12];
    *(v84 + 208) = v137;
    v86 = v136[7];
    *(v84 + 96) = v136[6];
    *(v84 + 112) = v86;
    v87 = v136[9];
    *(v84 + 128) = v136[8];
    *(v84 + 144) = v87;
    v88 = v136[3];
    *(v84 + 32) = v136[2];
    *(v84 + 48) = v88;
    v89 = v136[5];
    *(v84 + 64) = v136[4];
    *(v84 + 80) = v89;
    v90 = v136[1];
    *v84 = v136[0];
    *(v84 + 16) = v90;
    *(v70 + v75[9]) = MEMORY[0x1E69E7CC0];
    v91 = v111;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v81, v111, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    if ((*(v83 + 48))(v91, 1, v82) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v81, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v130 + 8))(v72, v73);
      v92 = v129[1];
      v92(v128, v124);
      v93 = xmmword_1ABA26F10;
    }

    else
    {
      v94 = v73;
      v95 = v106;
      (*(v83 + 32))(v106, v91, v82);
      v96 = v107;
      (*(v83 + 16))(v107, v95, v82);
      ToolChoiceEnvelope.init(sealing:)(v96, v134);
      (*(v83 + 8))(v95, v82);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v81, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v130 + 8))(v72, v94);
      v92 = v129[1];
      v92(v128, v124);
      v93 = v134[0];
    }

    v97 = v120;
    *&v120[v75[10]] = v93;
    swift_bridgeObjectRelease_n();
    v98 = (v97 + v75[12]);
    v99 = v126;
    v100 = v127;
    *v98 = v109;
    v98[1] = v100;
    v98[2] = 0xD000000000000023;
    v98[3] = v99;
    v98[4] = 0;
    v98[5] = 0;
    v98[6] = v125;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v118, v97 + v75[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v101 = MEMORY[0x1E69E7CC0];
    *(v97 + v75[11]) = MEMORY[0x1E69E7CC0];
    v102 = v114;
    outlined init with take of ToolDescription(v97, v114, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v102, v101, v138);

    outlined destroy of ToolType(v102, type metadata accessor for CompletePromptRequest);
    v92(v133, v124);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v153, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v123, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    result = *v138;
    v103 = v138[1];
    v104 = v115;
    *v115 = v138[0];
    v104[1] = v103;
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t TokenGenerator.countTokens(in:)(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = type metadata accessor for Prompt();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v5 = *(v4 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v6 = type metadata accessor for PromptVariant();
  v2[43] = v6;
  v7 = *(v6 - 8);
  v2[44] = v7;
  v8 = *(v7 + 64) + 15;
  v2[45] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[46] = v9;
  v10 = *(v9 - 8);
  v2[47] = v10;
  v11 = *(v10 + 64) + 15;
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.countTokens(in:), 0, 0);
}

{
  v2[37] = a1;
  v2[38] = v1;
  v3 = type metadata accessor for Prompt();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v5 = *(v4 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[43] = v6;
  v7 = *(v6 - 8);
  v2[44] = v7;
  v8 = *(v7 + 64) + 15;
  v2[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.countTokens(in:), 0, 0);
}

uint64_t TokenGenerator.countTokens(in:)()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v18 = v0[45];
  v4 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v0[49] = v9;
  (*(v2 + 8))(v1, v3);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[50] = v11;
  v12 = *(v5 + 16);
  v0[51] = v12;
  v0[52] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v4, v7, v6);
  PromptVariant.init(_:)();
  v0[30] = v8;
  v0[31] = v10;
  v0[32] = 0xD000000000000010;
  v0[33] = 0x80000001ABA42AC0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = v11;
  v13 = swift_task_alloc();
  v0[53] = v13;
  *v13 = v0;
  v13[1] = TokenGenerator.countTokens(in:);
  v14 = v0[45];
  v15 = v0[37];
  v16 = v0[38];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v0 + 2), v15, v14, v0 + 30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v8 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    (*(v2[44] + 8))(v2[45], v2[43]);
    v4 = TokenGenerator.countTokens(in:);
  }

  else
  {
    v6 = v2[49];
    v5 = v2[50];
    (*(v2[44] + 8))(v2[45], v2[43]);

    v4 = TokenGenerator.countTokens(in:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v32 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  outlined destroy of CountTokensResponse(v0 + 128);
  v4 = *(v0 + 128);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 328);
  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.generator);
  v6(v7, v9, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 320);
  v15 = *(v0 + 328);
  v16 = *(v0 + 312);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v17 = 134218243;
    *(v17 + 4) = v4;
    *(v17 + 12) = 2085;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
    v18 = v4;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v14 + 8))(v15, v16);
    v22 = v19;
    v4 = v18;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v31);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_1AB828000, v11, v12, "Counted %ld tokens in prompt: %{sensitive}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1AC5A6CD0](v30, -1, -1);
    MEMORY[0x1AC5A6CD0](v17, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v24 = *(v0 + 384);
  v25 = *(v0 + 360);
  v27 = *(v0 + 328);
  v26 = *(v0 + 336);

  v28 = *(v0 + 8);

  return v28(v4);
}

{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[45];
  v6 = v0[41];
  v5 = v0[42];

  v7 = v0[1];
  v8 = v0[54];

  return v7();
}

{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[37];
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v0[46] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[47] = v9;
  PromptVariant.tgPrompt.getter();
  v0[30] = v6;
  v0[31] = v8;
  v0[32] = 0xD000000000000010;
  v0[33] = 0x80000001ABA42AC0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = v9;
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = TokenGenerator.countTokens(in:);
  v11 = v0[42];
  v12 = v0[37];
  v13 = v0[38];

  return TokenGenerator._countTokens(in:promptVariant:metadata:)((v0 + 2), v11, v12, v0 + 30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = TokenGenerator.countTokens(in:);
  }

  else
  {
    v5 = *(v2 + 368);
    v6 = *(v2 + 376);

    v4 = TokenGenerator.countTokens(in:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v33 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  outlined destroy of CountTokensResponse(v0 + 128);
  v4 = *(v0 + 128);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generator);
  (*(v7 + 16))(v6, v5, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  if (v12)
  {
    v31 = *(v0 + 336);
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v17 = 134218243;
    *(v17 + 4) = v4;
    *(v17 + 12) = 2085;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v11;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1AB828000, v10, v29, "Counted %ld tokens in prompt: %{sensitive}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1AC5A6CD0](v30, -1, -1);
    MEMORY[0x1AC5A6CD0](v17, -1, -1);

    v21(v31, v16);
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v13, v16);
    v23(v14, v16);
  }

  v24 = *(v0 + 360);
  v25 = *(v0 + 328);
  v26 = *(v0 + 336);

  v27 = *(v0 + 8);

  return v27(v4);
}

{
  v1 = v0[46];
  v2 = v0[47];
  (*(v0[40] + 8))(v0[42], v0[39]);

  v3 = v0[49];
  v4 = v0[45];
  v6 = v0[41];
  v5 = v0[42];

  v7 = v0[1];

  return v7();
}

uint64_t TokenGenerator._countTokens(in:promptVariant:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = type metadata accessor for OneShotRequest(0);
  *(v5 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v5 + 64) = v9;
  v10 = *(v9 - 8);
  *(v5 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v12 = type metadata accessor for PromptVariant();
  *(v5 + 88) = v12;
  v13 = *(v12 - 8);
  *(v5 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v15 = type metadata accessor for Prompt();
  *(v5 + 120) = v15;
  v16 = *(v15 - 8);
  *(v5 + 128) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v18 = type metadata accessor for CountTokensRequest(0);
  *(v5 + 160) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v20 = swift_task_alloc();
  v21 = *a4;
  *(v5 + 168) = v20;
  *(v5 + 176) = v21;
  *(v5 + 184) = *(a4 + 1);
  *(v5 + 200) = a4[3];
  *(v5 + 208) = *(a4 + 2);
  *(v5 + 224) = a4[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator._countTokens(in:promptVariant:metadata:), 0, 0);
}

uint64_t TokenGenerator._countTokens(in:promptVariant:metadata:)()
{
  v41 = v0[28];
  v37 = v0[27];
  v40 = v0[26];
  v38 = v0[24];
  v39 = v0[25];
  v1 = v0[21];
  v35 = v0[22];
  v36 = v0[23];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v32 = v0[18];
  v6 = v0[12];
  v33 = v0[20];
  v34 = v0[13];
  v43 = v0[11];
  v7 = v0[3];
  v31 = v0[4];
  v8 = *(v4 + 16);
  v0[29] = v8;
  v0[30] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v7, v3);
  v9 = *(v6 + 16);
  v9(v5, v31, v43);
  XPCDictionary.init()();
  v8(v32, v2, v3);
  v10 = specialized PromptEnvelope.init(sealing:xpcData:)(v32, v1);
  v11 = (v1 + v33[5]);
  *v11 = v10;
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v9(v34, v5, v43);
  PromptVariantEnvelope.init(sealing:xpcData:)(v34, v1, v1 + v33[6]);
  (*(v6 + 8))(v5, v43);
  v15 = *(v4 + 8);
  v0[31] = v15;
  v0[32] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2, v3);
  v16 = (v1 + v33[7]);
  *v16 = v35;
  v16[1] = v36;
  v16[2] = v38;
  v16[3] = v39;
  v16[4] = v40;
  v16[5] = v37;
  v16[6] = v41;

  if (v37)
  {
    v17 = v0[26];
    v18 = v37;
  }

  else
  {
    v19 = v0[9];
    v20 = v0[10];
    v21 = v0[8];
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v18 = v22;
    (*(v19 + 8))(v20, v21);
  }

  v0[33] = v18;
  v23 = v0[6];
  v24 = v0[5];
  outlined init with copy of ToolDescription(v0[21], v0[7], type metadata accessor for CountTokensRequest);
  swift_storeEnumTagMultiPayload();
  v25 = *(v24 + 128);
  __swift_project_boxed_opaque_existential_1((v24 + 104), v25);

  v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator._countTokens(in:promptVariant:metadata:));
  v0[34] = v26;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062600);
  v27 = swift_task_alloc();
  v0[35] = v27;
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  *v27 = v0;
  v27[1] = TokenGenerator._countTokens(in:promptVariant:metadata:);
  v28 = v0[7];
  v29 = v0[2];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v29, v17, v18, v28, v26, &type metadata for CountTokensResponse, v25, &type metadata for CountTokensResponse);
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 264);

  if (v0)
  {
    v7 = TokenGenerator._countTokens(in:promptVariant:metadata:);
  }

  else
  {
    v7 = TokenGenerator._countTokens(in:promptVariant:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensRequest);

  v8 = v0[1];

  return v8();
}

{
  v41 = v0;
  v1 = v0[21];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensRequest);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.generator);
  v4(v5, v7, v6);
  MEMORY[0x1AC5A6AE0](v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v38 = v0[32];
    v39 = v0[36];
    v37 = v0[31];
    v11 = v0[17];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v13 = 136643075;
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v37(v11, v12);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v40);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v39);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_1AB828000, v9, v10, "Failed to count tokens in prompt: %{sensitive}s. %@", v13, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1AC5A6CD0](v15, -1, -1);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  else
  {
    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[17];
    v24 = v0[15];

    v22(v23, v24);
  }

  v25 = v0[36];
  v26 = v0[21];
  v28 = v0[18];
  v27 = v0[19];
  v29 = v0[17];
  v31 = v0[13];
  v30 = v0[14];
  v32 = v0[10];
  v33 = v0[7];
  swift_willThrow();

  v34 = v0[1];
  v35 = v0[36];

  return v34();
}

uint64_t TokenGenerator.render(prompt:promptTemplateInfo:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 296) = a1;
  *(v4 + 304) = a3;
  v8 = type metadata accessor for PromptTemplateInfo();
  *(v4 + 312) = v8;
  v9 = *(v8 - 8);
  *(v4 + 320) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  v11 = *(*(type metadata accessor for Prompt.Rendering.Source() - 8) + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  v12 = type metadata accessor for Prompt.Rendering();
  *(v4 + 360) = v12;
  v13 = *(v12 - 8);
  *(v4 + 368) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  v15 = *(a4 + 48);
  v16 = *(a4 + 16);
  *(v4 + 240) = *a4;
  v17 = *(a4 + 32);
  *(v4 + 256) = v16;
  *(v4 + 272) = v17;
  *(v4 + 288) = v15;
  v18 = swift_task_alloc();
  *(v4 + 392) = v18;
  *v18 = v4;
  v18[1] = TokenGenerator.render(prompt:promptTemplateInfo:metadata:);

  return TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(v4 + 16, a2, a3, v4 + 240);
}

uint64_t TokenGenerator.render(prompt:promptTemplateInfo:metadata:)()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = TokenGenerator.render(prompt:promptTemplateInfo:metadata:);
  }

  else
  {
    v3 = TokenGenerator.render(prompt:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v109 = v0;
  v1 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v3;
  if (*(v0 + 144))
  {
    v4 = *(v0 + 368);
    v104 = *(v0 + 360);
    v5 = *(v0 + 352);
    v99 = *(v0 + 384);
    v101 = *(v0 + 296);
    v6 = *(v0 + 232);
    v94 = *(v0 + 208);
    v95 = *(v0 + 216);
    v93 = *(v0 + 200);
    v97 = *(v0 + 224);
    v98 = *(v0 + 192);
    v7 = *(v0 + 184);
    v96 = *(v0 + 176);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    (*(v4 + 32))(v101, v99, v104);
    outlined destroy of CountTokensResponse(v0 + 128);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 368);
    v12 = *(v0 + 376);
    v14 = *(v0 + 360);
    v15 = *(v0 + 344);
    v16 = *(v0 + 312);
    v17 = *(v0 + 320);
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.generator);
    (*(v13 + 16))(v12, v19, v14);
    (*(v17 + 16))(v15, v18, v16);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 368);
    v24 = *(v0 + 376);
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v29 = *(v0 + 312);
    v28 = *(v0 + 320);
    if (v23)
    {
      v102 = v22;
      v30 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v108[0] = v105;
      *v30 = 136643075;
      v31 = Prompt.Rendering.renderedString.getter();
      v100 = v29;
      v33 = v32;
      (*(v25 + 8))(v24, v26);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v108);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2085;
      v35 = PromptTemplateInfo.templateID.getter();
      v37 = v36;
      (*(v28 + 8))(v27, v100);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v108);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1AB828000, v21, v102, "Rendered prompt text: %{sensitive}s for prompt template identifer: %{sensitive}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v105, -1, -1);
      MEMORY[0x1AC5A6CD0](v30, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(v24, v26);
    }

    v60 = *(v0 + 376);
    v59 = *(v0 + 384);
    v62 = *(v0 + 344);
    v61 = *(v0 + 352);
    v64 = *(v0 + 328);
    v63 = *(v0 + 336);

    v65 = *(v0 + 8);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 128);
    v39 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 336);
    v41 = *(v0 + 312);
    v42 = *(v0 + 320);
    v43 = *(v0 + 304);
    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.generator);
    (*(v42 + 16))(v40, v43, v41);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 336);
    v50 = *(v0 + 312);
    v49 = *(v0 + 320);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v108[0] = v52;
      *v51 = 136380675;
      v106 = v44;
      v53 = PromptTemplateInfo.templateID.getter();
      v55 = v54;
      (*(v49 + 8))(v48, v50);
      v56 = v53;
      v44 = v106;
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v108);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_1AB828000, v45, v46, "Rendered prompt template: %{private}s is empty", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v58 = v52;
      v39 = &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
      MEMORY[0x1AC5A6CD0](v58, -1, -1);
      MEMORY[0x1AC5A6CD0](v51, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v48, v50);
    }

    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    v66 = swift_allocError();
    v68 = v67;
    v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v68 = 0xD000000000000018;
    v68[1] = 0x80000001ABA42A50;
    v68[2] = 0;
    v68[3] = 0;
    v68[4] = 0;
    v68[5] = v69;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    if (v39[219] != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 320);
    v70 = *(v0 + 328);
    v73 = *(v0 + 304);
    v72 = *(v0 + 312);
    __swift_project_value_buffer(v44, static Log.generator);
    (*(v71 + 16))(v70, v73, v72);
    MEMORY[0x1AC5A6AE0](v66);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    v76 = os_log_type_enabled(v74, v75);
    v78 = *(v0 + 320);
    v77 = *(v0 + 328);
    v79 = *(v0 + 312);
    if (v76)
    {
      v80 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108[0] = v107;
      *v80 = 136643075;
      v81 = PromptTemplateInfo.templateID.getter();
      v83 = v82;
      (*(v78 + 8))(v77, v79);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v108);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v66);
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 14) = v85;
      *v103 = v85;
      _os_log_impl(&dword_1AB828000, v74, v75, "Failed to render for prompt template: %{sensitive}s. %@", v80, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v103, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v103, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x1AC5A6CD0](v107, -1, -1);
      MEMORY[0x1AC5A6CD0](v80, -1, -1);
    }

    else
    {

      (*(v78 + 8))(v77, v79);
    }

    v87 = *(v0 + 376);
    v86 = *(v0 + 384);
    v89 = *(v0 + 344);
    v88 = *(v0 + 352);
    v91 = *(v0 + 328);
    v90 = *(v0 + 336);
    swift_willThrow();

    v65 = *(v0 + 8);
  }

  return v65();
}

{
  v30 = v0;
  v1 = v0[50];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.generator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x1AC5A6AE0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[39];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136643075;
    v14 = PromptTemplateInfo.templateID.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    MEMORY[0x1AC5A6AE0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v27 = v18;
    _os_log_impl(&dword_1AB828000, v7, v8, "Failed to render for prompt template: %{sensitive}s. %@", v13, 0x16u);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1AC5A6CD0](v28, -1, -1);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[47];
  v19 = v0[48];
  v22 = v0[43];
  v21 = v0[44];
  v24 = v0[41];
  v23 = v0[42];
  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = type metadata accessor for OneShotRequest(0);
  *(v5 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v10 = type metadata accessor for PromptVariant();
  *(v5 + 72) = v10;
  v11 = *(v10 - 8);
  *(v5 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v13 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 104) = v13;
  v14 = *(v13 - 8);
  *(v5 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v16 = type metadata accessor for Prompt();
  *(v5 + 136) = v16;
  v17 = *(v16 - 8);
  *(v5 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  v21 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  *(v5 + 216) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  *(v5 + 240) = v23;
  v24 = *(v23 - 8);
  *(v5 + 248) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  v26 = *(a4 + 16);
  *(v5 + 264) = *a4;
  *(v5 + 280) = v26;
  *(v5 + 296) = *(a4 + 32);
  *(v5 + 312) = *(a4 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:), 0, 0);
}

{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = type metadata accessor for OneShotRequest(0);
  *(v5 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v10 = type metadata accessor for PromptVariant();
  *(v5 + 72) = v10;
  v11 = *(v10 - 8);
  *(v5 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v13 = type metadata accessor for Prompt();
  *(v5 + 104) = v13;
  v14 = *(v13 - 8);
  *(v5 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v16 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 136) = v16;
  v17 = *(v16 - 8);
  *(v5 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v21 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  *(v5 + 208) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  *(v5 + 232) = v23;
  v24 = *(v23 - 8);
  *(v5 + 240) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v26 = *(a4 + 16);
  *(v5 + 256) = *a4;
  *(v5 + 272) = v26;
  *(v5 + 288) = *(a4 + 32);
  *(v5 + 304) = *(a4 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:), 0, 0);
}

uint64_t TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:)()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = v0[38];
    v100 = v0[39];
    v97 = v0[37];
    v99 = v0[36];
    v3 = v0[35];
    v94 = v3;
    v95 = v0[33];
  }

  else
  {
    v5 = v0[31];
    v4 = v0[32];
    v6 = v0[30];
    UUID.init()();
    v95 = UUID.uuidString.getter();
    v1 = v7;
    (*(v5 + 8))(v4, v6);
    v99 = 0x80000001ABA42DA0;
    v100 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v97 = 0;
    v2 = 0;
    v94 = 0xD000000000000031;
  }

  v8 = v0[25];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[3];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v0[26], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v8, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v12 = *(v10 + 48);
  v13 = v12(v8, 1, v9);
  v15 = v0[38];
  v14 = v0[39];
  v16 = v0[36];
  v93 = v0[37];
  v18 = v0[34];
  v17 = v0[35];
  v19 = v0[33];
  v98 = v1;
  v96 = v2;
  if (v13 == 1)
  {
    (*(v0[10] + 56))(v0[23], 1, 1, v0[9]);
    outlined copy of RequestMetadata?(v19, v18);
  }

  else
  {
    v83 = v0[23];
    v21 = v0[20];
    v20 = v0[21];
    v91 = v12;
    v22 = v0[17];
    v23 = v0[18];
    v24 = v0[10];
    v86 = v0[9];
    (*(v23 + 32))(v20, v0[25], v22);
    (*(v23 + 16))(v21, v20, v22);
    outlined copy of RequestMetadata?(v19, v18);
    PromptVariant.init(_:)();
    (*(v23 + 8))(v20, v22);
    v12 = v91;
    (*(v24 + 56))(v83, 0, 1, v86);
  }

  v25 = v0[27];
  v26 = v0[28];
  v27 = v0[26];
  v28 = v0[24];
  v29 = v0[17];
  v92 = *(v0[14] + 16);
  v92(v0[16], v0[4], v0[13]);

  XPCDictionary.init()();
  v30 = v26 + *(v25 + 20);
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v31 = *(v25 + 24);
  v32 = type metadata accessor for PromptVariantEnvelope(0);
  v84 = *(*(v32 - 8) + 56);
  v87 = v32;
  v84(v26 + v31, 1, 1);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v28, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if (v12(v28, 1, v29) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[24], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v33 = v0[28];
    v34 = v0[21];
    v35 = v0[18];
    v36 = v0[19];
    v37 = v0[17];
    (*(v35 + 32))(v36, v0[24], v37);
    (*(v35 + 16))(v34, v36, v37);
    v38 = specialized PromptEnvelope.init(sealing:xpcData:)(v34, v33);
    v40 = v39;
    v42 = v41;
    v89 = v31;
    v43 = v26;
    v45 = v44;
    (*(v35 + 8))(v36, v37);
    *v30 = v38;
    *(v30 + 8) = v40;
    *(v30 + 16) = v42;
    *(v30 + 24) = v45;
    v26 = v43;
    v31 = v89;
  }

  v46 = v0[22];
  v47 = v0[9];
  v48 = v0[10];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[23], v46, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[22], &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v49 = v0[28];
    v51 = v0[11];
    v50 = v0[12];
    v53 = v0[9];
    v52 = v0[10];
    v54 = v0[8];
    (*(v52 + 32))(v50, v0[22], v53);
    (*(v52 + 16))(v51, v50, v53);
    PromptVariantEnvelope.init(sealing:xpcData:)(v51, v49, v54);
    (*(v52 + 8))(v50, v53);
    (v84)(v54, 0, 1, v87);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v54, v26 + v31, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v55 = v0[28];
  v56 = v0[27];
  v88 = v0[26];
  v90 = v0[29];
  v85 = v0[23];
  v57 = v0[15];
  v58 = v0[16];
  v59 = v0[13];
  v60 = v0[14];
  v61 = (v55 + *(v56 + 32));
  *v61 = v95;
  v61[1] = v98;
  v61[2] = v94;
  v61[3] = v99;
  v61[4] = v97;
  v61[5] = v96;
  v61[6] = v100;
  v92(v57, v58, v59);
  v62 = (v55 + *(v56 + 28));
  v62[1] = PromptTemplateInfo.templateID.getter();
  v62[2] = v63;
  v64 = PromptTemplateInfo.richVariableBindings.getter();
  v65 = specialized _NativeDictionary.mapValues<A>(_:)(v64, v55);

  *v62 = v65;
  v66 = v62 + *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  PromptTemplateInfo.locale.getter();
  v67 = *(v60 + 8);
  v67(v57, v59);
  v67(v58, v59);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v85, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v88, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v68 = v96;
  outlined init with take of ToolDescription(v55, v90, type metadata accessor for CountTokensPromptTemplateRequest);
  if (v96)
  {

    v69 = v97;
  }

  else
  {
    v71 = v0[31];
    v70 = v0[32];
    v72 = v0[30];
    UUID.init()();
    v69 = UUID.uuidString.getter();
    v74 = v73;

    (*(v71 + 8))(v70, v72);
    v68 = v74;
  }

  v0[40] = v68;
  v75 = v0[6];
  v76 = v0[5];
  outlined init with copy of ToolDescription(v0[29], v0[7], type metadata accessor for CountTokensPromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v77 = *(v76 + 128);
  __swift_project_boxed_opaque_existential_1((v76 + 104), v77);
  v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:));
  v0[41] = v78;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062700);
  v79 = swift_task_alloc();
  v0[42] = v79;
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  *v79 = v0;
  v79[1] = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  v80 = v0[7];
  v81 = v0[2];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v81, v69, v68, v80, v78, &type metadata for CountTokensResponse, v77, &type metadata for CountTokensResponse);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);

  if (v0)
  {
    v7 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  else
  {
    v7 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v11 = v0[21];
  v12 = v0[20];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[8];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v2, type metadata accessor for CountTokensPromptTemplateRequest);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v12 = v0[21];
  v13 = v0[20];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[8];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v2, type metadata accessor for CountTokensPromptTemplateRequest);

  v9 = v0[1];
  v10 = v0[43];

  return v9();
}

{
  v1 = v0[33];
  if (v1)
  {
    v2 = v0[32];
    v92 = v2;
    v98 = v0[33];
    v91 = v0[34];
    v3 = v0[36];
    v96 = v0[35];
    v94 = v3;
    v95 = v0[37];
    v97 = v0[38];
  }

  else
  {
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    UUID.init()();
    v92 = UUID.uuidString.getter();
    v98 = v7;
    (*(v5 + 8))(v4, v6);
    v96 = 0x80000001ABA42DA0;
    v97 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v94 = 0;
    v95 = 0;
    v8 = v0[37];
    v93 = v0[38];
    v10 = v0[35];
    v9 = v0[36];
    v1 = v0[33];
    v11 = v0[34];
    v91 = 0xD000000000000031;
    v2 = v0[32];
  }

  v12 = v0[23];
  v13 = v0[9];
  v14 = v0[10];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[3], v12, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v88 = *(v14 + 48);
  LODWORD(v13) = v88(v12, 1, v13);
  outlined copy of RequestMetadata?(v2, v1);
  if (v13 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[23], &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v15 = v0[25];
    v16 = v0[23];
    PromptVariant.tgPrompt.getter();
    (*(v0[10] + 8))(v0[23], v0[9]);
  }

  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[25];
  v84 = v0[24];
  v20 = v0[22];
  v21 = v0[20];
  v22 = v0[17];
  v23 = v0[18];
  v24 = v0[14];
  v82 = v19;
  v83 = v0[13];
  v26 = v0[3];
  v25 = v0[4];
  (*(v24 + 56))();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v20, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v87 = *(v23 + 16);
  v87(v21, v25, v22);

  XPCDictionary.init()();
  v27 = v17 + *(v18 + 20);
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v28 = *(v18 + 24);
  v29 = type metadata accessor for PromptVariantEnvelope(0);
  v80 = *(*(v29 - 8) + 56);
  v81 = v17;
  v80(v17 + v28, 1, 1, v29);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82, v84, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((*(v24 + 48))(v84, 1, v83) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[24], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v30 = v0[27];
    v32 = v0[15];
    v31 = v0[16];
    v34 = v0[13];
    v33 = v0[14];
    (*(v33 + 32))(v31, v0[24], v34);
    (*(v33 + 16))(v32, v31, v34);
    v35 = specialized PromptEnvelope.init(sealing:xpcData:)(v32, v30);
    v37 = v36;
    v39 = v38;
    v85 = v29;
    v40 = v28;
    v42 = v41;
    (*(v33 + 8))(v31, v34);
    *v27 = v35;
    *(v27 + 8) = v37;
    *(v27 + 16) = v39;
    *(v27 + 24) = v42;
    v28 = v40;
    v29 = v85;
  }

  v43 = v0[21];
  v44 = v0[9];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[22], v43, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v88(v43, 1, v44) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[21], &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v45 = v0[27];
    v47 = v0[11];
    v46 = v0[12];
    v49 = v0[9];
    v48 = v0[10];
    v50 = v0[8];
    (*(v48 + 32))(v46, v0[21], v49);
    (*(v48 + 16))(v47, v46, v49);
    PromptVariantEnvelope.init(sealing:xpcData:)(v47, v45, v50);
    (*(v48 + 8))(v46, v49);
    v80(v50, 0, 1, v29);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v50, v81 + v28, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v51 = v0[27];
  v52 = v0[26];
  v89 = v0[25];
  v90 = v0[28];
  v86 = v0[22];
  v53 = v0[19];
  v54 = v0[20];
  v55 = v0[17];
  v56 = v0[18];
  v57 = (v51 + *(v52 + 32));
  *v57 = v92;
  v57[1] = v98;
  v57[2] = v91;
  v57[3] = v96;
  v57[4] = v94;
  v57[5] = v95;
  v57[6] = v97;
  v87(v53, v54, v55);
  v58 = (v51 + *(v52 + 28));
  v58[1] = PromptTemplateInfo.templateID.getter();
  v58[2] = v59;
  v60 = PromptTemplateInfo.richVariableBindings.getter();
  v61 = specialized _NativeDictionary.mapValues<A>(_:)(v60, v51);

  *v58 = v61;
  v62 = v58 + *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  PromptTemplateInfo.locale.getter();
  v63 = *(v56 + 8);
  v63(v53, v55);
  v64 = v55;
  v65 = v95;
  v63(v54, v64);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v86, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v89, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined init with take of ToolDescription(v51, v90, type metadata accessor for CountTokensPromptTemplateRequest);
  if (v95)
  {

    v66 = v94;
  }

  else
  {
    v68 = v0[30];
    v67 = v0[31];
    v69 = v0[29];
    UUID.init()();
    v66 = UUID.uuidString.getter();
    v71 = v70;

    (*(v68 + 8))(v67, v69);
    v65 = v71;
  }

  v0[39] = v65;
  v72 = v0[6];
  v73 = v0[5];
  outlined init with copy of ToolDescription(v0[28], v0[7], type metadata accessor for CountTokensPromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v74 = *(v73 + 128);
  __swift_project_boxed_opaque_existential_1((v73 + 104), v74);
  v75 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:));
  v0[40] = v75;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062630);
  v76 = swift_task_alloc();
  v0[41] = v76;
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  *v76 = v0;
  v76[1] = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  v77 = v0[7];
  v78 = v0[2];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v78, v66, v65, v77, v75, &type metadata for CountTokensResponse, v74, &type metadata for CountTokensResponse);
}

{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);

  if (v0)
  {
    v7 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  else
  {
    v7 = TokenGenerator._countTokens(prompt:promptTemplateInfo:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v0[20];
  v12 = v0[19];
  v13 = v0[16];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[11];
  v17 = v0[8];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v3, type metadata accessor for CountTokensPromptTemplateRequest);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[28];
  outlined destroy of ToolType(v0[7], type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v1, type metadata accessor for CountTokensPromptTemplateRequest);
  v20 = v0[42];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[8];
  v19 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t TokenGenerator.compileAdapter(dryRun:)(uint64_t a1, char a2)
{
  *(v3 + 145) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.compileAdapter(dryRun:), 0, 0);
}

uint64_t TokenGenerator.compileAdapter(dryRun:)()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v0 + 112) = v5;
  (*(v2 + 8))(v1, v3);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 120) = v7;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  *(v0 + 32) = 0xD000000000000017;
  *(v0 + 40) = 0x80000001ABA42AE0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v7;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = TokenGenerator.compileAdapter(dryRun:);
  v9 = *(v0 + 80);
  v10 = *(v0 + 145);

  return TokenGenerator._compileAdapter(dryRun:metadata:)(v0 + 144, v10, (v0 + 16));
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = TokenGenerator.compileAdapter(dryRun:);
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 120);

    v4 = TokenGenerator.compileAdapter(dryRun:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 144);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AB828000, v3, v4, "Compiled adapter.", v5, 2u);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  *v7 = v1;

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t TokenGenerator._compileAdapter(dryRun:metadata:)(uint64_t a1, char a2, uint64_t *a3)
{
  *(v4 + 312) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = type metadata accessor for OneShotRequest(0);
  *(v4 + 32) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 48) = v8;
  v9 = *(v8 - 8);
  *(v4 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v11 = type metadata accessor for CompileAdapterRequest(0);
  *(v4 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v13 = type metadata accessor for XPCCodableObject();
  *(v4 + 88) = v13;
  v14 = *(v13 - 8);
  *(v4 + 96) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v16 = type metadata accessor for CustomAssetConfiguration();
  *(v4 + 112) = v16;
  v17 = *(v16 - 8);
  *(v4 + 120) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v19 = type metadata accessor for URL();
  *(v4 + 144) = v19;
  v20 = *(v19 - 8);
  *(v4 + 152) = v20;
  v21 = *(v20 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v22 = type metadata accessor for ModelBundle();
  *(v4 + 176) = v22;
  v23 = *(v22 - 8);
  *(v4 + 184) = v23;
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  v26 = *a3;
  *(v4 + 192) = v25;
  *(v4 + 200) = v26;
  *(v4 + 208) = *(a3 + 1);
  *(v4 + 224) = a3[3];
  *(v4 + 232) = *(a3 + 2);
  *(v4 + 248) = a3[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator._compileAdapter(dryRun:metadata:), 0, 0);
}

uint64_t TokenGenerator._compileAdapter(dryRun:metadata:)()
{
  v1 = *(v0 + 24);
  if (*(v1 + 24) && (v2 = *(v1 + 32), *(v2 + 16)))
  {
    (*(*(v0 + 184) + 16))(*(v0 + 192), v2 + ((*(*(v0 + 184) + 80) + 32) & ~*(*(v0 + 184) + 80)), *(v0 + 176));
    v3 = ModelBundle.isFileBased.getter();
    v4 = *(v0 + 192);
    if (v3)
    {
      v6 = *(v0 + 160);
      v5 = *(v0 + 168);
      v7 = *(v0 + 144);
      v8 = *(v0 + 152);
      ModelBundle.resourceURI.getter();
      (*(v8 + 16))(v6, v5, v7);
      v9 = type metadata accessor for FoundationModelsExtensionInfo();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      *(v0 + 256) = FoundationModelsExtensionInfo.init(fileURL:)();
      v55 = *(v0 + 240);
      v62 = *(v0 + 232);
      v63 = *(v0 + 248);
      v60 = *(v0 + 216);
      v61 = *(v0 + 224);
      v58 = *(v0 + 200);
      v59 = *(v0 + 208);
      v31 = *(v0 + 168);
      v32 = *(v0 + 136);
      v66 = *(v0 + 128);
      v33 = *(v0 + 120);
      v56 = *(v0 + 112);
      v34 = *(v0 + 104);
      v35 = *(v0 + 80);
      v64 = *(v0 + 96);
      v65 = *(v0 + 88);
      v36 = *(v0 + 72);
      v57 = *(v0 + 312);
      URL.lastPathComponent.getter();
      xpc_dictionary_create_empty();
      XPCCodableObject.init(copying:)();
      CustomAssetConfiguration.init(instanceID:templateID:assetData:)();
      (*(v33 + 16))(v66, v32, v56);

      XPCDictionary.init()();
      v37 = CustomAssetConfiguration.secureIdentifier.getter();
      v38 = (v35 + v36[6]);
      *v38 = v37;
      v38[1] = v39;
      v40 = (v35 + v36[5]);
      *v40 = v58;
      v40[1] = v59;
      v40[2] = v60;
      v40[3] = v61;
      v40[4] = v62;
      v40[5] = v55;
      v40[6] = v63;
      *(v35 + v36[7]) = v57;

      FoundationModelsExtensionInfo.toXPCObject()();
      XPCCodableObject.copyUnderlyingXPCObject()();
      (*(v64 + 8))(v34, v65);
      XPCDictionary.subscript.setter();

      v41 = *(v33 + 8);
      *(v0 + 264) = v41;
      *(v0 + 272) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v41(v66, v56);
      if (v55)
      {
        v42 = *(v0 + 232);
        v43 = v55;
      }

      else
      {
        v45 = *(v0 + 56);
        v44 = *(v0 + 64);
        v46 = *(v0 + 48);
        UUID.init()();
        v42 = UUID.uuidString.getter();
        v43 = v47;
        (*(v45 + 8))(v44, v46);
      }

      *(v0 + 280) = v43;
      v48 = *(v0 + 32);
      v49 = *(v0 + 24);
      outlined init with copy of ToolDescription(*(v0 + 80), *(v0 + 40), type metadata accessor for CompileAdapterRequest);
      swift_storeEnumTagMultiPayload();
      v50 = *(v49 + 128);
      __swift_project_boxed_opaque_existential_1((v49 + 104), v50);

      v51 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *(v0 + 288) = v51;
      v52 = swift_task_alloc();
      *(v0 + 296) = v52;
      lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse();
      lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse();
      *v52 = v0;
      v52[1] = TokenGenerator._compileAdapter(dryRun:metadata:);
      v53 = *(v0 + 40);
      v54 = *(v0 + 16);

      return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v54, v42, v43, v53, v51, &type metadata for CompileAdapterResponse, v50, &type metadata for CompileAdapterResponse);
    }

    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    swift_allocError();
    v18 = v17;
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v18 = 0x6C65646F6D206F4ELL;
    v18[1] = 0xEF656C646E756220;
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = v19;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v16 + 8))(v4, v15);
  }

  else
  {
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    swift_allocError();
    v13 = v12;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v13 = 0x6C65646F6D206F4ELL;
    v13[1] = 0xEF656C646E756220;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v20 = *(v0 + 192);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v25 = *(v0 + 104);
  v26 = *(v0 + 80);
  v27 = *(v0 + 64);
  v28 = *(v0 + 40);

  v29 = *(v0 + 8);

  return v29();
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = TokenGenerator._compileAdapter(dryRun:metadata:);
  }

  else
  {
    v7 = TokenGenerator._compileAdapter(dryRun:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v13 = v0[33];
  v14 = v0[34];
  v1 = v0[32];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[19];
  v15 = v0[22];
  v16 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v17 = v0[16];
  v18 = v0[13];
  v9 = v0[10];
  v19 = v0[8];
  v10 = v0[5];

  outlined destroy of ToolType(v10, type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v9, type metadata accessor for CompileAdapterRequest);
  v13(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v3, v15);

  v11 = v0[1];

  return v11();
}

{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[5];

  outlined destroy of ToolType(v7, type metadata accessor for OneShotRequest);
  outlined destroy of ToolType(v6, type metadata accessor for CompileAdapterRequest);
  v2(v4, v5);
  v8 = v0[38];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generator);
  MEMORY[0x1AC5A6AE0](v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    MEMORY[0x1AC5A6AE0](v8);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_1AB828000, v10, v11, "Failed to compile adapter %@", v12, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
    MEMORY[0x1AC5A6CD0](v12, -1, -1);
  }

  v16 = v0[23];
  v15 = v0[24];
  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[18];
  v20 = v0[19];

  swift_willThrow();
  (*(v20 + 8))(v18, v19);
  (*(v16 + 8))(v15, v17);
  v21 = v0[24];
  v23 = v0[20];
  v22 = v0[21];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[13];
  v27 = v0[10];
  v28 = v0[8];
  v29 = v0[5];

  v30 = v0[1];

  return v30();
}

uint64_t TokenGenerator.register(documents:)(uint64_t a1)
{
  v231 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v224 = &v207 - v3;
  v223 = type metadata accessor for XPCCodableObject();
  v222 = *(v223 - 8);
  v4 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v221 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for StreamingRequest(0);
  v6 = *(*(v219 - 8) + 64);
  MEMORY[0x1EEE9AC00](v219);
  v226 = (&v207 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v252 = type metadata accessor for URL();
  v265 = *(v252 - 8);
  v8 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v252);
  v208 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v247 = &v207 - v11;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
  v257 = *(v271 - 8);
  v12 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v271 - 8);
  v258 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v234 = &v207 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v269 = &v207 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v267 = &v207 - v19;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMR);
  v264 = *(v246 - 8);
  v20 = v264[8];
  MEMORY[0x1EEE9AC00](v246);
  v245 = &v207 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  v235 = *(v22 - 8);
  v23 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v209 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v244 = &v207 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v210 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v243 = &v207 - v32;
  v256 = type metadata accessor for DocumentResource();
  v33 = *(v256 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v256);
  v225 = &v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v207 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMR);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v229 = (&v207 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v260 = &v207 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v255 = (&v207 - v47);
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v207 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v211 = UUID.uuidString.getter();
  v214 = v53;
  v54 = *(v49 + 8);
  v216 = v52;
  v218 = v48;
  v217 = v49 + 8;
  v215 = v54;
  v54(v52, v48);
  v213 = 0x80000001ABA42B00;
  v55 = MEMORY[0x1E69E7CC0];
  v212 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v56 = 0;
  v259 = (v33 + 16);
  v268 = MEMORY[0x1E69E7CC8];
  v276 = MEMORY[0x1E69E7CC8];
  v254 = (v40 + 56);
  v253 = (v40 + 48);
  v57 = v256;
  v251 = (v33 + 32);
  v58 = *(v231 + 16);
  v242 = (v264 + 13);
  v241 = (v264 + 1);
  v240 = *MEMORY[0x1E69E8790];
  v59 = (v28 + 32);
  v60 = (v235 + 32);
  v250 = (v265 + 8);
  v232 = 0x80000001ABA42B20;
  v262 = (v235 + 8);
  v233 = v28;
  v261 = (v28 + 8);
  v230 = v33;
  v237 = (v33 + 8);
  v61 = v38;
  v228 = 0x80000001ABA42B50;
  v227 = v55;
  v263 = v22;
  v270 = v27;
  v249 = (v28 + 32);
  v248 = (v235 + 32);
  v238 = v58;
  v266 = v38;
  v239 = v39;
LABEL_2:
  v62 = v260;
  while (1)
  {
    if (v56 == v58)
    {
      v72 = 1;
      v265 = v58;
    }

    else
    {
      if (v56 >= v58)
      {
        goto LABEL_66;
      }

      v73 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_67;
      }

      v74 = v230;
      v75 = v231 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v56;
      v76 = *(v39 + 48);
      v77 = v229;
      *v229 = v56;
      (*(v74 + 16))(&v77[v76], v75, v57);
      v78 = v77;
      v62 = v260;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v78, v260, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtMR);
      v72 = 0;
      v265 = v73;
    }

    (*v254)(v62, v72, 1, v39);
    v79 = v255;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v62, v255, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMd, &_sSi6offset_26GenerativeModelsFoundation16DocumentResourceV7elementtSgMR);
    if ((*v253)(v79, 1, v39) == 1)
    {
      break;
    }

    v264 = *v79;
    v80 = v79 + *(v39 + 48);
    v236 = *v251;
    v236(v61, v80, v57);
    type metadata accessor for DocumentRegistration();
    v81 = v245;
    v82 = v246;
    (*v242)(v245, v240, v246);
    v83 = v243;
    v84 = v244;
    static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
    (*v241)(v81, v82);
    v85 = *(v271 + 48);
    v86 = v267;
    (*v59)(v267, v83, v27);
    (*v60)(v86 + v85, v84, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMd, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMR, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
    }

    v88 = v55[2];
    v87 = v55[3];
    if (v88 >= v87 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87 > 1, v88 + 1, 1, v55, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMd, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyAEsAF_p_G12continuationtGMR, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
    }

    v55[2] = v88 + 1;
    v89 = v55;
    v90 = v55 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v91 = *(v257 + 72);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v267, &v90[v91 * v88], &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
    v92 = v247;
    DocumentResource.url.getter();
    v93 = URL.absoluteString.getter();
    v95 = v94;
    v96 = *v250;
    (*v250)(v92, v252);
    v97 = v268;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v275._documents._rawValue = v97;
    v100 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v95);
    v101 = v97[2];
    v102 = (v99 & 1) == 0;
    v103 = v101 + v102;
    if (__OFADD__(v101, v102))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v104 = v99;
    if (v97[3] >= v103)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v103, isUniquelyReferenced_nonNull_native);
      v105 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v95);
      if ((v104 & 1) != (v106 & 1))
      {
        goto LABEL_70;
      }

      v100 = v105;
    }

    v61 = v266;
    if (v104)
    {

      rawValue = v275._documents._rawValue;
      *(*(v275._documents._rawValue + 7) + 8 * v100) = v264;
    }

    else
    {
      rawValue = v275._documents._rawValue;
      *(v275._documents._rawValue + (v100 >> 6) + 8) |= 1 << v100;
      v108 = (rawValue[6] + 16 * v100);
      *v108 = v93;
      v108[1] = v95;
      *(rawValue[7] + 8 * v100) = v264;
      v109 = rawValue[2];
      v110 = __OFADD__(v109, 1);
      v111 = v109 + 1;
      if (v110)
      {
        goto LABEL_68;
      }

      rawValue[2] = v111;
    }

    v112 = DocumentResource.fileDescriptor.getter();
    v268 = rawValue;
    if (v112 < 0)
    {
      v63 = v89[2];
      if (!v63)
      {
        goto LABEL_69;
      }

      v55 = v89;
      v64 = v269;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v90[(v63 - 1) * v91], v269, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v65 = *(v271 + 48);
      type metadata accessor for TokenGenerationError(0);
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      v66 = swift_allocError();
      v68 = v67;
      v69 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
      v57 = v256;
      (*v259)(v68, v61, v256);
      v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v71 = v228;
      *v69 = 0xD00000000000001ALL;
      v69[1] = v71;
      v69[2] = 0;
      v69[3] = 0;
      v69[4] = 0;
      v69[5] = v70;
      swift_storeEnumTagMultiPayload();
      v275._documents._rawValue = v66;
      v22 = v263;
      AsyncThrowingStream.Continuation.finish(throwing:)();
      (*v237)(v61, v57);
      (*v262)(v64 + v65, v22);
      v27 = v270;
      (*v261)(v64, v270);
    }

    else
    {
      v113 = DocumentResource.fileDescriptor.getter();
      if (xpc_fd_create(v113))
      {
        v124 = v208;
        DocumentResource.url.getter();
        v125 = URL.path(percentEncoded:)(1);
        v96(v124, v252);
        v126 = swift_unknownObjectRetain();
        specialized Dictionary.subscript.setter(v126, v125._countAndFlagsBits, v125._object);
        DocumentResource.url.getter();
        DocumentResource.fileDescriptor.getter();
        DocumentResource.metadata.getter();
        DocumentResource.init(_:_:_:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v227[2] + 1, 1, v227, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR, MEMORY[0x1E69A1500]);
        }

        v60 = v248;
        v128 = v227[2];
        v127 = v227[3];
        v22 = v263;
        v27 = v270;
        v55 = v89;
        if (v128 >= v127 >> 1)
        {
          v227 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v127 > 1, v128 + 1, 1, v227, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR, MEMORY[0x1E69A1500]);
        }

        v39 = v239;
        swift_unknownObjectRelease();
        v129 = v227;
        v227[2] = v128 + 1;
        v130 = v230;
        v57 = v256;
        v236(&v129[((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v128], v225, v256);
        v131 = DocumentResource.fileDescriptor.getter();
        close(v131);
        (*(v130 + 8))(v61, v57);
        v59 = v249;
        v58 = v238;
        v56 = v265;
        goto LABEL_2;
      }

      v114 = v89[2];
      if (!v114)
      {
        goto LABEL_65;
      }

      v55 = v89;
      v115 = v269;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v90[(v114 - 1) * v91], v269, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v116 = *(v271 + 48);
      type metadata accessor for TokenGenerationError(0);
      lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      v117 = swift_allocError();
      v119 = v118;
      v120 = (v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
      v57 = v256;
      (*v259)(v119, v61, v256);
      v121 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v122 = v232;
      *v120 = 0xD000000000000025;
      v120[1] = v122;
      v120[2] = 0;
      v120[3] = 0;
      v120[4] = 0;
      v120[5] = v121;
      swift_storeEnumTagMultiPayload();
      v275._documents._rawValue = v117;
      v22 = v263;
      AsyncThrowingStream.Continuation.finish(throwing:)();
      (*v262)(v115 + v116, v22);
      v27 = v270;
      (*v261)(v115, v270);
      v123 = DocumentResource.fileDescriptor.getter();
      close(v123);
      (*v237)(v61, v57);
    }

    v59 = v249;
    v60 = v248;
    v39 = v239;
    v62 = v260;
    v58 = v238;
    v56 = v265;
  }

  empty = xpc_dictionary_create_empty();
  v133 = v276;
  v134 = v276 + 64;
  v135 = 1 << *(v276 + 32);
  v136 = -1;
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  v137 = v136 & *(v276 + 64);
  v138 = (v135 + 63) >> 6;

  v139 = 0;
  if (v137)
  {
    while (1)
    {
      v140 = v139;
LABEL_43:
      v141 = __clz(__rbit64(v137));
      v137 &= v137 - 1;
      v142 = v141 | (v140 << 6);
      v143 = (*(v133 + 48) + 16 * v142);
      v144 = *v143;
      v145 = v143[1];
      v146 = *(*(v133 + 56) + 8 * v142);
      v147 = String.utf8CString.getter();

      swift_unknownObjectRetain();
      xpc_dictionary_set_value(empty, (v147 + 32), v146);
      swift_unknownObjectRelease();

      if (!v137)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v140 = v139 + 1;
    if (__OFADD__(v139, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v140 >= v138)
    {
      break;
    }

    v137 = *(v134 + 8 * v140);
    ++v139;
    if (v137)
    {
      v139 = v140;
      goto LABEL_43;
    }
  }

  v260 = v133;

  metadata.invocationIdentifier._countAndFlagsBits = v211;
  metadata.invocationIdentifier._object = v214;
  metadata.functionIdentifier._countAndFlagsBits = 0xD000000000000014;
  metadata.functionIdentifier._object = v213;
  metadata.clientRequestIdentifier.value._countAndFlagsBits = 0;
  metadata.clientRequestIdentifier.value._object = 0;
  metadata.userInfo._rawValue = v212;
  v148 = v227;

  RegisterDocumentRequest.init(documents:metadata:)(&v275, v148, &metadata);
  v149 = *&v275._metadata.invocationIdentifier._object;
  v150 = v226;
  *v226 = *&v275._documents._rawValue;
  v150[1] = v149;
  v151 = *&v275._metadata.clientRequestIdentifier.value._object;
  v150[2] = *&v275._metadata.functionIdentifier._object;
  v150[3] = v151;
  swift_storeEnumTagMultiPayload();
  v152 = v216;
  UUID.init()();
  v153 = UUID.uuidString.getter();
  v155 = v154;

  v215(v152, v218);
  v156 = v220[16];
  v157 = v220[17];
  v267 = __swift_project_boxed_opaque_existential_1(v220 + 13, v156);
  swift_unknownObjectRetain();
  v158 = v221;
  v259 = empty;
  XPCCodableObject.init(copying:)();
  v159 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v160 = type metadata accessor for RegisterDocumentResponseElement(0);
  v264 = v55;
  v161 = v160;
  v162 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type RegisterDocumentResponseElement and conformance RegisterDocumentResponseElement, type metadata accessor for RegisterDocumentResponseElement);
  v206 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type RegisterDocumentResponseElement and conformance RegisterDocumentResponseElement, type metadata accessor for RegisterDocumentResponseElement);
  v163 = v153;
  v164 = v264;
  InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:xpcCodableObject:requiredAssets:expectedResponse:)(v163, v155, v158, v159, v156, v161, &metadata.invocationIdentifier._countAndFlagsBits, v157, v162, v206);

  (*(v222 + 8))(v158, v223);
  object = metadata.functionIdentifier._object;
  v166 = __swift_project_boxed_opaque_existential_1(&metadata, metadata.functionIdentifier._object);
  makeRegistrationSequence #1 <A>(_:) in TokenGenerator.register(documents:)(v166, object, &v273);
  v167 = v164[2];
  v256 = v167;
  if (v167)
  {
    *&v272 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v167, 0);
    v168 = v272;
    v169 = v164 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v267 = *(v257 + 72);
    v170 = v263;
    v171 = v209;
    v172 = v248;
    do
    {
      v173 = v269;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v169, v269, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v174 = v258;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v173, v258, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v175 = *v172;
      (*v172)(v171, v174 + *(v271 + 48), v170);
      (*v261)(v174, v270);
      *&v272 = v168;
      v177 = *(v168 + 16);
      v176 = *(v168 + 24);
      if (v177 >= v176 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v176 > 1, v177 + 1, 1);
        v168 = v272;
      }

      *(v168 + 16) = v177 + 1;
      v175((v168 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v177), v171, v170);
      v169 += v267;
      --v167;
    }

    while (v167);
    v178 = v268;
    v164 = v264;
  }

  else
  {
    v178 = v268;

    v168 = MEMORY[0x1E69E7CC0];
  }

  v179 = type metadata accessor for TaskPriority();
  v180 = v224;
  (*(*(v179 - 8) + 56))(v224, 1, 1, v179);
  outlined init with copy of PromptCompletionEvent(&v273, &v272);
  v181 = swift_allocObject();
  v181[2] = 0;
  v181[3] = 0;
  outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(&v272, (v181 + 4));
  v181[9] = v178;
  v181[10] = v168;
  v266 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v180, &async function pointer to partial apply for closure #3 in TokenGenerator.register(documents:), v181);
  v182 = v164[2];
  v183 = v271;
  v184 = v269;
  v185 = v263;
  v186 = v234;
  v187 = v262;
  v188 = v261;
  if (v182)
  {
    v189 = v264 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v267 = *(v257 + 72);
    do
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v189, v186, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v186, v184, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v190 = *(v183 + 48);

      AsyncThrowingStream.Continuation.onTermination.setter();
      v186 = v234;
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v234, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v191 = v184 + v190;
      v192 = v270;
      (*v187)(v191, v185);
      (*v188)(v184, v192);
      v189 += v267;
      --v182;
    }

    while (v182);
  }

  v193 = v256;
  if (v256)
  {
    *&v272 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v256, 0);
    v267 = v272;
    v194 = v264 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v265 = *(v257 + 72);
    v195 = v270;
    v196 = v210;
    v197 = v249;
    do
    {
      v198 = v269;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v194, v269, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v199 = v258;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v198, v258, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pG6stream_Scs12ContinuationVyACsAD_p_G12continuationtMR);
      v200 = *(v183 + 48);
      v201 = *v197;
      (*v197)(v196, v199, v195);
      (*v262)(v199 + v200, v263);
      *&v272 = v267;
      v203 = *(v267 + 16);
      v202 = *(v267 + 24);
      if (v203 >= v202 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v202 > 1, v203 + 1, 1);
        v267 = v272;
      }

      v204 = v267;
      *(v267 + 16) = v203 + 1;
      v201((v204 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v203), v196, v195);
      v194 += v265;
      --v193;
      v183 = v271;
    }

    while (v193);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v273);
    outlined destroy of ToolType(v226, type metadata accessor for StreamingRequest);
  }

  else
  {
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v273);
    outlined destroy of ToolType(v226, type metadata accessor for StreamingRequest);

    v267 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_0(&metadata.invocationIdentifier._countAndFlagsBits);
  return v267;
}

uint64_t makeRegistrationSequence #1 <A>(_:) in TokenGenerator.register(documents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for DocumentRegistration();
  a3[3] = type metadata accessor for AsyncMapSequence();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return AsyncSequence.map<A>(_:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed RegisterDocumentResponseElement) -> (@out DocumentRegistration)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = type metadata accessor for DocumentRegistration.Progress();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *(*(type metadata accessor for DocumentRegistrationStatusEnvelope(0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  outlined init with copy of ToolDescription(a2, v13, type metadata accessor for DocumentRegistrationStatusEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v13, v4);
      v15 = a2 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
      static DocumentRegistration.finished(identifier:url:)();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v20 = *v13;
      v21 = v13[1];
      v22 = a2 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
      static DocumentRegistration.error(description:url:)();
    }
  }

  else
  {
    v16 = *v13;
    v17 = v13[1];
    v18 = v13[2];
    DocumentRegistration.Progress.init(progress:bytes:totalBytes:)();
    v19 = a2 + *(type metadata accessor for DocumentRegistrationEnvelope(0) + 20);
    static DocumentRegistration.registering(progress:url:)();
    (*(v9 + 8))(v11, v8);
  }

  v23 = *(v2 + 8);

  return v23();
}

uint64_t closure #3 in TokenGenerator.register(documents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMR);
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = type metadata accessor for DocumentRegistration.InternalStatus();
  v6[17] = v10;
  v11 = *(v10 - 8);
  v6[18] = v11;
  v12 = *(v11 + 64) + 15;
  v6[19] = swift_task_alloc();
  v13 = type metadata accessor for TokenGenerationError(0);
  v6[20] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  v6[22] = v15;
  v16 = *(v15 - 8);
  v6[23] = v16;
  v17 = *(v16 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v18 = type metadata accessor for URL();
  v6[26] = v18;
  v19 = *(v18 - 8);
  v6[27] = v19;
  v20 = *(v19 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v22 = type metadata accessor for DocumentRegistration();
  v6[31] = v22;
  v23 = *(v22 - 8);
  v6[32] = v23;
  v24 = *(v23 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #3 in TokenGenerator.register(documents:), 0, 0);
}

uint64_t closure #3 in TokenGenerator.register(documents:)()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  *(v0 + 296) = *MEMORY[0x1E69A1508];
  *(v0 + 300) = *MEMORY[0x1E69A1518];
  *(v0 + 304) = *MEMORY[0x1E69A1510];
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v7);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = closure #3 in TokenGenerator.register(documents:);
  v11 = *(v0 + 240);

  return MEMORY[0x1EEE6D8C8](v11, v7, v8);
}

{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = closure #3 in TokenGenerator.register(documents:);
  }

  else
  {
    v3 = closure #3 in TokenGenerator.register(documents:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 272), v3, v1);
    v4 = static Task<>.isCancelled.getter();
    v5 = *(v0 + 272);
    if ((v4 & 1) == 0)
    {
      v6 = *(v0 + 232);
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      v9 = *(v0 + 96);
      v10 = *(v0 + 272);
      DocumentRegistration.url.getter();
      v11 = URL.absoluteString.getter();
      v13 = v12;
      (*(v8 + 8))(v6, v7);
      if (*(v9 + 16))
      {
        v14 = *(v0 + 96);
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
        v17 = v16;

        if (v17)
        {
          v21 = *(*(*(v0 + 96) + 56) + 8 * v15);
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v22 = *(v0 + 104);
            if (v21 < *(v22 + 16))
            {
              v23 = *(v0 + 296);
              v24 = *(v0 + 272);
              v26 = *(v0 + 144);
              v25 = *(v0 + 152);
              v27 = *(v0 + 136);
              (*(*(v0 + 184) + 16))(*(v0 + 192), v22 + ((*(*(v0 + 184) + 80) + 32) & ~*(*(v0 + 184) + 80)) + *(*(v0 + 184) + 72) * v21, *(v0 + 176));
              DocumentRegistration.internalStatus.getter();
              v28 = (*(v26 + 88))(v25, v27);
              if (v28 == v23)
              {
                v29 = *(v0 + 264);
                v30 = *(v0 + 272);
                v31 = *(v0 + 248);
                v32 = *(v0 + 256);
                v33 = *(v0 + 184);
                v34 = *(v0 + 192);
                v35 = *(v0 + 176);
                v37 = *(v0 + 128);
                v36 = *(v0 + 136);
                v38 = *(v0 + 120);
                v101 = *(v0 + 112);
                v105 = *(v0 + 152);
                (*(*(v0 + 144) + 96))();
                (*(v32 + 16))(v29, v30, v31);
                AsyncThrowingStream.Continuation.yield(_:)();
                (*(v38 + 8))(v37, v101);
                (*(v33 + 8))(v34, v35);
                (*(v32 + 8))(v30, v31);
                v39 = type metadata accessor for DocumentRegistration.Progress();
                (*(*(v39 - 8) + 8))(v105, v39);
              }

              else if (v28 == *(v0 + 300))
              {
                v64 = *(v0 + 264);
                v63 = *(v0 + 272);
                v65 = *(v0 + 248);
                v66 = *(v0 + 256);
                v67 = *(v0 + 184);
                v68 = *(v0 + 192);
                v69 = *(v0 + 176);
                v71 = *(v0 + 128);
                v70 = *(v0 + 136);
                v72 = *(v0 + 120);
                v103 = *(v0 + 112);
                v107 = *(v0 + 152);
                (*(*(v0 + 144) + 96))();
                (*(v66 + 16))(v64, v63, v65);
                AsyncThrowingStream.Continuation.yield(_:)();
                (*(v72 + 8))(v71, v103);
                *(v0 + 80) = 0;
                AsyncThrowingStream.Continuation.finish(throwing:)();
                (*(v67 + 8))(v68, v69);
                (*(v66 + 8))(v63, v65);
                v73 = type metadata accessor for DocumentResourceIdentifier();
                (*(*(v73 - 8) + 8))(v107, v73);
              }

              else
              {
                v78 = *(v0 + 256);
                v79 = *(v0 + 224);
                v104 = *(v0 + 184);
                v108 = *(v0 + 248);
                v81 = *(v0 + 168);
                v80 = *(v0 + 176);
                v98 = v80;
                v100 = *(v0 + 192);
                v83 = *(v0 + 152);
                v82 = *(v0 + 160);
                v84 = *(v0 + 144);
                v97 = *(v0 + 272);
                if (v28 == *(v0 + 304))
                {
                  (*(v84 + 96))(v83, *(v0 + 136));
                  v85 = *v83;
                  v86 = v83[1];
                  v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  v88 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
                  DocumentRegistration.url.getter();
                  DocumentResource.init(url:)();
                  *v88 = v85;
                  v88[1] = v86;
                  v88[2] = 0;
                  v88[3] = 0;
                  v88[4] = 0;
                  v88[5] = v87;
                  swift_storeEnumTagMultiPayload();
                  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
                  v89 = swift_allocError();
                  outlined init with copy of ToolDescription(v81, v90, type metadata accessor for TokenGenerationError);
                  *(v0 + 72) = v89;
                  AsyncThrowingStream.Continuation.finish(throwing:)();
                  outlined destroy of ToolType(v81, type metadata accessor for TokenGenerationError);
                  (*(v104 + 8))(v100, v98);
                  (*(v78 + 8))(v97, v108);
                }

                else
                {
                  v96 = *(v0 + 136);
                  v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  v95 = v78;
                  v92 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
                  DocumentRegistration.url.getter();
                  DocumentResource.init(url:)();
                  *v92 = 0xD00000000000001CLL;
                  v92[1] = 0x80000001ABA42D00;
                  v92[2] = 0;
                  v92[3] = 0;
                  v92[4] = 0;
                  v92[5] = v91;
                  swift_storeEnumTagMultiPayload();
                  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
                  v93 = swift_allocError();
                  outlined init with copy of ToolDescription(v81, v94, type metadata accessor for TokenGenerationError);
                  *(v0 + 64) = v93;
                  AsyncThrowingStream.Continuation.finish(throwing:)();
                  outlined destroy of ToolType(v81, type metadata accessor for TokenGenerationError);
                  (*(v104 + 8))(v100, v98);
                  (*(v95 + 8))(v97, v108);
                  (*(v84 + 8))(v83, v96);
                }
              }

              v74 = *(v0 + 40);
              v75 = *(v0 + 48);
              __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v74);
              v76 = *(MEMORY[0x1E69E85A8] + 4);
              v77 = swift_task_alloc();
              *(v0 + 280) = v77;
              *v77 = v0;
              v77[1] = closure #3 in TokenGenerator.register(documents:);
              v18 = *(v0 + 240);
              v19 = v74;
              v20 = v75;

              return MEMORY[0x1EEE6D8C8](v18, v19, v20);
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6D8C8](v18, v19, v20);
        }
      }

      else
      {
      }

      v40 = *(v0 + 104);
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = *(v0 + 184);
        v43 = *(v0 + 168);
        v44 = v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v102 = *(v42 + 72);
        v99 = *(v42 + 16);
        do
        {
          v45 = *(v0 + 200);
          v46 = *(v0 + 176);
          v47 = *(v0 + 184);
          v49 = *(v0 + 160);
          v48 = *(v0 + 168);
          v99(v45, v44, v46);
          *v48 = 0xD00000000000002ALL;
          v43[3] = 0;
          v43[4] = 0;
          v43[1] = 0x80000001ABA42CD0;
          v43[2] = 0;
          v43[5] = MEMORY[0x1E69E7CC8];
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
          v50 = swift_allocError();
          outlined init with copy of ToolDescription(v48, v51, type metadata accessor for TokenGenerationError);
          *(v0 + 56) = v50;
          AsyncThrowingStream.Continuation.finish(throwing:)();
          outlined destroy of ToolType(v48, type metadata accessor for TokenGenerationError);
          (*(v47 + 8))(v45, v46);
          v44 += v102;
          --v41;
        }

        while (v41);
      }

      v5 = *(v0 + 272);
    }

    (*(*(v0 + 256) + 8))(v5, *(v0 + 248));
    goto LABEL_16;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR);
LABEL_16:
  v52 = *(v0 + 264);
  v53 = *(v0 + 272);
  v55 = *(v0 + 232);
  v54 = *(v0 + 240);
  v56 = *(v0 + 224);
  v58 = *(v0 + 192);
  v57 = *(v0 + 200);
  v59 = *(v0 + 168);
  v60 = *(v0 + 152);
  v106 = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v61 = *(v0 + 8);

  return v61();
}

{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[21];
  v9 = v0[19];
  v13 = v0[16];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v10 = v0[1];
  v11 = v0[36];

  return v10();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t closure #1 in closure #4 in TokenGenerator.register(documents:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11TerminationOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMd, &_sScs12ContinuationV11TerminationOy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4, v7);
  LODWORD(a1) = (*(v5 + 88))(v9, v4);
  v10 = *MEMORY[0x1E69E8760];
  result = (*(v5 + 8))(v9, v4);
  if (a1 == v10)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    return MEMORY[0x1AC5A5D70](a2, MEMORY[0x1E69E7CA8] + 8, v12, MEMORY[0x1E69E7288]);
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:schema:)@<D0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  v126 = a4;
  v114 = a3;
  v118 = a1;
  v5 = type metadata accessor for ToolChoice();
  v137 = *(v5 - 8);
  v138 = v5;
  v6 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v113 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v111 - v9;
  v124 = type metadata accessor for CompletePromptRequest(0);
  v10 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v111 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v111 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v139 = &v111 - v20;
  v21 = type metadata accessor for Prompt();
  v134 = *(v21 - 8);
  v135 = v21;
  v22 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v111 - v25;
  v123 = type metadata accessor for PromptVariant();
  v131 = *(v123 - 8);
  v26 = v131[8];
  MEMORY[0x1EEE9AC00](v123);
  v115 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v111 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v111 - v34;
  v36 = type metadata accessor for Schema();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v130 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v111 - v45;
  v47 = type metadata accessor for UUID();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v111 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a2 + 176);
  v166 = *(a2 + 160);
  v167 = v52;
  v168 = *(a2 + 192);
  v169 = *(a2 + 208);
  v53 = *(a2 + 112);
  v162 = *(a2 + 96);
  v163 = v53;
  v54 = *(a2 + 144);
  v164 = *(a2 + 128);
  v165 = v54;
  v55 = *(a2 + 48);
  v158 = *(a2 + 32);
  v159 = v55;
  v56 = *(a2 + 80);
  v160 = *(a2 + 64);
  v161 = v56;
  v57 = *(a2 + 16);
  v156 = *a2;
  v157 = v57;
  UUID.init()();
  v117 = UUID.uuidString.getter();
  v129 = v58;
  (*(v48 + 8))(v51, v47);
  v128 = 0x80000001ABA42A90;
  v127 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v114, v35, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v59 = (*(v37 + 48))(v35, 1, v36);
  v132 = v46;
  if (v59 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v60 = type metadata accessor for Constraints(0);
    (*(*(v60 - 8) + 56))(v46, 1, 1, v60);
  }

  else
  {
    (*(v37 + 32))(v40, v35, v36);
    Schema.type.getter();
    (*(v37 + 8))(v40, v36);
    v61 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v46, 0, 1, v61);
  }

  v62 = v135;
  v63 = *(v134 + 16);
  v64 = v116;
  v65 = v118;
  v63(v116, v118, v135);
  v66 = v63;
  v114 = v63;
  v67 = v136;
  PromptVariant.init(_:)();
  v68 = v139;
  (*(v137 + 56))(v139, 1, 1, v138);
  v69 = v133;
  v66(v133, v65, v62);
  v118 = v131[2];
  v70 = v119;
  v71 = v67;
  v72 = v123;
  v118(v119, v71, v123);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v132, v130, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v73 = v68;
  v74 = v122;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, v122, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v156, v154);
  v75 = v121;
  XPCDictionary.init()();
  v114(v64, v69, v62);
  v76 = v137;
  v77 = v64;
  v78 = v72;
  v79 = specialized PromptEnvelope.init(sealing:xpcData:)(v77, v75);
  v80 = v124;
  v81 = (v75 + *(v124 + 20));
  *v81 = v79;
  v81[1] = v82;
  v81[2] = v83;
  v81[3] = v84;
  v85 = v115;
  v118(v115, v70, v72);
  v86 = v74;
  v87 = v138;
  PromptVariantEnvelope.init(sealing:xpcData:)(v85, v75, v75 + v80[6]);
  v150 = v166;
  v151 = v167;
  v152 = v168;
  v153 = v169;
  v146 = v162;
  v147 = v163;
  v148 = v164;
  v149 = v165;
  v142 = v158;
  v143 = v159;
  v144 = v160;
  v145 = v161;
  v140 = v156;
  v141 = v157;
  SamplingParametersEnvelope.init(sealing:)(&v140, v154);
  v88 = v75 + v80[7];
  v89 = v154[11];
  *(v88 + 160) = v154[10];
  *(v88 + 176) = v89;
  *(v88 + 192) = v154[12];
  *(v88 + 208) = v155;
  v90 = v154[7];
  *(v88 + 96) = v154[6];
  *(v88 + 112) = v90;
  v91 = v154[9];
  *(v88 + 128) = v154[8];
  *(v88 + 144) = v91;
  v92 = v154[3];
  *(v88 + 32) = v154[2];
  *(v88 + 48) = v92;
  v93 = v154[5];
  *(v88 + 64) = v154[4];
  *(v88 + 80) = v93;
  v94 = v154[1];
  *v88 = v154[0];
  *(v88 + 16) = v94;
  *(v75 + v80[9]) = MEMORY[0x1E69E7CC0];
  v95 = v120;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v86, v120, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v76 + 48))(v95, 1, v87) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v86, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v96 = v131[1];
    v96(v70, v78);
    (*(v134 + 8))(v133, v135);
    v97 = xmmword_1ABA26F10;
  }

  else
  {
    v98 = v112;
    (*(v76 + 32))(v112, v95, v87);
    v99 = v70;
    v100 = v113;
    (*(v76 + 16))(v113, v98, v87);
    ToolChoiceEnvelope.init(sealing:)(v100, &v140);
    (*(v76 + 8))(v98, v87);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v86, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v96 = v131[1];
    v96(v99, v78);
    (*(v134 + 8))(v133, v135);
    v97 = v140;
  }

  v101 = v78;
  *(v75 + v80[10]) = v97;
  swift_bridgeObjectRelease_n();
  v102 = (v75 + v80[12]);
  v103 = v128;
  v104 = v129;
  *v102 = v117;
  v102[1] = v104;
  v102[2] = 0xD000000000000023;
  v102[3] = v103;
  v102[4] = 0;
  v102[5] = 0;
  v102[6] = v127;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v130, v75 + v80[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v105 = MEMORY[0x1E69E7CC0];
  *(v75 + v80[11]) = MEMORY[0x1E69E7CC0];
  v106 = v75;
  v107 = v125;
  outlined init with take of ToolDescription(v106, v125, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v107, v105, &v140);

  outlined destroy of ToolType(v107, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v139, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v96(v136, v101);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v132, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  result = *&v140;
  v109 = v141;
  v110 = v126;
  *v126 = v140;
  v110[1] = v109;
  return result;
}

uint64_t TokenGenerator.complete(prompt:tgPrompt:parameters:tools:toolChoice:documents:constraint:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>)
{
  v214 = a9;
  v235 = a7;
  v236 = a5;
  v213 = a6;
  v222 = a4;
  v234 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v244 = &v188 - v14;
  v243 = type metadata accessor for AnyTooling();
  v231 = *(v243 - 8);
  v15 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v242 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for Schema();
  v192 = *(v230 - 8);
  v17 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v227 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for FunctionDescription(0);
  v19 = *(*(v226 - 8) + 64);
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v229 = (&v188 - v22);
  v228 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v23 = *(*(v228 - 8) + 64);
  MEMORY[0x1EEE9AC00](v228);
  v246 = (&v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v240 = type metadata accessor for ToolType(0);
  v25 = *(*(v240 - 8) + 64);
  MEMORY[0x1EEE9AC00](v240);
  v247 = &v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v250 = (&v188 - v28);
  v29 = type metadata accessor for ToolDescription(0);
  v245 = *(v29 - 8);
  v30 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v191 = (&v188 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v249 = &v188 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v248 = (&v188 - v35);
  v36 = type metadata accessor for ToolDescriptionEnvelope(0);
  v239 = *(v36 - 8);
  v37 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v238 = &v188 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for ToolType();
  v232 = *(v252 - 8);
  v39 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v252);
  v237 = (&v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v251 = &v188 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v241 = &v188 - v44;
  v45 = type metadata accessor for ToolChoice();
  v211 = *(v45 - 8);
  v46 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v190 = &v188 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v189 = &v188 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v209 = &v188 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v219 = &v188 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v220 = &v188 - v57;
  v218 = type metadata accessor for PromptVariant();
  v58 = *(v218 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v233 = (&v188 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v61);
  v216 = &v188 - v62;
  v217 = type metadata accessor for Prompt();
  v63 = *(v217 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v205 = &v188 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v215 = &v188 - v67;
  v224 = type metadata accessor for CompletePromptRequest(0);
  v68 = *(*(v224 - 1) + 64);
  MEMORY[0x1EEE9AC00](v224);
  v223 = &v188 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v221 = &v188 - v71;
  v72 = type metadata accessor for UUID();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v188 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a3 + 176);
  v267 = *(a3 + 160);
  v268 = v77;
  v269 = *(a3 + 192);
  v270 = *(a3 + 208);
  v78 = *(a3 + 112);
  v263 = *(a3 + 96);
  v264 = v78;
  v79 = *(a3 + 144);
  v265 = *(a3 + 128);
  v266 = v79;
  v80 = *(a3 + 48);
  v259 = *(a3 + 32);
  v260 = v80;
  v81 = *(a3 + 80);
  v261 = *(a3 + 64);
  v262 = v81;
  v82 = *(a3 + 16);
  v257 = *a3;
  v258 = v82;
  v83 = *a8;
  v84 = a8[1];
  v85 = a8[2];
  v86 = a8[3];
  v87 = a8[4];
  v88 = a8[5];
  v89 = a8[6];
  v212 = v45;
  v198 = v87;
  v199 = v88;
  v196 = v86;
  v197 = v85;
  v194 = v89;
  v195 = v83;
  if (v84)
  {
    v206 = v84;
    v207 = v83;
    v200 = v85;
    v201 = v88;
    v203 = v89;
    v204 = v86;
    v202 = v87;
  }

  else
  {
    UUID.init()();
    v90 = UUID.uuidString.getter();
    v206 = v91;
    v207 = v90;
    (*(v73 + 8))(v76, v72);
    v204 = 0x80000001ABA42970;
    v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v202 = 0;
    v203 = v92;
    v200 = 0xD000000000000054;
    v201 = 0;
  }

  v208 = v63;
  v93 = *(v63 + 16);
  v94 = v215;
  v95 = v217;
  v93(v215, a2, v217);
  v210 = v58;
  v193 = *(v58 + 16);
  v96 = v216;
  v97 = v218;
  v193(v216, v234, v218);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v235, v220, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v236, v219, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined copy of RequestMetadata?(v195, v84);
  outlined init with copy of SamplingParameters(&v257, v255);
  v98 = v223;
  XPCDictionary.init()();
  v99 = v205;
  v93(v205, v94, v95);
  v100 = specialized PromptEnvelope.init(sealing:xpcData:)(v99, v98);
  v101 = v224;
  v102 = (v98 + v224[5]);
  *v102 = v100;
  v102[1] = v103;
  v102[2] = v104;
  v102[3] = v105;
  v106 = v233;
  v193(v233, v96, v97);
  PromptVariantEnvelope.init(sealing:xpcData:)(v106, v98, v98 + v101[6]);
  v253[10] = v267;
  v253[11] = v268;
  v253[12] = v269;
  v254 = v270;
  v253[6] = v263;
  v253[7] = v264;
  v253[8] = v265;
  v253[9] = v266;
  v253[2] = v259;
  v253[3] = v260;
  v253[4] = v261;
  v253[5] = v262;
  v253[0] = v257;
  v253[1] = v258;
  SamplingParametersEnvelope.init(sealing:)(v253, v255);
  v107 = v98 + v101[7];
  v108 = v255[11];
  *(v107 + 160) = v255[10];
  *(v107 + 176) = v108;
  *(v107 + 192) = v255[12];
  *(v107 + 208) = v256;
  v109 = v255[7];
  *(v107 + 96) = v255[6];
  *(v107 + 112) = v109;
  v110 = v255[9];
  *(v107 + 128) = v255[8];
  *(v107 + 144) = v110;
  v111 = v255[3];
  *(v107 + 32) = v255[2];
  *(v107 + 48) = v111;
  v112 = v255[5];
  *(v107 + 64) = v255[4];
  *(v107 + 80) = v112;
  v113 = v255[1];
  *v107 = v255[0];
  *(v107 + 16) = v113;
  v114 = v222;
  v115 = *(v222 + 16);
  v116 = MEMORY[0x1E69E7CC0];
  v205 = v115;
  if (v115)
  {
    *&v253[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115, 0);
    v117 = *&v253[0];
    v118 = *(v232 + 16);
    v235 = v232 + 16;
    v236 = v118;
    v119 = (v114 + ((*(v232 + 80) + 32) & ~*(v232 + 80)));
    v120 = *(v232 + 72);
    v233 = (v232 + 8);
    v234 = v120;
    v121 = v191;
    do
    {
      v122 = v251;
      v123 = v252;
      v124 = v236;
      v236(v251, v119, v252);
      v125 = v237;
      v124(v237, v122, v123);
      ToolDescription.init(toolType:)(v125, v121);
      (*v233)(v122, v123);
      *&v253[0] = v117;
      v127 = *(v117 + 16);
      v126 = *(v117 + 24);
      if (v127 >= v126 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v126 > 1, v127 + 1, 1);
        v117 = *&v253[0];
      }

      *(v117 + 16) = v127 + 1;
      outlined init with take of ToolDescription(v121, v117 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v127, type metadata accessor for ToolDescription);
      v119 += v234;
      --v115;
    }

    while (v115);
    v116 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v117 = MEMORY[0x1E69E7CC0];
  }

  v128 = *(v117 + 16);
  v129 = v246;
  if (v128)
  {
    *&v253[0] = v116;
    v130 = v117;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128, 0);
    v131 = *&v253[0];
    v132 = v130 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
    v245 = *(v245 + 72);
    v237 = (v192 + 16);
    v235 = v130;
    v236 = (v192 + 8);
    do
    {
      v133 = v248;
      outlined init with copy of ToolDescription(v132, v248, type metadata accessor for ToolDescription);
      v134 = v133;
      v135 = v249;
      outlined init with copy of ToolDescription(v134, v249, type metadata accessor for ToolDescription);
      v136 = v135;
      v137 = v250;
      outlined init with copy of ToolDescription(v136, v250, type metadata accessor for ToolType);
      outlined init with copy of ToolDescription(v137, v247, type metadata accessor for ToolType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of ToolType(v250, type metadata accessor for ToolType);
          v141 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of ToolType(v250, type metadata accessor for ToolType);
          v141 = type metadata accessor for ImageGenerationParameters();
        }

        (*(*(v141 - 8) + 32))(v129, v247, v141);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v142 = v229;
          outlined init with take of ToolDescription(v247, v229, type metadata accessor for FunctionDescription);
          v143 = v225;
          outlined init with copy of ToolDescription(v142, v225, type metadata accessor for FunctionDescription);
          v144 = *(v143 + 1);
          *v246 = *v143;
          v246[1] = v144;
          v145 = *(v143 + 3);
          v246[2] = *(v143 + 2);
          v246[3] = v145;
          v146 = v227;
          (*v237)(v227, &v143[*(v226 + 24)], v230);
          v147 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);
          v129 = v246;

          Schema.type.getter();
          outlined destroy of ToolType(v250, type metadata accessor for ToolType);
          (*v236)(v146, v230);
          outlined destroy of ToolType(v143, type metadata accessor for FunctionDescription);
          v140 = v229;
          v139 = type metadata accessor for FunctionDescription;
        }

        else
        {
          v139 = type metadata accessor for ToolType;
          v140 = v250;
        }

        outlined destroy of ToolType(v140, v139);
      }

      v148 = v238;
      swift_storeEnumTagMultiPayload();
      outlined init with take of ToolDescription(v129, v148, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      outlined destroy of ToolType(v249, type metadata accessor for ToolDescription);
      outlined destroy of ToolType(v248, type metadata accessor for ToolDescription);
      *&v253[0] = v131;
      v150 = *(v131 + 16);
      v149 = *(v131 + 24);
      if (v150 >= v149 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v149 > 1, v150 + 1, 1);
        v131 = *&v253[0];
      }

      *(v131 + 16) = v150 + 1;
      outlined init with take of ToolDescription(v148, v131 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v150, type metadata accessor for ToolDescriptionEnvelope);
      v132 += v245;
      --v128;
    }

    while (v128);
  }

  else
  {

    v131 = MEMORY[0x1E69E7CC0];
  }

  *&v223[v224[9]] = v131;
  v151 = v219;
  v152 = v209;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v219, v209, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v154 = v211;
  v153 = v212;
  v155 = (*(v211 + 48))(v152, 1, v212);
  v156 = v213;
  v157 = v222;
  v158 = v232;
  if (v155 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v151, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (*(v210 + 8))(v216, v218);
    (*(v208 + 8))(v215, v217);
    v159 = xmmword_1ABA26F10;
  }

  else
  {
    v160 = v189;
    (*(v154 + 32))(v189, v152, v153);
    v161 = v190;
    (*(v154 + 16))(v190, v160, v153);
    ToolChoiceEnvelope.init(sealing:)(v161, v253);
    (*(v154 + 8))(v160, v153);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v151, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    (*(v210 + 8))(v216, v218);
    (*(v208 + 8))(v215, v217);
    v159 = v253[0];
  }

  v163 = v206;
  v162 = v207;
  v165 = v203;
  v164 = v204;
  v167 = v201;
  v166 = v202;
  v168 = v200;
  v170 = v223;
  v169 = v224;
  *&v223[v224[10]] = v159;
  v171 = (v170 + v169[12]);
  *v171 = v162;
  v171[1] = v163;
  v171[2] = v168;
  v171[3] = v164;
  v171[4] = v166;
  v171[5] = v167;
  v171[6] = v165;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v220, v170 + v169[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v170 + v169[11]) = v156;
  outlined init with take of ToolDescription(v170, v221, type metadata accessor for CompletePromptRequest);
  v172 = v205;
  if (v205)
  {
    v174 = *(v158 + 16);
    v173 = v158 + 16;
    v175 = v157 + ((*(v173 + 64) + 32) & ~*(v173 + 64));
    v249 = *(v173 + 56);
    v250 = v174;
    v248 = (v173 - 8);
    v176 = (v231 + 48);

    v177 = MEMORY[0x1E69E7CC0];
    v232 = v173;
    v178 = v241;
    do
    {
      v179 = v252;
      v180 = v250;
      (v250)(v178, v175, v252);
      v181 = v251;
      v180(v251, v178, v179);
      v182 = v181;
      v183 = v244;
      AnyTooling.init(_:)(v182, v244);
      (*v248)(v178, v179);
      if ((*v176)(v183, 1, v243) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v183, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of ToolDescription(v183, v242, type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v177[2] + 1, 1, v177, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v185 = v177[2];
        v184 = v177[3];
        if (v185 >= v184 >> 1)
        {
          v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v184 > 1, v185 + 1, 1, v177, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v177[2] = v185 + 1;
        outlined init with take of ToolDescription(v242, v177 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v185, type metadata accessor for AnyTooling);
      }

      v175 += v249;
      --v172;
    }

    while (v172);
  }

  else
  {

    v177 = MEMORY[0x1E69E7CC0];
  }

  v186 = v221;
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v221, v177, v214);

  return outlined destroy of ToolType(v186, type metadata accessor for CompletePromptRequest);
}

uint64_t TokenGenerator.complete(prompt:parameters:tools:toolChoice:schema:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, char *, uint64_t)@<X3>, void (**a5)(char *, uint64_t)@<X4>, void *a6@<X8>)
{
  v240 = a1;
  v201 = a3;
  v226 = a4;
  v227 = a5;
  v200 = a6;
  v218 = type metadata accessor for FunctionDescription(0);
  v7 = *(*(v218 - 8) + 64);
  MEMORY[0x1EEE9AC00](v218);
  v217 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v221 = &v186 - v10;
  v219 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v11 = *(*(v219 - 8) + 64);
  MEMORY[0x1EEE9AC00](v219);
  v237 = (&v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = type metadata accessor for ToolType(0);
  v13 = *(*(v230 - 8) + 64);
  MEMORY[0x1EEE9AC00](v230);
  v238 = (&v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v243 = (&v186 - v16);
  v17 = type metadata accessor for ToolDescription(0);
  v235 = *(v17 - 8);
  v18 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v193 = (&v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v242 = (&v186 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v241 = (&v186 - v23);
  v24 = type metadata accessor for ToolDescriptionEnvelope(0);
  v229 = *(v24 - 8);
  v25 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v234 = &v186 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v223 = &v186 - v29;
  v233 = type metadata accessor for AnyTooling();
  v222 = *(v233 - 8);
  v30 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v232 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for ToolType();
  v236 = *(v263 - 8);
  v32 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v263);
  v228 = (&v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v244 = &v186 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v231 = &v186 - v37;
  v38 = type metadata accessor for ToolChoice();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v192 = &v186 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v191 = &v186 - v43;
  v209 = type metadata accessor for PromptVariant();
  v205 = *(v209 - 8);
  v44 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v225 = &v186 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v208 = &v186 - v47;
  v211 = type metadata accessor for CompletePromptRequest(0);
  v48 = *(*(v211 - 1) + 64);
  MEMORY[0x1EEE9AC00](v211);
  v210 = &v186 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v206 = &v186 - v51;
  v52 = type metadata accessor for UUID();
  v195 = *(v52 - 8);
  v196 = v52;
  v53 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v194 = &v186 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Prompt();
  v212 = *(v55 - 8);
  v213 = v55;
  v56 = v212[8];
  MEMORY[0x1EEE9AC00](v55);
  v224 = (&v186 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58);
  v204 = &v186 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v216 = &v186 - v61;
  v62 = type metadata accessor for Schema();
  v214 = *(v62 - 8);
  v63 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v186 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v69 = &v186 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v203 = &v186 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v186 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v197 = &v186 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v202 = &v186 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v186 - v82;
  v84 = *(a2 + 176);
  v259 = *(a2 + 160);
  v260 = v84;
  v261 = *(a2 + 192);
  v262 = *(a2 + 208);
  v85 = *(a2 + 112);
  v255 = *(a2 + 96);
  v256 = v85;
  v86 = *(a2 + 144);
  v257 = *(a2 + 128);
  v258 = v86;
  v87 = *(a2 + 48);
  v251 = *(a2 + 32);
  v252 = v87;
  v88 = *(a2 + 80);
  v253 = *(a2 + 64);
  v254 = v88;
  v89 = *(a2 + 16);
  v249 = *a2;
  v250 = v89;
  v189 = *(v39 + 16);
  v190 = v39 + 16;
  v189(&v186 - v82, v226, v38);
  v198 = v39;
  v199 = v38;
  v90 = v39;
  v91 = v214;
  v92 = *(v90 + 56);
  v215 = v83;
  v93 = v38;
  v94 = v62;
  v92(v83, 0, 1, v93);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v227, v69, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  if ((*(v91 + 48))(v69, 1, v62) == 1)
  {
    v95 = type metadata accessor for Constraints(0);
    (*(*(v95 - 8) + 56))(v75, 1, 1, v95);
  }

  else
  {
    (*(v91 + 32))(v65, v69, v62);
    Schema.type.getter();
    (*(v91 + 8))(v65, v62);
    v96 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v96 - 8) + 56))(v75, 0, 1, v96);
  }

  v97 = v216;
  v98 = v239;
  v99 = v240;
  PromptVariant.tgPrompt.getter();
  if (v98)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v75, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v215, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v207 = v65;
    v220 = v94;
    v188 = 0;
    v101 = v194;
    UUID.init()();
    v102 = UUID.uuidString.getter();
    v186 = v103;
    v187 = v102;
    (*(v195 + 8))(v101, v196);
    v194 = "n Not Provided for ";
    v195 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v104 = v212[2];
    v105 = v204;
    v106 = v97;
    v107 = v213;
    v104(v204, v106, v213);
    v108 = *(v205 + 16);
    v108(v208, v99, v209);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v75, v203, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v215, v202, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined init with copy of SamplingParameters(&v249, v247);
    v109 = v210;
    XPCDictionary.init()();
    v196 = v75;
    v110 = v224;
    v104(v224, v105, v107);
    v111 = specialized PromptEnvelope.init(sealing:xpcData:)(v110, v109);
    v112 = v211;
    v113 = (v109 + v211[5]);
    *v113 = v111;
    v113[1] = v114;
    v113[2] = v115;
    v113[3] = v116;
    v117 = v225;
    v108(v225, v208, v209);
    PromptVariantEnvelope.init(sealing:xpcData:)(v117, v109, v109 + v112[6]);
    v245[10] = v259;
    v245[11] = v260;
    v245[12] = v261;
    v246 = v262;
    v245[6] = v255;
    v245[7] = v256;
    v245[8] = v257;
    v245[9] = v258;
    v245[2] = v251;
    v245[3] = v252;
    v245[4] = v253;
    v245[5] = v254;
    v245[0] = v249;
    v245[1] = v250;
    SamplingParametersEnvelope.init(sealing:)(v245, v247);
    v118 = v109 + v112[7];
    v119 = v247[11];
    *(v118 + 160) = v247[10];
    *(v118 + 176) = v119;
    *(v118 + 192) = v247[12];
    *(v118 + 208) = v248;
    v120 = v247[7];
    *(v118 + 96) = v247[6];
    *(v118 + 112) = v120;
    v121 = v247[9];
    *(v118 + 128) = v247[8];
    *(v118 + 144) = v121;
    v122 = v247[3];
    *(v118 + 32) = v247[2];
    *(v118 + 48) = v122;
    v123 = v247[5];
    *(v118 + 64) = v247[4];
    *(v118 + 80) = v123;
    v124 = v247[1];
    *v118 = v247[0];
    *(v118 + 16) = v124;
    v125 = v201;
    v126 = *(v201 + 16);
    v240 = v126;
    v127 = MEMORY[0x1E69E7CC0];
    if (v126)
    {
      *&v245[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126, 0);
      v128 = *&v245[0];
      v129 = *(v236 + 16);
      v130 = (v125 + ((*(v236 + 80) + 32) & ~*(v236 + 80)));
      v225 = *(v236 + 72);
      v226 = v129;
      v227 = (v236 + 16);
      v224 = (v236 + 8);
      v131 = v193;
      do
      {
        v239 = v128;
        v132 = v244;
        v133 = v263;
        v134 = v226;
        v226(v244, v130, v263);
        v135 = v228;
        v134(v228, v132, v133);
        ToolDescription.init(toolType:)(v135, v131);
        v128 = v239;
        (*v224)(v132, v133);
        *&v245[0] = v128;
        v137 = *(v128 + 16);
        v136 = *(v128 + 24);
        if (v137 >= v136 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v136 > 1, v137 + 1, 1);
          v128 = *&v245[0];
        }

        *(v128 + 16) = v137 + 1;
        outlined init with take of ToolDescription(v131, v128 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v137, type metadata accessor for ToolDescription);
        v130 += v225;
        --v126;
      }

      while (v126);
      v127 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v128 = MEMORY[0x1E69E7CC0];
    }

    v138 = v194 | 0x8000000000000000;
    v139 = *(v128 + 16);
    v140 = v237;
    if (v139)
    {
      v226 = (v194 | 0x8000000000000000);
      *&v245[0] = v127;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139, 0);
      v141 = *&v245[0];
      v142 = (*(v235 + 80) + 32) & ~*(v235 + 80);
      v239 = v128;
      v143 = v128 + v142;
      v235 = *(v235 + 72);
      v227 = (v214 + 8);
      v228 = (v214 + 16);
      do
      {
        v144 = v241;
        outlined init with copy of ToolDescription(v143, v241, type metadata accessor for ToolDescription);
        v145 = v144;
        v146 = v242;
        outlined init with copy of ToolDescription(v145, v242, type metadata accessor for ToolDescription);
        v147 = v146;
        v148 = v243;
        outlined init with copy of ToolDescription(v147, v243, type metadata accessor for ToolType);
        outlined init with copy of ToolDescription(v148, v238, type metadata accessor for ToolType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            outlined destroy of ToolType(v243, type metadata accessor for ToolType);
            outlined destroy of ToolType(v242, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v241, type metadata accessor for ToolDescription);
            v150 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of ToolType(v243, type metadata accessor for ToolType);
            outlined destroy of ToolType(v242, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v241, type metadata accessor for ToolDescription);
            v150 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v150 - 8) + 32))(v140, v238, v150);
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            v151 = v221;
            outlined init with take of ToolDescription(v238, v221, type metadata accessor for FunctionDescription);
            v152 = v217;
            outlined init with copy of ToolDescription(v151, v217, type metadata accessor for FunctionDescription);
            v153 = *(v152 + 1);
            *v237 = *v152;
            v237[1] = v153;
            v154 = *(v152 + 3);
            v237[2] = *(v152 + 2);
            v237[3] = v154;
            v155 = v207;
            (*v228)(v207, &v152[*(v218 + 24)], v220);
            v156 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

            Schema.type.getter();
            (*v227)(v155, v220);
            outlined destroy of ToolType(v152, type metadata accessor for FunctionDescription);
            v140 = v237;
            outlined destroy of ToolType(v221, type metadata accessor for FunctionDescription);
          }

          outlined destroy of ToolType(v243, type metadata accessor for ToolType);
          outlined destroy of ToolType(v242, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v241, type metadata accessor for ToolDescription);
        }

        swift_storeEnumTagMultiPayload();
        v157 = v234;
        outlined init with take of ToolDescription(v140, v234, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        *&v245[0] = v141;
        v159 = *(v141 + 16);
        v158 = *(v141 + 24);
        if (v159 >= v158 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v158 > 1, v159 + 1, 1);
          v157 = v234;
          v141 = *&v245[0];
        }

        *(v141 + 16) = v159 + 1;
        outlined init with take of ToolDescription(v157, v141 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v159, type metadata accessor for ToolDescriptionEnvelope);
        v143 += v235;
        --v139;
      }

      while (v139);

      v138 = v226;
    }

    else
    {

      v141 = MEMORY[0x1E69E7CC0];
    }

    *&v210[v211[9]] = v141;
    v160 = v202;
    v161 = v197;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v202, v197, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v163 = v198;
    v162 = v199;
    v164 = (*(v198 + 48))(v161, 1, v199);
    v165 = v223;
    v166 = v240;
    if (v164 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v160, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v205 + 8))(v208, v209);
      v238 = v212[1];
      (v238)(v204, v213);
      v167 = xmmword_1ABA26F10;
    }

    else
    {
      v168 = v191;
      (*(v163 + 32))(v191, v161, v162);
      v169 = v192;
      v189(v192, v168, v162);
      ToolChoiceEnvelope.init(sealing:)(v169, v245);
      (*(v163 + 8))(v168, v162);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v160, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v205 + 8))(v208, v209);
      v238 = v212[1];
      (v238)(v204, v213);
      v167 = v245[0];
    }

    v170 = MEMORY[0x1E69E7CC0];
    v171 = v187;
    v173 = v210;
    v172 = v211;
    *&v210[v211[10]] = v167;
    swift_bridgeObjectRelease_n();
    v174 = (v173 + v172[12]);
    v175 = v186;
    *v174 = v171;
    v174[1] = v175;
    v174[2] = 0xD000000000000054;
    v174[3] = v138;
    v174[4] = 0;
    v174[5] = 0;
    v174[6] = v195;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v203, v173 + v172[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v173 + v172[11]) = v170;
    outlined init with take of ToolDescription(v173, v206, type metadata accessor for CompletePromptRequest);
    if (v166)
    {
      v176 = *(v236 + 16);
      v177 = v201 + ((*(v236 + 80) + 32) & ~*(v236 + 80));
      v242 = (v236 + 8);
      v243 = v176;
      v241 = (v222 + 48);
      v236 += 16;
      v239 = *(v236 + 56);
      do
      {
        v240 = v166;
        v178 = v170;
        v179 = v231;
        v180 = v263;
        v181 = v243;
        (v243)(v231, v177, v263);
        v182 = v244;
        v181(v244, v179, v180);
        AnyTooling.init(_:)(v182, v165);
        (*v242)(v179, v180);
        if ((*v241)(v165, 1, v233) == 1)
        {
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v165, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
          v170 = v178;
        }

        else
        {
          outlined init with take of ToolDescription(v165, v232, type metadata accessor for AnyTooling);
          v170 = v178;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v178[2] + 1, 1, v178, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v184 = v170[2];
          v183 = v170[3];
          if (v184 >= v183 >> 1)
          {
            v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v183 > 1, v184 + 1, 1, v170, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
          }

          v170[2] = v184 + 1;
          outlined init with take of ToolDescription(v232, v170 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v184, type metadata accessor for AnyTooling);
          v165 = v223;
        }

        v177 += v239;
        v166 = v240 - 1;
      }

      while (v240 != 1);
    }

    v185 = v206;
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v206, v170, v200);

    outlined destroy of ToolType(v185, type metadata accessor for CompletePromptRequest);
    (v238)(v216, v213);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v196, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v215, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }
}

uint64_t TokenGenerator.complete(prompt:parameters:tools:toolChoice:schema:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (**a5)(char *, uint64_t)@<X4>, void *a6@<X8>)
{
  v209 = a6;
  v235 = a4;
  v236 = a5;
  v221 = a3;
  v237 = a1;
  v228 = type metadata accessor for FunctionDescription(0);
  v7 = *(*(v228 - 8) + 64);
  MEMORY[0x1EEE9AC00](v228);
  v227 = v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v231 = v194 - v10;
  v230 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v11 = *(*(v230 - 8) + 64);
  MEMORY[0x1EEE9AC00](v230);
  v247 = v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for ToolType(0);
  v13 = *(*(v240 - 8) + 64);
  MEMORY[0x1EEE9AC00](v240);
  v248 = v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v251 = (v194 - v16);
  v17 = type metadata accessor for ToolDescription(0);
  v245 = *(v17 - 8);
  v18 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v198 = (v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v250 = (v194 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v249 = (v194 - v23);
  v24 = type metadata accessor for ToolDescriptionEnvelope(0);
  v239 = *(v24 - 8);
  v25 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v244 = v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v233 = v194 - v29;
  v243 = type metadata accessor for AnyTooling();
  v232 = *(v243 - 8);
  v30 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v242 = v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for ToolType();
  v246 = *(v253 - 8);
  v32 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v238 = v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v252 = v194 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v241 = v194 - v37;
  v38 = type metadata accessor for ToolChoice();
  v215 = *(v38 - 8);
  v216 = v38;
  v39 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v196 = v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v195 = v194 - v42;
  v223 = type metadata accessor for CompletePromptRequest(0);
  v43 = *(*(v223 - 1) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v222 = v194 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v220 = v194 - v46;
  v234 = type metadata accessor for UUID();
  v206 = *(v234 - 1);
  v47 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v203 = v194 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Schema();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v229 = v194 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v56 = v194 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v214 = v194 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v219 = v194 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v207 = v194 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v212 = v194 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v69 = v194 - v68;
  v70 = type metadata accessor for Prompt();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v211 = v194 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = v194 - v75;
  v77 = type metadata accessor for PromptVariant();
  v224 = *(v77 - 8);
  v225 = v77;
  v78 = v224[8];
  MEMORY[0x1EEE9AC00](v77);
  v200 = v194 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v210 = v194 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v84 = v194 - v83;
  v85 = *(a2 + 176);
  v268 = *(a2 + 160);
  v269 = v85;
  v270 = *(a2 + 192);
  v271 = *(a2 + 208);
  v86 = *(a2 + 96);
  v265 = *(a2 + 112);
  v87 = *(a2 + 144);
  v266 = *(a2 + 128);
  v267 = v87;
  v88 = *(a2 + 48);
  v260 = *(a2 + 32);
  v261 = v88;
  v89 = *(a2 + 80);
  v262 = *(a2 + 64);
  v263 = v89;
  v264 = v86;
  v90 = *(a2 + 16);
  v258 = *a2;
  v259 = v90;
  v208 = v71;
  v91 = *(v71 + 16);
  v213 = v70;
  v92 = v70;
  v93 = v50;
  v199 = v91;
  v91(v76, v237, v92);
  v217 = v84;
  v94 = v49;
  v201 = v76;
  PromptVariant.init(_:)();
  v95 = v215;
  v96 = v216;
  v98 = v215 + 16;
  v97 = *(v215 + 16);
  v97(v69, v235, v216);
  v99 = *(v95 + 56);
  v218 = v69;
  v100 = v229;
  v99(v69, 0, 1, v96);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v236, v56, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v101 = (*(v93 + 48))(v56, 1, v94);
  v226 = v94;
  v194[0] = v97;
  v194[1] = v98;
  v197 = v93;
  if (v101 == 1)
  {
    v102 = type metadata accessor for Constraints(0);
    v103 = v219;
    (*(*(v102 - 8) + 56))(v219, 1, 1, v102);
  }

  else
  {
    (*(v93 + 32))(v100, v56, v94);
    v103 = v219;
    Schema.type.getter();
    (*(v93 + 8))(v100, v94);
    v104 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v104 - 8) + 56))(v103, 0, 1, v104);
  }

  v105 = v203;
  UUID.init()();
  v106 = UUID.uuidString.getter();
  v204 = v107;
  v205 = v106;
  (*(v206 + 8))(v105, v234);
  v202 = "n Not Provided for ";
  v203 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v108 = v211;
  v109 = v213;
  v110 = v199;
  v199(v211, v237, v213);
  v111 = v225;
  v237 = v224[2];
  v112 = v210;
  v237(v210, v217, v225);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v103, v214, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v218, v212, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined init with copy of SamplingParameters(&v258, v256);
  v113 = v222;
  XPCDictionary.init()();
  v114 = v201;
  v110(v201, v108, v109);
  v115 = specialized PromptEnvelope.init(sealing:xpcData:)(v114, v113);
  v116 = v223;
  v117 = (v113 + v223[5]);
  *v117 = v115;
  v117[1] = v118;
  v117[2] = v119;
  v117[3] = v120;
  v121 = v200;
  v237(v200, v112, v111);
  PromptVariantEnvelope.init(sealing:xpcData:)(v121, v113, v113 + v116[6]);
  v254[10] = v268;
  v254[11] = v269;
  v254[12] = v270;
  v255 = v271;
  v254[6] = v264;
  v254[7] = v265;
  v254[8] = v266;
  v254[9] = v267;
  v254[2] = v260;
  v254[3] = v261;
  v254[4] = v262;
  v254[5] = v263;
  v254[0] = v258;
  v254[1] = v259;
  SamplingParametersEnvelope.init(sealing:)(v254, v256);
  v122 = v113 + v116[7];
  v123 = v256[11];
  *(v122 + 160) = v256[10];
  *(v122 + 176) = v123;
  *(v122 + 192) = v256[12];
  *(v122 + 208) = v257;
  v124 = v256[7];
  *(v122 + 96) = v256[6];
  *(v122 + 112) = v124;
  v125 = v256[9];
  *(v122 + 128) = v256[8];
  *(v122 + 144) = v125;
  v126 = v256[3];
  *(v122 + 32) = v256[2];
  *(v122 + 48) = v126;
  v127 = v256[5];
  *(v122 + 64) = v256[4];
  *(v122 + 80) = v127;
  v128 = v256[1];
  *v122 = v256[0];
  *(v122 + 16) = v128;
  v129 = v221;
  v130 = *(v221 + 16);
  v206 = v130;
  if (v130)
  {
    *&v254[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v130, 0);
    v131 = *&v254[0];
    v132 = *(v246 + 16);
    v236 = (v246 + 16);
    v237 = v132;
    v133 = (v129 + ((*(v246 + 80) + 32) & ~*(v246 + 80)));
    v134 = *(v246 + 72);
    v234 = (v246 + 8);
    v235 = v134;
    v135 = v198;
    do
    {
      v137 = v252;
      v136 = v253;
      v138 = v237;
      v237(v252, v133, v253);
      v139 = v238;
      v138(v238, v137, v136);
      ToolDescription.init(toolType:)(v139, v135);
      (*v234)(v137, v136);
      *&v254[0] = v131;
      v141 = *(v131 + 16);
      v140 = *(v131 + 24);
      if (v141 >= v140 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v140 > 1, v141 + 1, 1);
        v131 = *&v254[0];
      }

      *(v131 + 16) = v141 + 1;
      outlined init with take of ToolDescription(v135, v131 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v141, type metadata accessor for ToolDescription);
      v133 += v235;
      --v130;
    }

    while (v130);
  }

  else
  {
    v131 = MEMORY[0x1E69E7CC0];
  }

  v235 = v202 | 0x8000000000000000;
  v142 = *(v131 + 16);
  v143 = v247;
  if (v142)
  {
    *&v254[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142, 0);
    v144 = *&v254[0];
    v145 = (*(v245 + 80) + 32) & ~*(v245 + 80);
    v234 = v131;
    v146 = v131 + v145;
    v147 = *(v245 + 72);
    v236 = (v197 + 8);
    v237 = (v197 + 16);
    v238 = v147;
    do
    {
      v148 = v249;
      outlined init with copy of ToolDescription(v146, v249, type metadata accessor for ToolDescription);
      v149 = v148;
      v150 = v250;
      outlined init with copy of ToolDescription(v149, v250, type metadata accessor for ToolDescription);
      v151 = v150;
      v152 = v251;
      outlined init with copy of ToolDescription(v151, v251, type metadata accessor for ToolType);
      outlined init with copy of ToolDescription(v152, v248, type metadata accessor for ToolType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of ToolType(v251, type metadata accessor for ToolType);
          outlined destroy of ToolType(v250, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v249, type metadata accessor for ToolDescription);
          v154 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of ToolType(v251, type metadata accessor for ToolType);
          outlined destroy of ToolType(v250, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v249, type metadata accessor for ToolDescription);
          v154 = type metadata accessor for ImageGenerationParameters();
        }

        (*(*(v154 - 8) + 32))(v143, v248, v154);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v155 = v231;
          outlined init with take of ToolDescription(v248, v231, type metadata accessor for FunctionDescription);
          v156 = v227;
          outlined init with copy of ToolDescription(v155, v227, type metadata accessor for FunctionDescription);
          v157 = *(v156 + 1);
          *v247 = *v156;
          *(v247 + 1) = v157;
          v158 = *(v156 + 3);
          *(v247 + 2) = *(v156 + 2);
          *(v247 + 3) = v158;
          v159 = v229;
          v160 = v226;
          (*v237)(v229, &v156[*(v228 + 24)], v226);
          v245 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

          Schema.type.getter();
          v161 = v160;
          v147 = v238;
          (*v236)(v159, v161);
          v162 = v156;
          v143 = v247;
          outlined destroy of ToolType(v162, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v231, type metadata accessor for FunctionDescription);
        }

        outlined destroy of ToolType(v251, type metadata accessor for ToolType);
        outlined destroy of ToolType(v250, type metadata accessor for ToolDescription);
        outlined destroy of ToolType(v249, type metadata accessor for ToolDescription);
      }

      swift_storeEnumTagMultiPayload();
      v163 = v244;
      outlined init with take of ToolDescription(v143, v244, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      *&v254[0] = v144;
      v165 = *(v144 + 16);
      v164 = *(v144 + 24);
      if (v165 >= v164 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v164 > 1, v165 + 1, 1);
        v163 = v244;
        v144 = *&v254[0];
      }

      *(v144 + 16) = v165 + 1;
      outlined init with take of ToolDescription(v163, v144 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v165, type metadata accessor for ToolDescriptionEnvelope);
      v146 += v147;
      --v142;
    }

    while (v142);
  }

  else
  {

    v144 = MEMORY[0x1E69E7CC0];
  }

  *&v222[v223[9]] = v144;
  v166 = v212;
  v167 = v207;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v212, v207, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v169 = v215;
  v168 = v216;
  v170 = (*(v215 + 48))(v167, 1, v216);
  v171 = v233;
  v172 = v221;
  v173 = MEMORY[0x1E69E7CC0];
  if (v170 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v166, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v247 = v224[1];
    (v247)(v210, v225);
    (*(v208 + 8))(v211, v213);
    v174 = xmmword_1ABA26F10;
  }

  else
  {
    v175 = v195;
    (*(v169 + 32))(v195, v167, v168);
    v176 = v196;
    (v194[0])(v196, v175, v168);
    ToolChoiceEnvelope.init(sealing:)(v176, v254);
    (*(v169 + 8))(v175, v168);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v166, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v247 = v224[1];
    (v247)(v210, v225);
    (*(v208 + 8))(v211, v213);
    v174 = v254[0];
  }

  v178 = v204;
  v177 = v205;
  v180 = v222;
  v179 = v223;
  *&v222[v223[10]] = v174;
  swift_bridgeObjectRelease_n();
  v181 = (v180 + v179[12]);
  *v181 = v177;
  v181[1] = v178;
  v181[2] = 0xD000000000000054;
  v181[3] = v235;
  v181[4] = 0;
  v182 = v203;
  v181[5] = 0;
  v181[6] = v182;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v214, v180 + v179[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v180 + v179[11]) = v173;
  outlined init with take of ToolDescription(v180, v220, type metadata accessor for CompletePromptRequest);
  v183 = v206;
  if (v206)
  {
    v184 = *(v246 + 16);
    v185 = v172 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
    v250 = (v246 + 8);
    v251 = v184;
    v246 += 16;
    v248 = *(v246 + 56);
    v249 = (v232 + 48);
    do
    {
      v186 = v241;
      v187 = v253;
      v188 = v251;
      (v251)(v241, v185, v253);
      v189 = v252;
      v188(v252, v186, v187);
      AnyTooling.init(_:)(v189, v171);
      (*v250)(v186, v187);
      if ((*v249)(v171, 1, v243) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v171, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of ToolDescription(v171, v242, type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v173[2] + 1, 1, v173, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v191 = v173[2];
        v190 = v173[3];
        if (v191 >= v190 >> 1)
        {
          v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v190 > 1, v191 + 1, 1, v173, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
        }

        v173[2] = v191 + 1;
        outlined init with take of ToolDescription(v242, v173 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v191, type metadata accessor for AnyTooling);
        v171 = v233;
      }

      v185 += v248;
      --v183;
    }

    while (v183);
  }

  v192 = v220;
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v220, v173, v209);

  outlined destroy of ToolType(v192, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v219, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v218, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  return (v247)(v217, v225);
}

uint64_t AnyTooling.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for ToolType.Function();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolType.Type();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v49 - v14);
  v51 = type metadata accessor for AnyTooling();
  v16 = *(v51 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  ToolType.type.getter();
  v20 = (*(v9 + 88))(v15, v8);
  if (v20 == *MEMORY[0x1E69A0E58])
  {
    v21 = type metadata accessor for ToolType();
    (*(*(v21 - 8) + 8))(a1, v21);
LABEL_5:
    (*(v9 + 8))(v15, v8);
LABEL_6:
    v23 = 1;
    v25 = v51;
    v24 = v52;
    return (*(v16 + 56))(v24, v23, 1, v25);
  }

  v50 = a1;
  if (v20 == *MEMORY[0x1E69A0E50])
  {
    v22 = type metadata accessor for ToolType();
    (*(*(v22 - 8) + 8))(v50, v22);
    goto LABEL_5;
  }

  if (v20 == *MEMORY[0x1E69A0E78])
  {
    (*(v9 + 96))(v15, v8);
    (*(v4 + 32))(v7, v15, v3);
    *v19 = Tool.Function.name.getter();
    v19[1] = v27;
    v19[2] = Tool.Function.description.getter();
    v19[3] = v28;
    v29 = v51;
    v30 = v19 + *(v51 + 24);
    Tool.Function.parameters.getter();
    v31 = type metadata accessor for ToolType();
    (*(*(v31 - 8) + 8))(v50, v31);
    (*(v4 + 8))(v7, v3);
    v32 = v29;
    v33 = (v19 + *(v29 + 28));
    *v33 = 0;
    v33[1] = 0;
LABEL_12:
    v45 = v52;
    outlined init with take of ToolDescription(v19, v52, type metadata accessor for AnyTooling);
    v24 = v45;
    v23 = 0;
    v25 = v32;
    return (*(v16 + 56))(v24, v23, 1, v25);
  }

  if (v20 == *MEMORY[0x1E69A0E70])
  {
    (*(v9 + 96))(v15, v8);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(v15, v54);
    v34 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v35 = *(v34 + 8);
    *v19 = dispatch thunk of DynamicArgumentsTooling.name.getter();
    v19[1] = v36;
    v37 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v38 = *(v37 + 8);
    v19[2] = dispatch thunk of DynamicArgumentsTooling.usageDescription.getter();
    v19[3] = v39;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    swift_getDynamicType();
    v40 = v51;
    v41 = v19 + *(v51 + 24);
    static Tooling.argumentsSchema.getter();
    v42 = type metadata accessor for ToolType();
    (*(*(v42 - 8) + 8))(v50, v42);
    outlined init with copy of PromptCompletionEvent(v54, v53);
    v43 = swift_allocObject();
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(v53, v43 + 16);
    v32 = v40;
    v44 = (v19 + *(v40 + 28));
    *v44 = &async function pointer to partial apply for closure #1 in AnyTooling.init(_:);
    v44[1] = v43;
    __swift_destroy_boxed_opaque_existential_0(v54);
    goto LABEL_12;
  }

  if (v20 == *MEMORY[0x1E69A0E68])
  {
    v46 = type metadata accessor for ToolType();
    (*(*(v46 - 8) + 8))(v50, v46);
    goto LABEL_6;
  }

  v47 = v50;
  if (v20 == *MEMORY[0x1E69A0E60])
  {
    v48 = type metadata accessor for ToolType();
    (*(*(v48 - 8) + 8))(v47, v48);
    goto LABEL_6;
  }

  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  MEMORY[0x1AC5A5BC0](0xD000000000000013, 0x80000001ABA41750);
  ToolType.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v9 + 8))(v13, v8);
  MEMORY[0x1AC5A5BC0](0x6465737520, 0xE500000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TokenGenerator.handleCompletePromptRequest(request:tools:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v63 = a2;
  v59 = a3;
  v4 = type metadata accessor for CompletePromptRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator.handleCompletePromptRequest(request:tools:));
  swift_arrayDestroy();
  v57 = v4;
  v13 = a1 + *(v4 + 48);
  v15 = *(v13 + 32);
  v14 = *(v13 + 40);

  if (v16)
  {
    v61 = v15;
    v54 = v16;
  }

  else
  {
    UUID.init()();
    v61 = UUID.uuidString.getter();
    v54 = v17;
    (*(v9 + 8))(v12, v8);
  }

  v60 = type metadata accessor for CompletePromptRequest;
  outlined init with copy of ToolDescription(a1, &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompletePromptRequest);
  v18 = *(v5 + 80);
  v19 = (v18 + 16) & ~v18;
  v56 = v6;
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v5;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = v7;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = a1;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v55 = type metadata accessor for CompletePromptRequest;
  outlined init with take of ToolDescription(v7, v25 + v19, type metadata accessor for CompletePromptRequest);
  v26 = v61;
  *(v25 + v20) = v62;
  v27 = (v25 + v22);
  v28 = v54;
  *v27 = v26;
  v27[1] = v28;
  v29 = v58;
  *(v25 + v23) = v58;
  v30 = v29;
  *(v25 + v24) = v63;
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v52 = swift_allocBox();
  v33 = v32;
  outlined init with copy of ToolDescription(a1, v32, v60);
  (*(v21 + 56))(v33, 0, 1, v57);
  v34 = type metadata accessor for PromptCompletion.Aggregator(0);
  v57 = swift_allocBox();
  v36 = v35;
  v37 = MEMORY[0x1E69E7CC0];
  *v35 = MEMORY[0x1E69E7CC0];
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *(v35 + 3) = -1;
  *(v35 + 4) = -1;
  *(v35 + 5) = 0;
  v38 = v62;

  *(v36 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v37);
  v39 = *(v34 + 32);
  v40 = type metadata accessor for Prompt.Rendering();
  (*(*(v40 - 8) + 56))(&v36[v39], 1, 1, v40);
  v41 = *(v34 + 36);
  *&v36[v41] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v37);
  v42 = v53;
  outlined init with copy of ToolDescription(v51, v53, v60);
  v43 = swift_allocObject();
  v43[2] = v52;
  v43[3] = v31;
  v43[4] = v57;
  v43[5] = v38;
  v43[6] = v61;
  v43[7] = v28;
  v43[8] = v30;
  v43[9] = v63;
  outlined init with take of ToolDescription(v42, v43 + ((v18 + 80) & ~v18), v55);
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out AsyncThrowingStream<PromptCompletionEvent, Error>);
  v46[4] = v44;
  v47 = swift_allocObject();
  v47[2] = v45;
  v47[3] = &async function pointer to partial apply for closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  v47[4] = v25;

  v49 = v59;
  *v59 = closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  v49[1] = v46;
  v49[2] = &closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  v49[3] = v47;
  return result;
}

uint64_t TokenGenerator.handleCompletePromptTemplateRequest(request:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for CompletePromptTemplateRequest(0);
  v4 = v3 - 8;
  v30 = *(v3 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator.handleCompletePromptTemplateRequest(request:));
  swift_arrayDestroy();
  v11 = a1 + *(v4 + 60);
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);

  if (!v12)
  {
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v12 = v14;
    (*(v7 + 8))(v10, v6);
  }

  v29 = type metadata accessor for CompletePromptTemplateRequest;
  outlined init with copy of ToolDescription(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompletePromptTemplateRequest);
  v15 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v33;
  v18[3] = v13;
  v18[4] = v12;
  outlined init with take of ToolDescription(v15, v18 + v16, type metadata accessor for CompletePromptTemplateRequest);
  v19 = v31;
  *(v18 + v17) = v31;
  v20 = v13;
  v21 = v19;
  outlined init with copy of ToolDescription(a1, v15, v29);
  v22 = swift_allocObject();
  v22[2] = v33;
  v22[3] = v20;
  v22[4] = v12;
  outlined init with take of ToolDescription(v15, v22 + v16, type metadata accessor for CompletePromptTemplateRequest);
  *(v22 + v17) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  *(v24 + 2) = v23;
  *(v24 + 3) = partial apply for closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  *(v24 + 4) = v18;
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &async function pointer to partial apply for closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  *(v25 + 4) = v22;
  v26 = v32;
  *v32 = partial apply for closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  v26[1] = v24;
  v26[2] = &async function pointer to partial apply for closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  v26[3] = v25;

  swift_retain_n();
}

uint64_t TokenGenerator.complete<A>(prompt:parameters:generating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v105 = a5;
  v120 = a3;
  v121 = a4;
  v116 = a1;
  v6 = type metadata accessor for ToolChoice();
  v118 = *(v6 - 8);
  v7 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v93 - v10;
  v115 = type metadata accessor for PromptVariant();
  v109 = *(v115 - 8);
  v11 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v100 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v93 - v14;
  v102 = type metadata accessor for CompletePromptRequest(0);
  v15 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v93 - v18;
  v153 = type metadata accessor for Prompt();
  v108 = *(v153 - 8);
  v19 = v108[8];
  MEMORY[0x1EEE9AC00](v153);
  v98 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v93 - v24;
  v25 = type metadata accessor for UUID();
  v110 = *(v25 - 8);
  v111 = v25;
  v26 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Schema();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v107 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v93 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v99 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v106 = &v93 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v46 = *(a2 + 176);
  v149 = *(a2 + 160);
  v150 = v46;
  v151 = *(a2 + 192);
  v152 = *(a2 + 208);
  v47 = *(a2 + 112);
  v145 = *(a2 + 96);
  v146 = v47;
  v48 = *(a2 + 144);
  v147 = *(a2 + 128);
  v148 = v48;
  v49 = *(a2 + 48);
  v141 = *(a2 + 32);
  v142 = v49;
  v50 = *(a2 + 80);
  v143 = *(a2 + 64);
  v144 = v50;
  v51 = *(a2 + 16);
  v139 = *a2;
  v140 = v51;
  v52 = *(v118 + 56);
  v117 = &v93 - v53;
  v103 = v6;
  v52();
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  (*(v30 + 8))(v33, v29);
  v54 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v54 - 8) + 56))(v39, 0, 1, v54);
  UUID.init()();
  v55 = UUID.uuidString.getter();
  v57 = v56;
  v58 = v119;
  (*(v110 + 8))(v28, v111);
  v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v60 = v112;
  PromptVariant.tgPrompt.getter();
  if (v60)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v112 = 0;
    v93 = v108[2];
    v94 = v55;
    v93(v113, v58, v153);
    v62 = *(v109 + 16);
    v62(v114, v116, v115);
    v116 = v39;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, v107, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v63 = v106;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v111 = v57;

    v110 = 0x80000001ABA42B70;

    v95 = v59;

    outlined init with copy of SamplingParameters(&v139, v136);
    v64 = v101;
    XPCDictionary.init()();
    v65 = v98;
    v93(v98, v113, v153);
    v66 = specialized PromptEnvelope.init(sealing:xpcData:)(v65, v64);
    v67 = v102;
    v68 = (v64 + *(v102 + 20));
    *v68 = v66;
    v68[1] = v69;
    v68[2] = v70;
    v68[3] = v71;
    v72 = v100;
    v62(v100, v114, v115);
    PromptVariantEnvelope.init(sealing:xpcData:)(v72, v64, v64 + v67[6]);
    v132 = v149;
    v133 = v150;
    v134 = v151;
    v135 = v152;
    v128 = v145;
    v129 = v146;
    v130 = v147;
    v131 = v148;
    v124 = v141;
    v125 = v142;
    v126 = v143;
    v127 = v144;
    v122 = v139;
    v123 = v140;
    SamplingParametersEnvelope.init(sealing:)(&v122, v136);
    v73 = v64 + v67[7];
    v74 = v136[11];
    *(v73 + 160) = v136[10];
    *(v73 + 176) = v74;
    *(v73 + 192) = v136[12];
    *(v73 + 208) = v137;
    v75 = v136[7];
    *(v73 + 96) = v136[6];
    *(v73 + 112) = v75;
    v76 = v136[9];
    *(v73 + 128) = v136[8];
    *(v73 + 144) = v76;
    v77 = v136[3];
    *(v73 + 32) = v136[2];
    *(v73 + 48) = v77;
    v78 = v136[5];
    *(v73 + 64) = v136[4];
    *(v73 + 80) = v78;
    v79 = v136[1];
    *v73 = v136[0];
    *(v73 + 16) = v79;
    *(v64 + v67[9]) = MEMORY[0x1E69E7CC0];
    v80 = v99;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v99, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v81 = v118;
    v82 = v103;
    v83 = v64;
    if ((*(v118 + 48))(v80, 1, v103) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v114, v115);
      v118 = v108[1];
      (v118)(v113, v153);
      v84 = xmmword_1ABA26F10;
    }

    else
    {
      v85 = v96;
      (*(v81 + 32))(v96, v80, v82);
      v86 = v97;
      (*(v81 + 16))(v97, v85, v82);
      ToolChoiceEnvelope.init(sealing:)(v86, &v122);
      (*(v81 + 8))(v85, v82);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v109 + 8))(v114, v115);
      v118 = v108[1];
      (v118)(v113, v153);
      v84 = v122;
    }

    *(v83 + v67[10]) = v84;
    swift_bridgeObjectRelease_n();
    v87 = (v83 + v67[12]);
    v88 = v95;
    v90 = v110;
    v89 = v111;
    *v87 = v94;
    v87[1] = v89;
    v87[2] = 0xD000000000000027;
    v87[3] = v90;
    v87[4] = 0;
    v87[5] = 0;
    v87[6] = v88;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v107, v83 + v67[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v91 = MEMORY[0x1E69E7CC0];
    *(v83 + v67[11]) = MEMORY[0x1E69E7CC0];
    v92 = v104;
    outlined init with take of ToolDescription(v83, v104, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v92, v91, v138);

    outlined destroy of ToolType(v92, type metadata accessor for CompletePromptRequest);
    (v118)(v119, v153);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v116, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v122 = v138[0];
    v123 = v138[1];
    TokenStream<>.map<A>(_:)(v105);
  }
}

{
  v121 = a5;
  v129 = a3;
  v130 = a4;
  v115 = a1;
  v6 = type metadata accessor for ToolChoice();
  v124 = *(v6 - 8);
  v125 = v6;
  v7 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v102 - v10;
  v116 = type metadata accessor for CompletePromptRequest(0);
  v11 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v102 - v14;
  v15 = type metadata accessor for UUID();
  v118 = *(v15 - 8);
  v119 = v15;
  v16 = *(v118 + 8);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Schema();
  v112 = *(v114 - 8);
  v18 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v128 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v102 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v110 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v102 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v102 - v33;
  v127 = &v102 - v33;
  v35 = type metadata accessor for Prompt();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v126 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v102 - v40;
  v132 = type metadata accessor for PromptVariant();
  v123 = *(v132 - 8);
  v42 = v123[8];
  MEMORY[0x1EEE9AC00](v132);
  v107 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v131 = &v102 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v102 - v47;
  v49 = *(a2 + 176);
  v159 = *(a2 + 160);
  v160 = v49;
  v161 = *(a2 + 192);
  v162 = *(a2 + 208);
  v50 = *(a2 + 112);
  v155 = *(a2 + 96);
  v156 = v50;
  v51 = *(a2 + 144);
  v157 = *(a2 + 128);
  v158 = v51;
  v52 = *(a2 + 48);
  v151 = *(a2 + 32);
  v152 = v52;
  v53 = *(a2 + 80);
  v153 = *(a2 + 64);
  v154 = v53;
  v54 = *(a2 + 16);
  v149 = *a2;
  v150 = v54;
  v117 = v36;
  v105 = *(v36 + 16);
  v106 = v41;
  v122 = v36 + 16;
  v55 = v41;
  v56 = v115;
  v105(v55, v115, v35);
  PromptVariant.init(_:)();
  (*(v124 + 56))(v34, 1, 1, v125);
  dispatch thunk of static Generable.schema.getter();
  Schema.type.getter();
  (*(v112 + 8))(v20, v114);
  v57 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v57 - 8) + 56))(v26, 0, 1, v57);
  v58 = v108;
  UUID.init()();
  v111 = UUID.uuidString.getter();
  v60 = v59;
  (*(v118 + 1))(v58, v119);
  v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v62 = v126;
  v63 = v35;
  v64 = v35;
  v65 = v105;
  v105(v126, v56, v64);
  v104 = v123[2];
  v118 = v48;
  v66 = v48;
  v67 = v63;
  v68 = v113;
  v104(v131, v66, v132);
  v119 = v26;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v128, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v69 = v109;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v127, v109, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v115 = v60;

  v114 = 0x80000001ABA42B70;

  v112 = v61;

  outlined init with copy of SamplingParameters(&v149, v163);
  XPCDictionary.init()();
  v70 = v106;
  v108 = v67;
  v65(v106, v62, v67);
  v71 = v124;
  v72 = v125;
  v73 = specialized PromptEnvelope.init(sealing:xpcData:)(v70, v68);
  v74 = v116;
  v75 = (v68 + *(v116 + 20));
  *v75 = v73;
  v75[1] = v76;
  v75[2] = v77;
  v75[3] = v78;
  v79 = v107;
  v104(v107, v131, v132);
  v80 = v110;
  v81 = v74;
  PromptVariantEnvelope.init(sealing:xpcData:)(v79, v68, v68 + v74[6]);
  v145 = v159;
  v146 = v160;
  v147 = v161;
  v148 = v162;
  v141 = v155;
  v142 = v156;
  v143 = v157;
  v144 = v158;
  v137 = v151;
  v138 = v152;
  v139 = v153;
  v140 = v154;
  v135 = v149;
  v136 = v150;
  SamplingParametersEnvelope.init(sealing:)(&v135, v163);
  v82 = v68 + v74[7];
  v83 = v163[11];
  *(v82 + 160) = v163[10];
  *(v82 + 176) = v83;
  *(v82 + 192) = v163[12];
  *(v82 + 208) = v164;
  v84 = v163[7];
  *(v82 + 96) = v163[6];
  *(v82 + 112) = v84;
  v85 = v163[9];
  *(v82 + 128) = v163[8];
  *(v82 + 144) = v85;
  v86 = v163[3];
  *(v82 + 32) = v163[2];
  *(v82 + 48) = v86;
  v87 = v163[5];
  *(v82 + 64) = v163[4];
  *(v82 + 80) = v87;
  v88 = v163[1];
  *v82 = v163[0];
  *(v82 + 16) = v88;
  *(v68 + v74[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, v80, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v71 + 48))(v80, 1, v72) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v89 = v131;
    v131 = v123[1];
    (v131)(v89, v132);
    (*(v117 + 8))(v126, v108);
    v90 = xmmword_1ABA26F10;
  }

  else
  {
    v91 = v102;
    (*(v71 + 32))(v102, v80, v72);
    v92 = v103;
    (*(v71 + 16))(v103, v91, v72);
    ToolChoiceEnvelope.init(sealing:)(v92, &v135);
    (*(v71 + 8))(v91, v72);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v93 = v131;
    v131 = v123[1];
    (v131)(v93, v132);
    (*(v117 + 8))(v126, v108);
    v90 = v135;
  }

  *(v68 + v81[10]) = v90;
  swift_bridgeObjectRelease_n();
  v94 = (v68 + v81[12]);
  v95 = v112;
  v97 = v114;
  v96 = v115;
  *v94 = v111;
  v94[1] = v96;
  v94[2] = 0xD000000000000027;
  v94[3] = v97;
  v94[4] = 0;
  v94[5] = 0;
  v94[6] = v95;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v128, v68 + v81[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v98 = v81[11];
  v99 = MEMORY[0x1E69E7CC0];
  *(v68 + v98) = MEMORY[0x1E69E7CC0];
  v100 = v120;
  outlined init with take of ToolDescription(v68, v120, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v100, v99, &v135);

  outlined destroy of ToolType(v100, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v127, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v131)(v118, v132);
  v133 = v135;
  v134 = v136;
  TokenStream<>.map<A>(_:)(v121);
}

double TokenGenerator.complete(prompt:parameters:grammar:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v119 = a1;
  v112 = a5;
  v117 = a4;
  v118 = a3;
  v6 = type metadata accessor for ToolChoice();
  v124 = *(v6 - 8);
  v7 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v98 - v10;
  v123 = type metadata accessor for PromptVariant();
  v116 = *(v123 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v98 - v14;
  v109 = type metadata accessor for CompletePromptRequest(0);
  v15 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v98 - v18;
  v144 = type metadata accessor for Prompt();
  v115 = *(v144 - 8);
  v19 = v115[8];
  MEMORY[0x1EEE9AC00](v144);
  v104 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v98 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v98 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v114 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v98 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v105 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v113 = &v98 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v98 - v38;
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a2 + 176);
  v140 = *(a2 + 160);
  v141 = v45;
  v142 = *(a2 + 192);
  v143 = *(a2 + 208);
  v46 = *(a2 + 112);
  v136 = *(a2 + 96);
  v137 = v46;
  v47 = *(a2 + 144);
  v138 = *(a2 + 128);
  v139 = v47;
  v48 = *(a2 + 48);
  v132 = *(a2 + 32);
  v133 = v48;
  v49 = *(a2 + 80);
  v134 = *(a2 + 64);
  v135 = v49;
  v50 = *a2;
  v51 = *(a2 + 16);
  v52 = v25;
  v130 = v50;
  v131 = v51;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v54 = v53;
  v55 = v40;
  v56 = v39;
  (*(v41 + 8))(v44, v55);
  v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v58 = *(v124 + 56);
  v110 = v6;
  v58(v56, 1, 1, v6);
  v59 = v117;
  *v31 = v118;
  v31[1] = v59;
  v60 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v60 - 8) + 56))(v31, 0, 1, v60);

  v61 = v120;
  v62 = v119;
  PromptVariant.tgPrompt.getter();
  if (v61)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v100 = 0;
    v120 = v57;
    v64 = v115[2];
    v118 = v52;
    v64(v121, v52, v144);
    v98 = *(v116 + 16);
    v98(v122, v62, v123);
    v117 = v31;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v114, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v119 = v56;
    v65 = v56;
    v66 = v113;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v101 = v54;

    v99 = 0x80000001ABA42BA0;

    outlined init with copy of SamplingParameters(&v130, v127);
    v67 = v108;
    XPCDictionary.init()();
    v68 = v104;
    v64(v104, v121, v144);
    v69 = specialized PromptEnvelope.init(sealing:xpcData:)(v68, v67);
    v70 = v109;
    v71 = (v67 + *(v109 + 20));
    *v71 = v69;
    v71[1] = v72;
    v71[2] = v73;
    v71[3] = v74;
    v75 = v106;
    v98(v106, v122, v123);
    PromptVariantEnvelope.init(sealing:xpcData:)(v75, v67, v67 + v70[6]);
    v125[10] = v140;
    v125[11] = v141;
    v125[12] = v142;
    v126 = v143;
    v125[6] = v136;
    v125[7] = v137;
    v125[8] = v138;
    v125[9] = v139;
    v125[2] = v132;
    v125[3] = v133;
    v125[4] = v134;
    v125[5] = v135;
    v125[0] = v130;
    v125[1] = v131;
    SamplingParametersEnvelope.init(sealing:)(v125, v127);
    v76 = v67 + v70[7];
    v77 = v127[11];
    *(v76 + 160) = v127[10];
    *(v76 + 176) = v77;
    *(v76 + 192) = v127[12];
    *(v76 + 208) = v128;
    v78 = v127[7];
    *(v76 + 96) = v127[6];
    *(v76 + 112) = v78;
    v79 = v127[9];
    *(v76 + 128) = v127[8];
    *(v76 + 144) = v79;
    v80 = v127[3];
    *(v76 + 32) = v127[2];
    *(v76 + 48) = v80;
    v81 = v127[5];
    *(v76 + 64) = v127[4];
    *(v76 + 80) = v81;
    v82 = v127[1];
    *v76 = v127[0];
    *(v76 + 16) = v82;
    *(v67 + v70[9]) = MEMORY[0x1E69E7CC0];
    v83 = v105;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v66, v105, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v84 = v124;
    v85 = v110;
    if ((*(v124 + 48))(v83, 1, v110) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v116 + 8))(v122, v123);
      v124 = v115[1];
      (v124)(v121, v144);
      v86 = xmmword_1ABA26F10;
    }

    else
    {
      v87 = v102;
      (*(v84 + 32))(v102, v83, v85);
      v88 = v103;
      (*(v84 + 16))(v103, v87, v85);
      ToolChoiceEnvelope.init(sealing:)(v88, v125);
      (*(v84 + 8))(v87, v85);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v116 + 8))(v122, v123);
      v124 = v115[1];
      (v124)(v121, v144);
      v86 = v125[0];
    }

    v89 = v112;
    v90 = v107;
    *(v67 + v70[10]) = v86;
    swift_bridgeObjectRelease_n();
    v91 = (v67 + v70[12]);
    *v91 = v90;
    v91[1] = v101;
    v91[2] = 0xD000000000000024;
    v91[3] = v99;
    v91[4] = 0;
    v92 = v120;
    v91[5] = 0;
    v91[6] = v92;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v114, v67 + v70[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v93 = v70[11];
    v94 = MEMORY[0x1E69E7CC0];
    *(v67 + v93) = MEMORY[0x1E69E7CC0];
    v95 = v67;
    v96 = v111;
    outlined init with take of ToolDescription(v95, v111, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v96, v94, v129);

    outlined destroy of ToolType(v96, type metadata accessor for CompletePromptRequest);
    (v124)(v118, v144);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    result = *v129;
    v97 = v129[1];
    *v89 = v129[0];
    v89[1] = v97;
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:grammar:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v110 = a5;
  v113 = a4;
  v105 = a3;
  v101 = a1;
  v112 = type metadata accessor for ToolChoice();
  v6 = *(v112 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v96 - v10;
  v104 = type metadata accessor for CompletePromptRequest(0);
  v11 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v122 = (&v96 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v103 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v96 - v26;
  v27 = type metadata accessor for Prompt();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v96 - v32;
  v123 = type metadata accessor for PromptVariant();
  v117 = *(v123 - 8);
  v34 = v117[8];
  MEMORY[0x1EEE9AC00](v123);
  v100 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v124 = &v96 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v120 = &v96 - v39;
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a2 + 176);
  v149 = *(a2 + 160);
  v150 = v45;
  v151 = *(a2 + 192);
  v152 = *(a2 + 208);
  v46 = *(a2 + 112);
  v145 = *(a2 + 96);
  v146 = v46;
  v47 = *(a2 + 144);
  v147 = *(a2 + 128);
  v148 = v47;
  v48 = *(a2 + 48);
  v141 = *(a2 + 32);
  v142 = v48;
  v49 = *(a2 + 80);
  v143 = *(a2 + 64);
  v144 = v49;
  v50 = *(a2 + 16);
  v139 = *a2;
  v140 = v50;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v116 = v51;
  (*(v41 + 8))(v44, v40);
  v115 = 0x80000001ABA42BA0;
  v114 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v108 = v28;
  v52 = *(v28 + 16);
  v99 = v33;
  v53 = v101;
  v118 = v27;
  v52(v33, v101, v27);
  v98 = v52;
  PromptVariant.init(_:)();
  v54 = v119;
  (*(v6 + 56))(v119, 1, 1, v112);
  v55 = v122;
  v56 = v113;
  *v122 = v105;
  v55[1] = v56;
  v57 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  v58 = v111;
  v52(v111, v53, v27);
  v105 = v117[2];
  v59 = v123;
  v60 = v104;
  v105(v124, v120, v123);
  v61 = v55;
  v62 = v6;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, v121, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v63 = v102;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v102, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v139, v153);
  v64 = v106;
  XPCDictionary.init()();
  v65 = v99;
  v98(v99, v58, v118);
  v66 = v112;
  v67 = specialized PromptEnvelope.init(sealing:xpcData:)(v65, v64);
  v68 = (v64 + v60[5]);
  *v68 = v67;
  v68[1] = v69;
  v68[2] = v70;
  v68[3] = v71;
  v72 = v100;
  v105(v100, v124, v59);
  v73 = v103;
  PromptVariantEnvelope.init(sealing:xpcData:)(v72, v64, v64 + v60[6]);
  v135 = v149;
  v136 = v150;
  v137 = v151;
  v138 = v152;
  v131 = v145;
  v132 = v146;
  v133 = v147;
  v134 = v148;
  v127 = v141;
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v125 = v139;
  v126 = v140;
  SamplingParametersEnvelope.init(sealing:)(&v125, v153);
  v74 = v64 + v60[7];
  v75 = v153[11];
  *(v74 + 160) = v153[10];
  *(v74 + 176) = v75;
  *(v74 + 192) = v153[12];
  *(v74 + 208) = v154;
  v76 = v153[7];
  *(v74 + 96) = v153[6];
  *(v74 + 112) = v76;
  v77 = v153[9];
  *(v74 + 128) = v153[8];
  *(v74 + 144) = v77;
  v78 = v153[3];
  *(v74 + 32) = v153[2];
  *(v74 + 48) = v78;
  v79 = v153[5];
  *(v74 + 64) = v153[4];
  *(v74 + 80) = v79;
  v80 = v153[1];
  *v74 = v153[0];
  *(v74 + 16) = v80;
  v81 = v60;
  *(v64 + v60[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v73, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v62 + 48))(v73, 1, v66) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v82 = v124;
    v124 = v117[1];
    (v124)(v82, v123);
    (*(v108 + 8))(v111, v118);
    v83 = xmmword_1ABA26F10;
  }

  else
  {
    v84 = v96;
    (*(v62 + 32))(v96, v73, v66);
    v85 = v97;
    (*(v62 + 16))(v97, v84, v66);
    ToolChoiceEnvelope.init(sealing:)(v85, &v125);
    (*(v62 + 8))(v84, v66);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v86 = v124;
    v124 = v117[1];
    (v124)(v86, v123);
    (*(v108 + 8))(v111, v118);
    v83 = v125;
  }

  v87 = v64;
  *(v64 + v81[10]) = v83;
  swift_bridgeObjectRelease_n();
  v88 = (v64 + v81[12]);
  v89 = v115;
  v90 = v116;
  *v88 = v107;
  v88[1] = v90;
  v88[2] = 0xD000000000000024;
  v88[3] = v89;
  v88[4] = 0;
  v88[5] = 0;
  v88[6] = v114;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v121, v87 + v81[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v91 = MEMORY[0x1E69E7CC0];
  *(v87 + v81[11]) = MEMORY[0x1E69E7CC0];
  v92 = v109;
  outlined init with take of ToolDescription(v87, v109, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v92, v91, &v125);

  outlined destroy of ToolType(v92, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v122, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v124)(v120, v123);
  result = *&v125;
  v94 = v126;
  v95 = v110;
  *v110 = v125;
  v95[1] = v94;
  return result;
}

double TokenGenerator.complete(prompt:parameters:grammarIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v119 = a1;
  v112 = a5;
  v117 = a4;
  v118 = a3;
  v6 = type metadata accessor for ToolChoice();
  v124 = *(v6 - 8);
  v7 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v98 - v10;
  v123 = type metadata accessor for PromptVariant();
  v116 = *(v123 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v98 - v14;
  v109 = type metadata accessor for CompletePromptRequest(0);
  v15 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v98 - v18;
  v144 = type metadata accessor for Prompt();
  v115 = *(v144 - 8);
  v19 = v115[8];
  MEMORY[0x1EEE9AC00](v144);
  v104 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v98 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v98 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v114 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v98 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v105 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v113 = &v98 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v98 - v38;
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a2 + 176);
  v140 = *(a2 + 160);
  v141 = v45;
  v142 = *(a2 + 192);
  v143 = *(a2 + 208);
  v46 = *(a2 + 112);
  v136 = *(a2 + 96);
  v137 = v46;
  v47 = *(a2 + 144);
  v138 = *(a2 + 128);
  v139 = v47;
  v48 = *(a2 + 48);
  v132 = *(a2 + 32);
  v133 = v48;
  v49 = *(a2 + 80);
  v134 = *(a2 + 64);
  v135 = v49;
  v50 = *a2;
  v51 = *(a2 + 16);
  v52 = v25;
  v130 = v50;
  v131 = v51;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v54 = v53;
  v55 = v40;
  v56 = v39;
  (*(v41 + 8))(v44, v55);
  v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v58 = *(v124 + 56);
  v110 = v6;
  v58(v56, 1, 1, v6);
  v59 = v117;
  *v31 = v118;
  v31[1] = v59;
  v60 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v60 - 8) + 56))(v31, 0, 1, v60);

  v61 = v120;
  v62 = v119;
  PromptVariant.tgPrompt.getter();
  if (v61)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v100 = 0;
    v120 = v57;
    v64 = v115[2];
    v118 = v52;
    v64(v121, v52, v144);
    v98 = *(v116 + 16);
    v98(v122, v62, v123);
    v117 = v31;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v114, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v119 = v56;
    v65 = v56;
    v66 = v113;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v101 = v54;

    v99 = 0x80000001ABA42BD0;

    outlined init with copy of SamplingParameters(&v130, v127);
    v67 = v108;
    XPCDictionary.init()();
    v68 = v104;
    v64(v104, v121, v144);
    v69 = specialized PromptEnvelope.init(sealing:xpcData:)(v68, v67);
    v70 = v109;
    v71 = (v67 + *(v109 + 20));
    *v71 = v69;
    v71[1] = v72;
    v71[2] = v73;
    v71[3] = v74;
    v75 = v106;
    v98(v106, v122, v123);
    PromptVariantEnvelope.init(sealing:xpcData:)(v75, v67, v67 + v70[6]);
    v125[10] = v140;
    v125[11] = v141;
    v125[12] = v142;
    v126 = v143;
    v125[6] = v136;
    v125[7] = v137;
    v125[8] = v138;
    v125[9] = v139;
    v125[2] = v132;
    v125[3] = v133;
    v125[4] = v134;
    v125[5] = v135;
    v125[0] = v130;
    v125[1] = v131;
    SamplingParametersEnvelope.init(sealing:)(v125, v127);
    v76 = v67 + v70[7];
    v77 = v127[11];
    *(v76 + 160) = v127[10];
    *(v76 + 176) = v77;
    *(v76 + 192) = v127[12];
    *(v76 + 208) = v128;
    v78 = v127[7];
    *(v76 + 96) = v127[6];
    *(v76 + 112) = v78;
    v79 = v127[9];
    *(v76 + 128) = v127[8];
    *(v76 + 144) = v79;
    v80 = v127[3];
    *(v76 + 32) = v127[2];
    *(v76 + 48) = v80;
    v81 = v127[5];
    *(v76 + 64) = v127[4];
    *(v76 + 80) = v81;
    v82 = v127[1];
    *v76 = v127[0];
    *(v76 + 16) = v82;
    *(v67 + v70[9]) = MEMORY[0x1E69E7CC0];
    v83 = v105;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v66, v105, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v84 = v124;
    v85 = v110;
    if ((*(v124 + 48))(v83, 1, v110) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v116 + 8))(v122, v123);
      v124 = v115[1];
      (v124)(v121, v144);
      v86 = xmmword_1ABA26F10;
    }

    else
    {
      v87 = v102;
      (*(v84 + 32))(v102, v83, v85);
      v88 = v103;
      (*(v84 + 16))(v103, v87, v85);
      ToolChoiceEnvelope.init(sealing:)(v88, v125);
      (*(v84 + 8))(v87, v85);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v116 + 8))(v122, v123);
      v124 = v115[1];
      (v124)(v121, v144);
      v86 = v125[0];
    }

    v89 = v112;
    v90 = v107;
    *(v67 + v70[10]) = v86;
    swift_bridgeObjectRelease_n();
    v91 = (v67 + v70[12]);
    *v91 = v90;
    v91[1] = v101;
    v91[2] = 0xD00000000000002ELL;
    v91[3] = v99;
    v91[4] = 0;
    v92 = v120;
    v91[5] = 0;
    v91[6] = v92;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v114, v67 + v70[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v93 = v70[11];
    v94 = MEMORY[0x1E69E7CC0];
    *(v67 + v93) = MEMORY[0x1E69E7CC0];
    v95 = v67;
    v96 = v111;
    outlined init with take of ToolDescription(v95, v111, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v96, v94, v129);

    outlined destroy of ToolType(v96, type metadata accessor for CompletePromptRequest);
    (v124)(v118, v144);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    result = *v129;
    v97 = v129[1];
    *v89 = v129[0];
    v89[1] = v97;
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:grammarIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v110 = a5;
  v113 = a4;
  v105 = a3;
  v101 = a1;
  v112 = type metadata accessor for ToolChoice();
  v6 = *(v112 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v96 - v10;
  v104 = type metadata accessor for CompletePromptRequest(0);
  v11 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v122 = (&v96 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v103 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v96 - v26;
  v27 = type metadata accessor for Prompt();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v96 - v32;
  v123 = type metadata accessor for PromptVariant();
  v117 = *(v123 - 8);
  v34 = v117[8];
  MEMORY[0x1EEE9AC00](v123);
  v100 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v124 = &v96 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v120 = &v96 - v39;
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a2 + 176);
  v149 = *(a2 + 160);
  v150 = v45;
  v151 = *(a2 + 192);
  v152 = *(a2 + 208);
  v46 = *(a2 + 112);
  v145 = *(a2 + 96);
  v146 = v46;
  v47 = *(a2 + 144);
  v147 = *(a2 + 128);
  v148 = v47;
  v48 = *(a2 + 48);
  v141 = *(a2 + 32);
  v142 = v48;
  v49 = *(a2 + 80);
  v143 = *(a2 + 64);
  v144 = v49;
  v50 = *(a2 + 16);
  v139 = *a2;
  v140 = v50;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v116 = v51;
  (*(v41 + 8))(v44, v40);
  v115 = 0x80000001ABA42BD0;
  v114 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v108 = v28;
  v52 = *(v28 + 16);
  v99 = v33;
  v53 = v101;
  v118 = v27;
  v52(v33, v101, v27);
  v98 = v52;
  PromptVariant.init(_:)();
  v54 = v119;
  (*(v6 + 56))(v119, 1, 1, v112);
  v55 = v122;
  v56 = v113;
  *v122 = v105;
  v55[1] = v56;
  v57 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  v58 = v111;
  v52(v111, v53, v27);
  v105 = v117[2];
  v59 = v123;
  v60 = v104;
  v105(v124, v120, v123);
  v61 = v55;
  v62 = v6;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, v121, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v63 = v102;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v102, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v139, v153);
  v64 = v106;
  XPCDictionary.init()();
  v65 = v99;
  v98(v99, v58, v118);
  v66 = v112;
  v67 = specialized PromptEnvelope.init(sealing:xpcData:)(v65, v64);
  v68 = (v64 + v60[5]);
  *v68 = v67;
  v68[1] = v69;
  v68[2] = v70;
  v68[3] = v71;
  v72 = v100;
  v105(v100, v124, v59);
  v73 = v103;
  PromptVariantEnvelope.init(sealing:xpcData:)(v72, v64, v64 + v60[6]);
  v135 = v149;
  v136 = v150;
  v137 = v151;
  v138 = v152;
  v131 = v145;
  v132 = v146;
  v133 = v147;
  v134 = v148;
  v127 = v141;
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v125 = v139;
  v126 = v140;
  SamplingParametersEnvelope.init(sealing:)(&v125, v153);
  v74 = v64 + v60[7];
  v75 = v153[11];
  *(v74 + 160) = v153[10];
  *(v74 + 176) = v75;
  *(v74 + 192) = v153[12];
  *(v74 + 208) = v154;
  v76 = v153[7];
  *(v74 + 96) = v153[6];
  *(v74 + 112) = v76;
  v77 = v153[9];
  *(v74 + 128) = v153[8];
  *(v74 + 144) = v77;
  v78 = v153[3];
  *(v74 + 32) = v153[2];
  *(v74 + 48) = v78;
  v79 = v153[5];
  *(v74 + 64) = v153[4];
  *(v74 + 80) = v79;
  v80 = v153[1];
  *v74 = v153[0];
  *(v74 + 16) = v80;
  v81 = v60;
  *(v64 + v60[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v73, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v62 + 48))(v73, 1, v66) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v82 = v124;
    v124 = v117[1];
    (v124)(v82, v123);
    (*(v108 + 8))(v111, v118);
    v83 = xmmword_1ABA26F10;
  }

  else
  {
    v84 = v96;
    (*(v62 + 32))(v96, v73, v66);
    v85 = v97;
    (*(v62 + 16))(v97, v84, v66);
    ToolChoiceEnvelope.init(sealing:)(v85, &v125);
    (*(v62 + 8))(v84, v66);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v86 = v124;
    v124 = v117[1];
    (v124)(v86, v123);
    (*(v108 + 8))(v111, v118);
    v83 = v125;
  }

  v87 = v64;
  *(v64 + v81[10]) = v83;
  swift_bridgeObjectRelease_n();
  v88 = (v64 + v81[12]);
  v89 = v115;
  v90 = v116;
  *v88 = v107;
  v88[1] = v90;
  v88[2] = 0xD00000000000002ELL;
  v88[3] = v89;
  v88[4] = 0;
  v88[5] = 0;
  v88[6] = v114;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v121, v87 + v81[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v91 = MEMORY[0x1E69E7CC0];
  *(v87 + v81[11]) = MEMORY[0x1E69E7CC0];
  v92 = v109;
  outlined init with take of ToolDescription(v87, v109, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v92, v91, &v125);

  outlined destroy of ToolType(v92, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v122, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v124)(v120, v123);
  result = *&v125;
  v94 = v126;
  v95 = v110;
  *v110 = v125;
  v95[1] = v94;
  return result;
}

double TokenGenerator.complete(prompt:parameters:schemaIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v119 = a1;
  v112 = a5;
  v117 = a4;
  v118 = a3;
  v6 = type metadata accessor for ToolChoice();
  v124 = *(v6 - 8);
  v7 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v98 - v10;
  v123 = type metadata accessor for PromptVariant();
  v116 = *(v123 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v98 - v14;
  v109 = type metadata accessor for CompletePromptRequest(0);
  v15 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v98 - v18;
  v144 = type metadata accessor for Prompt();
  v115 = *(v144 - 8);
  v19 = v115[8];
  MEMORY[0x1EEE9AC00](v144);
  v104 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v98 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v98 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v114 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v98 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v105 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v113 = &v98 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v98 - v38;
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a2 + 176);
  v140 = *(a2 + 160);
  v141 = v45;
  v142 = *(a2 + 192);
  v143 = *(a2 + 208);
  v46 = *(a2 + 112);
  v136 = *(a2 + 96);
  v137 = v46;
  v47 = *(a2 + 144);
  v138 = *(a2 + 128);
  v139 = v47;
  v48 = *(a2 + 48);
  v132 = *(a2 + 32);
  v133 = v48;
  v49 = *(a2 + 80);
  v134 = *(a2 + 64);
  v135 = v49;
  v50 = *a2;
  v51 = *(a2 + 16);
  v52 = v25;
  v130 = v50;
  v131 = v51;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v54 = v53;
  v55 = v40;
  v56 = v39;
  (*(v41 + 8))(v44, v55);
  v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v58 = *(v124 + 56);
  v110 = v6;
  v58(v56, 1, 1, v6);
  v59 = v117;
  *v31 = v118;
  v31[1] = v59;
  v60 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v60 - 8) + 56))(v31, 0, 1, v60);

  v61 = v120;
  v62 = v119;
  PromptVariant.tgPrompt.getter();
  if (v61)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  }

  else
  {
    v100 = 0;
    v120 = v57;
    v64 = v115[2];
    v118 = v52;
    v64(v121, v52, v144);
    v98 = *(v116 + 16);
    v98(v122, v62, v123);
    v117 = v31;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v114, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v119 = v56;
    v65 = v56;
    v66 = v113;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v101 = v54;

    v99 = 0x80000001ABA42C00;

    outlined init with copy of SamplingParameters(&v130, v127);
    v67 = v108;
    XPCDictionary.init()();
    v68 = v104;
    v64(v104, v121, v144);
    v69 = specialized PromptEnvelope.init(sealing:xpcData:)(v68, v67);
    v70 = v109;
    v71 = (v67 + *(v109 + 20));
    *v71 = v69;
    v71[1] = v72;
    v71[2] = v73;
    v71[3] = v74;
    v75 = v106;
    v98(v106, v122, v123);
    PromptVariantEnvelope.init(sealing:xpcData:)(v75, v67, v67 + v70[6]);
    v125[10] = v140;
    v125[11] = v141;
    v125[12] = v142;
    v126 = v143;
    v125[6] = v136;
    v125[7] = v137;
    v125[8] = v138;
    v125[9] = v139;
    v125[2] = v132;
    v125[3] = v133;
    v125[4] = v134;
    v125[5] = v135;
    v125[0] = v130;
    v125[1] = v131;
    SamplingParametersEnvelope.init(sealing:)(v125, v127);
    v76 = v67 + v70[7];
    v77 = v127[11];
    *(v76 + 160) = v127[10];
    *(v76 + 176) = v77;
    *(v76 + 192) = v127[12];
    *(v76 + 208) = v128;
    v78 = v127[7];
    *(v76 + 96) = v127[6];
    *(v76 + 112) = v78;
    v79 = v127[9];
    *(v76 + 128) = v127[8];
    *(v76 + 144) = v79;
    v80 = v127[3];
    *(v76 + 32) = v127[2];
    *(v76 + 48) = v80;
    v81 = v127[5];
    *(v76 + 64) = v127[4];
    *(v76 + 80) = v81;
    v82 = v127[1];
    *v76 = v127[0];
    *(v76 + 16) = v82;
    *(v67 + v70[9]) = MEMORY[0x1E69E7CC0];
    v83 = v105;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v66, v105, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v84 = v124;
    v85 = v110;
    if ((*(v124 + 48))(v83, 1, v110) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v116 + 8))(v122, v123);
      v124 = v115[1];
      (v124)(v121, v144);
      v86 = xmmword_1ABA26F10;
    }

    else
    {
      v87 = v102;
      (*(v84 + 32))(v102, v83, v85);
      v88 = v103;
      (*(v84 + 16))(v103, v87, v85);
      ToolChoiceEnvelope.init(sealing:)(v88, v125);
      (*(v84 + 8))(v87, v85);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v113, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v116 + 8))(v122, v123);
      v124 = v115[1];
      (v124)(v121, v144);
      v86 = v125[0];
    }

    v89 = v112;
    v90 = v107;
    *(v67 + v70[10]) = v86;
    swift_bridgeObjectRelease_n();
    v91 = (v67 + v70[12]);
    *v91 = v90;
    v91[1] = v101;
    v91[2] = 0xD00000000000002DLL;
    v91[3] = v99;
    v91[4] = 0;
    v92 = v120;
    v91[5] = 0;
    v91[6] = v92;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v114, v67 + v70[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v93 = v70[11];
    v94 = MEMORY[0x1E69E7CC0];
    *(v67 + v93) = MEMORY[0x1E69E7CC0];
    v95 = v67;
    v96 = v111;
    outlined init with take of ToolDescription(v95, v111, type metadata accessor for CompletePromptRequest);
    TokenGenerator.handleCompletePromptRequest(request:tools:)(v96, v94, v129);

    outlined destroy of ToolType(v96, type metadata accessor for CompletePromptRequest);
    (v124)(v118, v144);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    result = *v129;
    v97 = v129[1];
    *v89 = v129[0];
    v89[1] = v97;
  }

  return result;
}

double TokenGenerator.complete(prompt:parameters:schemaIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v110 = a5;
  v113 = a4;
  v105 = a3;
  v101 = a1;
  v112 = type metadata accessor for ToolChoice();
  v6 = *(v112 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v96 - v10;
  v104 = type metadata accessor for CompletePromptRequest(0);
  v11 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v122 = (&v96 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v103 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v96 - v26;
  v27 = type metadata accessor for Prompt();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v96 - v32;
  v123 = type metadata accessor for PromptVariant();
  v117 = *(v123 - 8);
  v34 = v117[8];
  MEMORY[0x1EEE9AC00](v123);
  v100 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v124 = &v96 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v120 = &v96 - v39;
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a2 + 176);
  v149 = *(a2 + 160);
  v150 = v45;
  v151 = *(a2 + 192);
  v152 = *(a2 + 208);
  v46 = *(a2 + 112);
  v145 = *(a2 + 96);
  v146 = v46;
  v47 = *(a2 + 144);
  v147 = *(a2 + 128);
  v148 = v47;
  v48 = *(a2 + 48);
  v141 = *(a2 + 32);
  v142 = v48;
  v49 = *(a2 + 80);
  v143 = *(a2 + 64);
  v144 = v49;
  v50 = *(a2 + 16);
  v139 = *a2;
  v140 = v50;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v116 = v51;
  (*(v41 + 8))(v44, v40);
  v115 = 0x80000001ABA42C00;
  v114 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v108 = v28;
  v52 = *(v28 + 16);
  v99 = v33;
  v53 = v101;
  v118 = v27;
  v52(v33, v101, v27);
  v98 = v52;
  PromptVariant.init(_:)();
  v54 = v119;
  (*(v6 + 56))(v119, 1, 1, v112);
  v55 = v122;
  v56 = v113;
  *v122 = v105;
  v55[1] = v56;
  v57 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  v58 = v111;
  v52(v111, v53, v27);
  v105 = v117[2];
  v59 = v123;
  v60 = v104;
  v105(v124, v120, v123);
  v61 = v55;
  v62 = v6;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, v121, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v63 = v102;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v102, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(&v139, v153);
  v64 = v106;
  XPCDictionary.init()();
  v65 = v99;
  v98(v99, v58, v118);
  v66 = v112;
  v67 = specialized PromptEnvelope.init(sealing:xpcData:)(v65, v64);
  v68 = (v64 + v60[5]);
  *v68 = v67;
  v68[1] = v69;
  v68[2] = v70;
  v68[3] = v71;
  v72 = v100;
  v105(v100, v124, v59);
  v73 = v103;
  PromptVariantEnvelope.init(sealing:xpcData:)(v72, v64, v64 + v60[6]);
  v135 = v149;
  v136 = v150;
  v137 = v151;
  v138 = v152;
  v131 = v145;
  v132 = v146;
  v133 = v147;
  v134 = v148;
  v127 = v141;
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v125 = v139;
  v126 = v140;
  SamplingParametersEnvelope.init(sealing:)(&v125, v153);
  v74 = v64 + v60[7];
  v75 = v153[11];
  *(v74 + 160) = v153[10];
  *(v74 + 176) = v75;
  *(v74 + 192) = v153[12];
  *(v74 + 208) = v154;
  v76 = v153[7];
  *(v74 + 96) = v153[6];
  *(v74 + 112) = v76;
  v77 = v153[9];
  *(v74 + 128) = v153[8];
  *(v74 + 144) = v77;
  v78 = v153[3];
  *(v74 + 32) = v153[2];
  *(v74 + 48) = v78;
  v79 = v153[5];
  *(v74 + 64) = v153[4];
  *(v74 + 80) = v79;
  v80 = v153[1];
  *v74 = v153[0];
  *(v74 + 16) = v80;
  v81 = v60;
  *(v64 + v60[9]) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v73, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  if ((*(v62 + 48))(v73, 1, v66) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v82 = v124;
    v124 = v117[1];
    (v124)(v82, v123);
    (*(v108 + 8))(v111, v118);
    v83 = xmmword_1ABA26F10;
  }

  else
  {
    v84 = v96;
    (*(v62 + 32))(v96, v73, v66);
    v85 = v97;
    (*(v62 + 16))(v97, v84, v66);
    ToolChoiceEnvelope.init(sealing:)(v85, &v125);
    (*(v62 + 8))(v84, v66);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v86 = v124;
    v124 = v117[1];
    (v124)(v86, v123);
    (*(v108 + 8))(v111, v118);
    v83 = v125;
  }

  v87 = v64;
  *(v64 + v81[10]) = v83;
  swift_bridgeObjectRelease_n();
  v88 = (v64 + v81[12]);
  v89 = v115;
  v90 = v116;
  *v88 = v107;
  v88[1] = v90;
  v88[2] = 0xD00000000000002DLL;
  v88[3] = v89;
  v88[4] = 0;
  v88[5] = 0;
  v88[6] = v114;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v121, v87 + v81[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v91 = MEMORY[0x1E69E7CC0];
  *(v87 + v81[11]) = MEMORY[0x1E69E7CC0];
  v92 = v109;
  outlined init with take of ToolDescription(v87, v109, type metadata accessor for CompletePromptRequest);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v92, v91, &v125);

  outlined destroy of ToolType(v92, type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v122, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v119, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  (v124)(v120, v123);
  result = *&v125;
  v94 = v126;
  v95 = v110;
  *v110 = v125;
  v95[1] = v94;
  return result;
}

uint64_t TokenGenerator.complete(prompt:parameters:tools:toolChoice:documents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v195 = a1;
  v188 = a5;
  v180 = a4;
  v204 = a3;
  v187 = a6;
  v206 = type metadata accessor for FunctionDescription(0);
  v7 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v205 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v209 = &v175 - v10;
  v208 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  v11 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208);
  v213 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = type metadata accessor for ToolType(0);
  v13 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207);
  v216 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v219 = &v175 - v16;
  v17 = type metadata accessor for ToolDescription(0);
  v215 = *(v17 - 8);
  v18 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v177 = (&v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v218 = &v175 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v217 = &v175 - v23;
  v24 = type metadata accessor for ToolDescriptionEnvelope(0);
  v212 = *(v24 - 8);
  v25 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v214 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ToolChoice();
  v185 = *(v27 - 8);
  v186 = v27;
  v28 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v176 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v175 = &v175 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v184 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v175 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v193 = &v175 - v40;
  v41 = type metadata accessor for PromptVariant();
  v191 = *(v41 - 8);
  v192 = v41;
  v42 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v179 = &v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v202 = &v175 - v45;
  v227 = type metadata accessor for GenerationSchema();
  v252 = *(v227 - 1);
  v46 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v226 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for Schema();
  v48 = *(v229 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v228 = &v175 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for AnyTooling();
  v233 = *(v225 - 8);
  v51 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v224 = &v175 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for ToolType();
  v53 = *(v230 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v211 = &v175 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v210 = &v175 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v175 - v59;
  v61 = type metadata accessor for Prompt();
  v189 = *(v61 - 8);
  v190 = v61;
  v62 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v178 = &v175 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v203 = &v175 - v65;
  v201 = type metadata accessor for CompletePromptRequest(0);
  v66 = *(*(v201 - 1) + 64);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v175 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v183 = &v175 - v69;
  v70 = type metadata accessor for UUID();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v175 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a2 + 176);
  v248 = *(a2 + 160);
  v249 = v75;
  v250 = *(a2 + 192);
  v251 = *(a2 + 208);
  v76 = *(a2 + 112);
  v244 = *(a2 + 96);
  v245 = v76;
  v77 = *(a2 + 144);
  v246 = *(a2 + 128);
  v247 = v77;
  v78 = *(a2 + 48);
  v240 = *(a2 + 32);
  v241 = v78;
  v79 = *(a2 + 80);
  v242 = *(a2 + 64);
  v243 = v79;
  v80 = *(a2 + 16);
  v238 = *a2;
  v239 = v80;
  UUID.init()();
  v182 = UUID.uuidString.getter();
  v198 = v81;
  (*(v71 + 8))(v74, v70);
  v82 = v204;
  v197 = 0x80000001ABA42C30;
  v83 = MEMORY[0x1E69E7CC0];
  v196 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v84 = *(v82 + 16);
  v231 = v53;
  v199 = v37;
  v181 = v48;
  if (v84)
  {
    *&v236[0] = v83;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
    v83 = *&v236[0];
    v85 = v82 + ((*(v233 + 80) + 32) & ~*(v233 + 80));
    v223 = *(v233 + 72);
    v221 = (v48 + 8);
    v222 = (v252 + 16);
    v220 = v53 + 32;
    v86 = v60;
    v87 = v226;
    do
    {
      v252 = v84;
      v88 = v224;
      outlined init with copy of ToolDescription(v85, v224, type metadata accessor for AnyTooling);
      v89 = *v88;
      v90 = *(v88 + 1);
      v91 = *(v88 + 3);
      v232 = *(v88 + 2);
      v233 = v89;
      (*v222)(v87, &v88[*(v225 + 24)], v227);
      v92 = v83;
      v93 = v228;
      Schema.init(type:)();
      static ToolType.function(name:description:parameters:)();
      v94 = v93;
      v83 = v92;
      (*v221)(v94, v229);
      outlined destroy of ToolType(v88, type metadata accessor for AnyTooling);
      *&v236[0] = v92;
      v96 = *(v92 + 2);
      v95 = *(v92 + 3);
      if (v96 >= v95 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v95 > 1, v96 + 1, 1);
        v83 = *&v236[0];
      }

      *(v83 + 2) = v96 + 1;
      (*(v231 + 32))(&v83[((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v96], v86, v230);
      v85 += v223;
      v84 = v252 - 1;
    }

    while (v252 != 1);
    v37 = v199;
  }

  v97 = v203;
  v99 = v194;
  v98 = v195;
  PromptVariant.tgPrompt.getter();
  if (v99)
  {
  }

  else
  {
    v225 = 0;
    v252 = *(v191 + 16);
    v226 = v83;
    v101 = v192;
    (v252)(v202, v98, v192);
    v102 = type metadata accessor for Constraints(0);
    (*(*(v102 - 8) + 56))(v193, 1, 1, v102);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v180, v37, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    outlined init with copy of SamplingParameters(&v238, v236);
    v103 = v200;
    XPCDictionary.init()();
    v104 = v178;
    (*(v189 + 16))(v178, v97, v190);
    v105 = specialized PromptEnvelope.init(sealing:xpcData:)(v104, v103);
    v106 = v201;
    v107 = (v103 + v201[5]);
    *v107 = v105;
    v107[1] = v108;
    v107[2] = v109;
    v107[3] = v110;
    v111 = v179;
    v112 = v226;
    (v252)(v179, v202, v101);
    PromptVariantEnvelope.init(sealing:xpcData:)(v111, v103, v103 + v106[6]);
    v234[10] = v248;
    v234[11] = v249;
    v234[12] = v250;
    v235 = v251;
    v234[6] = v244;
    v234[7] = v245;
    v234[8] = v246;
    v234[9] = v247;
    v234[2] = v240;
    v234[3] = v241;
    v234[4] = v242;
    v234[5] = v243;
    v234[0] = v238;
    v234[1] = v239;
    SamplingParametersEnvelope.init(sealing:)(v234, v236);
    v113 = v103 + v106[7];
    v114 = v236[5];
    *(v113 + 64) = v236[4];
    *(v113 + 80) = v114;
    v115 = v236[3];
    *(v113 + 32) = v236[2];
    *(v113 + 48) = v115;
    v116 = v236[9];
    *(v113 + 128) = v236[8];
    *(v113 + 144) = v116;
    v117 = v236[7];
    *(v113 + 96) = v236[6];
    *(v113 + 112) = v117;
    *(v113 + 208) = v237;
    v118 = v236[12];
    *(v113 + 176) = v236[11];
    *(v113 + 192) = v118;
    *(v113 + 160) = v236[10];
    v119 = v236[1];
    *v113 = v236[0];
    *(v113 + 16) = v119;
    v120 = *(v112 + 2);
    if (v120)
    {
      *&v234[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 0);
      v121 = *&v234[0];
      v122 = *(v231 + 16);
      v123 = &v112[(*(v231 + 80) + 32) & ~*(v231 + 80)];
      v232 = *(v231 + 72);
      v233 = v122;
      v227 = (v231 + 8);
      v124 = v177;
      v231 += 16;
      v125 = v210;
      do
      {
        v252 = v120;
        v126 = v230;
        v127 = v233;
        (v233)(v125, v123, v230);
        v128 = v121;
        v129 = v211;
        v127(v211, v125, v126);
        v130 = v129;
        v121 = v128;
        ToolDescription.init(toolType:)(v130, v124);
        (*v227)(v125, v126);
        *&v234[0] = v128;
        v132 = *(v128 + 16);
        v131 = *(v128 + 24);
        if (v132 >= v131 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v131 > 1, v132 + 1, 1);
          v121 = *&v234[0];
        }

        *(v121 + 16) = v132 + 1;
        outlined init with take of ToolDescription(v124, v121 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v132, type metadata accessor for ToolDescription);
        v123 = v232 + v123;
        v120 = v252 - 1;
      }

      while (v252 != 1);
    }

    else
    {

      v121 = MEMORY[0x1E69E7CC0];
    }

    v133 = *(v121 + 16);
    v134 = v181;
    if (v133)
    {
      *&v234[0] = MEMORY[0x1E69E7CC0];
      v135 = v215;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133, 0);
      v136 = *&v234[0];
      v137 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v230 = v121;
      v138 = v121 + v137;
      v252 = *(v135 + 72);
      v231 = v134 + 8;
      v232 = (v134 + 16);
      do
      {
        v139 = v217;
        outlined init with copy of ToolDescription(v138, v217, type metadata accessor for ToolDescription);
        v140 = v139;
        v141 = v218;
        outlined init with copy of ToolDescription(v140, v218, type metadata accessor for ToolDescription);
        v142 = v141;
        v143 = v219;
        outlined init with copy of ToolDescription(v142, v219, type metadata accessor for ToolType);
        outlined init with copy of ToolDescription(v143, v216, type metadata accessor for ToolType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            outlined destroy of ToolType(v219, type metadata accessor for ToolType);
            outlined destroy of ToolType(v218, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v217, type metadata accessor for ToolDescription);
            v146 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of ToolType(v219, type metadata accessor for ToolType);
            outlined destroy of ToolType(v218, type metadata accessor for ToolDescription);
            outlined destroy of ToolType(v217, type metadata accessor for ToolDescription);
            v146 = type metadata accessor for ImageGenerationParameters();
          }

          v145 = v213;
          (*(*(v146 - 8) + 32))(v213, v216, v146);
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v147 = v209;
          outlined init with take of ToolDescription(v216, v209, type metadata accessor for FunctionDescription);
          v148 = v205;
          outlined init with copy of ToolDescription(v147, v205, type metadata accessor for FunctionDescription);
          v149 = *v148;
          v233 = *(v148 + 1);
          v150 = v233;
          v151 = v213;
          *v213 = v149;
          v151[1] = v150;
          v152 = *(v148 + 3);
          v151[2] = *(v148 + 2);
          v151[3] = v152;
          v153 = v228;
          (*v232)(v228, &v148[*(v206 + 24)], v229);
          v154 = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

          Schema.type.getter();
          (*v231)(v153, v229);
          outlined destroy of ToolType(v148, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v209, type metadata accessor for FunctionDescription);
          outlined destroy of ToolType(v219, type metadata accessor for ToolType);
          outlined destroy of ToolType(v218, type metadata accessor for ToolDescription);
          v145 = v151;
          outlined destroy of ToolType(v217, type metadata accessor for ToolDescription);
        }

        else
        {
          outlined destroy of ToolType(v219, type metadata accessor for ToolType);
          outlined destroy of ToolType(v218, type metadata accessor for ToolDescription);
          outlined destroy of ToolType(v217, type metadata accessor for ToolDescription);
          v145 = v213;
        }

        swift_storeEnumTagMultiPayload();
        v155 = v145;
        v156 = v214;
        outlined init with take of ToolDescription(v155, v214, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        *&v234[0] = v136;
        v158 = *(v136 + 16);
        v157 = *(v136 + 24);
        if (v158 >= v157 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v157 > 1, v158 + 1, 1);
          v156 = v214;
          v136 = *&v234[0];
        }

        *(v136 + 16) = v158 + 1;
        outlined init with take of ToolDescription(v156, v136 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v158, type metadata accessor for ToolDescriptionEnvelope);
        v138 += v252;
        --v133;
      }

      while (v133);
    }

    else
    {

      v136 = MEMORY[0x1E69E7CC0];
    }

    *&v200[v201[9]] = v136;
    v159 = v199;
    v160 = v184;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v199, v184, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v162 = v185;
    v161 = v186;
    v163 = (*(v185 + 48))(v160, 1, v186);
    v164 = v204;
    if (v163 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v159, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v191 + 8))(v202, v192);
      (*(v189 + 8))(v203, v190);
      v165 = xmmword_1ABA26F10;
    }

    else
    {
      v166 = v175;
      (*(v162 + 32))(v175, v160, v161);
      v167 = v176;
      (*(v162 + 16))(v176, v166, v161);
      ToolChoiceEnvelope.init(sealing:)(v167, v234);
      (*(v162 + 8))(v166, v161);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v159, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
      (*(v191 + 8))(v202, v192);
      (*(v189 + 8))(v203, v190);
      v165 = v234[0];
    }

    v169 = v182;
    v168 = v183;
    v171 = v197;
    v170 = v198;
    v173 = v200;
    v172 = v201;
    *&v200[v201[10]] = v165;
    swift_bridgeObjectRelease_n();
    v174 = (v173 + v172[12]);
    *v174 = v169;
    v174[1] = v170;
    v174[2] = 0xD000000000000037;
    v174[3] = v171;
    v174[4] = 0;
    v174[5] = 0;
    v174[6] = v196;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v193, v173 + v172[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v173 + v172[11]) = v188;
    outlined init with take of ToolDescription(v173, v168, type metadata accessor for CompletePromptRequest);

    TokenGenerator.handleCompletePromptRequest(request:tools:)(v168, v164, v187);
    return outlined destroy of ToolType(v168, type metadata accessor for CompletePromptRequest);
  }
}

uint64_t TokenGenerator.imageTokenizationRecommendations()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UUID();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.imageTokenizationRecommendations(), 0, 0);
}

uint64_t TokenGenerator.imageTokenizationRecommendations()()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v0[17] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[18] = v7;
  v0[2] = v4;
  v0[3] = v6;
  v0[4] = 0xD000000000000022;
  v0[5] = 0x80000001ABA42C70;
  v0[6] = 0;
  v0[7] = 0;
  v0[8] = v7;
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = TokenGenerator.imageTokenizationRecommendations();
  v9 = v0[13];

  return TokenGenerator.fetchTokenizerMetadata(requestMetadata:)((v0 + 9), v0 + 2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = TokenGenerator.imageTokenizationRecommendations();
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);

    v4 = TokenGenerator.imageTokenizationRecommendations();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  *v2 = *(v0 + 72);
  *(v2 + 16) = v3;

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t TokenGenerator.fetchTokenizerMetadata(requestMetadata:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v5 = type metadata accessor for OneShotRequest(0);
  *(v3 + 80) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v3 + 96) = v7;
  v8 = *(v7 - 8);
  *(v3 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v3 + 112) = v10;
  *(v3 + 120) = v11;
  *(v3 + 128) = *(a2 + 1);
  *(v3 + 144) = a2[3];
  *(v3 + 152) = *(a2 + 2);
  *(v3 + 168) = a2[6];

  return MEMORY[0x1EEE6DFA0](TokenGenerator.fetchTokenizerMetadata(requestMetadata:), 0, 0);
}

uint64_t TokenGenerator.fetchTokenizerMetadata(requestMetadata:)()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[16];

  if (v1)
  {
    v5 = v0[19];
    v6 = v1;
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    UUID.init()();
    v7 = UUID.uuidString.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
    v6 = v0[20];
    v2 = v0[21];
    v3 = v0[18];
    v5 = v0[19];
    v4 = v0[16];
  }

  v0[22] = v8;
  v13 = v0[17];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[9];
  *v14 = v0[15];
  v14[1] = v4;
  v14[2] = v13;
  v14[3] = v3;
  v14[4] = v5;
  v14[5] = v6;
  v14[6] = v2;
  swift_storeEnumTagMultiPayload();
  v17 = *(v16 + 128);
  __swift_project_boxed_opaque_existential_1((v16 + 104), v17);

  v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15TokenGeneration16ModelCatalogStubV8AssetKeyV_Tt0g5Tf4g_n(&outlined read-only object #0 of TokenGenerator.fetchTokenizerMetadata(requestMetadata:));
  v0[23] = v18;
  outlined destroy of ModelCatalogStub.AssetKey(&unk_1F2062C68);
  v19 = swift_task_alloc();
  v0[24] = v19;
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse();
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse();
  *v19 = v0;
  v19[1] = TokenGenerator.fetchTokenizerMetadata(requestMetadata:);
  v20 = v0[11];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)((v0 + 2), v7, v8, v20, v18, &type metadata for FetchTokenizerMetadataResponse, v17, &type metadata for FetchTokenizerMetadataResponse);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);

  if (v0)
  {
    v7 = TokenGenerator.fetchTokenizerMetadata(requestMetadata:);
  }

  else
  {
    v7 = TokenGenerator.fetchTokenizerMetadata(requestMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v20 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.generator);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v0[5] = v2;
    v0[6] = v1;
    v0[7] = v3;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AB828000, v5, v6, "Fetched tokenizer metadata: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1AC5A6CD0](v10, -1, -1);
    MEMORY[0x1AC5A6CD0](v9, -1, -1);
  }

  else
  {
  }

  outlined destroy of ToolType(v8, type metadata accessor for OneShotRequest);
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];
  *v16 = v2;
  v16[1] = v1;
  v16[2] = v3;

  v17 = v0[1];

  return v17();
}

{
  outlined destroy of ToolType(v0[11], type metadata accessor for OneShotRequest);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  MEMORY[0x1AC5A6AE0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1AC5A6AE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1AB828000, v3, v4, "Failed to fetch tokenizer metadata. %@", v6, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  v9 = v0[25];
  v10 = v0[14];
  v11 = v0[11];

  swift_willThrow();

  v12 = v0[1];
  v13 = v0[25];

  return v12();
}

uint64_t closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[74] = a7;
  v7[73] = a6;
  v7[72] = a5;
  v7[71] = a4;
  v7[70] = a3;
  v7[69] = a2;
  v7[68] = a1;
  v8 = type metadata accessor for OneShotRequest(0);
  v7[75] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[76] = swift_task_alloc();
  v10 = type metadata accessor for CompletePromptResponse(0);
  v7[77] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[78] = swift_task_alloc();
  v12 = type metadata accessor for CompletePromptRequest(0);
  v7[79] = v12;
  v13 = *(v12 - 8);
  v7[80] = v13;
  v14 = *(v13 + 64) + 15;
  v7[81] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR) - 8) + 64) + 15;
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR) - 8) + 64) + 15;
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:), 0, 0);
}

uint64_t closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 688);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  outlined init with copy of ToolDescription(*(v0 + 552), v1, type metadata accessor for CompletePromptRequest);
  (*(v4 + 56))(v1, 0, 1, v5);
  v6 = type metadata accessor for PromptCompletion(0);
  *(v0 + 720) = v6;
  v7 = *(v6 - 8);
  *(v0 + 728) = v7;
  v8 = *(v7 + 56);
  *(v0 + 736) = v8;
  *(v0 + 744) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v3, 1, 1, v6);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, v2, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v9 = *(v4 + 48);
  *(v0 + 752) = v9;
  if (v9(v2, 1, v5) == 1)
  {
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v12 = *(v0 + 688);
    v13 = *(v0 + 680);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 704), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, v13, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
    v14 = *(v10 + 48);
    result = v14(v13, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 720);
      v17 = *(v0 + 688);
      v18 = *(v0 + 680);
      v19 = *(v0 + 656);
      specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(*(v0 + 560), *(v0 + 552), v18, 0);
      outlined destroy of ToolType(v18, type metadata accessor for PromptCompletion);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v19, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
      result = v14(v19, 1, v16);
      if (result != 1)
      {
        v20 = *(v0 + 712);
        v21 = *(v0 + 704);
        v22 = *(v0 + 696);
        v23 = *(v0 + 680);
        v24 = *(v0 + 672);
        v25 = *(v0 + 664);
        v26 = *(v0 + 656);
        v41 = *(v0 + 648);
        v42 = *(v0 + 624);
        v44 = *(v0 + 608);
        v27 = *(v0 + 544);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 688), &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
        outlined init with take of ToolDescription(v26, v27, type metadata accessor for PromptCompletion);

        v28 = *(v0 + 8);

        return v28();
      }
    }

    __break(1u);
    return result;
  }

  v29 = *(v0 + 560);
  v30 = *(v0 + 648);
  v31 = *(v0 + 608);
  v32 = *(v0 + 600);
  outlined init with take of ToolDescription(*(v0 + 704), v30, type metadata accessor for CompletePromptRequest);
  v33 = *(v29 + 128);
  __swift_project_boxed_opaque_existential_1((v29 + 104), v33);
  outlined init with copy of ToolDescription(v30, v31, type metadata accessor for CompletePromptRequest);
  swift_storeEnumTagMultiPayload();
  v34 = swift_task_alloc();
  *(v0 + 760) = v34;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  *v34 = v0;
  v34[1] = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  v35 = *(v0 + 616);
  v36 = *(v0 + 608);
  v37 = *(v0 + 584);
  v38 = *(v0 + 576);
  v39 = *(v0 + 568);
  v40 = *(v0 + 624);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v40, v39, v38, v36, v37, v35, v33, v35);
}

{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v6 = *v1;
  *(*v1 + 768) = v0;

  outlined destroy of ToolType(*(v2 + 608), type metadata accessor for OneShotRequest);
  if (v0)
  {
    v4 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    v4 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 688);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 624);
  v10 = v8[1];
  v9 = v8[2];
  *(v0 + 192) = *v8;
  *(v0 + 208) = v10;
  *(v0 + 224) = v9;
  v11 = v8[6];
  v13 = v8[3];
  v12 = v8[4];
  *(v0 + 272) = v8[5];
  *(v0 + 288) = v11;
  *(v0 + 240) = v13;
  *(v0 + 256) = v12;
  v14 = v8[10];
  v16 = v8[7];
  v15 = v8[8];
  *(v0 + 336) = v8[9];
  *(v0 + 352) = v14;
  *(v0 + 304) = v16;
  *(v0 + 320) = v15;
  v32 = v8[8];
  v33 = v8[9];
  v34 = v8[10];
  v28 = v8[4];
  v29 = v8[5];
  v30 = v8[6];
  v31 = v8[7];
  v24 = *v8;
  v25 = v8[1];
  v26 = v8[2];
  v27 = v8[3];
  outlined init with copy of PromptCompletionEnvelope(v0 + 192, v0 + 368);
  PromptCompletionEnvelope.unseal()(v6);
  outlined destroy of ToolType(v8, type metadata accessor for CompletePromptResponse);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  *(v0 + 144) = v32;
  *(v0 + 160) = v33;
  *(v0 + 176) = v34;
  *(v0 + 80) = v28;
  *(v0 + 96) = v29;
  *(v0 + 112) = v30;
  *(v0 + 128) = v31;
  *(v0 + 16) = v24;
  *(v0 + 32) = v25;
  *(v0 + 48) = v26;
  *(v0 + 64) = v27;
  outlined destroy of PromptCompletionEnvelope(v0 + 16);
  v2(v6, 0, 1, v4);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v5, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, v7, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  result = (*(v3 + 48))(v7, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 776) = v18;
    *v18 = v0;
    v18[1] = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
    v19 = *(v0 + 696);
    v20 = *(v0 + 664);
    v21 = *(v0 + 648);
    v22 = *(v0 + 592);
    v23 = *(v0 + 560);

    return TokenGenerator.nextRequest(for:invoking:previousRequest:)(v19, v20, v22, v21);
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v6 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    outlined destroy of ToolType(*(v2 + 664), type metadata accessor for PromptCompletion);
    v4 = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 752);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 632);
  v6 = *(v0 + 640) + 48;
  outlined destroy of ToolType(*(v0 + 648), type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v4, v2, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, v3, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  if (v1(v3, 1, v5) == 1)
  {
    v7 = *(v0 + 728);
    v8 = *(v0 + 720);
    v9 = *(v0 + 688);
    v10 = *(v0 + 680);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 704), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v10, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
    v11 = *(v7 + 48);
    result = v11(v10, 1, v8);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 720);
      v14 = *(v0 + 688);
      v15 = *(v0 + 680);
      v16 = *(v0 + 656);
      specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(*(v0 + 560), *(v0 + 552), v15, 0);
      outlined destroy of ToolType(v15, type metadata accessor for PromptCompletion);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v16, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
      result = v11(v16, 1, v13);
      if (result != 1)
      {
        v17 = *(v0 + 712);
        v18 = *(v0 + 704);
        v19 = *(v0 + 696);
        v20 = *(v0 + 680);
        v21 = *(v0 + 672);
        v22 = *(v0 + 664);
        v23 = *(v0 + 656);
        v38 = *(v0 + 648);
        v39 = *(v0 + 624);
        v41 = *(v0 + 608);
        v24 = *(v0 + 544);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 688), &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
        outlined init with take of ToolDescription(v23, v24, type metadata accessor for PromptCompletion);

        v25 = *(v0 + 8);

        return v25();
      }
    }

    __break(1u);
    return result;
  }

  v26 = *(v0 + 648);
  v27 = *(v0 + 608);
  v28 = *(v0 + 600);
  v29 = *(v0 + 560);
  outlined init with take of ToolDescription(*(v0 + 704), v26, type metadata accessor for CompletePromptRequest);
  v30 = *(v29 + 128);
  __swift_project_boxed_opaque_existential_1((v29 + 104), v30);
  outlined init with copy of ToolDescription(v26, v27, type metadata accessor for CompletePromptRequest);
  swift_storeEnumTagMultiPayload();
  v31 = swift_task_alloc();
  *(v0 + 760) = v31;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse);
  *v31 = v0;
  v31[1] = closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  v32 = *(v0 + 616);
  v33 = *(v0 + 608);
  v34 = *(v0 + 584);
  v35 = *(v0 + 576);
  v36 = *(v0 + 568);
  v37 = *(v0 + 624);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v37, v36, v35, v33, v34, v32, v30, v32);
}

{
  v1 = v0[89];
  v2 = v0[86];
  outlined destroy of ToolType(v0[81], type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[85];
  v8 = v0[84];
  v9 = v0[83];
  v10 = v0[82];
  v11 = v0[81];
  v12 = v0[78];
  v15 = v0[76];
  v16 = v0[96];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[89];
  v2 = v0[86];
  v3 = v0[83];
  outlined destroy of ToolType(v0[81], type metadata accessor for CompletePromptRequest);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined destroy of ToolType(v3, type metadata accessor for PromptCompletion);
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[82];
  v12 = v0[81];
  v13 = v0[78];
  v16 = v0[76];
  v17 = v0[98];

  v14 = v0[1];

  return v14();
}

uint64_t TokenGenerator.nextRequest(for:invoking:previousRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for Prompt();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = type metadata accessor for Prompt.ToolCallResult();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = type metadata accessor for Prompt.Turn();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v15 = type metadata accessor for CompletePromptRequest(0);
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.nextRequest(for:invoking:previousRequest:), 0, 0);
}

uint64_t TokenGenerator.nextRequest(for:invoking:previousRequest:)()
{
  v1 = *(v0[3] + 32);
  if (v1[2])
  {
    v2 = v0[4];
    v0[21] = v1[4];
    v3 = v1[5];
    v0[22] = v3;
    v0[23] = v1[6];
    v4 = v1[7];
    v0[24] = v4;
    v5 = v1[8];
    v0[25] = v5;
    v6 = v1[9];
    v0[26] = v6;
    v7 = v1[10];
    v0[27] = v7;
    if (*(v2 + 16) && *(v3 + 16))
    {

      outlined copy of FinishReason(v4, v5);
      outlined copy of Data._Representation(v6, v7);
      v8 = swift_task_alloc();
      v0[28] = v8;
      *v8 = v0;
      v8[1] = TokenGenerator.nextRequest(for:invoking:previousRequest:);
      v9 = v0[4];

      return specialized TokenGenerator.invoke(tooling:calls:)(v9, v3);
    }

    (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);
  }

  else
  {
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.generator);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AB828000, v12, v13, "Response was missing candidates", v14, 2u);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
    }

    v15 = v0[18];
    v16 = v0[19];
    v17 = v0[2];

    (*(v16 + 56))(v17, 1, 1, v15);
  }

  v18 = v0[20];
  v19 = v0[16];
  v20 = v0[17];
  v21 = v0[13];
  v23 = v0[9];
  v22 = v0[10];
  v24 = v0[6];

  v25 = v0[1];

  return v25();
}

{
  v1 = v0[29];
  if (*(v1 + 16))
  {
    v2 = v0[22];
    v3 = v0[17];
    outlined init with copy of ToolDescription(v0[5], v0[20], type metadata accessor for CompletePromptRequest);
    static Prompt.Turn.toolCalls(_:)();
    v4 = *(v1 + 16);
    v5 = v0[29];
    v6 = v0[15];
    if (v4)
    {
      v7 = v0[12];
      v93 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v8 = v93;
      v9 = *(v7 + 16);
      v7 += 16;
      v10 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
      v86 = *(v7 + 56);
      v88 = v9;
      v11 = (v7 - 8);
      do
      {
        v12 = v0[16];
        v13 = v0[13];
        v14 = v0[11];
        v88(v13, v10, v14);
        static Prompt.Turn.toolCallResult(_:)();
        (*v11)(v13, v14);
        v16 = *(v93 + 16);
        v15 = *(v93 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        }

        v17 = v0[16];
        v18 = v0[14];
        *(v93 + 16) = v16 + 1;
        v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        (*(v6 + 32))(v93 + v19 + *(v6 + 72) * v16, v17, v18);
        v10 += v86;
        --v4;
      }

      while (v4);
      v20 = v0[29];
    }

    else
    {
      v34 = v0[29];

      v35 = *(v6 + 72);
      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = MEMORY[0x1E69E7CC0];
    }

    v85 = v0[27];
    v83 = v0[25];
    v84 = v0[26];
    v81 = v0[23];
    v82 = v0[24];
    v79 = v0[21];
    v80 = v0[22];
    v76 = v0[20];
    v36 = v0[18];
    v90 = v0[19];
    v75 = v36;
    v37 = v0[17];
    v38 = v0[15];
    v77 = v37;
    v78 = v38;
    v92 = v0[14];
    v39 = v0[10];
    v73 = v0[7];
    v74 = v0[9];
    v40 = v0[6];
    v71 = v0[5];
    v72 = v0[8];
    v87 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1ABA1D930;
    (*(v38 + 16))(v41 + v19, v37, v92);
    specialized Array.append<A>(contentsOf:)(v8);
    v42 = v41;
    v43 = (v71 + *(v36 + 20));
    v44 = v43[1];
    v70 = *v43;
    v45 = v43[2];
    v46 = v43[3];
    v47 = type metadata accessor for XPCDictionary();
    v48 = *(v47 - 8);
    (*(v48 + 16))(v40, v71, v47);
    (*(v48 + 56))(v40, 0, 1, v47);
    PromptEnvelope.unseal(_:)(v40, v70, v44, v45, v46, v39);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v40, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    Prompt.turns()();
    v49 = *(v72 + 8);
    v49(v39, v73);
    specialized Array.append<A>(contentsOf:)(v42);
    static Prompt.transcript(turns:)();

    (*(v72 + 16))(v74, v39, v73);
    v50 = specialized PromptEnvelope.init(sealing:xpcData:)(v74, v76);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    outlined consume of FinishReason(v82, v83);
    outlined consume of Data._Representation(v84, v85);
    v49(v39, v73);
    (*(v78 + 8))(v77, v92);
    v57 = (v76 + *(v75 + 20));
    v58 = v57[1];

    v59 = v57[2];

    v60 = v57[3];

    *v57 = v50;
    v57[1] = v52;
    v57[2] = v54;
    v57[3] = v56;
    outlined init with take of ToolDescription(v76, v87, type metadata accessor for CompletePromptRequest);
    (*(v90 + 56))(v87, 0, 1, v75);
  }

  else
  {
    v21 = v0[29];

    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.generator);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1AB828000, v23, v24, "Tools produced no results, exiting model call loop.", v25, 2u);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
    }

    v26 = v0[26];
    v28 = v0[24];
    v27 = v0[25];
    v30 = v0[22];
    v29 = v0[23];
    v31 = v0[21];
    v32 = v0[19];
    v89 = v0[27];
    v91 = v0[18];
    v33 = v0[2];

    outlined consume of FinishReason(v28, v27);
    outlined consume of Data._Representation(v26, v89);
    (*(v32 + 56))(v33, 1, 1, v91);
  }

  v61 = v0[20];
  v62 = v0[16];
  v63 = v0[17];
  v64 = v0[13];
  v66 = v0[9];
  v65 = v0[10];
  v67 = v0[6];

  v68 = v0[1];

  return v68();
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[9];
  v17 = v0[6];

  outlined consume of FinishReason(v4, v3);
  outlined consume of Data._Representation(v1, v2);

  v11 = v0[1];
  v12 = v0[30];

  return v11();
}

uint64_t TokenGenerator.nextRequest(for:invoking:previousRequest:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = TokenGenerator.nextRequest(for:invoking:previousRequest:);
  }

  else
  {
    v5 = TokenGenerator.nextRequest(for:invoking:previousRequest:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a5;
  v26 = a8;
  v27 = a9;
  v16 = type metadata accessor for CompletePromptRequest(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ToolDescription(a10, v19, type metadata accessor for CompletePromptRequest);
  v20 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v22 = v26;
  v21[6] = v25;
  v21[7] = a6;
  v21[8] = a7;
  v21[9] = v22;
  outlined init with take of ToolDescription(v19, v21 + v20, type metadata accessor for CompletePromptRequest);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  return AsyncThrowingStream.init<>(unfolding:)();
}

uint64_t closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v8[63] = v25;
  v8[64] = v26;
  v8[61] = a7;
  v8[62] = a8;
  v8[59] = a5;
  v8[60] = a6;
  v8[57] = a1;
  v8[58] = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR) - 8) + 64) + 15;
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v10 = type metadata accessor for PromptCompletion(0);
  v8[67] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration29CompletePromptResponseElementVSgMd, &_s15TokenGeneration29CompletePromptResponseElementVSgMR) - 8) + 64) + 15;
  v8[70] = swift_task_alloc();
  v13 = type metadata accessor for StreamingRequest(0);
  v8[71] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[72] = swift_task_alloc();
  v15 = type metadata accessor for PromptCompletion.Aggregator(0);
  v8[73] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR) - 8) + 64) + 15;
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v18 = type metadata accessor for CompletePromptRequest(0);
  v8[80] = v18;
  v19 = *(v18 - 8);
  v8[81] = v19;
  v20 = *(v19 + 64) + 15;
  v8[82] = swift_task_alloc();
  v8[83] = swift_projectBox();
  v8[84] = swift_projectBox();
  v21 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:), 0, 0);
}

uint64_t closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)()
{
  v103 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 464);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, v5, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  v8 = *(v3 + 48);
  v7 = v3 + 48;
  *(v0 + 680) = v8;
  if (v8(v5, 1, v4) != 1)
  {
    v47 = *(v0 + 464);
    *(v0 + 688) = v7 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    outlined init with take of ToolDescription(*(v0 + 632), *(v0 + 656), type metadata accessor for CompletePromptRequest);
    v48 = *(v0 + 464);
    if (*(v47 + 40))
    {
      outlined init with copy of PromptCompletionEvent(v48 + 16, v0 + 16);
      if (*(v0 + 40))
      {
LABEL_8:
        v49 = (v0 + 16);
        goto LABEL_16;
      }
    }

    else
    {
      v50 = *(v48 + 16);
      v51 = *(v48 + 32);
      *(v0 + 48) = *(v48 + 48);
      *(v0 + 16) = v50;
      *(v0 + 32) = v51;
      if (*(v0 + 40))
      {
        goto LABEL_8;
      }
    }

    v52 = *(v0 + 672);
    v53 = *(v0 + 656);
    v54 = *(v0 + 608);
    v55 = *(v0 + 584);
    v56 = *(v0 + 576);
    v57 = *(v0 + 568);
    v96 = *(v0 + 488);
    v99 = *(v0 + 496);
    v58 = *(v0 + 472);
    v93 = *(v0 + 480);
    v102 = *(v0 + 464);
    v59 = MEMORY[0x1E69E7CC0];
    *v54 = MEMORY[0x1E69E7CC0];
    *(v54 + 1) = 0;
    *(v54 + 2) = 0;
    *(v54 + 3) = -1;
    *(v54 + 4) = -1;
    *(v54 + 5) = 0;
    *(v54 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v59);
    v60 = *(v55 + 32);
    v61 = type metadata accessor for Prompt.Rendering();
    (*(*(v61 - 8) + 56))(&v54[v60], 1, 1, v61);
    v62 = *(v55 + 36);
    *&v54[v62] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v59);
    outlined assign with take of PromptCompletion.Aggregator(v54, v52);
    v64 = v58[16];
    v63 = v58[17];
    __swift_project_boxed_opaque_existential_1(v58 + 13, v64);
    outlined init with copy of ToolDescription(v53, v56, type metadata accessor for CompletePromptRequest);
    swift_storeEnumTagMultiPayload();
    v65 = type metadata accessor for CompletePromptResponseElement(0);
    v66 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
    v67 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
    InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v93, v96, v99, v64, v65, v63, (v0 + 96), v66, v67);
    outlined destroy of ToolType(v56, type metadata accessor for StreamingRequest);
    v68 = *(v0 + 120);
    v69 = __swift_project_boxed_opaque_existential_1((v0 + 96), v68);
    v70 = *(v68 - 8);
    v71 = *(v70 + 64) + 15;
    v72 = swift_task_alloc();
    (*(v70 + 16))(v72, v69, v68);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v73 = *(v0 + 80);
    v74 = *(v0 + 464);
    if (*(v102 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0((v74 + 16));
      v74 = *(v0 + 464);
      if (v73)
      {
LABEL_12:
        outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 56), v74 + 16);
LABEL_15:
        v49 = (v0 + 96);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_0(v49);
        v77 = *(v0 + 464);
        v78 = swift_beginAccess();
        v81 = *(v77 + 40);
        if (v81)
        {
          v82 = *(v0 + 464);
          v83 = *(v82 + 48);
          __swift_mutable_project_boxed_opaque_existential_1(v82 + 16, *(v77 + 40));
          v84 = *(MEMORY[0x1E69E85A8] + 4);
          v85 = swift_task_alloc();
          *(v0 + 696) = v85;
          *v85 = v0;
          v85[1] = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
          v78 = *(v0 + 560);
          v86 = *MEMORY[0x1E69E9840];
          v79 = v81;
          v80 = v83;

          return MEMORY[0x1EEE6D8C8](v78, v79, v80);
        }

LABEL_21:
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v78, v79, v80);
      }
    }

    else if (v73)
    {
      goto LABEL_12;
    }

    v75 = *(v0 + 56);
    v76 = *(v0 + 72);
    *(v74 + 48) = *(v0 + 88);
    *(v74 + 16) = v75;
    *(v74 + 32) = v76;
    goto LABEL_15;
  }

  v9 = *(v0 + 672);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v12 = *(v0 + 520);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 632), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  swift_beginAccess();
  outlined init with copy of ToolDescription(v9, v10, type metadata accessor for PromptCompletion.Aggregator);
  v13 = *v10;
  v91 = v10[1];
  v14 = v10[2];
  v15 = v10[6];
  v94 = v10[5];

  v97 = v13;

  v100 = v14;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v15);
  v92 = v16;

  v89 = v10[4];
  v90 = v10[3];
  v17 = *(v10 + *(v11 + 36));
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10 + *(v11 + 32), v12, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v18 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 440) = 0;
  v20 = [v18 dataWithJSONObject:isa options:0 error:v0 + 440];

  v21 = *(v0 + 440);
  if (!v20)
  {
    v87 = v21;

    _convertNSErrorToError(_:)();

    v78 = swift_willThrow();
    __break(1u);
    goto LABEL_21;
  }

  v22 = *(v0 + 592);
  v23 = *(v0 + 544);
  v24 = *(v0 + 536);
  v25 = *(v0 + 520);
  v88 = *(v0 + 512);
  v26 = *(v0 + 472);
  v27 = *(v0 + 456);
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v23 + 3) = 0;
  v31 = *(v24 + 36);
  v32 = type metadata accessor for Prompt.Rendering();
  (*(*(v32 - 8) + 56))(&v23[v31], 1, 1, v32);
  *v23 = v97;
  *(v23 + 1) = v91;
  *(v23 + 2) = v100;
  v33 = *(v23 + 3);

  *(v23 + 3) = v94;
  *(v23 + 4) = v92;
  *(v23 + 5) = v90;
  *(v23 + 6) = v89;
  *(v23 + 7) = v28;
  *(v23 + 8) = v30;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v25, &v23[v31], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  outlined destroy of ToolType(v22, type metadata accessor for PromptCompletion.Aggregator);
  specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(v26, v88, v23, 1);
  outlined destroy of ToolType(v23, type metadata accessor for PromptCompletion);
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  v34 = *(v0 + 656);
  v35 = *(v0 + 632);
  v36 = *(v0 + 624);
  v37 = *(v0 + 616);
  v38 = *(v0 + 608);
  v39 = *(v0 + 600);
  v40 = *(v0 + 592);
  v41 = *(v0 + 576);
  v42 = *(v0 + 560);
  v43 = *(v0 + 552);
  v95 = *(v0 + 544);
  v98 = *(v0 + 528);
  v101 = *(v0 + 520);

  v44 = *(v0 + 8);
  v45 = *MEMORY[0x1E69E9840];

  return v44();
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 696);
  v7 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    swift_endAccess();
    v3 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v63 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 560);
  v2 = type metadata accessor for CompletePromptResponseElement(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 464);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration29CompletePromptResponseElementVSgMd, &_s15TokenGeneration29CompletePromptResponseElementVSgMR);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 136, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
    if (*(v3 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0((*(v0 + 464) + 16));
    }

    v4 = *(v0 + 704);
    v5 = *(v0 + 672);
    v6 = *(v0 + 600);
    v7 = *(v0 + 584);
    v8 = *(v0 + 528);
    v9 = *(v0 + 464);
    *(v9 + 48) = 0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    outlined init with copy of ToolDescription(v5, v6, type metadata accessor for PromptCompletion.Aggregator);
    v10 = *v6;
    v57 = v6[1];
    v11 = v6[2];
    v12 = v6[5];
    v13 = v6[6];

    v61 = v11;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v13);
    v59 = v14;

    v55 = v6[4];
    v56 = v6[3];
    v15 = *(v6 + *(v7 + 36));
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6 + *(v7 + 32), v8, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v16 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 448) = 0;
    v18 = [v16 dataWithJSONObject:isa options:0 error:v0 + 448];

    v19 = *(v0 + 448);
    if (v18)
    {
      v20 = *(v0 + 600);
      v21 = *(v0 + 552);
      v22 = *(v0 + 536);
      v23 = *(v0 + 528);
      v24 = v19;
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      *(v21 + 3) = 0;
      v28 = *(v22 + 36);
      v29 = type metadata accessor for Prompt.Rendering();
      (*(*(v29 - 8) + 56))(&v21[v28], 1, 1, v29);
      *v21 = v10;
      *(v21 + 1) = v57;
      *(v21 + 2) = v61;
      v30 = *(v21 + 3);

      *(v21 + 3) = v12;
      *(v21 + 4) = v59;
      *(v21 + 5) = v56;
      *(v21 + 6) = v55;
      *(v21 + 7) = v25;
      *(v21 + 8) = v27;
      outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v23, &v21[v28], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
      outlined destroy of ToolType(v20, type metadata accessor for PromptCompletion.Aggregator);
      v31 = swift_task_alloc();
      *(v0 + 712) = v31;
      *v31 = v0;
      v31[1] = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
      v32 = *(v0 + 656);
      v33 = *(v0 + 624);
      v34 = *(v0 + 552);
      v35 = *(v0 + 504);
      v36 = *(v0 + 472);
      v37 = *MEMORY[0x1E69E9840];

      return TokenGenerator.nextRequest(for:invoking:previousRequest:)(v33, v34, v35, v32);
    }

    else
    {
      v54 = v19;

      _convertNSErrorToError(_:)();

      result = swift_willThrow();
      __break(1u);
    }
  }

  else
  {
    v39 = *(v0 + 672);
    v40 = *(v0 + 656);
    v41 = *(v0 + 456);
    PromptCompletionStreamElementEnvelope.Envelope.unseal()((v0 + 136));
    outlined destroy of ToolType(v1, type metadata accessor for CompletePromptResponseElement);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 136), v41);
    swift_beginAccess();
    PromptCompletion.Aggregator.receive(event:)(v41);
    swift_endAccess();
    outlined destroy of ToolType(v40, type metadata accessor for CompletePromptRequest);
    v42 = *(v0 + 656);
    v43 = *(v0 + 632);
    v44 = *(v0 + 624);
    v45 = *(v0 + 616);
    v46 = *(v0 + 608);
    v47 = *(v0 + 600);
    v48 = *(v0 + 592);
    v49 = *(v0 + 576);
    v50 = *(v0 + 560);
    v51 = *(v0 + 552);
    v58 = *(v0 + 544);
    v60 = *(v0 + 528);
    v62 = *(v0 + 520);

    v52 = *(v0 + 8);
    v53 = *MEMORY[0x1E69E9840];

    return v52();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;
  *(*v1 + 720) = v0;

  outlined destroy of ToolType(*(v2 + 552), type metadata accessor for PromptCompletion);
  if (v0)
  {
    v5 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  else
  {
    v5 = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v108 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 664);
  v4 = *(v0 + 640);
  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  outlined destroy of ToolType(*(v0 + 656), type metadata accessor for CompletePromptRequest);
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v5, v3, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, v6, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  if (v2(v6, 1, v4) == 1)
  {
    v7 = (v0 + 616);
    goto LABEL_5;
  }

  v8 = *(v0 + 680);
  v9 = *(v0 + 664);
  v10 = *(v0 + 640);
  v11 = *(v0 + 632);
  v12 = *(v0 + 648) + 48;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 616), &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v11, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  if (v8(v11, 1, v10) != 1)
  {
    *(v0 + 688) = v12 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v52 = *(v0 + 464);
    outlined init with take of ToolDescription(*(v0 + 632), *(v0 + 656), type metadata accessor for CompletePromptRequest);
    v53 = *(v0 + 464);
    if (*(v52 + 40))
    {
      outlined init with copy of PromptCompletionEvent(v53 + 16, v0 + 16);
      if (*(v0 + 40))
      {
LABEL_11:
        v54 = (v0 + 16);
        goto LABEL_19;
      }
    }

    else
    {
      v55 = *(v53 + 16);
      v56 = *(v53 + 32);
      *(v0 + 48) = *(v53 + 48);
      *(v0 + 16) = v55;
      *(v0 + 32) = v56;
      if (*(v0 + 40))
      {
        goto LABEL_11;
      }
    }

    v57 = *(v0 + 672);
    v58 = *(v0 + 656);
    v59 = *(v0 + 608);
    v60 = *(v0 + 584);
    v61 = *(v0 + 576);
    v62 = *(v0 + 568);
    v101 = *(v0 + 488);
    v104 = *(v0 + 496);
    v63 = *(v0 + 472);
    v98 = *(v0 + 480);
    v107 = *(v0 + 464);
    v64 = MEMORY[0x1E69E7CC0];
    *v59 = MEMORY[0x1E69E7CC0];
    *(v59 + 1) = 0;
    *(v59 + 2) = 0;
    *(v59 + 3) = -1;
    *(v59 + 4) = -1;
    *(v59 + 5) = 0;
    *(v59 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v64);
    v65 = *(v60 + 32);
    v66 = type metadata accessor for Prompt.Rendering();
    (*(*(v66 - 8) + 56))(&v59[v65], 1, 1, v66);
    v67 = *(v60 + 36);
    *&v59[v67] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v64);
    outlined assign with take of PromptCompletion.Aggregator(v59, v57);
    v69 = v63[16];
    v68 = v63[17];
    __swift_project_boxed_opaque_existential_1(v63 + 13, v69);
    outlined init with copy of ToolDescription(v58, v61, type metadata accessor for CompletePromptRequest);
    swift_storeEnumTagMultiPayload();
    v70 = type metadata accessor for CompletePromptResponseElement(0);
    v71 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
    v72 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
    InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v98, v101, v104, v69, v70, v68, (v0 + 96), v71, v72);
    outlined destroy of ToolType(v61, type metadata accessor for StreamingRequest);
    v73 = *(v0 + 120);
    v74 = __swift_project_boxed_opaque_existential_1((v0 + 96), v73);
    v75 = *(v73 - 8);
    v76 = *(v75 + 64) + 15;
    v77 = swift_task_alloc();
    (*(v75 + 16))(v77, v74, v73);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v78 = *(v0 + 80);
    v79 = *(v0 + 464);
    if (*(v107 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0((v79 + 16));
      v79 = *(v0 + 464);
      if (v78)
      {
LABEL_15:
        outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 56), v79 + 16);
LABEL_18:
        v54 = (v0 + 96);
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0(v54);
        v82 = *(v0 + 464);
        v83 = swift_beginAccess();
        v86 = *(v82 + 40);
        if (v86)
        {
          v87 = *(v0 + 464);
          v88 = *(v87 + 48);
          __swift_mutable_project_boxed_opaque_existential_1(v87 + 16, *(v82 + 40));
          v89 = *(MEMORY[0x1E69E85A8] + 4);
          v90 = swift_task_alloc();
          *(v0 + 696) = v90;
          *v90 = v0;
          v90[1] = closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:);
          v83 = *(v0 + 560);
          v91 = *MEMORY[0x1E69E9840];
          v84 = v86;
          v85 = v88;

          return MEMORY[0x1EEE6D8C8](v83, v84, v85);
        }

LABEL_24:
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v83, v84, v85);
      }
    }

    else if (v78)
    {
      goto LABEL_15;
    }

    v80 = *(v0 + 56);
    v81 = *(v0 + 72);
    *(v79 + 48) = *(v0 + 88);
    *(v79 + 16) = v80;
    *(v79 + 32) = v81;
    goto LABEL_18;
  }

  v7 = (v0 + 632);
LABEL_5:
  v13 = *(v0 + 720);
  v14 = *(v0 + 672);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 520);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*v7, &_s15TokenGeneration21CompletePromptRequestVSgMd, &_s15TokenGeneration21CompletePromptRequestVSgMR);
  swift_beginAccess();
  outlined init with copy of ToolDescription(v14, v15, type metadata accessor for PromptCompletion.Aggregator);
  v18 = *v15;
  v96 = v15[1];
  v19 = v15[2];
  v20 = v15[6];
  v99 = v15[5];

  v102 = v18;

  v105 = v19;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v20);
  v97 = v21;

  v94 = v15[4];
  v95 = v15[3];
  v22 = *(v15 + *(v16 + 36));
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15 + *(v16 + 32), v17, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v23 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 440) = 0;
  v25 = [v23 dataWithJSONObject:isa options:0 error:v0 + 440];

  v26 = *(v0 + 440);
  if (!v25)
  {
    v92 = v26;

    _convertNSErrorToError(_:)();

    v83 = swift_willThrow();
    __break(1u);
    goto LABEL_24;
  }

  v27 = *(v0 + 592);
  v28 = *(v0 + 544);
  v29 = *(v0 + 536);
  v30 = *(v0 + 520);
  v93 = *(v0 + 512);
  v31 = *(v0 + 472);
  v32 = *(v0 + 456);
  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(v28 + 3) = 0;
  v36 = *(v29 + 36);
  v37 = type metadata accessor for Prompt.Rendering();
  (*(*(v37 - 8) + 56))(&v28[v36], 1, 1, v37);
  *v28 = v102;
  *(v28 + 1) = v96;
  *(v28 + 2) = v105;
  v38 = *(v28 + 3);

  *(v28 + 3) = v99;
  *(v28 + 4) = v97;
  *(v28 + 5) = v95;
  *(v28 + 6) = v94;
  *(v28 + 7) = v33;
  *(v28 + 8) = v35;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v30, &v28[v36], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  outlined destroy of ToolType(v27, type metadata accessor for PromptCompletion.Aggregator);
  specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(v31, v93, v28, 1);
  outlined destroy of ToolType(v28, type metadata accessor for PromptCompletion);
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v39 = *(v0 + 656);
  v40 = *(v0 + 632);
  v41 = *(v0 + 624);
  v42 = *(v0 + 616);
  v43 = *(v0 + 608);
  v44 = *(v0 + 600);
  v45 = *(v0 + 592);
  v46 = *(v0 + 576);
  v47 = *(v0 + 560);
  v48 = *(v0 + 552);
  v100 = *(v0 + 544);
  v103 = *(v0 + 528);
  v106 = *(v0 + 520);

  v49 = *(v0 + 8);
  v50 = *MEMORY[0x1E69E9840];

  return v49();
}

{
  v19 = *MEMORY[0x1E69E9840];
  v1 = v0[82];
  swift_endAccess();
  outlined destroy of ToolType(v1, type metadata accessor for CompletePromptRequest);
  v2 = v0[82];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[72];
  v10 = v0[70];
  v11 = v0[69];
  v15 = v0[88];
  v16 = v0[68];
  v17 = v0[66];
  v18 = v0[65];

  v12 = v0[1];
  v13 = *MEMORY[0x1E69E9840];

  return v12();
}

{
  v18 = *MEMORY[0x1E69E9840];
  outlined destroy of ToolType(v0[82], type metadata accessor for CompletePromptRequest);
  v1 = v0[82];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[72];
  v9 = v0[70];
  v10 = v0[69];
  v14 = v0[90];
  v15 = v0[68];
  v16 = v0[66];
  v17 = v0[65];

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a5;
  v11 = type metadata accessor for StreamingRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[16];
  v15 = a1[17];
  __swift_project_boxed_opaque_existential_1(a1 + 13, v16);
  outlined init with copy of ToolDescription(a4, v14, type metadata accessor for CompletePromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for CompletePromptResponseElement(0);
  v18 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
  v19 = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement);
  InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(a2, a3, v23, v16, v17, v15, v24, v18, v19);
  outlined destroy of ToolType(v14, type metadata accessor for StreamingRequest);
  v20 = v25;
  v21 = __swift_project_boxed_opaque_existential_1(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  a6[3] = type metadata accessor for AsyncMapSequence();
  a6[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a6);
  makeEventSequence #1 <A>(_:) in closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(v21, v20);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t makeEventSequence #1 <A>(_:) in closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  return AsyncSequence.map<A>(_:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed CompletePromptResponseElement) -> (@out PromptCompletionEvent)(uint64_t *a1)
{
  PromptCompletionStreamElementEnvelope.Envelope.unseal()(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[73] = a6;
  v6[72] = a5;
  v6[71] = a4;
  v6[70] = a3;
  v6[69] = a2;
  v6[68] = a1;
  v7 = type metadata accessor for OneShotRequest(0);
  v6[74] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[75] = swift_task_alloc();
  v9 = type metadata accessor for CompletePromptResponse(0);
  v6[76] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:), 0, 0);
}

uint64_t closure #1 in TokenGenerator.invoke(tooling:calls:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == Prompt.ToolCall.Function.name.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AnyTooling();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of ToolDescription(v13, v11, type metadata accessor for AnyTooling);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of ToolType(v11, type metadata accessor for AnyTooling);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of ToolType(v11, type metadata accessor for AnyTooling);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    outlined init with take of ToolDescription(v11, v19, type metadata accessor for AnyTooling);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t closure #1 in AnyTooling.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for TokenGenerationError(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolOutputVSgMd, &_s29GenerativeFunctionsFoundation10ToolOutputVSgMR) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyTooling.init(_:), 0, 0);
}

uint64_t closure #1 in AnyTooling.init(_:)()
{
  v1 = v0[4];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x1E69A0E20] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = closure #1 in AnyTooling.init(_:);
  v6 = v0[7];
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x1EEE0ACB0](v6, v7, v8, v3, v2);
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #1 in AnyTooling.init(_:);
  }

  else
  {
    v3 = closure #1 in AnyTooling.init(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[7];
  v2 = type metadata accessor for ToolOutput();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s29GenerativeFunctionsFoundation10ToolOutputVSgMd, &_s29GenerativeFunctionsFoundation10ToolOutputVSgMR);
  if (v3 == 1)
  {
    v5 = v0[6];
    v4 = v0[7];

    v6 = v0[1];

    return v6(0, 0);
  }

  else
  {
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.generator);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AB828000, v9, v10, "Only tools that output strings are currently supported.", v11, 2u);
      MEMORY[0x1AC5A6CD0](v11, -1, -1);
    }

    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];

    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v17 = *(v16 + 8);
    *v12 = dispatch thunk of DynamicArgumentsTooling.name.getter();
    v12[1] = v18;
    v12[2] = 0xD000000000000037;
    v12[3] = 0x80000001ABA42E90;
    v12[4] = 0;
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = v15;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
    swift_allocError();
    outlined init with copy of ToolDescription(v12, v19, type metadata accessor for TokenGenerationError);
    swift_willThrow();
    outlined destroy of ToolType(v12, type metadata accessor for TokenGenerationError);
    v21 = v0[6];
    v20 = v0[7];

    v22 = v0[1];

    return v22();
  }
}

{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t AnyTooling.init(name:usageDescription:argumentsSchema:invoke:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for AnyTooling();
  v13 = *(v12 + 24);
  v14 = type metadata accessor for GenerationSchema();
  (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = a7;
  v16 = &a8[*(v12 + 28)];
  *v16 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error);
  *(v16 + 1) = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error);

  return v9(a1, a2);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t type metadata accessor for AnyTooling()
{
  result = type metadata singleton initialization cache for AnyTooling;
  if (!type metadata singleton initialization cache for AnyTooling)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OtGMd, &_ss23_ContiguousArrayStorageCySS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OtGMR, &_sSS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OtMd, &_sSS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOtGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOtGMR, &_s15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined copy of RequestMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(uint64_t a1)
{
  v4 = *(type metadata accessor for PromptVariant() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator.prewarm(usesGuidedGeneration:urgency:promptPrefix:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #3 in TokenGenerator.register(documents:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #3 in TokenGenerator.register(documents:)(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String, @error @owned Error)(a1, a2, v7);
}

void type metadata completion function for AnyTooling()
{
  type metadata accessor for GenerationSchema();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15TokenGeneration16ModelCatalogStubV8AssetKeyV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CompletePromptTemplateRequest(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(v5, v6, v7, v1 + v4, v8, a1);
}

uint64_t objectdestroy_70Tm()
{
  v1 = type metadata accessor for CompletePromptTemplateRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = type metadata accessor for XPCDictionary();
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
  v9 = (v0 + v3 + v1[5]);
  if (v9[1])
  {

    v10 = v9[2];

    v11 = v9[3];
  }

  v12 = v1[6];
  v13 = type metadata accessor for PromptVariantEnvelope(0);
  if (!(*(*(v13 - 8) + 48))(v7 + v12, 1, v13))
  {
    v14 = type metadata accessor for OverridableConfigurationStorage();
    (*(*(v14 - 8) + 8))(v7 + v12, v14);
  }

  v15 = (v7 + v1[7]);
  v16 = *v15;

  v17 = *(v15 + 2);

  v18 = *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(&v15[v18], 1, v19))
  {
    (*(v20 + 8))(&v15[v18], v19);
  }

  v21 = v7 + v1[8];
  v22 = *(v21 + 80);

  v23 = *(v21 + 144);

  v24 = *(v7 + v1[9]);

  if (*(v7 + v1[10] + 8) >= 4uLL)
  {
  }

  v25 = *(v7 + v1[11]);

  v26 = v7 + v1[12];
  v27 = type metadata accessor for Constraints(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v37 = type metadata accessor for GenerationSchema();
        (*(*(v37 - 8) + 8))(v26, v37);
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_18;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_18;
    }

    v29 = *(v26 + 8);
  }

LABEL_18:
  v30 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v7 + v1[13]);
  v32 = v31[1];

  v33 = v31[3];

  v34 = v31[5];

  v35 = v31[6];

  v36 = *(v0 + v30);

  return MEMORY[0x1EEE6BDD0](v0, v30 + 8, v2 | 7);
}

uint64_t partial apply for closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CompletePromptTemplateRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t outlined init with take of ToolDescription(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CompletePromptRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + v9);
  v14 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator.handleCompletePromptRequest(request:tools:)(a1, v1 + v6, v10, v11, v12, v13, v14);
}

uint64_t objectdestroy_97Tm()
{
  v1 = type metadata accessor for CompletePromptRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  v10 = *(v0 + 8);

  v11 = *(v0 + 9);

  v12 = &v0[v3];
  v13 = type metadata accessor for XPCDictionary();
  (*(*(v13 - 8) + 8))(&v0[v3], v13);
  v14 = &v0[v3 + v1[5]];
  v15 = *(v14 + 1);

  v16 = *(v14 + 2);

  v17 = *(v14 + 3);

  v18 = v1[6];
  type metadata accessor for PromptVariantEnvelope(0);
  v19 = type metadata accessor for OverridableConfigurationStorage();
  (*(*(v19 - 8) + 8))(&v0[v3 + v18], v19);
  v20 = &v0[v3 + v1[7]];
  v21 = *(v20 + 10);

  v22 = *(v20 + 18);

  v23 = &v0[v3 + v1[8]];
  v24 = type metadata accessor for Constraints(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v34 = type metadata accessor for GenerationSchema();
        (*(*(v34 - 8) + 8))(v23, v34);
        goto LABEL_10;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_10;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_10;
    }

    v26 = *(v23 + 1);
  }

LABEL_10:
  v27 = *&v12[v1[9]];

  if (*&v12[v1[10] + 8] >= 4uLL)
  {
  }

  v28 = *&v12[v1[11]];

  v29 = &v12[v1[12]];
  v30 = *(v29 + 1);

  v31 = *(v29 + 3);

  v32 = *(v29 + 5);

  v33 = *(v29 + 6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CompletePromptRequest(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = v1 + ((*(v3 + 80) + 80) & ~*(v3 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in TokenGenerator.handleCompletePromptRequest(request:tools:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t outlined init with copy of ToolDescription(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized TokenGenerator.invoke(tooling:calls:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for Prompt.ToolCallResult();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for TokenGenerationError(0);
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for AnyTooling();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v12 = type metadata accessor for Prompt.ToolCall.Function();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v15 = type metadata accessor for Prompt.ToolCall.Kind();
  v2[23] = v15;
  v16 = *(v15 - 8);
  v2[24] = v16;
  v17 = *(v16 + 64) + 15;
  v2[25] = swift_task_alloc();
  v18 = type metadata accessor for Prompt.ToolCall();
  v2[26] = v18;
  v19 = *(v18 - 8);
  v2[27] = v19;
  v20 = *(v19 + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized TokenGenerator.invoke(tooling:calls:), 0, 0);
}

{
  v5 = *v3;
  v6 = *v3;
  v6[2] = v3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v2;
  v7 = v5[36];
  v8 = *v3;
  v6[37] = v2;

  if (v2)
  {
    v9 = specialized TokenGenerator.invoke(tooling:calls:);
  }

  else
  {
    v6[38] = a2;
    v9 = specialized TokenGenerator.invoke(tooling:calls:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void specialized TokenGenerator.invoke(tooling:calls:)()
{
  v94 = v0;
  v1 = *(*(v0 + 56) + 16);
  *(v0 + 232) = v1;
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    *(v0 + 312) = *MEMORY[0x1E69DA808];
    *(v0 + 240) = v2;
    while (1)
    {
      *(v0 + 248) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v5 = *(v0 + 312);
      v6 = *(v0 + 200);
      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
      (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 56) + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v3, *(v0 + 208));
      Prompt.ToolCall.kind.getter();
      if ((*(v7 + 88))(v6, v8) != v5)
      {
        break;
      }

      v9 = *(v0 + 200);
      v10 = *(v0 + 176);
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v14 = *(v0 + 120);
      v13 = *(v0 + 128);
      v15 = *(v0 + 112);
      v16 = *(v0 + 48);
      (*(*(v0 + 192) + 96))(v9, *(v0 + 184));
      (*(v11 + 32))(v10, v9, v12);
      *(swift_task_alloc() + 16) = v10;
      specialized Sequence.first(where:)(partial apply for closure #1 in TokenGenerator.invoke(tooling:calls:), v16, v15);

      if ((*(v13 + 48))(v15, 1, v14) == 1)
      {
        v52 = *(v0 + 240);
        v53 = *(v0 + 176);
        v54 = *(v0 + 104);
        v55 = *(v0 + 112);
        v56 = *(v0 + 96);

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
        v92 = 0;
        v93 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        MEMORY[0x1AC5A5BC0](0xD000000000000017, 0x80000001ABA42DE0);
        v57 = Prompt.ToolCall.Function.name.getter();
        MEMORY[0x1AC5A5BC0](v57);

        MEMORY[0x1AC5A5BC0](0xD000000000000020, 0x80000001ABA42E00);
        v58 = v92;
        v59 = v93;
        v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        *v54 = Prompt.ToolCall.Function.name.getter();
        v54[1] = v61;
        v54[2] = v58;
        v54[3] = v59;
        v54[4] = 0;
        v54[5] = 0;
        v54[6] = 0;
        v54[7] = v60;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of ToolDescription(v54, v62, type metadata accessor for TokenGenerationError);
        swift_willThrow();
        outlined destroy of ToolType(v54, type metadata accessor for TokenGenerationError);
        v63 = *(v0 + 200);
        v64 = *(v0 + 168);
        v65 = *(v0 + 176);
        v67 = *(v0 + 152);
        v66 = *(v0 + 160);
        v69 = *(v0 + 136);
        v68 = *(v0 + 144);
        v70 = *(v0 + 104);
        v86 = *(v0 + 88);
        v88 = *(v0 + 80);
        (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        (*(v64 + 8))(v65, v66);

        v71 = *(v0 + 8);

        v71();
        return;
      }

      outlined init with take of ToolDescription(*(v0 + 112), *(v0 + 152), type metadata accessor for AnyTooling);
      if (one-time initialization token for generator != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = type metadata accessor for Logger();
      *(v0 + 256) = __swift_project_value_buffer(v19, static Log.generator);
      outlined init with copy of ToolDescription(v17, v18, type metadata accessor for AnyTooling);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 144);
      if (v22)
      {
        v24 = *(v0 + 136);
        v25 = *(v0 + 120);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v92 = v27;
        *v26 = 136315138;
        outlined init with copy of ToolDescription(v23, v24, type metadata accessor for AnyTooling);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        outlined destroy of ToolType(v23, type metadata accessor for AnyTooling);
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v92);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_1AB828000, v20, v21, "Invoking tool: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1AC5A6CD0](v27, -1, -1);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
      }

      else
      {

        outlined destroy of ToolType(v23, type metadata accessor for AnyTooling);
      }

      v32 = *(v0 + 176);
      v33 = *(v0 + 152);
      v34 = *(v0 + 120);
      v35 = Prompt.ToolCall.Function.arguments.getter();
      *(v0 + 264) = v36;
      v37 = (v33 + *(v34 + 28));
      v38 = *v37;
      *(v0 + 272) = *v37;
      *(v0 + 280) = v37[1];
      if (v38)
      {
        v72 = v35;
        v73 = v36;

        v90 = (v38 + *v38);
        v74 = v38[1];
        v75 = swift_task_alloc();
        *(v0 + 288) = v75;
        *v75 = v0;
        v75[1] = specialized TokenGenerator.invoke(tooling:calls:);

        v90(v72, v73);
        return;
      }

      v87 = v4;

      v39 = *(v0 + 256);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1AB828000, v40, v41, "Tool returned no response. Skipping response for this tool.", v42, 2u);
        MEMORY[0x1AC5A6CD0](v42, -1, -1);
      }

      v89 = *(v0 + 248);
      v43 = *(v0 + 224);
      v44 = *(v0 + 232);
      v46 = *(v0 + 208);
      v45 = *(v0 + 216);
      v47 = *(v0 + 168);
      v48 = *(v0 + 176);
      v50 = *(v0 + 152);
      v49 = *(v0 + 160);

      outlined destroy of ToolType(v50, type metadata accessor for AnyTooling);
      (*(v45 + 8))(v43, v46);
      (*(v47 + 8))(v48, v49);
      if (v89 == v44)
      {
        v2 = *(v0 + 240);
        goto LABEL_27;
      }

      v3 = *(v0 + 248);
      v4 = v87;
      if (v3 >= *(v0 + 232))
      {
        goto LABEL_31;
      }
    }

    v51 = *(v0 + 184);

    _diagnoseUnexpectedEnumCase<A>(type:)();
  }

  else
  {
LABEL_27:
    v76 = *(v0 + 224);
    v77 = *(v0 + 200);
    v78 = *(v0 + 176);
    v80 = *(v0 + 144);
    v79 = *(v0 + 152);
    v81 = *(v0 + 136);
    v83 = *(v0 + 104);
    v82 = *(v0 + 112);
    v84 = *(v0 + 88);
    v91 = *(v0 + 80);

    v85 = *(v0 + 8);

    v85(v2);
  }
}

uint64_t specialized TokenGenerator.invoke(tooling:calls:)()
{
  v1 = v0[37];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String?, @error @owned Error))?(v0[34]);

  MEMORY[0x1AC5A6AE0](v1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[37];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x1AC5A6AE0](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_1AB828000, v6, v7, "Encountered failure while invoking function: %@", v9, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v10, -1, -1);
    MEMORY[0x1AC5A6CD0](v9, -1, -1);
  }

  v12 = v0[37];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[12];
  v16 = v0[13];

  MEMORY[0x1AC5A6AE0](v12);
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v16 = Prompt.ToolCall.Function.name.getter();
  v16[1] = v18;
  v16[2] = 0xD00000000000002BLL;
  v16[3] = 0x80000001ABA42E30;
  v16[4] = v12;
  v16[5] = 0;
  v16[6] = 0;
  v16[7] = v17;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
  swift_allocError();
  outlined init with copy of ToolDescription(v16, v19, type metadata accessor for TokenGenerationError);
  swift_willThrow();

  outlined destroy of ToolType(v16, type metadata accessor for TokenGenerationError);
  outlined destroy of ToolType(v14, type metadata accessor for AnyTooling);
  v20 = v0[25];
  v21 = v0[21];
  v22 = v0[22];
  v24 = v0[19];
  v23 = v0[20];
  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[13];
  v30 = v0[11];
  v31 = v0[10];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v21 + 8))(v22, v23);

  v28 = v0[1];

  return v28();
}

{
  v122 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String?, @error @owned Error))?(*(v0 + 272));

  if (!v1)
  {
    v25 = *(v0 + 296);
    goto LABEL_11;
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 24);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  Prompt.ToolCall.id.getter();
  Prompt.ToolCallResult.init(toolCallID:content:)();
  (*(v11 + 16))(v9, v8, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMR, MEMORY[0x1E69DA720]);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1, v13, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMR, MEMORY[0x1E69DA720]);
  }

  else
  {
    v116 = v13;
  }

  v16 = *(v0 + 224);
  v111 = *(v0 + 232);
  v112 = *(v0 + 248);
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v109 = *(v0 + 160);
  v110 = *(v0 + 176);
  v21 = *(v0 + 80);
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  (*(v22 + 8))(*(v0 + 88), v23);
  outlined destroy of ToolType(v20, type metadata accessor for AnyTooling);
  (*(v18 + 8))(v16, v17);
  *(v116 + 16) = v15 + 1;
  (*(v22 + 32))(v116 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v15, v21, v23);
  (*(v19 + 8))(v110, v109);
  if (v112 != v111)
  {
    v25 = *(v0 + 296);
    v26 = *(v0 + 248);
    *(v0 + 240) = v116;
    while (v26 < *(v0 + 232))
    {
      *(v0 + 248) = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_39;
      }

      v39 = *(v0 + 312);
      v40 = *(v0 + 200);
      v41 = *(v0 + 184);
      v42 = *(v0 + 192);
      (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 56) + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v26, *(v0 + 208));
      Prompt.ToolCall.kind.getter();
      if ((*(v42 + 88))(v40, v41) != v39)
      {
        v84 = *(v0 + 184);

        return _diagnoseUnexpectedEnumCase<A>(type:)();
      }

      v43 = *(v0 + 200);
      v44 = *(v0 + 176);
      v45 = *(v0 + 160);
      v46 = *(v0 + 168);
      v47 = *(v0 + 120);
      v48 = *(v0 + 128);
      v49 = *(v0 + 112);
      v50 = *(v0 + 48);
      (*(*(v0 + 192) + 96))(v43, *(v0 + 184));
      (*(v46 + 32))(v44, v43, v45);
      *(swift_task_alloc() + 16) = v44;
      specialized Sequence.first(where:)(partial apply for closure #1 in TokenGenerator.invoke(tooling:calls:), v50, v49);

      if ((*(v48 + 48))(v49, 1, v47) == 1)
      {
        v85 = *(v0 + 240);
        v86 = *(v0 + 176);
        v87 = *(v0 + 104);
        v88 = *(v0 + 112);
        v89 = *(v0 + 96);

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v88, &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
        v120 = 0;
        v121 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        MEMORY[0x1AC5A5BC0](0xD000000000000017, 0x80000001ABA42DE0);
        v90 = Prompt.ToolCall.Function.name.getter();
        MEMORY[0x1AC5A5BC0](v90);

        MEMORY[0x1AC5A5BC0](0xD000000000000020, 0x80000001ABA42E00);
        v91 = v120;
        v92 = v121;
        v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        *v87 = Prompt.ToolCall.Function.name.getter();
        v87[1] = v94;
        v87[2] = v91;
        v87[3] = v92;
        v87[4] = 0;
        v87[5] = 0;
        v87[6] = 0;
        v87[7] = v93;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of ToolDescription(v87, v95, type metadata accessor for TokenGenerationError);
        swift_willThrow();
        outlined destroy of ToolType(v87, type metadata accessor for TokenGenerationError);
        v96 = *(v0 + 200);
        v97 = *(v0 + 168);
        v98 = *(v0 + 176);
        v100 = *(v0 + 152);
        v99 = *(v0 + 160);
        v102 = *(v0 + 136);
        v101 = *(v0 + 144);
        v103 = *(v0 + 104);
        v113 = *(v0 + 88);
        v115 = *(v0 + 80);
        (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        (*(v97 + 8))(v98, v99);

        v104 = *(v0 + 8);

        return v104();
      }

      outlined init with take of ToolDescription(*(v0 + 112), *(v0 + 152), type metadata accessor for AnyTooling);
      if (one-time initialization token for generator != -1)
      {
        goto LABEL_40;
      }

LABEL_20:
      v51 = *(v0 + 144);
      v52 = *(v0 + 152);
      v53 = type metadata accessor for Logger();
      *(v0 + 256) = __swift_project_value_buffer(v53, static Log.generator);
      outlined init with copy of ToolDescription(v52, v51, type metadata accessor for AnyTooling);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 144);
      if (v56)
      {
        v58 = *(v0 + 136);
        v59 = *(v0 + 120);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v120 = v61;
        *v60 = 136315138;
        outlined init with copy of ToolDescription(v57, v58, type metadata accessor for AnyTooling);
        v62 = String.init<A>(describing:)();
        v64 = v63;
        outlined destroy of ToolType(v57, type metadata accessor for AnyTooling);
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v120);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_1AB828000, v54, v55, "Invoking tool: %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x1AC5A6CD0](v61, -1, -1);
        MEMORY[0x1AC5A6CD0](v60, -1, -1);
      }

      else
      {

        outlined destroy of ToolType(v57, type metadata accessor for AnyTooling);
      }

      v66 = *(v0 + 176);
      v67 = *(v0 + 152);
      v68 = *(v0 + 120);
      v69 = Prompt.ToolCall.Function.arguments.getter();
      *(v0 + 264) = v70;
      v71 = (v67 + *(v68 + 28));
      v72 = *v71;
      *(v0 + 272) = *v71;
      *(v0 + 280) = v71[1];
      if (v72)
      {
        v105 = v69;
        v106 = v70;

        v119 = (v72 + *v72);
        v107 = v72[1];
        v108 = swift_task_alloc();
        *(v0 + 288) = v108;
        *v108 = v0;
        v108[1] = specialized TokenGenerator.invoke(tooling:calls:);

        return v119(v105, v106);
      }

LABEL_11:
      v114 = v25;
      v27 = *(v0 + 256);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1AB828000, v28, v29, "Tool returned no response. Skipping response for this tool.", v30, 2u);
        MEMORY[0x1AC5A6CD0](v30, -1, -1);
      }

      v117 = *(v0 + 248);
      v31 = *(v0 + 224);
      v32 = *(v0 + 232);
      v33 = *(v0 + 208);
      v34 = *(v0 + 216);
      v35 = *(v0 + 168);
      v36 = *(v0 + 176);
      v38 = *(v0 + 152);
      v37 = *(v0 + 160);

      outlined destroy of ToolType(v38, type metadata accessor for AnyTooling);
      (*(v34 + 8))(v31, v33);
      (*(v35 + 8))(v36, v37);
      if (v117 == v32)
      {
        v24 = *(v0 + 240);
        goto LABEL_26;
      }

      v26 = *(v0 + 248);
      v25 = v114;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_20;
  }

  v24 = v116;
LABEL_26:
  v73 = *(v0 + 224);
  v74 = *(v0 + 200);
  v75 = *(v0 + 176);
  v77 = *(v0 + 144);
  v76 = *(v0 + 152);
  v78 = *(v0 + 136);
  v80 = *(v0 + 104);
  v79 = *(v0 + 112);
  v81 = *(v0 + 88);
  v118 = *(v0 + 80);

  v82 = *(v0 + 8);

  return v82(v24);
}

uint64_t outlined assign with take of PromptCompletion.Aggregator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.Aggregator(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ToolType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@owned String?, @error @owned Error))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in AnyTooling.init(_:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in AnyTooling.init(_:)(a1, a2, v2 + 16);
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration0D9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCG_SS_AMts5NeverOTg504_s15d13Generation0A9f14C9Dimension33_hijklmn7ALLOSo8o36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5p20OIegnrzr_TR04_s15a13r134A9c120C29sendInferenceRequestTelemetry7session7request8response9streamingyAC_AA014CompletePromptF0VAA0M10CompletionVSbtFSS_So8l17CtAC9U34_efghijK14ALLO_ANtXEfU1_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v39 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v2 = v39;
  v8 = result;
  v9 = 0;
  v10 = *(a1 + 36);
  v33 = a1 + 72;
  v34 = v1;
  v35 = a1 + 64;
  v36 = v10;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_43;
    }

    if (v10 != *(v4 + 36))
    {
      goto LABEL_44;
    }

    v13 = *(*(v4 + 48) + v8);
    v37 = v9;
    if (v13 <= 4)
    {
      if (*(*(v4 + 48) + v8) <= 1u)
      {
        if (*(*(v4 + 48) + v8))
        {
          v38 = 0x64416D6F74737543;
          v14 = 0xED00007265747061;
        }

        else
        {
          v38 = 0xD000000000000015;
          v14 = 0x80000001ABA3F450;
        }

        goto LABEL_30;
      }

      if (v13 == 2)
      {
        v38 = 0xD000000000000011;
        v14 = 0x80000001ABA3F480;
        goto LABEL_30;
      }

      if (v13 == 3)
      {
        v38 = 0x65736E6F70736552;
        v14 = 0xEE0074616D726F46;
        goto LABEL_30;
      }

      v15 = 1819242324;
      goto LABEL_25;
    }

    if (*(*(v4 + 48) + v8) <= 6u)
    {
      if (v13 == 5)
      {
        v15 = 1852994900;
LABEL_25:
        v38 = v15 | 0x6E756F4300000000;
        v14 = 0xE900000000000074;
        goto LABEL_30;
      }

      v38 = 0x65736E6F70736552;
      v16 = 1701869908;
    }

    else
    {
      if (v13 != 7)
      {
        if (v13 == 8)
        {
          v38 = 0xD000000000000014;
          v14 = 0x80000001ABA3F4D0;
        }

        else
        {
          v38 = 0xD000000000000013;
          v14 = 0x80000001ABA3F4F0;
        }

        goto LABEL_30;
      }

      v38 = 0x654C74706D6F7250;
      v16 = 1752459118;
    }

    v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_30:
    v17 = *(*(v4 + 56) + 8 * v8);
    v40 = v2;
    v18 = v4;
    v19 = *(v2 + 16);
    v20 = *(v2 + 24);
    v21 = v2;
    result = v17;
    v2 = v21;
    if (v19 >= v20 >> 1)
    {
      v32 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 + 1, 1);
      result = v32;
      v2 = v40;
    }

    *(v2 + 16) = v19 + 1;
    v22 = (v2 + 24 * v19);
    v22[4] = v38;
    v22[5] = v14;
    v22[6] = result;
    v11 = 1 << *(v18 + 32);
    v10 = v36;
    if (v8 >= v11)
    {
      goto LABEL_45;
    }

    v5 = v35;
    v23 = *(v35 + 8 * v12);
    if ((v23 & (1 << v8)) == 0)
    {
      goto LABEL_46;
    }

    v4 = v18;
    if (v36 != *(v18 + 36))
    {
      goto LABEL_47;
    }

    v24 = v23 & (-2 << (v8 & 0x3F));
    if (v24)
    {
      v11 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v12 << 6;
      v26 = v12 + 1;
      v27 = (v33 + 8 * v12);
      while (v26 < (v11 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          v30 = v2;
          result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v8, v36, 0);
          v2 = v30;
          v11 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      v31 = v2;
      result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v8, v36, 0);
      v2 = v31;
    }

LABEL_4:
    v9 = v37 + 1;
    v8 = v11;
    if (v37 + 1 == v34)
    {
      return v2;
    }
  }

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
  return result;
}

unint64_t TokenGenerator.Dimension.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x654C74706D6F7250;
    v5 = 0xD000000000000013;
    if (a1 == 8)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x6E756F436E727554;
    if (a1 != 5)
    {
      v6 = 0x65736E6F70736552;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x64416D6F74737543;
    v2 = 0x65736E6F70736552;
    if (a1 != 3)
    {
      v2 = 0x6E756F436C6F6F54;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (!a1)
    {
      v1 = 0xD000000000000015;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenGenerator.Dimension(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = TokenGenerator.Dimension.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == TokenGenerator.Dimension.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TokenGenerator.Dimension()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TokenGenerator.Dimension.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TokenGenerator.Dimension()
{
  TokenGenerator.Dimension.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TokenGenerator.Dimension()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TokenGenerator.Dimension.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TokenGenerator.Dimension@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TokenGenerator.Dimension.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TokenGenerator.Dimension@<X0>(unint64_t *a1@<X8>)
{
  result = TokenGenerator.Dimension.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v18 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    MEMORY[0x1AC5A6AE0](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
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

  v22[2] = v25;
  if (v40 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v34 = *a3;
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
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
      *v37 = v7;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v10;
      v38 = v36[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v39;
      v5 += 3;
      if (v40 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void specialized TokenGenerator.sendInferenceRequestTelemetry(session:request:response:streaming:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v214) = a4;
  v215 = a3;
  v188 = type metadata accessor for Prompt.AttachmentContent();
  v173[0] = *(v188 - 8);
  v6 = *(v173[0] + 64);
  MEMORY[0x1EEE9AC00](v188);
  v194 = v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for Prompt.Attachment();
  v192 = *(v198 - 8);
  v8 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v191 = v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v173 - v11;
  v209 = type metadata accessor for PromptCompletion.Content(0);
  v13 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v208 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for Prompt.ToolCall.Function();
  v211 = *(v219 - 8);
  v15 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v218 = v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for Prompt.ToolCall.Kind();
  v213 = *(v221 - 8);
  v17 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v19 = (v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PromptCompletion.Segment(0);
  v189 = *(v20 - 8);
  v21 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v206 = v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for Prompt.ToolCall();
  v222 = *(v193 - 8);
  v23 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v193 - 8);
  v217 = v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v177 = v173 - v27;
  v187 = type metadata accessor for Prompt();
  v185 = *(v187 - 8);
  v28 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v175 = v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v173 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v216 = v173 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = v173 - v37;
  v39 = type metadata accessor for ModelBundle();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v43 = MEMORY[0x1EEE9AC00](v39);
  v45 = v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = MEMORY[0x1E69E7CC8];
  if (a1[3])
  {
    v46 = a1[4];
    if (!*(v46 + 16))
    {
      goto LABEL_7;
    }

    v212 = v38;
    v210 = a1;
    v47 = v42;
    (*(v40 + 16))(v45, v46 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v42, v43);
    v48 = a2;
    if (ModelBundle.isFileBased.getter())
    {
      v49 = 0x80000001ABA42F90;
      v50 = 0xD000000000000030;
    }

    else
    {
      v50 = URL.absoluteString.getter();
      v49 = v51;
    }

    v52 = MEMORY[0x1AC5A5AE0](v50, v49);

    v53 = v225;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v224 = v53;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, 0, isUniquelyReferenced_nonNull_native);
    v55 = v224;
    ModelBundle.isFileBased.getter();
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v224 = v55;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, 1, v57);
    v225 = v224;
    (*(v40 + 8))(v45, v47);
    a1 = v210;
    a2 = v48;
    v38 = v212;
    if (!v210[3])
    {
      v61 = 0;
    }

    else
    {
LABEL_7:
      v60 = a1 + 6;
      v58 = a1[6];
      v59 = v60[1];

      v61 = MEMORY[0x1AC5A5AE0](v58, v59);
    }

    specialized Dictionary.subscript.setter(v61, 2);
  }

  v62 = type metadata accessor for CompletePromptRequest(0);
  outlined init with copy of Constraints?(a2 + *(v62 + 32), v38);
  v63 = type metadata accessor for Constraints(0);
  v64 = (*(*(v63 - 8) + 48))(v38, 1, v63);
  v190 = v12;
  v223 = v32;
  if (v64 == 1)
  {
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v65 = NSString.init(stringLiteral:)();
    v66 = v198;
    goto LABEL_17;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v66 = v198;
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
      v65 = NSString.init(stringLiteral:)();
      outlined destroy of Constraints(v38, type metadata accessor for Constraints);
      goto LABEL_17;
    }
  }

  else
  {
    v66 = v198;
  }

  outlined destroy of Constraints(v38, type metadata accessor for Constraints);
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v65 = NSString.init(stringLiteral:)();
LABEL_17:
  v68 = v225;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v224 = v68;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, 3, v69);
  v70 = v224;
  v71 = *(CompletePromptRequest.tools.getter() + 16);

  v72 = a2;
  v73 = Int._bridgeToObjectiveC()().super.super.isa;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v224 = v70;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 4, v74);
  v225 = v224;
  v75 = (v72 + *(v62 + 20));
  v77 = v75[1];
  v184 = *v75;
  v76 = v184;
  v183 = v77;
  v79 = v75[2];
  v78 = v75[3];
  v182 = v79;
  v186 = v78;
  v80 = type metadata accessor for XPCDictionary();
  v81 = *(v80 - 8);
  v82 = *(v81 + 16);
  v176 = v81 + 16;
  v181 = v82;
  v83 = v177;
  v82(v177, v72, v80);
  v180 = *(v81 + 56);
  v180(v83, 0, 1, v80);
  v84 = v216;
  PromptEnvelope.unseal(_:)(v83, v76, v77, v79, v186, v216);
  outlined destroy of XPCDictionary?(v83);
  v85 = Prompt.turns()();
  v86 = v185 + 8;
  v179 = *(v185 + 8);
  v178 = v72;
  v179(v84, v187);
  v87 = *(v85 + 16);

  v88 = Int._bridgeToObjectiveC()().super.super.isa;
  v89 = v225;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v224 = v89;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, 5, v90);
  v225 = v224;
  v181(v83, v72, v80);
  v180(v83, 0, 1, v80);
  PromptEnvelope.unseal(_:)(v83, v184, v183, v182, v186, v84);
  outlined destroy of XPCDictionary?(v83);
  Prompt.string.getter();
  v179(v84, v187);
  v91 = String.count.getter();

  v181(v83, v178, v80);
  v174 = v80;
  v173[1] = v81 + 56;
  v180(v83, 0, 1, v80);
  v92 = v223;
  PromptEnvelope.unseal(_:)(v83, v184, v183, v182, v186, v223);
  outlined destroy of XPCDictionary?(v83);
  v93 = Prompt.delimiters.getter();
  v185 = v86;
  v179(v92, v187);
  v94 = *(v93 + 16);

  if (__OFADD__(v91, v94))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v95 = Int._bridgeToObjectiveC()().super.super.isa;
    v96 = v225;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v224 = v96;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, 7, v97);
    v225 = v224;
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v98 = NSString.init(stringLiteral:)();
    v99 = v225;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v224 = v99;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, 6, v100);
    v101 = 0;
    v102 = 0;
    v225 = v224;
    v103 = *(v215 + 32);
    v197 = *(v103 + 16);
    v196 = v103;
    v195 = v103 + 32;
    v216 = v222 + 16;
    v215 = v213 + 88;
    v214 = (v213 + 96);
    LODWORD(v213) = *MEMORY[0x1E69DA808];
    v104 = v211;
    v211 += 8;
    v212 = (v104 + 32);
    v210 = (v222 + 8);
    v105 = v208;
    v106 = v193;
    v220 = v19;
    while (v101 != v197)
    {
      if (v101 >= *(v196 + 16))
      {
        goto LABEL_65;
      }

      v205 = v102;
      v108 = (v195 + 56 * v101);
      v109 = *v108;
      v110 = v108[1];
      v112 = v108[4];
      v111 = v108[5];
      v113 = v108[6];
      v203 = v101 + 1;
      v114 = v108[2];
      v115 = v108[3];
      v223 = *(v110 + 16);
      v204 = v114;

      v199 = v115;
      v200 = v112;
      outlined copy of FinishReason(v115, v112);
      v202 = v111;
      v201 = v113;
      outlined copy of Data._Representation(v111, v113);
      v207 = v109;

      v116 = 0;
      v117 = 0;
      while (v223 != v116)
      {
        v119 = v220;
        v118 = v221;
        if (v116 >= *(v110 + 16))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v120 = v217;
        (*(v222 + 16))(v217, v110 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v116, v106);
        v121 = v106;
        Prompt.ToolCall.kind.getter();
        v122 = (*v215)(v119, v118);
        if (v122 != v213)
        {
          goto LABEL_70;
        }

        ++v116;
        (*v214)(v119, v118);
        v123 = v218;
        v124 = v219;
        (*v212)(v218, v119, v219);
        Prompt.ToolCall.Function.name.getter();
        v125 = String.count.getter();

        (*v211)(v123, v124);
        (*v210)(v120, v121);
        v126 = __OFADD__(v117, v125);
        v117 += v125;
        v106 = v121;
        if (v126)
        {
          goto LABEL_58;
        }
      }

      v127 = v205 + v117;
      if (__OFADD__(v205, v117))
      {
        goto LABEL_66;
      }

      v128 = v207;
      v129 = *(v207 + 16);
      if (v129)
      {
        v130 = 0;
        v131 = v207 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
        v132 = *(v189 + 72);
        v223 = (v129 - 1);
        v133 = v206;
        do
        {
          _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v131, v133, type metadata accessor for PromptCompletion.Segment);
          _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v133, v105, type metadata accessor for PromptCompletion.Content);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of Constraints(v133, type metadata accessor for PromptCompletion.Segment);
            outlined destroy of Constraints(v105, type metadata accessor for PromptCompletion.Content);
            if (v223 == v130)
            {

              v107 = 0;
LABEL_39:
              v106 = v193;
              goto LABEL_20;
            }
          }

          else
          {
            v134 = *v105;
            v135 = v105[1];
            v137 = v105[2];
            v136 = v105[3];
            v138 = *(v208 + 4);
            v107 = String.count.getter();

            v133 = v206;

            v139 = v136;
            v140 = v138;
            v128 = v207;
            v105 = v208;
            outlined consume of Data?(v139, v140);
            outlined destroy of Constraints(v133, type metadata accessor for PromptCompletion.Segment);
            if (v223 == v130)
            {

              goto LABEL_39;
            }
          }

          ++v130;
          v131 += v132;
        }

        while (v130 < *(v128 + 16));
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v107 = 0;
LABEL_20:

      outlined consume of FinishReason(v199, v200);
      outlined consume of Data._Representation(v202, v201);

      v102 = v127 + v107;
      v66 = v198;
      v101 = v203;
      if (__OFADD__(v127, v107))
      {
        goto LABEL_67;
      }
    }

    v141 = Int._bridgeToObjectiveC()().super.super.isa;
    v142 = v225;
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v224 = v142;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v141, 8, v143);
    v225 = v224;
    v144 = v177;
    v145 = v174;
    v181(v177, v178, v174);
    v180(v144, 0, 1, v145);
    v146 = v175;
    PromptEnvelope.unseal(_:)(v144, v184, v183, v182, v186, v175);
    outlined destroy of XPCDictionary?(v144);
    v147 = Prompt.attachments.getter();
    v179(v146, v187);
    v223 = *(v147 + 16);
    if (v223)
    {
      v148 = 0;
      v221 = v192 + 16;
      v220 = (v173[0] + 88);
      LODWORD(v219) = *MEMORY[0x1E69DA770];
      LODWORD(v218) = *MEMORY[0x1E69DA748];
      LODWORD(v217) = *MEMORY[0x1E69DA768];
      v215 = v192 + 8;
      v149 = (v173[0] + 8);
      v222 = v192 + 32;
      v150 = MEMORY[0x1E69E7CC0];
      v151 = v188;
      v216 = v147;
      while (v148 < *(v147 + 16))
      {
        v152 = (*(v192 + 80) + 32) & ~*(v192 + 80);
        v153 = *(v192 + 72);
        v154 = v190;
        (*(v192 + 16))(v190, v147 + v152 + v153 * v148, v66);
        Prompt.Attachment.content.getter();
        v155 = v194;
        v156 = (*v220)(v194, v151);
        if (v156 == v219 || v156 == v218 || v156 == v217)
        {
          (*v149)(v155, v151);
          v159 = *v222;
          (*v222)(v191, v154, v66);
          v160 = swift_isUniquelyReferenced_nonNull_native();
          v224 = v150;
          if ((v160 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 16) + 1, 1);
            v150 = v224;
          }

          v162 = *(v150 + 16);
          v161 = *(v150 + 24);
          if (v162 >= v161 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v161 > 1, v162 + 1, 1);
            v150 = v224;
          }

          *(v150 + 16) = v162 + 1;
          v66 = v198;
          v159((v150 + v152 + v162 * v153), v191, v198);
          v151 = v188;
          v147 = v216;
        }

        else
        {
          (*v215)(v154, v66);
          (*v149)(v155, v151);
        }

        if (v223 == ++v148)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_68;
    }

LABEL_59:
    v150 = MEMORY[0x1E69E7CC0];
LABEL_60:

    v163 = *(v150 + 16);

    v164 = Int._bridgeToObjectiveC()().super.super.isa;
    v165 = v225;
    v166 = swift_isUniquelyReferenced_nonNull_native();
    v224 = v165;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, 9, v166);
    v167 = v224;
    v168 = MEMORY[0x1AC5A5AE0](0xD00000000000001BLL, 0x80000001ABA42EF0);
    v169 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration0D9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCG_SS_AMts5NeverOTg504_s15d13Generation0A9f14C9Dimension33_hijklmn7ALLOSo8o36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5p20OIegnrzr_TR04_s15a13r134A9c120C29sendInferenceRequestTelemetry7session7request8response9streamingyAC_AA014CompletePromptF0VAA0M10CompletionVSbtFSS_So8l17CtAC9U34_efghijK14ALLO_ANtXEfU1_Tf3nnnpf_nTf1cn_n(v167);

    if (v169[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
      v170 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v170 = MEMORY[0x1E69E7CC8];
    }

    v224 = v170;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v171, 1, &v224);

    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v172 = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

uint64_t outlined init with copy of Constraints?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of XPCDictionary?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Constraints(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NSString(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for TokenGenerator.Dimension(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenGenerator.Dimension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension()
{
  result = lazy protocol witness table cache variable for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension;
  if (!lazy protocol witness table cache variable for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerator.Dimension and conformance TokenGenerator.Dimension);
  }

  return result;
}

unint64_t specialized TokenGenerator.Dimension.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenGenerator.Dimension.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t TokenStream.init(throwing:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in TokenStream.init(throwing:);
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = _s15TokenGeneration0A6StreamV8throwingACyxGs5Error_p_tcfcAA16PromptCompletionVyYbKcfU0_TA_0;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  MEMORY[0x1AC5A6AE0](a1);
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 2) = v8;
  *(v9 + 3) = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out AsyncThrowingStream<PromptCompletionEvent, Error>);
  *(v9 + 4) = v6;
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error);
  *(v10 + 4) = v7;
  *a2 = partial apply for closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a2[1] = v9;
  a2[2] = &async function pointer to partial apply for closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a2[3] = v10;
}

uint64_t TokenStream.contentAndPromptCompletion()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = a3;
  v4[8] = a1;
  v5 = *(a3 + 16);
  v4[11] = v5;
  v6 = type metadata accessor for Optional();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = *(v5 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = type metadata accessor for String.Encoding();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v14 = type metadata accessor for InferenceResponse.Content();
  v4[21] = v14;
  v15 = *(v14 - 8);
  v4[22] = v15;
  v16 = *(v15 + 64) + 15;
  v4[23] = swift_task_alloc();
  v17 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v4[24] = v17;
  v18 = *(v17 + 64) + 15;
  v4[25] = swift_task_alloc();
  v19 = type metadata accessor for PromptCompletion.Content(0);
  v4[26] = v19;
  v20 = *(v19 - 8);
  v4[27] = v20;
  v21 = *(v20 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v22 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v23 = swift_task_alloc();
  v24 = v3[1];
  v25 = v3[2];
  v4[30] = v23;
  v4[31] = v24;
  v4[32] = v3[3];

  v29 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v4[33] = v27;
  *v27 = v4;
  v27[1] = TokenStream.contentAndPromptCompletion();

  return v29(v23);
}

uint64_t TokenStream.contentAndPromptCompletion()()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = TokenStream.contentAndPromptCompletion();
  }

  else
  {
    v3 = TokenStream.contentAndPromptCompletion();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v113 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[9];
  outlined init with take of PromptCompletion(v0[30], v3, type metadata accessor for PromptCompletion);

  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v5 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = v0[27];
      v9 = v0[24];
      v109 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v109;
      v10 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11 = *(v9 + 72);
      do
      {
        v12 = v0[29];
        v13 = v0[25];
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v10, v13, type metadata accessor for PromptCompletion.Segment);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v13, v12, type metadata accessor for PromptCompletion.Content);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v13, type metadata accessor for PromptCompletion.Segment);
        v109 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
          v7 = v109;
        }

        v16 = v0[29];
        *(v7 + 16) = v15 + 1;
        outlined init with take of PromptCompletion(v16, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, type metadata accessor for PromptCompletion.Content);
        v10 += v11;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v17 = v0[27];
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMR);
    v21 = *(v17 + 72);
    v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1ABA1D930;
    v109 = 0;
    v110 = 0xE000000000000000;
    v111 = MEMORY[0x1E69E7CC0];
    v112 = xmmword_1ABA1D8C0;
    InferenceResponse.TextContent.init(_:)(&v109, v18);
    (*(v19 + 104))(v18, *MEMORY[0x1E69C64C0], v20);
    PromptCompletion.Content.init(_:)(v18, (v7 + v22));
  }

  v23 = v0[11];
  v24 = static Array._allocateUninitialized(_:)();
  v108 = v24;
  v25 = *(v7 + 16);
  if (v25)
  {
    v26 = v0[27];
    v104 = v0[28];
    v27 = v0[15];
    v94 = v0[10];
    v28 = v7 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v29 = *(v26 + 72);
    v100 = (v0[19] + 8);
    v92 = (v27 + 8);
    v93 = (v27 + 16);
    v98 = v0[34];
    v106 = MEMORY[0x1E69E7CC0];
    v102 = v29;
    while (1)
    {
      v30 = v0[26];
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v28, v0[28], type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v0[28];
      if (EnumCaseMultiPayload)
      {
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v32, type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v33 = v0[20];
        v34 = v0[18];
        v35 = *v32;
        v37 = v104[1];
        v36 = v104[2];
        v38 = v104[3];
        v39 = v104[4];
        static String.Encoding.utf8.getter();
        v40 = String.data(using:allowLossyConversion:)();
        v41 = v33;
        v43 = v42;
        (*v100)(v41, v34);
        if (v43 >> 60 == 15)
        {

          outlined consume of Data?(v38, v39);
        }

        else
        {
          v96 = v38;
          v97 = v39;
          v44 = v0[17];
          v45 = *(v94 + 24);
          v46 = v43;
          v47 = v0[11];
          v48 = v98;
          static Generable.decode(data:)();
          if (v98)
          {
            v99 = v40;
            swift_getErrorValue();
            v50 = v0[2];
            v49 = v0[3];
            v51 = v0[4];
            v52 = Error.localizedDescription.getter();
            v95 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
            }

            v55 = *(v106 + 2);
            v54 = *(v106 + 3);
            if (v55 >= v54 >> 1)
            {
              v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v106);
            }

            outlined consume of Data?(v99, v46);

            outlined consume of Data?(v96, v39);
            v98 = 0;
            *(v106 + 2) = v55 + 1;
            v56 = &v106[16 * v55];
            *(v56 + 4) = v52;
            *(v56 + 5) = v95;
            v29 = v102;
            goto LABEL_12;
          }

          v57 = v0[17];
          v58 = v0[11];
          (*v93)(v0[16], v57, v58);
          type metadata accessor for Array();
          Array.append(_:)();
          outlined consume of Data?(v40, v46);

          outlined consume of Data?(v96, v97);
          (*v92)(v57, v58);
          v98 = 0;
        }

        v29 = v102;
      }

LABEL_12:
      v28 += v29;
      if (!--v25)
      {

        v60 = v106;
        v59 = v108;
        goto LABEL_26;
      }
    }
  }

  v59 = v24;

  v60 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v61 = v0[14];
  v62 = v0[15];
  v63 = v0[11];
  v0[5] = v59;
  type metadata accessor for Array();
  swift_getWitnessTable();
  BidirectionalCollection.last.getter();
  if ((*(v62 + 48))(v61, 1, v63) == 1)
  {
    v64 = 0xD00000000000002DLL;
    (*(v0[13] + 8))(v0[14], v0[12]);

    if (*(v60 + 2))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      MEMORY[0x1AC5A5BC0](0xD00000000000004DLL, 0x80000001ABA42D20);
      v0[6] = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v65 = BidirectionalCollection<>.joined(separator:)();
      v67 = v66;

      MEMORY[0x1AC5A5BC0](v65, v67);

      v64 = v109;
      v68 = v110;
    }

    else
    {

      v68 = 0x80000001ABA42D70;
    }

    v78 = v0[9];
    type metadata accessor for TokenGenerationError(0);
    lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError();
    swift_allocError();
    v80 = v79;
    v81 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *v80 = v64;
    v80[1] = v68;
    v80[2] = 0;
    v80[3] = 0;
    v80[4] = 0;
    v80[5] = v81;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v78, type metadata accessor for PromptCompletion);
    v83 = v0[29];
    v82 = v0[30];
    v84 = v0[28];
    v85 = v0[25];
    v86 = v0[23];
    v87 = v0[20];
    v89 = v0[16];
    v88 = v0[17];
    v90 = v0[14];

    v77 = v0[1];
  }

  else
  {
    v69 = v0[29];
    v70 = v0[30];
    v71 = v0[28];
    v72 = v0[25];
    v101 = v0[23];
    v103 = v0[20];
    v105 = v0[17];
    v107 = v0[16];
    v74 = v0[14];
    v73 = v0[15];
    v75 = v0[11];
    v76 = v0[8];

    (*(v73 + 32))(v76, v74, v75);

    v77 = v0[1];
  }

  return v77();
}

{
  v1 = v0[31];
  v2 = v0[32];

  v3 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[14];

  v13 = v0[1];

  return v13();
}

uint64_t TokenStream.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMd, &_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = v1[3];
  v19 = *v1;
  v18 = *(v1 + 1);
  v20 = v18;
  v21 = v15;
  type metadata accessor for Token();
  lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();

  AsyncCompactMapSequence.init(_:transform:)();
  (*(v8 + 16))(v12, v14, v7);
  specialized AsyncCompactMapSequence.makeAsyncIterator()();
  (*(v8 + 8))(v14, v7);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  return (*(*(v16 - 8) + 32))(a1, v6, v16);
}

uint64_t TokenStream.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](TokenStream.AsyncIterator.next(), 0, 0);
}

uint64_t TokenStream.AsyncIterator.next()()
{
  static Task<>.checkCancellation()();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = PromptCompletionStream.AsyncIterator.next();
  v2 = v0[2];
  v3 = v0[3];

  return specialized AsyncCompactMapSequence.Iterator.next()(v2);
}

uint64_t TokenStream.collect()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for String.Encoding();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for Token();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = type metadata accessor for PromptCompletion.Content(0);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v15 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v3[19] = v16;
  v17 = swift_task_alloc();
  v18 = v2[1];
  v19 = v2[2];
  v3[20] = v17;
  v3[21] = v18;
  v3[22] = v2[3];

  v23 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v3[23] = v21;
  *v21 = v3;
  v21[1] = TokenStream.collect();

  return v23(v16);
}

uint64_t TokenStream.collect()()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = TokenStream.collect();
  }

  else
  {
    v3 = TokenStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  outlined init with take of PromptCompletion(v0[19], v3, type metadata accessor for PromptCompletion);

  v4 = *(v3 + 32);

  _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v3, type metadata accessor for PromptCompletion);
  if (!v4[2])
  {
    goto LABEL_8;
  }

  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[6];
  v8 = v4[7];
  v9 = v4[8];
  v10 = v4[9];
  v11 = v4[10];

  outlined copy of FinishReason(v8, v9);
  outlined copy of Data._Representation(v10, v11);

  outlined consume of FinishReason(v8, v9);
  outlined consume of Data._Representation(v10, v11);
  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = v0[15];
    v14 = v0[12];
    v109 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v15 = v109;
    v16 = v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    do
    {
      v18 = v0[18];
      v19 = v0[13];
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v16, v19, type metadata accessor for PromptCompletion.Segment);
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v19, v18, type metadata accessor for PromptCompletion.Content);
      _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v19, type metadata accessor for PromptCompletion.Segment);
      v21 = *(v109 + 16);
      v20 = *(v109 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
      }

      v22 = v0[18];
      *(v109 + 16) = v21 + 1;
      outlined init with take of PromptCompletion(v22, v109 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, type metadata accessor for PromptCompletion.Content);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  else
  {
LABEL_8:

    v15 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v15 + 16);
  if (v23)
  {
    v24 = v0[15];
    v100 = v0[16];
    v25 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v24 + 72);
    v99 = v0[8];
    v107 = (v99 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    v102 = v0;
    v98 = v26;
    do
    {
      v29 = v0[16];
      v28 = v0[17];
      v30 = v0[14];
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v25, v28, type metadata accessor for PromptCompletion.Content);
      _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v28, v29, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = v0[16];
      v32 = v0[17];
      if (EnumCaseMultiPayload)
      {
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v0[17], type metadata accessor for PromptCompletion.Content);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v33, type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v34 = v0[10];
        v103 = v0[7];
        v105 = v0[11];
        v35 = *v33;
        v36 = v27;
        v38 = v100[1];
        v37 = v100[2];
        v39 = v100[3];
        v40 = v100[4];

        Token.init(text:)();
        v27 = v36;

        outlined consume of Data?(v39, v40);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(v32, type metadata accessor for PromptCompletion.Content);
        v41 = *v107;
        (*v107)(v105, v34, v103);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v43 = v27[2];
        v42 = v27[3];
        v0 = v102;
        if (v43 >= v42 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1, v27);
        }

        v44 = v102[11];
        v45 = v102[7];
        v27[2] = v43 + 1;
        v41(v27 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v43, v44, v45);
        v26 = v98;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v47 = v27[2];
  v48 = MEMORY[0x1E69E7CC0];
  v101 = v27;
  if (v47)
  {
    v49 = v0[8];
    v110 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
    v48 = v110;
    v50 = *(v49 + 16);
    v49 += 16;
    v51 = v27 + ((*(v49 + 64) + 32) & ~*(v49 + 64));
    v104 = *(v49 + 56);
    v106 = v50;
    v52 = (v49 - 8);
    do
    {
      v53 = v0[9];
      v54 = v0[7];
      v106(v53, v51, v54);
      v55 = Token.text.getter();
      v57 = v56;
      result = (*v52)(v53, v54);
      v59 = *(v110 + 16);
      v58 = *(v110 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
      }

      *(v110 + 16) = v60;
      v61 = v110 + 16 * v59;
      *(v61 + 32) = v55;
      *(v61 + 40) = v57;
      v51 += v104;
      --v47;
    }

    while (v47);
LABEL_28:
    v62 = 0;
    v63 = (v48 + 40);
    while (v62 < *(v48 + 16))
    {
      ++v62;
      v65 = *(v63 - 1);
      v64 = *v63;

      MEMORY[0x1AC5A5BC0](v65, v64);

      v63 += 2;
      if (v60 == v62)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v60 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v60)
  {
    goto LABEL_28;
  }

LABEL_31:
  v67 = v0[5];
  v66 = v0[6];
  v68 = v0[4];

  static String.Encoding.utf8.getter();
  v69 = String.data(using:allowLossyConversion:)();
  v71 = v70;
  result = (*(v67 + 8))(v66, v68);
  if (v71 >> 60 == 15)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v72 = v0[24];
  v73 = v0[2];
  v74 = v0[3];

  v75 = *(v74 + 24);
  v76 = *(v74 + 16);
  static Generable.decode(data:)();
  outlined consume of Data?(v69, v71);
  if (v72)
  {

    v78 = v0[19];
    v77 = v0[20];
    v80 = v0[17];
    v79 = v0[18];
    v81 = v0[16];
    v82 = v0[13];
    v84 = v0[10];
    v83 = v0[11];
    v85 = v0[9];
    v108 = v0[6];

    v86 = v0[1];

    return v86();
  }

  else
  {
    v88 = v0[19];
    v87 = v0[20];
    v90 = v0[17];
    v89 = v0[18];
    v91 = v0[16];
    v92 = v0[13];
    v94 = v0[10];
    v93 = v0[11];
    v95 = v0[9];
    v96 = v0[6];

    v97 = v0[1];

    return v97(v101);
  }
}

{
  v1 = v0[21];
  v2 = v0[22];

  v15 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t TokenStream.content()(uint64_t a1, uint64_t a2)
{
  v6 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  *(v3 + 48) = v7;
  v8 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  v9 = swift_task_alloc();
  *(v3 + 56) = v9;
  *v9 = v3;
  v9[1] = TokenStream.content();

  return TokenStream.contentAndPromptCompletion()(a1, v7, a2);
}

uint64_t TokenStream.content()()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = TokenStream.content();
  }

  else
  {
    _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(*(v2 + 48), type metadata accessor for PromptCompletion);
    v4 = TokenStream.content();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t TokenStream<>.map<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> (@out AsyncThrowingStream<PromptCompletionEvent, Error>)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<PromptCompletionEvent, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return a1();
}

uint64_t TokenStream.init(streamResponse:bufferResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a3;
  v12[4] = a4;
  *a5 = closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[1] = v11;
  a5[2] = &closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[3] = v12;
}

uint64_t TokenStream.events.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t closure #1 in TokenStream.init(throwing:)(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  MEMORY[0x1AC5A6AE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);

  return AsyncThrowingStream.init<>(unfolding:)();
}

uint64_t closure #1 in closure #1 in TokenStream.init(throwing:)()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  MEMORY[0x1AC5A6AE0](v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2();
}

uint64_t _s15TokenGeneration0A6StreamV8throwingACyxGs5Error_p_tcfcAA16PromptCompletionVyYbKcfU0_TA_0()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return MEMORY[0x1AC5A6AE0](v1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error)(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t closure #1 in TokenStream.makeAsyncIterator()(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TokenStream.makeAsyncIterator(), 0, 0);
}

uint64_t closure #1 in TokenStream.makeAsyncIterator()()
{
  outlined init with copy of PromptCompletionEvent(v0[17], (v0 + 11));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v1 = v0[16];
    v2 = v0[3];
    v3 = v0[5];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[10];

    Token.init(text:)();

    outlined consume of Data?(v6, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v0[16];
  v10 = type metadata accessor for Token();
  (*(*(v10 - 8) + 56))(v9, v8, 1, v10);
  v11 = v0[1];

  return v11();
}

uint64_t specialized AsyncCompactMapSequence.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMd, &_ss23AsyncCompactMapSequenceVy15TokenGeneration22PromptCompletionStreamVAC0E0VGMR);
  v2 = MEMORY[0x1AC5A63B0](&v11);
  v11(v9, v2);
  v3 = v10;
  v4 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12[3] = swift_getAssociatedTypeWitness();
  v12[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v12);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_0(v9);

  MEMORY[0x1AC5A6400](v1);
  (*(*(v1 - 8) + 8))(v0, v1);
  type metadata accessor for Token();
  lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
  return AsyncCompactMapSequence.Iterator.init(_:transform:)();
}

uint64_t specialized AsyncCompactMapSequence.Iterator.next()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized AsyncCompactMapSequence.Iterator.next(), 0, 0);
}

uint64_t specialized AsyncCompactMapSequence.Iterator.next()()
{
  v1 = v0[17];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  v3 = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v5 = v4;
  static Task<>.checkCancellation()();
  v0[19] = v3;
  v0[20] = v2;
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = specialized AsyncCompactMapSequence.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v0 + 7, v6, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = specialized AsyncCompactMapSequence.Iterator.next();
  }

  else
  {
    (*(v2 + 152))();
    v4 = specialized AsyncCompactMapSequence.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 136);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 56), v0 + 16);
    v3 = MEMORY[0x1AC5A63D0](v1);
    *(v0 + 184) = v4;
    v13 = (v3 + *v3);
    v5 = v3[1];
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    *v6 = v0;
    v6[1] = specialized AsyncCompactMapSequence.Iterator.next();
    v7 = *(v0 + 144);

    return v13(v7, v0 + 16);
  }

  else
  {
    v9 = *(v0 + 128);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 56, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
    v10 = type metadata accessor for Token();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = *(v0 + 144);

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  (*(v0 + 152))();

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x1EEE6DFA0](specialized AsyncCompactMapSequence.Iterator.next(), 0, 0);
}

{
  v1 = v0[18];
  v2 = type metadata accessor for Token();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v12 = v0[16];
    (*(v3 + 32))(v12, v1, v2);
    (*(v3 + 56))(v12, 0, 1, v2);
    v13 = v0[18];

    v11 = v0[1];
    goto LABEL_5;
  }

  v4 = v0[22];
  v5 = v0[17];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy15TokenGeneration22PromptCompletionStreamVAE0F0V_GMR);
  v7 = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v9 = v8;
  static Task<>.checkCancellation()();
  if (v4)
  {
    v10 = v0[18];
    v7(v0 + 12, 1);

    v11 = v0[1];
LABEL_5:

    return v11();
  }

  v0[19] = v7;
  v0[20] = v6;
  v15 = *(v9 + 24);
  v16 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v15);
  v17 = *(MEMORY[0x1E69E85A8] + 4);
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = specialized AsyncCompactMapSequence.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v0 + 7, v15, v16);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TokenStream<A>.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenStream.AsyncIterator.next()(a1);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance TokenStream<A>@<X0>(uint64_t a1@<X8>)
{
  TokenStream.makeAsyncIterator()(a1);
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
}

unint64_t lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError()
{
  result = lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError;
  if (!lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError)
  {
    type metadata accessor for TokenGenerationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMd, &_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v6, &_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMd, &_sSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
      result = outlined init with take of PromptCompletion(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMd, &_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VGMd, &_ss18_DictionaryStorageCySS15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v6, &_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMd, &_sSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
      result = outlined init with take of PromptCompletion(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMd, &_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration31Promptkit_Wireformat_JSONSchemaVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration31Promptkit_Wireformat_JSONSchemaVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v6, &_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMd, &_sSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      result = outlined init with take of PromptCompletion(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMd, &_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v6, &_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMd, &_sSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s15TokenGeneration16PromptCompletionV7SegmentVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata instantiation function for TokenStream()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for TokenStream.AsyncIterator()
{
  type metadata accessor for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator()
{
  if (!lazy cache variable for type metadata for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator)
  {
    type metadata accessor for Token();
    lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
    v0 = type metadata accessor for AsyncCompactMapSequence.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncCompactMapSequence<PromptCompletionStream, Token>.Iterator);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 9)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];
      v21 = *(i + 48);

      outlined copy of FinishReason?(v10, v11);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 56 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      *(v16 + 48) = v21;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TokenStream.init(throwing:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenStream.init(throwing:)(a1, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1[1];
  v5 = *(a2 + 16);
  v7._countAndFlagsBits = *a1;
  v7._object = v4;
  result = sub_1AB83C118(v7);
  *a3 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys@<W0>(Swift::String a1@<X1:X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  result = sub_1AB83C118(a1);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance _LoadedUseCaseConfigurations<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = protocol witness for static Equatable.== infix(_:_:) in conformance CachePolicy();
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _LoadedUseCaseConfigurations<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _LoadedUseCaseConfigurations.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return _LoadedUseCaseConfigurations.init(from:)(a1);
}

uint64_t _LoadedUseCaseConfigurations.init(from:)(uint64_t *a1)
{
  v4 = *(*v1 + class metadata base offset for _LoadedUseCaseConfigurations);
  type metadata accessor for _LoadedUseCaseConfigurations.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedDecodingContainer();
  v14 = *(v5 - 8);
  v6 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-1] - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for _LoadedUseCaseConfigurations();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v14;
    type metadata accessor for Dictionary();
    WitnessTable = swift_getWitnessTable();
    v15[5] = MEMORY[0x1E69E6190];
    v15[6] = WitnessTable;
    swift_getWitnessTable();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v15[8] + direct field offset for _LoadedUseCaseConfigurations.useCaseConfigurations) = v15[0];
    outlined init with copy of PromptCompletionEvent(a1, v15);
    v10 = _LoadedModelConfiguration.init(from:)();
    (*(v11 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v10;
}

uint64_t _LoadedUseCaseConfigurations.configuration(for:fallbackToDefault:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *v4;
  v10 = *(v4 + direct field offset for _LoadedUseCaseConfigurations.useCaseConfigurations);
  if (!v10 || (v26 = a1, v27 = a2, v11 = *(v8 + class metadata base offset for _LoadedUseCaseConfigurations), , MEMORY[0x1AC5A59F0](&v28, &v26, v10, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69E6168]), , (result = v28) == 0))
  {
    if ((a3 & 1) == 0)
    {
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.assets);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v26);
        _os_log_impl(&dword_1AB828000, v22, v23, "No model configuration for use case - %s. Not going to fallback to default config", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      return 0;
    }

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.assets);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v26);
      _os_log_impl(&dword_1AB828000, v14, v15, "No model configuration for use case - %s. Fallback to default config", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    if (!v10 || (v26 = 0x73746C7561666564, v27 = 0xE800000000000000, MEMORY[0x1AC5A59F0](&v28, &v26, v10, MEMORY[0x1E69E6158], *(v9 + class metadata base offset for _LoadedUseCaseConfigurations), MEMORY[0x1E69E6168]), (result = v28) == 0))
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1AB828000, v18, v19, "No default model configuration", v20, 2u);
        MEMORY[0x1AC5A6CD0](v20, -1, -1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _LoadedUseCaseConfigurations.deinit()
{
  v0 = _LoadedModelConfiguration.deinit();
  v1 = *(v0 + direct field offset for _LoadedUseCaseConfigurations.useCaseConfigurations);

  return v0;
}

uint64_t _LoadedUseCaseConfigurations.__deallocating_deinit()
{
  v0 = *(_LoadedModelConfiguration.deinit() + direct field offset for _LoadedUseCaseConfigurations.useCaseConfigurations);

  return swift_deallocClassInstance();
}

uint64_t _UseCaseConfiguration.samplingParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v16[11] = v2;
  v16[12] = *(v1 + 216);
  v17 = *(v1 + 232);
  v3 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v3;
  v4 = *(v1 + 168);
  v16[8] = *(v1 + 152);
  v16[9] = v4;
  v5 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v5;
  v6 = *(v1 + 104);
  v16[4] = *(v1 + 88);
  v16[5] = v6;
  v7 = *(v1 + 40);
  v16[0] = *(v1 + 24);
  v16[1] = v7;
  v8 = *(v1 + 200);
  *(a1 + 160) = *(v1 + 184);
  *(a1 + 176) = v8;
  *(a1 + 192) = *(v1 + 216);
  *(a1 + 208) = *(v1 + 232);
  v9 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v9;
  v10 = *(v1 + 168);
  *(a1 + 128) = *(v1 + 152);
  *(a1 + 144) = v10;
  v11 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v11;
  v12 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v12;
  v13 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v13;
  return outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v15, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _UseCaseConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x736C6F6F74;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0x80000001ABA3F530;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x736C6F6F74;
  }

  if (*a2)
  {
    v7 = 0x80000001ABA3F530;
  }

  else
  {
    v7 = 0xE500000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _UseCaseConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _UseCaseConfiguration.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _UseCaseConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _UseCaseConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _UseCaseConfiguration.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance _UseCaseConfiguration.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001ABA3F530;
  v3 = 0x736C6F6F74;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance _UseCaseConfiguration.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x736C6F6F74;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _UseCaseConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _UseCaseConfiguration.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _UseCaseConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _UseCaseConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _UseCaseConfiguration.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  _UseCaseConfiguration.init(from:)(a1);
  return v2;
}

uint64_t _UseCaseConfiguration.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = v63 - v4;
  v79 = type metadata accessor for Schema();
  v73 = *(v79 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolDescription(0);
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v63 - v11;
  v13 = type metadata accessor for ToolItem();
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21_UseCaseConfigurationC10CodingKeys33_5FC42FED811DAFFDB79536B4FDA355F0LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21_UseCaseConfigurationC10CodingKeys33_5FC42FED811DAFFDB79536B4FDA355F0LLOGMR);
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v63 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys();
  v23 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v24 = v23;
  if (v23)
  {
    v25 = v130;
    v26 = v82;
LABEL_4:
    type metadata accessor for _UseCaseConfiguration();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v74 = v13;
  v68 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMd, &_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMR);
  LOBYTE(v101) = 0;
  lazy protocol witness table accessor for type [ToolItem] and conformance <A> [A]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v66 = v20;
  v25 = v130;
  v26 = v82;
  if (v116)
  {
    v64 = v17;
    v65 = 0;
    v28 = *(v116 + 16);
    v63[1] = v116;
    if (v28)
    {
      v29 = v116 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v30 = *(v72 + 72);
      v31 = v74;
      v69 = (v73 + 48);
      v67 = (v73 + 32);
      v81 = MEMORY[0x1E69E7CC0];
      v70 = v30;
      v71 = v16;
      do
      {
        outlined init with copy of ToolItem(v29, v16);
        v32 = v16[1];
        if (v32 && (v33 = v16[3]) != 0)
        {
          v34 = *v16;
          v72 = v16[2];
          v73 = v34;
          v35 = v16 + *(v31 + 24);
          v36 = v16;
          v37 = v80;
          outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, v80, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);

          outlined destroy of ToolItem(v36);
          v38 = v79;
          if ((*v69)(v37, 1, v79) == 1)
          {

            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
            v30 = v70;
            v16 = v71;
            v31 = v74;
          }

          else
          {
            v39 = v37;
            v40 = *v67;
            v41 = v77;
            (*v67)(v77, v39, v38);
            v42 = type metadata accessor for FunctionDescription(0);
            v43 = v41;
            v44 = v68;
            v45 = v38;
            v46 = v75;
            v40(&v75[*(v42 + 24)], v43, v45);
            v47 = v72;
            *v46 = v73;
            v46[1] = v32;
            v46[2] = v47;
            v46[3] = v33;
            type metadata accessor for ToolType(0);
            swift_storeEnumTagMultiPayload();
            outlined init with take of ToolDescription(v46, v44);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v48 = v76;
              v49 = v81;
            }

            else
            {
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81);
              v48 = v76;
            }

            v16 = v71;
            v51 = v49[2];
            v50 = v49[3];
            if (v51 >= v50 >> 1)
            {
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, v49);
            }

            v49[2] = v51 + 1;
            v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
            v81 = v49;
            outlined init with take of ToolDescription(v44, v49 + v52 + *(v48 + 72) * v51);
            v31 = v74;
            v30 = v70;
          }
        }

        else
        {
          outlined destroy of ToolItem(v16);
        }

        v29 += v30;
        --v28;
      }

      while (v28);
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
    }

    v25 = v130;
    v53 = v81;
    v26 = v82;
    v17 = v64;
    v24 = v65;
  }

  else
  {
    v53 = 0;
  }

  *(v25 + 16) = v53;
  v115 = 1;
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  v54 = v66;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v24)
  {
    (*(v78 + 8))(v54, v17);
    v55 = *(v25 + 16);

    goto LABEL_4;
  }

  v99[10] = v126;
  v99[11] = v127;
  v99[12] = v128;
  v99[6] = v122;
  v99[7] = v123;
  v99[8] = v124;
  v99[9] = v125;
  v99[2] = v118;
  v99[3] = v119;
  v99[4] = v120;
  v99[5] = v121;
  v99[0] = v116;
  v99[1] = v117;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v107 = v122;
  v108 = v123;
  v109 = v124;
  v110 = v125;
  v103 = v118;
  v104 = v119;
  v105 = v120;
  v106 = v121;
  v100 = v129;
  v114 = v129;
  v101 = v116;
  v102 = v117;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(&v101) == 1)
  {
    (*(v78 + 8))(v66, v17);
    _s15TokenGeneration18SamplingParametersVSgWOi0_(&v85);
  }

  else
  {
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v87 = v103;
    v88 = v104;
    v89 = v105;
    v90 = v106;
    v85 = v101;
    v86 = v102;
    v56 = SamplingParametersEnvelope.unseal()(v83);
    (*(v78 + 8))(v66, v17, v56);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v99, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMd, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMR);
    v95 = v83[10];
    v96 = v83[11];
    v97 = v83[12];
    v98 = v84;
    v91 = v83[6];
    v92 = v83[7];
    v93 = v83[8];
    v94 = v83[9];
    v87 = v83[2];
    v88 = v83[3];
    v89 = v83[4];
    v90 = v83[5];
    v85 = v83[0];
    v86 = v83[1];
    protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest(&v85);
  }

  v57 = v96;
  *(v25 + 184) = v95;
  *(v25 + 200) = v57;
  *(v25 + 216) = v97;
  v58 = v92;
  *(v25 + 120) = v91;
  *(v25 + 136) = v58;
  v59 = v94;
  *(v25 + 152) = v93;
  *(v25 + 168) = v59;
  v60 = v88;
  *(v25 + 56) = v87;
  *(v25 + 72) = v60;
  v61 = v90;
  *(v25 + 88) = v89;
  *(v25 + 104) = v61;
  v62 = v86;
  *(v25 + 24) = v85;
  *(v25 + 232) = v98;
  *(v25 + 40) = v62;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v25;
}

uint64_t _UseCaseConfiguration.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 200);
  v9[10] = *(v0 + 184);
  v9[11] = v2;
  v9[12] = *(v0 + 216);
  v10 = *(v0 + 232);
  v3 = *(v0 + 136);
  v9[6] = *(v0 + 120);
  v9[7] = v3;
  v4 = *(v0 + 168);
  v9[8] = *(v0 + 152);
  v9[9] = v4;
  v5 = *(v0 + 72);
  v9[2] = *(v0 + 56);
  v9[3] = v5;
  v6 = *(v0 + 104);
  v9[4] = *(v0 + 88);
  v9[5] = v6;
  v7 = *(v0 + 40);
  v9[0] = *(v0 + 24);
  v9[1] = v7;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
  return v0;
}

uint64_t _UseCaseConfiguration.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 200);
  v9[10] = *(v0 + 184);
  v9[11] = v2;
  v9[12] = *(v0 + 216);
  v10 = *(v0 + 232);
  v3 = *(v0 + 136);
  v9[6] = *(v0 + 120);
  v9[7] = v3;
  v4 = *(v0 + 168);
  v9[8] = *(v0 + 152);
  v9[9] = v4;
  v5 = *(v0 + 72);
  v9[2] = *(v0 + 56);
  v9[3] = v5;
  v6 = *(v0 + 104);
  v9[4] = *(v0 + 88);
  v9[5] = v6;
  v7 = *(v0 + 40);
  v9[0] = *(v0 + 24);
  v9[1] = v7;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance _UseCaseConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ToolItem.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7470697263736564;
  v4 = 0xEB000000006E6F69;
  if (v2 != 1)
  {
    v3 = 0x6574656D61726170;
    v4 = 0xEA00000000007372;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7470697263736564;
  v8 = 0xEB000000006E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6574656D61726170;
    v8 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolItem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ToolItem.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolItem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ToolItem.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ToolItem.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ToolItem.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7470697263736564;
  if (v2 != 1)
  {
    v5 = 0x6574656D61726170;
    v4 = 0xEA00000000007372;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolItem.CodingKeys()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolItem.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ToolItem.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMd, &_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v36 - v5;
  v42 = type metadata accessor for GenerationSchema();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLV10CodingKeysOGMR);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = type metadata accessor for ToolItem();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v21 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys();
  v22 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  v44 = v16;
  v37 = v11;
  v38 = v8;
  v24 = v41;
  v23 = v42;
  v25 = v43;
  v48 = 0;
  v27 = v19;
  *v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19[1] = v28;
  v36 = v28;
  v47 = 1;
  v19[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19[3] = v29;
  v46 = 2;
  lazy protocol witness table accessor for type ToolItem and conformance ToolItem(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v12;
  v30 = v40;
  if ((*(v40 + 48))(v25, 1, v23) == 1)
  {
    (*(v24 + 8))(v15, v36);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMd, &_s29GenerativeFunctionsFoundation16GenerationSchemaOSgMR);
    v31 = *(v44 + 24);
    v32 = type metadata accessor for Schema();
    (*(*(v32 - 8) + 56))(v19 + v31, 1, 1, v32);
  }

  else
  {
    v33 = v37;
    (*(v30 + 32))(v37, v25, v23);
    v34 = *(v44 + 24);
    (*(v30 + 16))(v38, v33, v23);
    Schema.init(type:)();
    (*(v30 + 8))(v33, v23);
    (*(v24 + 8))(v15, v36);
    v35 = type metadata accessor for Schema();
    (*(*(v35 - 8) + 56))(v27 + v34, 0, 1, v35);
  }

  outlined init with copy of ToolItem(v27, v39);
  __swift_destroy_boxed_opaque_existential_0(v45);
  return outlined destroy of ToolItem(v27);
}

uint64_t type metadata accessor for ToolItem()
{
  result = type metadata singleton initialization cache for ToolItem;
  if (!type metadata singleton initialization cache for ToolItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UseCaseConfiguration.CodingKeys and conformance _UseCaseConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ToolItem] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ToolItem] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolItem] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMd, &_sSay15TokenGeneration8ToolItem33_5FC42FED811DAFFDB79536B4FDA355F0LLVGMR);
    lazy protocol witness table accessor for type ToolItem and conformance ToolItem(&lazy protocol witness table cache variable for type ToolItem and conformance ToolItem, type metadata accessor for ToolItem);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolItem] and conformance <A> [A]);
  }

  return result;
}

uint64_t outlined init with copy of ToolItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ToolItem(uint64_t a1)
{
  v2 = type metadata accessor for ToolItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ToolDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ToolItem()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Schema?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for Schema?()
{
  if (!lazy cache variable for type metadata for Schema?)
  {
    type metadata accessor for Schema();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Schema?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolItem.CodingKeys and conformance ToolItem.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ToolItem and conformance ToolItem(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized ToolItem.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ToolItem.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Prompt.ToolCall.id.getter()
{
  return MEMORY[0x1EEE4A5B8]();
}

{
  return MEMORY[0x1EEE30158]();
}

uint64_t Prompt.ToolCall.Function.init(name:arguments:)()
{
  return MEMORY[0x1EEE4A5D0]();
}

{
  return MEMORY[0x1EEE30170]();
}

uint64_t Prompt.ToolCall.Function.name.getter()
{
  return MEMORY[0x1EEE4A5D8]();
}

{
  return MEMORY[0x1EEE30178]();
}

uint64_t Prompt.ToolCall.Function.arguments.getter()
{
  return MEMORY[0x1EEE4A5E0]();
}

{
  return MEMORY[0x1EEE30180]();
}

uint64_t type metadata accessor for Prompt.ToolCall.Function()
{
  return MEMORY[0x1EEE4A5E8]();
}

{
  return MEMORY[0x1EEE30188]();
}

uint64_t type metadata accessor for Prompt.ToolCall()
{
  return MEMORY[0x1EEE4A600]();
}

{
  return MEMORY[0x1EEE30198]();
}

uint64_t type metadata accessor for Prompt()
{
  return MEMORY[0x1EEE4A6B0]();
}

{
  return MEMORY[0x1EEE30260]();
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t AsyncSequence.map<A>(_:)()
{
  return MEMORY[0x1EEE6DB10]();
}

{
  return MEMORY[0x1EEE6DB18]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AC50]();
}

{
  return MEMORY[0x1EEE6AC58]();
}

{
  return MEMORY[0x1EEE6AC60]();
}

{
  return MEMORY[0x1EEE6AC68]();
}

{
  return MEMORY[0x1EEE6AC70]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACD8]();
}

{
  return MEMORY[0x1EEE6ACE0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

{
  return MEMORY[0x1EEE6ACF0]();
}

{
  return MEMORY[0x1EEE6AD10]();
}

{
  return MEMORY[0x1EEE6AD18]();
}

{
  return MEMORY[0x1EEE6AD30]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AD90]();
}

{
  return MEMORY[0x1EEE6AD98]();
}

{
  return MEMORY[0x1EEE6ADA0]();
}

{
  return MEMORY[0x1EEE6ADA8]();
}

{
  return MEMORY[0x1EEE6ADB0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE10]();
}

{
  return MEMORY[0x1EEE6AE18]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

{
  return MEMORY[0x1EEE6AE28]();
}

{
  return MEMORY[0x1EEE6AE48]();
}

{
  return MEMORY[0x1EEE6AE50]();
}

{
  return MEMORY[0x1EEE6AE68]();
}