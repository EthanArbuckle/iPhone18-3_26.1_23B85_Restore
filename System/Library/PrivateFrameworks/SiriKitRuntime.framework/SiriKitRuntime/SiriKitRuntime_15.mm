void *AmbiguityService.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t AmbiguityService.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AmbiguityServiceProviding.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:) in conformance AmbiguityService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *v8;
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t specialized AmbiguityService.getAlternatives<A>(nlParses:)(uint64_t a1)
{
  v50 = type metadata accessor for Siri_Nlu_External_Parser();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = v35 - v7;
  v47 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = v35 - v12;
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v51 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v51;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v22 = (a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64)));
    v40 = *(v20 + 56);
    v41 = v21;
    v38 = (v20 - 8);
    v39 = (v2 + 8);
    v37 = *MEMORY[0x1E69D0168];
    v35[1] = v14 + 32;
    v36 = (v14 + 104);
    v43 = v14;
    v44 = v20;
    v42 = v13;
    v23 = v46;
    do
    {
      v24 = v45;
      v25 = v47;
      v26 = v41;
      v41(v45, v22, v47);
      v26(v23, v24, v25);
      v27 = v49;
      Siri_Nlu_External_UserParse.parser.getter();
      v28 = v48;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v39)(v27, v50);
      v29 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      v30 = v25;
      v31 = v42;
      (*v38)(v24, v30);
      (*v36)(v17, v37, v31);
      v51 = v19;
      v33 = *(v19 + 16);
      v32 = *(v19 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v19 = v51;
      }

      *(v19 + 16) = v33 + 1;
      (*(v43 + 32))(v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v17, v31);
      v22 += v40;
      --v18;
    }

    while (v18);
  }

  return v19;
}

void specialized AmbiguityService.getAlternatives<A>(nlParses:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v43 = a1;
  v42 = type metadata accessor for Siri_Nlu_External_Parser();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v31 - v10;
  v39 = type metadata accessor for Siri_Nlu_External_UserParse();
  v47 = *(v39 - 8);
  v11 = v47[8];
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for Parse();
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3 >> 1;
  v19 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_13;
  }

  if (v19)
  {
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v20 = v48;
    v35 = (v5 + 8);
    v36 = v47 + 2;
    v34 = v47 + 1;
    v33 = *MEMORY[0x1E69D0168];
    v31 = v46 + 32;
    v32 = (v46 + 104);
    v21 = v45;
    if (a2 > v45)
    {
      v21 = a2;
    }

    v37 = v21;
    v22 = v39;
    while (v37 != a2)
    {
      v23 = v47;
      v24 = v47[2];
      v24(v15, v43 + v47[9] * a2, v22);
      v24(v38, v15, v22);
      v25 = v41;
      Siri_Nlu_External_UserParse.parser.getter();
      v26 = v40;
      Siri_Nlu_External_Parser.parserID.getter();
      v27 = v44;
      (*v35)(v25, v42);
      v28 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      (v23[1])(v15, v22);
      (*v32)(v27, v33, v16);
      v48 = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v27 = v44;
        v20 = v48;
      }

      *(v20 + 16) = v30 + 1;
      (*(v46 + 32))(v20 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v30, v27, v16);
      if (v45 == ++a2)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }
}

uint64_t outlined init with take of AmbiguityServiceResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CamOutput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamOutput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for AmbiguityServiceResponse(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Input();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = type metadata accessor for AmbiguityOutput(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v8 + 16))(a1 + v11, a2 + v11, v7);
      }

      else
      {
        *(a1 + v11) = *(a2 + v11);
      }

      swift_storeEnumTagMultiPayload();
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    v15 = *(a3 + 24);
    v16 = type metadata accessor for Parse();
    (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
  }

  return a1;
}

uint64_t destroy for AmbiguityServiceResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for AmbiguityOutput(0);
  if (!(*(*(v7 - 8) + 48))(a1 + v6, 1, v7))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 8))(a1 + v6, v4);
    }

    else
    {
      v8 = *(a1 + v6);
    }
  }

  v9 = *(a2 + 24);
  v10 = type metadata accessor for Parse();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

char *initializeWithCopy for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for AmbiguityOutput(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 16))(&a1[v9], &a2[v9], v6);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  v13 = *(a3 + 24);
  v14 = type metadata accessor for Parse();
  (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
  return a1;
}

char *assignWithCopy for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for AmbiguityOutput(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (v16)
  {
    if (!v17)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v7 + 16))(&a1[v12], &a2[v12], v6);
      }

      else
      {
        *&a1[v12] = *&a2[v12];
      }

      swift_storeEnumTagMultiPayload();
      (*(v14 + 56))(&a1[v12], 0, 1, v13);
      goto LABEL_21;
    }

LABEL_13:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    goto LABEL_21;
  }

  if (v17)
  {
    outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 16))(&a1[v12], &a2[v12], v6);
    }

    else
    {
      *&a1[v12] = *&a2[v12];
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_21:
  v19 = *(a3 + 24);
  v20 = type metadata accessor for Parse();
  (*(*(v20 - 8) + 24))(&a1[v19], &a2[v19], v20);
  return a1;
}

uint64_t outlined destroy of CamOutput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for AmbiguityOutput(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(&a1[v9], &a2[v9], v6);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v9], &a2[v9], *(v11 + 64));
    }

    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  v13 = *(a3 + 24);
  v14 = type metadata accessor for Parse();
  (*(*(v14 - 8) + 32))(&a1[v13], &a2[v13], v14);
  return a1;
}

char *assignWithTake for AmbiguityServiceResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for AmbiguityOutput(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      if (a1 == a2)
      {
        goto LABEL_21;
      }

      outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v7 + 32))(&a1[v12], &a2[v12], v6);
        swift_storeEnumTagMultiPayload();
        goto LABEL_21;
      }

      v18 = *(v14 + 64);
      goto LABEL_14;
    }

    outlined destroy of CamOutput(&a1[v12], type metadata accessor for AmbiguityOutput);
LABEL_13:
    v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR) - 8) + 64);
LABEL_14:
    memcpy(&a1[v12], &a2[v12], v18);
    goto LABEL_21;
  }

  if (v17)
  {
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(&a1[v12], &a2[v12], v6);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v12], &a2[v12], *(v14 + 64));
  }

  (*(v14 + 56))(&a1[v12], 0, 1, v13);
LABEL_21:
  v19 = *(a3 + 24);
  v20 = type metadata accessor for Parse();
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  return a1;
}

void type metadata completion function for AmbiguityServiceResponse()
{
  type metadata accessor for Input?(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Input?(319, &lazy cache variable for type metadata for AmbiguityOutput?, type metadata accessor for AmbiguityOutput);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Parse();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void type metadata accessor for Input?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AmbiguityOutput(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for Input();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for AmbiguityOutput(uint64_t *a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for Input();
    v3 = *(*(v2 - 8) + 8);

    return v3(a1, v2);
  }

  else
  {
    v5 = *a1;
  }
}

void *initializeWithCopy for AmbiguityOutput(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Input();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for AmbiguityOutput(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CamOutput(a1, type metadata accessor for AmbiguityOutput);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for Input();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for AmbiguityOutput(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for AmbiguityOutput(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of CamOutput(a1, type metadata accessor for AmbiguityOutput);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for AmbiguityOutput()
{
  result = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of AmbiguityServiceProviding.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *(a12 + 32);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v12 + 16) = v20;
  *v20 = v12;
  v20[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t AnnounceContext.__allocating_init(activeTasks:executedTasks:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AnnounceContext.init(activeTasks:executedTasks:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AnnounceContext.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E12A1FE0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

double one-time initialization function for announceTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AnnounceTypeOverride_pXpGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AnnounceTypeOverride_pXpGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1DCA65720;
  *(v0 + 32) = &type metadata for AnnounceTypeOverrideMessages;
  *(v0 + 40) = &protocol witness table for AnnounceTypeOverrideMessages;
  *(v0 + 48) = &type metadata for AnnounceTypeOverridePhoneCall;
  *(v0 + 56) = &protocol witness table for AnnounceTypeOverridePhoneCall;
  static AnnounceExecutionOverride.announceTypes = v0;
  return result;
}

uint64_t *AnnounceExecutionOverride.announceTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for announceTypes != -1)
  {
    swift_once();
  }

  return &static AnnounceExecutionOverride.announceTypes;
}

uint64_t static AnnounceExecutionOverride.announceTypes.getter()
{
  if (one-time initialization token for announceTypes != -1)
  {
    swift_once();
  }
}

uint64_t outlined init with copy of Siri_Nlu_External_UserParse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnnounceExecutionOverride.__allocating_init(activeTasks:executedTasks:topNlParse:isTriggerlessFollowup:isMitigated:isMedocSupported:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = 1028;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  outlined init with take of Siri_Nlu_External_UserParse?(a3, v15 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse);
  *(v15 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = a4;
  *(v15 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = a5;
  *(v15 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = a6;
  return v15;
}

uint64_t AnnounceExecutionOverride.init(activeTasks:executedTasks:topNlParse:isTriggerlessFollowup:isMitigated:isMedocSupported:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v6 + 16) = 1028;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  outlined init with take of Siri_Nlu_External_UserParse?(a3, v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse);
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = a4;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = a5;
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = a6;
  return v6;
}

uint64_t outlined init with take of Siri_Nlu_External_UserParse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall AnnounceExecutionOverride.evaluate()()
{
  v2 = v1;
  v3 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "Evaluating Announce Override rule...", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  if ((*(*v2 + 168))())
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "AnnounceExecutionOverride overriding mitigator decision.", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = 3;
    goto LABEL_24;
  }

  v13 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  if (v13 != 1)
  {
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "Evaluation result from Announce rule is accept when request is not trigger less follow up nor the request should be mitigated for an Intercom task", v23, 2u);
      v22 = v23;
      goto LABEL_22;
    }

LABEL_23:

    v12 = 11;
LABEL_24:
    *v3 = v12;
    return result;
  }

  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "Request is a triggerless followup aka siri announcement.,.", v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) == 1)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      swift_once();
    }

    v18 = static FlexibleAnnounceFeatureFlag.forceEnabled;
    os_unfair_lock_lock((static FlexibleAnnounceFeatureFlag.forceEnabled + 20));
    v19 = *(v18 + 16);
    if (v19 == 2)
    {
      v27[3] = &type metadata for FlexibleAnnounceFeatureFlag;
      v27[4] = lazy protocol witness table accessor for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag();
      LOBYTE(v19) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    os_unfair_lock_unlock((v18 + 20));
    if (v19)
    {
      v14 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = v21;
LABEL_22:
        MEMORY[0x1E12A2F50](v22, -1, -1);
        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DC659000, v24, v25, "Announce rule feature flag is disabled or we are on a non-medoc-enabled device; running rule..", v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  AnnounceExecutionOverride.triggerlessFollowupRulesWithoutFlexibleAnnounce()(v3);
  return result;
}

void AnnounceExecutionOverride.triggerlessFollowupRulesWithoutFlexibleAnnounce()(_BYTE *a1@<X8>)
{
  (*(*v1 + 176))(&v13);
  v3 = v13;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v5, v6, "With trigger less followup evaluation result from Announce rule is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  *a1 = v3;
}

Swift::Bool __swiftcall AnnounceExecutionOverride.shouldOverrideMitigatorAndIsIntercomTask()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) != 1 || !AnnounceExecutionOverride.parseContainsAnnounceIntercomTask()())
  {
    return 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    outlined init with copy of Siri_Nlu_External_UserParse?(v1 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, v5);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;

    *(v9 + 14) = 1;

    _os_log_impl(&dword_1DC659000, v7, v8, "Overriding mitigator decision based on Announce Mitigator rule:\ntopParse: %s,\nisMitigated: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {
  }

  return 1;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall AnnounceExecutionOverride.executionOverrideDecisionForTriggerlessFollowup()()
{
  v104 = v0;
  v2 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v100 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v100 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v100 - v17;
  v19 = type metadata accessor for Siri_Nlu_External_Task();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v100 - v25;
  v27 = v2;
  v29 = v28;
  (*(v27 + 184))(v24);
  if ((*(v29 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v31, v32, "Unable to retrieve task from activeTasks or executedTasks in SessionState for triggerless followup. Rejecting.", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

LABEL_7:
    *v104 = 1;
    return result;
  }

  (*(v29 + 32))(v26, v18, v19);
  v102 = v26;
  static AnnounceExecutionOverride.announceTypeForTask(_:)(&v109);
  if (!v110)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v109, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMd, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.executor);
    v39 = v29;
    v40 = *(v29 + 16);
    v41 = v102;
    v40(v22, v102, v19);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v109 = v45;
      *v44 = 136315138;
      type metadata accessor for SiriNLUTypesPrintUtils();
      v113 = v19;
      v114 = lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v112);
      v40(boxed_opaque_existential_0, v22, v19);
      v47 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
      v49 = v48;
      v50 = *(v39 + 8);
      v50(v22, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v109);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_1DC659000, v42, v43, "Unable to identify announce type of task: %s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);

      result = v50(v102, v19);
    }

    else
    {

      v58 = *(v39 + 8);
      v58(v22, v19);
      result = v58(v41, v19);
    }

    goto LABEL_7;
  }

  v101 = v29;
  outlined init with take of ReferenceResolutionClientProtocol(&v109, v112);
  outlined init with copy of Siri_Nlu_External_UserParse?(v1 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, v6);
  v35 = type metadata accessor for Siri_Nlu_External_UserParse();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v6, 1, v35) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    (*(v12 + 56))(v10, 1, 1, v11);
    v37 = v101;
LABEL_20:
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.executor);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v102;
    if (v63)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1DC659000, v61, v62, "Unable to retrieve UserDialogAct from parse.", v65, 2u);
      MEMORY[0x1E12A2F50](v65, -1, -1);
    }

    (*(v37 + 8))(v64, v19);
    v66 = 1;
    goto LABEL_25;
  }

  v52 = MEMORY[0x1E129C0F0]();
  (*(v36 + 8))(v6, v35);
  v53 = v12;
  if (*(v52 + 16))
  {
    v54 = *(v12 + 16);
    v55 = v52 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v56 = v11;
    v54(v10, v55, v11);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v11;
  }

  v37 = v101;
  v59 = v103;

  (*(v53 + 56))(v10, v57, 1, v56);
  if ((*(v53 + 48))(v10, 1, v56) == 1)
  {
    goto LABEL_20;
  }

  (*(v53 + 32))(v59, v10, v56);
  if (Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) != 0 && (v71 = v113, v72 = v114, __swift_project_boxed_opaque_existential_1(v112, v113), ((*(v72 + 16))(v71, v72)))
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.executor);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1DC659000, v68, v69, "Accepting WantedToRepeat / UserCancelled dialog act.", v70, 2u);
      MEMORY[0x1E12A2F50](v70, -1, -1);
    }

    goto LABEL_33;
  }

  if (!Siri_Nlu_External_UserDialogAct.toUsoTask()())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(v112, &v109);
    outlined init with copy of ReferenceResolutionClientProtocol(v112, v106);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105 = v100;
      *v81 = 136315394;
      v82 = v110;
      v83 = v111;
      __swift_project_boxed_opaque_existential_1(&v109, v110);
      v84 = (v83[1])(v82, v83);
      v86 = v85;
      __swift_destroy_boxed_opaque_existential_1Tm(&v109);
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v105);

      *(v81 + 4) = v87;
      *(v81 + 12) = 2080;
      v88 = v107;
      v89 = v108;
      __swift_project_boxed_opaque_existential_1(v106, v107);
      v90 = *(v89 + 24);
      v91 = v89;
      v59 = v103;
      v37 = v101;
      v92 = v90(v88, v91);
      if (v92)
      {
        v93 = 0;
      }

      else
      {
        v93 = 5525326;
      }

      if (v92)
      {
        v94 = 0xE000000000000000;
      }

      else
      {
        v94 = 0xE300000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v105);

      *(v81 + 14) = v95;
      _os_log_impl(&dword_1DC659000, v79, v80, "UserDialog was not of type UsoTask. AnnounceType %s DOES %s allow non-UsoTask parses.", v81, 0x16u);
      v96 = v100;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v96, -1, -1);
      MEMORY[0x1E12A2F50](v81, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v109);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
    }

    v97 = v113;
    v98 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    LOBYTE(v97) = (*(v98 + 24))(v97, v98);
    (*(v53 + 8))(v59, v56);
    (*(v37 + 8))(v102, v19);
    if (v97)
    {
      v66 = 11;
    }

    else
    {
      v66 = 1;
    }

    goto LABEL_25;
  }

  v73 = v113;
  v74 = v114;
  __swift_project_boxed_opaque_existential_1(v112, v113);
  if (((*(v74 + 32))(v73, v74) & 1) == 0)
  {
    goto LABEL_57;
  }

  v110 = &type metadata for AnnounceTypeGlobalOverride;
  v111 = &protocol witness table for AnnounceTypeGlobalOverride;
  v75 = swift_allocObject();
  *&v109 = v75;
  *(v75 + 16) = 0x6C61626F6C47;
  *(v75 + 24) = 0xE600000000000000;
  *(v75 + 32) = 16777217;
  *(v75 + 40) = &outlined read-only object #0 of AnnounceTypeGlobalOverride.init();
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of AnnounceTypeGlobalOverride.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  *(v75 + 48) = v76;
  static AnnounceExecutionOverride.executionOverrideDecisionForAnnounceType(announceType:followupUsoTask:)(&v109, v106);
  __swift_destroy_boxed_opaque_existential_1Tm(&v109);
  if (ExecutionOverrideDecision.rawValue.getter() != 0x747065636361 || v77 != 0xE600000000000000)
  {
    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v101;
    v59 = v103;
    if (v99)
    {

      goto LABEL_33;
    }

LABEL_57:
    static AnnounceExecutionOverride.executionOverrideDecisionForAnnounceType(announceType:followupUsoTask:)(v112, v104);

    (*(v53 + 8))(v59, v56);
    (*(v37 + 8))(v102, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v112);
  }

  v37 = v101;
  v59 = v103;
LABEL_33:
  (*(v53 + 8))(v59, v56);
  (*(v37 + 8))(v102, v19);
  v66 = 11;
LABEL_25:
  *v104 = v66;
  return __swift_destroy_boxed_opaque_existential_1Tm(v112);
}

double static AnnounceExecutionOverride.announceTypeForTask(_:)@<D0>(uint64_t *a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_Task();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_Task.task.getter();
  v9 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  (*(v5 + 8))(v8, v4);
  v10 = MEMORY[0x1E129C9E0](v9);
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_41:

    if (one-time initialization token for executor == -1)
    {
LABEL_42:
      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.executor);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v51, v52))
      {

        goto LABEL_46;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v65[0] = v54;
      *v53 = 136315138;
      v55 = dispatch thunk of Graph.description.getter();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v65);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1DC659000, v51, v52, "Unable to convert UsoGraphSiriNL to UsoTask for graph %s.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v53, -1, -1);

      goto LABEL_44;
    }

LABEL_49:
    swift_once();
    goto LABEL_42;
  }

  v48 = v10;
  v49 = __CocoaSet.count.getter();
  v10 = v48;
  if (!v49)
  {
    goto LABEL_41;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_49;
  }

  MEMORY[0x1E12A1FE0](0);
LABEL_6:

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v65[0] = v16;
    *v15 = 136315394;
    v17 = UsoTask.baseEntityAsString.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v65);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = UsoTask.verbString.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v65);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v13, v14, "Found UsoTask %s::%s.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (v64)
  {
    outlined init with take of Any(&v63, v65);
    outlined init with copy of Any(v65, &v63);
    type metadata accessor for UsoTask_read_common_Message();
    if (swift_dynamicCast())
    {

      v23 = v62;
      v62[3] = &type metadata for AnnounceTypeOverrideMessages;
      v23[4] = &protocol witness table for AnnounceTypeOverrideMessages;
      v24 = swift_allocObject();
      *v23 = v24;
      *(v24 + 16) = 0xD000000000000010;
      *(v24 + 24) = 0x80000001DCA7D1B0;
      *(v24 + 32) = 16842753;
      *(v24 + 40) = MEMORY[0x1E69E7CC0];
      v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #3 of AnnounceTypeOverrideMessages.init());
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
LABEL_13:
      swift_arrayDestroy();
LABEL_19:

      *(v24 + 48) = v25;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_21:
      __swift_destroy_boxed_opaque_existential_1Tm(&v63);
      return result;
    }

    type metadata accessor for UsoTask_summarise_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v36 = v62;
      v62[3] = &type metadata for AnnounceTypeOverridePhoneCall;
      v36[4] = &protocol witness table for AnnounceTypeOverridePhoneCall;
      v24 = swift_allocObject();
      *v36 = v24;
      strcpy((v24 + 16), "AnnounceCalls");
      *(v24 + 30) = -4864;
      *(v24 + 32) = 65794;
      *(v24 + 40) = MEMORY[0x1E69E7CC0];
      v37 = &outlined read-only object #1 of AnnounceTypeOverridePhoneCall.init();
LABEL_18:
      v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v37);
      outlined destroy of ReferenceResolutionClientProtocol?(v37 + 32, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
      goto LABEL_19;
    }

    type metadata accessor for UsoTask_read_common_Notification();
    if (swift_dynamicCast())
    {

      v39 = v62;
      v62[3] = &type metadata for AnnounceTypeOverrideGenericNotification;
      v39[4] = &protocol witness table for AnnounceTypeOverrideGenericNotification;
      v40 = swift_allocObject();
      *v39 = v40;
      *(v40 + 16) = 0xD00000000000001BLL;
      *(v40 + 24) = 0x80000001DCA7D190;
      *(v40 + 32) = 16843009;
      goto LABEL_25;
    }

    type metadata accessor for UsoTask_summarise_common_NotebookList();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_snooze_common_Reminder(), swift_dynamicCast()) || (type metadata accessor for UsoTask_update_common_Reminder(), swift_dynamicCast()))
    {

      v43 = v62;
      v62[3] = &type metadata for AnnounceTypeOverrideReminder;
      v43[4] = &protocol witness table for AnnounceTypeOverrideReminder;
      v24 = swift_allocObject();
      *v43 = v24;
      *(v24 + 16) = 0xD000000000000010;
      *(v24 + 24) = 0x80000001DCA7D170;
      *(v24 + 32) = 16777217;
      *(v24 + 40) = MEMORY[0x1E69E7CC0];
      v44 = &outlined read-only object #2 of AnnounceTypeOverrideReminder.init();
    }

    else
    {
      type metadata accessor for UsoTask_summarise_common_Voicemail();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_noVerb_common_UserEntity();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_send_common_Announcement();
          if (swift_dynamicCast() || (type metadata accessor for UsoTask_reply_common_Announcement(), swift_dynamicCast()) || (type metadata accessor for UsoTask_play_common_Announcement(), swift_dynamicCast()) || (type metadata accessor for UsoTask_stop_common_Announcement(), swift_dynamicCast()))
          {

            v47 = v62;
            v62[3] = &type metadata for AnnounceTypeOverrideMitigationForIntercomRequest;
            v47[4] = &protocol witness table for AnnounceTypeOverrideMitigationForIntercomRequest;
            v24 = swift_allocObject();
            *v47 = v24;
            *(v24 + 16) = 0xD00000000000001ALL;
            *(v24 + 24) = 0x80000001DCA7D110;
            *(v24 + 32) = 16777219;
            *(v24 + 40) = MEMORY[0x1E69E7CC0];
            v37 = &outlined read-only object #1 of AnnounceTypeOverrideMitigationForIntercomRequest.init();
          }

          else
          {
            type metadata accessor for UsoTask_noVerb_common_Workout();
            if (!swift_dynamicCast())
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v65);

              v60 = v62;
              v62[4] = 0;
              *v60 = 0u;
              *(v60 + 1) = 0u;
              goto LABEL_21;
            }

            v59 = v62;
            v62[3] = &type metadata for AnnounceTypeOverrideWorkoutReminder;
            v59[4] = &protocol witness table for AnnounceTypeOverrideWorkoutReminder;
            v24 = swift_allocObject();
            *v59 = v24;
            *(v24 + 16) = 0xD000000000000017;
            *(v24 + 24) = 0x80000001DCA7D0F0;
            *(v24 + 32) = 65537;
            *(v24 + 40) = MEMORY[0x1E69E7CC0];
            v37 = &outlined read-only object #1 of AnnounceTypeOverrideWorkoutReminder.init();
          }

          goto LABEL_18;
        }

        v46 = v62;
        v62[3] = &type metadata for AnnounceTypeOverrideIntercom;
        v46[4] = &protocol witness table for AnnounceTypeOverrideIntercom;
        v40 = swift_allocObject();
        *v46 = v40;
        *(v40 + 16) = 0xD000000000000010;
        *(v40 + 24) = 0x80000001DCA7D130;
        *(v40 + 32) = 16777217;
LABEL_25:
        v41 = MEMORY[0x1E69E7CC0];
        *(v40 + 40) = MEMORY[0x1E69E7CC0];
        v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v41);

        *(v40 + 48) = v42;
        goto LABEL_20;
      }

      v45 = v62;
      v62[3] = &type metadata for AnnounceTypeOverrideVoicemail;
      v45[4] = &protocol witness table for AnnounceTypeOverrideVoicemail;
      v24 = swift_allocObject();
      *v45 = v24;
      *(v24 + 16) = 0xD000000000000011;
      *(v24 + 24) = 0x80000001DCA7D150;
      *(v24 + 32) = 1;
      *(v24 + 40) = MEMORY[0x1E69E7CC0];
      v44 = &outlined read-only object #2 of AnnounceTypeOverrideVoicemail.init();
    }

    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
    goto LABEL_13;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v63, &_sypSgMd, &_sypSgMR);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v26, v27))
  {

LABEL_44:

    goto LABEL_46;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  *&v65[0] = v29;
  *v28 = 136315394;
  v30 = UsoTask.baseEntityAsString.getter();
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v65);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;
  v33 = UsoTask.verbString.getter();
  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v65);

  *(v28 + 14) = v35;
  _os_log_impl(&dword_1DC659000, v26, v27, "Unable to run codegen converter on UsoTask %s::%s.", v28, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v29, -1, -1);
  MEMORY[0x1E12A2F50](v28, -1, -1);

LABEL_46:
  v58 = v62;
  v62[4] = 0;
  result = 0.0;
  *v58 = 0u;
  *(v58 + 1) = 0u;
  return result;
}

unint64_t Siri_Nlu_External_UserDialogAct.toUsoTask()()
{
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v2 = result;
    v3 = __CocoaSet.count.getter();
    result = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1E12A1FE0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

LABEL_6:

    return v1;
  }

  __break(1u);
  return result;
}

void __swiftcall AnnounceTypeGlobalOverride.init()(SiriKitRuntime::AnnounceTypeGlobalOverride *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0x6C61626F6C47;
  retstr->name._object = 0xE600000000000000;
  *&retstr->rejectDecision = 16777217;
  retstr->validVerbsForAllEntities._rawValue = &outlined read-only object #0 of AnnounceTypeGlobalOverride.init();
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of AnnounceTypeGlobalOverride.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void *static AnnounceExecutionOverride.executionOverrideDecisionForAnnounceType(announceType:followupUsoTask:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v64);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v61);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v58);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57[0] = v55;
    *v7 = 136316162;
    v8 = UsoTask.baseEntityAsString.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v57);

    *(v7 + 4) = v10;
    v56 = a2;
    *(v7 + 12) = 2080;
    v11 = UsoTask.verbString.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v57);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    v14 = v66;
    v15 = v67;
    __swift_project_boxed_opaque_existential_1(&v64, v66);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v57);

    *(v7 + 24) = v19;
    *(v7 + 32) = 2080;
    v20 = v62;
    v21 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v21 + 48))(v20, v21);
    v22 = MEMORY[0x1E12A16D0]();
    v24 = v23;

    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v57);

    *(v7 + 34) = v25;
    *(v7 + 42) = 2080;
    a2 = v56;
    v26 = v59;
    v27 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v27 + 56))(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v28 = Dictionary.description.getter();
    v30 = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v57);

    *(v7 + 44) = v31;
    _os_log_impl(&dword_1DC659000, v5, v6, "Validating task: %s::%s\nwith AnnounceType: %s\nwith allowed verb set: %s\nand allowed entityToVerb map: %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  }

  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v34 = (*(v33 + 48))(v32, v33);
  v64 = UsoTask.verbString.getter();
  v65 = v35;
  MEMORY[0x1EEE9AC00](v64);
  v54 = &v64;
  v36 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v53, v34);

  if (v36)
  {
    goto LABEL_7;
  }

  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 56))(v38, v39);
  v41 = UsoTask.baseEntityAsString.getter();
  if (!*(v40 + 16))
  {

    goto LABEL_13;
  }

  v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_13:

    v51 = a1[3];
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v51);
    return (*(v52 + 40))(v51, v52);
  }

  v46 = *(*(v40 + 56) + 8 * v43);

  v64 = UsoTask.verbString.getter();
  v65 = v47;
  MEMORY[0x1EEE9AC00](v64);
  v54 = &v64;
  v48 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v53, v46);

  if (v48)
  {
LABEL_7:
    *a2 = 11;
    return result;
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 40))(&v64, v49, v50);
  *a2 = v64;
  return result;
}

uint64_t AnnounceExecutionOverride.getAnnounceTask()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Siri_Nlu_External_Task();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v18;
  v21 = *(v1 + 24);
  if (*(v21 + 16))
  {
    v51 = v17;
    v22 = *(v17 + 16);
    v22(&v49 - v18, v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v3, v19.n128_f64[0]);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.executor);
    (v22)(v15, v20, v3);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = a1;
      v28 = v27;
      v52 = v27;
      *v26 = 136315138;
      (v22)(v12, v15, v3);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      (*(v51 + 8))(v15, v3);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v52);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1DC659000, v24, v25, "Found announceTask in SessionState's activeTasks: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v33 = v28;
      a1 = v50;
      MEMORY[0x1E12A2F50](v33, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    else
    {

      (*(v51 + 8))(v15, v3);
    }

    (*(v51 + 32))(a1, v20, v3);
    return (*(v51 + 56))(a1, 0, 1, v3);
  }

  v34 = *(v1 + 32);
  if (*(v34 + 16))
  {
    v51 = v17;
    v35 = *(v17 + 16);
    v35(v9, v34 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v3, v19.n128_f64[0]);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.executor);
    (v35)(v6, v9, v3);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = a1;
      v41 = v40;
      v52 = v40;
      *v39 = 136315138;
      (v35)(v12, v6, v3);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      (*(v51 + 8))(v6, v3);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v52);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1DC659000, v37, v38, "Found announceTask in SessionState's executedTasks: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      v46 = v41;
      a1 = v50;
      MEMORY[0x1E12A2F50](v46, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    else
    {

      (*(v51 + 8))(v6, v3);
    }

    (*(v51 + 32))(a1, v9, v3);
    return (*(v51 + 56))(a1, 0, 1, v3);
  }

  v47 = *(v17 + 56);

  return v47(a1, 1, 1, v3, v19);
}

BOOL AnnounceExecutionOverride.parseContainsAnnounceIntercomTask()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18[-1] - v4;
  v6 = type metadata accessor for Siri_Nlu_External_Task();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 184))(v9);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Parse does not contain an announce intercom task.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    static AnnounceExecutionOverride.announceTypeForTask(_:)(v18);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMd, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMR);
    (*(v7 + 8))(v11, v6);
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime20AnnounceTypeOverride_pSgMd, &_s14SiriKitRuntime20AnnounceTypeOverride_pSgMR) == &type metadata for AnnounceTypeOverrideMitigationForIntercomRequest;
  }
}

void __swiftcall AnnounceTypeOverrideMessages.init()(SiriKitRuntime::AnnounceTypeOverrideMessages *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000010;
  retstr->name._object = 0x80000001DCA7D1B0;
  *&retstr->rejectDecision = 16842753;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #3 of AnnounceTypeOverrideMessages.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverridePhoneCall.init()(SiriKitRuntime::AnnounceTypeOverridePhoneCall *__return_ptr retstr)
{
  strcpy(retstr, "AnnounceCalls");
  HIWORD(retstr->name._object) = -4864;
  *&retstr->rejectDecision = 65794;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverridePhoneCall.init());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825868, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideGenericNotification.init()(SiriKitRuntime::AnnounceTypeOverrideGenericNotification *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD00000000000001BLL;
  retstr->name._object = 0x80000001DCA7D190;
  *&retstr->rejectDecision = 16843009;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  retstr->validEntityToVerbMap._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v1);
}

void __swiftcall AnnounceTypeOverrideReminder.init()(SiriKitRuntime::AnnounceTypeOverrideReminder *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000010;
  retstr->name._object = 0x80000001DCA7D170;
  *&retstr->rejectDecision = 16777217;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideReminder.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideVoicemail.init()(SiriKitRuntime::AnnounceTypeOverrideVoicemail *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000011;
  retstr->name._object = 0x80000001DCA7D150;
  *&retstr->rejectDecision = 1;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideVoicemail.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideIntercom.init()(SiriKitRuntime::AnnounceTypeOverrideIntercom *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000010;
  retstr->name._object = 0x80000001DCA7D130;
  *&retstr->rejectDecision = 16777217;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  retstr->validEntityToVerbMap._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v1);
}

void __swiftcall AnnounceTypeOverrideMitigationForIntercomRequest.init()(SiriKitRuntime::AnnounceTypeOverrideMitigationForIntercomRequest *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD00000000000001ALL;
  retstr->name._object = 0x80000001DCA7D110;
  *&retstr->rejectDecision = 16777219;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideMitigationForIntercomRequest.init());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825AA0, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  retstr->validEntityToVerbMap._rawValue = v2;
}

void __swiftcall AnnounceTypeOverrideWorkoutReminder.init()(SiriKitRuntime::AnnounceTypeOverrideWorkoutReminder *__return_ptr retstr)
{
  retstr->name._countAndFlagsBits = 0xD000000000000017;
  retstr->name._object = 0x80000001DCA7D0F0;
  *&retstr->rejectDecision = 65537;
  retstr->validVerbsForAllEntities._rawValue = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideWorkoutReminder.init());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825B28, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  retstr->validEntityToVerbMap._rawValue = v2;
}

uint64_t AnnounceExecutionOverride.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  return v0;
}

uint64_t AnnounceExecutionOverride.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance AnnounceExecutionOverride()
{
  (*(**v0 + 152))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t AnnounceTypeGlobalOverride.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t AnnounceUsoVerbOverride.rawValue.getter(char a1)
{
  result = 0x656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0x656C6261736964;
      break;
    case 2:
      result = 0x6B6361626C6C6163;
      break;
    case 3:
      result = 1819042147;
      break;
    case 4:
      result = 0x726577736E61;
      break;
    case 5:
      result = 0x7075676E6168;
      break;
    case 6:
      result = 1684956531;
      break;
    case 7:
      result = 0x796C706572;
      break;
    case 8:
      result = 2036427888;
      break;
    case 9:
      result = 0x74736575716572;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x657A6F6F6E73;
      break;
    case 12:
      result = 0x736972616D6D7573;
      break;
    case 13:
      result = 0x657461647075;
      break;
    case 14:
      result = 1886352499;
      break;
    case 15:
      result = 1684104562;
      break;
    case 16:
      result = 0x746165706572;
      break;
    case 17:
      result = 1852141679;
      break;
    case 18:
      result = 0x657461657263;
      break;
    case 19:
      result = 0x6573756170;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t AnnounceUsoEntity.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x535F6E6F6D6D6F63;
    v6 = 0x6E456F4E5F6F7375;
    if (a1 != 10)
    {
      v6 = 0x575F6E6F6D6D6F63;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x525F6E6F6D6D6F63;
    v8 = 0xD000000000000013;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v1 = 0x4D5F6E6F6D6D6F63;
    v2 = 0xD000000000000013;
    if (a1 == 4)
    {
      v2 = 0x415F6E6F6D6D6F63;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000010;
    if (a1 != 1)
    {
      v3 = 0x455F6E6F6D6D6F63;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeGlobalOverride@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x6C61626F6C47;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 16777217;
  *(a1 + 24) = &outlined read-only object #0 of AnnounceTypeGlobalOverride.init();
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of AnnounceTypeGlobalOverride.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideMessages@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001DCA7D1B0;
  *(a1 + 16) = 16842753;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #3 of AnnounceTypeOverrideMessages.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverridePhoneCall@<X0>(uint64_t a1@<X8>)
{
  strcpy(a1, "AnnounceCalls");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 65794;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverridePhoneCall.init());
  result = outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825868, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  *(a1 + 32) = v2;
  return result;
}

unint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideIntercom@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001DCA7D130;
  *(a1 + 16) = 16777217;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideMitigationForIntercomRequest@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001DCA7D110;
  *(a1 + 16) = 16777219;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideMitigationForIntercomRequest.init());
  result = outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825AA0, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  *(a1 + 32) = v2;
  return result;
}

unint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideGenericNotification@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x80000001DCA7D190;
  *(a1 + 16) = 16843009;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideReminder@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001DCA7D170;
  *(a1 + 16) = 16777217;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideReminder.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideWorkoutReminder@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001DCA7D0F0;
  *(a1 + 16) = 65537;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of AnnounceTypeOverrideWorkoutReminder.init());
  result = outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5825B28, &_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  *(a1 + 32) = v2;
  return result;
}

uint64_t protocol witness for AnnounceTypeOverride.init() in conformance AnnounceTypeOverrideVoicemail@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001DCA7D150;
  *(a1 + 16) = 1;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #2 of AnnounceTypeOverrideVoicemail.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *(a1 + 32) = v2;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceUsoEntity@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AnnounceUsoEntity.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceUsoEntity@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceUsoEntity.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnnounceUsoEntity(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnnounceUsoEntity(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnnounceUsoEntity(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnnounceUsoEntity(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceUsoVerbOverride@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized AnnounceUsoVerbOverride.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceUsoVerbOverride@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceUsoVerbOverride.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag()
{
  result = lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag;
  if (!lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag;
  if (!lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task)
  {
    type metadata accessor for Siri_Nlu_External_Task();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t specialized AnnounceUsoEntity.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceUsoEntity.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized AnnounceUsoVerbOverride.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceUsoEntity and conformance AnnounceUsoEntity()
{
  result = lazy protocol witness table cache variable for type AnnounceUsoEntity and conformance AnnounceUsoEntity;
  if (!lazy protocol witness table cache variable for type AnnounceUsoEntity and conformance AnnounceUsoEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceUsoEntity and conformance AnnounceUsoEntity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride()
{
  result = lazy protocol witness table cache variable for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride;
  if (!lazy protocol witness table cache variable for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceUsoVerbOverride and conformance AnnounceUsoVerbOverride);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceExecutionOverride()
{
  result = type metadata singleton initialization cache for AnnounceExecutionOverride;
  if (!type metadata singleton initialization cache for AnnounceExecutionOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AnnounceExecutionOverride()
{
  type metadata accessor for Siri_Nlu_External_UserParse?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Siri_Nlu_External_UserParse?()
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_UserParse?)
  {
    type metadata accessor for Siri_Nlu_External_UserParse();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Siri_Nlu_External_UserParse?);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t destroy for AnnounceTypeGlobalOverride(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[4];
}

uint64_t initializeWithCopy for AnnounceTypeGlobalOverride(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for AnnounceTypeGlobalOverride(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;

  return a1;
}

uint64_t assignWithTake for AnnounceTypeGlobalOverride(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = *(a1 + 24);

  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnnounceTypeGlobalOverride(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnnounceTypeGlobalOverride(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceUsoEntity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnounceUsoEntity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceUsoVerbOverride(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnounceUsoVerbOverride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

uint64_t AnyFlow.instrumentationId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DCA66060;
  v1 = ObjectIdentifier.hashValue.getter();
  v2 = MEMORY[0x1E69E65A8];
  *(v0 + 56) = MEMORY[0x1E69E6530];
  *(v0 + 64) = v2;
  *(v0 + 32) = v1;

  return String.init(format:_:)();
}

SiriKitRuntime::AppLaunchAffinityScorer __swiftcall AppLaunchAffinityScorer.init()()
{
  v0 = 0x80000001DCA7C9C0;
  v1 = 0xD00000000000001ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized AppLaunchAffinityScorer.score(_:environment:)()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for RRCandidate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v26[0])
  {
    v14 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v14)
    {
      dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    }
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v15 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  static AffinityScorerUtils.topOpenableEntity(candidates:)(v15, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v16 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
    v17 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
    v18 = v8;
LABEL_19:
    outlined destroy of ReferenceResolutionClientProtocol?(v18, v16, v17);
    return 5;
  }

  (*(v10 + 32))(v13, v8, v9);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v1 + 8))(v4, v0);
  static UsoEntity_CodeGenConverter.convert(entity:)();

  if (!v26[3])
  {
    (*(v10 + 8))(v13, v9);
LABEL_18:
    v16 = &_sypSgMd;
    v17 = &_sypSgMR;
    v18 = v26;
    goto LABEL_19;
  }

  outlined init with copy of Any?(v26, v25);
  type metadata accessor for UsoEntity_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoEntity_common_Window();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoEntity_common_AppEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      }

      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  outlined destroy of ReferenceResolutionClientProtocol?(v26, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "AppLaunchAffinityScorer found valid Window/App entity for open::uso_NoEntity parse", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  return 3;
}

{
  v20 = type metadata accessor for RREntity();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RRCandidate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriEnvironment.salientEntitiesProvider.getter();
  v9 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v19 = *(v9 + 16);
  if (!v19)
  {
LABEL_9:

    return 5;
  }

  v10 = 0;
  v18 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v17[1] = v5 + 16;
  v11 = (v0 + 8);
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    (*(v5 + 16))(v8, v18 + *(v5 + 72) * v10, v4);
    RRCandidate.entity.getter();
    (*(v5 + 8))(v8, v4);
    RREntity.usoEntity.getter();
    (*v11)(v3, v20);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v23)
    {
      break;
    }

LABEL_3:
    ++v10;
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_sypSgMd, &_sypSgMR);
    if (v19 == v10)
    {
      goto LABEL_9;
    }
  }

  outlined init with copy of Any?(v22, v21);
  type metadata accessor for UsoEntity_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoEntity_common_Window();
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      goto LABEL_3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for executor == -1)
  {
    goto LABEL_11;
  }

LABEL_15:
  swift_once();
LABEL_11:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "AppLaunchAffinityScorer found valid app/window entity for close::common_App parse", v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  return 3;
}

uint64_t specialized AppLaunchAffinityScorer.score(input:environment:)(uint64_t a1)
{
  v31[1] = a1;
  v1 = type metadata accessor for USOParse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Parse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31[0] = v6;
    v15 = v5;
    v16 = v1;
    v17 = v2;
    v18 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "AppLaunchAffinityScorer running", v14, 2u);
    v19 = v18;
    v2 = v17;
    v1 = v16;
    v5 = v15;
    v6 = v31[0];
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  Input.parse.getter();
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x1E69D0168])
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "AppLaunchAffinityScorer got unimplemented parse", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return 2;
  }

  (*(v7 + 96))(v10, v6);
  (*(v2 + 32))(v5, v10, v1);
  if (specialized static AffinityScorerUtils.getTask(_:)())
  {
    static UsoTask_CodegenConverter.convert(task:)();
    if (v34)
    {
      outlined init with copy of Any?(v33, v32);
      type metadata accessor for UsoTask_open_uso_NoEntity();
      if (swift_dynamicCast())
      {
        v20 = specialized AppLaunchAffinityScorer.score(_:environment:)();
        goto LABEL_10;
      }

      type metadata accessor for UsoTask_close_uso_NoEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

        if (v31[2] && (v27 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v27))
        {
          dispatch thunk of CodeGenBase.usoIdentifiers.getter();

          (*(v2 + 8))(v5, v1);
        }

        else
        {
          (*(v2 + 8))(v5, v1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v32);
LABEL_31:
        outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
        return 2;
      }

      type metadata accessor for UsoTask_close_common_App();
      if (swift_dynamicCast())
      {
        v20 = specialized AppLaunchAffinityScorer.score(_:environment:)();
LABEL_10:
        v21 = v20;
        v22 = v20;

        (*(v2 + 8))(v5, v1);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        if (v22 != 5)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
          return v21;
        }

        goto LABEL_31;
      }

      type metadata accessor for UsoTask_open_common_Setting();
      if (swift_dynamicCast() || (type metadata accessor for UsoTask_enable_common_Setting(), swift_dynamicCast()))
      {
        (*(v2 + 8))(v5, v1);

        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
        return 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "AppLaunchAffinityScorer got unimplemented USO parse", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    goto LABEL_31;
  }

  (*(v2 + 8))(v5, v1);
  return 2;
}

uint64_t AppResolutionResult.selectedApp.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppResolutionResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69CE248] || v8 == *MEMORY[0x1E69CE258])
  {
    (*(v3 + 96))(v7, v2);
    return *v7;
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    return 0;
  }
}

SiriKitRuntime::AppResolutionType_optional __swiftcall AppResolutionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppResolutionType.init(rawValue:), v3);

  v7 = 13;
  if (v5 < 0xD)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t AppResolutionType.rawValue.getter()
{
  result = 0x6E49746F4E707041;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6465727265666E49;
      break;
    case 5:
      v2 = 9;
      goto LABEL_14;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x746C7561666544;
      break;
    case 8:
      v2 = 5;
LABEL_14:
      result = v2 | 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x6E776F6E6B6E55;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0x656C655372657355;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppResolutionType(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AppResolutionType.rawValue.getter();
  v4 = v3;
  if (v2 == AppResolutionType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type AppResolutionType and conformance AppResolutionType()
{
  result = lazy protocol witness table cache variable for type AppResolutionType and conformance AppResolutionType;
  if (!lazy protocol witness table cache variable for type AppResolutionType and conformance AppResolutionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppResolutionType and conformance AppResolutionType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppResolutionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AppResolutionType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppResolutionType()
{
  v2 = *v0;
  AppResolutionType.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppResolutionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AppResolutionType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AppResolutionType@<X0>(unint64_t *a1@<X8>)
{
  result = AppResolutionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [AppResolutionType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AppResolutionType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AppResolutionType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime17AppResolutionTypeOGMd, &_sSay14SiriKitRuntime17AppResolutionTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AppResolutionType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppResolutionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppResolutionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *AppShortcutExpansionContext.emptyContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  return &static AppShortcutExpansionContext.emptyContext;
}

uint64_t AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:), v4, 0);
}

uint64_t AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = v0[11];
    v6 = v1 + 32;
    v5 = *(v1 + 32);
    v4 = *(v6 + 8);

    v7 = v0[1];

    return v7(v2, v5, v4);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:);
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[8];

    return AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)(v12, v10);
  }
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;

  outlined consume of AppShortcutExpansionContext?(v6);
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[1];

  return v12(v11, v9, v10);
}

uint64_t AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 96);
  v6 = *(*v3 + 88);
  v8 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = a3;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:), v6, 0);
}

unint64_t ConditionalIntentMetadataStore.debugDescription.getter()
{
  _StringGuts.grow(_:)(29);

  v3 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSbGGMd, &_sSDySSSDySSSbGGMR);
  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v1);

  return 0xD00000000000001BLL;
}

Swift::Bool __swiftcall ConditionalIntentMetadataStore.isConditionalIntent(appBundleId:actionId:)(Swift::String appBundleId, Swift::String actionId)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (object = actionId._object, countAndFlagsBits = actionId._countAndFlagsBits, v6 = specialized __RawDictionaryStorage.find<A>(_:)(appBundleId._countAndFlagsBits, appBundleId._object), (v7 & 1) != 0) && *(*(*(v3 + 56) + 8 * v6) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall ConditionalIntentMetadataStore.isPersistedConditionalIntent(appBundleId:actionId:)(Swift::String appBundleId, Swift::String actionId)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  object = actionId._object;
  countAndFlagsBits = actionId._countAndFlagsBits;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(appBundleId._countAndFlagsBits, appBundleId._object);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v3 + 56) + 8 * v6);
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if (v10)
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t IntentStatesStore.__allocating_init(conditionalIntentsStates:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t IntentStatesStore.debugDescription.getter()
{
  _StringGuts.grow(_:)(21);

  v3 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSo8NSNumberCGGMd, &_sSDySSSDySSSo8NSNumberCGGMR);
  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v1);

  return 0xD000000000000013;
}

Swift::Bool __swiftcall IntentStatesStore.isConditionallyActive(appBundleId:actionId:)(Swift::String appBundleId, Swift::String actionId)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16))
  {
    object = actionId._object;
    countAndFlagsBits = actionId._countAndFlagsBits;
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(appBundleId._countAndFlagsBits, appBundleId._object);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);
      if (*(v8 + 16))
      {

        v9 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);

          v12 = [v11 BOOLValue];

          return v12;
        }
      }
    }
  }

  return 0;
}

uint64_t IntentStatesStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t one-time initialization function for emptyContext()
{
  type metadata accessor for ConditionalIntentMetadataStore();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for IntentStatesStore();
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  *(result + 16) = v1;
  static AppShortcutExpansionContext.emptyContext = v3;
  *algn_1EE15DC78 = v0;
  qword_1EE15DC80 = result;
  return result;
}

{
  if (one-time initialization token for emptySessionContext != -1)
  {
    swift_once();
  }

  v0 = static LinkExpansionContext.SessionContext.emptySessionContext;
  v1 = one-time initialization token for emptyTurnContext;

  if (v1 != -1)
  {
    swift_once();
  }

  static LinkExpansionContext.emptyContext = v0;
  unk_1ECCA1100 = static LinkExpansionContext.TurnContext.emptyTurnContext;
}

uint64_t static AppShortcutExpansionContext.emptyContext.getter()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  v0 = static AppShortcutExpansionContext.emptyContext;

  return v0;
}

unint64_t AppShortcutExpansionContext.debugDescription.getter()
{
  _StringGuts.grow(_:)(26);

  v0 = Set.description.getter();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7D2C0);

  _StringGuts.grow(_:)(23);

  type metadata accessor for ConditionalIntentMetadataStore();

  v1 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v1);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA7D2E0);

  _StringGuts.grow(_:)(28);

  type metadata accessor for IntentStatesStore();

  v2 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA7D300);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  return 0xD00000000000001CLL;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppShortcutExpansionContext()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return AppShortcutExpansionContext.debugDescription.getter();
}

uint64_t AppShortcutExpansionContextBuilder.cachedConditionalIntentsMetadata.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t AppShortcutExpansionContextBuilder.cachedConditionalIntentsMetadata.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t AppShortcutExpansionContextBuilder.appShortcutExpansionContext.getter()
{
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  outlined copy of AppShortcutExpansionContext?(v1);
  return v1;
}

uint64_t AppShortcutExpansionContextBuilder.appShortcutExpansionContext.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return outlined consume of AppShortcutExpansionContext?(v7);
}

void *AppShortcutExpansionContextBuilder.__allocating_init(metadataProvider:appShortcutStateProvider:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(v11, v19, v4, v6, v13, v5, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

void *AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a2[3];
  v15 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  v17 = *(*(v14 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(v12, v20, v3, v7, v14, v6, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

uint64_t AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:), v4, 0);
}

uint64_t AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[AppShortcutExpansionContext] Collecting TurnContext", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[13];
  v6 = v0[11];

  v0[16] = specialized AppShortcutExpansionContextBuilder.extractOnScreenBundleIDs(from:)(v6);
  swift_beginAccess();
  v7 = v0[13];
  if (*(*(*(v5 + 16) + 16) + 16))
  {
    v8 = v7[14];
    v9 = v7[15];
    __swift_project_boxed_opaque_existential_1(v7 + 11, v8);
    v10 = v7[2];
    v0[19] = v10;
    v11 = *(v9 + 8);

    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:);
    v14 = v0[12];

    return v21(v14, v10, v8, v9);
  }

  else
  {
    v16 = v7[9];
    v17 = v7[10];
    __swift_project_boxed_opaque_existential_1(v7 + 6, v16);
    v18 = *(v17 + 16);
    v22 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[17] = v20;
    *v20 = v0;
    v20[1] = AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:);

    return v22(v16, v17);
  }
}

{
  v1 = v0[13];
  v2 = specialized AppShortcutExpansionContextBuilder.extractActionMetadata(actionsMetadata:)(v0[18]);

  v3 = *(v1 + 16);
  *(v1 + 16) = v2;

  v4 = v0[13];
  v5 = v4[14];
  v6 = v4[15];
  __swift_project_boxed_opaque_existential_1(v4 + 11, v5);
  v7 = v4[2];
  v0[19] = v7;
  v8 = *(v6 + 8);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:);
  v11 = v0[12];

  return v13(v11, v7, v5, v6);
}

{
  v20 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];

  type metadata accessor for IntentStatesStore();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = *(v5 + 16);
  swift_retain_n();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v0[8] = v10;
    v0[9] = v7;
    v0[10] = v6;

    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v8, v9, "[AppShortcutExpansionContext] TurnContext: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v16 = v0[1];
  v17 = v0[16];

  return v16(v17, v7, v6);
}

uint64_t AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:)(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:), v3, 0);
}

{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](AppShortcutExpansionContextBuilder.collectTurnContext(rrCandidates:appShortcutTargets:), v4, 0);
}

void *AppShortcutExpansionContextBuilder.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  outlined consume of AppShortcutExpansionContext?(v0[3]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  return v0;
}

uint64_t AppShortcutExpansionContextBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  outlined consume of AppShortcutExpansionContext?(v0[3]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);

  return swift_deallocClassInstance();
}

uint64_t outlined copy of AppShortcutExpansionContext?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *specialized AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[9] = a4;
  a3[10] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 6);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  a3[14] = a5;
  a3[15] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_0(a3 + 11);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  type metadata accessor for ConditionalIntentMetadataStore();
  a3[4] = 0;
  a3[5] = 0;
  a3[3] = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x1E69E7CC8];
  a3[2] = v15;
  return a3;
}

uint64_t destroy for AppShortcutExpansionContext(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];
}

void *initializeBufferWithCopyOfBuffer for AppShortcutExpansionContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for AppShortcutExpansionContext(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a2[2];
  v7 = a1[2];
  a1[2] = v6;

  return a1;
}

uint64_t *assignWithTake for AppShortcutExpansionContext(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutExpansionContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t specialized AppShortcutExpansionContextBuilder.extractOnScreenBundleIDs(from:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v132 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v131 = &v99 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v99 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v99 - v11;
  v135 = type metadata accessor for RRMetadata();
  v13 = *(v135 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v99 - v18;
  v127 = type metadata accessor for RREntity();
  v20 = *(v127 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v122 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v99 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v99 - v26;
  v27 = type metadata accessor for RRCandidate();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v121 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v105 = &v99 - v31;
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v32);
  v115 = &v99 - v36;
  v37 = *(a1 + 16);
  v126 = v33;
  v119 = v37;
  v101 = v34;
  v100 = v20;
  if (v37)
  {
    v134 = v16;
    v38 = 0;
    v40 = *(v34 + 16);
    v39 = v34 + 16;
    v117 = v40;
    v102 = (*(v39 + 64) + 32) & ~*(v39 + 64);
    v116 = a1 + v102;
    v123 = *(v39 + 56);
    v124 = (v20 + 8);
    v113 = (v39 - 8);
    v140 = (v13 + 32);
    v141 = v13 + 16;
    v139 = (v13 + 88);
    v138 = *MEMORY[0x1E69D27E8];
    v128 = (v13 + 96);
    v129 = (v13 + 8);
    v137 = (v3 + 32);
    v110 = *MEMORY[0x1E69D2918];
    v109 = (v3 + 104);
    v130 = v3;
    v108 = (v3 + 8);
    v104 = *MEMORY[0x1E69D28F8];
    v118 = v39;
    v103 = (v39 + 16);
    v107 = MEMORY[0x1E69E7CC0];
    v136 = v2;
    v41 = v115;
    v42 = v33;
    v106 = v12;
    v111 = v13;
    while (1)
    {
      v125 = v38;
      v117(v41, v116 + v123 * v38, v42, v35);
      v43 = v120;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      v44 = *v124;
      (*v124)(v43, v127);
      v45 = UsoTask.verbString.getter();
      v47 = v46;

      if (one-time initialization token for kUsoCommonAppEntityName != -1)
      {
        swift_once();
      }

      if (v45 == kUsoCommonAppEntityName._countAndFlagsBits && v47 == kUsoCommonAppEntityName._object)
      {
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v42 = v126;
        if ((v49 & 1) == 0)
        {
          (*v113)(v41, v126);
          goto LABEL_4;
        }
      }

      v50 = v112;
      RRCandidate.entity.getter();
      v51 = RREntity.metadata.getter();
      v44(v50, v127);
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v114 = v51;
        v54 = v51 + v53;
        v55 = *(v13 + 72);
        v57 = MEMORY[0x1E69E7CC0];
        v58 = v135;
        v59 = v136;
        v60 = v134;
        v133 = *(v13 + 16);
        v56 = v133;
        v133(v19, v54, v135);
        while (1)
        {
          (*v140)(v60, v19, v58);
          v61 = (*v139)(v60, v58);
          if (v61 == v138)
          {
            v62 = v19;
            (*v128)(v60, v58);
            v63 = *v137;
            v64 = v132;
            (*v137)(v132, v60, v59);
            v65 = v59;
            v66 = v131;
            v63(v131, v64, v65);
            v63(v142, v66, v65);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
            }

            v68 = v57[2];
            v67 = v57[3];
            v60 = v134;
            if (v68 >= v67 >> 1)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1, v57);
            }

            v57[2] = v68 + 1;
            v69 = v57 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v68;
            v59 = v136;
            v63(v69, v142, v136);
            v19 = v62;
            v58 = v135;
            v56 = v133;
          }

          else
          {
            (*v129)(v60, v58);
          }

          v54 += v55;
          if (!--v52)
          {
            break;
          }

          v56(v19, v54, v58);
        }

        v12 = v106;
      }

      else
      {

        v57 = MEMORY[0x1E69E7CC0];
      }

      v70 = *v109;
      v71 = v136;
      (*v109)(v12, v110, v136);
      v72 = specialized Sequence<>.contains(_:)(v12, v57);
      v73 = *v108;
      (*v108)(v12, v71);
      if (v72)
      {
        v70(v12, v104, v71);
        v74 = specialized Sequence<>.contains(_:)(v12, v57);

        v73(v12, v71);
        if (!v74)
        {
          v75 = *v103;
          v42 = v126;
          (*v103)(v105, v115, v126);
          v76 = v107;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 16) + 1, 1);
            v76 = v143;
          }

          v79 = *(v76 + 16);
          v78 = *(v76 + 24);
          v13 = v111;
          if (v79 >= v78 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1);
            v76 = v143;
          }

          *(v76 + 16) = v79 + 1;
          v107 = v76;
          v75((v76 + v102 + v79 * v123), v105, v42);
          v41 = v115;
          goto LABEL_4;
        }

        v41 = v115;
        v42 = v126;
        (*v113)(v115, v126);
      }

      else
      {
        v41 = v115;
        v42 = v126;
        (*v113)(v115, v126);
      }

      v13 = v111;
LABEL_4:
      v38 = v125 + 1;
      if (v125 + 1 == v119)
      {
        goto LABEL_38;
      }
    }
  }

  v107 = MEMORY[0x1E69E7CC0];
  v42 = v33;
LABEL_38:
  v80 = *(v107 + 16);
  if (v80)
  {
    v143 = MEMORY[0x1E69E7CC0];
    v81 = v107;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
    v82 = v143;
    v83 = v101 + 16;
    v84 = *(v101 + 16);
    v85 = v81 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v141 = *(v101 + 72);
    v142 = v84;
    v140 = (v100 + 8);
    v86 = (v101 + 8);
    do
    {
      v87 = v121;
      v88 = v83;
      (v142)(v121, v85, v42);
      v89 = v122;
      RRCandidate.entity.getter();
      v90 = RREntity.appBundleId.getter();
      v91 = v42;
      v93 = v92;
      (*v140)(v89, v127);
      (*v86)(v87, v91);
      v143 = v82;
      v95 = *(v82 + 16);
      v94 = *(v82 + 24);
      if (v95 >= v94 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
        v82 = v143;
      }

      *(v82 + 16) = v95 + 1;
      v96 = v82 + 16 * v95;
      *(v96 + 32) = v90;
      *(v96 + 40) = v93;
      v85 += v141;
      --v80;
      v42 = v126;
      v83 = v88;
    }

    while (v80);
  }

  else
  {

    v82 = MEMORY[0x1E69E7CC0];
  }

  v97 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v82);

  return v97;
}

uint64_t specialized AppShortcutExpansionContextBuilder.extractActionMetadata(actionsMetadata:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *MEMORY[0x1E69AC358];
  v64 = a1;
  v65 = v6;

  v59 = 0;
  v7 = 0;
  v60 = MEMORY[0x1E69E7CC8];
  v62 = v5;
  v63 = v1;
LABEL_6:
  if (v4)
  {
    v8 = v7;
LABEL_11:
    v66 = (v4 - 1) & v4;
    v9 = __clz(__rbit64(v4)) | (v8 << 6);
    v10 = (*(v64 + 48) + 16 * v9);
    v11 = *(*(v64 + 56) + 8 * v9);
    v12 = v10[1];
    v61 = *v10;
    v13 = v11 + 64;
    v14 = 1 << *(v11 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v11 + 64);
    v17 = (v14 + 63) >> 6;
    v67 = v12;

    v71 = v11;

    v18 = 0;
    v69 = v11 + 64;
    v70 = v17;
    while (v16)
    {
LABEL_22:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v18 << 6);
      v22 = *(v71 + 56);
      v23 = (*(v71 + 48) + 16 * v21);
      v24 = v23[1];
      v68 = *v23;
      v25 = *(v22 + 8 * v21);

      v26 = v25;
      v27 = [v26 systemProtocols];
      type metadata accessor for LNSystemProtocol();
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = [objc_opt_self() conditionallyEnabledProtocol];
      v72 = v29;
      MEMORY[0x1EEE9AC00](v29);
      v57[2] = &v72;
      v30 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v57, v28);

      if (v30)
      {
        v31 = [v26 systemProtocolMetadata];
        type metadata accessor for LNSystemProtocolIdentifier(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
        lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier();
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v32 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v65), (v34 & 1) != 0))
        {
          v35 = *(*(v32 + 56) + 8 * v33);
          swift_unknownObjectRetain();

          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          v37 = v24;
          if (v36)
          {
            v38 = [v36 persistState];
            _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v59);
            v39 = v60;
            LODWORD(v59) = swift_isUniquelyReferenced_nonNull_native();
            v72 = v39;
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v67);
            v42 = v39[2];
            v43 = (v40 & 1) == 0;
            v44 = v42 + v43;
            if (__OFADD__(v42, v43))
            {
              goto LABEL_40;
            }

            v45 = v39[3];
            v58 = v38;
            if (v45 >= v44)
            {
              if ((v59 & 1) == 0)
              {
                v55 = v40;
                specialized _NativeDictionary.copy()();
                LOBYTE(v40) = v55;
              }
            }

            else
            {
              LODWORD(v60) = v40;
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v59);
              v46 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v67);
              v47 = v40 & 1;
              LOBYTE(v40) = v60;
              if ((v60 & 1) != v47)
              {
                goto LABEL_41;
              }

              v41 = v46;
            }

            v48 = v41;
            v49 = v72;
            if ((v40 & 1) == 0)
            {
              v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
              specialized _NativeDictionary._insert(at:key:value:)(v41, v61, v67, v50, v49);
            }

            v60 = v49;
            v51 = v49[7];
            v52 = *(v51 + 8 * v48);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v72 = *(v51 + 8 * v48);
            *(v51 + 8 * v48) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v68, v37, isUniquelyReferenced_nonNull_native);

            v54 = *(v51 + 8 * v48);
            *(v51 + 8 * v48) = v72;
            swift_unknownObjectRelease();

            v59 = specialized thunk for @callee_guaranteed () -> (@owned [String : Bool]);
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      else
      {
      }

      v13 = v69;
      v17 = v70;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v7 = v8;
        v5 = v62;
        v1 = v63;
        v4 = v66;
        goto LABEL_6;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v59);
        type metadata accessor for ConditionalIntentMetadataStore();
        result = swift_allocObject();
        *(result + 16) = v60;
        return result;
      }

      v4 = *(v1 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for LNSystemProtocol();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier;
  if (!lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier)
  {
    type metadata accessor for LNSystemProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier);
  }

  return result;
}

void *AppShortcutParseExpansion.__allocating_init(appShortcutExpansionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t AppShortcutParseExpansion.appShortcutExpansionContext.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return v1;
}

void *AppShortcutParseExpansion.init(appShortcutExpansionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t closure #1 in AppShortcutParseExpansion.expandExactMatchParses(nlParse:appShortcutTargets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v73 = a3;
  v68 = a2;
  v5 = type metadata accessor for Siri_Nlu_External_Parser();
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62[-v11];
  v69 = type metadata accessor for Siri_Nlu_External_UserParse();
  v13 = *(v69 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  v76 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v71 = *(a1 + 32);
  v70 = *(a1 + 36);
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v20 = swift_beginAccess();
  v21 = static LinkFeature.forceEnabled;
  if (*(static LinkFeature.forceEnabled + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v23 & 1) != 0))
  {
    if (*(*(v21 + 56) + v22) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v75[3] = &type metadata for LinkFeature;
    v75[4] = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v24 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    if ((v24 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v66 = v5;
  v25 = v17;
  v26 = v68;
  v27 = *(v68 + 24);

  v67 = v25;
  v28._countAndFlagsBits = v25;
  v28._object = v76;
  v29._countAndFlagsBits = v18;
  v29._object = v19;
  if (ConditionalIntentMetadataStore.isConditionalIntent(appBundleId:actionId:)(v28, v29))
  {
    v30 = v18;
    v31 = v19;
    v64 = v27;
    v32 = *(v26 + 32);

    v33._countAndFlagsBits = v67;
    v34 = v76;
    v33._object = v76;
    v35._countAndFlagsBits = v30;
    v35._object = v19;
    v65 = v30;
    v36 = IntentStatesStore.isConditionallyActive(appBundleId:actionId:)(v33, v35);

    if (!v36)
    {
      v57 = v65;
      v58 = v67;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.executor);
      v60 = v76;

      v61 = v31;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_24;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v75);
      *(v49 + 12) = 2080;
      *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v61, v75);
      v51 = "[AppShortcutExpansion] Dropping disabled conditional intent: %s - %s";
      goto LABEL_23;
    }

    v37 = v67;
    v38._countAndFlagsBits = v67;
    v38._object = v34;
    v39._countAndFlagsBits = v65;
    v39._object = v31;
    v63 = ConditionalIntentMetadataStore.isPersistedConditionalIntent(appBundleId:actionId:)(v38, v39);
    v40 = specialized Set.contains(_:)(v37, v34, *(v26 + 16));
    v41 = v65;
    if (!v63 && (v40 & 1) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.executor);
      v43 = v76;

      v44 = v31;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v67;
      if (!v47)
      {
        goto LABEL_24;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v43, v75);
      *(v49 + 12) = 2080;
      *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, v75);
      v51 = "[AppShortcutExpansion] Dropping non persisted conditional intent as the bundle isn't on screen: %s - %s";
LABEL_23:
      _os_log_impl(&dword_1DC659000, v45, v46, v51, v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v50, -1, -1);
      MEMORY[0x1E12A2F50](v49, -1, -1);
LABEL_24:

      v54 = 1;
      v53 = v74;
      goto LABEL_18;
    }
  }

  v5 = v66;
LABEL_17:
  (*(v13 + 16))(v16, v73, v69);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v72 + 8))(v8, v5);
  v52 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  (*(*(v52 - 8) + 56))(v12, 0, 1, v52);

  LOBYTE(v75[0]) = v70;
  v53 = v74;
  USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
  v54 = 0;
LABEL_18:
  v55 = type metadata accessor for USOParse();
  return (*(*(v55 - 8) + 56))(v53, v54, 1, v55);
}

uint64_t AppShortcutParseExpansion.expand(nlParse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Siri_Nlu_External_Parser();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29[-v11];
  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = Siri_Nlu_External_UserParse.appShortcuts.getter();
  if (*(v18 + 2))
  {
    MEMORY[0x1EEE9AC00](v18);
    *&v29[-16] = v2;
    *&v29[-8] = a1;
    v20 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in AppShortcutParseExpansion.expandExactMatchParses(nlParse:appShortcutTargets:), &v29[-32], v19);
  }

  else
  {

    v21 = Siri_Nlu_External_UserParse.generalizedAppShortcuts.getter();
    if (!*(v21 + 2))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR);
      v25 = *(type metadata accessor for USOParse() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DCA66060;
      (*(v14 + 16))(v17, a1, v13);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*(v5 + 8))(v8, v4);
      v28 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      return v23;
    }

    MEMORY[0x1EEE9AC00](v21);
    *&v29[-16] = a1;
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime28GeneralizedAppShortcutTargetVG_0dE4Flow8USOParseVs5NeverOTg5(partial apply for closure #1 in AppShortcutParseExpansion.expand(nlParse:), &v29[-32], v22);
  }

  v23 = v20;

  return v23;
}

uint64_t closure #1 in AppShortcutParseExpansion.expand(nlParse:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 4);
  v16 = *(a1 + 20);
  (*(v17 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v18 = *MEMORY[0x1E69D0970];
  v19 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v8, v18, v19);
  (*(v20 + 56))(v8, 0, 1, v19);

  v23 = v16;
  return USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
}

void *AppShortcutParseExpansion.deinit()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return v0;
}

uint64_t AppShortcutParseExpansion.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return (specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:))(a1, a2);
}

uint64_t AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return (specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:))(a1, a2);
}

uint64_t specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:), 0, 0);
}

uint64_t specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:)()
{
  v90 = v0;
  v89[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(*(v0 + 160) + 16);
    v5 = (v1 + 56);
    v88 = MEMORY[0x1E69E7CC8];
    v86 = v4;
    while (1)
    {
      if (!*(v4 + 16))
      {
        goto LABEL_5;
      }

      v8 = *(v5 - 3);
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if (v12)
      {
        if (*(*(*(v4 + 56) + 8 * v11) + 16))
        {
          v13 = *(*(v4 + 56) + 8 * v11);

          v87 = v9;
          specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
          v15 = v14;

          if (v15)
          {
            break;
          }
        }
      }

LABEL_4:

LABEL_5:
      v5 += 5;
      if (!--v2)
      {
        goto LABEL_26;
      }
    }

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89[0] = v88;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v19 = *(v88 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_53;
    }

    v22 = v17;
    if (*(v88 + 24) >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v88 = v89[0];
      }

      v25 = v18;
      if ((v22 & 1) == 0)
      {
LABEL_14:
        *(v88 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v26 = (*(v88 + 48) + 16 * v25);
        *v26 = v8;
        v26[1] = v7;
        *(*(v88 + 56) + 8 * v25) = MEMORY[0x1E69E7CC0];
        v27 = *(v88 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_54;
        }

        *(v88 + 16) = v29;
        goto LABEL_20;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v88 = v89[0];
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v22 & 1) != (v24 & 1))
      {
        v85 = *MEMORY[0x1E69E9840];

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v25 = v23;
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_20:
    v30 = *(v88 + 56);
    v31 = *(v30 + 8 * v25);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8 * v25) = v31;
    if (v32)
    {
      v33 = v25;
    }

    else
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      v33 = v25;
      *(v30 + 8 * v25) = v31;
    }

    v35 = *(v31 + 2);
    v34 = *(v31 + 3);
    if (v35 >= v34 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
      *(v30 + 8 * v33) = v31;
    }

    v4 = v86;
    *(v31 + 2) = v35 + 1;
    v6 = &v31[16 * v35];
    *(v6 + 4) = v87;
    *(v6 + 5) = v10;
    v3 = specialized thunk for @callee_guaranteed () -> (@owned [String]);
    goto LABEL_4;
  }

  v88 = MEMORY[0x1E69E7CC8];
LABEL_26:
  v36 = 0;
  v37 = v0 + 80;
  *(v0 + 168) = v3;
  *(v0 + 176) = v88;
  v38 = *(v88 + 32);
  *(v0 + 256) = v38;
  v39 = 1 << v38;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v88 + 64);
  *(v0 + 184) = MEMORY[0x1E69E7CC8];
  v42 = 0x1E69AC000uLL;
  v43 = off_1E8646000;
  v44 = off_1E8646000;
  while (2)
  {
    if (v41)
    {
      v45 = *(v0 + 176);
      goto LABEL_38;
    }

    do
    {
      v46 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v45 = *(v0 + 176);
      if (v46 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        v74 = *(v0 + 168);

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v74);
        v75 = *(v0 + 8);
        v76 = *(v0 + 184);
        v77 = *MEMORY[0x1E69E9840];

        return v75(v76);
      }

      v41 = *(v45 + 8 * v46 + 64);
      ++v36;
    }

    while (!v41);
    v36 = v46;
LABEL_38:
    *(v0 + 192) = v41;
    *(v0 + 200) = v36;
    v47 = __clz(__rbit64(v41)) | (v36 << 6);
    v48 = (*(v45 + 48) + 16 * v47);
    v49 = *v48;
    *(v0 + 208) = *v48;
    v50 = v48[1];
    *(v0 + 216) = v50;
    v51 = *(*(v45 + 56) + 8 * v47);
    v52 = *(v42 + 3688);
    v53 = objc_opt_self();

    v54 = MEMORY[0x1E12A1410](v49, v50);
    v55 = [v53 v43[451]];
    *(v0 + 224) = v55;

    *(v0 + 80) = 0;
    v56 = [v55 v44[452]];
    *(v0 + 232) = v56;
    v57 = *(v0 + 80);
    if (!v56)
    {
      v58 = v57;

      v59 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v60 = *(v0 + 216);
      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.executor);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      v64 = os_log_type_enabled(v62, v63);
      v66 = *(v0 + 216);
      v65 = *(v0 + 224);
      if (v64)
      {
        v67 = v44;
        v68 = *(v0 + 208);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v89[0] = v70;
        *v69 = 136315138;
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v66, v89);

        *(v69 + 4) = v71;
        v44 = v67;
        _os_log_impl(&dword_1DC659000, v62, v63, "[AppShortcuts] Cannot fetch intent state for: App - %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        v72 = v70;
        v43 = off_1E8646000;
        MEMORY[0x1E12A2F50](v72, -1, -1);
        v73 = v69;
        v37 = v0 + 80;
        v42 = 0x1E69AC000;
        MEMORY[0x1E12A2F50](v73, -1, -1);
      }

      else
      {
      }

      v36 = *(v0 + 200);
      v41 = (*(v0 + 192) - 1) & *(v0 + 192);
      continue;
    }

    break;
  }

  v79 = v56;
  v80 = v57;
  v81 = v37;
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 240) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  v83 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v83;
  [v79 fetchStateForAppIntentIdentifiers:isa completionHandler:v81];
  v84 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  }

  else
  {
    v3 = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v77 = v0;
  v76[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 80) = v3;
  v6 = v0 + 80;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
  v9 = *(v3 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    goto LABEL_35;
  }

  v13 = v8;
  if (*(*(v0 + 184) + 24) >= v12)
  {
    v75 = v0 + 144;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = v7;
      specialized _NativeDictionary.copy()();
      v7 = v20;
    }
  }

  else
  {
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
    v16 = *(v0 + 80);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    if ((v13 & 1) != (v17 & 1))
    {
      v18 = *MEMORY[0x1E69E9840];

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v75 = v0 + 144;
    v6 = v0 + 80;
  }

  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v23 = *(v0 + 216);
  if (v13)
  {
    v24 = v7;
    v25 = *(v0 + 216);

    v26 = *v6;
    v27 = *(*v6 + 56);
    v28 = *(v27 + 8 * v24);
    *(v27 + 8 * v24) = v4;
  }

  else
  {
    v29 = *(v0 + 208);
    v26 = *(v0 + 80);
    v26[(v7 >> 6) + 8] |= 1 << v7;
    v30 = (v26[6] + 16 * v7);
    *v30 = v29;
    v30[1] = v23;
    *(v26[7] + 8 * v7) = v4;

    v31 = v26[2];
    v11 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v11)
    {
      goto LABEL_36;
    }

    v26[2] = v32;
  }

  v33 = *(v0 + 200);
  v34 = (*(v0 + 192) - 1) & *(v0 + 192);
  *(v0 + 184) = v26;
  v35 = 0x1E69AC000uLL;
  v36 = off_1E8646000;
  while (2)
  {
    if (v34)
    {
      v37 = *(v0 + 176);
      goto LABEL_23;
    }

    do
    {
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v37 = *(v0 + 176);
      if (v38 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        v66 = *(v0 + 168);

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v66);
        v67 = *(v0 + 8);
        v68 = *(v0 + 184);
        v69 = *MEMORY[0x1E69E9840];

        return v67(v68);
      }

      v34 = *(v37 + 8 * v38 + 64);
      ++v33;
    }

    while (!v34);
    v33 = v38;
LABEL_23:
    *(v0 + 192) = v34;
    *(v0 + 200) = v33;
    v39 = __clz(__rbit64(v34)) | (v33 << 6);
    v40 = (*(v37 + 48) + 16 * v39);
    v41 = *v40;
    *(v0 + 208) = *v40;
    v42 = v40[1];
    *(v0 + 216) = v42;
    v43 = *(*(v37 + 56) + 8 * v39);
    v44 = *(v35 + 3688);
    v45 = objc_opt_self();

    v46 = MEMORY[0x1E12A1410](v41, v42);
    v47 = [v45 v36[451]];
    *(v0 + 224) = v47;

    *(v0 + 80) = 0;
    v48 = [v47 connectionWithError_];
    *(v0 + 232) = v48;
    v49 = *(v0 + 80);
    if (!v48)
    {
      v50 = v49;

      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 216);
      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.executor);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      v56 = os_log_type_enabled(v54, v55);
      v58 = *(v0 + 216);
      v57 = *(v0 + 224);
      if (v56)
      {
        v59 = v36;
        v60 = *(v0 + 208);
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v76[0] = v62;
        *v61 = 136315138;
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v58, v76);

        *(v61 + 4) = v63;
        v36 = v59;
        _os_log_impl(&dword_1DC659000, v54, v55, "[AppShortcuts] Cannot fetch intent state for: App - %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        v64 = v62;
        v6 = v0 + 80;
        MEMORY[0x1E12A2F50](v64, -1, -1);
        v65 = v61;
        v35 = 0x1E69AC000;
        MEMORY[0x1E12A2F50](v65, -1, -1);
      }

      else
      {
      }

      v33 = *(v0 + 200);
      v34 = (*(v0 + 192) - 1) & *(v0 + 192);
      continue;
    }

    break;
  }

  v70 = v48;
  v71 = v49;
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 240) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v75;
  *(v0 + 24) = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
  v73 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v73;
  [v70 fetchStateForAppIntentIdentifiers:isa completionHandler:v6];
  v74 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

{
  v47 = v0;
  v46[1] = *MEMORY[0x1E69E9840];
  v1 = v0 + 80;
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  swift_willThrow();

  v5 = *(v0 + 248);
  v6 = &unk_1EE159000;
  while (1)
  {
    if (v6[389] != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 216);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    if (v11)
    {
      v45 = v5;
      v14 = v6;
      v15 = v1;
      v16 = *(v0 + 208);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46[0] = v18;
      *v17 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v13, v46);

      *(v17 + 4) = v19;
      v1 = v15;
      v6 = v14;
      _os_log_impl(&dword_1DC659000, v9, v10, "[AppShortcuts] Cannot fetch intent state for: App - %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 200);
    v21 = (*(v0 + 192) - 1) & *(v0 + 192);
    if (!v21)
    {
      break;
    }

    v22 = *(v0 + 176);
LABEL_13:
    *(v0 + 192) = v21;
    *(v0 + 200) = v20;
    v24 = __clz(__rbit64(v21)) | (v20 << 6);
    v25 = (*(v22 + 48) + 16 * v24);
    v26 = *v25;
    *(v0 + 208) = *v25;
    v27 = v25[1];
    *(v0 + 216) = v27;
    v28 = *(*(v22 + 56) + 8 * v24);
    v29 = objc_opt_self();

    v30 = MEMORY[0x1E12A1410](v26, v27);
    v31 = [v29 policyWithBundleIdentifier_];
    *(v0 + 224) = v31;

    *(v0 + 80) = 0;
    v32 = [v31 connectionWithError_];
    *(v0 + 232) = v32;
    v33 = *(v0 + 80);
    if (v32)
    {
      v40 = v32;
      v41 = v33;
      isa = Array._bridgeToObjectiveC()().super.isa;
      *(v0 + 240) = isa;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = specialized AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);
      v43 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
      *(v0 + 104) = &block_descriptor_0;
      *(v0 + 112) = v43;
      [v40 fetchStateForAppIntentIdentifiers:isa completionHandler:v1];
      v44 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v34 = v33;

    v5 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    v22 = *(v0 + 176);
    if (v23 >= (((1 << *(v0 + 256)) + 63) >> 6))
    {
      break;
    }

    v21 = *(v22 + 8 * v23 + 64);
    ++v20;
    if (v21)
    {
      v20 = v23;
      goto LABEL_13;
    }
  }

  v35 = *(v0 + 168);

  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v35);
  v36 = *(v0 + 8);
  v37 = *(v0 + 184);
  v38 = *MEMORY[0x1E69E9840];

  return v36(v37);
}

uint64_t dispatch thunk of AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v13(a1, a2, a3, a4);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

char *AsyncSerialQueue.__allocating_init(queueName:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 2) = MEMORY[0x1E69E7CC0];
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 6) = v10;
  *(v9 + 7) = a1;
  *(v9 + 8) = a2;
  v11 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 32))(&v9[v11], a3, v12);
  return v9;
}

char *AsyncSerialQueue.init(queueName:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 2) = MEMORY[0x1E69E7CC0];
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 6) = v7;
  *(v3 + 7) = a1;
  *(v3 + 8) = a2;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 32))(&v3[v8], a3, v9);
  return v3;
}

char *AsyncSerialQueue.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 8);

  v6 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t initializeWithCopy for WorkItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for WorkItem(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v6 = a2[2];
  v5 = a2[3];
  v7 = a1[3];
  a1[2] = v6;
  a1[3] = v5;

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for WorkItem(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = *(a2 + 24);
  *(a1 + 1) = *(a2 + 8);
  v6 = a1[3];
  a1[3] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for WorkItem(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkItem(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for AsyncSerialQueue()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of AsyncSerialQueue.wait()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6();
}

uint64_t ManagedContinuation.resume(throwing:)(void *a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for Result();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  ManagedContinuation.resume(with:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:), v13);
}

uint64_t static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), 0, 0);
}

uint64_t ManagedContinuation.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return ManagedContinuation.().init()();
}

uint64_t closure #1 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v1 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for Result();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v9 - v5);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v7 = swift_allocError();
  CancellationError.init()();
  *v6 = v7;
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t partial apply for closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 24));
}

uint64_t ManagedContinuation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for CheckedContinuation();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(v1 + 48);
  v11 = *(v1 + 52);
  swift_allocObject();
  v12 = ManagedContinuation.().init()();
  v13 = *(v4 - 8);
  (*(v13 + 32))(v9, a1, v4);
  (*(v13 + 56))(v9, 0, 1, v4);
  v14 = *(*v12 + 88);
  swift_beginAccess();
  v15 = *(v6 + 40);

  v15(v12 + v14, v9, v5);
  swift_endAccess();

  return v12;
}

uint64_t ManagedContinuation<A>.resume()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v6 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  specialized ManagedContinuation.updateState(continuation:result:)(v3, 0, 0);
  return outlined destroy of ReferenceResolutionClientProtocol?(v3, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
}

uint64_t type metadata completion function for ManagedContinuation(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    type metadata accessor for Result();
    result = type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t static AutoBugCapture.generateSnapshot(type:subType:context:)()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = type metadata accessor for AutoBugCaptureManager();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    AutoBugCaptureManager.init(domain:sessionDuration:)();
    dispatch thunk of AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)();
  }

  return result;
}

void closure #1 in static AutoBugCapture.generateSnapshot(type:subType:context:)(char a1)
{
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.instrumentation);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_1DC659000, oslog, v3, "AutoBugCapture#generateSnapshot ABC result: %{BOOL}d", v4, 8u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }
}

uint64_t lazy protocol witness table accessor for type BargeInMode and conformance BargeInMode(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BargeInMode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BargeInContext.debugDescription.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v16 - v2;
  v4 = type metadata accessor for BargeInMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7D650);
  BargeInContext.mode.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v5 + 8))(v8, v4);
  MEMORY[0x1E12A1580](0x61767265746E6920, 0xEB00000000203A6CLL);
  BargeInContext.approximatePreviousTTSInterval.getter();
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    outlined destroy of DateInterval?(v3);
    v11 = 0xE500000000000000;
    v12 = 0x3E6C696E3CLL;
  }

  else
  {
    v13 = DateInterval.debugDescription.getter();
    v11 = v14;
    (*(v10 + 8))(v3, v9);
    v12 = v13;
  }

  MEMORY[0x1E12A1580](v12, v11);

  return v16[0];
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ConversationRequestProcessorBase.requestId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ConversationRequestProcessorBase.rootRequestId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ConversationRequestProcessorBase.assistantId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

char *ConversationRequestProcessorBase.__allocating_init(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11)
{

  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  *(v21 + 12) = a1;
  *(v21 + 13) = a2;
  v22 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 32))(&v21[v22], a3, v23);
  *(v21 + 8) = a4;
  *(v21 + 9) = a5;
  *(v21 + 10) = a6;
  *(v21 + 11) = a7;
  outlined init with take of ReferenceResolutionClientProtocol(a10, (v21 + 24));
  *(v21 + 2) = a11;
  return v21;
}

char *ConversationRequestProcessorBase.init(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11)
{

  *(v11 + 12) = a1;
  *(v11 + 13) = a2;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 32))(&v11[v19], a3, v20);
  *(v11 + 8) = a4;
  *(v11 + 9) = a5;
  *(v11 + 10) = a6;
  *(v11 + 11) = a7;
  outlined init with take of ReferenceResolutionClientProtocol(a10, (v11 + 24));
  *(v11 + 2) = a11;
  return v11;
}

void *ConversationRequestProcessorBase.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t ConversationRequestProcessorBase.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestAwareBridgeBase.candidateRequestProcessors.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ConversationRequestAwareBridgeBase.__allocating_init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  v17 = specialized ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v17;
}

void *ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v7 = specialized ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7D910);
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = MEMORY[0x1E12A1410](0xD000000000000023, 0x80000001DCA7D930);
    v6 = [v4 stringForKey_];

    if (v6)
    {

      v7 = MEMORY[0x1E12A1410](0xD000000000000023, 0x80000001DCA7D930);
      v8 = [v4 integerForKey_];

      *a1 = v8;
      v9 = *MEMORY[0x1E69E7F38];
      v10 = type metadata accessor for DispatchTimeInterval();
      v17 = *(v10 - 8);
      (*(v17 + 104))(a1, v9, v10);
      v11 = *(v17 + 56);
      v12 = a1;
      v13 = 0;
      v14 = v10;
      goto LABEL_6;
    }
  }

  v15 = type metadata accessor for DispatchTimeInterval();
  v11 = *(*(v15 - 8) + 56);
  v14 = v15;
  v12 = a1;
  v13 = 1;
LABEL_6:

  return v11(v12, v13, 1, v14);
}

char *ConversationMessageDispatchingBridgeBase.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v9 = *(*v6 + 80);
  v10 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase();
  v11 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v12 = static Array._allocateUninitialized(_:)();
  v13 = MEMORY[0x1E69E6168];
  v14 = specialized Dictionary.init(dictionaryLiteral:)(v12, v11, v10, MEMORY[0x1E69E6168]);

  *(v6 + 15) = v14;
  v15 = static Array._allocateUninitialized(_:)();
  v16 = specialized Dictionary.init(dictionaryLiteral:)(v15, v11, v10, v13);

  *(v6 + 16) = v16;
  type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase();
  v17 = type metadata accessor for Dictionary();
  swift_getTupleTypeMetadata2();
  v18 = static Array._allocateUninitialized(_:)();
  v19 = specialized Dictionary.init(dictionaryLiteral:)(v18, v11, v17, v13);

  *(v6 + 17) = v19;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  outlined init with take of ReferenceResolutionClientProtocol(a3, (v6 + 32));
  *(v6 + 9) = a4;
  outlined init with take of ReferenceResolutionClientProtocol(a5, (v6 + 80));
  v20 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v21 = type metadata accessor for Logger();
  (*(*(v21 - 8) + 32))(&v6[v20], a6, v21);
  return v6;
}

uint64_t ConversationRequestAwareBridgeBase.registerMessages()()
{
  v1 = *v0;
  if (*(v0 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) == 1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1[39];
    *(v2 + 24) = v1[40];
    v3 = v1[58];
    started = type metadata accessor for StartRequestMessageBase();
    v3(partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), v2, started);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v1[39];
  *(v5 + 24) = v1[40];
  v6 = *(*v0 + 464);
  v7 = type metadata accessor for EndRequestMessageBase();
  v6(partial apply for closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), v5, v7);
}

void ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RequestMessageBase();
  v7 = swift_dynamicCastMetatype();
  if (v7)
  {
    v8 = v7;
    v9 = *(v3 + direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase);
    os_unfair_lock_lock((v9 + 24));
    v10 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v10 + 2);

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 + 1, 1, v10);
      v16 = *(v9 + 16);
      *(v9 + 16) = v15;

      v10 = *(v9 + 16);
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = v8;
    *(v9 + 16) = v10;
    os_unfair_lock_unlock((v9 + 24));
  }

  ConversationMessageDispatchingBridgeBase.registerMessageHandler<A>(_:)(a1, a2, a3);
}

{
  v4 = v3;
  v48 = a1;
  v49 = a2;
  v45 = *v3;
  v6 = v45;
  v7 = type metadata accessor for Logger();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v51[0] = a3;
  swift_getMetatypeMetadata();
  v15 = String.init<A>(describing:)();
  v17 = v16;
  v18 = *(*v3 + 176);

  v20 = v15;
  v21 = v18(v19);
  v51[0] = v15;
  v51[1] = v17;
  v22 = *(v6 + 312);
  v23 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase();
  MEMORY[0x1E12A1380](v50, v51, v21, MEMORY[0x1E69E6158], v23, MEMORY[0x1E69E6168]);

  if (v50[0])
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51[0] = v27;
      *v26 = 136315138;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v51);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1DC659000, v24, v25, "Message type: %s is already registered. Ignoring this request", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v44 = v10;
    v29 = v45;
    type metadata accessor for StartRequestMessageBase();
    v30 = swift_dynamicCastMetatype();
    v31 = v49;
    if (v30)
    {
      v42 = a3;
      v43 = v20;
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
      v33 = one-time initialization token for shared;

      if (v33 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v34 = static MessageBusActor.shared;
      v35 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
      v36 = swift_allocObject();
      v36[2] = v34;
      v36[3] = v35;
      v36[4] = v42;
      v36[5] = v4;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:), v36);

      v31 = v49;
      v20 = v43;
    }

    v37 = *(v29 + 320);
    type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandler();
    v38 = v44;
    (*(v46 + 16))(v44, v4 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v47);
    v39 = ConversationMessageDispatchingBridgeBase.MessageHandler.__allocating_init(_:_:)(v48, v31, v38);
    v51[5] = v17;
    v51[6] = v39;
    v51[4] = v20;
    v40 = *(*v4 + 192);

    v41 = v40(v51);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v41(v51, 0);
  }
}

void ConversationMessageDispatchingBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v30 = a2;
  v6 = *v3;
  v7 = type metadata accessor for Logger();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = a3;
  swift_getMetatypeMetadata();
  v11 = String.init<A>(describing:)();
  v13 = v12;
  v14 = *(*v3 + 176);

  v16 = v11;
  v17 = v14(v15);
  v31[0] = v11;
  v31[1] = v13;
  v18 = *(v6 + 80);
  v19 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase();
  MEMORY[0x1E12A1380](v32, v31, v17, MEMORY[0x1E69E6158], v19, MEMORY[0x1E69E6168]);

  if (v32[0])
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v13, v31);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1DC659000, v20, v21, "Message type: %s is already registered so ignore this request", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandler();
    (*(v28 + 16))(v10, v4 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v7);
    v25 = ConversationMessageDispatchingBridgeBase.MessageHandler.__allocating_init(_:_:)(v29, v30, v10);
    v32[1] = v13;
    v32[2] = v25;
    v32[0] = v11;
    v26 = *(*v4 + 192);

    v27 = v26(v31);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v27(v31, 0);
  }
}

uint64_t closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:), v5, 0);
}

uint64_t closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)()
{
  v1 = *(v0 + 40);
  if ((*(v1 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) & 1) == 0)
  {
    *(v1 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 1;
  }

  return (*(v0 + 8))();
}

uint64_t ConversationRequestAwareBridgeBase.createRequestProcessor(_:_:_:_:)()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, v0, v1, "createRequestProcessor() method from base class called. Please implement this method in your RequestProcessorBase implementation", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }

  return 0;
}

uint64_t ConversationRequestAwareBridgeBase.dispatchCommandToProcessor<A>(_:executionContextInfo:reply:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = (*(*v4 + 480))();
  if ((result & 1) == 0)
  {

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v24);
      *(v14 + 12) = 2080;
      v15 = [v11 debugDescription];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v13;
      v17 = v11;
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, &v24);
      v11 = v17;

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1DC659000, v12, v22, "%s bridge was not able to handle: %s.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v21 = *(*v5 + 304);

    return v21(v11, a2, a3, a4);
  }

  return result;
}

void ConversationRequestAwareBridgeBase.handleCandidateRequestMessageInternal(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v94 = *(v5 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 >> 61;
  v10 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
  if ((a1 >> 61) <= 2)
  {
    if (v9)
    {
      a1 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v9 != 1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    a1 &= 0x1FFFFFFFFFFFFFFFuLL;
    if (v9 <= 4)
    {
      if (v9 == 3)
      {
        goto LABEL_8;
      }

LABEL_7:
      a1 = v10;
      goto LABEL_8;
    }

    if (v9 != 5)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v11 = *(v4 + 376);
  v12 = v10;
  v13 = v11();
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    v17 = *(v13 + 64);
    v16 = *(v13 + 72);

    if (v17 == RequestMessageBase.requestId.getter() && v16 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {

        v12 = v15;
        goto LABEL_15;
      }
    }

    (*(*v1 + 496))(a1, v14);

    return;
  }

LABEL_15:
  v21 = RequestMessageBase.requestId.getter();
  v23 = v22;
  v24 = (*(*v1 + 400))();
  *&v96 = v21;
  *(&v96 + 1) = v23;
  v25 = *(v4 + 320);
  MEMORY[0x1E12A1380](v95, &v96, v24, MEMORY[0x1E69E6158], v25, MEMORY[0x1E69E6168]);

  v26 = v95[0];
  if (v95[0])
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);
    v28 = v12;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v96 = v32;
      *v31 = 136315138;
      swift_getObjectType();
      v33 = _typeName(_:qualified:)();
      v35 = v12;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v96);

      *(v31 + 4) = v36;
      v12 = v35;
      _os_log_impl(&dword_1DC659000, v29, v30, "Posting %s to existing candidate request processor, as the current request processor is for a different turn.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    v37 = v26;
    goto LABEL_21;
  }

  type metadata accessor for StartCandidateRequestMessage();
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = __swift_project_value_buffer(v39, static Logger.conversationBridge);
    v92 = v12;
    v41 = v12;
    v90 = v40;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v96 = v89;
      *v44 = 136315394;
      swift_getObjectType();
      v45 = _typeName(_:qualified:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v96);
      v93 = v41;
      v48 = v47;

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = RequestMessageBase.requestId.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v96);

      *(v44 + 14) = v51;
      v41 = v93;
      _os_log_impl(&dword_1DC659000, v42, v43, "Creating candidate request processor to handle %s<requestId=%s>, as we have not received a StartTurn for this request yet.", v44, 0x16u);
      v52 = v89;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v52, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    v95[0] = a1;
    type metadata accessor for RequestMessageBase();
    v53 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16RootRequestAware_pMd, &_s16SiriMessageTypes16RootRequestAware_pMR);
    v54 = swift_dynamicCast();
    v91 = v25;
    if (v54)
    {
      __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
      v93 = dispatch thunk of RootRequestAware.rootRequestId.getter();
      v56 = v55;
      __swift_destroy_boxed_opaque_existential_1Tm(&v96);
    }

    else
    {
      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      outlined destroy of ReferenceResolutionClientProtocol?(&v96, &_s16SiriMessageTypes16RootRequestAware_pSgMd, &_s16SiriMessageTypes16RootRequestAware_pSgMR);
      v93 = RequestMessageBase.requestId.getter();
      v56 = v66;
    }

    v67 = v53;
    v68 = MessageBase.assistantId.getter();
    v70 = v69;

    v71 = v67;
    SessionMessageBase.sessionId.getter();

    v72 = RequestMessageBase.requestId.getter();
    v37 = (*(*v2 + 472))(v68, v70, v8, v72, v73, v93, v56);

    (*(v94 + 8))(v8, v5);
    if (v37)
    {

      v74 = RequestMessageBase.requestId.getter();
      v95[1] = v75;
      v95[2] = v37;
      v95[0] = v74;
      v76 = *(*v2 + 416);

      v77 = v76(&v96);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      v77(&v96, 0);
      v12 = v92;
LABEL_21:
      v38 = *(*v2 + 496);

      v38(a1, v37);

      return;
    }

    v78 = v71;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v96 = v83;
      *v81 = 136315394;
      v84 = RequestMessageBase.requestId.getter();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v96);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2112;
      *(v81 + 14) = a1;
      *v82 = a1;
      v87 = v78;
      _os_log_impl(&dword_1DC659000, v79, v80, "Error creating candidate request processor for requestId: %s. Dropping %@.", v81, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v82, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1E12A2F50](v83, -1, -1);
      MEMORY[0x1E12A2F50](v81, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.conversationBridge);
    v58 = v12;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v96 = v62;
      *v61 = 136315138;
      v63 = RequestMessageBase.requestId.getter();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v96);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1DC659000, v59, v60, "Receiving candidate message with unknown requestId %s. We should have received a StartCandidateRequestMessage first. Ignoring.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1E12A2F50](v62, -1, -1);
      MEMORY[0x1E12A2F50](v61, -1, -1);
    }

    else
    {
    }
  }
}

void ConversationRequestAwareBridgeBase.init(_:_:_:_:_:)()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 320);
  specialized ConversationRequestAwareBridgeBase.init(_:_:_:_:_:)();
}

uint64_t ConversationRequestAwareBridgeBase.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor);

  v2 = *(v0 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors);

  v3 = *(v0 + direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase);

  v4 = direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t ConversationRequestAwareBridgeBase.deinit()
{
  ConversationMessageDispatchingBridgeBase.deinit();
  v1 = *(v0 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor);

  v2 = *(v0 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors);

  v3 = *(v0 + direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase);

  v4 = direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout;
  v5 = type metadata accessor for DispatchTimeInterval();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

void *ConversationMessageDispatchingBridgeBase.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[17];

  v6 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t ConversationMessageDispatchingBridgeBase.methodDispatcher.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t ConversationMessageDispatchingBridgeBase.registeredMethod.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t ConversationMessageDispatchingBridgeBase.registeredMethod.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t ConversationMessageDispatchingBridgeBase.commandsDispatcher.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t ConversationMessageDispatchingBridgeBase.commandsDispatcher.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t ConversationMessageDispatchingBridgeBase.messageTypesForSubscription()()
{
  v1 = (*v0 + 176);
  v2 = (*v1)();
  v3 = *(v1 - 12);
  type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase();
  v10[5] = v2;
  v10[2] = v3;
  v4 = type metadata accessor for Dictionary.Values();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B4BaseCmMd, &_s16SiriMessageTypes0B4BaseCmMR);
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ConversationMessageDispatchingBridgeBase.messageTypesForSubscription(), v10, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  return v8;
}

uint64_t ConversationMessageDispatchingBridgeBase.aceCommandsGroups()()
{
  v1 = (*v0 + 200);
  (*v1)();
  v2 = *(v1 - 15);
  type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase();
  type metadata accessor for Dictionary();
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t ConversationMessageDispatchingBridgeBase.aceCommands(forGroup:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 200);
  v6 = *v2 + 200;

  v8 = v5(v7);
  v18[0] = a1;
  v18[1] = a2;
  v9 = *(v6 - 120);
  v10 = type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase();
  v11 = MEMORY[0x1E69E6158];
  v12 = MEMORY[0x1E69E6168];
  v13 = type metadata accessor for Dictionary();
  MEMORY[0x1E12A1380](&v19, v18, v8, v11, v13, v12);

  v14 = v19;
  if (!v19)
  {
    v15 = MEMORY[0x1E69E6158];
    swift_getTupleTypeMetadata2();
    v16 = static Array._allocateUninitialized(_:)();
    v14 = specialized Dictionary.init(dictionaryLiteral:)(v16, v15, v10, MEMORY[0x1E69E6168]);
  }

  v18[0] = v14;
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t ConversationMessageDispatchingBridgeBase.handle(_:executionContextInfo:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = [a1 groupIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = (*(*v5 + 200))();
    v99 = v13;
    v100 = v15;
    v17 = *(v10 + 80);
    v18 = type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase();
    v19 = MEMORY[0x1E69E6158];
    v20 = MEMORY[0x1E69E6168];
    v21 = type metadata accessor for Dictionary();
    MEMORY[0x1E12A1380](&v101, &v99, v16, v19, v21, v20);

    v22 = v101;
    if (!v101)
    {
      v56 = a1;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v99 = v92;
        *v59 = 136315394;
        *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5[2], v5[3], &v99);
        *(v59 + 12) = 2080;
        v96 = a4;
        v60 = [v56 debugDescription];
        v61 = a3;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = a2;
        v65 = v64;

        v66 = v62;
        a3 = v61;
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, &v99);
        a2 = v63;

        *(v59 + 14) = v67;
        a4 = v96;
        v68 = "%s was not able to handle: %s, group is not register. Falling back to super.handle()";
LABEL_20:
        _os_log_impl(&dword_1DC659000, v57, v58, v68, v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v92, -1, -1);
        MEMORY[0x1E12A2F50](v59, -1, -1);
      }

LABEL_21:

      return (*(*v5 + 304))(v56, a2, a3, a4);
    }

    v23 = [a1 encodedClassName];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v99 = v25;
      v100 = v27;
      MEMORY[0x1E12A1380](&v101, &v99, v22, MEMORY[0x1E69E6158], v18, MEMORY[0x1E69E6168]);

      v28 = v101;
      if (v101)
      {
        v29 = a1;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v99 = v90;
          *v32 = 136315138;
          v94 = a4;
          v33 = [v29 debugDescription];
          v89 = v31;
          v34 = v29;
          v35 = a3;
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = a2;
          v39 = v38;

          v40 = v36;
          a3 = v35;
          v29 = v34;
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v99);
          a2 = v37;

          *(v32 + 4) = v41;
          a4 = v94;
          _os_log_impl(&dword_1DC659000, v30, v89, "dispatch commnad %s to the handle method", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v90);
          MEMORY[0x1E12A2F50](v90, -1, -1);
          MEMORY[0x1E12A2F50](v32, -1, -1);
        }

        (*(*v28 + 88))(v5, v29, a2, a3, a4);
      }

      v56 = a1;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v99 = v92;
        *v59 = 136315394;
        *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5[2], v5[3], &v99);
        *(v59 + 12) = 2080;
        v98 = a4;
        v81 = [v56 debugDescription];
        v82 = a3;
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = a2;
        v86 = v85;

        v87 = v83;
        a3 = v82;
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v86, &v99);
        a2 = v84;

        *(v59 + 14) = v88;
        a4 = v98;
        v68 = "%s was not able to handle: %s, command is not register. Falling back to super.handle()";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v69 = a1;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v99 = v93;
      *v72 = 136315138;
      v97 = a4;
      v73 = [v69 debugDescription];
      v74 = a3;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = a2;
      v78 = v77;

      v79 = v75;
      a3 = v74;
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, &v99);
      a2 = v76;

      *(v72 + 4) = v80;
      a4 = v97;
      _os_log_impl(&dword_1DC659000, v70, v71, "Commnad %s don't have encodedClassName, failed command", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x1E12A2F50](v93, -1, -1);
      MEMORY[0x1E12A2F50](v72, -1, -1);
    }

    return (*(*v5 + 304))(v69, a2, a3, a4);
  }

  else
  {
    v43 = a1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v99 = v91;
      *v46 = 136315138;
      v95 = a4;
      v47 = [v43 debugDescription];
      v48 = a3;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = a2;
      v52 = v51;

      v53 = v49;
      a3 = v48;
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v99);
      a2 = v50;

      *(v46 + 4) = v54;
      a4 = v95;
      _os_log_impl(&dword_1DC659000, v44, v45, "Commnad %s don't have group identifier, failed command", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x1E12A2F50](v91, -1, -1);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    v55 = *(*v5 + 304);

    return v55(v43, a2, a3, a4);
  }
}

uint64_t ConversationMessageDispatchingBridgeBase.findRegisterMethod(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR) - 8) + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-1] - v9;
  v11 = type metadata accessor for Mirror();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Mirror?(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
    v16 = *(v4 + 80);
    type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase();
    return swift_allocObject();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v26[0] = Mirror.subjectType.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = (*(*v2 + 176))();
    v26[0] = v18;
    v26[1] = v20;
    v22 = *(v4 + 80);
    v23 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase();
    MEMORY[0x1E12A1380](&v27, v26, v21, MEMORY[0x1E69E6158], v23, MEMORY[0x1E69E6168]);

    if (v27)
    {
      v24 = v27;
    }

    else
    {
      Mirror.superclassMirror.getter();
      v24 = ConversationMessageDispatchingBridgeBase.findRegisterMethod(_:)(v8);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
    }

    (*(v12 + 8))(v15, v11);
    return v24;
  }
}

void ConversationMessageDispatchingBridgeBase.registerCommandHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v61 groupIdentifier];
  if (v14)
  {
    v58 = v9;
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v61 encodedClassName];
    if (v19)
    {
      v55 = v10;
      v56 = a1;
      v57 = a2;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = *(*v4 + 200);

      v24 = v22(v23);
      v60 = v16;
      v62 = v16;
      v63 = v18;
      v54[1] = *(v8 + 80);
      v25 = type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandlerBase();
      v26 = MEMORY[0x1E69E6158];
      v27 = MEMORY[0x1E69E6168];
      v28 = type metadata accessor for Dictionary();
      MEMORY[0x1E12A1380](v64, &v62, v24, v26, v28, v27);

      v29 = v64[0];
      if (!v64[0])
      {
        v30 = MEMORY[0x1E69E6158];
        swift_getTupleTypeMetadata2();
        v31 = static Array._allocateUninitialized(_:)();
        v29 = specialized Dictionary.init(dictionaryLiteral:)(v31, v30, v25, MEMORY[0x1E69E6168]);
      }

      v65 = v29;
      v32 = v59;
      v62 = v59;
      v63 = v21;

      MEMORY[0x1E12A1380](v64, &v62, v29, MEMORY[0x1E69E6158], v25, MEMORY[0x1E69E6168]);

      v33 = v60;
      if (v64[0])
      {

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v62 = v37;
          *v36 = 136315394;
          *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v18, &v62);
          *(v36 + 12) = 2080;
          *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v21, &v62);
          _os_log_impl(&dword_1DC659000, v34, v35, "There is already a method register to handle command: %s:%s, replacing", v36, 0x16u);
          swift_arrayDestroy();
          v38 = v37;
          v32 = v59;
          MEMORY[0x1E12A2F50](v38, -1, -1);
          v39 = v36;
          v33 = v60;
          MEMORY[0x1E12A2F50](v39, -1, -1);
        }
      }

      type metadata accessor for ConversationMessageDispatchingBridgeBase.CommandHandler();
      (*(v55 + 16))(v13, v4 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v58);
      v64[3] = ConversationMessageDispatchingBridgeBase.CommandHandler.__allocating_init(_:_:)(v56, v57, v13);
      v62 = v32;
      v63 = v21;

      Dictionary.updateValue(_:forKey:)();

      v64[1] = v18;
      v64[2] = v65;
      v64[0] = v33;
      v40 = *(*v4 + 216);

      v41 = v40(&v62);
      type metadata accessor for Dictionary();
      Dictionary.updateValue(_:forKey:)();

      v41(&v62, 0);

      goto LABEL_15;
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62 = v45;
      *v44 = 136315138;
      v64[0] = a3;
      swift_getMetatypeMetadata();
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v62);

      *(v44 + 4) = v52;
      v49 = "Cannot get command encode name %s";
      goto LABEL_14;
    }
  }

  else
  {

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62 = v45;
      *v44 = 136315138;
      v64[0] = a3;
      swift_getMetatypeMetadata();
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v62);

      *(v44 + 4) = v48;
      v49 = "Cannot get command group identifier %s";
LABEL_14:
      _os_log_impl(&dword_1DC659000, v42, v43, v49, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);

LABEL_15:
      return;
    }
  }

  v53 = v61;
}

void ConversationMessageDispatchingBridgeBase.defaultHandle(_:executionContextInfo:reply:)(void *a1, uint64_t a2, void (*a3)(id, id))
{
  v4 = v3;
  v40 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);

  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v7;
    v18 = v17;
    v43 = v17;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), &v43);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    v19 = v12;
    _os_log_impl(&dword_1DC659000, v13, v14, "Bridge:%s received %@", v15, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v7 = v39;
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v20 = v40;
  if (v40)
  {
    v21 = objc_allocWithZone(MEMORY[0x1E69C7780]);

    v22 = [v21 init];
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = MEMORY[0x1E12A1410](v23, v25);

    [v22 setAceId_];

    v27 = v22;
    v28 = [v12 aceId];
    [v27 setRefId_];

    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v43 = 0x20656764697242;
    v44 = 0xE700000000000000;
    MEMORY[0x1E12A1580](*(v4 + 16), *(v4 + 24));
    MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA7D670);
    v29 = [v12 encodedClassName];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = objc_opt_self();
    v41 = v31;
    v42 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v35 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v35);

    v36 = MEMORY[0x1E12A1410](v43, v44);

    v37 = [v34 errorWithCode:2000 description:v36];

    v38 = v37;
    v20(v27, v37);

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v20);
  }
}

uint64_t ConversationMessageDispatchingBridgeBase.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConversationMessageDispatchingBridgeBase.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  ConversationMessageDispatchingBridgeBase.init(_:_:_:_:_:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *a4;
  v13 = type metadata accessor for Logger();
  (*(*(v13 - 8) + 32))(v11 + v12, a3, v13);
  return v11;
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.method.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void ConversationMessageDispatchingBridgeBase.MessageHandler.init()()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 136);
  specialized ConversationMessageDispatchingBridgeBase.MessageHandler.init()();
}

uint64_t ConversationRequestAwareBridgeBase.__deallocating_deinit(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestProcessorBase.sessionId.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6 = *a4;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 32))(v4 + v6, a3, v7);
  return v4;
}

void ConversationMessageDispatchingBridgeBase.CommandHandler.handle(_:_:executionContextInfo:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *v5;
  v47 = a1;
  v12 = *(v10 + 120);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v13 = *(v11 + 128);
    v14 = swift_dynamicCastUnknownClass();
    if (v14)
    {
      v15 = v14;
      v17 = v5[2];
      v16 = v5[3];
      v18 = a2;
      v19 = v17();
      v19(v15, a3, a4, a5);
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = a2;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v47 = v34;
        *v33 = 136315650;
        v35 = [v30 aceId];
        if (v35)
        {
          v36 = v35;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;
        }

        else
        {
          v39 = 0xE800000000000000;
          v37 = 0x6449656361206F6ELL;
        }

        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v47);

        *(v33 + 4) = v40;
        *(v33 + 12) = 2080;
        swift_getObjectType();
        v41 = _typeName(_:qualified:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v47);

        *(v33 + 14) = v43;
        *(v33 + 22) = 2080;
        v44 = _typeName(_:qualified:)();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v47);

        *(v33 + 24) = v46;
        _os_log_impl(&dword_1DC659000, v31, v32, "Input command %s of type %s is not of type %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136315394;
      swift_getObjectType();
      v24 = _typeName(_:qualified:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v47);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_1DC659000, v20, v21, "Handler invoking object is of type %s and not of type %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }
}

void ConversationMessageDispatchingBridgeBase.CommandHandler.init()()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 128);
  specialized ConversationMessageDispatchingBridgeBase.CommandHandler.init()();
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.__ivar_destroyer(uint64_t *a1)
{
  v3 = *(v1 + 24);

  v4 = *a1;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 8);

  return v6(v1 + v4, v5);
}

uint64_t ConversationMessageDispatchingBridgeBase.MessageHandler.deinit(uint64_t *a1)
{
  v3 = *(v1 + 24);

  v4 = *a1;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
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
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x1E12A1750](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x1E12A1780](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void *specialized ConversationRequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v41 = a7;
  v42 = a5;
  v38 = a2;
  v39 = a4;
  v43 = a3;
  v36 = *v8;
  v10 = v36;
  v37 = a1;
  v40 = type metadata accessor for Logger();
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v36 - v17);
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v8 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  v24 = direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors;
  v25 = *(v10 + 320);
  *(v8 + v24) = Dictionary.init()();
  v26 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + v26) = v27;
  v28 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(v8 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  *(v8 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = a6;
  *(v8 + v28) = a6;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v18);
  v29 = *(v20 + 48);
  if (v29(v18, 1, v19) == 1)
  {
    *v23 = 500;
    (*(v20 + 104))(v23, *MEMORY[0x1E69E7F38], v19);
    if (v29(v18, 1, v19) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
  }

  (*(v20 + 32))(v8 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v23, v19);
  v30 = v43;
  outlined init with copy of ReferenceResolutionClientProtocol(v43, v45);
  v31 = v42;
  outlined init with copy of ReferenceResolutionClientProtocol(v42, v44);
  v33 = v40;
  v32 = v41;
  (*(v11 + 16))(v14, v41, v40);
  v34 = v39;
  swift_unknownObjectRetain();
  ConversationMessageDispatchingBridgeBase.init(_:_:_:_:_:)(v37, v38, v45, v34, v44, v14);

  ConversationRequestAwareBridgeBase.registerMessages()();

  (*(v11 + 8))(v32, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v8;
}

uint64_t partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(a1, v4, v5, v6);
}

void outlined consume of CandidateRequestMessage?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t partial apply for closure #1 in ConversationMessageDispatchingBridgeBase.messageTypesForSubscription()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for SABaseClientBoundCommand()
{
  result = lazy cache variable for type metadata for SABaseClientBoundCommand;
  if (!lazy cache variable for type metadata for SABaseClientBoundCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseClientBoundCommand);
  }

  return result;
}

uint64_t type metadata accessor for ConversationRequestProcessorBase()
{
  result = type metadata singleton initialization cache for ConversationRequestProcessorBase;
  if (!type metadata singleton initialization cache for ConversationRequestProcessorBase)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ConversationRequestProcessorBase()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationRequestAwareBridgeBase()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationMessageDispatchingBridgeBase()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationMessageDispatchingBridgeBase.MessageHandler()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConversationMessageDispatchingBridgeBase.CommandHandler()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*partial apply for closure #2 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return partial apply for closure #1 in closure #2 in ConversationRequestAwareBridgeBase.registerMessages();
}

uint64_t (*partial apply for closure #1 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return partial apply for closure #1 in closure #1 in ConversationRequestAwareBridgeBase.registerMessages();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v3;
  v5 = *(*v3 + 136);

  v5(a1);
}

uint64_t partial apply for closure #1 in closure #2 in ConversationRequestAwareBridgeBase.registerMessages()(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v3;
  v5 = *(*v3 + 144);

  v5(a1);
}

uint64_t outlined init with copy of Mirror?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CachedPluginCatalog.findRemoteFlowPlugins(intentTopic:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t CachedPluginCatalog.sharedFlowPluginServiceClientKey.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for sharedFlowPluginServiceClientKey()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v4, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
  v5 = __swift_project_value_buffer(v4, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
  CodingUserInfoKey.init(rawValue:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for ignoreOSVersionKey()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v4, static CachedPluginCatalog.ignoreOSVersionKey);
  v5 = __swift_project_value_buffer(v4, static CachedPluginCatalog.ignoreOSVersionKey);
  CodingUserInfoKey.init(rawValue:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static CachedPluginCatalog.sharedFlowPluginServiceClientKey.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

SiriKitRuntime::CachedPluginCatalog::CodingKeys_optional __swiftcall CachedPluginCatalog.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CachedPluginCatalog.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t CachedPluginCatalog.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F6973726556736FLL;
  }

  if (a1 == 1)
  {
    return 0x696C696261706163;
  }

  return 0x736567616B636170;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CachedPluginCatalog.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696C696261706163;
  v4 = 0xEC00000073656974;
  if (v2 != 1)
  {
    v3 = 0x736567616B636170;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F6973726556736FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  v7 = 0x696C696261706163;
  v8 = 0xEC00000073656974;
  if (*a2 != 1)
  {
    v7 = 0x736567616B636170;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F6973726556736FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE90000000000006ELL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CachedPluginCatalog.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CachedPluginCatalog.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CachedPluginCatalog.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CachedPluginCatalog.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CachedPluginCatalog.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CachedPluginCatalog.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0xEC00000073656974;
  v5 = 0x696C696261706163;
  if (v2 != 1)
  {
    v5 = 0x736567616B636170;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6973726556736FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CachedPluginCatalog.CodingKeys()
{
  v1 = 0x696C696261706163;
  if (*v0 != 1)
  {
    v1 = 0x736567616B636170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6973726556736FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CachedPluginCatalog.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CachedPluginCatalog.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CachedPluginCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CachedPluginCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CachedPluginCatalog@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized CachedPluginCatalog.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t PluginCapabilityCatalog<>.getConversationHandler(id:)()
{
  result = dispatch thunk of PluginCatalog.getPlugin(id:)();
  if (result)
  {
    type metadata accessor for RemoteFlowPluginBundleConversationHandler();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for PluginLookupByIntentTopic.getConversationHandler(id:) in conformance <> PluginCapabilityCatalog<A>()
{
  v1 = *v0;
  result = dispatch thunk of PluginCatalog.getPlugin(id:)();
  if (result)
  {
    type metadata accessor for RemoteFlowPluginBundleConversationHandler();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t specialized static CachedPluginCatalog.load(cacheUrl:sharedFlowPluginServiceClient:ignoreOSVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  v43 = a3;
  v45 = type metadata accessor for URL();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-v9];
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = [objc_opt_self() defaultManager];
  v17 = URL.path.getter();
  v18 = MEMORY[0x1E12A1410](v17);

  v19 = [v16 fileExistsAtPath_];

  if (v19)
  {
    v20 = type metadata accessor for PropertyListDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    if (one-time initialization token for sharedFlowPluginServiceClientKey != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v11, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
    v24 = *(v12 + 16);
    v24(v15, v23, v11);
    v48 = type metadata accessor for SharedFlowPluginServiceClient();
    v47 = a2;

    v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(&v47, v15);
    v25(v46, 0);
    if (v43)
    {
      if (one-time initialization token for ignoreOSVersionKey != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v11, static CachedPluginCatalog.ignoreOSVersionKey);
      v24(v15, v26, v11);
      v48 = MEMORY[0x1E69E6370];
      LOBYTE(v47) = 1;
      v27 = dispatch thunk of PropertyListDecoder.userInfo.modify();
      specialized Dictionary.subscript.setter(&v47, v15);
      v27(v46, 0);
    }

    v38 = Data.init(contentsOf:options:)();
    v40 = v39;
    lazy protocol witness table accessor for type CachedPluginCatalog and conformance CachedPluginCatalog();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v38, v40);

    return v47;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = v45;
    (*(v5 + 16))(v10, a1, v45);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      v34 = URL.path.getter();
      v36 = v35;
      (*(v5 + 8))(v10, v29);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v47);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1DC659000, v30, v31, "CachedPluginCatalog: No cache file exists at %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1E12A2F50](v33, -1, -1);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v29);
    }

    return 0;
  }
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v124 = a4;
  v125 = a3;
  v123 = a2;
  v7 = type metadata accessor for IntentTopic();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v101 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11SiriKitFlow11IntentTopicVSay0cD7Runtime06RemoteE13PluginPackageCGGMd, &_ss18_DictionaryStorageCy11SiriKitFlow11IntentTopicVSay0cD7Runtime06RemoteE13PluginPackageCGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v16 = 0;
  v115 = a1;
  v17 = *(a1 + 64);
  v105 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v104 = (v18 + 63) >> 6;
  v112 = v8 + 16;
  v114 = v8;
  v122 = v8 + 32;
  v103 = "rocessorTimeoutInMS";
  v102 = "Package(bundleId: ";
  v110 = result + 64;
  *&v15 = 136315138;
  v126 = v15;
  v111 = result;
  v109 = a5;
  v107 = v7;
  v108 = v11;
  if (!v20)
  {
LABEL_5:
    v22 = v16;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v104)
      {
        return result;
      }

      v24 = *(v105 + 8 * v23);
      ++v22;
      if (v24)
      {
        v116 = (v24 - 1) & v24;
        v117 = v23;
        v21 = __clz(__rbit64(v24)) | (v23 << 6);
        goto LABEL_10;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  while (2)
  {
    v116 = (v20 - 1) & v20;
    v117 = v16;
    v21 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_10:
    v25 = v115;
    v26 = *(v115 + 48);
    v27 = v114;
    v28 = *(v114 + 16);
    v119 = *(v114 + 72) * v21;
    v29 = v113;
    v30 = v21;
    v28(v113, v26 + v119, v7);
    v31 = *(v25 + 56);
    v120 = v30;
    v32 = v29;
    v33 = *(v31 + 8 * v30);
    v118 = *(v27 + 32);
    v118(v11, v32, v7);
    v34 = MEMORY[0x1E69E7CC0];
    v136 = MEMORY[0x1E69E7CC0];
    v35 = *(v33 + 16);

    if (!v35)
    {
      v121 = v34;
      goto LABEL_55;
    }

    v36 = 0;
    v37 = v33 + 40;
    v121 = v34;
    v127 = v33;
    v128 = v35;
    v106 = v33 + 40;
    while (2)
    {
      v38 = (v37 + 16 * v36);
      v39 = v36;
      v40 = v123;
      while (1)
      {
        if (v39 >= v35)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (__OFADD__(v39, 1))
        {
          goto LABEL_60;
        }

        v129 = v39 + 1;
        v41 = *(v38 - 1);
        v42 = *v38;
        v43 = *v40;
        v44 = *(*v40 + 16);

        if (!v44 || (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42), (v46 & 1) == 0))
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, static Logger.executor);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *&v134[0] = v68;
            *v67 = v126;
            *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v134);
            _os_log_impl(&dword_1DC659000, v65, v66, "Warning: No bundle ID found for %s when reading plugin catalog from cache", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v68);
            v69 = v68;
            v35 = v128;
            MEMORY[0x1E12A2F50](v69, -1, -1);
            MEMORY[0x1E12A2F50](v67, -1, -1);
          }

          goto LABEL_14;
        }

        v47 = (*(v43 + 56) + 16 * v45);
        v49 = *v47;
        v48 = v47[1];
        v50 = *v125;
        v51 = *(*v125 + 16);

        if (v51)
        {
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v48);
          if (v53)
          {
            v70 = v52;

            v71 = *(*(v50 + 56) + 8 * v70);

            v11 = v108;
            v35 = v128;
            v37 = v106;
            goto LABEL_49;
          }
        }

        v54 = *v124;
        if (*(*v124 + 16))
        {
          v55 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
          if (v56)
          {
            break;
          }
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        __swift_project_value_buffer(v57, static Logger.executor);

        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v134[0] = v61;
          *v60 = v126;
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, v134);

          *(v60 + 4) = v62;
          _os_log_impl(&dword_1DC659000, v58, v59, "Warning: No intent topics supported by %s when reading plugin catalog from cache", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          v63 = v61;
          v40 = v123;
          MEMORY[0x1E12A2F50](v63, -1, -1);
          MEMORY[0x1E12A2F50](v60, -1, -1);
        }

        else
        {
        }

        v35 = v128;
LABEL_14:
        ++v39;
        v38 += 2;
        if (v129 == v35)
        {
          v7 = v107;
          v11 = v108;
          goto LABEL_55;
        }
      }

      v73 = *(*(v54 + 56) + 8 * v55);
      type metadata accessor for RemoteFlowPluginPackage();
      memset(v134, 0, sizeof(v134));
      v135 = 0;
      v74 = swift_allocObject();
      v74[2] = v49;
      v74[3] = v48;
      v74[6] = v41;
      v74[7] = v42;
      v121 = v74;
      v74[4] = v109;
      v74[5] = v73;
      outlined init with copy of AffinityScorer?(v134, v130);
      if (v131)
      {

        outlined destroy of AffinityScorer?(v134);
        outlined init with take of NSExtensionProtocol(v130, &v132);
        v11 = v108;
      }

      else
      {
        v132 = 0;
        v133 = 0xE000000000000000;

        _StringGuts.grow(_:)(52);
        MEMORY[0x1E12A1580](0xD000000000000022, v103 | 0x8000000000000000);
        MEMORY[0x1E12A1580](v49, v48);
        MEMORY[0x1E12A1580](0xD000000000000010, v102 | 0x8000000000000000);
        v76 = v132;
        v75 = v133;

        specialized logAction<A>(label:_:)(v76, v75, v49, v48, &v132);

        outlined destroy of AffinityScorer?(v134);
        v11 = v108;
        if (v131)
        {
          outlined destroy of AffinityScorer?(v130);
        }
      }

      outlined init with take of NSExtensionProtocol(&v132, v121 + 8);

      v77 = v125;
      v78 = *v125;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v134[0] = *v77;
      v80 = *&v134[0];
      *v77 = 0x8000000000000000;
      v81 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v48);
      v83 = *(v80 + 16);
      v84 = (v82 & 1) == 0;
      v85 = __OFADD__(v83, v84);
      v86 = v83 + v84;
      if (v85)
      {
        goto LABEL_63;
      }

      v87 = v82;
      if (*(v80 + 24) >= v86)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v96 = v81;
          specialized _NativeDictionary.copy()();
          v81 = v96;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v86, isUniquelyReferenced_nonNull_native);
        v81 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v48);
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_65;
        }
      }

      v89 = *&v134[0];
      if (v87)
      {
        v90 = *(*&v134[0] + 56);
        v91 = *(v90 + 8 * v81);
        *(v90 + 8 * v81) = v121;
      }

      else
      {
        *(*&v134[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
        v92 = (v89[6] + 16 * v81);
        *v92 = v49;
        v92[1] = v48;
        *(v89[7] + 8 * v81) = v121;
        v93 = v89[2];
        v85 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v85)
        {
          goto LABEL_64;
        }

        v89[2] = v94;
      }

      v35 = v128;
      v37 = v106;
      *v125 = v89;

LABEL_49:
      MEMORY[0x1E12A1680](v72);
      v7 = v107;
      if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v95 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v121 = v136;
      v36 = v129;
      if (v129 != v35)
      {
        continue;
      }

      break;
    }

LABEL_55:

    v97 = v120;
    *(v110 + ((v120 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v120;
    v98 = v111;
    v118((*(v111 + 48) + v119), v11, v7);
    *(*(v98 + 56) + 8 * v97) = v121;
    v99 = *(v98 + 16);
    v85 = __OFADD__(v99, 1);
    v100 = v99 + 1;
    if (!v85)
    {
      result = v98;
      *(v98 + 16) = v100;
      v16 = v117;
      v20 = v116;
      if (!v116)
      {
        goto LABEL_5;
      }

      continue;
    }

    break;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}