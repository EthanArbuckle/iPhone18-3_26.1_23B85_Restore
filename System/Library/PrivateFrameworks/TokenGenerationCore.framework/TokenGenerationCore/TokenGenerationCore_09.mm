uint64_t specialized static TokenizerRunner.tokenize(attachment:using:configuration:)()
{
  v81 = v0;
  v1 = *(v0 + 128);
  outlined init with copy of TokenizationResult(*(v0 + 112), *(v0 + 144), type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v58 = *(v0 + 152);
      v57 = *(v0 + 160);
      v59 = *(v0 + 144);
      v60 = *(v0 + 120);
      v61 = *v59;
      *(v0 + 208) = *v59;
      v62 = v60[3];
      v63 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v62);
      *(v0 + 104) = v61;
      *(v0 + 72) = v58;
      *(v0 + 80) = v57;
      v64 = *(v63 + 16);
      v75 = (v64 + *v64);
      v65 = v64[1];
      v66 = swift_task_alloc();
      *(v0 + 216) = v66;
      *v66 = v0;
      v66[1] = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
      v27 = v0 + 104;
      v28 = v0 + 72;
      v29 = v62;
      v30 = v63;
      v31 = v75;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_12;
      }

      v17 = *(v0 + 152);
      v16 = *(v0 + 160);
      v18 = *(v0 + 144);
      v19 = *(v0 + 120);
      v20 = *v18;
      *(v0 + 240) = *v18;
      v21 = v18[1];
      *(v0 + 248) = v21;
      v22 = v19[3];
      v23 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v22);
      *(v0 + 40) = v20;
      *(v0 + 48) = v21;
      *(v0 + 56) = v17;
      *(v0 + 64) = v16;
      v24 = *(v23 + 32);
      v73 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v0 + 256) = v26;
      *v26 = v0;
      v26[1] = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
      v27 = v0 + 40;
      v28 = v0 + 56;
      v29 = v22;
      v30 = v23;
      v31 = v73;
    }

    return v31(v27, v28, v29, v30);
  }

  if (!EnumCaseMultiPayload)
  {
    v46 = *(v0 + 152);
    v45 = *(v0 + 160);
    v47 = *(v0 + 144);
    v48 = *(v0 + 120);
    v49 = *v47;
    v50 = *(v47 + 1);
    *(v0 + 168) = v50;
    v51 = *(v47 + 2);
    *(v0 + 176) = v51;
    v52 = v48[3];
    v53 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v52);
    *(v0 + 16) = v49;
    *(v0 + 24) = v50;
    *(v0 + 32) = v51;
    *(v0 + 88) = v46;
    *(v0 + 96) = v45;
    v54 = *(v53 + 8);
    v74 = (v54 + *v54);
    v55 = v54[1];
    v56 = swift_task_alloc();
    *(v0 + 184) = v56;
    *v56 = v0;
    v56[1] = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
    v27 = v0 + 16;
    v28 = v0 + 88;
    v29 = v52;
    v30 = v53;
    v31 = v74;

    return v31(v27, v28, v29, v30);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *v5;
    v8 = *(v5 + 5);
    v9 = v6[3];
    v10 = v6[4];
    v71 = *(v5 + 24);
    v72 = *(v5 + 8);
    __swift_project_boxed_opaque_existential_1(v6, v9);
    LOBYTE(v76) = v7;
    v78 = v71;
    v77 = v72;
    v79 = v8;
    v80[0] = v4;
    v80[1] = v3;
    v11 = (*(v10 + 24))(&v76, v80, v9, v10);
    outlined consume of Data._Representation(v72, *(&v72 + 1));

    v13 = *(v0 + 136);
    v12 = *(v0 + 144);

    v14 = *(v0 + 8);

    return v14(v11);
  }

LABEL_12:
  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 136);
  v33 = *(v0 + 112);
  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.tokenization);
  outlined init with copy of TokenizationResult(v33, v32, type metadata accessor for Prompt.AttachmentContent);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 136);
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76 = v40;
    *v39 = 136315138;
    v41 = Prompt.AttachmentContent.description.getter();
    v43 = v42;
    outlined destroy of TokenizationResult(v38, type metadata accessor for Prompt.AttachmentContent);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v76);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1A8E85000, v35, v36, "Unexpected attachment was remaining in the prompt after tokenization %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1AC57DBF0](v40, -1, -1);
    MEMORY[0x1AC57DBF0](v39, -1, -1);
  }

  else
  {

    outlined destroy of TokenizationResult(v38, type metadata accessor for Prompt.AttachmentContent);
  }

  v67 = *(v0 + 144);
  type metadata accessor for GenerationError();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined destroy of TokenizationResult(v67, type metadata accessor for Prompt.AttachmentContent);
  v69 = *(v0 + 136);
  v68 = *(v0 + 144);

  v70 = *(v0 + 8);

  return v70();
}

{
  outlined consume of Data._Representation(v0[21], v0[22]);
  v1 = v0[25];
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4(v1);
}

{

  v1 = *(v0 + 232);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v1);
}

{
  v1 = v0[34];
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4(v1);
}

{
  outlined consume of Data._Representation(v0[21], v0[22]);
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 224);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[30];
  v2 = v0[31];

  v3 = v0[33];
  v5 = v0[17];
  v4 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  else
  {
    *(v4 + 232) = a1;
    v7 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v7 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  else
  {
    v8 = v4[30];
    v9 = v4[31];

    v4[34] = a1;
    v7 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t outlined copy of ImageTokenizationConfiguration?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with take of (key: Prompt.SpecialToken, value: Any)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of UnresolvedImageTokenizationConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd();
  }

  return result;
}

uint64_t outlined consume of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd()
{
}

uint64_t outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd()
{
}

uint64_t outlined copy of UnresolvedImageTokenizationConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd();
  }

  return result;
}

void type metadata completion function for TokenizationResult()
{
  type metadata accessor for [Int]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Prompt.AttachmentContent(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 144);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 184))();
}

uint64_t type metadata completion function for TokenizerRunner.TokenizedItem()
{
  result = type metadata accessor for Prompt.AttachmentContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerSentencePieceModel.tokenize(text:)(Swift::String text)
{
  v2 = v1;
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1AC57BF60](text._countAndFlagsBits, text._object);
  v26[0] = 0;
  v4 = [v2 encodeAsIDsFrom:v3 error:v26];

  v5 = v26[0];
  type metadata accessor for NSNumber();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v5;

  if (v7)
  {

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.tokenization);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v7;
      *v12 = v5;
      v13 = v7;
      _os_log_impl(&dword_1A8E85000, v9, v10, "Failed to tokenize text due to %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      MEMORY[0x1AC57DBF0](v12, -1, -1);
      MEMORY[0x1AC57DBF0](v11, -1, -1);
    }

    v14 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_23;
  }

  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v23 = v6;
    }

    else
    {
      v23 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = MEMORY[0x1AC57C730](v23);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_22:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_9:
  v26[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
  }

  v17 = 0;
  v14 = v26[0];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1AC57C620](v17, v6);
    }

    else
    {
      v18 = *(v6 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = [v18 integerValue];

    v26[0] = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v14 = v26[0];
    }

    ++v17;
    *(v14 + 16) = v22 + 1;
    *(v14 + 8 * v22 + 32) = v20;
  }

  while (v16 != v17);

LABEL_23:
  v24 = *MEMORY[0x1E69E9840];
  v25 = v14;
  result.value._rawValue = v25;
  result.is_nil = v15;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerSentencePieceModel.detokenize(tokenIDs:)(Swift::OpaquePointer tokenIDs)
{
  v2 = v1;
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = *(tokenIDs._rawValue + 2);
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (tokenIDs._rawValue + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v25[0] + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25[0] = 0;
  v9 = [v2 decodeFromIDs:isa error:v25];

  v10 = v25[0];
  v11 = v25[0];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v11)
  {

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.tokenization);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v11;
      *v19 = v10;
      v20 = v11;
      _os_log_impl(&dword_1A8E85000, v16, v17, "Failed to detokenize tokenIDs due to %@", v18, 0xCu);
      outlined destroy of NSObject?(v19);
      MEMORY[0x1AC57DBF0](v19, -1, -1);
      MEMORY[0x1AC57DBF0](v18, -1, -1);
    }

    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v25[0] = v12;
    v25[1] = v14;
    v21 = String.init<A>(_:)();
  }

  v23 = *MEMORY[0x1E69E9840];
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

unint64_t TokenizerRunnerSentencePieceModel.vocabulary()(void *a1)
{
  result = [a1 pieceSize];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = [a1 pieceFrom_];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
      }

      ++v4;
      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v9;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

unint64_t TokenizerRunnerSentencePieceModel.longestTokenLength.getter(void *a1)
{
  result = [a1 pieceSize];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = result;
    if (result)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = [a1 pieceFrom_];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = String.count.getter();

        if (v8 > v3)
        {
          v3 = v8;
        }

        v5 = v6;
      }

      while (v4 != v6);
    }

    return v3;
  }

  return result;
}

uint64_t TokenizerRunnerSentencePieceModel.prefixTokenIDs(forPrefix:)(uint64_t a1, unint64_t a2, id a3)
{
  result = [a3 pieceSize];
  if (result < 0)
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result)
    {
      v8 = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v10 = 7;
      if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v10 = 11;
      }

      v32 = v9;
      v11 = MEMORY[0x1E69E7CC0];
      for (i = [a3 pieceFrom_]; ; i = objc_msgSend(a3, sel_pieceFrom_, v8, v31))
      {
        v13 = i;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if ((v16 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v16) & 0xF;
        }

        else
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18._countAndFlagsBits = a1;
          v18._object = a2;
          if (String.hasPrefix(_:)(v18))
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
            }

            v20 = v11[2];
            v19 = v11[3];
            if (v20 >= v19 >> 1)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v11);
            }

            v11[2] = v20 + 1;
            v21 = &v11[3 * v20];
            v21[4] = v8;
            v21[5] = 0;
            v21[6] = 0xE000000000000000;
          }

          else
          {
            v22._countAndFlagsBits = v14;
            v22._object = v16;
            v23 = String.hasPrefix(_:)(v22);

            if (v23)
            {
              if (v32 < v17)
              {
                __break(1u);
                goto LABEL_32;
              }

              v24 = String.subscript.getter();
              v25 = MEMORY[0x1AC57C040](v24);
              v27 = v26;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
              }

              v29 = v11[2];
              v28 = v11[3];
              if (v29 >= v28 >> 1)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
              }

              v11[2] = v29 + 1;
              v30 = &v11[3 * v29];
              v30[4] = v8;
              v30[5] = v25;
              v30[6] = v27;
            }
          }
        }

        else
        {
        }

        if (v7 == ++v8)
        {
          return v11;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t TokenizerRunnerSentencePieceModel.tokenIDs(forRawPrefix:)(uint64_t a1, unint64_t a2, id a3)
{
  v3 = a3;
  result = [a3 pieceSize];
  if (result < 0)
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result)
    {
      v8 = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v34 = v9;
      v10 = MEMORY[0x1E69E7CC0];
      v33 = result;
      while (1)
      {
        v11 = [v3 pieceFrom_];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if ((v14 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v15 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v15 && (v16._countAndFlagsBits = a1, v16._object = a2, result = String.hasPrefix(_:)(v16), (result & 1) != 0))
        {
          if (v15 < v34)
          {
            __break(1u);
            goto LABEL_23;
          }

          v17 = v3;
          v18 = a2;
          v19 = a1;
          v20 = String.subscript.getter();
          v22 = v21;
          v24 = v23;
          v26 = v25;

          v27 = MEMORY[0x1AC57C040](v20, v22, v24, v26);
          v29 = v28;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
          }

          v31 = v10[2];
          v30 = v10[3];
          a1 = v19;
          if (v31 >= v30 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v10);
          }

          a2 = v18;
          v10[2] = v31 + 1;
          v32 = &v10[3 * v31];
          v32[4] = v8;
          v32[5] = v27;
          v32[6] = v29;
          v3 = v17;
          v7 = v33;
        }

        else
        {
        }

        if (v7 == ++v8)
        {
          return v10;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *TokenizerRunnerSentencePieceModel.tokenIDs(forDecodedPrefix:)(uint64_t a1, unint64_t a2, id a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 pieceSize];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
  }

  v7 = v6;
  if (v6)
  {
    v8 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v9;
    v10 = MEMORY[0x1E69E7CC0];
    v37 = a1;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A8FCB6B0;
      *(v11 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      type metadata accessor for NSNumber();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v39[0] = 0;
      v13 = [a3 decodeFromIDs:isa error:v39];

      v14 = v39[0];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      v18 = v14;

      if (v18)
      {
      }

      else
      {
        if ((v17 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v17) & 0xF;
        }

        else
        {
          v19 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v19 && (v20._countAndFlagsBits = a1, v20._object = a2, String.hasPrefix(_:)(v20)))
        {
          if (v19 < v38)
          {
            __break(1u);
            goto LABEL_25;
          }

          v21 = a2;
          v22 = String.subscript.getter();
          v24 = v23;
          v26 = v25;
          v28 = v27;

          v29 = MEMORY[0x1AC57C040](v22, v24, v26, v28);
          v31 = v30;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
          }

          v33 = v10[2];
          v32 = v10[3];
          a2 = v21;
          if (v33 >= v32 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v10);
          }

          a1 = v37;
          v10[2] = v33 + 1;
          v34 = &v10[3 * v33];
          v34[4] = v8;
          v34[5] = v29;
          v34[6] = v31;
        }

        else
        {
        }
      }

      if (v7 == ++v8)
      {
        goto LABEL_23;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v35 = *MEMORY[0x1E69E9840];
  return v10;
}

id protocol witness for TokenizerRunnerTokenizer.tokenID(forText:) in conformance TokenizerRunnerSentencePieceModel()
{
  v1 = *v0;
  v2 = MEMORY[0x1AC57BF60]();
  v3 = [v1 idFrom_];

  return v3;
}

uint64_t protocol witness for TokenizerRunnerTokenizer.text(forTokenID:) in conformance TokenizerRunnerSentencePieceModel(uint64_t a1)
{
  v2 = [*v1 pieceFrom_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

TokenGenerationCore::TGModes_optional __swiftcall TGModes.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TGModes.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t TGModes.rawValue.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x657A696E656B6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TGModes(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x80000001A8FD8330;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001A8FD8330;
  }

  else
  {
    v3 = 0x657A696E656B6F74;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0x657A696E656B6F74;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TGModes()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TGModes()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TGModes()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TGModes(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001A8FD8330;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0x657A696E656B6F74;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574656C706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AutomationJSON.mode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutomationJSON.modelBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AutomationJSON.temperature.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t AutomationJSON.maxTokens.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t AutomationJSON.randomSeed.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t AutomationJSON.prompt.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AutomationJSON.locale.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

TokenGenerationCore::AutomationJSON::InputPromptType_optional __swiftcall AutomationJSON.InputPromptType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutomationJSON.InputPromptType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t AutomationJSON.InputPromptType.rawValue.getter()
{
  v1 = 0x444974706D6F7270;
  if (*v0 != 1)
  {
    v1 = 0x655474706D6F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutomationJSON.InputPromptType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x444974706D6F7270;
  if (v2 != 1)
  {
    v4 = 0x655474706D6F7270;
    v3 = 0xEE006574616C706DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74706D6F7270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x444974706D6F7270;
  if (*a2 != 1)
  {
    v8 = 0x655474706D6F7270;
    v7 = 0xEE006574616C706DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74706D6F7270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AutomationJSON.InputPromptType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AutomationJSON.InputPromptType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutomationJSON.InputPromptType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutomationJSON.InputPromptType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x444974706D6F7270;
  if (v2 != 1)
  {
    v5 = 0x655474706D6F7270;
    v4 = 0xEE006574616C706DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74706D6F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.RichVariableBinding.CodingKeys()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.RichVariableBinding.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.RichVariableBinding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.RichVariableBinding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AutomationJSON.RichVariableBinding.FieldType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AutomationJSON.RichVariableBinding.FieldType()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutomationJSON.RichVariableBinding.FieldType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AutomationJSON.RichVariableBinding.FieldType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AutomationJSON.RichVariableBinding.FieldType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutomationJSON.RichVariableBinding.FieldType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  v5 = 0xE900000000000068;
  v6 = 0x7461506567616D69;
  v7 = 0xED00006874615067;
  v8 = 0x6E69646465626D65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001A8FD83A0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65747441666C6573;
    v3 = 0xED00006E6F69746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t AutomationJSON.RichVariableBinding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v23 = 0;
    lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v24;
    v12 = (v6 + 8);
    if (v24 <= 1u)
    {
      if (v24)
      {
        v19 = 1;
      }

      else
      {
        v18 = 1;
      }
    }

    else if (v24 == 2)
    {
      v20 = 1;
    }

    else if (v24 == 3)
    {
      v21 = 1;
    }

    else
    {
      v22 = 1;
    }

    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*v12)(v9, v5);
    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType);
  }

  return result;
}

uint64_t AutomationJSON.RichVariableBinding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *(v1 + 8);
  v13[1] = *v1;
  v13[2] = v9;
  v10 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v10 <= 1)
  {
    if (v10)
    {
      v17 = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v16 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v15 = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v14 = 1;
        goto LABEL_16;
      }
    }

    return (*(v5 + 8))(v8, v4);
  }

  if (v10 == 2)
  {
    v19 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v2)
    {
      v18 = 1;
      goto LABEL_16;
    }

    return (*(v5 + 8))(v8, v4);
  }

  if (v10 != 3)
  {
    v23 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v2)
    {
      v22 = 1;
      goto LABEL_16;
    }

    return (*(v5 + 8))(v8, v4);
  }

  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v20 = 1;
LABEL_16:
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t AutomationJSON.responses.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t AutomationJSON.output.setter(uint64_t a1)
{
  v3 = *(v1 + 168);

  *(v1 + 168) = a1;
  return result;
}

uint64_t AutomationJSON.RenderedPrompt.originalPrompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.renderedString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.Source.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.Source.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AutomationJSON.RenderedPrompt.Source.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.Source.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

TokenGenerationCore::AutomationJSON::RenderedPrompt::Source __swiftcall AutomationJSON.RenderedPrompt.Source.init(identifier:version:)(Swift::String identifier, Swift::String version)
{
  *v2 = identifier;
  v2[1] = version;
  result.version = version;
  result.identifier = identifier;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.RenderedPrompt.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v12 = v14[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.RenderedPrompt.Source.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.RenderedPrompt.source.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  *a1 = v1[7];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

void __swiftcall AutomationJSON.RenderedPrompt.init(originalPrompt:renderedString:segments:tokenIDs:userInfo:source:)(TokenGenerationCore::AutomationJSON::RenderedPrompt *__return_ptr retstr, Swift::String originalPrompt, Swift::String renderedString, Swift::OpaquePointer segments, Swift::OpaquePointer tokenIDs, Swift::OpaquePointer userInfo, TokenGenerationCore::AutomationJSON::RenderedPrompt::Source source)
{
  v7 = *source.identifier._countAndFlagsBits;
  v8 = *(source.identifier._countAndFlagsBits + 16);
  v9 = *(source.identifier._countAndFlagsBits + 24);
  retstr->originalPrompt = originalPrompt;
  retstr->renderedString = renderedString;
  retstr->segments = segments;
  retstr->tokenIDs = tokenIDs;
  retstr->userInfo = userInfo;
  retstr->source.identifier = v7;
  retstr->source.version._countAndFlagsBits = v8;
  retstr->source.version._object = v9;
}

uint64_t AutomationJSON.RenderedPrompt.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v14 = v0[10];
  v15 = v0[9];
  _StringGuts.grow(_:)(179);
  MEMORY[0x1AC57C120](0xD000000000000042, 0x80000001A8FD97A0);
  MEMORY[0x1AC57C120](v1, v2);
  MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD97F0);
  MEMORY[0x1AC57C120](v3, v4);
  MEMORY[0x1AC57C120](0x656D676573202D0ALL, 0xED0000203A73746ELL);
  v10 = MEMORY[0x1AC57C2C0](v6, MEMORY[0x1E69E6158]);
  MEMORY[0x1AC57C120](v10);

  MEMORY[0x1AC57C120](0x6E656B6F74202D0ALL, 0xED0000203A734449);
  v11 = MEMORY[0x1AC57C2C0](v5, MEMORY[0x1E69E6530]);
  MEMORY[0x1AC57C120](v11);

  MEMORY[0x1AC57C120](0x4972657375202D0ALL, 0xED0000203A6F666ELL);
  v12 = Dictionary.description.getter();
  MEMORY[0x1AC57C120](v12);

  MEMORY[0x1AC57C120](0xD000000000000016, 0x80000001A8FD9810);
  MEMORY[0x1AC57C120](v7, v9);
  MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD9830);
  MEMORY[0x1AC57C120](v15, v14);
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.RenderedPrompt.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C616E696769726FLL;
  v3 = 0x7344496E656B6F74;
  v4 = 0x6F666E4972657375;
  if (v1 != 4)
  {
    v4 = 0x656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64657265646E6572;
  if (v1 != 1)
  {
    v5 = 0x73746E656D676573;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.RenderedPrompt.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AutomationJSON.RenderedPrompt.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.RenderedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.RenderedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.RenderedPrompt.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[6];
  v14 = v1[8];
  v13 = v1[9];
  v21 = v1[7];
  v22 = v14;
  v23 = v13;
  v24 = v1[10];
  v25 = v12;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v31) = 0;
  v16 = v30;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v18 = v26;
    v17 = v27;
    v19 = v25;
    LOBYTE(v31) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = v17;
    v35 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v18;
    v35 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v19;
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = 5;
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source);
  }

  return result;
}

uint64_t AutomationJSON.RenderedPrompt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v37[0]) = 1;
  *&v31 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v31 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  LOBYTE(v32[0]) = 2;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v37[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  LOBYTE(v32[0]) = 3;
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  v29 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v37[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v32[0]) = 4;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v37[0];
  v41 = 5;
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v29 = v38;
  v26 = v39;
  v15 = v40;
  v25 = *(&v39 + 1);
  *&v32[0] = v11;
  *(&v32[0] + 1) = v13;
  v16 = v31;
  v32[1] = v31;
  v17 = *(&v31 + 1);
  v18 = v30;
  *&v33 = v30;
  *(&v33 + 1) = v28;
  *&v34 = v27;
  *(&v34 + 1) = v38;
  v35 = v39;
  v36 = v40;
  v19 = v31;
  *a2 = v32[0];
  *(a2 + 16) = v19;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  *(a2 + 80) = v15;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *(a2 + 32) = v20;
  outlined init with copy of AutomationJSON.RenderedPrompt(v32, v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37[0] = v11;
  v37[1] = v13;
  v37[2] = v16;
  v37[3] = v17;
  v37[4] = v18;
  v37[5] = v28;
  v37[6] = v27;
  v37[7] = v29;
  v37[8] = v26;
  v37[9] = v25;
  v37[10] = v15;
  return outlined destroy of AutomationJSON.RenderedPrompt(v37);
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

uint64_t AutomationJSON.renderedPrompts.setter(uint64_t a1)
{
  v3 = *(v1 + 176);

  *(v1 + 176) = a1;
  return result;
}

uint64_t AutomationJSON.constraintValidation.setter(uint64_t a1)
{
  v3 = *(v1 + 184);

  *(v1 + 184) = a1;
  return result;
}

uint64_t AutomationJSON.frequencyPenalty.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t AutomationJSON.lengthPenalty.getter()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t AutomationJSON.stopSequence.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t AutomationJSON.promptLookupDraftSteps.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

uint64_t AutomationJSON.schema.getter()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return v1;
}

uint64_t AutomationJSON.grammar.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return v1;
}

uint64_t AutomationJSON.schemaIdentifier.getter()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return v1;
}

uint64_t AutomationJSON.grammarIdentifier.getter()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return v1;
}

uint64_t AutomationJSON.iterationCount.getter()
{
  result = *(v0 + 336);
  v2 = *(v0 + 344);
  return result;
}

uint64_t AutomationJSON.promptDelay.getter()
{
  result = *(v0 + 352);
  v2 = *(v0 + 360);
  return result;
}

void AutomationJSON.samplingStrategyConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 392);
  *(a1 + 8) = v2;
}

BOOL static AutomationJSON.SamplingStrategyConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    v5 = *a1;
    v6 = *a2;
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (v4 != 2 || *&v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys()
{
  v1 = 0x7375656C63756ELL;
  if (*v0 != 1)
  {
    v1 = 0x78616D677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802530676;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AutomationJSON.SamplingStrategyConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.SamplingStrategyConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v25 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v25 = *(v10 - 8);
  v26 = v10;
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v32 = *v2;
  v19 = *(v2 + 8);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v33 = 0;
    lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v26;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v25 + 8))(v13, v22);
    return (*(v15 + 8))(v18, v14);
  }

  if (v19 == 1)
  {
    v34 = 1;
    lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v29;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v27 + 8))(v9, v21);
    return (*(v15 + 8))(v18, v14);
  }

  v35 = 2;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();
  v24 = v28;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v30 + 8))(v24, v31);
  return (*(v15 + 8))(v18, v14);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.SamplingStrategyConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v41[-v5];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v48 = *(v44 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v41[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41[-v16];
  v18 = a1[3];
  v19 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();
  v20 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  v43 = 0;
  v51 = v14;
  v21 = v49;
  v22 = v50;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = (2 * *(v23 + 16)) | 1;
  v54 = v23;
  v55 = v23 + 32;
  v56 = 0;
  v57 = v24;
  v25 = specialized Collection<>.popFirst()();
  if (v25 == 3 || v56 != v57 >> 1)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v30 = &type metadata for AutomationJSON.SamplingStrategyConfiguration;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v51 + 8))(v17, v13);
    goto LABEL_9;
  }

  v42 = v25;
  if (v25)
  {
    if (v25 == 1)
    {
      v53 = 1;
      lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();
      v26 = v43;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v51;
      if (v26)
      {
        (*(v51 + 8))(v17, v13);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v52);
      }

      v36 = v44;
      KeyedDecodingContainer.decode(_:forKey:)();
      v39 = v38;
      (*(v48 + 8))(v8, v36);
      (*(v27 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v40 = v39;
      goto LABEL_18;
    }

    v53 = 2;
    lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();
    v34 = v43;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v51;
    if (!v34)
    {
      (*(v46 + 8))(v21, v47);
      (*(v35 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v40 = 0;
LABEL_18:
      v37 = v22;
      goto LABEL_19;
    }

LABEL_12:
    (*(v51 + 8))(v17, v13);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  v53 = 0;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();
  v33 = v43;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v33)
  {
    goto LABEL_12;
  }

  v37 = v22;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v45 + 8))(v12, v9);
  (*(v51 + 8))(v17, v13);
  swift_unknownObjectRelease();
LABEL_19:
  *v37 = v40;
  *(v37 + 8) = v42;
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutomationJSON.SamplingStrategyConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 == *&v2;
  }

  v5 = v4;
  v6 = *a2;
  v7 = *a1 == v2;
  if (v3 != 1)
  {
    v7 = 0;
  }

  v9 = v3 == 2 && *&v2 == 0;
  if (*(a1 + 8) != 1)
  {
    v7 = v9;
  }

  if (*(a1 + 8))
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

uint64_t AutomationJSON.useCaseIdentifier.getter()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return v1;
}

uint64_t AutomationJSON.inputSafetyConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  v3 = *(v1 + 432);
  v4 = *(v1 + 440);
  v5 = *(v1 + 448);
  v6 = *(v1 + 456);
  v7 = *(v1 + 464);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 472);
  return outlined copy of AutomationJSON.InputSafetyConfiguration?(v2, v3);
}

uint64_t outlined copy of AutomationJSON.InputSafetyConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t AutomationJSON.outputSafetyConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 480);
  v3 = *(v1 + 488);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 496);
  return outlined copy of AutomationJSON.OutputSafetyConfiguration?(v2, v3);
}

uint64_t outlined copy of AutomationJSON.OutputSafetyConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

TokenGenerationCore::AutomationJSON::InputSafetyConfiguration::Guardrails __swiftcall AutomationJSON.InputSafetyConfiguration.Guardrails.init(ovs:textSanitization:)(Swift::Bool ovs, Swift::Bool textSanitization)
{
  *v2 = ovs;
  v2[1] = textSanitization;
  result.ovs = ovs;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.init(language:topK:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys()
{
  if (*v0)
  {
    result = 1265659764;
  }

  else
  {
    result = 0x65676175676E616CLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
  lazy protocol witness table accessor for type [Locale.LanguageCode] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Locale.LanguageCode] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode, MEMORY[0x1E6969610]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode, MEMORY[0x1E6969610]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A]);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
  v14[15] = 0;
  lazy protocol witness table accessor for type [Locale.LanguageCode] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15;
  v14[14] = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.init(script:isEmojiAllowed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys()
{
  if (*v0)
  {
    result = 0x41696A6F6D457369;
  }

  else
  {
    result = 0x747069726373;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747069726373 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x41696A6F6D457369 && a2 == 0xEE006465776F6C6CLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[2] = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
  lazy protocol witness table accessor for type [Locale] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Locale] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Locale] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Locale] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale] and conformance <A> [A]);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
  v14[15] = 0;
  lazy protocol witness table accessor for type [Locale] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15;
  v14[14] = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AutomationJSON.InputSafetyConfiguration.denyListIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutomationJSON.InputSafetyConfiguration.languageScriptValidator.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys()
{
  v1 = 0x6961726472617567;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AutomationJSON.InputSafetyConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v26 = *(v1 + 8);
  v10 = v1[3];
  v21 = v1[4];
  v22 = v10;
  v20 = v1[5];
  v19 = *(v1 + 48);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  v12 = v23;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v12)
  {
    v14 = v21;
    v13 = v22;
    v15 = v19;
    v16 = v20;
    LOWORD(v24) = v26;
    v27 = 1;
    lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = v13;
    v25 = v14;
    v27 = 2;
    lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v24 = v16;
    LOBYTE(v25) = v15;
    v27 = 3;
    lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v21) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v20 = v11;
  v24 = 1;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v21;
  v24 = 2;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v14;
  v16 = v22;
  v19 = v21;
  v24 = 3;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v21;
  v18 = v22;
  *a2 = v20;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7566959 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD9850 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.Guardrails.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = *v4;
  v16 = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v15[0])();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v13 = v15[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.Guardrails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v14 = v18;
    v13 = v19;
    v21 = 0;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = 1;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v14 + 8))(v11, v8);
    *v13 = v15 & 1;
    v13[1] = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.OutputSafetyConfiguration.denyListIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys()
{
  if (*v0)
  {
    result = 0x6961726472617567;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A8FD9870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6961726472617567 && a2 == 0xEA0000000000736CLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.OutputSafetyConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v15 = v14;
    v16 = 1;
    lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails);
  }

  return result;
}

uint64_t AutomationJSON.OutputSafetyConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v19 = 1;
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v18;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.decoder.getter()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);

  return v1;
}

uint64_t AutomationJSON.decoderConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 632);
  v3 = *(v1 + 600);
  v20 = *(v1 + 616);
  v21 = v2;
  v4 = *(v1 + 632);
  v22 = *(v1 + 648);
  v5 = *(v1 + 568);
  v7 = *(v1 + 536);
  v16 = *(v1 + 552);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 568);
  v9 = *(v1 + 600);
  v18 = *(v1 + 584);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 536);
  v15[0] = *(v1 + 520);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 648);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 664);
  *(a1 + 144) = *(v1 + 664);
  *a1 = v12;
  *(a1 + 16) = v7;
  return outlined init with copy of (String, Any)(v15, v14, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
}

__n128 AutomationJSON.decoderConfig.setter(uint64_t a1)
{
  v13 = *(v1 + 664);
  v3 = *(v1 + 632);
  v12[6] = *(v1 + 616);
  v12[7] = v3;
  v12[8] = *(v1 + 648);
  v4 = *(v1 + 568);
  v12[2] = *(v1 + 552);
  v12[3] = v4;
  v5 = *(v1 + 600);
  v12[4] = *(v1 + 584);
  v12[5] = v5;
  v6 = *(v1 + 536);
  v12[0] = *(v1 + 520);
  v12[1] = v6;
  outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
  v7 = *(a1 + 112);
  *(v1 + 616) = *(a1 + 96);
  *(v1 + 632) = v7;
  *(v1 + 648) = *(a1 + 128);
  *(v1 + 664) = *(a1 + 144);
  v8 = *(a1 + 48);
  *(v1 + 552) = *(a1 + 32);
  *(v1 + 568) = v8;
  v9 = *(a1 + 80);
  *(v1 + 584) = *(a1 + 64);
  *(v1 + 600) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 520) = *a1;
  *(v1 + 536) = v11;
  return result;
}

TokenGenerationCore::AutomationJSON::Role_optional __swiftcall AutomationJSON.Role.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutomationJSON.Role.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t AutomationJSON.Role.rawValue.getter()
{
  v1 = 1919251317;
  if (*v0 != 1)
  {
    v1 = 0x6E61747369737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6574737973;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutomationJSON.Role(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1919251317;
  if (v2 != 1)
  {
    v4 = 0x6E61747369737361;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D6574737973;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1919251317;
  if (*a2 != 1)
  {
    v8 = 0x6E61747369737361;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6574737973;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AutomationJSON.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AutomationJSON.Role()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutomationJSON.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutomationJSON.Role(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1919251317;
  if (v2 != 1)
  {
    v5 = 0x6E61747369737361;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574737973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AutomationJSON.Turn.content.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.Turn.CodingKeys()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 1701605234;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.Turn.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.Turn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.Turn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.Turn.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type AutomationJSON.Role and conformance AutomationJSON.Role();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Role and conformance AutomationJSON.Role()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

uint64_t AutomationJSON.Turn.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type AutomationJSON.Role and conformance AutomationJSON.Role();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.Response.content.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.Response.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AutomationJSON.Response(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AutomationJSON.DecoderConfig.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6E75427466617264;
    v6 = 0x646E7542796E6974;
    v7 = 0x657A696E656B6F74;
    if (a1 != 3)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0x6164417466617264;
    if (a1 != 9)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000012;
    v3 = 0x6574537466617264;
    if (a1 != 6)
    {
      v3 = 0x6572547466617264;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.DecoderConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AutomationJSON.DecoderConfig.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.DecoderConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.DecoderConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.DecoderConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v35 = v1[3];
  v36 = v10;
  v11 = v1[4];
  v33 = v1[5];
  v34 = v11;
  v12 = v1[6];
  v31 = v1[7];
  v32 = v12;
  v13 = v1[8];
  v29 = v1[9];
  v30 = v13;
  v14 = v1[11];
  v27 = v1[10];
  v28 = v14;
  v25 = v1[12];
  v26 = *(v1 + 104);
  v23 = v1[14];
  v24 = *(v1 + 120);
  v21 = v1[16];
  v22 = *(v1 + 136);
  v20 = *(v1 + 137);
  v19 = *(v1 + 35);
  HIDWORD(v18) = *(v1 + 144);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v49 = 0;
  v16 = v37;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v48 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v47 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v43 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = 10;
    v38 = BYTE4(v18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.DecoderConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v33 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v61[0]) = 0;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v11;
  LOBYTE(v61[0]) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v13;
  v42 = v12;
  LOBYTE(v61[0]) = 2;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v14;
  LOBYTE(v61[0]) = 3;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v15;
  LOBYTE(v61[0]) = 4;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v16;
  LOBYTE(v61[0]) = 5;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v17;
  LOBYTE(v61[0]) = 6;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = v19 & 1;
  LOBYTE(v61[0]) = 7;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v20 & 1;
  LOBYTE(v61[0]) = 8;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v21 & 1;
  LOBYTE(v61[0]) = 9;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = 10;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v10 + 8))(v8, v50);
  v70 = BYTE4(v23) & 1;
  *&v51 = v47;
  *(&v51 + 1) = v49;
  *&v52 = v42;
  *(&v52 + 1) = v48;
  *&v53 = v41;
  *(&v53 + 1) = v46;
  *&v54 = v40;
  *(&v54 + 1) = v45;
  *&v55 = v39;
  *(&v55 + 1) = v44;
  *&v56 = v38;
  *(&v56 + 1) = v43;
  v35 = v18;
  *&v57 = v18;
  LODWORD(v50) = v73;
  BYTE8(v57) = v73;
  v24 = v36;
  *&v58 = v37;
  v34 = v72;
  BYTE8(v58) = v72;
  *&v59 = v36;
  LOBYTE(v18) = v71;
  BYTE8(v59) = v71;
  BYTE9(v59) = v22;
  HIDWORD(v59) = v23;
  v60 = BYTE4(v23) & 1;
  v26 = v57;
  v25 = v58;
  v27 = v59;
  *(a2 + 144) = BYTE4(v23) & 1;
  *(a2 + 112) = v25;
  *(a2 + 128) = v27;
  v28 = v52;
  *a2 = v51;
  *(a2 + 16) = v28;
  v29 = v53;
  v30 = v54;
  v31 = v55;
  *(a2 + 80) = v56;
  *(a2 + 96) = v26;
  *(a2 + 48) = v30;
  *(a2 + 64) = v31;
  *(a2 + 32) = v29;
  outlined init with copy of AutomationJSON.DecoderConfig(&v51, v61);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v61[0] = v47;
  v61[1] = v49;
  v61[2] = v42;
  v61[3] = v48;
  v61[4] = v41;
  v61[5] = v46;
  v61[6] = v40;
  v61[7] = v45;
  v61[8] = v39;
  v61[9] = v44;
  v61[10] = v38;
  v61[11] = v43;
  v61[12] = v35;
  v62 = v50;
  v63 = v37;
  v64 = v34;
  v65 = v24;
  v66 = v18;
  v67 = v22;
  v68 = v23;
  v69 = BYTE4(v23) & 1;
  return outlined destroy of AutomationJSON.DecoderConfig(v61);
}

uint64_t AutomationJSON.ParameterizedPrompt.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.locale.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void AutomationJSON.ParameterizedPrompt.samplingStrategyConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t AutomationJSON.ParameterizedPrompt.temperature.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.frequencyPenalty.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.lengthPenalty.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.stopSequence.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.maxTokens.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.randomSeed.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.promptLookupDraftSteps.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.schema.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.grammar.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.schemaIdentifier.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.grammarIdentifier.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.dynamicPartsOfGrammars.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.timeout.getter()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.inputSafetyConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 296);
  v4 = *(v1 + 304);
  v5 = *(v1 + 312);
  v6 = *(v1 + 320);
  v7 = *(v1 + 328);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 336);
  return outlined copy of AutomationJSON.InputSafetyConfiguration?(v2, v3);
}

uint64_t AutomationJSON.ParameterizedPrompt.outputSafetyConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 344);
  v3 = *(v1 + 352);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 360);
  return outlined copy of AutomationJSON.OutputSafetyConfiguration?(v2, v3);
}

uint64_t AutomationJSON.ParameterizedPrompt.priorInferenceOutput.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.userData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 400);
  *(a1 + 16) = v4;
  return outlined copy of JSON?(v2, v3, v4);
}

uint64_t outlined copy of JSON?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of JSON(a1, a2, a3);
  }

  return a1;
}

uint64_t AutomationJSON.ParameterizedPrompt.output.getter()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.output.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 416);

  *(v2 + 408) = a1;
  *(v2 + 416) = a2;
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.renderedPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = *(v1 + 504);
  v2 = *(v1 + 456);
  v4 = *(v1 + 488);
  v10 = *(v1 + 472);
  v3 = v10;
  v11 = v4;
  v6 = *(v1 + 440);
  v9[0] = *(v1 + 424);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of (String, Any)(v9, v8, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
}

__n128 AutomationJSON.ParameterizedPrompt.renderedPrompt.setter(uint64_t a1)
{
  v9 = *(v1 + 504);
  v3 = *(v1 + 472);
  v8[2] = *(v1 + 456);
  v8[3] = v3;
  v8[4] = *(v1 + 488);
  v4 = *(v1 + 440);
  v8[0] = *(v1 + 424);
  v8[1] = v4;
  outlined destroy of [Regex2BNF.CharacterPredicate](v8, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  v5 = *(a1 + 48);
  *(v1 + 456) = *(a1 + 32);
  *(v1 + 472) = v5;
  *(v1 + 488) = *(a1 + 64);
  *(v1 + 504) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 424) = *a1;
  *(v1 + 440) = v7;
  return result;
}

__n128 AutomationJSON.ParameterizedPrompt.init(prompt:inputPromptType:locale:inputVariableBindings:inputImageVariableBindings:inputRichVariableBindings:samplingStrategyConfiguration:temperature:frequencyPenalty:lengthPenalty:stopSequence:maxTokens:randomSeed:promptLookupDraftSteps:speculativeSampling:tokenHealing:speculativeDecoding:schema:grammar:schemaIdentifier:grammarIdentifier:dynamicPartsOfGrammars:timeout:useHighQualityImageTokenization:inputSafetyConfiguration:outputSafetyConfiguration:output:renderedPrompt:userData:priorInferenceOutput:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, char a24, __int16 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, uint64_t a31, char a32, char a33, __int128 *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t *a39, uint64_t a40, uint64_t a41)
{
  *a9 = a1;
  v42 = *a3;
  *(a9 + 8) = a2;
  *(a9 + 16) = v42;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v43 = *a10;
  *(a9 + 56) = a8;
  *(a9 + 64) = v43;
  *(a9 + 72) = *(a10 + 8);
  *(a9 + 80) = a11;
  *(a9 + 88) = a12 & 1;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14 & 1;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16 & 1;
  *(a9 + 144) = a18;
  *(a9 + 152) = a19 & 1;
  *(a9 + 160) = a20;
  *(a9 + 168) = a21 & 1;
  *(a9 + 176) = a22;
  *(a9 + 184) = a23 & 1;
  *(a9 + 185) = a24;
  *(a9 + 186) = a25;
  *(a9 + 272) = a31;
  *(a9 + 280) = a32 & 1;
  *(a9 + 281) = a33;
  *(a9 + 344) = *a35;
  LOBYTE(v43) = *(a34 + 48);
  *(a9 + 128) = a17;
  v44 = *a34;
  v45 = a34[1];
  v46 = a34[2];
  *(a9 + 336) = v43;
  *(a9 + 360) = *(a35 + 16);
  *(a9 + 408) = a36;
  *(a9 + 416) = a37;
  v47 = *a39;
  v48 = a39[1];
  v49 = *(a39 + 16);
  *(a9 + 504) = 0;
  *(a9 + 192) = a26;
  *(a9 + 208) = a27;
  *(a9 + 424) = 0u;
  *(a9 + 440) = 0u;
  *(a9 + 456) = 0u;
  *(a9 + 472) = 0u;
  *(a9 + 488) = 0u;
  *(a9 + 224) = a28;
  *(a9 + 240) = a29;
  *(a9 + 256) = a30;
  *(a9 + 288) = v44;
  *(a9 + 304) = v45;
  *(a9 + 320) = v46;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  outlined destroy of [Regex2BNF.CharacterPredicate](v53, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  v50 = *(a38 + 48);
  *(a9 + 456) = *(a38 + 32);
  *(a9 + 472) = v50;
  *(a9 + 488) = *(a38 + 64);
  *(a9 + 504) = *(a38 + 80);
  result = *a38;
  v52 = *(a38 + 16);
  *(a9 + 424) = *a38;
  *(a9 + 440) = v52;
  *(a9 + 384) = v47;
  *(a9 + 392) = v48;
  *(a9 + 400) = v49;
  *(a9 + 368) = a40;
  *(a9 + 376) = a41;
  return result;
}

unint64_t AutomationJSON.ParameterizedPrompt.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      return 0x6F72507475706E69;
    case 2:
      return 0x656C61636F6CLL;
    case 3:
      v3 = 5;
      goto LABEL_19;
    case 4:
      v3 = 10;
      goto LABEL_19;
    case 5:
    case 25:
      v3 = 9;
      goto LABEL_19;
    case 6:
      v3 = 13;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    case 7:
      result = 0x74617265706D6574;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x65506874676E656CLL;
      break;
    case 10:
      result = 0x75716553706F7473;
      break;
    case 11:
      result = 0x6E656B6F5478616DLL;
      break;
    case 12:
      result = 0x65536D6F646E6172;
      break;
    case 13:
    case 21:
      result = 0xD000000000000016;
      break;
    case 14:
    case 16:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6165486E656B6F74;
      break;
    case 17:
      result = 0x616D65686373;
      break;
    case 18:
      result = 0x72616D6D617267;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x74756F656D6974;
      break;
    case 23:
      result = 0xD00000000000001FLL;
      break;
    case 24:
      result = 0xD000000000000018;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0x6174614472657375;
      break;
    case 28:
      result = 0x74757074756FLL;
      break;
    case 29:
      result = 0x64657265646E6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.ParameterizedPrompt.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AutomationJSON.ParameterizedPrompt.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.ParameterizedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.ParameterizedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.ParameterizedPrompt.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v83 = *(v3 - 8);
  v4 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v39 - v5;
  v7 = *v1;
  v81 = v1[1];
  v82 = v7;
  v99 = *(v1 + 16);
  v8 = v1[3];
  v79 = v1[4];
  v80 = v8;
  v9 = v1[5];
  v77 = v1[6];
  v78 = v9;
  v10 = v1[8];
  v76 = v1[7];
  v74 = v10;
  v75 = *(v1 + 72);
  v72 = v1[10];
  v73 = *(v1 + 88);
  v70 = v1[12];
  v71 = *(v1 + 104);
  v11 = v1[14];
  v69 = *(v1 + 120);
  v12 = v1[17];
  v66 = v1[16];
  v67 = v12;
  v68 = v11;
  v64 = v1[18];
  v65 = *(v1 + 152);
  v62 = v1[20];
  v63 = *(v1 + 168);
  v60 = v1[22];
  v61 = *(v1 + 184);
  LODWORD(v11) = *(v1 + 185);
  v58 = *(v1 + 186);
  v59 = v11;
  v57 = *(v1 + 187);
  v13 = v1[24];
  v14 = v1[25];
  v98 = v1[63];
  v15 = *(v1 + 59);
  v95 = *(v1 + 57);
  v96 = v15;
  v97 = *(v1 + 61);
  v16 = *(v1 + 53);
  v17 = *(v1 + 55);
  v18 = v1[27];
  v39[2] = v1[26];
  v39[3] = v13;
  v39[1] = v18;
  v19 = v1[29];
  v39[5] = v1[28];
  v39[6] = v14;
  v39[4] = v19;
  v20 = v1[30];
  v39[7] = v1[31];
  v39[8] = v20;
  v21 = v1[32];
  v39[9] = v1[33];
  v39[10] = v21;
  v41 = v1[34];
  v40 = *(v1 + 280);
  LODWORD(v21) = *(v1 + 281);
  v22 = v1[36];
  v48 = v1[37];
  v49 = v22;
  v23 = v1[38];
  v46 = v1[39];
  v47 = v23;
  v24 = v1[40];
  v44 = v1[41];
  v45 = v24;
  LODWORD(v19) = *(v1 + 336);
  v42 = v21;
  v43 = v19;
  v25 = v1[43];
  v51 = v1[44];
  v52 = v25;
  v50 = *(v1 + 180);
  v26 = v1[46];
  v53 = v1[47];
  v54 = v26;
  v27 = v1[48];
  v55 = v1[49];
  v56 = v27;
  v28 = *(v1 + 400);
  v30 = v1[51];
  v29 = v1[52];
  v93 = v16;
  v94 = v17;
  v31 = a1[3];
  v32 = a1[4];
  v33 = a1;
  v35 = v34;
  __swift_project_boxed_opaque_existential_1(v33, v31);
  lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v87) = 0;
  v36 = v84;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v36)
  {
    return (*(v83 + 8))(v6, v35);
  }

  LODWORD(v82) = v28;
  v84 = v29;
  v81 = v30;
  v38 = v83;
  LOBYTE(v87) = v99;
  LOBYTE(v85[0]) = 1;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v87) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v87 = v78;
  LOBYTE(v85[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v87 = v77;
  LOBYTE(v85[0]) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v87 = v76;
  LOBYTE(v85[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMd, &_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMR);
  lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v87 = v74;
  BYTE8(v87) = v75;
  LOBYTE(v85[0]) = 6;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v87) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 15;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 16;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 17;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 18;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 19;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 21;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 22;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v87) = 23;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v87 = v49;
  *(&v87 + 1) = v48;
  *&v88 = v47;
  *(&v88 + 1) = v46;
  *&v89 = v45;
  *(&v89 + 1) = v44;
  LOBYTE(v90) = v43;
  LOBYTE(v85[0]) = 24;
  outlined copy of AutomationJSON.InputSafetyConfiguration?(v49, v48);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of AutomationJSON.InputSafetyConfiguration?(v87, *(&v87 + 1));
  *&v87 = v52;
  *(&v87 + 1) = v51;
  LOWORD(v88) = v50;
  LOBYTE(v85[0]) = 25;
  outlined copy of AutomationJSON.OutputSafetyConfiguration?(v52, v51);
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of AutomationJSON.OutputSafetyConfiguration?(v87, *(&v87 + 1));
  LOBYTE(v87) = 26;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v87 = v56;
  *(&v87 + 1) = v55;
  LOBYTE(v88) = v82;
  LOBYTE(v85[0]) = 27;
  outlined copy of JSON?(v56, v55, v82);
  lazy protocol witness table accessor for type JSON and conformance JSON();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of JSON?(v87, *(&v87 + 1), v88);
  LOBYTE(v87) = 28;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v89 = v95;
  v90 = v96;
  v91 = v97;
  v92 = v98;
  v87 = v93;
  v88 = v94;
  v100 = 29;
  outlined init with copy of (String, Any)(&v93, v85, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v85[2] = v89;
  v85[3] = v90;
  v85[4] = v91;
  v86 = v92;
  v85[0] = v87;
  v85[1] = v88;
  outlined destroy of [Regex2BNF.CharacterPredicate](v85, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  return (*(v38 + 8))(0, v35);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMd, &_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMR);
    lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMd, &_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMR);
    lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration);
  }

  return result;
}

uint64_t outlined consume of AutomationJSON.InputSafetyConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration);
  }

  return result;
}

uint64_t outlined consume of AutomationJSON.OutputSafetyConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSON and conformance JSON()
{
  result = lazy protocol witness table cache variable for type JSON and conformance JSON;
  if (!lazy protocol witness table cache variable for type JSON and conformance JSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON and conformance JSON);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON and conformance JSON;
  if (!lazy protocol witness table cache variable for type JSON and conformance JSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON and conformance JSON);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON and conformance JSON;
  if (!lazy protocol witness table cache variable for type JSON and conformance JSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON and conformance JSON);
  }

  return result;
}

uint64_t outlined consume of JSON?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of JSON(a1, a2, a3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt);
  }

  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v208 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v208);
LABEL_4:

    v110 = 0;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    return outlined destroy of [Regex2BNF.CharacterPredicate](&v105, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  }

  v12 = v6;
  v101 = a2;
  LOBYTE(v105) = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v100 = v15;
  LOBYTE(v104[0]) = 1;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v105;
  LOBYTE(v105) = 2;
  v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v96 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v104[0]) = 3;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v95 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  LOBYTE(v104[0]) = 4;
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMd, &_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMR);
  LOBYTE(v104[0]) = 5;
  lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v93 = v105;
  LOBYTE(v104[0]) = 6;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v105;
  v98 = BYTE8(v105);
  LOBYTE(v105) = 7;
  v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v97 = v18;
  v205 = v19 & 1;
  LOBYTE(v105) = 8;
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = v20 & 1;
  LOBYTE(v105) = 9;
  v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v201 = v21 & 1;
  LOBYTE(v105) = 10;
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v92 = v22;
  LOBYTE(v105) = 11;
  v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v199 = v23 & 1;
  LOBYTE(v105) = 12;
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v197 = v24 & 1;
  LOBYTE(v105) = 13;
  v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v195 = v25 & 1;
  LOBYTE(v105) = 14;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v105) = 15;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v105) = 16;
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v105) = 17;
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v91 = v26;
  LOBYTE(v105) = 18;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v90 = v27;
  LOBYTE(v105) = 19;
  v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v84 = v28;
  LOBYTE(v105) = 20;
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v85 = v29;
  LOBYTE(v105) = 21;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = v30;
  LOBYTE(v105) = 22;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v194 = v31 & 1;
  LOBYTE(v105) = 23;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v104[0]) = 24;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v89 = v105;
  v86 = *(&v106 + 1);
  v88 = v106;
  v82 = *(&v107 + 1);
  v83 = v107;
  v81 = v108;
  LOBYTE(v104[0]) = 25;
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = v105;
  v62 = v106;
  LOBYTE(v105) = 26;
  *&v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v60 + 1) = v32;
  v63 = 0;
  LOBYTE(v104[0]) = 27;
  lazy protocol witness table accessor for type JSON and conformance JSON();
  v33 = v63;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v33)
  {
    (*(v12 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v208);

    outlined consume of AutomationJSON.InputSafetyConfiguration?(v89, *(&v89 + 1));
    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v61, *(&v61 + 1));
    if (!v63)
    {
    }

    goto LABEL_4;
  }

  v58 = *(&v105 + 1);
  v59 = v105;
  v57 = v106;
  LOBYTE(v105) = 28;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v34;
  v176 = 29;
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v12 + 8))(v9, v5);
  v63 = v177;
  v54 = v179;
  v55 = v178;
  v52 = v181;
  v53 = v180;
  v50 = v183;
  v51 = v182;
  v48 = v185;
  v49 = v184;
  v46 = v187;
  v47 = v186;
  memset(v102, 0, sizeof(v102));
  v103 = 0;
  outlined destroy of [Regex2BNF.CharacterPredicate](v102, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  *&v104[0] = v14;
  *(&v104[0] + 1) = v100;
  LOBYTE(v104[1]) = v16;
  *(&v104[1] + 1) = v207[0];
  DWORD1(v104[1]) = *(v207 + 3);
  *(&v104[1] + 1) = v99;
  *&v104[2] = v96;
  *(&v104[2] + 1) = v95;
  *&v104[3] = v94;
  *(&v104[3] + 1) = v93;
  *&v104[4] = v97;
  BYTE8(v104[4]) = v98;
  *(&v104[4] + 9) = *v206;
  HIDWORD(v104[4]) = *&v206[3];
  *&v104[5] = v80;
  v45 = v205;
  BYTE8(v104[5]) = v205;
  *(&v104[5] + 9) = *v204;
  HIDWORD(v104[5]) = *&v204[3];
  *&v104[6] = v79;
  v44 = v203;
  BYTE8(v104[6]) = v203;
  *(&v104[6] + 9) = *v202;
  HIDWORD(v104[6]) = *&v202[3];
  *&v104[7] = v78;
  v43 = v201;
  BYTE8(v104[7]) = v201;
  HIDWORD(v104[7]) = *&v200[3];
  *(&v104[7] + 9) = *v200;
  *&v104[8] = v77;
  *(&v104[8] + 1) = v92;
  *&v104[9] = v76;
  v42 = v199;
  BYTE8(v104[9]) = v199;
  HIDWORD(v104[9]) = *&v198[3];
  *(&v104[9] + 9) = *v198;
  *&v104[10] = v75;
  *(&v104[10] + 9) = *v196;
  *(&v104[17] + 10) = v192;
  *(&v104[21] + 1) = *v191;
  *(&v104[22] + 10) = v189;
  v41 = v197;
  BYTE8(v104[10]) = v197;
  HIDWORD(v104[10]) = *&v196[3];
  *&v104[11] = v74;
  *(&v104[25] + 1) = *v188;
  v40 = v195;
  BYTE8(v104[11]) = v195;
  BYTE9(v104[11]) = v73;
  BYTE10(v104[11]) = v72;
  BYTE11(v104[11]) = v71;
  *&v104[12] = v70;
  *(&v104[12] + 1) = v91;
  *&v104[13] = v69;
  *(&v104[13] + 1) = v90;
  *&v104[14] = v68;
  *(&v104[14] + 1) = v84;
  *&v104[15] = v67;
  *(&v104[15] + 1) = v85;
  *&v104[16] = v66;
  v36 = v87;
  *(&v104[16] + 1) = v87;
  *&v104[17] = v65;
  HIWORD(v104[17]) = v193;
  DWORD1(v104[21]) = *&v191[3];
  HIWORD(v104[22]) = v190;
  DWORD1(v104[25]) = *&v188[3];
  v37 = v194;
  BYTE8(v104[17]) = v194;
  v38 = v64;
  BYTE9(v104[17]) = v64;
  v104[18] = v89;
  *&v104[19] = v88;
  *(&v104[19] + 1) = v86;
  *&v104[20] = v83;
  *(&v104[20] + 1) = v82;
  LOBYTE(v104[21]) = v81;
  *(&v104[21] + 8) = v61;
  WORD4(v104[22]) = v62;
  v104[23] = v60;
  *&v104[24] = v59;
  *(&v104[24] + 1) = v58;
  LOBYTE(v104[25]) = v57;
  *(&v104[25] + 1) = v56;
  *&v104[26] = v35;
  *(&v104[26] + 1) = v63;
  *&v104[27] = v55;
  *(&v104[27] + 1) = v54;
  *&v104[28] = v53;
  *(&v104[28] + 1) = v52;
  *&v104[29] = v51;
  *(&v104[29] + 1) = v50;
  *&v104[30] = v49;
  *(&v104[30] + 1) = v48;
  *&v104[31] = v47;
  *(&v104[31] + 1) = v46;
  memcpy(v101, v104, 0x200uLL);
  outlined init with copy of AutomationJSON.ParameterizedPrompt(v104, &v105);
  __swift_destroy_boxed_opaque_existential_0(v208);
  *&v105 = v14;
  *(&v105 + 1) = v100;
  LOBYTE(v106) = v16;
  *(&v106 + 1) = v99;
  *&v107 = v96;
  *(&v107 + 1) = v95;
  *&v108 = v94;
  *(&v108 + 1) = v93;
  *&v109 = v97;
  BYTE8(v109) = v98;
  v110 = v80;
  v111 = v45;
  v113 = v79;
  v114 = v44;
  v116 = v78;
  v117 = v43;
  v119 = v77;
  v120 = v92;
  v121 = v76;
  v122 = v42;
  v124 = v75;
  v125 = v41;
  v127 = v74;
  v128 = v40;
  v129 = v73;
  v130 = v72;
  v131 = v71;
  v132 = v70;
  v133 = v91;
  v134 = v69;
  v135 = v90;
  v136 = v68;
  v137 = v84;
  v138 = v67;
  v139 = v85;
  v140 = v66;
  v141 = v36;
  v142 = v65;
  v143 = v37;
  v144 = v38;
  *(&v106 + 1) = v207[0];
  *(&v109 + 9) = *v206;
  *v112 = *v204;
  *v115 = *v202;
  *v118 = *v200;
  *&v123[3] = *&v198[3];
  *v123 = *v198;
  *&v126[3] = *&v196[3];
  *v126 = *v196;
  v145 = v192;
  DWORD1(v106) = *(v207 + 3);
  HIDWORD(v109) = *&v206[3];
  *&v112[3] = *&v204[3];
  *&v115[3] = *&v202[3];
  *&v118[3] = *&v200[3];
  v146 = v193;
  v147 = v89;
  v148 = v88;
  v149 = v86;
  v150 = v83;
  v151 = v82;
  v152 = v81;
  *v153 = *v191;
  *&v153[3] = *&v191[3];
  v154 = v61;
  v155 = v62;
  v156 = v189;
  v157 = v190;
  v158 = v60;
  v159 = v59;
  v160 = v58;
  v161 = v57;
  *v162 = *v188;
  *&v162[3] = *&v188[3];
  v163 = v56;
  v164 = v35;
  v165 = v63;
  v166 = v55;
  v167 = v54;
  v168 = v53;
  v169 = v52;
  v170 = v51;
  v171 = v50;
  v172 = v49;
  v173 = v48;
  v174 = v47;
  v175 = v46;
  return outlined destroy of AutomationJSON.ParameterizedPrompt(&v105);
}

uint64_t AutomationJSON.parameterizedPrompts.setter(uint64_t a1)
{
  v3 = *(v1 + 672);

  *(v1 + 672) = a1;
  return result;
}

double AutomationJSON.init(input:mode:modelBundleId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = (a6 + 520);
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  _s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgWOi0_(&v31);
  v13 = v37;
  v14 = v38;
  v15 = v38;
  v12[6] = v37;
  v12[7] = v14;
  v16 = v39;
  v12[8] = v39;
  v17 = v33;
  v18 = v34;
  v19 = v34;
  v12[2] = v33;
  v12[3] = v18;
  v20 = v35;
  v21 = v36;
  v22 = v36;
  v12[4] = v35;
  v12[5] = v21;
  v23 = v31;
  v24 = v32;
  v25 = v32;
  *v12 = v31;
  v12[1] = v24;
  v41[6] = v13;
  v41[7] = v15;
  v41[8] = v16;
  v41[2] = v17;
  v41[3] = v19;
  v41[4] = v20;
  v41[5] = v22;
  *(a6 + 664) = v40;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  *(a6 + 48) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0;
  *(a6 + 72) = 1;
  *(a6 + 392) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 400) = -1;
  *(a6 + 192) = 0;
  *(a6 + 200) = 1;
  *(a6 + 208) = 0;
  *(a6 + 216) = 1;
  *(a6 + 248) = 0;
  *(a6 + 224) = 0;
  *(a6 + 232) = 0;
  *(a6 + 240) = 0;
  *(a6 + 256) = 1;
  *(a6 + 504) = 0;
  *(a6 + 512) = 0;
  v42 = v40;
  v41[0] = v23;
  v41[1] = v25;
  outlined destroy of [Regex2BNF.CharacterPredicate](v41, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
  v26 = v38;
  v12[6] = v37;
  v12[7] = v26;
  v12[8] = v39;
  *(a6 + 664) = v40;
  v27 = v34;
  v12[2] = v33;
  v12[3] = v27;
  v28 = v36;
  v12[4] = v35;
  v12[5] = v28;
  v29 = v32;
  *v12 = v31;
  v12[1] = v29;
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 120) = 3;
  *(a6 + 128) = 0;
  *(a6 + 136) = 0;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  *(a6 + 344) = 0;
  *(a6 + 352) = 0;
  *(a6 + 360) = 0;
  *(a6 + 257) = 514;
  *(a6 + 260) = 2;
  *(a6 + 264) = 0u;
  *(a6 + 280) = 0u;
  *(a6 + 296) = 0u;
  *(a6 + 312) = 0u;
  *(a6 + 328) = 0;
  *(a6 + 336) = 1;
  *(a6 + 408) = 0x6974616D6F747561;
  *(a6 + 416) = xmmword_1A8FCD7F0;
  *(a6 + 432) = 1;
  *(a6 + 440) = 0u;
  *(a6 + 456) = 0u;
  *(a6 + 472) = 0;
  result = 0.0;
  *(a6 + 480) = xmmword_1A8FC9770;
  *(a6 + 496) = 0;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 368) = 0;
  *(a6 + 376) = 0;
  *(a6 + 384) = -1;
  *(a6 + 672) = 0;
  *(a6 + 96) = a1;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  *(a6 + 259) = 2;
  return result;
}

double _s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void *static AutomationJSON.Parse(filePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v27[1] = a1;
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v27 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 56))(v10, 1, 1, v11, v14);
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v2);

  URL.init(filePath:directoryHint:relativeTo:)();
  v17 = v29;
  v18 = Data.init(contentsOf:options:)();
  if (v17)
  {
    return (*(v12 + 8))(v16, v11);
  }

  v21 = v27[0];
  v22 = v18;
  v23 = v19;
  (*(v12 + 8))(v16, v11);
  v24 = type metadata accessor for JSONDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type AutomationJSON and conformance AutomationJSON();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v22, v23);
  return memcpy(v21, v28, 0x2A8uLL);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON and conformance AutomationJSON()
{
  result = lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON;
  if (!lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON;
  if (!lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON);
  }

  return result;
}

uint64_t static AutomationJSON.Serialize(json:)(const void *a1)
{
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  v9 = v8;
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  memcpy(v22, a1, sizeof(v22));
  lazy protocol witness table accessor for type AutomationJSON and conformance AutomationJSON();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v12 = v10;
    v13 = v11;
    outlined copy of Data._Representation(v10, v11);
    v14 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(v12, v13);
    if (v15)
    {
      v9 = v14;
      outlined consume of Data._Representation(v12, v13);
    }

    else
    {
      v20 = v12;
      v21 = v13;
      outlined copy of Data._Representation(v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of PromptComponentValueConvertible(v18, v22);
        __swift_project_boxed_opaque_existential_1(v22, v22[3]);
        HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
        outlined consume of Data._Representation(v12, v13);
        if (HasContiguous)
        {
          __swift_project_boxed_opaque_existential_1(v22, v22[3]);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

          outlined consume of Data._Representation(v12, v13);
          v9 = *&v18[0];
          __swift_destroy_boxed_opaque_existential_0(v22);
          return v9;
        }

        __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {
        outlined consume of Data._Representation(v12, v13);
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
      }

      v9 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(v12, v13);
    }

    outlined consume of Data._Representation(v12, v13);
    return v9;
  }

  return v9;
}

unint64_t AutomationJSON.CodingKeys.stringValue.getter(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
      return 0x6E75426C65646F6DLL;
    case 2:
      return 0x74617265706D6574;
    case 3:
      return 0x6E656B6F5478616DLL;
    case 4:
      return 0x65536D6F646E6172;
    case 5:
      return 0x74706D6F7270;
    case 6:
      return 0x7475706E69;
    case 7:
      return 0x656C61636F6CLL;
    case 8:
      return 0x6F72507475706E69;
    case 9:
      v3 = 5;
      goto LABEL_27;
    case 10:
      v3 = 10;
      goto LABEL_27;
    case 11:
    case 37:
      v3 = 9;
      goto LABEL_27;
    case 12:
      return 0x736567617373656DLL;
    case 13:
      return 0x65736E6F70736572;
    case 14:
      return 0x74757074756FLL;
    case 15:
      return 0x64657265646E6572;
    case 16:
    case 40:
      return 0xD000000000000014;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0x65506874676E656CLL;
    case 19:
      return 0x75716553706F7473;
    case 20:
      return 0x6D726177657270;
    case 21:
    case 28:
      return 0xD000000000000016;
    case 22:
    case 25:
      return 0xD000000000000013;
    case 23:
      return 0x6165486E656B6F74;
    case 24:
      return 0xD00000000000001FLL;
    case 26:
      return 0x616D65686373;
    case 27:
      return 0x72616D6D617267;
    case 29:
      return 0xD000000000000010;
    case 30:
    case 35:
      return 0xD000000000000011;
    case 31:
      return 0x6F69746172657469;
    case 32:
      return 0x654474706D6F7270;
    case 33:
      return 0x6174614472657375;
    case 34:
      v3 = 13;
LABEL_27:
      result = v3 | 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000018;
      break;
    case 38:
      result = 0x7265646F636564;
      break;
    case 39:
      result = 0x437265646F636564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AutomationJSON.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v131 = *(v3 - 8);
  v4 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v64 - v5;
  v7 = *v1;
  v129 = v1[1];
  v130 = v7;
  v8 = v1[2];
  v127 = v1[3];
  v128 = v8;
  v126 = v1[4];
  v125 = *(v1 + 40);
  v124 = v1[6];
  v123 = *(v1 + 56);
  v9 = v1[8];
  v122 = *(v1 + 72);
  v10 = v1[10];
  v120 = v1[11];
  v121 = v9;
  v11 = v1[13];
  v118 = v1[12];
  v119 = v10;
  v12 = v1[14];
  v116 = v11;
  v117 = v12;
  v115 = *(v1 + 120);
  v13 = v1[16];
  v113 = v1[17];
  v114 = v13;
  v14 = v1[18];
  v111 = v1[19];
  v112 = v14;
  v15 = v1[20];
  v109 = v1[21];
  v110 = v15;
  v16 = v1[22];
  v107 = v1[23];
  v108 = v16;
  v64 = v1[24];
  v65 = *(v1 + 200);
  v69 = v1[26];
  v70 = *(v1 + 216);
  v17 = *(v1 + 79);
  v153 = *(v1 + 77);
  v154 = v17;
  v155 = *(v1 + 81);
  v156 = *(v1 + 664);
  v18 = *(v1 + 71);
  v149 = *(v1 + 69);
  v150 = v18;
  v19 = *(v1 + 75);
  v151 = *(v1 + 73);
  v152 = v19;
  v20 = *(v1 + 65);
  v21 = *(v1 + 67);
  v22 = v1[28];
  v66 = v1[29];
  v67 = v22;
  v147 = v20;
  v148 = v21;
  v68 = *(v1 + 240);
  v72 = v1[31];
  v71 = *(v1 + 256);
  LODWORD(v12) = *(v1 + 258);
  v73 = *(v1 + 257);
  v74 = v12;
  LODWORD(v12) = *(v1 + 260);
  v75 = *(v1 + 259);
  v76 = v12;
  v23 = v1[34];
  v77 = v1[33];
  v78 = v23;
  v24 = v1[36];
  v79 = v1[35];
  v80 = v24;
  v25 = v1[38];
  v81 = v1[37];
  v82 = v25;
  v26 = v1[40];
  v83 = v1[39];
  v84 = v26;
  v27 = v1[42];
  v85 = v1[41];
  v86 = v27;
  v87 = *(v1 + 344);
  v88 = v1[44];
  v89 = *(v1 + 360);
  v28 = v1[47];
  v90 = v1[46];
  v91 = *(v1 + 384);
  v29 = v1[49];
  v92 = v28;
  v93 = v29;
  v94 = *(v1 + 400);
  v30 = v1[52];
  v95 = v1[51];
  v96 = v30;
  v31 = v1[54];
  v97 = v1[53];
  v32 = v1[56];
  v102 = v1[55];
  v103 = v31;
  v33 = v1[58];
  v100 = v1[57];
  v101 = v32;
  v99 = v33;
  v98 = *(v1 + 472);
  v34 = v1[61];
  v104 = v1[60];
  v106 = v34;
  v105 = *(v1 + 248);
  v35 = v1[63];
  v36 = v1[64];
  v37 = v1[84];
  v39 = a1[3];
  v38 = a1[4];
  v40 = a1;
  v42 = v41;
  __swift_project_boxed_opaque_existential_1(v40, v39);
  lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v137) = 0;
  v43 = v6;
  v44 = v157;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v44)
  {
    v157 = v44;
    return (*(v131 + 8))(v6, v42);
  }

  v129 = v35;
  v130 = v36;
  v46 = v131;
  LOBYTE(v137) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v137) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v137) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v137) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v137) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v157 = 0;
  *&v137 = v118;
  LOBYTE(v134[0]) = 6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v48 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v49 = v157;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v49)
  {
    v157 = v49;
    return (*(v46 + 8))(v43, v42);
  }

  v127 = v48;
  v128 = v47;
  LOBYTE(v137) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v157 = 0;
  LOBYTE(v137) = v115;
  LOBYTE(v134[0]) = 8;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  v50 = v157;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v157 = v50;
  if (v50)
  {
    return (*(v46 + 8))(v43, v42);
  }

  *&v137 = v114;
  LOBYTE(v134[0]) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
  v51 = v157;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v157 = v51;
  if (v51)
  {
    return (*(v46 + 8))(v43, v42);
  }

  *&v137 = v113;
  LOBYTE(v134[0]) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
  lazy protocol witness table accessor for type [[String : [String]]] and conformance <A> [A]();
  v126 = v42;
  v52 = v157;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v157 = v52;
  if (!v52)
  {
    *&v137 = v112;
    LOBYTE(v134[0]) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
    lazy protocol witness table accessor for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]();
    v53 = v157;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v157 = v53;
    if (!v53)
    {
      *&v137 = v111;
      LOBYTE(v134[0]) = 12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
      lazy protocol witness table accessor for type [[AutomationJSON.Turn]] and conformance <A> [A]();
      v54 = v157;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v157 = v54;
      if (!v54)
      {
        *&v137 = v110;
        LOBYTE(v134[0]) = 13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
        lazy protocol witness table accessor for type [AutomationJSON.Response] and conformance <A> [A]();
        v55 = v157;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v157 = v55;
        if (!v55)
        {
          *&v137 = v109;
          LOBYTE(v134[0]) = 14;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v157 = 0;
          *&v137 = v108;
          LOBYTE(v134[0]) = 15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
          lazy protocol witness table accessor for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]();
          v56 = v157;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v157 = v56;
          if (!v56)
          {
            *&v137 = v107;
            LOBYTE(v134[0]) = 16;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 17;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 18;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 19;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 20;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 21;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 22;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 23;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 24;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 25;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 26;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 27;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            *&v137 = v81;
            LOBYTE(v134[0]) = 28;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 29;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 30;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 31;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            LOBYTE(v137) = 32;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v157 = 0;
            *&v137 = v90;
            *(&v137 + 1) = v92;
            LOBYTE(v138) = v91;
            LOBYTE(v134[0]) = 33;
            outlined copy of JSON?(v90, v92, v91);
            lazy protocol witness table accessor for type JSON and conformance JSON();
            v57 = v157;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v157 = v57;
            if (v57)
            {
              outlined consume of JSON?(v137, *(&v137 + 1), v138);
            }

            else
            {
              outlined consume of JSON?(v137, *(&v137 + 1), v138);
              *&v137 = v93;
              BYTE8(v137) = v94;
              LOBYTE(v134[0]) = 34;
              lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
              v58 = v157;
              KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
              v157 = v58;
              if (!v58)
              {
                LOBYTE(v137) = 35;
                KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                v157 = 0;
                *&v137 = v97;
                *(&v137 + 1) = v103;
                *&v138 = v102;
                *(&v138 + 1) = v101;
                *&v139 = v100;
                *(&v139 + 1) = v99;
                LOBYTE(v140) = v98;
                LOBYTE(v134[0]) = 36;
                outlined copy of AutomationJSON.InputSafetyConfiguration?(v97, v103);
                lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
                v59 = v157;
                KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                v157 = v59;
                if (v59)
                {
                  outlined consume of AutomationJSON.InputSafetyConfiguration?(v137, *(&v137 + 1));
                }

                else
                {
                  outlined consume of AutomationJSON.InputSafetyConfiguration?(v137, *(&v137 + 1));
                  *&v137 = v104;
                  *(&v137 + 1) = v106;
                  LOWORD(v138) = v105;
                  LOBYTE(v134[0]) = 37;
                  outlined copy of AutomationJSON.OutputSafetyConfiguration?(v104, v106);
                  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
                  v60 = v157;
                  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                  v157 = v60;
                  if (v60)
                  {
                    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v137, *(&v137 + 1));
                  }

                  else
                  {
                    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v137, *(&v137 + 1));
                    LOBYTE(v137) = 38;
                    v61 = v157;
                    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                    v157 = v61;
                    if (!v61)
                    {
                      v143 = v153;
                      v144 = v154;
                      v145 = v155;
                      v146 = v156;
                      v139 = v149;
                      v140 = v150;
                      v141 = v151;
                      v142 = v152;
                      v137 = v147;
                      v138 = v148;
                      v136 = 39;
                      outlined init with copy of (String, Any)(&v147, v134, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
                      lazy protocol witness table accessor for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig();
                      v62 = v157;
                      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                      v157 = v62;
                      v134[6] = v143;
                      v134[7] = v144;
                      v134[8] = v145;
                      v135 = v146;
                      v134[2] = v139;
                      v134[3] = v140;
                      v134[4] = v141;
                      v134[5] = v142;
                      v134[0] = v137;
                      v134[1] = v138;
                      outlined destroy of [Regex2BNF.CharacterPredicate](v134, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
                      if (!v62)
                      {
                        v133 = v37;
                        v132 = 40;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR);
                        lazy protocol witness table accessor for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]();
                        v63 = v157;
                        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                        v157 = v63;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return (*(v46 + 8))(v43, v126);
}

uint64_t AutomationJSON.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v138 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v8 = &v70 - v7;
  _s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgWOi0_(v285);
  v257 = v285[6];
  v258 = v285[7];
  v259 = v285[8];
  v253 = v285[2];
  v254 = v285[3];
  v255 = v285[4];
  v256 = v285[5];
  v251 = v285[0];
  v260 = v286;
  v252 = v285[1];
  v9 = a1[3];
  v10 = a1[4];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v287 = v2;
    __swift_destroy_boxed_opaque_existential_0(v139);
    v14 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  v11 = v5;
  LOBYTE(v141) = 0;
  v12 = v138;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  v137 = v13;
  LOBYTE(v141) = 1;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v108 = v22;
  v136 = v21;
  LOBYTE(v141) = 2;
  v116 = 0;
  v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v284 = v23 & 1;
  LOBYTE(v141) = 3;
  v134 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v282 = v24 & 1;
  LOBYTE(v141) = 4;
  v133 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v280 = v29 & 1;
  LOBYTE(v141) = 5;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  v109 = v30;
  v107 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  LOBYTE(v140[0]) = 6;
  v132 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v33 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v33)
  {
    v287 = v33;
    (*(v11 + 8))(v8, v12);
    v34 = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v109) = 0;
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v110 = 0;
    LODWORD(v121) = 1;
    goto LABEL_28;
  }

  v128 = v32;
  v101 = v141;
  LOBYTE(v141) = 7;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  v100 = v36;
  v106 = v37;
  LOBYTE(v140[0]) = 8;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  v38 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v38;
  if (v38)
  {
    (*(v11 + 8))(v8, v12);
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v109) = 0;
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v110 = 0;
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    goto LABEL_28;
  }

  v99 = v20;
  v39 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  LOBYTE(v140[0]) = 9;
  lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
  v40 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v40;
  if (v40)
  {
    (*(v11 + 8))(v8, v138);
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v109) = 0;
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v110 = 0;
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    goto LABEL_28;
  }

  v105 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
  LOBYTE(v140[0]) = 10;
  lazy protocol witness table accessor for type [[String : [String]]] and conformance <A> [A]();
  v41 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v41;
  if (v41)
  {
    (*(v11 + 8))(v8, v138);
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v109) = 0;
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v110 = 0;
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    goto LABEL_28;
  }

  v104 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
  LOBYTE(v140[0]) = 11;
  lazy protocol witness table accessor for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]();
  v42 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v42;
  if (v42)
  {
    (*(v11 + 8))(v8, v138);
    LODWORD(v120) = 0;
    LODWORD(v109) = 0;
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v110 = 0;
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    goto LABEL_28;
  }

  v103 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
  LOBYTE(v140[0]) = 12;
  lazy protocol witness table accessor for type [[AutomationJSON.Turn]] and conformance <A> [A]();
  v43 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v43;
  if (v43)
  {
    (*(v11 + 8))(v8, v138);
    LODWORD(v109) = 0;
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v110 = 0;
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    goto LABEL_28;
  }

  v102 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
  LOBYTE(v140[0]) = 13;
  lazy protocol witness table accessor for type [AutomationJSON.Response] and conformance <A> [A]();
  v44 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v44;
  if (v44)
  {
    (*(v11 + 8))(v8, v138);
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    v110 = 0;
LABEL_61:
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v109) = 1;
    goto LABEL_28;
  }

  v110 = v141;
  LOBYTE(v140[0]) = 14;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = 0;
  v45 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
  LOBYTE(v140[0]) = 15;
  lazy protocol witness table accessor for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]();
  v46 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v46;
  if (v46)
  {
    (*(v11 + 8))(v8, v138);
    v35 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    goto LABEL_61;
  }

  v98 = v141;
  LOBYTE(v140[0]) = 16;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = 0;
  v97 = v141;
  LOBYTE(v141) = 17;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  v48 = v47;
  v277 = v49 & 1;
  LOBYTE(v141) = 18;
  v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  v275 = v50 & 1;
  LOBYTE(v141) = 19;
  v95 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v131 = v51;
  v287 = 0;
  LOBYTE(v141) = 20;
  v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  LOBYTE(v141) = 21;
  v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  v272 = v52 & 1;
  LOBYTE(v141) = 22;
  v92 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  LOBYTE(v141) = 23;
  v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  LOBYTE(v141) = 24;
  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  LOBYTE(v141) = 25;
  v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  LOBYTE(v141) = 26;
  v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v130 = v53;
  v287 = 0;
  LOBYTE(v141) = 27;
  v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v129 = v54;
  v287 = 0;
  LOBYTE(v140[0]) = 28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = 0;
  v127 = v141;
  LOBYTE(v141) = 29;
  v132 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v128 = v55;
  v287 = 0;
  LOBYTE(v141) = 30;
  v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v126 = v56;
  v287 = 0;
  LOBYTE(v141) = 31;
  v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  v269 = v57 & 1;
  LOBYTE(v141) = 32;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v287 = 0;
  v267 = v58 & 1;
  LOBYTE(v140[0]) = 33;
  lazy protocol witness table accessor for type JSON and conformance JSON();
  v59 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v59;
  if (v59)
  {
    (*(v11 + 8))(v8, v138);
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v109) = 1;
    v35 = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v136) = 1;
    goto LABEL_28;
  }

  v124 = *(&v141 + 1);
  v125 = v141;
  v123 = v142;
  LOBYTE(v140[0]) = 34;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
  v60 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v60;
  if (v60)
  {
    (*(v11 + 8))(v8, v138);
    LODWORD(v138) = 0;
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v109) = 1;
    v35 = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v136) = 1;
    LODWORD(v137) = 1;
    goto LABEL_28;
  }

  v83 = v141;
  v82 = BYTE8(v141);
  LOBYTE(v141) = 35;
  v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v122 = v61;
  v287 = 0;
  LOBYTE(v140[0]) = 36;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
  v62 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v62;
  if (v62)
  {
    (*(v11 + 8))(v8, v138);
    LODWORD(v121) = 1;
    v34 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v109) = 1;
    v35 = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v136) = 1;
    LODWORD(v137) = 1;
    LODWORD(v138) = 1;
LABEL_28:
    v25 = v116;
    __swift_destroy_boxed_opaque_existential_0(v139);

    if (v25)
    {
      if (v121)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (v121)
      {
LABEL_30:

        if ((v34 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    if (!v34)
    {
LABEL_31:
      if (v117)
      {
        goto LABEL_32;
      }

      goto LABEL_40;
    }

LABEL_39:

    if (v117)
    {
LABEL_32:

      if ((v118 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!v118)
    {
LABEL_33:
      if (v119)
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }

LABEL_41:

    if (v119)
    {
LABEL_34:
      v14 = v35;

      if ((v120 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

LABEL_42:
    v14 = v35;
    if (!v120)
    {
LABEL_35:
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (!v109)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }

LABEL_43:

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if ((v109 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v120 = *(&v141 + 1);
  v121 = v141;
  v118 = *(&v142 + 1);
  v119 = v142;
  v116 = *(&v143 + 1);
  v117 = v143;
  v115 = v144;
  LOBYTE(v140[0]) = 37;
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
  v63 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v79 = v63 == 0;
  v287 = v63;
  if (v63)
  {
    (*(v11 + 8))(v8, v138);
    __swift_destroy_boxed_opaque_existential_0(v139);
    v28 = 0;
LABEL_74:

    v14 = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v136) = 1;
    LODWORD(v137) = 1;
    LODWORD(v138) = 1;
    v26 = 1;
    v27 = v79;
LABEL_44:
    v16 = v27;
    v15 = v26;

    v17 = v28;
LABEL_4:

    if (v14)
    {

      if (!v132)
      {
        goto LABEL_6;
      }
    }

    else if (!v132)
    {
LABEL_6:
      if (v133)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (v133)
    {
LABEL_7:

      if (!v134)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v134)
    {
LABEL_8:
      if (v135)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:

    if (v135)
    {
LABEL_9:

      if (!v136)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (!v136)
    {
LABEL_10:
      if (v137)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:

    if (v137)
    {
LABEL_11:
      outlined consume of JSON?(v125, v124, v123);
      if (!v138)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (!v138)
    {
LABEL_12:
      if (v15)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

LABEL_24:

    if (v15)
    {
LABEL_13:
      outlined consume of AutomationJSON.InputSafetyConfiguration?(v121, v120);
      if (!v16)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_25:
    if (!v16)
    {
LABEL_14:
      if (!v17)
      {
LABEL_16:
        v147 = v257;
        v148 = v258;
        v149 = v259;
        LOBYTE(v150) = v260;
        v143 = v253;
        v144 = v254;
        v145 = v255;
        v146 = v256;
        v141 = v251;
        v142 = v252;
        return outlined destroy of [Regex2BNF.CharacterPredicate](&v141, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
      }

LABEL_15:

      goto LABEL_16;
    }

LABEL_26:
    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v114, v113);
    if (!v17)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v113 = *(&v141 + 1);
  v114 = v141;
  v112 = v142;
  LOBYTE(v141) = 38;
  v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v111 = v64;
  v287 = 0;
  v239 = 39;
  lazy protocol witness table accessor for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig();
  v65 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v65;
  if (v65)
  {
    goto LABEL_73;
  }

  v233 = v246;
  v234 = v247;
  v235 = v248;
  v236 = v249;
  v229 = v242;
  v230 = v243;
  v231 = v244;
  v232 = v245;
  v227 = v240;
  v228 = v241;
  v237[6] = v257;
  v237[7] = v258;
  v237[8] = v259;
  v238 = v260;
  v237[2] = v253;
  v237[3] = v254;
  v237[4] = v255;
  v237[5] = v256;
  v237[0] = v251;
  v237[1] = v252;
  outlined destroy of [Regex2BNF.CharacterPredicate](v237, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
  v257 = v233;
  v258 = v234;
  v259 = v235;
  v253 = v229;
  v254 = v230;
  v255 = v231;
  v256 = v232;
  v251 = v227;
  v260 = v236;
  v252 = v228;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR);
  v225 = 40;
  lazy protocol witness table accessor for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]();
  v66 = v287;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v287 = v66;
  if (v66)
  {
LABEL_73:
    (*(v11 + 8))(v8, v138);
    __swift_destroy_boxed_opaque_existential_0(v139);
    v28 = 1;
    goto LABEL_74;
  }

  (*(v11 + 8))(v8, v138);
  v73 = v226;
  v140[0] = v137;
  v140[1] = v99;
  v140[2] = v136;
  v140[3] = v108;
  v140[4] = v135;
  LODWORD(v138) = v284;
  LOBYTE(v140[5]) = v284;
  *(&v140[5] + 1) = *v283;
  HIDWORD(v140[5]) = *&v283[3];
  v140[6] = v134;
  v79 = v282;
  LOBYTE(v140[7]) = v282;
  *(&v140[7] + 1) = *v281;
  HIDWORD(v140[7]) = *&v281[3];
  v140[8] = v133;
  v78 = v280;
  LOBYTE(v140[9]) = v280;
  *(&v140[9] + 1) = *v279;
  HIDWORD(v140[9]) = *&v279[3];
  v140[10] = v109;
  v140[11] = v107;
  v140[12] = v101;
  v140[13] = v100;
  v140[14] = v106;
  LOBYTE(v140[15]) = v39;
  *(&v140[15] + 1) = *v278;
  HIDWORD(v140[15]) = *&v278[3];
  v140[16] = v105;
  v140[17] = v104;
  v140[18] = v103;
  v140[19] = v102;
  v140[20] = v110;
  v76 = v48;
  v77 = v45;
  v140[21] = v45;
  v140[22] = v98;
  v140[23] = v97;
  v140[24] = v48;
  v75 = v277;
  LOBYTE(v140[25]) = v277;
  HIDWORD(v140[25]) = *&v276[3];
  *(&v140[25] + 1) = *v276;
  v140[26] = v96;
  v74 = v275;
  LOBYTE(v140[27]) = v275;
  HIDWORD(v140[27]) = *&v274[3];
  *(&v140[27] + 1) = *v274;
  v140[28] = v95;
  v140[29] = v131;
  LOBYTE(v140[30]) = v94;
  *(&v140[30] + 1) = *v273;
  HIDWORD(v140[30]) = *&v273[3];
  v140[31] = v93;
  *(&v140[32] + 5) = v270;
  *(&v140[43] + 1) = *v268;
  *(&v140[45] + 1) = *v266;
  *(&v140[48] + 1) = *v265;
  *(&v140[50] + 1) = *v264;
  *(&v140[59] + 1) = *v263;
  *(&v140[62] + 2) = v261;
  *(&v140[83] + 1) = *v250;
  HIDWORD(v70) = v272;
  LOBYTE(v140[32]) = v272;
  BYTE1(v140[32]) = v92;
  BYTE2(v140[32]) = v91;
  BYTE3(v140[32]) = v90;
  BYTE4(v140[32]) = v89;
  HIBYTE(v140[32]) = v271;
  v140[33] = v88;
  v67 = v129;
  v68 = v130;
  v140[34] = v130;
  v140[35] = v87;
  v140[36] = v129;
  v69 = v127;
  v140[37] = v127;
  v140[38] = v132;
  v140[39] = v128;
  v140[40] = v86;
  v140[41] = v126;
  v140[42] = v85;
  HIDWORD(v140[43]) = *&v268[3];
  HIDWORD(v140[45]) = *&v266[3];
  HIDWORD(v140[48]) = *&v265[3];
  HIDWORD(v140[50]) = *&v264[3];
  HIDWORD(v140[59]) = *&v263[3];
  HIWORD(v140[62]) = v262;
  v72 = v269;
  LOBYTE(v140[43]) = v269;
  v140[44] = v84;
  *&v140[65] = v227;
  *&v140[67] = v228;
  *&v140[73] = v231;
  *&v140[75] = v232;
  *&v140[69] = v229;
  *&v140[71] = v230;
  *&v140[79] = v234;
  *&v140[81] = v235;
  *&v140[77] = v233;
  LOBYTE(v140[83]) = v236;
  HIDWORD(v140[83]) = *&v250[3];
  v71 = v267;
  LOBYTE(v140[45]) = v267;
  v140[46] = v125;
  v140[47] = v124;
  LOBYTE(v140[48]) = v123;
  v140[49] = v83;
  LOBYTE(v140[50]) = v82;
  v140[51] = v81;
  v140[52] = v122;
  v140[53] = v121;
  v140[54] = v120;
  v140[55] = v119;
  v140[56] = v118;
  v140[57] = v117;
  v140[58] = v116;
  LOBYTE(v140[59]) = v115;
  v140[60] = v114;
  v140[61] = v113;
  LOWORD(v140[62]) = v112;
  v140[63] = v80;
  v140[64] = v111;
  v140[84] = v226;
  memcpy(a2, v140, 0x2A8uLL);
  outlined init with copy of AutomationJSON(v140, &v141);
  __swift_destroy_boxed_opaque_existential_0(v139);
  *&v141 = v137;
  *(&v141 + 1) = v99;
  *&v142 = v136;
  *(&v142 + 1) = v108;
  *&v143 = v135;
  BYTE8(v143) = v138;
  *&v144 = v134;
  BYTE8(v144) = v79;
  *&v145 = v133;
  BYTE8(v145) = v78;
  *&v146 = v109;
  *(&v146 + 1) = v107;
  *&v147 = v101;
  *(&v147 + 1) = v100;
  *&v148 = v106;
  BYTE8(v148) = v39;
  *&v149 = v105;
  *(&v149 + 1) = v104;
  v150 = v103;
  v151 = v102;
  v152 = v110;
  v153 = v77;
  v154 = v98;
  v155 = v97;
  v156 = v76;
  v157 = v75;
  v159 = v96;
  v160 = v74;
  v162 = v95;
  v163 = v131;
  v164 = v94;
  v166 = v93;
  v167 = BYTE4(v70);
  v168 = v92;
  v169 = v91;
  v170 = v90;
  v171 = v89;
  v174 = v88;
  v175 = v68;
  v176 = v87;
  v177 = v67;
  v178 = v69;
  v179 = v132;
  *(&v143 + 9) = *v283;
  HIDWORD(v143) = *&v283[3];
  *(&v144 + 9) = *v281;
  HIDWORD(v144) = *&v281[3];
  HIDWORD(v145) = *&v279[3];
  *(&v145 + 9) = *v279;
  *(&v148 + 9) = *v278;
  HIDWORD(v148) = *&v278[3];
  *&v158[3] = *&v276[3];
  *v158 = *v276;
  *&v161[3] = *&v274[3];
  *v161 = *v274;
  *v165 = *v273;
  *&v165[3] = *&v273[3];
  v172 = v270;
  v173 = v271;
  v180 = v128;
  v181 = v86;
  v182 = v126;
  v183 = v85;
  v184 = v72;
  *v185 = *v268;
  *&v185[3] = *&v268[3];
  v186 = v84;
  v187 = v71;
  *v188 = *v266;
  *&v188[3] = *&v266[3];
  v189 = v125;
  v190 = v124;
  v191 = v123;
  *v192 = *v265;
  *&v192[3] = *&v265[3];
  v193 = v83;
  v194 = v82;
  *v195 = *v264;
  *&v195[3] = *&v264[3];
  v196 = v81;
  v197 = v122;
  v198 = v121;
  v199 = v120;
  v200 = v119;
  v201 = v118;
  v202 = v117;
  v203 = v116;
  v204 = v115;
  *v205 = *v263;
  *&v205[3] = *&v263[3];
  v206 = v114;
  v207 = v113;
  v208 = v112;
  v209 = v261;
  v210 = v262;
  v211 = v80;
  v212 = v111;
  v213 = v251;
  v214 = v252;
  v217 = v255;
  v218 = v256;
  v215 = v253;
  v216 = v254;
  v220 = v258;
  v221 = v259;
  v219 = v257;
  v222 = v260;
  *v223 = *v250;
  *&v223[3] = *&v250[3];
  v224 = v73;
  return outlined destroy of AutomationJSON(&v141);
}

uint64_t _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  specialized Collection._copyToContiguousArray()(a1, a2);
  v5 = *(v4 + 16);
  v6 = static String._fromUTF8Repairing(_:)();

  return v6;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void specialized Collection._copyToContiguousArray()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
      v13 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v14 = *(v5 + 8);
      v5 += 8;
      v14(v8, v4);
      if (v13 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v15 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v15;
      if (!v15)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  MEMORY[0x1AC57AAA0]();
LABEL_16:
  result = static String._fromUTF8Repairing(_:)();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : [String]]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
    lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
    lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
    lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
    lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[AutomationJSON.Turn]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
    lazy protocol witness table accessor for type [AutomationJSON.Turn] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
    lazy protocol witness table accessor for type [AutomationJSON.Turn] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.Turn] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMd, &_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Turn and conformance AutomationJSON.Turn();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMd, &_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Turn and conformance AutomationJSON.Turn();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Turn and conformance AutomationJSON.Turn()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.Response] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Response and conformance AutomationJSON.Response();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Response and conformance AutomationJSON.Response();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Response and conformance AutomationJSON.Response()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR);
    lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR);
    lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TGModes and conformance TGModes()
{
  result = lazy protocol witness table cache variable for type TGModes and conformance TGModes;
  if (!lazy protocol witness table cache variable for type TGModes and conformance TGModes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TGModes and conformance TGModes);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore4JSONO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore4JSONOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 5)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AutomationJSON(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 680))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 664) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 680) = 1;
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

    *(result + 680) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.RichVariableBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.RichVariableBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.RenderedPrompt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.RenderedPrompt(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.OutputSafetyConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.OutputSafetyConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.Guardrails(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.Guardrails(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.Turn(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.Turn(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.DecoderConfig(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.DecoderConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_17;
  }

  if (a2 + 40 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 40) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 40;
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

      return (*a1 | (v4 << 8)) - 40;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 40;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v8 = v6 - 41;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD8)
  {
    v4 = 0;
  }

  if (a2 > 0xD7)
  {
    v5 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}