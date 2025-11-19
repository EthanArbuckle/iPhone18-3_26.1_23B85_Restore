uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenizedStaticPromptTemplatePrefix(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
}

uint64_t TokenizedPromptModule.promptFragments.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

char *TokenizedPromptModule.tokenizationResults.getter()
{
  v1 = type metadata accessor for TokenizationResult(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v47 = (&v45 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v50 = (&v45 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v45 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v19 = *(v0 + 8);
  v20 = *(v19 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v54 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = v19 + v54;
  v22 = *(v16 + 72);
  v23 = MEMORY[0x1E69E7CC0];
  v52 = v22;
  v53 = v14;
  v51 = &v45 - v17;
  v49 = v9;
  while (1)
  {
    outlined init with copy of TokenizationResult(v21, v18, type metadata accessor for TokenizationResult);
    outlined init with copy of TokenizationResult(v18, v14, type metadata accessor for TokenizationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with copy of TokenizationResult(v18, v9, type metadata accessor for TokenizationResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v23);
      }

      v18 = v51;
      outlined destroy of TokenizationResult(v51, type metadata accessor for TokenizationResult);
      v23[2] = v26 + 1;
      v24 = v52;
      outlined init with take of TokenizationResult(v9, v23 + v54 + v26 * v52, type metadata accessor for TokenizationResult);
      v14 = v53;
      v22 = v24;
      outlined destroy of TokenizationResult(v53, type metadata accessor for TokenizationResult);
      goto LABEL_4;
    }

    v27 = *v14;
    v28 = v23[2];
    v29 = v50;
    if (!v28)
    {
      goto LABEL_13;
    }

    v48 = v23[2];
    v30 = (v28 - 1) * v22;
    outlined init with copy of TokenizationResult(v23 + v54 + v30, v50, type metadata accessor for TokenizationResult);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      outlined destroy of TokenizationResult(v29, type metadata accessor for TokenizationResult);
LABEL_13:
      *v4 = v27;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      v9 = v49;
      v33 = v23[2];
      v32 = v23[3];
      if (v33 >= v32 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v23);
      }

      outlined destroy of TokenizationResult(v18, type metadata accessor for TokenizationResult);
      v23[2] = v33 + 1;
      outlined init with take of TokenizationResult(v4, v23 + v54 + v33 * v22, type metadata accessor for TokenizationResult);
      v14 = v53;
      goto LABEL_4;
    }

    v46 = v30;
    v34 = v4;
    v35 = v1;
    v36 = *v29;
    v37 = *(v27 + 16);
    v38 = *(v36 + 2);
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v39 > *(v36 + 3) >> 1)
    {
      if (v38 <= v39)
      {
        v40 = v38 + v37;
      }

      else
      {
        v40 = v38;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v40, 1, v36);
      v36 = result;
    }

    v1 = v35;
    v4 = v34;
    v22 = v52;
    v14 = v53;
    if (*(v27 + 16))
    {
      v41 = *(v36 + 2);
      if ((*(v36 + 3) >> 1) - v41 < v37)
      {
        goto LABEL_40;
      }

      memcpy(&v36[8 * v41 + 32], (v27 + 32), 8 * v37);

      v9 = v49;
      if (v37)
      {
        v42 = *(v36 + 2);
        v43 = __OFADD__(v42, v37);
        v44 = v42 + v37;
        if (v43)
        {
          goto LABEL_41;
        }

        *(v36 + 2) = v44;
      }
    }

    else
    {

      v9 = v49;
      if (v37)
      {
        goto LABEL_38;
      }
    }

    *v47 = v36;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
    }

    v18 = v51;
    result = outlined destroy of TokenizationResult(v51, type metadata accessor for TokenizationResult);
    if (v48 > v23[2])
    {
      goto LABEL_39;
    }

    outlined assign with take of TokenizationResult(v47, v23 + v54 + v46);
LABEL_4:
    v21 += v22;
    if (!--v20)
    {
      return v23;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t TokenizedPromptModule.renderedString.getter()
{
  v1 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = *v0;
  v12 = *(*v0 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v27;
    v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v25 = *(v4 + 72);
    v15 = v24;
    do
    {
      outlined init with copy of TokenizationResult(v14, v10, type metadata accessor for Prompt.RenderedPromptFragment);
      outlined init with take of TokenizationResult(v10, v7, type metadata accessor for Prompt.RenderedPromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          outlined init with take of TokenizationResult(v7, v15, type metadata accessor for Prompt.RenderedSpecialToken);
          v17 = *v15;
          v18 = v15[1];

          outlined destroy of TokenizationResult(v15, type metadata accessor for Prompt.RenderedSpecialToken);
        }

        else
        {
          outlined destroy of TokenizationResult(v7, type metadata accessor for Prompt.RenderedPromptFragment);
          v17 = 0;
          v18 = 0xE000000000000000;
        }
      }

      else
      {
        v17 = *v7;
        v18 = v7[1];
      }

      v27 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v15 = v24;
        v13 = v27;
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v14 += v25;
      --v12;
    }

    while (v12);
  }

  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v22 = BidirectionalCollection<>.joined(separator:)();

  return v22;
}

char *TokenizedPromptModule.tokenIDs.getter()
{
  v26 = type metadata accessor for TokenizationResult(0);
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v27 = *v0;
  v8 = TokenizedPromptModule.tokenizationResults.getter();
  v9 = *(v8 + 2);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v10 = *(v1 + 80);
  v25 = v8;
  v11 = &v8[(v10 + 32) & ~v10];
  v12 = *(v1 + 72);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of TokenizationResult(v11, v7, type metadata accessor for TokenizationResult);
    outlined init with copy of TokenizationResult(v7, v4, type metadata accessor for TokenizationResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = outlined destroy of TokenizationResult(v7, type metadata accessor for TokenizationResult);
    if (EnumCaseMultiPayload == 1)
    {
      result = outlined destroy of TokenizationResult(v4, type metadata accessor for TokenizationResult);
      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v16 = *v4;
    }

    v17 = *(v16 + 16);
    v18 = *(v13 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v13 + 3) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v20, 1, v13);
      v13 = result;
      if (*(v16 + 16))
      {
LABEL_17:
        v21 = *(v13 + 2);
        if ((*(v13 + 3) >> 1) - v21 < v17)
        {
          goto LABEL_26;
        }

        memcpy(&v13[8 * v21 + 32], (v16 + 32), 8 * v17);

        if (v17)
        {
          v22 = *(v13 + 2);
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_27;
          }

          *(v13 + 2) = v24;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_4:
    v11 += v12;
    if (!--v9)
    {

      return v13;
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

uint64_t TokenizedPromptModule.init(promptFragments:promptFragmentTokenIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = type metadata accessor for TokenizationResult(0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  if (v10)
  {
    v17 = a1;
    v18 = a3;
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = 32;
    v12 = v20;
    do
    {
      v13 = a2;
      *v9 = *(a2 + v11);
      swift_storeEnumTagMultiPayload();
      v20 = v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);

      if (v14 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v14 + 1, 1);
        v12 = v20;
      }

      *(v12 + 16) = v14 + 1;
      outlined init with take of TokenizationResult(v9, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, type metadata accessor for TokenizationResult);
      v11 += 8;
      --v10;
      a2 = v13;
    }

    while (v10);

    a1 = v17;
    a3 = v18;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a3 = a1;
  a3[1] = v12;
  return result;
}

uint64_t TokenizedPromptModule.init(promptFragments:fragmentTokenizationResults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TokenizationResult(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v19 = a1;
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v20;
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = a2 + v13;
    v15 = *(v7 + 72);
    do
    {
      outlined init with copy of TokenizationResult(v14, v10, type metadata accessor for TokenizationResult);
      v20 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      outlined init with take of TokenizationResult(v10, v12 + v13 + v17 * v15, type metadata accessor for TokenizationResult);
      v14 += v15;
      --v11;
    }

    while (v11);

    a1 = v19;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a3 = a1;
  a3[1] = v12;
  return result;
}

uint64_t static TokenizedPromptModule.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV0bC4CoreE08RenderedD8FragmentO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore18TokenizationResultO_Tt1g5(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenizedPromptModule(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV0bC4CoreE08RenderedD8FragmentO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore18TokenizationResultO_Tt1g5(v2, v3);
}

unint64_t TokenizationResult.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt.AttachmentContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TokenizationResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TokenizationResult(v1, v9, type metadata accessor for TokenizationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of TokenizationResult(v9, v5, type metadata accessor for Prompt.AttachmentContent);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v17 = 0xD000000000000016;
    v18 = 0x80000001A8FD96D0;
    v10 = Prompt.AttachmentContent.description.getter();
    MEMORY[0x1AC57C120](v10);

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    v11 = v17;
    outlined destroy of TokenizationResult(v5, type metadata accessor for Prompt.AttachmentContent);
  }

  else
  {
    v12 = *v9;
    v17 = 0x496E656B6F743C3CLL;
    v18 = 0xEB000000003A7364;
    v13 = MEMORY[0x1AC57C2C0](v12, MEMORY[0x1E69E6530]);
    v15 = v14;

    MEMORY[0x1AC57C120](v13, v15);

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    return v17;
  }

  return v11;
}

void *TokenizerRunner.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[12] = 1;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CA938]) init];
  v0[5] = &type metadata for TokenizerRunnerSentencePieceModel;
  v0[6] = &protocol witness table for TokenizerRunnerSentencePieceModel;
  v0[2] = v1;
  v0[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[10] = &type metadata for GenerationOverrides;
  v0[11] = &protocol witness table for GenerationOverrides;
  v2 = swift_allocObject();
  v0[7] = v2;
  GenerationOverrides.init()((v2 + 16));
  return v0;
}

void *TokenizerRunner.init()()
{
  v0[12] = 1;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CA938]) init];
  v0[5] = &type metadata for TokenizerRunnerSentencePieceModel;
  v0[6] = &protocol witness table for TokenizerRunnerSentencePieceModel;
  v0[2] = v1;
  v0[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = &type metadata for GenerationOverrides;
  v5 = &protocol witness table for GenerationOverrides;
  *&v3 = swift_allocObject();
  GenerationOverrides.init()((v3 + 16));
  outlined init with take of PromptComponentValueConvertible(&v3, (v0 + 7));
  return v0;
}

uint64_t TokenizerRunner.init(tokenizerPath:)()
{
  *(v0 + 96) = 1;
  v2 = objc_allocWithZone(TokenizerRunnerObjC);
  v3 = @nonobjc TokenizerRunnerObjC.init(tokenizerPath:)();
  if (v1)
  {
    type metadata accessor for TokenizerRunner();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4 = v3;
    v8 = type metadata accessor for TokenizerRunnerObjC();
    v9 = &protocol witness table for TokenizerRunnerObjC;
    *&v7 = v4;
    outlined init with take of PromptComponentValueConvertible(&v7, v0 + 16);
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of TokenizerRunner.init(tokenizerPath:));
    outlined destroy of [Regex2BNF.CharacterPredicate](&unk_1F1CA5570, &_sSS_SStMd, &_sSS_SStMR);
    *(v0 + 104) = v5;
    v8 = &type metadata for GenerationOverrides;
    v9 = &protocol witness table for GenerationOverrides;
    *&v7 = swift_allocObject();
    GenerationOverrides.init()((v7 + 16));
    outlined init with take of PromptComponentValueConvertible(&v7, v0 + 56);
  }

  return v0;
}

uint64_t TokenizerRunner.__allocating_init(tokenizerPath:substitutionTextForInputTokenText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)(a1, a2, a3);
  return v6;
}

uint64_t TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 328) = a3;
  *(v5 + 336) = v4;
  *(v5 + 312) = a1;
  *(v5 + 320) = a2;
  v7 = *(*(type metadata accessor for Prompt.AttachmentContent(0) - 8) + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  v8 = type metadata accessor for TokenizationResult(0);
  *(v5 + 352) = v8;
  v9 = *(v8 - 8);
  *(v5 + 360) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 289) = *a4;

  return MEMORY[0x1EEE6DFA0](TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:), 0, 0);
}

uint64_t TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)()
{
  v89 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(*(v0 + 328) + 24) == 0;
  v88[0] = *(v0 + 289);
  v5 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v2, v3, v4, v88);
  *(v0 + 400) = v5;
  v13 = *(v5 + 16);
  *(v0 + 408) = v13;
  v83 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = *(v0 + 360);
    v85 = v5 + 32;
    v87 = v5;
    v81 = (v0 + 176);
    v82 = (v0 + 96);
    while (1)
    {
      if (v14 >= *(v5 + 16))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
        goto LABEL_29;
      }

      v16 = (v85 + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v17 + 16);

      if (v19)
      {
        break;
      }

LABEL_7:
      ++v14;

      v5 = v87;
      if (v14 == v83)
      {
        goto LABEL_24;
      }
    }

    v20 = 0;
    while (1)
    {
      if (v20 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      v22 = *(v0 + 384);
      v21 = *(v0 + 392);
      v23 = *(v0 + 352);
      v24 = *(v15 + 80);
      *(v0 + 292) = v24;
      v25 = *(v15 + 72);
      *(v0 + 416) = v25;
      outlined init with copy of TokenizationResult(v17 + ((v24 + 32) & ~v24) + v25 * v20, v21, type metadata accessor for TokenizationResult);
      outlined init with take of TokenizationResult(v21, v22, type metadata accessor for TokenizationResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = *(v0 + 384);
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      ++v20;
      outlined destroy of TokenizationResult(v27, type metadata accessor for TokenizationResult);
      if (v19 == v20)
      {
        goto LABEL_7;
      }
    }

    v28 = *(v0 + 328);
    outlined destroy of TokenizationResult(v27, type metadata accessor for TokenizationResult);

    outlined init with copy of (String, Any)(v28, v0 + 56, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMR);
    if (*(v0 + 80))
    {
      v29 = *(v0 + 320);
      outlined init with take of PromptComponentValueConvertible((v0 + 56), v0 + 16);

      specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(v30, v0 + 256);
      v31 = *(v0 + 288);
      if (v31 == 255)
      {
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v32 = *(v0 + 256);
        v33 = *(v0 + 264);
        if ((v31 & 1) == 0)
        {
          v84 = *(v0 + 272);
          v86 = *(v0 + 280);
          v34 = *(v0 + 336);
          if (*(v0 + 289))
          {
            v35 = &type metadata for PromptPreprocessingTemplateV6Convention;
          }

          else
          {
            v35 = &type metadata for PromptPreprocessingTemplateV5Convention;
          }

          v36 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
          if (!*(v0 + 289))
          {
            v36 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
          }

          *(v0 + 160) = v35;
          *(v0 + 168) = v36;
          outlined init with take of PromptComponentValueConvertible((v0 + 136), v82);
          v38 = *(v0 + 120);
          v37 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1(v82, v38);
          v39 = *(v34 + 104);
          v32 = (*(v37 + 16))(v32, v33, *(v34 + 104), v34 + 16, v38, v37);
          v73 = *(v0 + 289);

          __swift_destroy_boxed_opaque_existential_0(v82);
          v74 = &type metadata for PromptPreprocessingTemplateV5Convention;
          if (v73)
          {
            v74 = &type metadata for PromptPreprocessingTemplateV6Convention;
          }

          v75 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
          if (v73)
          {
            v75 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
          }

          *(v0 + 240) = v74;
          *(v0 + 248) = v75;
          outlined init with take of PromptComponentValueConvertible((v0 + 216), v81);
          v76 = *(v0 + 200);
          v77 = *(v0 + 208);
          __swift_project_boxed_opaque_existential_1(v81, v76);
          v33 = (*(v77 + 16))(v84, v86, v39, v34 + 16, v76, v77);

          __swift_destroy_boxed_opaque_existential_0(v81);
        }
      }

      *(v0 + 424) = v32;
      *(v0 + 432) = v33;
      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 16), 0, MEMORY[0x1E69E7CC0]);
      *(v0 + 440) = 0;
      *(v0 + 448) = v51;
      v52 = *(v0 + 400);
      if (*(v52 + 16))
      {
        v53 = 0;
        while (1)
        {
          v54 = v51;
          v55 = v52 + 16 * v53;
          *(v0 + 456) = *(v55 + 32);
          v56 = *(v55 + 40);
          *(v0 + 464) = v56;
          v57 = *(v56 + 16);
          *(v0 + 472) = v57;

          if (v57)
          {
            break;
          }

          v51 = v54;
LABEL_42:
          v64 = *(v51 + 2);
          v63 = *(v51 + 3);
          if (v64 >= v63 >> 1)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v51);
          }

          v65 = *(v0 + 456);
          v66 = *(v0 + 408);
          v67 = *(v0 + 440) + 1;
          *(v51 + 2) = v64 + 1;
          v68 = &v51[16 * v64];
          *(v68 + 4) = v65;
          *(v68 + 5) = v56;
          if (v67 == v66)
          {
            v40 = v51;
            v79 = *(v0 + 424);
            v78 = *(v0 + 432);
            v80 = *(v0 + 400);

            outlined consume of ImageTokenizationConfiguration?(v79);
            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
            goto LABEL_25;
          }

          v53 = *(v0 + 440) + 1;
          *(v0 + 440) = v53;
          *(v0 + 448) = v51;
          v52 = *(v0 + 400);
          if (v53 >= *(v52 + 16))
          {
            goto LABEL_58;
          }
        }

        v58 = 0;
        while (1)
        {
          *(v0 + 488) = v58;
          *(v0 + 496) = v56;
          *(v0 + 480) = v56;
          v59 = *(v0 + 464);
          if (v58 >= *(v59 + 16))
          {
            break;
          }

          v60 = *(v0 + 352);
          outlined init with copy of TokenizationResult(v59 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 416) * v58, *(v0 + 376), type metadata accessor for TokenizationResult);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v69 = *(v0 + 424);
            v70 = *(v0 + 432);
            outlined init with take of TokenizationResult(*(v0 + 376), *(v0 + 344), type metadata accessor for Prompt.AttachmentContent);
            *(v0 + 296) = v69;
            *(v0 + 304) = v70;
            outlined copy of ImageTokenizationConfiguration?(v69);
            v71 = swift_task_alloc();
            *(v0 + 504) = v71;
            *v71 = v0;
            v71[1] = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
            v72 = *(v0 + 344);

            return specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(v72, v0 + 16, (v0 + 296));
          }

          outlined destroy of TokenizationResult(*(v0 + 376), type metadata accessor for TokenizationResult);
          v58 = *(v0 + 488) + 1;
          if (v58 == *(v0 + 472))
          {
            v61 = *(v0 + 456);
            v62 = *(v0 + 464);

            v51 = *(v0 + 448);
            goto LABEL_42;
          }
        }

LABEL_57:
        __break(1u);
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v0 + 56, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMR);
    if (one-time initialization token for tokenization != -1)
    {
      goto LABEL_60;
    }

LABEL_29:
    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Log.tokenization);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1A8E85000, v48, v49, "Attachments were remaining in the prompt but no attachment tokenizer present.", v50, 2u);
      MEMORY[0x1AC57DBF0](v50, -1, -1);
    }

    type metadata accessor for GenerationError();
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v10 = *(v0 + 344);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
LABEL_24:
    v40 = v5;
LABEL_25:
    v42 = *(v0 + 384);
    v41 = *(v0 + 392);
    v44 = *(v0 + 368);
    v43 = *(v0 + 376);
    v45 = *(v0 + 344);

    v46 = *(v0 + 8);

    return v46(v40);
  }
}

{
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  **(v0 + 368) = *(v0 + 520);
  swift_storeEnumTagMultiPayload();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 496);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_23:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v0 + 488);
  result = outlined destroy of TokenizationResult(*(v0 + 344), type metadata accessor for Prompt.AttachmentContent);
  if (v5 >= v4[2])
  {
    __break(1u);
  }

  else
  {
    outlined assign with take of TokenizationResult(*(v0 + 368), v4 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 416) * *(v0 + 488));
    while (1)
    {
      v7 = *(v0 + 488) + 1;
      v8 = *(v0 + 464);
      if (v7 == *(v0 + 472))
      {
        break;
      }

LABEL_12:
      *(v0 + 488) = v7;
      *(v0 + 496) = v4;
      *(v0 + 480) = v4;
      if (v7 >= v8[2])
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = *(v0 + 352);
      outlined init with copy of TokenizationResult(v8 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 416) * v7, *(v0 + 376), type metadata accessor for TokenizationResult);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *(v0 + 424);
        v32 = *(v0 + 432);
        outlined init with take of TokenizationResult(*(v0 + 376), *(v0 + 344), type metadata accessor for Prompt.AttachmentContent);
        *(v0 + 296) = v31;
        *(v0 + 304) = v32;
        outlined copy of ImageTokenizationConfiguration?(v31);
        v33 = swift_task_alloc();
        *(v0 + 504) = v33;
        *v33 = v0;
        v33[1] = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
        v34 = *(v0 + 344);

        return specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(v34, v0 + 16, (v0 + 296));
      }

      outlined destroy of TokenizationResult(*(v0 + 376), type metadata accessor for TokenizationResult);
    }

    v9 = *(v0 + 456);

    v10 = *(v0 + 448);
    v8 = v4;
    while (1)
    {
      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      v4 = (v12 + 1);
      if (v12 >= v11 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      }

      v13 = *(v0 + 456);
      v14 = *(v0 + 408);
      v15 = *(v0 + 440) + 1;
      *(v10 + 2) = v4;
      v16 = &v10[16 * v12];
      *(v16 + 4) = v13;
      *(v16 + 5) = v8;
      if (v15 == v14)
      {
        break;
      }

      v17 = *(v0 + 440) + 1;
      *(v0 + 440) = v17;
      *(v0 + 448) = v10;
      v18 = *(v0 + 400);
      if (v17 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v19 = v18 + 16 * v17;
      *(v0 + 456) = *(v19 + 32);
      v8 = *(v19 + 40);
      *(v0 + 464) = v8;
      v20 = v8[2];
      *(v0 + 472) = v20;

      if (v20)
      {

        v7 = 0;
        v4 = v8;
        goto LABEL_12;
      }
    }

    v23 = *(v0 + 424);
    v22 = *(v0 + 432);
    v24 = *(v0 + 400);

    outlined consume of ImageTokenizationConfiguration?(v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v26 = *(v0 + 384);
    v25 = *(v0 + 392);
    v28 = *(v0 + 368);
    v27 = *(v0 + 376);
    v29 = *(v0 + 344);

    v30 = *(v0 + 8);

    return v30(v10);
  }

  return result;
}

{
  v1 = v0[60];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
  v5 = v0[54];
  v6 = v0[50];
  v7 = v0[43];
  outlined consume of ImageTokenizationConfiguration?(v0[53]);

  outlined destroy of TokenizationResult(v7, type metadata accessor for Prompt.AttachmentContent);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v8 = v0[64];
  v10 = v0[48];
  v9 = v0[49];
  v12 = v0[46];
  v11 = v0[47];
  v13 = v0[43];

  v14 = v0[1];

  return v14();
}

uint64_t TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[63];
  v10 = *v2;
  (*v2)[64] = v1;

  if (v1)
  {
    v6 = v4[38];
    outlined consume of ImageTokenizationConfiguration?(v4[37]);
    v7 = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
  }

  else
  {
    v4[65] = a1;
    v8 = v4[38];
    outlined consume of ImageTokenizationConfiguration?(v4[37]);
    v7 = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(_UNKNOWN **a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v235 = a3;
  v239 = a1;
  v6 = type metadata accessor for Prompt.AttachmentContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v264 = &v229 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v263 = &v229 - v10;
  v275 = type metadata accessor for TokenizationResult(0);
  v236 = *(v275 - 8);
  v11 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v230 = &v229 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v253 = &v229 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v248 = (&v229 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v247 = &v229 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v246 = (&v229 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v256 = &v229 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v260 = &v229 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v259 = &v229 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v229 = &v229 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v252 = &v229 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v245 = (&v229 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v244 = &v229 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v243 = (&v229 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v255 = &v229 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v258 = &v229 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v257 = &v229 - v42;
  v234 = type metadata accessor for Prompt.SpecialToken(0);
  v254 = *(v234 - 8);
  v43 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v240 = (&v229 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v229 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v251 = &v229 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMR);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v229 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v261 = &v229 - v55;
  LODWORD(v233) = *a4;
  v242 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v56 = a2 + 64;
  v57 = 1 << *(a2 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(a2 + 64);
  v60 = (v57 + 63) >> 6;
  v249 = a2;

  v61 = 0;
  v250 = v47;
  v262 = v53;
  while (1)
  {
    v62 = v61;
    if (!v59)
    {
      if (v60 <= v61 + 1)
      {
        v64 = v61 + 1;
      }

      else
      {
        v64 = v60;
      }

      v61 = v64 - 1;
      while (1)
      {
        v63 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v63 >= v60)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
          v73 = v262;
          (*(*(v78 - 8) + 56))(v262, 1, 1, v78);
          v59 = 0;
          goto LABEL_14;
        }

        v59 = *(v56 + 8 * v63);
        ++v62;
        if (v59)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v63 = v61;
LABEL_13:
    v65 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v66 = v65 | (v63 << 6);
    v67 = v249;
    v68 = v251;
    outlined init with copy of TokenizationResult(*(v249 + 48) + *(v254 + 72) * v66, v251, type metadata accessor for Prompt.SpecialToken);
    outlined init with copy of Any(*(v67 + 56) + 32 * v66, &v268);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
    v70 = *(v69 + 48);
    v71 = v68;
    v72 = v262;
    outlined init with take of TokenizationResult(v71, v262, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any(&v268, (v72 + v70));
    (*(*(v69 - 8) + 56))(v72, 0, 1, v69);
    v61 = v63;
    v73 = v72;
    v47 = v250;
LABEL_14:
    v74 = v261;
    outlined init with take of (key: Prompt.SpecialToken, value: Any)?(v73, v261);
    v75 = v74;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
    if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
    {
      break;
    }

    v77 = *(v76 + 48);
    outlined init with take of TokenizationResult(v75, v47, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any((v75 + v77), &v268);
    if (swift_dynamicCast())
    {
      v238 = v265;
      v79 = v240;
      outlined init with copy of TokenizationResult(v47, v240, type metadata accessor for Prompt.SpecialToken);
      v80 = v242;
      LODWORD(v237) = swift_isUniquelyReferenced_nonNull_native();
      *&v268 = v80;
      v82 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
      v83 = *(v80 + 16);
      v84 = (v81 & 1) == 0;
      v85 = v83 + v84;
      if (__OFADD__(v83, v84))
      {
        goto LABEL_142;
      }

      if (*(v80 + 24) >= v85)
      {
        if ((v237 & 1) == 0)
        {
          v242 = v82;
          v99 = v81;
          specialized _NativeDictionary.copy()();
          v81 = v99;
          v82 = v242;
        }
      }

      else
      {
        v86 = v81;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v85, v237);
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(v240);
        if ((v86 & 1) != (v88 & 1))
        {
          goto LABEL_144;
        }

        v82 = v87;
        v81 = v86;
      }

      v89 = v268;
      v242 = v268;
      if (v81)
      {
        v90 = (*(v268 + 56) + 16 * v82);
        v91 = v90[1];
        v92 = *(&v238 + 1);
        *v90 = v238;
        v90[1] = v92;

        outlined destroy of TokenizationResult(v240, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of TokenizationResult(v47, type metadata accessor for Prompt.SpecialToken);
      }

      else
      {
        *(v268 + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v93 = v240;
        outlined init with copy of TokenizationResult(v240, v89[6] + *(v254 + 72) * v82, type metadata accessor for Prompt.SpecialToken);
        v94 = (v89[7] + 16 * v82);
        v95 = *(&v238 + 1);
        *v94 = v238;
        v94[1] = v95;
        outlined destroy of TokenizationResult(v93, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of TokenizationResult(v47, type metadata accessor for Prompt.SpecialToken);
        v96 = v89[2];
        v97 = __OFADD__(v96, 1);
        v98 = v96 + 1;
        if (v97)
        {
          goto LABEL_143;
        }

        v89[2] = v98;
      }
    }

    else
    {
      outlined destroy of TokenizationResult(v47, type metadata accessor for Prompt.SpecialToken);
    }
  }

  if (v235)
  {

    specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(v101, v271);
    v254 = v271[0];
    v262 = v271[1];
    v250 = v272[0];
    v251 = v272[1];
    v102 = v273;
  }

  else
  {
    v254 = 0;
    v262 = 0;
    v250 = 0;
    v251 = 0;
    v102 = 255;
  }

  v103 = v241;
  v104 = v239[2];
  v105 = MEMORY[0x1E69E7CC0];
  if (!v104)
  {
LABEL_138:
    outlined consume of UnresolvedImageTokenizationConfiguration?(v254, v262, v250, v251, v102);
    return v105;
  }

  v106 = 0;
  v107 = &type metadata for PromptPreprocessingTemplateV5Convention;
  v234 = (v239 + 4);
  if (v233)
  {
    v107 = &type metadata for PromptPreprocessingTemplateV6Convention;
  }

  v240 = v107;
  if (v233)
  {
    v108 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
  }

  else
  {
    v108 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
  }

  v239 = v108;
  v109 = 1;
  *&v100 = 136643075;
  v231 = v100;
  LODWORD(v261) = v102;
  v233 = v104;
  while (1)
  {
    v110 = v234 + 16 * v106;
    v111 = *v110;
    LOBYTE(v110) = *(v110 + 8);
    v242 = v111;
    *(&v238 + 1) = v105;
    *&v238 = v106 + 1;
    if (v110)
    {
      v266 = v240;
      v267 = v239;
      outlined init with take of PromptComponentValueConvertible(&v265, &v268);
      v113 = v269;
      v112 = v270;
      __swift_project_boxed_opaque_existential_1(&v268, v269);
      v241 = v113;
      if ((v235 & 1) == 0 || v102 == 255)
      {
      }

      else
      {
        if ((v102 & 1) == 0)
        {

          v226 = v254;
          v128 = v262;
          v129 = v250;
          v105 = v251;
          outlined copy of UnresolvedImageTokenizationConfiguration?(v254, v262, v250, v251, v102);
          v127 = v226;
          v111 = v242;
LABEL_49:
          v130 = (*(v112 + 24))(v111, v127, v128, v129, v105, v241, v112);
          if (v103)
          {
            break;
          }

          v131 = v130;
          outlined consume of (start: String, end: String)?(v127, v128);
          __swift_destroy_boxed_opaque_existential_0(&v268);
          v266 = v240;
          v267 = v239;
          outlined init with take of PromptComponentValueConvertible(&v265, &v268);
          v237 = v131;
          v132 = TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(v131, v249, v109 & 1, &v268);
          __swift_destroy_boxed_opaque_existential_0(&v268);
          v133 = v132[2];
          v241 = 0;
          if (v133)
          {
            v134 = (*(v236 + 80) + 32) & ~*(v236 + 80);
            v232 = v132;
            v135 = v132 + v134;
            v136 = *(v236 + 72);
            v137 = MEMORY[0x1E69E7CC0];
            v138 = v259;
            v139 = v260;
            while (1)
            {
              outlined init with copy of TokenizationResult(v135, v138, type metadata accessor for TokenizationResult);
              outlined init with copy of TokenizationResult(v138, v139, type metadata accessor for TokenizationResult);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                outlined destroy of TokenizationResult(v139, type metadata accessor for TokenizationResult);
                outlined init with copy of TokenizationResult(v138, v256, type metadata accessor for TokenizationResult);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137[2] + 1, 1, v137);
                }

                v148 = v137[2];
                v151 = v137[3];
                v150 = v148 + 1;
                if (v148 >= v151 >> 1)
                {
                  v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v151 > 1, v148 + 1, 1, v137);
                }

                v140 = &v279;
                goto LABEL_53;
              }

              outlined init with take of TokenizationResult(v139, v264, type metadata accessor for Prompt.AttachmentContent);
              v142 = v261;
              if (v261 == 255)
              {
                goto LABEL_71;
              }

              if ((v261 & 1) == 0)
              {
                break;
              }

              v143 = v254;
              *v246 = v254;
              swift_storeEnumTagMultiPayload();
              outlined copy of UnresolvedImageTokenizationConfiguration?(v143, v262, v250, v251, v142);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137[2] + 1, 1, v137);
              }

              v145 = v137[2];
              v144 = v137[3];
              v146 = v145 + 1;
              if (v145 >= v144 >> 1)
              {
                v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v144 > 1, v145 + 1, 1, v137);
              }

              v137[2] = v146;
              outlined init with take of TokenizationResult(v246, v137 + v134 + v145 * v136, type metadata accessor for TokenizationResult);
              outlined init with copy of TokenizationResult(v264, v247, type metadata accessor for Prompt.AttachmentContent);
              swift_storeEnumTagMultiPayload();
              v147 = v137[3];
              v148 = v145 + 2;
              if ((v145 + 2) > (v147 >> 1))
              {
                v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v147 > 1, v145 + 2, 1, v137);
              }

              v137[2] = v148;
              outlined init with take of TokenizationResult(v247, v137 + v134 + v146 * v136, type metadata accessor for TokenizationResult);
              *v248 = v262;
              swift_storeEnumTagMultiPayload();
              v149 = v137[3];
              v150 = v145 + 3;

              if ((v145 + 3) > (v149 >> 1))
              {
                v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v149 > 1, v145 + 3, 1, v137);
              }

              outlined destroy of TokenizationResult(v264, type metadata accessor for Prompt.AttachmentContent);
              v140 = &v274;
LABEL_53:
              v141 = *(v140 - 32);
              v138 = v259;
              outlined destroy of TokenizationResult(v259, type metadata accessor for TokenizationResult);
              v137[2] = v150;
              outlined init with take of TokenizationResult(v141, v137 + v134 + v148 * v136, type metadata accessor for TokenizationResult);
              v135 += v136;
              --v133;
              v139 = v260;
              if (!v133)
              {

                v103 = v241;
                v178 = MEMORY[0x1E69E7CC0];
                goto LABEL_108;
              }
            }

            outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd();

LABEL_71:
            outlined init with copy of TokenizationResult(v264, v253, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137[2] + 1, 1, v137);
            }

            v148 = v137[2];
            v152 = v137[3];
            v150 = v148 + 1;
            if (v148 >= v152 >> 1)
            {
              v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v152 > 1, v148 + 1, 1, v137);
            }

            outlined destroy of TokenizationResult(v264, type metadata accessor for Prompt.AttachmentContent);
            v140 = &v277;
            goto LABEL_53;
          }

          v178 = MEMORY[0x1E69E7CC0];
          v137 = MEMORY[0x1E69E7CC0];
LABEL_108:
          if (one-time initialization token for tokenization != -1)
          {
            swift_once();
          }

          v179 = type metadata accessor for Logger();
          __swift_project_value_buffer(v179, static Log.tokenization);
          v180 = v237;

          v181 = Logger.logObject.getter();
          v182 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v181, v182))
          {
            v183 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            *&v268 = v184;
            *v183 = v231;
            v185 = type metadata accessor for Prompt.RenderedPromptFragment(0);
            v186 = MEMORY[0x1AC57C2C0](v180, v185);
            v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v187, &v268);

            *(v183 + 4) = v188;
            *(v183 + 12) = 2085;
            v189 = MEMORY[0x1AC57C2C0](v137, v275);
            v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v190, &v268);

            *(v183 + 14) = v191;
            _os_log_impl(&dword_1A8E85000, v181, v182, "Tokenized full attention module %{sensitive}s to %{sensitive}s", v183, 0x16u);
            swift_arrayDestroy();
            v192 = v184;
            v178 = MEMORY[0x1E69E7CC0];
            MEMORY[0x1AC57DBF0](v192, -1, -1);
            MEMORY[0x1AC57DBF0](v183, -1, -1);
          }

          v193 = v137[2];
          if (v193)
          {
            *&v268 = v178;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v193, 0);
            v178 = v268;
            v194 = (*(v236 + 80) + 32) & ~*(v236 + 80);
            v195 = v137 + v194;
            v196 = *(v236 + 72);
            v197 = v230;
            do
            {
              outlined init with copy of TokenizationResult(v195, v197, type metadata accessor for TokenizationResult);
              *&v268 = v178;
              v199 = *(v178 + 16);
              v198 = *(v178 + 24);
              if (v199 >= v198 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v198 > 1, v199 + 1, 1);
                v197 = v230;
                v178 = v268;
              }

              *(v178 + 16) = v199 + 1;
              outlined init with take of TokenizationResult(v197, v178 + v194 + v199 * v196, type metadata accessor for TokenizationResult);
              v195 += v196;
              --v193;
            }

            while (v193);
LABEL_128:

            v103 = v241;
            goto LABEL_130;
          }

          goto LABEL_129;
        }

        v114 = v254;
        v115 = v262;
        v116 = v250;
        v117 = v251;
        outlined copy of UnresolvedImageTokenizationConfiguration?(v254, v262, v250, v251, v102);

        outlined copy of UnresolvedImageTokenizationConfiguration?(v114, v115, v116, v117, v102);

        v118 = v114;
        v111 = v242;
        outlined consume of UnresolvedImageTokenizationConfiguration?(v118, v115, v116, v117, v102);
      }

      v127 = 0;
      v128 = 0;
      v129 = 0;
      v105 = 0;
      goto LABEL_49;
    }

    LODWORD(v237) = v109;
    v119 = v111;
    v266 = v240;
    v267 = v239;
    outlined init with take of PromptComponentValueConvertible(&v265, &v268);
    v121 = v269;
    v120 = v270;
    __swift_project_boxed_opaque_existential_1(&v268, v269);
    v241 = v121;
    if ((v235 & 1) == 0 || v102 == 255)
    {
      v126 = v119;

      goto LABEL_77;
    }

    if (v102)
    {
      v122 = v254;
      v123 = v262;
      v124 = v250;
      v125 = v251;
      outlined copy of UnresolvedImageTokenizationConfiguration?(v254, v262, v250, v251, v102);

      outlined copy of UnresolvedImageTokenizationConfiguration?(v122, v123, v124, v125, v102);

      v126 = v242;
      outlined consume of UnresolvedImageTokenizationConfiguration?(v122, v123, v124, v125, v102);
LABEL_77:
      v127 = 0;
      v128 = 0;
      v153 = 0;
      v105 = 0;
      goto LABEL_78;
    }

    v227 = v254;
    v128 = v262;
    v153 = v250;
    v105 = v251;
    outlined copy of UnresolvedImageTokenizationConfiguration?(v254, v262, v250, v251, v102);
    v127 = v227;
    v126 = v242;
LABEL_78:
    v154 = (*(v120 + 24))(v126, v127, v128, v153, v105, v241, v120);
    if (v103)
    {
      break;
    }

    v155 = v154;
    outlined consume of (start: String, end: String)?(v127, v128);
    __swift_destroy_boxed_opaque_existential_0(&v268);
    v266 = v240;
    v267 = v239;
    outlined init with take of PromptComponentValueConvertible(&v265, &v268);
    v156 = v237 & 1;
    v237 = v155;
    v157 = TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(v155, v249, v156, &v268);
    __swift_destroy_boxed_opaque_existential_0(&v268);
    v158 = v157[2];
    v241 = 0;
    if (v158)
    {
      v159 = (*(v236 + 80) + 32) & ~*(v236 + 80);
      v232 = v157;
      v160 = v157 + v159;
      v161 = *(v236 + 72);
      v162 = MEMORY[0x1E69E7CC0];
      v163 = v258;
      v164 = v257;
      while (1)
      {
        outlined init with copy of TokenizationResult(v160, v164, type metadata accessor for TokenizationResult);
        outlined init with copy of TokenizationResult(v164, v163, type metadata accessor for TokenizationResult);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          outlined destroy of TokenizationResult(v163, type metadata accessor for TokenizationResult);
          outlined init with copy of TokenizationResult(v164, v255, type metadata accessor for TokenizationResult);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162[2] + 1, 1, v162);
          }

          v173 = v162[2];
          v176 = v162[3];
          v175 = v173 + 1;
          if (v173 >= v176 >> 1)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v176 > 1, v173 + 1, 1, v162);
          }

          v165 = &v278;
          goto LABEL_82;
        }

        outlined init with take of TokenizationResult(v163, v263, type metadata accessor for Prompt.AttachmentContent);
        v167 = v261;
        if (v261 == 255)
        {
          goto LABEL_100;
        }

        if ((v261 & 1) == 0)
        {
          break;
        }

        v168 = v254;
        *v243 = v254;
        swift_storeEnumTagMultiPayload();
        outlined copy of UnresolvedImageTokenizationConfiguration?(v168, v262, v250, v251, v167);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162[2] + 1, 1, v162);
        }

        v170 = v162[2];
        v169 = v162[3];
        v171 = v170 + 1;
        if (v170 >= v169 >> 1)
        {
          v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v169 > 1, v170 + 1, 1, v162);
        }

        v162[2] = v171;
        outlined init with take of TokenizationResult(v243, v162 + v159 + v170 * v161, type metadata accessor for TokenizationResult);
        outlined init with copy of TokenizationResult(v263, v244, type metadata accessor for Prompt.AttachmentContent);
        swift_storeEnumTagMultiPayload();
        v172 = v162[3];
        v173 = v170 + 2;
        if ((v170 + 2) > (v172 >> 1))
        {
          v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v172 > 1, v170 + 2, 1, v162);
        }

        v162[2] = v173;
        outlined init with take of TokenizationResult(v244, v162 + v159 + v171 * v161, type metadata accessor for TokenizationResult);
        *v245 = v262;
        swift_storeEnumTagMultiPayload();
        v174 = v162[3];
        v175 = v170 + 3;

        if ((v170 + 3) > (v174 >> 1))
        {
          v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174 > 1, v170 + 3, 1, v162);
        }

        outlined destroy of TokenizationResult(v263, type metadata accessor for Prompt.AttachmentContent);
        v165 = v272;
LABEL_82:
        v166 = *(v165 - 32);
        v164 = v257;
        outlined destroy of TokenizationResult(v257, type metadata accessor for TokenizationResult);
        v162[2] = v175;
        outlined init with take of TokenizationResult(v166, v162 + v159 + v173 * v161, type metadata accessor for TokenizationResult);
        v160 += v161;
        --v158;
        v163 = v258;
        if (!v158)
        {

          v103 = v241;
          v178 = MEMORY[0x1E69E7CC0];
          goto LABEL_119;
        }
      }

      outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd();

LABEL_100:
      outlined init with copy of TokenizationResult(v263, v252, type metadata accessor for Prompt.AttachmentContent);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162[2] + 1, 1, v162);
      }

      v173 = v162[2];
      v177 = v162[3];
      v175 = v173 + 1;
      if (v173 >= v177 >> 1)
      {
        v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v177 > 1, v173 + 1, 1, v162);
      }

      outlined destroy of TokenizationResult(v263, type metadata accessor for Prompt.AttachmentContent);
      v165 = &v276;
      goto LABEL_82;
    }

    v178 = MEMORY[0x1E69E7CC0];
    v162 = MEMORY[0x1E69E7CC0];
LABEL_119:
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v200 = type metadata accessor for Logger();
    __swift_project_value_buffer(v200, static Log.tokenization);
    v201 = v237;

    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *&v268 = v205;
      *v204 = v231;
      v206 = type metadata accessor for Prompt.RenderedPromptFragment(0);
      v207 = MEMORY[0x1AC57C2C0](v201, v206);
      v209 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v208, &v268);

      *(v204 + 4) = v209;
      *(v204 + 12) = 2085;
      v210 = MEMORY[0x1AC57C2C0](v162, v275);
      v212 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v211, &v268);

      *(v204 + 14) = v212;
      _os_log_impl(&dword_1A8E85000, v202, v203, "Tokenized self attention module %{sensitive}s to %{sensitive}s", v204, 0x16u);
      swift_arrayDestroy();
      v213 = v205;
      v178 = MEMORY[0x1E69E7CC0];
      MEMORY[0x1AC57DBF0](v213, -1, -1);
      MEMORY[0x1AC57DBF0](v204, -1, -1);
    }

    v214 = v162[2];
    if (v214)
    {
      *&v268 = v178;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v214, 0);
      v178 = v268;
      v215 = (*(v236 + 80) + 32) & ~*(v236 + 80);
      v216 = v162 + v215;
      v217 = *(v236 + 72);
      v218 = v229;
      do
      {
        outlined init with copy of TokenizationResult(v216, v218, type metadata accessor for TokenizationResult);
        *&v268 = v178;
        v220 = *(v178 + 16);
        v219 = *(v178 + 24);
        if (v220 >= v219 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v219 > 1, v220 + 1, 1);
          v218 = v229;
          v178 = v268;
        }

        *(v178 + 16) = v220 + 1;
        outlined init with take of TokenizationResult(v218, v178 + v215 + v220 * v217, type metadata accessor for TokenizationResult);
        v216 += v217;
        --v214;
      }

      while (v214);
      goto LABEL_128;
    }

LABEL_129:

LABEL_130:
    v105 = *(&v238 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v222 = v233;
    v106 = v238;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 2) + 1, 1, v105);
    }

    v224 = *(v105 + 2);
    v223 = *(v105 + 3);
    if (v224 >= v223 >> 1)
    {
      v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1, v105);
    }

    *(v105 + 2) = v224 + 1;
    v225 = &v105[16 * v224];
    *(v225 + 4) = v237;
    *(v225 + 5) = v178;
    v102 = v261;
    if (v106 == v222)
    {
      goto LABEL_138;
    }

    v109 = 0;
  }

  outlined consume of (start: String, end: String)?(v127, v128);

  outlined consume of UnresolvedImageTokenizationConfiguration?(v254, v262, v250, v251, v261);

  __swift_destroy_boxed_opaque_existential_0(&v268);
  return v105;
}

uint64_t TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = a1[3];
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = v7;
  v10 = 0;
  v8 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(a2, a3, &v10, *(v3 + 104));
  if (!v4)
  {
    LOBYTE(v11) = 0;
    v5 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v8, a2, 1, &v11);
  }

  return v5;
}

uint64_t TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(__int128 *a1, int64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v139 = a3;
  v141 = a2;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
  v6 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v149 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v122 - v12;
  v150 = type metadata accessor for Prompt.SpecialToken(0);
  v146 = *(v150 - 8);
  v14 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v16 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v122 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
  v20 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v22 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v122 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v122 - v27;
  v29 = *a4;
  v30 = v148;
  PromptVariant.tgPrompt.getter(&v151);
  if (v30)
  {
    return a1;
  }

  v147 = v28;
  v134 = v25;
  v136 = v19;
  v130 = v16;
  v127 = v29;
  v137 = v13;
  v131 = v10;
  v128 = 0;
  v126 = *(&v151 + 1);
  v123 = v151;
  v125 = v152;
  v124 = v153;
  v31 = v141;
  v32 = v141 + 64;
  v33 = 1 << *(v141 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v141 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v38 = MEMORY[0x1E69E7CC8];
  v39 = v140;
  v133 = v32;
  v132 = v36;
  v135 = v22;
  while (1)
  {
    v148 = v38;
    if (!v35)
    {
      break;
    }

LABEL_12:
    v42 = __clz(__rbit64(v35)) | (v37 << 6);
    v43 = *(v31 + 48);
    v44 = type metadata accessor for SpecialToken();
    v45 = *(v44 - 8);
    v46 = v147;
    (*(v45 + 16))(v147, v43 + *(v45 + 72) * v42, v44);
    outlined init with copy of Any(*(v31 + 56) + 32 * v42, v46 + *(v39 + 48));
    v47 = v134;
    outlined init with copy of (String, Any)(v46, v134, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
    v145 = *(v39 + 48);
    v48 = SpecialToken.identifier.getter();
    v143 = v44;
    v144 = v49;
    v142 = *(v45 + 8);
    v142(v47, v44);
    v50 = v150;
    v51 = *(v150 + 20);
    v52 = type metadata accessor for Locale();
    v53 = v136 + v51;
    v54 = v136;
    (*(*(v52 - 8) + 56))(v53, 1, 1, v52);
    v55 = v144;
    *v54 = v48;
    v54[1] = v55;
    v56 = (v54 + *(v50 + 24));
    *v56 = 0;
    v56[1] = 0;
    *(v54 + *(v50 + 28)) = 0;
    __swift_destroy_boxed_opaque_existential_0((v47 + v145));
    v57 = v46;
    v58 = v135;
    outlined init with copy of (String, Any)(v57, v135, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
    outlined init with take of Any((v58 + *(v39 + 48)), &v151);
    v59 = v148;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = v59;
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
    v63 = *(v59 + 16);
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_50;
    }

    v66 = v61;
    if (*(v59 + 24) < v65)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, isUniquelyReferenced_nonNull_native);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_54;
      }

      v62 = v67;
      goto LABEL_16;
    }

    v69 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
LABEL_16:
      v69 = v146;
    }

    v38 = v154;
    if (v66)
    {
      v40 = (v154[7] + 32 * v62);
      __swift_destroy_boxed_opaque_existential_0(v40);
      outlined init with take of Any(&v151, v40);
      outlined destroy of TokenizationResult(v54, type metadata accessor for Prompt.SpecialToken);
      outlined destroy of [Regex2BNF.CharacterPredicate](v147, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
    }

    else
    {
      v154[(v62 >> 6) + 8] |= 1 << v62;
      outlined init with copy of TokenizationResult(v54, v38[6] + *(v69 + 72) * v62, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(&v151, (v38[7] + 32 * v62));
      outlined destroy of TokenizationResult(v54, type metadata accessor for Prompt.SpecialToken);
      outlined destroy of [Regex2BNF.CharacterPredicate](v147, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      v70 = v38[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_52;
      }

      v38[2] = v72;
    }

    v35 &= v35 - 1;
    v142(v58, v143);
    v39 = v140;
    v31 = v141;
    v32 = v133;
    v36 = v132;
  }

  while (1)
  {
    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v41 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v41);
    ++v37;
    if (v35)
    {
      v37 = v41;
      goto LABEL_12;
    }
  }

  v73 = v139;
  v74 = (v139 + 64);
  v75 = 1 << *(v139 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & *(v139 + 64);
  v78 = (v75 + 63) >> 6;

  v79 = 0;
  v80 = MEMORY[0x1E69E7CC8];
  v81 = v137;
  v141 = v78;
  v142 = v74;
  while (2)
  {
    if (v77)
    {
      v147 = v80;
LABEL_33:
      v85 = __clz(__rbit64(v77)) | (v79 << 6);
      v86 = *(v73 + 48);
      v87 = type metadata accessor for SpecialToken();
      v88 = *(v87 - 8);
      (*(v88 + 16))(v81, v86 + *(v88 + 72) * v85, v87);
      v89 = v138;
      *(v81 + *(v138 + 48)) = *(*(v73 + 56) + 8 * v85);
      v90 = v131;
      outlined init with copy of (String, Any)(v81, v131, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      v91 = *(v90 + *(v89 + 48));

      v92 = SpecialToken.identifier.getter();
      v144 = v87;
      v145 = v92;
      v94 = v93;
      v143 = *(v88 + 8);
      v143(v90, v87);
      v95 = v150;
      v96 = *(v150 + 20);
      v97 = type metadata accessor for Locale();
      v98 = v130;
      (*(*(v97 - 8) + 56))(v130 + v96, 1, 1, v97);
      *v98 = v145;
      v98[1] = v94;
      v99 = (v98 + *(v95 + 24));
      *v99 = 0;
      v99[1] = 0;
      *(v98 + *(v95 + 28)) = 0;
      v100 = v149;
      outlined init with copy of (String, Any)(v81, v149, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      v101 = *(v100 + *(v89 + 48));
      v102 = v147;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *&v151 = v102;
      v104 = specialized __RawDictionaryStorage.find<A>(_:)(v98);
      v106 = *(v102 + 16);
      v107 = (v105 & 1) == 0;
      v71 = __OFADD__(v106, v107);
      v108 = v106 + v107;
      if (v71)
      {
        goto LABEL_51;
      }

      v109 = v105;
      if (*(v102 + 24) >= v108)
      {
        if (v103)
        {
          goto LABEL_38;
        }

        v114 = v104;
        specialized _NativeDictionary.copy()();
        v104 = v114;
        v80 = v151;
        if (v109)
        {
          goto LABEL_25;
        }

LABEL_39:
        v80[(v104 >> 6) + 8] |= 1 << v104;
        v111 = v104;
        outlined init with copy of TokenizationResult(v98, v80[6] + *(v146 + 72) * v104, type metadata accessor for Prompt.SpecialToken);
        *(v80[7] + 8 * v111) = v101;
        outlined destroy of TokenizationResult(v98, type metadata accessor for Prompt.SpecialToken);
        v81 = v137;
        outlined destroy of [Regex2BNF.CharacterPredicate](v137, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
        v112 = v80[2];
        v71 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v71)
        {
          goto LABEL_53;
        }

        v80[2] = v113;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v108, v103);
        v104 = specialized __RawDictionaryStorage.find<A>(_:)(v98);
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_55;
        }

LABEL_38:
        v80 = v151;
        if ((v109 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_25:
        v82 = v80[7];
        v83 = *(v82 + 8 * v104);
        *(v82 + 8 * v104) = v101;

        outlined destroy of TokenizationResult(v98, type metadata accessor for Prompt.SpecialToken);
        v81 = v137;
        outlined destroy of [Regex2BNF.CharacterPredicate](v137, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      }

      v77 &= v77 - 1;
      v143(v149, v144);
      v73 = v139;
      v78 = v141;
      v74 = v142;
      continue;
    }

    break;
  }

  while (1)
  {
    v84 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v84 >= v78)
    {

      *&v151 = v123;
      *(&v151 + 1) = v126;
      v115 = v80;
      v152 = v125;
      v153 = v124;
      v116 = v127;
      LOBYTE(v154) = v127;
      a1 = &v151;
      v117 = v148;
      v118 = v128;
      v119 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(v148, v115, &v154, *(v129 + 104));
      if (v118)
      {
      }

      else
      {
        v120 = v119;

        LOBYTE(v151) = v116;
        a1 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v120, v117, 1, &v151);
      }

      return a1;
    }

    v77 = *(v74 + v84);
    ++v79;
    if (v77)
    {
      v147 = v80;
      v79 = v84;
      goto LABEL_33;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TokenizerRunner.tokenizeCacheablePromptTemplatePrefix(promptTemplateString:locale:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)@<X0>(char *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t *a7@<X8>)
{
  v270 = a5;
  v271 = a4;
  j = a3;
  v284 = a2;
  v285 = a1;
  v250 = a7;
  v269 = type metadata accessor for TokenizationResult(0);
  v280 = *(v269 - 8);
  v8 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v251 = (&v240 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
  v10 = *(*(v265 - 8) + 64);
  MEMORY[0x1EEE9AC00](v265);
  v281 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v264 = &v240 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v276 = &v240 - v15;
  v298 = type metadata accessor for Prompt.SpecialToken(0);
  v266 = *(v298 - 8);
  v16 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v263 = (&v240 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v282 = (&v240 - v19);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
  v20 = *(*(v273 - 8) + 64);
  MEMORY[0x1EEE9AC00](v273);
  v267 = &v240 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v278 = &v240 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v277 = &v240 - v25;
  v258 = type metadata accessor for Prompt.Attachment(0);
  v257 = *(v258 - 8);
  v26 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v258);
  v262 = &v240 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v268 = &v240 - v29;
  v289 = type metadata accessor for Locale();
  v256 = *(v289 - 8);
  v30 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v289);
  v260 = &v240 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v274 = &v240 - v34;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v35 = *(*(v286 - 1) + 64);
  MEMORY[0x1EEE9AC00](v286);
  v37 = &v240 - v36;
  v261 = type metadata accessor for Prompt.Delimiter(0);
  v287 = *(v261 - 8);
  v38 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v259 = &v240 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v240 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v240 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v240 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v240 - v51;
  v53 = type metadata accessor for Prompt();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v240 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *a6;

  v59 = v288;
  result = Prompt.init(template:)();
  if (!v59)
  {
    i = v45;
    v241 = v49;
    v253 = v42;
    v254 = v58;
    v243 = v52;
    v246 = v54;
    v247 = v53;
    v61 = MEMORY[0x1E69E7CC0];
    v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v292 = MEMORY[0x1E69E6158];
    v293 = MEMORY[0x1E69C6560];
    *&v290 = 0;
    *(&v290 + 1) = 0xE000000000000000;
    Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v62, v61, j, &v290, 1, &v294);
    v245 = 0;
    v240 = v57;

    outlined destroy of [Regex2BNF.CharacterPredicate](&v290, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    v63 = v295;
    v249 = v294;
    v64 = v296;
    v65 = v297;
    v66 = *(v296 + 2);
    v275 = v297;
    v284 = v66;
    v285 = v296;
    if (v66)
    {
      v272 = v37;
      v244 = v295;
      v67 = 0;
      v68 = v287;
      j = &v296[(*(v68 + 80) + 32) & ~*(v68 + 80)];
      v288 = v256 + 48;
      v242 = (v256 + 32);
      v252 = (v256 + 8);
      v45 = &_s10Foundation6LocaleVSgMd;
      v69 = v298;
      v70 = v274;
      v71 = v286;
      v72 = i;
      while (1)
      {
        if (v67 >= *(v64 + 2))
        {
          __break(1u);
          goto LABEL_128;
        }

        outlined init with copy of TokenizationResult(&j[*(v68 + 72) * v67], v72, type metadata accessor for Prompt.Delimiter);
        if (one-time initialization token for cacheablePrefixTerminator != -1)
        {
          swift_once();
        }

        v73 = __swift_project_value_buffer(v69, static Prompt.SpecialToken.cacheablePrefixTerminator);
        v74 = *v72 == *v73 && v72[1] == v73[1];
        if (v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v75 = v70;
          v76 = v69[5];
          v77 = *(v71 + 12);
          v78 = v72 + v76;
          v79 = v272;
          outlined init with copy of (String, Any)(v78, v272, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          outlined init with copy of (String, Any)(v73 + v76, v79 + v77, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v80 = v289;
          v81 = *v288;
          if ((*v288)(v79, 1, v289) == 1)
          {
            v82 = v81(v79 + v77, 1, v80);
            v69 = v298;
            v70 = v75;
            if (v82 != 1)
            {
              goto LABEL_5;
            }

            v45 = &_s10Foundation6LocaleVSgMd;
            outlined destroy of [Regex2BNF.CharacterPredicate](v79, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v71 = v286;
            v72 = i;
          }

          else
          {
            outlined init with copy of (String, Any)(v79, v75, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            if (v81(v79 + v77, 1, v80) == 1)
            {
              (*v252)(v75, v80);
              v69 = v298;
              v70 = v75;
LABEL_5:
              outlined destroy of [Regex2BNF.CharacterPredicate](v79, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
              v71 = v286;
              v45 = &_s10Foundation6LocaleVSgMd;
              v72 = i;
              goto LABEL_6;
            }

            v83 = v79 + v77;
            v84 = v260;
            (*v242)(v260, v83, v80);
            _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
            v248 = dispatch thunk of static Equatable.== infix(_:_:)();
            v85 = *v252;
            v86 = v84;
            v70 = v274;
            (*v252)(v86, v80);
            v85(v70, v80);
            outlined destroy of [Regex2BNF.CharacterPredicate](v79, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v69 = v298;
            v71 = v286;
            v72 = i;
            if ((v248 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v87 = v69[6];
          v88 = (v72 + v87);
          v89 = *(v72 + v87 + 8);
          v90 = (v73 + v87);
          v91 = v90[1];
          if (v89)
          {
            if (v91 && (*v88 == *v90 && v89 == v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
LABEL_27:
              if (*(v72 + v69[7]) == *(v73 + v69[7]))
              {
                v222 = v243;
                outlined init with take of TokenizationResult(v72, v243, type metadata accessor for Prompt.Delimiter);
                v223 = 0;
                v63 = v244;
                v65 = v275;
                goto LABEL_31;
              }
            }
          }

          else if (!v91)
          {
            goto LABEL_27;
          }
        }

LABEL_6:
        ++v67;
        outlined destroy of TokenizationResult(v72, type metadata accessor for Prompt.Delimiter);
        v64 = v285;
        v68 = v287;
        if (v284 == v67)
        {
          v223 = 1;
          v63 = v244;
          v222 = v243;
          v65 = v275;
          goto LABEL_32;
        }
      }
    }

    v223 = 1;
    v222 = v243;
LABEL_31:
    v68 = v287;
LABEL_32:
    v92 = v261;
    (*(v68 + 56))(v222, v223, 1, v261);
    v93 = v222;
    v94 = v241;
    outlined init with copy of (String, Any)(v93, v241, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
    v95 = (*(v68 + 48))(v94, 1, v92);
    v96 = v280;
    v97 = v256;
    if (v95 == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v94, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
      v274 = v285;
    }

    else
    {
      v45 = *(v94 + *(v92 + 20));
      outlined destroy of TokenizationResult(v94, type metadata accessor for Prompt.Delimiter);

      v98 = v285;

      v288 = v45;
      String.index(_:offsetBy:limitedBy:)();
      if ((v99 & 1) == 0)
      {
        v102 = String.subscript.getter();
        v249 = MEMORY[0x1AC57C040](v102);
        v284 = v103;
        v244 = v63;

        v286 = *(v98 + 2);
        if (v286)
        {
          v45 = 0;
          v104 = MEMORY[0x1E69E7CC0];
          v68 = v287;
          v105 = v259;
          while (v45 < *(v98 + 2))
          {
            v106 = (*(v68 + 80) + 32) & ~*(v68 + 80);
            v107 = *(v68 + 72);
            v108 = v253;
            outlined init with copy of TokenizationResult(&v98[v106 + v107 * v45], v253, type metadata accessor for Prompt.Delimiter);
            if (v288 < *(v108 + *(v92 + 20)))
            {
              outlined destroy of TokenizationResult(v108, type metadata accessor for Prompt.Delimiter);
            }

            else
            {
              outlined init with take of TokenizationResult(v108, v105, type metadata accessor for Prompt.Delimiter);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v290 = v104;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1);
                v104 = v290;
              }

              v111 = *(v104 + 2);
              v110 = *(v104 + 3);
              if (v111 >= v110 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v110 > 1, v111 + 1, 1);
                v104 = v290;
              }

              *(v104 + 2) = v111 + 1;
              v105 = v259;
              outlined init with take of TokenizationResult(v259, &v104[v106 + v111 * v107], type metadata accessor for Prompt.Delimiter);
              v92 = v261;
            }

            v45 = (v45 + 1);
            if (v286 == v45)
            {
              goto LABEL_49;
            }
          }

LABEL_128:
          __break(1u);
        }

        else
        {
          v104 = MEMORY[0x1E69E7CC0];
LABEL_49:
          v274 = v104;

          v112 = v275;
          v45 = *(v275 + 16);
          if (!v45)
          {
            v114 = MEMORY[0x1E69E7CC0];
LABEL_61:
            swift_bridgeObjectRelease_n();

            v65 = v114;
            v63 = v284;
            v96 = v280;
            v100 = v271;
            v101 = v273;
            v97 = v256;
            goto LABEL_62;
          }

          v113 = 0;
          v114 = MEMORY[0x1E69E7CC0];
          v68 = v258;
          v115 = v257;
          while (v113 < *(v112 + 16))
          {
            v116 = (*(v115 + 80) + 32) & ~*(v115 + 80);
            v117 = *(v115 + 72);
            v118 = v268;
            outlined init with copy of TokenizationResult(v112 + v116 + v117 * v113, v268, type metadata accessor for Prompt.Attachment);
            if (v288 < *(v118 + *(v68 + 20)))
            {
              outlined destroy of TokenizationResult(v118, type metadata accessor for Prompt.Attachment);
            }

            else
            {
              v119 = v262;
              outlined init with take of TokenizationResult(v118, v262, type metadata accessor for Prompt.Attachment);
              v120 = swift_isUniquelyReferenced_nonNull_native();
              *&v290 = v114;
              if ((v120 & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v114 + 16) + 1, 1);
                v119 = v262;
                v114 = v290;
              }

              v122 = *(v114 + 16);
              v121 = *(v114 + 24);
              if (v122 >= v121 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v121 > 1, v122 + 1, 1);
                v119 = v262;
                v114 = v290;
              }

              *(v114 + 16) = v122 + 1;
              outlined init with take of TokenizationResult(v119, v114 + v116 + v122 * v117, type metadata accessor for Prompt.Attachment);
              v112 = v275;
              v68 = v258;
              v115 = v257;
            }

            if (v45 == ++v113)
            {
              goto LABEL_61;
            }
          }
        }

        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        swift_once();
LABEL_114:
        v224 = type metadata accessor for Logger();
        __swift_project_value_buffer(v224, static Log.tokenization);
        v225 = Logger.logObject.getter();
        v226 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v225, v226))
        {
          v227 = swift_slowAlloc();
          *v227 = 0;
          _os_log_impl(&dword_1A8E85000, v225, v226, "Unexpected multiple modules before cachable delimiter.", v227, 2u);
          MEMORY[0x1AC57DBF0](v227, -1, -1);
        }

        type metadata accessor for GenerationError();
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        outlined destroy of [Regex2BNF.CharacterPredicate](v243, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
        (*(v68 + 8))(v240, v45);
LABEL_105:
      }

      v274 = v98;
    }

    v100 = v271;
    v101 = v273;
LABEL_62:
    v244 = v63;
    v123 = v100 + 64;
    v124 = 1 << *(v100 + 32);
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v126 = v125 & *(v100 + 64);
    v127 = (v124 + 63) >> 6;
    v286 = (v97 + 56);

    v68 = 0;
    v128 = MEMORY[0x1E69E7CC8];
    v275 = v65;
    j = v123;
    for (i = v127; ; v127 = i)
    {
      v287 = v128;
      if (!v126)
      {
        break;
      }

      v131 = v101;
LABEL_73:
      v133 = __clz(__rbit64(v126)) | (v68 << 6);
      v134 = v271;
      v135 = *(v271 + 48);
      v136 = type metadata accessor for SpecialToken();
      v137 = *(v136 - 8);
      v138 = v277;
      (*(v137 + 16))(v277, v135 + *(v137 + 72) * v133, v136);
      v139 = *(v134 + 56) + 32 * v133;
      v140 = v131;
      outlined init with copy of Any(v139, v138 + *(v131 + 48));
      v141 = v278;
      outlined init with copy of (String, Any)(v138, v278, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      v288 = *(v140 + 48);
      v142 = SpecialToken.identifier.getter();
      v45 = v143;
      v284 = *(v137 + 8);
      v285 = v136;
      v284(v141, v136);
      v144 = v298;
      v145 = v282;
      (*v286)(v282 + *(v298 + 20), 1, 1, v289);
      *v145 = v142;
      v145[1] = v45;
      v146 = (v145 + *(v144 + 24));
      *v146 = 0;
      v146[1] = 0;
      v147 = *(v144 + 28);
      v148 = v278;
      *(v145 + v147) = 0;
      __swift_destroy_boxed_opaque_existential_0((v148 + v288));
      v149 = v138;
      v150 = v267;
      outlined init with copy of (String, Any)(v149, v267, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      outlined init with take of Any((v150 + *(v140 + 48)), &v290);
      v151 = v287;
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v294 = v151;
      v153 = specialized __RawDictionaryStorage.find<A>(_:)(v145);
      v155 = *(v151 + 16);
      v156 = (v154 & 1) == 0;
      v157 = __OFADD__(v155, v156);
      v158 = v155 + v156;
      if (v157)
      {
        goto LABEL_130;
      }

      v159 = v154;
      if (*(v151 + 24) >= v158)
      {
        v101 = v273;
        if ((v152 & 1) == 0)
        {
          v167 = v153;
          specialized _NativeDictionary.copy()();
          v153 = v167;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v158, v152);
        v153 = specialized __RawDictionaryStorage.find<A>(_:)(v282);
        v101 = v273;
        if ((v159 & 1) != (v160 & 1))
        {
LABEL_135:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v96 = v280;
      v161 = v294;
      if (v159)
      {
        v45 = v294;
        v129 = (v294[7] + 32 * v153);
        __swift_destroy_boxed_opaque_existential_0(v129);
        v130 = v129;
        v128 = v45;
        outlined init with take of Any(&v290, v130);
        outlined destroy of TokenizationResult(v282, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v277, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      }

      else
      {
        v294[(v153 >> 6) + 8] |= 1 << v153;
        v45 = v161;
        v162 = v153;
        v163 = v282;
        outlined init with copy of TokenizationResult(v282, v161[6] + *(v266 + 72) * v153, type metadata accessor for Prompt.SpecialToken);
        v164 = (v45[7] + 32 * v162);
        v128 = v45;
        outlined init with take of Any(&v290, v164);
        outlined destroy of TokenizationResult(v163, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v277, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
        v165 = v45[2];
        v157 = __OFADD__(v165, 1);
        v166 = v165 + 1;
        if (v157)
        {
          goto LABEL_132;
        }

        v45[2] = v166;
        v101 = v273;
      }

      v126 &= v126 - 1;
      v284(v150, v285);
      v65 = v275;
      v123 = j;
    }

    while (1)
    {
      v132 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      if (v132 >= v127)
      {
        break;
      }

      v126 = *(v123 + 8 * v132);
      ++v68;
      if (v126)
      {
        v131 = v101;
        v68 = v132;
        goto LABEL_73;
      }
    }

    v168 = v270;
    v169 = v270 + 64;
    v170 = 1 << *(v270 + 32);
    v171 = -1;
    if (v170 < 64)
    {
      v171 = ~(-1 << v170);
    }

    v172 = v171 & *(v270 + 64);
    v173 = (v170 + 63) >> 6;

    v45 = 0;
    v288 = MEMORY[0x1E69E7CC8];
    v68 = v254;
    v282 = v173;
    for (j = v169; ; v169 = j)
    {
      v176 = v249;
      if (!v172)
      {
        break;
      }

LABEL_92:
      v178 = __clz(__rbit64(v172)) | (v45 << 6);
      v179 = *(v168 + 48);
      v180 = type metadata accessor for SpecialToken();
      v181 = *(v180 - 8);
      v68 = v276;
      (*(v181 + 16))(v276, v179 + *(v181 + 72) * v178, v180);
      v182 = *(*(v168 + 56) + 8 * v178);
      v183 = v265;
      *(v68 + *(v265 + 48)) = v182;
      v184 = v264;
      outlined init with copy of (String, Any)(v68, v264, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      v185 = *(v184 + *(v183 + 48));

      v186 = SpecialToken.identifier.getter();
      v188 = v187;
      v284 = *(v181 + 8);
      v285 = v180;
      v284(v184, v180);
      v189 = v298;
      v190 = v263;
      (*v286)(v263 + *(v298 + 20), 1, 1, v289);
      *v190 = v186;
      v190[1] = v188;
      v191 = (v190 + *(v189 + 24));
      *v191 = 0;
      v191[1] = 0;
      *(v190 + *(v189 + 28)) = 0;
      v192 = v281;
      outlined init with copy of (String, Any)(v68, v281, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      v193 = *(v192 + *(v183 + 48));
      v194 = v288;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      *&v290 = v194;
      v196 = specialized __RawDictionaryStorage.find<A>(_:)(v190);
      v198 = *(v194 + 16);
      v199 = (v197 & 1) == 0;
      v157 = __OFADD__(v198, v199);
      v200 = v198 + v199;
      if (v157)
      {
        goto LABEL_131;
      }

      v201 = v197;
      if (*(v194 + 24) >= v200)
      {
        v203 = v281;
        v68 = v254;
        if ((v195 & 1) == 0)
        {
          v208 = v196;
          specialized _NativeDictionary.copy()();
          v203 = v281;
          v196 = v208;
          v68 = v254;
        }

        v168 = v270;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v200, v195);
        v196 = specialized __RawDictionaryStorage.find<A>(_:)(v190);
        v68 = v254;
        if ((v201 & 1) != (v202 & 1))
        {
          goto LABEL_135;
        }

        v168 = v270;
        v203 = v281;
      }

      v204 = v290;
      v288 = v290;
      if (v201)
      {
        v174 = *(v290 + 56);
        v175 = *(v174 + 8 * v196);
        *(v174 + 8 * v196) = v193;

        outlined destroy of TokenizationResult(v190, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v276, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      }

      else
      {
        *(v290 + 8 * (v196 >> 6) + 64) |= 1 << v196;
        v205 = v196;
        outlined init with copy of TokenizationResult(v190, *(v204 + 48) + *(v266 + 72) * v196, type metadata accessor for Prompt.SpecialToken);
        *(*(v288 + 56) + 8 * v205) = v193;
        outlined destroy of TokenizationResult(v190, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v276, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
        v206 = *(v288 + 16);
        v157 = __OFADD__(v206, 1);
        v207 = v206 + 1;
        if (v157)
        {
          goto LABEL_133;
        }

        *(v288 + 16) = v207;
        v203 = v281;
      }

      v172 &= v172 - 1;
      v284(v203, v285);
      v65 = v275;
      v96 = v280;
      v173 = v282;
    }

    while (1)
    {
      v177 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v177 >= v173)
      {

        *&v290 = v176;
        *(&v290 + 1) = v244;
        v291 = v274;
        v292 = v65;
        LOBYTE(v294) = v68;
        v209 = v287;
        v210 = v245;
        v211 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(v287, v288, &v294, *(v255 + 104));
        if (v210)
        {

          outlined destroy of [Regex2BNF.CharacterPredicate](v243, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
          (*(v246 + 8))(v240, v247);
          goto LABEL_105;
        }

        v212 = v211;

        LOBYTE(v290) = v68;
        v213 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v212, v209, 1, &v290);
        v45 = v247;
        v214 = v213;

        v215 = v214;
        v68 = v246;
        if (*(v214 + 16) != 1)
        {

          if (one-time initialization token for tokenization != -1)
          {
            goto LABEL_134;
          }

          goto LABEL_114;
        }

        v216 = *(v214 + 32);
        v217 = *(v215 + 40);

        *&v290 = v216;
        *(&v290 + 1) = v217;
        v218 = *(TokenizedPromptModule.tokenizationResults.getter() + 2);

        if (v218 != 1)
        {
          goto LABEL_120;
        }

        *&v290 = v216;
        *(&v290 + 1) = v217;
        v219 = TokenizedPromptModule.tokenizationResults.getter();
        if (!*(v219 + 2))
        {
          goto LABEL_119;
        }

        v220 = &v219[(*(v96 + 80) + 32) & ~*(v96 + 80)];
        v221 = v251;
        outlined init with copy of TokenizationResult(v220, v251, type metadata accessor for TokenizationResult);

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          outlined destroy of TokenizationResult(v221, type metadata accessor for TokenizationResult);
          goto LABEL_121;
        }

        v234 = *v221;
        *&v290 = v216;
        *(&v290 + 1) = v217;
        v235 = TokenizedPromptModule.renderedString.getter();
        v236 = v68;
        v238 = v237;
        outlined destroy of [Regex2BNF.CharacterPredicate](v243, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
        (*(v236 + 8))(v240, v45);

        v239 = v250;
        *v250 = v235;
        v239[1] = v238;
        v239[2] = v234;
        goto LABEL_105;
      }

      v172 = *(v169 + 8 * v177);
      v45 = (v45 + 1);
      if (v172)
      {
        v45 = v177;
        goto LABEL_92;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:

LABEL_120:

LABEL_121:
    v228 = v240;
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v229 = type metadata accessor for Logger();
    __swift_project_value_buffer(v229, static Log.tokenization);
    v230 = Logger.logObject.getter();
    v231 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      *v232 = 0;
      _os_log_impl(&dword_1A8E85000, v230, v231, "Unexpected attachments before cachable delimiter.", v232, 2u);
      v233 = v232;
      v228 = v240;
      MEMORY[0x1AC57DBF0](v233, -1, -1);
    }

    type metadata accessor for GenerationError();
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of [Regex2BNF.CharacterPredicate](v243, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
    (*(v68 + 8))(v228, v45);
    goto LABEL_105;
  }

  return result;
}

uint64_t TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = v4;
  v8 = a1[3];
  v9 = *a4;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = v8;
  v12 = v9;
  v10 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(a2, a3, &v12, *(v4 + 104));
  if (!v5)
  {
    LOBYTE(v13) = v9;
    v6 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v10, a2, 1, &v13);
  }

  return v6;
}

uint64_t TokenizerRunner.tokenize(prompt:tokenTable:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = TokenizerRunner.tokenize(prompt:tokenTable:localizationOverrideMap:)(&v7, a2, v4);

  return v5;
}

uint64_t TokenizerRunner.tokenize(prompt:tokenTable:localizationOverrideMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Prompt.AttachmentContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for TokenizerRunner.TokenizedItem(0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = *(a1 + 24);
  v51 = *a1;
  v52 = *(a1 + 8);
  v53 = v20;
  LOBYTE(v54) = 0;
  v21 = v49;
  v22 = TokenizerRunner.tokenizeKeepImageAttachment(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(&v51, a2, a3, &v54);
  if (!v21)
  {
    v23 = v22;
    v49 = v13;
    v46 = 0;
    v24 = *(v22 + 16);
    if (v24)
    {
      v44 = v9;
      v45 = v12;
      v51 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v25 = 0;
      v26 = v50;
      a2 = v51;
      v27 = *(v50 + 80);
      v47 = v23;
      v48 = v23 + ((v27 + 32) & ~v27);
      while (1)
      {
        if (v25 >= *(v23 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        outlined init with copy of TokenizationResult(v48 + *(v26 + 72) * v25, v19, type metadata accessor for TokenizerRunner.TokenizedItem);
        outlined init with copy of TokenizationResult(v19, v16, type metadata accessor for TokenizerRunner.TokenizedItem);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v28 = v24;
        v29 = *v16;
        outlined destroy of TokenizationResult(v19, type metadata accessor for TokenizerRunner.TokenizedItem);
        v51 = a2;
        v31 = *(a2 + 16);
        v30 = *(a2 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          a2 = v51;
        }

        ++v25;
        *(a2 + 16) = v31 + 1;
        *(a2 + 8 * v31 + 32) = v29;
        v24 = v28;
        v23 = v47;
        v26 = v50;
        if (v28 == v25)
        {

          return a2;
        }
      }

      v24 = v45;
      outlined init with take of TokenizationResult(v16, v45, type metadata accessor for Prompt.AttachmentContent);
      if (one-time initialization token for tokenization == -1)
      {
        goto LABEL_12;
      }

LABEL_18:
      swift_once();
LABEL_12:
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Log.tokenization);
      v33 = v44;
      outlined init with copy of TokenizationResult(v24, v44, type metadata accessor for Prompt.AttachmentContent);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v54 = v37;
        *v36 = 136315138;
        v38 = Prompt.AttachmentContent.description.getter();
        v40 = v39;
        outlined destroy of TokenizationResult(v33, type metadata accessor for Prompt.AttachmentContent);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v54);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1A8E85000, v34, v35, "Failed to tokenize the attachment specified in the prompt %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1AC57DBF0](v37, -1, -1);
        MEMORY[0x1AC57DBF0](v36, -1, -1);
      }

      else
      {

        outlined destroy of TokenizationResult(v33, type metadata accessor for Prompt.AttachmentContent);
      }

      type metadata accessor for GenerationError();
      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      outlined destroy of TokenizationResult(v45, type metadata accessor for Prompt.AttachmentContent);

      outlined destroy of TokenizationResult(v19, type metadata accessor for TokenizerRunner.TokenizedItem);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t TokenizerRunner.TokenizedItem.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt.AttachmentContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TokenizerRunner.TokenizedItem(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TokenizationResult(v1, v9, type metadata accessor for TokenizerRunner.TokenizedItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of TokenizationResult(v9, v5, type metadata accessor for Prompt.AttachmentContent);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v13, "<<attachment:");
    HIWORD(v13[1]) = -4864;
    v10 = Prompt.AttachmentContent.description.getter();
    MEMORY[0x1AC57C120](v10);

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    v11 = v13[0];
    outlined destroy of TokenizationResult(v5, type metadata accessor for Prompt.AttachmentContent);
    return v11;
  }

  else
  {
    v13[0] = *v9;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t TokenizerRunner.tokenizeKeepImageAttachment(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v153 = a3;
  v7 = type metadata accessor for Prompt.AttachmentContent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v142 = &v139[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = type metadata accessor for TokenizerRunner.TokenizedItem(0);
  v158 = *(v159 - 8);
  v10 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v145 = &v139[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v139[-v13];
  v141 = type metadata accessor for TokenizationResult(0);
  v144 = *(v141 - 8);
  v14 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v155 = &v139[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v139[-v18];
  v152 = type metadata accessor for Prompt.SpecialToken(0);
  v164 = *(v152 - 8);
  Kind = v164[4].Kind;
  MEMORY[0x1EEE9AC00](v152);
  v156 = &v139[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v139[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v162 = &v139[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v139[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v139[-v32];
  v151 = *a1;
  v150 = *(a1 + 8);
  v149 = *(a1 + 24);
  v143 = *a4;
  v157 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v34 = a2 + 64;
  v35 = 1 << *(a2 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(a2 + 64);
  v38 = (v35 + 63) >> 6;
  v163 = a2;

  v40 = 0;
  v160 = v33;
  v161 = v30;
  v177 = v24;
  v148 = v19;
  while (1)
  {
    while (1)
    {
      v41 = v40;
      if (!v37)
      {
        if (v38 <= (v40 + 1))
        {
          v43 = v40 + 1;
        }

        else
        {
          v43 = v38;
        }

        v40 = v43 - 1;
        while (1)
        {
          v42 = (v41 + 1);
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v42 >= v38)
          {
            v19 = &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR;
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
            (*(*(v55 - 8) + 56))(v30, 1, 1, v55);
            v37 = 0;
            goto LABEL_14;
          }

          v37 = *(v34 + 8 * v42);
          ++v41;
          if (v37)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

      v42 = v40;
LABEL_13:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = v44 | (v42 << 6);
      v46 = v163;
      v47 = v162;
      outlined init with copy of TokenizationResult(*(v163 + 48) + v164[4].Description * v45, v162, type metadata accessor for Prompt.SpecialToken);
      outlined init with copy of Any(*(v46 + 56) + 32 * v45, &v168);
      v19 = &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
      v49 = *(v48 + 48);
      v50 = v47;
      v30 = v161;
      outlined init with take of TokenizationResult(v50, v161, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(&v168, &v30[v49]);
      (*(*(v48 - 8) + 56))(v30, 0, 1, v48);
      v40 = v42;
      v33 = v160;
LABEL_14:
      outlined init with take of (key: Prompt.SpecialToken, value: Any)?(v30, v33);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
      v52 = (*(*(v51 - 8) + 48))(v33, 1, v51);
      v53 = v177;
      if (v52 == 1)
      {

        specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(v76, &v172);
        v77 = v172;
        v78 = v173;
        v79 = v174;
        v80 = v175;
        v19 = v176;
        v168 = v151;
        v169 = v150;
        v170 = v149;
        v81 = v148;
        (v164[3].Description)(v148, 1, 1, v152);
        v82 = v154;
        v83 = Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(v157, v153, v81);
        if (v82)
        {
          outlined destroy of [Regex2BNF.CharacterPredicate](v81, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
          outlined destroy of [Regex2BNF.CharacterPredicate](&v172, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMd, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMR);

          return v19;
        }

        v84 = v83;
        v153 = v79;
        v154 = v78;
        v156 = v77;
        v160 = v80;
        v162 = 0;
        outlined destroy of [Regex2BNF.CharacterPredicate](v81, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
        if (v143)
        {
          v85 = &type metadata for PromptPreprocessingTemplateV6Convention;
        }

        else
        {
          v85 = &type metadata for PromptPreprocessingTemplateV5Convention;
        }

        if (v143)
        {
          v86 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
        }

        else
        {
          v86 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
        }

        v166 = v85;
        v167 = v86;
        outlined init with take of PromptComponentValueConvertible(&v165, &v168);
        v177 = v171;
        v87 = v170;
        __swift_project_boxed_opaque_existential_1(&v168, v170);
        v164 = v85;
        v161 = v86;
        if (v176 == 255)
        {
          v88 = 0;
          v89 = 0;
          v91 = 0;
          v92 = 0;
          v93 = v87;
          v94 = v177;
          v90 = v84;
        }

        else
        {
          v88 = v172;
          v89 = v173;
          v90 = v84;
          if (v176)
          {
            outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd();

            outlined destroy of [Regex2BNF.CharacterPredicate](&v172, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMd, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMR);
            v88 = 0;
            v89 = 0;
            v91 = 0;
            v92 = 0;
          }

          else
          {
            v91 = v174;
            v92 = v175;
          }

          v93 = v87;
          v94 = v177;
        }

        v95 = v162;
        v96 = (*(v94 + 24))(v90, v88, v89, v91, v92, v93);
        v37 = v145;
        v97 = v163;
        if (v95)
        {
          outlined consume of (start: String, end: String)?(v88, v89);

          __swift_destroy_boxed_opaque_existential_0(&v168);
          return v19;
        }

        v19 = v96;

        outlined consume of (start: String, end: String)?(v88, v89);
        __swift_destroy_boxed_opaque_existential_0(&v168);
        v166 = v164;
        v167 = v161;
        outlined init with take of PromptComponentValueConvertible(&v165, &v168);
        v39 = TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(v19, v97, 1, &v168);
        v40 = 0;
LABEL_47:
        v99 = v39;
        v161 = v19;
        __swift_destroy_boxed_opaque_existential_0(&v168);
        v177 = *(v99 + 16);
        if (v177)
        {
          v162 = v40;
          v100 = 0;
          v101 = v144;
          v164 = (v99 + ((*(v144 + 80) + 32) & ~*(v144 + 80)));
          v19 = MEMORY[0x1E69E7CC0];
          v102 = v142;
          v163 = v99;
          while (v100 < *(v99 + 16))
          {
            v103 = v155;
            outlined init with copy of TokenizationResult(v164 + *(v101 + 72) * v100, v155, type metadata accessor for TokenizationResult);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              outlined init with take of TokenizationResult(v103, v102, type metadata accessor for Prompt.AttachmentContent);
              outlined init with copy of TokenizationResult(v102, v37, type metadata accessor for Prompt.AttachmentContent);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
              }

              v105 = *(v19 + 16);
              v104 = *(v19 + 24);
              if (v105 >= v104 >> 1)
              {
                v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1, v19);
              }

              outlined destroy of TokenizationResult(v102, type metadata accessor for Prompt.AttachmentContent);
              *(v19 + 16) = v105 + 1;
              outlined init with take of TokenizationResult(v37, v19 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v105, type metadata accessor for TokenizerRunner.TokenizedItem);
            }

            else
            {
              v106 = *v103;
              v107 = *(*v103 + 16);
              if (v107)
              {
                v168 = MEMORY[0x1E69E7CC0];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107, 0);
                v108 = v168;
                v109 = 32;
                v110 = v140;
                do
                {
                  *v110 = *(v106 + v109);
                  swift_storeEnumTagMultiPayload();
                  v168 = v108;
                  v112 = *(v108 + 16);
                  v111 = *(v108 + 24);
                  if (v112 >= v111 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v111 > 1, v112 + 1, 1);
                    v108 = v168;
                  }

                  *(v108 + 16) = v112 + 1;
                  outlined init with take of TokenizationResult(v110, v108 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v112, type metadata accessor for TokenizerRunner.TokenizedItem);
                  v109 += 8;
                  --v107;
                }

                while (v107);

                v102 = v142;
                v37 = v145;
              }

              else
              {
                v113 = *v103;

                v108 = MEMORY[0x1E69E7CC0];
              }

              v114 = *(v108 + 16);
              v115 = *(v19 + 16);
              v116 = v115 + v114;
              if (__OFADD__(v115, v114))
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v116 > *(v19 + 24) >> 1)
              {
                if (v115 <= v116)
                {
                  v118 = v115 + v114;
                }

                else
                {
                  v118 = v115;
                }

                v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v118, 1, v19);
              }

              v101 = v144;
              v99 = v163;
              if (*(v108 + 16))
              {
                v119 = *(v19 + 16);
                if ((*(v19 + 24) >> 1) - v119 < v114)
                {
                  goto LABEL_89;
                }

                v120 = v19 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v119;
                swift_arrayInitWithCopy();

                if (v114)
                {
                  v121 = *(v19 + 16);
                  v73 = __OFADD__(v121, v114);
                  v122 = v121 + v114;
                  if (v73)
                  {
                    goto LABEL_90;
                  }

                  *(v19 + 16) = v122;
                }
              }

              else
              {

                if (v114)
                {
                  goto LABEL_87;
                }
              }
            }

            if (++v100 == v177)
            {

              goto LABEL_79;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
        }

        else
        {

          v19 = MEMORY[0x1E69E7CC0];
LABEL_79:
          if (one-time initialization token for tokenization == -1)
          {
            goto LABEL_80;
          }
        }

        swift_once();
LABEL_80:
        v123 = type metadata accessor for Logger();
        __swift_project_value_buffer(v123, static Log.tokenization);
        v124 = v161;

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v168 = v128;
          *v127 = 136643075;
          v129 = type metadata accessor for Prompt.RenderedPromptFragment(0);
          v130 = MEMORY[0x1AC57C2C0](v124, v129);
          v132 = v131;

          v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &v168);

          *(v127 + 4) = v133;
          *(v127 + 12) = 2085;

          v135 = MEMORY[0x1AC57C2C0](v134, v159);
          v137 = v136;

          v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, &v168);

          *(v127 + 14) = v138;
          _os_log_impl(&dword_1A8E85000, v125, v126, "Tokenized %{sensitive}s to tokenItems %{sensitive}s", v127, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v128, -1, -1);
          MEMORY[0x1AC57DBF0](v127, -1, -1);
        }

        else
        {
        }

        return v19;
      }

      v54 = *(v51 + 48);
      outlined init with take of TokenizationResult(v33, v177, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(&v33[v54], &v168);
      if (swift_dynamicCast())
      {
        break;
      }

      v39 = outlined destroy of TokenizationResult(v53, type metadata accessor for Prompt.SpecialToken);
    }

    v19 = *(&v165 + 1);
    v147 = v165;
    v56 = v53;
    v57 = v156;
    outlined init with copy of TokenizationResult(v56, v156, type metadata accessor for Prompt.SpecialToken);
    v58 = v157;
    v146 = swift_isUniquelyReferenced_nonNull_native();
    v168 = v58;
    v60 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
    v61 = *(v58 + 16);
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_85;
    }

    if (*(v58 + 24) >= v63)
    {
      if ((v146 & 1) == 0)
      {
        v157 = v60;
        v75 = v59;
        specialized _NativeDictionary.copy()();
        v59 = v75;
        v60 = v157;
      }

      goto LABEL_24;
    }

    v64 = v59;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, v146);
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v156);
    if ((v64 & 1) != (v66 & 1))
    {
      break;
    }

    v60 = v65;
    v59 = v64;
LABEL_24:
    v67 = v168;
    v157 = v168;
    if (v59)
    {
      v68 = (*(v168 + 56) + 16 * v60);
      v69 = v68[1];
      *v68 = v147;
      v68[1] = v19;

      outlined destroy of TokenizationResult(v156, type metadata accessor for Prompt.SpecialToken);
      v39 = outlined destroy of TokenizationResult(v177, type metadata accessor for Prompt.SpecialToken);
    }

    else
    {
      v70 = v60;
      *(v168 + 8 * (v60 >> 6) + 64) |= 1 << v60;
      outlined init with copy of TokenizationResult(v156, v67[6] + v164[4].Description * v60, type metadata accessor for Prompt.SpecialToken);
      v71 = (v67[7] + 16 * v70);
      *v71 = v147;
      v71[1] = v19;
      outlined destroy of TokenizationResult(v156, type metadata accessor for Prompt.SpecialToken);
      v39 = outlined destroy of TokenizationResult(v177, type metadata accessor for Prompt.SpecialToken);
      v72 = v67[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_88;
      }

      v67[2] = v74;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v83 = a4;
  v8 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Prompt.AttachmentContent(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v14 = *(v80 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TokenizationResult(0);
  v81 = *(v18 - 8);
  v82 = v18;
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v74 = (&v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v73 = (&v71 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v71 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v71 - v26);
  v28 = v4[10];
  v77 = v4;
  v29 = __swift_project_boxed_opaque_existential_1(v4 + 7, v28);
  v30 = v29[3];
  v31 = v29[4];
  if (one-time initialization token for isInternalInstall != -1)
  {
    v70 = *v29;
    swift_once();
  }

  if (isInternalInstall && (v30(&v84), v85 != 1))
  {
    v36 = v84;
    v37 = &unk_1A8FC9000;
    if (v84 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (one-time initialization token for startPrompt != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Prompt.SpecialToken(0);
    v33 = __swift_project_value_buffer(v32, static Prompt.SpecialToken.startPrompt);
    if (*(a2 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v35 & 1) != 0) && (outlined init with copy of Any(*(a2 + 56) + 32 * v34, &v84), swift_dynamicCast()))
    {
      v36 = v86;
      v37 = &unk_1A8FC9000;
      if (v86 < 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v36 = 1;
      v37 = &unk_1A8FC9000;
    }
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = v37[64];
    *(v38 + 32) = v36;
    goto LABEL_17;
  }

LABEL_16:
  v38 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v39 = MEMORY[0x1E69E7CC0];

    v42 = *(a1 + 16);
    if (!v42)
    {
      return v39;
    }

    goto LABEL_20;
  }

LABEL_17:
  *v27 = v38;
  swift_storeEnumTagMultiPayload();
  v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v39);
  }

  v39[2] = v41 + 1;
  outlined init with take of TokenizationResult(v27, v39 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v41, type metadata accessor for TokenizationResult);
  v42 = *(a1 + 16);
  if (v42)
  {
LABEL_20:
    v43 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v79 = *(v14 + 72);
    v71 = v37[64];
    do
    {
      v45 = v83[3];
      v46 = v83[4];
      __swift_project_boxed_opaque_existential_1(v83, v45);
      v47 = (*(v46 + 8))(v43, v45, v46);
      outlined init with copy of TokenizationResult(v43, v17, type metadata accessor for Prompt.RenderedPromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v67 = v76;
          outlined init with take of TokenizationResult(v17, v76, type metadata accessor for Prompt.AttachmentContent);
          outlined init with copy of TokenizationResult(v67, v75, type metadata accessor for Prompt.AttachmentContent);
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
          }

          v58 = v39[2];
          v68 = v39[3];
          v59 = v58 + 1;
          if (v58 >= v68 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v58 + 1, 1, v39);
          }

          outlined destroy of TokenizationResult(v76, type metadata accessor for Prompt.AttachmentContent);
          v44 = v75;
          goto LABEL_22;
        }

        v49 = v72;
        outlined init with take of TokenizationResult(v17, v72, type metadata accessor for Prompt.RenderedSpecialToken);
        v50 = *v49;
        v51 = v49[1];

        outlined destroy of TokenizationResult(v49, type metadata accessor for Prompt.RenderedSpecialToken);
        v52 = v17;
        if (v47)
        {
LABEL_26:
          v53 = v77[5];
          v54 = v77[6];
          __swift_project_boxed_opaque_existential_1(v77 + 2, v53);
          v55 = (*(v54 + 8))(v50, v51, v53, v54);

          if (!v55)
          {

            type metadata accessor for GenerationError();
            _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            return v39;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v56 = swift_allocObject();
          *(v56 + 16) = v71;
          *(v56 + 32) = v55;
          *v73 = v56;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
          }

          v17 = v52;
          v58 = v39[2];
          v57 = v39[3];
          v59 = v58 + 1;
          if (v58 >= v57 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v39);
          }

          v44 = v73;
          goto LABEL_22;
        }
      }

      else
      {
        v50 = *v17;
        v51 = v17[1];
        v52 = v17;
        if (v47)
        {
          goto LABEL_26;
        }
      }

      v60 = v83[3];
      v61 = v83[4];
      __swift_project_boxed_opaque_existential_1(v83, v60);
      v62 = v78;
      v63 = (*(v61 + 16))(v50, v51, v77[13], v77 + 2, v60, v61);
      if (v62)
      {

        return v39;
      }

      v64 = v63;

      *v74 = v64;
      swift_storeEnumTagMultiPayload();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v17 = v52;
      v58 = v39[2];
      v66 = v39[3];
      v59 = v58 + 1;
      if (v58 >= v66 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v58 + 1, 1, v39);
      }

      v44 = v74;
LABEL_22:
      v39[2] = v59;
      outlined init with take of TokenizationResult(v44, v39 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v58, type metadata accessor for TokenizationResult);
      v43 += v79;
      --v42;
    }

    while (v42);
  }

  return v39;
}

Swift::String __swiftcall TokenizerRunner.text(forTokenID:)(Swift::Int forTokenID)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 16))(forTokenID, v3, v4);
  v5 = String.init<A>(_:)();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::Int __swiftcall TokenizerRunner.tokenID(forText:)(Swift::String forText)
{
  object = forText._object;
  countAndFlagsBits = forText._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  return (*(v5 + 8))(countAndFlagsBits, object, v4, v5);
}

Swift::Bool __swiftcall TokenizerRunner.isByte(tokenID:)(Swift::Int tokenID)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 64))(tokenID, v3, v4) & 1;
}

uint64_t TokenizerRunner.vocabulary()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v17;
    v6 = (v3 + 40);
    do
    {
      v15 = *(v6 - 1);
      v16 = *v6;

      v7 = String.init<A>(_:)();
      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        v14 = v7;
        v12 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v12;
        v7 = v14;
      }

      *(v17 + 16) = v10 + 1;
      v11 = v17 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t TokenizerRunner.longestTokenLength.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t TokenizerRunner.prefixTokenIDs(forPrefix:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 72))(a1, a2, v5, v6);
}

uint64_t TokenizerRunner.tokenIDs(forRawPrefix:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t TokenizerRunner.tokenIDs(forDecodedPrefix:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 88))(a1, a2, v5, v6);
}

uint64_t *TokenizerRunner.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[13];

  return v0;
}

uint64_t TokenizerRunner.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
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
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMR, MEMORY[0x1E69E60C8]);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        outlined copy of Regex2BNF.Symbol(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySJSaySiGGMd, &_ss18_DictionaryStorageCySJSaySiGGMR, MEMORY[0x1E69E5ED0]);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5UInt8VGMd, &_ss18_DictionaryStorageCySis5UInt8VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      result = MEMORY[0x1AC57CB60](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5UInt8VSiGMd, &_ss18_DictionaryStorageCys5UInt8VSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x1AC57CB50](*(v8 + 40), v21, 1);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x1AC57CB60](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
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
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMd, &_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 48 * v21;
      v24 = *v23;
      v40 = *(v23 + 8);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      v38 = *(v23 + 41);
      v39 = *(v23 + 40);
      if ((v37 & 1) == 0)
      {
      }

      result = MEMORY[0x1AC57CB60](*(v8 + 40), v22);
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 48 * v16;
      *v17 = v24;
      *(v17 + 8) = v40;
      *(v17 + 24) = v25;
      *(v17 + 32) = v26;
      *(v17 + 40) = v39;
      *(v17 + 41) = v38;
      ++*(v8 + 16);
      v5 = v36;
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

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        outlined copy of JSON(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(char *, uint64_t, uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v6;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v42 & 1) == 0)
      {
        v29 = v25[1];
      }

      v30 = *(v11 + 40);
      Hasher.init(_seed:)();
      a5(v43, v26, v27);
      result = Hasher._finalize()();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMR);
}

{
  v3 = v2;
  v54 = type metadata accessor for CharacterSet();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TerminalSymbol(0);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v49 - v13;
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMR);
  v57 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v51 = (v6 + 32);
    v52 = v14;
    v49 = v3;
    v50 = (v6 + 8);
    v24 = result + 64;
    v25 = v58;
    while (1)
    {
      if (!v22)
      {
        v28 = v18;
        while (1)
        {
          v18 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v18 >= v23)
          {
            break;
          }

          v29 = v19[v18];
          ++v28;
          if (v29)
          {
            v27 = __clz(__rbit64(v29));
            v22 = (v29 - 1) & v29;
            goto LABEL_17;
          }
        }

        if ((v57 & 1) == 0)
        {

          v3 = v49;
          goto LABEL_44;
        }

        v48 = 1 << *(v14 + 32);
        v3 = v49;
        if (v48 >= 64)
        {
          bzero(v19, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v19 = -1 << v48;
        }

        *(v14 + 16) = 0;
        goto LABEL_43;
      }

      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v55 + 72);
      v32 = *(v14 + 48) + v31 * v30;
      if (v57)
      {
        outlined init with take of TokenizationResult(v32, v25, type metadata accessor for TerminalSymbol);
      }

      else
      {
        outlined init with copy of TokenizationResult(v32, v25, type metadata accessor for TerminalSymbol);
      }

      v59 = *(*(v14 + 56) + 8 * v30);
      v33 = *(v17 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of TokenizationResult(v25, v60, type metadata accessor for TerminalSymbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v37 = v53;
        v36 = v54;
        (*v51)(v53, v60, v54);
        v38 = 2;
LABEL_26:
        MEMORY[0x1AC57CB80](v38);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8]);
        dispatch thunk of Hashable.hash(into:)();
        v39 = v37;
        v14 = v52;
        (*v50)(v39, v36);
        goto LABEL_28;
      }

      v40 = *v60;
      MEMORY[0x1AC57CB80](3);
      Hasher._combine(_:)(v40);
LABEL_28:
      result = Hasher._finalize()();
      v41 = -1 << *(v17 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      v25 = v58;
      if (((-1 << v42) & ~*(v24 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v24 + 8 * v43);
          if (v47 != -1)
          {
            v26 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v42) & ~*(v24 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = outlined init with take of TokenizationResult(v25, *(v17 + 48) + v31 * v26, type metadata accessor for TerminalSymbol);
      *(*(v17 + 56) + 8 * v26) = v59;
      ++*(v17 + 16);
    }

    if (!EnumCaseMultiPayload)
    {
      v35 = *v60;
      MEMORY[0x1AC57CB80](0);
      Hasher._combine(_:)(v35);
      goto LABEL_28;
    }

    v37 = v53;
    v36 = v54;
    (*v51)(v53, v60, v54);
    v38 = 1;
    goto LABEL_26;
  }

LABEL_43:

LABEL_44:
  *v3 = v17;
  return result;
}

{
  v3 = v2;
  v42 = type metadata accessor for CharacterSet();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMd, &_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v40)
      {
        (*v19)(v41, v28, v42);
      }

      else
      {
        (*v38)(v41, v28, v42);
      }

      result = MEMORY[0x1AC57CB60](*(v12 + 40), v26);
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v41, v42);
      ++*(v12 + 16);
      v6 = v39;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for JSONSchema();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, MEMORY[0x1E69A0AF8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for Symbol(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSONSchema.Property();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMR);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        outlined init with take of TokenizationResult(v31 + v32 * v28, v52, type metadata accessor for Symbol);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        outlined init with copy of TokenizationResult(v33 + v32 * v28, v52, type metadata accessor for Symbol);
      }

      v34 = *(v16 + 40);
      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type JSONSchema.Property and conformance JSONSchema.Property, MEMORY[0x1E69A0AD0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = outlined init with take of TokenizationResult(v52, *(v16 + 56) + v32 * v24, type metadata accessor for Symbol);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

{
  v3 = v2;
  v62 = type metadata accessor for Locale();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v56 - v11;
  v69 = type metadata accessor for Prompt.SpecialToken(0);
  v63 = *(v69 - 1);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMR);
  v65 = a2;
  v17 = v15;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v19 = result;
  if (*(v15 + 16))
  {
    v56 = v3;
    v20 = 0;
    v21 = (v15 + 64);
    v22 = 1 << *(v17 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v17 + 64);
    v25 = (v22 + 63) >> 6;
    v60 = (v6 + 48);
    v58 = (v6 + 32);
    v57 = (v6 + 8);
    v26 = result + 64;
    v27 = v62;
    v61 = v17;
    while (v24)
    {
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v34 = v31 | (v20 << 6);
      v35 = *(v17 + 48);
      v68 = *(v63 + 72);
      v36 = v35 + v68 * v34;
      if (v65)
      {
        outlined init with take of TokenizationResult(v36, v14, type metadata accessor for Prompt.SpecialToken);
        v37 = (*(v17 + 56) + 16 * v34);
        v38 = *v37;
        v66 = v37[1];
        v67 = v38;
      }

      else
      {
        outlined init with copy of TokenizationResult(v36, v14, type metadata accessor for Prompt.SpecialToken);
        v39 = (*(v17 + 56) + 16 * v34);
        v40 = *v39;
        v66 = v39[1];
        v67 = v40;
      }

      v41 = *(v19 + 40);
      Hasher.init(_seed:)();
      v42 = *v14;
      v43 = v14[1];
      String.hash(into:)();
      v44 = v64;
      outlined init with copy of (String, Any)(v14 + v69[5], v64, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*v60)(v44, 1, v27) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v45 = v59;
        (*v58)(v59, v44, v27);
        Hasher._combine(_:)(1u);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
        dispatch thunk of Hashable.hash(into:)();
        (*v57)(v45, v27);
      }

      v46 = (v14 + v69[6]);
      if (v46[1])
      {
        v47 = *v46;
        Hasher._combine(_:)(1u);
        v27 = v62;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v17 = v61;
      Hasher._combine(_:)(*(v14 + v69[7]));
      result = Hasher._finalize()();
      v48 = -1 << *(v19 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v26 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v26 + 8 * v50);
          if (v54 != -1)
          {
            v28 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v49) & ~*(v26 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = outlined init with take of TokenizationResult(v14, *(v19 + 48) + v68 * v28, type metadata accessor for Prompt.SpecialToken);
      v29 = (*(v19 + 56) + 16 * v28);
      v30 = v66;
      *v29 = v67;
      v29[1] = v30;
      ++*(v19 + 16);
    }

    v32 = v20;
    while (1)
    {
      v20 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v20 >= v25)
      {
        break;
      }

      v33 = v21[v20];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v24 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if (v65)
    {
      v55 = 1 << *(v17 + 32);
      if (v55 >= 64)
      {
        bzero(v21, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v21 = -1 << v55;
      }

      *(v17 + 16) = 0;
    }

    v3 = v56;
  }

  else
  {
  }

  *v3 = v19;
  return result;
}

{
  v3 = v2;
  v57 = type metadata accessor for Locale();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v50 - v11;
  v63 = type metadata accessor for Prompt.SpecialToken(0);
  v58 = *(v63 - 1);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMR);
  v60 = a2;
  v17 = v15;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v19 = result;
  if (*(v15 + 16))
  {
    v51 = v3;
    v20 = 0;
    v21 = (v15 + 64);
    v22 = 1 << *(v17 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v17 + 64);
    v25 = (v22 + 63) >> 6;
    v55 = (v6 + 48);
    v56 = v17;
    v52 = (v6 + 8);
    v53 = (v6 + 32);
    v26 = result + 64;
    v27 = v57;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v62 = *(v58 + 72);
      v34 = v33 + v62 * v32;
      if (v60)
      {
        outlined init with take of TokenizationResult(v34, v14, type metadata accessor for Prompt.SpecialToken);
        v61 = *(*(v17 + 56) + 8 * v32);
      }

      else
      {
        outlined init with copy of TokenizationResult(v34, v14, type metadata accessor for Prompt.SpecialToken);
        v61 = *(*(v17 + 56) + 8 * v32);
      }

      v35 = *(v19 + 40);
      Hasher.init(_seed:)();
      v36 = *v14;
      v37 = v14[1];
      String.hash(into:)();
      v38 = v59;
      outlined init with copy of (String, Any)(v14 + v63[5], v59, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*v55)(v38, 1, v27) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v39 = v54;
        (*v53)(v54, v38, v27);
        Hasher._combine(_:)(1u);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
        dispatch thunk of Hashable.hash(into:)();
        (*v52)(v39, v27);
      }

      v40 = (v14 + v63[6]);
      if (v40[1])
      {
        v41 = *v40;
        Hasher._combine(_:)(1u);
        v27 = v57;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v17 = v56;
      Hasher._combine(_:)(*(v14 + v63[7]));
      result = Hasher._finalize()();
      v42 = -1 << *(v19 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v26 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v26 + 8 * v44);
          if (v48 != -1)
          {
            v28 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v43) & ~*(v26 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = outlined init with take of TokenizationResult(v14, *(v19 + 48) + v62 * v28, type metadata accessor for Prompt.SpecialToken);
      *(*(v19 + 56) + 8 * v28) = v61;
      ++*(v19 + 16);
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if (v60)
    {
      v49 = 1 << *(v17 + 32);
      if (v49 >= 64)
      {
        bzero(v21, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v21 = -1 << v49;
      }

      *(v17 + 16) = 0;
    }

    v3 = v51;
  }

  else
  {
  }

  *v3 = v19;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v58 - v12;
  v14 = type metadata accessor for Prompt.SpecialToken(0);
  v66 = *(v14 - 1);
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v18 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMR);
  v19 = static _DictionaryStorage.resize(original:capacity:move:)();
  v20 = v19;
  if (*(v17 + 16))
  {
    v58 = v3;
    v21 = 0;
    v22 = *(v17 + 64);
    v59 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v65 = (v7 + 48);
    v61 = (v7 + 32);
    v60 = (v7 + 8);
    v27 = v19 + 64;
    v28 = v69;
    v62 = v14;
    v64 = v26;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v31 = (v25 - 1) & v25;
LABEL_17:
      v35 = v30 | (v21 << 6);
      v36 = *(v17 + 48);
      v67 = *(v66 + 72);
      v68 = v31;
      v37 = v36 + v67 * v35;
      if (a2)
      {
        outlined init with take of TokenizationResult(v37, v28, type metadata accessor for Prompt.SpecialToken);
        outlined init with take of Any((*(v17 + 56) + 32 * v35), v70);
      }

      else
      {
        outlined init with copy of TokenizationResult(v37, v28, type metadata accessor for Prompt.SpecialToken);
        outlined init with copy of Any(*(v17 + 56) + 32 * v35, v70);
      }

      v38 = *(v20 + 40);
      Hasher.init(_seed:)();
      v39 = *v28;
      v40 = v28[1];
      String.hash(into:)();
      outlined init with copy of (String, Any)(v28 + v14[5], v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*v65)(v13, 1, v6) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v41 = v63;
        (*v61)(v63, v13, v6);
        Hasher._combine(_:)(1u);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
        dispatch thunk of Hashable.hash(into:)();
        v42 = v41;
        v28 = v69;
        (*v60)(v42, v6);
      }

      v43 = (v28 + v14[6]);
      if (v43[1])
      {
        v44 = v20;
        v45 = v13;
        v46 = v17;
        v47 = v6;
        v48 = a2;
        v49 = *v43;
        Hasher._combine(_:)(1u);
        a2 = v48;
        v6 = v47;
        v17 = v46;
        v13 = v45;
        v20 = v44;
        v14 = v62;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v28 = v69;
      Hasher._combine(_:)(v69[v14[7]]);
      result = Hasher._finalize()();
      v50 = -1 << *(v20 + 32);
      v51 = result & ~v50;
      v52 = v51 >> 6;
      if (((-1 << v51) & ~*(v27 + 8 * (v51 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v50) >> 6;
        while (++v52 != v54 || (v53 & 1) == 0)
        {
          v55 = v52 == v54;
          if (v52 == v54)
          {
            v52 = 0;
          }

          v53 |= v55;
          v56 = *(v27 + 8 * v52);
          if (v56 != -1)
          {
            v29 = __clz(__rbit64(~v56)) + (v52 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v51) & ~*(v27 + 8 * (v51 >> 6)))) | v51 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      outlined init with take of TokenizationResult(v28, *(v20 + 48) + v67 * v29, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(v70, (*(v20 + 56) + 32 * v29));
      ++*(v20 + 16);
      v26 = v64;
      v25 = v68;
    }

    v32 = v21;
    result = v59;
    while (1)
    {
      v21 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v21 >= v26)
      {
        break;
      }

      v34 = v59[v21];
      ++v32;
      if (v34)
      {
        v30 = __clz(__rbit64(v34));
        v31 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v58;
      goto LABEL_42;
    }

    v57 = 1 << *(v17 + 32);
    v3 = v58;
    if (v57 >= 64)
    {
      bzero(v59, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v59 = -1 << v57;
    }

    *(v17 + 16) = 0;
  }

LABEL_42:
  *v3 = v20;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TerminalSymbol(0);
  result = outlined init with take of TokenizationResult(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TerminalSymbol);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x1E69A0AF8]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for JSONSchema.Property();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Symbol(0);
  result = outlined init with take of TokenizationResult(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for Symbol);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = *(a3 + 24);
  v6 = a3[4];
  v7 = *(a3 + 40);
  v8 = *(a3 + 41);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v9 = a4[7] + 48 * result;
  *v9 = v4;
  *(v9 + 8) = *(a3 + 1);
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 41) = v8;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Prompt.SpecialToken(0);
  outlined init with take of TokenizationResult(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for Prompt.SpecialToken);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMR);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = outlined copy of Regex2BNF.Symbol(v23, v24, v26);
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySJSaySiGGMd, &_ss18_DictionaryStorageCySJSaySiGGMR);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69680B8], &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMR);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69680B8], &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5UInt8VGMd, &_ss18_DictionaryStorageCySis5UInt8VGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5UInt8VSiGMd, &_ss18_DictionaryStorageCys5UInt8VSiGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  v2 = type metadata accessor for TerminalSymbol(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        outlined init with copy of TokenizationResult(*(v6 + 48) + v22, v5, type metadata accessor for TerminalSymbol);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = outlined init with take of TokenizationResult(v5, *(v8 + 48) + v22, type metadata accessor for TerminalSymbol);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  v30 = type metadata accessor for CharacterSet();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMd, &_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMR);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69A0AF8], &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMd, &_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMR);
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
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *(v18 + 41);
        v24 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v25 = *(v4 + 56) + 48 * v17;
        *v25 = v19;
        *(v25 + 8) = v24;
        *(v25 + 24) = v20;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        *(v25 + 41) = v23;
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

{
  v1 = v0;
  v2 = type metadata accessor for Prompt.SpecialToken(0);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    v33 = v5;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v34;
        v23 = *(v35 + 72) * v21;
        outlined init with copy of TokenizationResult(*(v5 + 48) + v23, v34, type metadata accessor for Prompt.SpecialToken);
        v24 = *(v5 + 56);
        v25 = 16 * v21;
        v26 = (v24 + 16 * v21);
        v27 = *v26;
        v28 = v26[1];
        v29 = v36;
        outlined init with take of TokenizationResult(v22, *(v36 + 48) + v23, type metadata accessor for Prompt.SpecialToken);
        v30 = (*(v29 + 56) + v25);
        v5 = v33;
        *v30 = v27;
        v30[1] = v28;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v32;
        v7 = v36;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Prompt.SpecialToken(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v25 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        outlined init with copy of TokenizationResult(*(v7 + 48) + v23, v6, type metadata accessor for Prompt.SpecialToken);
        v22 *= 32;
        outlined init with copy of Any(*(v7 + 56) + v22, v26);
        outlined init with take of TokenizationResult(v6, *(v9 + 48) + v23, type metadata accessor for Prompt.SpecialToken);
        result = outlined init with take of Any(v26, (*(v9 + 56) + v22));
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Prompt.SpecialToken(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        outlined init with copy of TokenizationResult(*(v6 + 48) + v22, v5, type metadata accessor for Prompt.SpecialToken);
        v23 = *(*(v6 + 56) + 8 * v21);
        outlined init with take of TokenizationResult(v5, *(v8 + 48) + v22, type metadata accessor for Prompt.SpecialToken);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMR);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = outlined copy of JSON(v23, v24, v26);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for Symbol(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for JSONSchema.Property();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        outlined init with copy of TokenizationResult(*(v7 + 56) + v28, v37, type metadata accessor for Symbol);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = outlined init with take of TokenizationResult(v27, *(v29 + 56) + v28, type metadata accessor for Symbol);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t outlined assign with take of TokenizationResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenizationResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TokenizationResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TokenizationResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TokenizationResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5AKSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_AF_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5AISg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_AF_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

uint64_t specialized static TokenizationResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TokenizationResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of TokenizationResult(a1, &v24 - v17, type metadata accessor for TokenizationResult);
  outlined init with copy of TokenizationResult(a2, &v18[v20], type metadata accessor for TokenizationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of TokenizationResult(v18, v11, type metadata accessor for TokenizationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of TokenizationResult(&v18[v20], v7, type metadata accessor for Prompt.AttachmentContent);
      v21 = static Prompt.AttachmentContent.== infix(_:_:)(v11, v7);
      outlined destroy of TokenizationResult(v7, type metadata accessor for Prompt.AttachmentContent);
      outlined destroy of TokenizationResult(v11, type metadata accessor for Prompt.AttachmentContent);
LABEL_9:
      outlined destroy of TokenizationResult(v18, type metadata accessor for TokenizationResult);
      return v21 & 1;
    }

    outlined destroy of TokenizationResult(v11, type metadata accessor for Prompt.AttachmentContent);
  }

  else
  {
    outlined init with copy of TokenizationResult(v18, v14, type metadata accessor for TokenizationResult);
    v22 = *v14;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v22, *&v18[v20]);

      goto LABEL_9;
    }
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5AISg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_AF_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t outlined consume of ImageTokenizationConfiguration?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized TokenizerRunner.convertByteTokenToUTF8CodeUnit(fromTokenText:)(uint64_t a1, unint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  v22[0] = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v22[1] = v4;
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v8 = specialized Collection.dropFirst(_:)(2uLL, v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (!((v8 ^ v10) >> 14))
  {

LABEL_5:
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.tokenization);

    v18 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v22);
      _os_log_impl(&dword_1A8E85000, v18, v16, "Invalid byte token passed to convertByteToken: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1AC57DBF0](v20, -1, -1);
      MEMORY[0x1AC57DBF0](v19, -1, -1);
    }

    type metadata accessor for GenerationError();
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v16;
  }

  v15 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5AKSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_AF_SsTG5SiTf1cn_n(v8, v10, v12, v14, 16);
  if ((v15 & 0x10000) != 0)
  {
    v15 = specialized _parseInteger<A, B>(ascii:radix:)(v8, v10, v12, v14, 16);
  }

  v16 = v15;

  if ((v16 & 0x100) != 0)
  {
    goto LABEL_5;
  }

  return v16;
}

uint64_t specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  v5 = type metadata accessor for Prompt.AttachmentContent(0);
  *(v3 + 128) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = *a3;

  return MEMORY[0x1EEE6DFA0](specialized static TokenizerRunner.tokenize(attachment:using:configuration:), 0, 0);
}