uint64_t TokenGenerator._tokenCount<A>(configuration:)()
{
  v31 = v0;
  v1 = *(v0 + 200);
  if (v1[3])
  {
    v2 = v1[6];
    v3 = v1[7];
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v25 = *(v0 + 312);
  v8 = *(v0 + 304);
  v23 = *(v0 + 328);
  v24 = *(v0 + 272);
  v9 = *(v0 + 184);
  v10 = *(v0 + 176);
  v11 = v1[18];
  v12 = *(v0 + 192);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v6 + 16))(v5, v4, v23);
  v13 = *(v8 + 16);
  v13(v7, v10, v9);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v5, v7, v9, &v26);
  *(v0 + 360) = v26;
  *(v0 + 368) = v27;
  *(v0 + 384) = v28;
  *(v0 + 392) = v29;
  *(v0 + 408) = v30;
  v14 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  v15 = swift_task_alloc();
  *(v0 + 416) = v15;
  v15[2] = v9;
  v15[3] = v12;
  v15[4] = v10;
  v13(v25, v10, v9);
  v16 = swift_task_alloc();
  *(v0 + 424) = v16;
  *v16 = v0;
  v16[1] = TokenGenerator._tokenCount<A>(configuration:);
  v17 = *(v0 + 312);
  v18 = *(v0 + 296);
  v19 = *(v0 + 272);
  v20 = *(v0 + 184);
  v21 = *(v0 + 192);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v18, v19, &async function pointer to partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:), v15, v17, 1, v20, v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v11 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v5 = v2[50];
    v4 = v2[51];
    v6 = v2[48];
    v7 = v2[46];

    v8 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v9 = v2[52];

    v8 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v1 = v0[35];
  outlined init with copy of TokenGenerator.PromptInputFromGenerativeModel(v0[37], v0[36]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v32 = v0[45];
  v9 = v0[36];
  v10 = v0[30];
  v11 = v0[31];
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v0[50];
    v31 = v0[51];
    v12 = v0[32];
    v27 = v0[46];
    v28 = v0[48];
    v14 = v0[28];
    v13 = v0[29];
    v29 = v0[49];
    v16 = v0[26];
    v15 = v0[27];
    v26 = v0[47];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v14 + 32))(v13, v9, v15);
    (*(v11 + 32))(v12, v9 + v17, v10);
    (*(v11 + 16))(v16, v12, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
    v0[2] = v32;
    v0[3] = v27;
    v0[4] = v26;
    v0[5] = v28;
    v0[6] = v29;
    v0[7] = v30;
    v0[8] = v31;
    v18 = swift_task_alloc();
    v0[57] = v18;
    *v18 = v0;
    v18[1] = TokenGenerator._tokenCount<A>(configuration:);
    v19 = v0[29];
    v21 = v0[25];
    v20 = v0[26];

    return TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:)(v20, v19, (v0 + 2));
  }

  else
  {
    (*(v11 + 32))(v0[33], v0[36], v0[30]);
    v0[9] = v32;
    v0[10] = v8;
    v0[11] = v7;
    v0[12] = v6;
    v0[13] = v5;
    v0[14] = v4;
    v0[15] = v3;
    v23 = swift_task_alloc();
    v0[55] = v23;
    *v23 = v0;
    v23[1] = TokenGenerator._tokenCount<A>(configuration:);
    v24 = v0[33];
    v25 = v0[25];

    return TokenGenerator.countTokens(in:metadata:)(v24, v0 + 9);
  }
}

{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[34];
  v12 = v0[32];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[17];
  (*(v0[31] + 8))(v0[33], v0[30]);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v7);
  (*(v3 + 8))(v1, v4);

  v10 = v0[1];

  return v10(v15);
}

{
  (*(v0[31] + 8))(v0[32], v0[30]);
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[36];
  v8 = v0[37];
  v11 = v0[34];
  v12 = v0[33];
  v13 = v0[32];
  v14 = v0[26];
  v15 = v0[20];
  (*(v0[28] + 8))(v0[29], v0[27]);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v8);
  (*(v3 + 8))(v1, v4);

  v9 = v0[1];

  return v9(v15);
}

{
  v1 = v0[52];
  (*(v0[42] + 8))(v0[44], v0[41]);

  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v11 = v0[29];
  v14 = v0[26];
  v15 = v0[54];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[46];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[42];
  v8 = v0[37];
  (*(v0[31] + 8))(v0[33], v0[30]);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v8);
  (*(v7 + 8))(v5, v6);

  v10 = v0[43];
  v9 = v0[44];
  v12 = v0[39];
  v11 = v0[40];
  v14 = v0[36];
  v13 = v0[37];
  v16 = v0[33];
  v15 = v0[34];
  v17 = v0[32];
  v18 = v0[29];
  v21 = v0[26];
  v22 = v0[56];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[37];
  v5 = v0[29];
  v6 = v0[27];
  v7 = v0[28];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v7 + 8))(v5, v6);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v4);
  (*(v3 + 8))(v1, v2);
  v9 = v0[43];
  v8 = v0[44];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[36];
  v12 = v0[37];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  v17 = v0[29];
  v20 = v0[26];
  v21 = v0[58];

  v18 = v0[1];

  return v18();
}

{
  v31 = v0;
  v1 = *(v0 + 200);
  if (v1[3])
  {
    v2 = v1[6];
    v3 = v1[7];
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v25 = *(v0 + 312);
  v8 = *(v0 + 304);
  v23 = *(v0 + 328);
  v24 = *(v0 + 272);
  v9 = *(v0 + 184);
  v10 = *(v0 + 176);
  v11 = v1[18];
  v12 = *(v0 + 192);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v6 + 16))(v5, v4, v23);
  v13 = *(v8 + 16);
  v13(v7, v10, v9);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v5, v7, v9, &v26);
  *(v0 + 360) = v26;
  *(v0 + 368) = v27;
  *(v0 + 384) = v28;
  *(v0 + 392) = v29;
  *(v0 + 408) = v30;
  v14 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  v15 = swift_task_alloc();
  *(v0 + 416) = v15;
  v15[2] = v9;
  v15[3] = v12;
  v15[4] = v10;
  v13(v25, v10, v9);
  v16 = swift_task_alloc();
  *(v0 + 424) = v16;
  *v16 = v0;
  v16[1] = TokenGenerator._tokenCount<A>(configuration:);
  v17 = *(v0 + 312);
  v18 = *(v0 + 296);
  v19 = *(v0 + 272);
  v20 = *(v0 + 184);
  v21 = *(v0 + 192);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v18, v19, &async function pointer to partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:), v15, v17, 1, v20, v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v11 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v5 = v2[50];
    v4 = v2[51];
    v6 = v2[48];
    v7 = v2[46];

    v8 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v9 = v2[52];

    v8 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v1 = v0[35];
  outlined init with copy of TokenGenerator.PromptInputFromGenerativeModel(v0[37], v0[36]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v32 = v0[45];
  v9 = v0[36];
  v10 = v0[30];
  v11 = v0[31];
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v0[50];
    v31 = v0[51];
    v12 = v0[32];
    v27 = v0[46];
    v28 = v0[48];
    v14 = v0[28];
    v13 = v0[29];
    v29 = v0[49];
    v16 = v0[26];
    v15 = v0[27];
    v26 = v0[47];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v14 + 32))(v13, v9, v15);
    (*(v11 + 32))(v12, v9 + v17, v10);
    (*(v11 + 16))(v16, v12, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
    v0[2] = v32;
    v0[3] = v27;
    v0[4] = v26;
    v0[5] = v28;
    v0[6] = v29;
    v0[7] = v30;
    v0[8] = v31;
    v18 = swift_task_alloc();
    v0[57] = v18;
    *v18 = v0;
    v18[1] = TokenGenerator._tokenCount<A>(configuration:);
    v19 = v0[29];
    v21 = v0[25];
    v20 = v0[26];

    return TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:)(v20, v19, (v0 + 2));
  }

  else
  {
    (*(v11 + 32))(v0[33], v0[36], v0[30]);
    v0[9] = v32;
    v0[10] = v8;
    v0[11] = v7;
    v0[12] = v6;
    v0[13] = v5;
    v0[14] = v4;
    v0[15] = v3;
    v23 = swift_task_alloc();
    v0[55] = v23;
    *v23 = v0;
    v23[1] = TokenGenerator._tokenCount<A>(configuration:);
    v24 = v0[33];
    v25 = v0[25];

    return TokenGenerator.countTokens(in:metadata:)(v24, v0 + 9);
  }
}

uint64_t TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[16] = v2;
  v4[17] = a1;
  v4[18] = v1;
  v5 = v3[55];
  v12 = *v2;
  v4[56] = v1;

  if (v1)
  {
    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v8 = v4[50];
    v7 = v4[51];
    v9 = v4[48];
    v10 = v4[46];

    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[19] = v2;
  v4[20] = a1;
  v4[21] = v1;
  v5 = v3[57];
  v6 = v3[26];
  v16 = *v2;
  v4[58] = v1;

  v7 = v4[2];
  v8 = v4[3];
  v4 += 2;
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  outlined consume of RequestMetadata?(v7, v8);
  outlined destroy of PromptVariant?(v6);
  if (v1)
  {
    v14 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v14 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[16] = v2;
  v4[17] = a1;
  v4[18] = v1;
  v5 = v3[55];
  v12 = *v2;
  v4[56] = v1;

  if (v1)
  {
    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v8 = v4[50];
    v7 = v4[51];
    v9 = v4[48];
    v10 = v4[46];

    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[19] = v2;
  v4[20] = a1;
  v4[21] = v1;
  v5 = v3[57];
  v6 = v3[26];
  v16 = *v2;
  v4[58] = v1;

  v7 = v4[2];
  v8 = v4[3];
  v4 += 2;
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  outlined consume of RequestMetadata?(v7, v8);
  outlined destroy of PromptVariant?(v6);
  if (v1)
  {
    v14 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v14 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

uint64_t closure #1 in TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for RunnableConfigurationStorage() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for OverridableConfigurationStorage() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}

{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for RunnableConfigurationStorage() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for OverridableConfigurationStorage() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._tokenCount<A>(configuration:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  CompletionPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();

  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

uint64_t outlined init with copy of TokenGenerator.PromptInputFromGenerativeModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of RequestMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of PromptVariant?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(uint64_t a1)
{
  v2 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return TokenGenerator._tokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return TokenGenerator._tokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Prompt();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY0_, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY0_()
{
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.prompt);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AB828000, v2, v3, "TemplateOverrideConverter: Attempting to render prompt", v4, 2u);
    MEMORY[0x1AC5A6CD0](v4, -1, -1);
  }

  v5 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8]);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for CompletionPrompt();
  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TQ1_;
  v10 = v0[7];
  v11 = v0[4];

  return v13(v10, v7, v5);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TQ1_()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY3_;
  }

  else
  {
    v3 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY2_()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI0014targetRenderedK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtKAA0mK0RzlFZAaOV_Tt2g5(v0[2], v0[3]);
  (*(v3 + 8))(v2, v4);
  v6 = v0[7];

  v8 = v0[1];
  if (!v1)
  {
    v7 = v5;
  }

  return v8(v7);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY3_()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Prompt();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY0_, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY0_()
{
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.prompt);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AB828000, v2, v3, "TemplateOverrideConverter: Attempting to render prompt", v4, 2u);
    MEMORY[0x1AC5A6CD0](v4, -1, -1);
  }

  v5 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8]);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for ChatMessagesPrompt();
  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TQ1_;
  v10 = v0[7];
  v11 = v0[4];

  return v13(v10, v7, v5);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TQ1_()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY3_;
  }

  else
  {
    v3 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI0014targetRenderedK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtKAA0mK0RzlFZAaOV_Tt2g5(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for prompt != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.prompt);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AB828000, v4, v5, "TemplateOverrideConverter: Attempting to convert rich variable bindings to meet the target prompt requirements.", v6, 2u);
      MEMORY[0x1AC5A6CD0](v6, -1, -1);
    }

    v7 = static TemplateOverrideConverter.flattenedPromptSegments(_:)();
    v8 = v7;
    v9 = *(v7 + 16);
    if (!v9)
    {
      break;
    }

    v10 = 0;
    v11 = (v7 + 48);
    while (v10 < *(v8 + 16))
    {
      if (*v11 == 1)
      {
        if (!*(a2 + 16) || (v12 = *(v11 - 2), v13 = *(v11 - 1), , specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), v15 = v14, outlined consume of TemplateOverrideConverter.Segment(), (v15 & 1) == 0))
        {

          v16 = 1;
          goto LABEL_19;
        }
      }

      ++v10;
      v11 += 24;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_12:
  v17 = Prompt.string.getter();
  a2 = static TemplateOverrideConverter.convertRichVariableBindings(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentTargetStringStartIndex:currentOriginalPromptSegmentIndex:)(v8, a2, v17, v18, MEMORY[0x1E69E7CC0], 0xFuLL, 0);

  if (a2)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1AB828000, v19, v20, "TemplateOverrideConverter: Successfully converted rich variable bindings. WARNING: May have dropped self-attention and changed attachments positions.", v21, 2u);
      MEMORY[0x1AC5A6CD0](v21, -1, -1);
    }
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      a2 = swift_slowAlloc();
      *a2 = 0;
      _os_log_impl(&dword_1AB828000, v22, v23, "TemplateOverrideConverter: Failed to convert rich variable bindings.", a2, 2u);
      MEMORY[0x1AC5A6CD0](a2, -1, -1);
    }

    v16 = 0;
LABEL_19:
    lazy protocol witness table accessor for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError();
    swift_allocError();
    *v24 = v16;
    swift_willThrow();
  }

  return a2;
}

uint64_t RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a1;
  v7 = type metadata accessor for UUID();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMd, &_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v44 - v13;
  v45 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v49 = a2;
  v20 = GenerativeConfigurationProtocol.trackingConfig.getter();
  if (v20)
  {
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v19;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v21, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v50);

    v19 = v50;
  }

  v23 = GenerativeConfigurationProtocol._internalTrackingConfig.getter();
  if (v23)
  {
    v24 = v23;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v19;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v24, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v25, &v50);

    v19 = v50;
  }

  GenerativeConfigurationProtocol._internalSessionTrackingConfig.getter();
  v26 = v45;
  if ((*(v15 + 48))(v14, 1, v45) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMd, &_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMR);
  }

  else
  {
    (*(v15 + 32))(v18, v14, v26);
    v27 = _ClientInfoSessionTrackingConfig.sessionTrackingConifg.getter();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v19;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v27, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v28, &v50);

    v29 = v50;
    v30 = _ClientInfoSessionTrackingConfig._internalSessionTrackingConfig.getter();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v29;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v30, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v31, &v50);

    (*(v15 + 8))(v18, v26);
    v19 = v50;
  }

  v32 = v48;
  GenerativeFunctionInstrumenter.invocationIdentifier.getter();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  (*(v46 + 8))(v10, v47);
  v36 = GenerativeFunctionInstrumenter.functionIdentifier.getter();
  v38 = v37;
  v39 = GenerativeFunctionInstrumenter.clientRequestIdentifier.getter();
  v41 = v40;
  (*(*(a3 - 8) + 8))(v49, a3);
  v42 = type metadata accessor for GenerativeFunctionInstrumenter();
  result = (*(*(v42 - 8) + 8))(v32, v42);
  *a4 = v33;
  a4[1] = v35;
  a4[2] = v36;
  a4[3] = v38;
  a4[4] = v39;
  a4[5] = v41;
  a4[6] = v19;
  return result;
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v9 = type metadata accessor for ChatMessagesPrompt();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v12 = type metadata accessor for CompletionPrompt();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v14 = *(v13 + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v15 = type metadata accessor for PromptVariant();
  v8[27] = v15;
  v16 = *(v15 - 8);
  v8[28] = v16;
  v17 = *(v16 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  v8[31] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  v8[33] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v8[34] = swift_task_alloc();
  v22 = type metadata accessor for ScrubbedPromptVariant(0);
  v8[35] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v8[48] = v24;
  v25 = *(v24 - 8);
  v8[49] = v25;
  v26 = *(v25 + 64) + 15;
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v27 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v8[54] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR) - 8) + 64) + 15;
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v30 = type metadata accessor for Prompt();
  v8[61] = v30;
  v31 = *(v30 - 8);
  v8[62] = v31;
  v32 = *(v31 + 64) + 15;
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR) - 8) + 64) + 15;
  v8[66] = swift_task_alloc();
  v34 = type metadata accessor for PromptTemplate();
  v8[67] = v34;
  v35 = *(v34 - 8);
  v8[68] = v35;
  v36 = *(v35 + 64) + 15;
  v8[69] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v8[70] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:), 0, 0);
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)()
{
  v1 = v0[70];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[13];
  v0[71] = GenerativeConfigurationProtocol.variableBindings.getter();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  GenerativeConfigurationProtocol.promptContent.getter();
  Prompt.promptTemplateIfWholePromptIsASinglePromptTemplate()(v2);
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[61];
  v13 = v0[62];
  v14 = *(v13 + 8);
  v0[72] = v14;
  v0[73] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  if ((*(v8 + 48))(v10, 1, v9) == 1)
  {
    v16 = v0[59];
    v15 = v0[60];
    v17 = v0[48];
    v18 = v0[49];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[66], &_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR);
    (*(v18 + 56))(v15, 1, 1, v17);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15, v16, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v19 = (*(v18 + 48))(v16, 1, v17);
    v20 = v0[59];
    if (v19 == 1)
    {

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v21 = swift_task_alloc();
      v0[76] = v21;
      *v21 = v0;
      v21[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v22 = v0[70];
      v23 = v0[46];
    }

    else
    {
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[59], v0[53], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v35 = swift_task_alloc();
      v0[74] = v35;
      *v35 = v0;
      v35[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v22 = v0[70];
      v23 = v0[47];
    }
  }

  else
  {
    v24 = v0[69];
    v25 = v0[68];
    v26 = v0[67];
    v27 = v0[58];
    v29 = v0[48];
    v28 = v0[49];
    v30 = v0[17];
    v41 = v0[18];
    v42 = v0[57];
    v40 = v0[16];
    (*(v25 + 32))(v24, v0[66], v26);
    v31 = *(v29 + 48);
    (*(v25 + 16))(v27, v24, v26);
    GenerativeConfigurationProtocol<>.locale.getter();
    (*(v28 + 56))(v27, 0, 1, v29);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, v42, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v32 = (*(v28 + 48))(v42, 1, v29);
    v33 = v0[57];
    if (v32 == 1)
    {

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v34 = swift_task_alloc();
      v0[89] = v34;
      *v34 = v0;
      v34[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v22 = v0[70];
      v23 = v0[40];
    }

    else
    {
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[57], v0[50], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v36 = swift_task_alloc();
      v0[87] = v36;
      *v36 = v0;
      v36[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v22 = v0[70];
      v23 = v0[41];
    }
  }

  v37 = v0[14];
  v38 = v0[15];

  return closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v23, v37, v38, v22);
}

{
  v2 = *(*v1 + 592);
  v3 = *v1;
  v3[75] = v0;

  if (v0)
  {
    v4 = v3[71];

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[78] = v5;
    *v5 = v3;
    v5[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v6 = v3[71];

    return Dictionary<>.richVariableBindings()(v6);
  }
}

{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[60];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[53], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v40 = v0[75];
  v2 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v3 = v0[69];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[59];
  v9 = v0[60];
  v10 = v0[58];
  v13 = v0[57];
  v14 = v0[56];
  v15 = v0[55];
  v16 = v0[53];
  v17 = v0[52];
  v18 = v0[51];
  v19 = v0[50];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[37];
  v31 = v0[36];
  v32 = v0[34];
  v33 = v0[32];
  v34 = v0[30];
  v35 = v0[29];
  v36 = v0[26];
  v37 = v0[25];
  v38 = v0[22];
  v39 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[35];
  outlined init with copy of PromptCompletion(v0[47], v0[45], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[45];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[31];
    v4 = v0[32];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v5) = *(v4 + *(v5 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = v0[71];

      v7 = v0[68];
      v8 = v0[67];
      v140 = v0[79];
      v143 = v0[60];
      v9 = v0[52];
      v10 = v0[53];
      v11 = v0[51];
      v12 = v0[48];
      v146 = v0[43];
      v149 = v0[47];
      v152 = v0[35];
      v158 = v0[28];
      v161 = v0[56];
      v155 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v137 = *(v12 + 48);
      PromptTemplate.templateID.getter();
      v13 = *(v7 + 8);
      v13(v9, v8);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v14 = v11 + *(v12 + 48);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v143, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v13(v11, v8);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v137, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v149, v146, type metadata accessor for ScrubbedPromptVariant);
      v15 = swift_getEnumCaseMultiPayload();
      v16 = v0[43];
      if (v15 == 1)
      {
        v17 = v0 + 32;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v18 = MEMORY[0x1E69DA6E8];
        v19 = 19;
        v20 = 20;
      }

      else
      {
        v17 = v0 + 34;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v18 = MEMORY[0x1E69DA6E0];
        v19 = 23;
        v20 = 24;
      }

      v46 = *v17;
      v47 = v0[56];
      v48 = v0[54];
      v49 = v0[47];
      v50 = v0[27];
      (*(v0[v20] + 32))(v161 + v155, v46, v0[v19]);
      (*(v158 + 104))(v161 + v155, *v18, v50);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v49, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      v51 = v0[16];
      v52 = v0[17];
      v53 = v0[13];
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[56], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v52 - 8) + 8))(v51, v52);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v53, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      v54 = v0[69];
      v55 = v0[66];
      v56 = v0[65];
      v58 = v0[63];
      v57 = v0[64];
      v59 = v0[59];
      v60 = v0[60];
      v61 = v0[58];
      v102 = v0[57];
      v104 = v0[56];
      v106 = v0[55];
      v108 = v0[53];
      v110 = v0[52];
      v112 = v0[51];
      v114 = v0[50];
      v116 = v0[47];
      v118 = v0[46];
      v120 = v0[45];
      v122 = v0[44];
      v124 = v0[43];
      v126 = v0[42];
      v128 = v0[41];
      v130 = v0[40];
      v132 = v0[39];
      v134 = v0[38];
      v136 = v0[37];
      v139 = v0[36];
      v142 = v0[34];
      v145 = v0[32];
      v148 = v0[30];
      v151 = v0[29];
      v154 = v0[26];
      v157 = v0[25];
      v160 = v0[22];
      v162 = v0[21];
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v45 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v22 = v0[33];
    v21 = v0[34];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v21, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v22) = *(v21 + *(v22 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v22 != 1)
    {
      goto LABEL_3;
    }
  }

  v23 = v0[80];
  v24 = v0[64];
  v25 = v0[53];
  v26 = type metadata accessor for CatalogClient();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = CatalogClient.init()();
  v30 = MEMORY[0x1E69DA6B8];
  v0[5] = v26;
  v0[6] = v30;
  v0[2] = v29;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v23)
  {
    v31 = v0[79];
    v32 = v0[71];
    v33 = v0[60];
    v34 = v0[53];
    v35 = v0[47];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v35, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v36 = v0[13];
    (*(*(v0[17] - 8) + 8))(v0[16]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    v37 = v0[69];
    v38 = v0[66];
    v39 = v0[65];
    v41 = v0[63];
    v40 = v0[64];
    v42 = v0[59];
    v43 = v0[60];
    v44 = v0[58];
    v100 = v0[57];
    v101 = v0[56];
    v103 = v0[55];
    v105 = v0[53];
    v107 = v0[52];
    v109 = v0[51];
    v111 = v0[50];
    v113 = v0[47];
    v115 = v0[46];
    v117 = v0[45];
    v119 = v0[44];
    v121 = v0[43];
    v123 = v0[42];
    v125 = v0[41];
    v127 = v0[40];
    v129 = v0[39];
    v131 = v0[38];
    v133 = v0[37];
    v135 = v0[36];
    v138 = v0[34];
    v141 = v0[32];
    v144 = v0[30];
    v147 = v0[29];
    v150 = v0[26];
    v153 = v0[25];
    v156 = v0[22];
    v159 = v0[21];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v45 = v0[1];
LABEL_10:

    return v45();
  }

  v63 = v0[47];
  v64 = v0[44];
  v65 = v0[35];
  v66 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of PromptCompletion(v63, v64, type metadata accessor for ScrubbedPromptVariant);
  v67 = swift_getEnumCaseMultiPayload();
  v68 = (v66 + 104);
  v69 = v0[44];
  v70 = v0[30];
  v71 = v0[27];
  if (v67 == 1)
  {
    v72 = v0[32];
    v73 = v0[19];
    v74 = v0[20];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v69, v72, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v74 + 32))(v70, v72, v73);
    (*v68)(v70, *MEMORY[0x1E69DA6E8], v71);
    v75 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v76 = v0[34];
    v77 = v0[23];
    v78 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v69, v76, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v78 + 32))(v70, v76, v77);
    v75 = *MEMORY[0x1E69DA6E0];
    (*v68)(v70, *MEMORY[0x1E69DA6E0], v71);
  }

  v79 = (*(v0[28] + 88))(v0[30], v0[27]);
  if (v79 == v75)
  {
    v80 = v0[71];
    v81 = v0[30];
    v82 = v0[27];
    v83 = v0[28];
    v84 = v0[26];
    v85 = v0[23];
    v86 = v0[24];

    (*(v83 + 96))(v81, v82);
    (*(v86 + 32))(v84, v81, v85);
    v163 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v87 = swift_task_alloc();
    v0[81] = v87;
    *v87 = v0;
    v87[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v88 = v0[79];
    v89 = v0[64];
    v90 = v0[26];
LABEL_20:

    return (v163)(v89, v88, v90);
  }

  if (v79 == *MEMORY[0x1E69DA6E8])
  {
    v91 = v0[71];
    v92 = v0[30];
    v93 = v0[27];
    v94 = v0[28];
    v95 = v0[22];
    v96 = v0[19];
    v97 = v0[20];

    (*(v94 + 96))(v92, v93);
    (*(v97 + 32))(v95, v92, v96);
    v163 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v98 = swift_task_alloc();
    v0[83] = v98;
    *v98 = v0;
    v98[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v88 = v0[79];
    v89 = v0[64];
    v90 = v0[22];
    goto LABEL_20;
  }

  v99 = v0[27];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[60];
  v2 = v0[53];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[47], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v41 = v0[80];
  v3 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v4 = v0[69];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v9 = v0[59];
  v10 = v0[60];
  v11 = v0[58];
  v14 = v0[57];
  v15 = v0[56];
  v16 = v0[55];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[47];
  v22 = v0[46];
  v23 = v0[45];
  v24 = v0[44];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[37];
  v32 = v0[36];
  v33 = v0[34];
  v34 = v0[32];
  v35 = v0[30];
  v36 = v0[29];
  v37 = v0[26];
  v38 = v0[25];
  v39 = v0[22];
  v40 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0;
  v3 = v0[24];
  v2 = v0 + 24;
  v5 = v2[48];
  v4 = v2[49];
  v6 = v2[40];
  v7 = v2[37];
  (*(v3 + 8))(v2[2], *(v2 - 1));
  v5(v6, v7);
  v59 = v2[61];
  v9 = v2[43];
  v8 = v2[44];
  v61 = v2[36];
  v73 = v2[32];
  v10 = v2[28];
  v11 = v2[29];
  v55 = v2[27];
  v12 = v2[24];
  v63 = v2[19];
  v65 = v2[23];
  v67 = v2[11];
  v71 = v2[4];
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v57 = *(v12 + 48);
  PromptTemplate.templateID.getter();
  v13 = *(v8 + 8);
  v13(v10, v9);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v55, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v14 = v55 + *(v12 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v13(v55, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10 + v57, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v65, v63, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v2[19];
  if (EnumCaseMultiPayload == 1)
  {
    v17 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v2 = v1 + 20;
    v18 = v1 + 19;
    v19 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v17 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v19 = MEMORY[0x1E69DA6E0];
    v18 = v2 - 1;
  }

  v20 = *v17;
  v21 = v1[56];
  v22 = v1[54];
  v23 = v1[47];
  v24 = v1[27];
  (*(*v2 + 32))(v73 + v69, v20, *v18);
  (*(v71 + 104))(v73 + v69, *v19, v24);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v23, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v25 = v1[16];
  v26 = v1[17];
  v27 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[56], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v26 - 8) + 8))(v25, v26);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v28 = v1[69];
  v29 = v1[66];
  v30 = v1[65];
  v31 = v1[63];
  v32 = v1[64];
  v33 = v1[59];
  v34 = v1[60];
  v35 = v1[58];
  v38 = v1[57];
  v39 = v1[56];
  v40 = v1[55];
  v41 = v1[53];
  v42 = v1[52];
  v43 = v1[51];
  v44 = v1[50];
  v45 = v1[47];
  v46 = v1[46];
  v47 = v1[45];
  v48 = v1[44];
  v49 = v1[43];
  v50 = v1[42];
  v51 = v1[41];
  v52 = v1[40];
  v53 = v1[39];
  v54 = v1[38];
  v56 = v1[37];
  v58 = v1[36];
  v60 = v1[34];
  v62 = v1[32];
  v64 = v1[30];
  v66 = v1[29];
  v68 = v1[26];
  v70 = v1[25];
  v72 = v1[22];
  v74 = v1[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v36 = v1[1];

  return v36();
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[53];
  v7 = v0[47];
  (*(v0[24] + 8))(v0[26], v0[23]);
  v2(v3, v4);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v7, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v46 = v0[82];
  v8 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[65];
  v13 = v0[63];
  v12 = v0[64];
  v14 = v0[59];
  v15 = v0[60];
  v16 = v0[58];
  v19 = v0[57];
  v20 = v0[56];
  v21 = v0[55];
  v22 = v0[53];
  v23 = v0[52];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v29 = v0[44];
  v30 = v0[43];
  v31 = v0[42];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[34];
  v39 = v0[32];
  v40 = v0[30];
  v41 = v0[29];
  v42 = v0[26];
  v43 = v0[25];
  v44 = v0[22];
  v45 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v17 = v0[1];

  return v17();
}

{
  v1 = v0;
  v3 = v0[20];
  v2 = v0 + 20;
  v5 = v2[52];
  v4 = v2[53];
  v6 = v2[44];
  v7 = v2[41];
  (*(v3 + 8))(v2[2], *(v2 - 1));
  v5(v6, v7);
  v59 = v2[66];
  v9 = v2[47];
  v8 = v2[48];
  v61 = v2[40];
  v73 = v2[36];
  v10 = v2[32];
  v11 = v2[33];
  v55 = v2[31];
  v12 = v2[28];
  v63 = v2[23];
  v65 = v2[27];
  v67 = v2[15];
  v71 = v2[8];
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v57 = *(v12 + 48);
  PromptTemplate.templateID.getter();
  v13 = *(v8 + 8);
  v13(v10, v9);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v55, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v14 = v55 + *(v12 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v13(v55, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10 + v57, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v65, v63, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v2[23];
  if (EnumCaseMultiPayload == 1)
  {
    v17 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v18 = MEMORY[0x1E69DA6E8];
    v19 = v2 - 1;
  }

  else
  {
    v17 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v2 = v1 + 24;
    v19 = v1 + 23;
    v18 = MEMORY[0x1E69DA6E0];
  }

  v20 = *v17;
  v21 = v1[56];
  v22 = v1[54];
  v23 = v1[47];
  v24 = v1[27];
  (*(*v2 + 32))(v73 + v69, v20, *v19);
  (*(v71 + 104))(v73 + v69, *v18, v24);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v23, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v25 = v1[16];
  v26 = v1[17];
  v27 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[56], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v26 - 8) + 8))(v25, v26);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v28 = v1[69];
  v29 = v1[66];
  v30 = v1[65];
  v31 = v1[63];
  v32 = v1[64];
  v33 = v1[59];
  v34 = v1[60];
  v35 = v1[58];
  v38 = v1[57];
  v39 = v1[56];
  v40 = v1[55];
  v41 = v1[53];
  v42 = v1[52];
  v43 = v1[51];
  v44 = v1[50];
  v45 = v1[47];
  v46 = v1[46];
  v47 = v1[45];
  v48 = v1[44];
  v49 = v1[43];
  v50 = v1[42];
  v51 = v1[41];
  v52 = v1[40];
  v53 = v1[39];
  v54 = v1[38];
  v56 = v1[37];
  v58 = v1[36];
  v60 = v1[34];
  v62 = v1[32];
  v64 = v1[30];
  v66 = v1[29];
  v68 = v1[26];
  v70 = v1[25];
  v72 = v1[22];
  v74 = v1[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v36 = v1[1];

  return v36();
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[53];
  v7 = v0[47];
  (*(v0[20] + 8))(v0[22], v0[19]);
  v2(v3, v4);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v7, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v46 = v0[84];
  v8 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[65];
  v13 = v0[63];
  v12 = v0[64];
  v14 = v0[59];
  v15 = v0[60];
  v16 = v0[58];
  v19 = v0[57];
  v20 = v0[56];
  v21 = v0[55];
  v22 = v0[53];
  v23 = v0[52];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v29 = v0[44];
  v30 = v0[43];
  v31 = v0[42];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[34];
  v39 = v0[32];
  v40 = v0[30];
  v41 = v0[29];
  v42 = v0[26];
  v43 = v0[25];
  v44 = v0[22];
  v45 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[28];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[60], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v1, v2, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[42];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v8 = MEMORY[0x1E69DA6E8];
    v9 = 19;
    v10 = 20;
  }

  else
  {
    v7 = v0 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v8 = MEMORY[0x1E69DA6E0];
    v9 = 23;
    v10 = 24;
  }

  v11 = *v7;
  v12 = v0[56];
  v13 = v0[54];
  v14 = v0[46];
  v15 = v0[27];
  (*(v0[v10] + 32))(v12, v11, v0[v9]);
  (*(v4 + 104))(v12, *v8, v15);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v14, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[56], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v17 - 8) + 8))(v16, v17);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v19 = v0[69];
  v20 = v0[66];
  v21 = v0[65];
  v23 = v0[63];
  v22 = v0[64];
  v24 = v0[59];
  v25 = v0[60];
  v26 = v0[58];
  v29 = v0[57];
  v30 = v0[56];
  v31 = v0[55];
  v32 = v0[53];
  v33 = v0[52];
  v34 = v0[51];
  v35 = v0[50];
  v36 = v0[47];
  v37 = v0[46];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[42];
  v42 = v0[41];
  v43 = v0[40];
  v44 = v0[39];
  v45 = v0[38];
  v46 = v0[37];
  v47 = v0[36];
  v48 = v0[34];
  v49 = v0[32];
  v50 = v0[30];
  v51 = v0[29];
  v52 = v0[26];
  v53 = v0[25];
  v54 = v0[22];
  v55 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v27 = v0[1];

  return v27();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[60], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v39 = v0[77];
  v1 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[59];
  v8 = v0[60];
  v9 = v0[58];
  v12 = v0[57];
  v13 = v0[56];
  v14 = v0[55];
  v15 = v0[53];
  v16 = v0[52];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[45];
  v22 = v0[44];
  v23 = v0[43];
  v24 = v0[42];
  v25 = v0[41];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[34];
  v32 = v0[32];
  v33 = v0[30];
  v34 = v0[29];
  v35 = v0[26];
  v36 = v0[25];
  v37 = v0[22];
  v38 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v10 = v0[1];

  return v10();
}

{
  v2 = *(*v1 + 696);
  v3 = *v1;
  v3[88] = v0;

  if (v0)
  {
    v4 = v3[71];

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[91] = v5;
    *v5 = v3;
    v5[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v6 = v3[71];

    return Dictionary<>.richVariableBindings()(v6);
  }
}

{
  v2 = *(*v1 + 712);
  v5 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v3 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[58];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[50], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v43 = v0[88];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v3 + 8))(v2, v4);
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[63];
  v10 = v0[64];
  v11 = v0[59];
  v12 = v0[60];
  v13 = v0[58];
  v16 = v0[57];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[53];
  v20 = v0[52];
  v21 = v0[51];
  v22 = v0[50];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[45];
  v26 = v0[44];
  v27 = v0[43];
  v28 = v0[42];
  v29 = v0[41];
  v30 = v0[40];
  v31 = v0[39];
  v32 = v0[38];
  v33 = v0[37];
  v34 = v0[36];
  v35 = v0[34];
  v36 = v0[32];
  v37 = v0[30];
  v38 = v0[29];
  v39 = v0[26];
  v40 = v0[25];
  v41 = v0[22];
  v42 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[35];
  outlined init with copy of PromptCompletion(v0[41], v0[39], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[39];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[31];
    v4 = v0[32];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v5) = *(v4 + *(v5 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = v0[71];

      v7 = v0[68];
      v8 = v0[67];
      v146 = v0[92];
      v149 = v0[58];
      v10 = v0[51];
      v9 = v0[52];
      v11 = v0[50];
      v12 = v0[48];
      v152 = v0[37];
      v155 = v0[41];
      v158 = v0[35];
      v164 = v0[28];
      v167 = v0[55];
      v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v143 = *(v12 + 48);
      PromptTemplate.templateID.getter();
      v13 = *(v7 + 8);
      v13(v9, v8);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v14 = v10 + *(v12 + 48);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v149, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v13(v10, v8);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v143, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v155, v152, type metadata accessor for ScrubbedPromptVariant);
      v15 = swift_getEnumCaseMultiPayload();
      v16 = v0[37];
      if (v15 == 1)
      {
        v17 = v0 + 32;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v18 = MEMORY[0x1E69DA6E8];
        v19 = 19;
        v20 = 20;
      }

      else
      {
        v17 = v0 + 34;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v18 = MEMORY[0x1E69DA6E0];
        v19 = 23;
        v20 = 24;
      }

      v49 = *v17;
      v50 = v0[54];
      v51 = v0[55];
      v52 = v0[41];
      v53 = v0[27];
      (*(v0[v20] + 32))(v167 + v161, v49, v0[v19]);
      (*(v164 + 104))(v167 + v161, *v18, v53);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v52, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      v54 = v0[69];
      v55 = v0[68];
      v56 = v0[67];
      v58 = v0[16];
      v57 = v0[17];
      v59 = v0[13];
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[55], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v57 - 8) + 8))(v58, v57);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v59, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      (*(v55 + 8))(v54, v56);
      v60 = v0[69];
      v61 = v0[66];
      v62 = v0[65];
      v64 = v0[63];
      v63 = v0[64];
      v65 = v0[59];
      v66 = v0[60];
      v67 = v0[58];
      v108 = v0[57];
      v110 = v0[56];
      v112 = v0[55];
      v114 = v0[53];
      v116 = v0[52];
      v118 = v0[51];
      v120 = v0[50];
      v122 = v0[47];
      v124 = v0[46];
      v126 = v0[45];
      v128 = v0[44];
      v130 = v0[43];
      v132 = v0[42];
      v134 = v0[41];
      v136 = v0[40];
      v138 = v0[39];
      v140 = v0[38];
      v142 = v0[37];
      v145 = v0[36];
      v148 = v0[34];
      v151 = v0[32];
      v154 = v0[30];
      v157 = v0[29];
      v160 = v0[26];
      v163 = v0[25];
      v166 = v0[22];
      v168 = v0[21];
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v48 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v22 = v0[33];
    v21 = v0[34];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v21, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v22) = *(v21 + *(v22 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v22 != 1)
    {
      goto LABEL_3;
    }
  }

  v23 = v0[93];
  v24 = v0[63];
  v25 = v0[50];
  v26 = type metadata accessor for CatalogClient();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = CatalogClient.init()();
  v30 = MEMORY[0x1E69DA6B8];
  v0[10] = v26;
  v0[11] = v30;
  v0[7] = v29;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v23)
  {
    v31 = v0[92];
    v32 = v0[71];
    v33 = v0[58];
    v34 = v0[50];
    v35 = v0[41];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v35, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v36 = v0[69];
    v37 = v0[68];
    v38 = v0[67];
    v39 = v0[13];
    (*(*(v0[17] - 8) + 8))(v0[16]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    (*(v37 + 8))(v36, v38);
    v40 = v0[69];
    v41 = v0[66];
    v42 = v0[65];
    v43 = v0[63];
    v44 = v0[64];
    v46 = v0[59];
    v45 = v0[60];
    v47 = v0[58];
    v106 = v0[57];
    v107 = v0[56];
    v109 = v0[55];
    v111 = v0[53];
    v113 = v0[52];
    v115 = v0[51];
    v117 = v0[50];
    v119 = v0[47];
    v121 = v0[46];
    v123 = v0[45];
    v125 = v0[44];
    v127 = v0[43];
    v129 = v0[42];
    v131 = v0[41];
    v133 = v0[40];
    v135 = v0[39];
    v137 = v0[38];
    v139 = v0[37];
    v141 = v0[36];
    v144 = v0[34];
    v147 = v0[32];
    v150 = v0[30];
    v153 = v0[29];
    v156 = v0[26];
    v159 = v0[25];
    v162 = v0[22];
    v165 = v0[21];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v48 = v0[1];
LABEL_10:

    return v48();
  }

  v69 = v0[41];
  v70 = v0[38];
  v71 = v0[35];
  v72 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  outlined init with copy of PromptCompletion(v69, v70, type metadata accessor for ScrubbedPromptVariant);
  v73 = swift_getEnumCaseMultiPayload();
  v74 = (v72 + 104);
  v75 = v0[38];
  v76 = v0[29];
  v77 = v0[27];
  if (v73 == 1)
  {
    v78 = v0[32];
    v79 = v0[19];
    v80 = v0[20];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v75, v78, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v80 + 32))(v76, v78, v79);
    (*v74)(v76, *MEMORY[0x1E69DA6E8], v77);
    v81 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v82 = v0[34];
    v83 = v0[23];
    v84 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v75, v82, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v84 + 32))(v76, v82, v83);
    v81 = *MEMORY[0x1E69DA6E0];
    (*v74)(v76, *MEMORY[0x1E69DA6E0], v77);
  }

  v85 = (*(v0[28] + 88))(v0[29], v0[27]);
  if (v85 == v81)
  {
    v86 = v0[71];
    v88 = v0[28];
    v87 = v0[29];
    v89 = v0[27];
    v91 = v0[24];
    v90 = v0[25];
    v92 = v0[23];

    (*(v88 + 96))(v87, v89);
    (*(v91 + 32))(v90, v87, v92);
    v169 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v93 = swift_task_alloc();
    v0[94] = v93;
    *v93 = v0;
    v93[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v94 = v0[92];
    v95 = v0[63];
    v96 = v0[25];
LABEL_20:

    return (v169)(v95, v94, v96);
  }

  if (v85 == *MEMORY[0x1E69DA6E8])
  {
    v97 = v0[71];
    v99 = v0[28];
    v98 = v0[29];
    v100 = v0[27];
    v102 = v0[20];
    v101 = v0[21];
    v103 = v0[19];

    (*(v99 + 96))(v98, v100);
    (*(v102 + 32))(v101, v98, v103);
    v169 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v104 = swift_task_alloc();
    v0[96] = v104;
    *v104 = v0;
    v104[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v94 = v0[92];
    v95 = v0[63];
    v96 = v0[21];
    goto LABEL_20;
  }

  v105 = v0[27];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[58];
  v2 = v0[50];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[41], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v44 = v0[93];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v4 + 8))(v3, v5);
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[63];
  v11 = v0[64];
  v12 = v0[59];
  v13 = v0[60];
  v14 = v0[58];
  v17 = v0[57];
  v18 = v0[56];
  v19 = v0[55];
  v20 = v0[53];
  v21 = v0[52];
  v22 = v0[51];
  v23 = v0[50];
  v24 = v0[47];
  v25 = v0[46];
  v26 = v0[45];
  v27 = v0[44];
  v28 = v0[43];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[36];
  v36 = v0[34];
  v37 = v0[32];
  v38 = v0[30];
  v39 = v0[29];
  v40 = v0[26];
  v41 = v0[25];
  v42 = v0[22];
  v43 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0;
  v3 = v0[24];
  v2 = v0 + 24;
  v5 = v2[48];
  v4 = v2[49];
  v6 = v2[39];
  v7 = v2[37];
  (*(v3 + 8))(v2[1], *(v2 - 1));
  v5(v6, v7);
  v62 = v2[74];
  v9 = v2[43];
  v8 = v2[44];
  v64 = v2[34];
  v76 = v2[31];
  v10 = v2[28];
  v58 = v2[27];
  v11 = v2[26];
  v12 = v2[24];
  v66 = v2[13];
  v68 = v2[17];
  v70 = v2[11];
  v74 = v2[4];
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v60 = *(v12 + 48);
  PromptTemplate.templateID.getter();
  v13 = *(v8 + 8);
  v13(v10, v9);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v58, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v14 = v58 + *(v12 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v64, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v13(v58, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10 + v60, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v68, v66, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v2[13];
  if (EnumCaseMultiPayload == 1)
  {
    v17 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v2 = v1 + 20;
    v18 = v1 + 19;
    v19 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v17 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v19 = MEMORY[0x1E69DA6E0];
    v18 = v2 - 1;
  }

  v20 = *v17;
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[41];
  v24 = v1[27];
  (*(*v2 + 32))(v76 + v72, v20, *v18);
  (*(v74 + 104))(v76 + v72, *v19, v24);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v23, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v25 = v1[69];
  v26 = v1[68];
  v27 = v1[67];
  v29 = v1[16];
  v28 = v1[17];
  v30 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[55], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v28 - 8) + 8))(v29, v28);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v26 + 8))(v25, v27);
  v31 = v1[69];
  v32 = v1[66];
  v33 = v1[65];
  v35 = v1[63];
  v34 = v1[64];
  v36 = v1[59];
  v37 = v1[60];
  v38 = v1[58];
  v41 = v1[57];
  v42 = v1[56];
  v43 = v1[55];
  v44 = v1[53];
  v45 = v1[52];
  v46 = v1[51];
  v47 = v1[50];
  v48 = v1[47];
  v49 = v1[46];
  v50 = v1[45];
  v51 = v1[44];
  v52 = v1[43];
  v53 = v1[42];
  v54 = v1[41];
  v55 = v1[40];
  v56 = v1[39];
  v57 = v1[38];
  v59 = v1[37];
  v61 = v1[36];
  v63 = v1[34];
  v65 = v1[32];
  v67 = v1[30];
  v69 = v1[29];
  v71 = v1[26];
  v73 = v1[25];
  v75 = v1[22];
  v77 = v1[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v39 = v1[1];

  return v39();
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[63];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[50];
  v7 = v0[41];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v2(v3, v4);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v7, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v49 = v0[95];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v9 + 8))(v8, v10);
  v12 = v0[69];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[63];
  v16 = v0[64];
  v17 = v0[59];
  v18 = v0[60];
  v19 = v0[58];
  v22 = v0[57];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[51];
  v28 = v0[50];
  v29 = v0[47];
  v30 = v0[46];
  v31 = v0[45];
  v32 = v0[44];
  v33 = v0[43];
  v34 = v0[42];
  v35 = v0[41];
  v36 = v0[40];
  v37 = v0[39];
  v38 = v0[38];
  v39 = v0[37];
  v40 = v0[36];
  v41 = v0[34];
  v42 = v0[32];
  v43 = v0[30];
  v44 = v0[29];
  v45 = v0[26];
  v46 = v0[25];
  v47 = v0[22];
  v48 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v20 = v0[1];

  return v20();
}

{
  v1 = v0;
  v3 = v0[20];
  v2 = v0 + 20;
  v5 = v2[52];
  v4 = v2[53];
  v6 = v2[43];
  v7 = v2[41];
  (*(v3 + 8))(v2[1], *(v2 - 1));
  v5(v6, v7);
  v62 = v2[79];
  v9 = v2[47];
  v8 = v2[48];
  v64 = v2[38];
  v76 = v2[35];
  v10 = v2[32];
  v58 = v2[31];
  v11 = v2[30];
  v12 = v2[28];
  v66 = v2[17];
  v68 = v2[21];
  v70 = v2[15];
  v74 = v2[8];
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v60 = *(v12 + 48);
  PromptTemplate.templateID.getter();
  v13 = *(v8 + 8);
  v13(v10, v9);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v58, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v14 = v58 + *(v12 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v64, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v13(v58, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10 + v60, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v68, v66, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v2[17];
  if (EnumCaseMultiPayload == 1)
  {
    v17 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v18 = MEMORY[0x1E69DA6E8];
    v19 = v2 - 1;
  }

  else
  {
    v17 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v2 = v1 + 24;
    v19 = v1 + 23;
    v18 = MEMORY[0x1E69DA6E0];
  }

  v20 = *v17;
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[41];
  v24 = v1[27];
  (*(*v2 + 32))(v76 + v72, v20, *v19);
  (*(v74 + 104))(v76 + v72, *v18, v24);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v23, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v25 = v1[69];
  v26 = v1[68];
  v27 = v1[67];
  v29 = v1[16];
  v28 = v1[17];
  v30 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[55], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v28 - 8) + 8))(v29, v28);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v26 + 8))(v25, v27);
  v31 = v1[69];
  v32 = v1[66];
  v33 = v1[65];
  v35 = v1[63];
  v34 = v1[64];
  v36 = v1[59];
  v37 = v1[60];
  v38 = v1[58];
  v41 = v1[57];
  v42 = v1[56];
  v43 = v1[55];
  v44 = v1[53];
  v45 = v1[52];
  v46 = v1[51];
  v47 = v1[50];
  v48 = v1[47];
  v49 = v1[46];
  v50 = v1[45];
  v51 = v1[44];
  v52 = v1[43];
  v53 = v1[42];
  v54 = v1[41];
  v55 = v1[40];
  v56 = v1[39];
  v57 = v1[38];
  v59 = v1[37];
  v61 = v1[36];
  v63 = v1[34];
  v65 = v1[32];
  v67 = v1[30];
  v69 = v1[29];
  v71 = v1[26];
  v73 = v1[25];
  v75 = v1[22];
  v77 = v1[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v39 = v1[1];

  return v39();
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[63];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[50];
  v7 = v0[41];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v2(v3, v4);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v7, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v49 = v0[97];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v9 + 8))(v8, v10);
  v12 = v0[69];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[63];
  v16 = v0[64];
  v17 = v0[59];
  v18 = v0[60];
  v19 = v0[58];
  v22 = v0[57];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[51];
  v28 = v0[50];
  v29 = v0[47];
  v30 = v0[46];
  v31 = v0[45];
  v32 = v0[44];
  v33 = v0[43];
  v34 = v0[42];
  v35 = v0[41];
  v36 = v0[40];
  v37 = v0[39];
  v38 = v0[38];
  v39 = v0[37];
  v40 = v0[36];
  v41 = v0[34];
  v42 = v0[32];
  v43 = v0[30];
  v44 = v0[29];
  v45 = v0[26];
  v46 = v0[25];
  v47 = v0[22];
  v48 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[40];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[28];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[58], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v1, v2, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v8 = MEMORY[0x1E69DA6E8];
    v9 = 19;
    v10 = 20;
  }

  else
  {
    v7 = v0 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v8 = MEMORY[0x1E69DA6E0];
    v9 = 23;
    v10 = 24;
  }

  v11 = *v7;
  v12 = v0[55];
  v13 = v0[40];
  v14 = v0[27];
  (*(v0[v10] + 32))(v12, v11, v0[v9]);
  (*(v4 + 104))(v12, *v8, v14);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v13, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v15 = v0[69];
  v16 = v0[68];
  v17 = v0[67];
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[55], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v18 - 8) + 8))(v19, v18);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v16 + 8))(v15, v17);
  v21 = v0[69];
  v22 = v0[66];
  v23 = v0[65];
  v25 = v0[63];
  v24 = v0[64];
  v26 = v0[59];
  v27 = v0[60];
  v28 = v0[58];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[55];
  v34 = v0[53];
  v35 = v0[52];
  v36 = v0[51];
  v37 = v0[50];
  v38 = v0[47];
  v39 = v0[46];
  v40 = v0[45];
  v41 = v0[44];
  v42 = v0[43];
  v43 = v0[42];
  v44 = v0[41];
  v45 = v0[40];
  v46 = v0[39];
  v47 = v0[38];
  v48 = v0[37];
  v49 = v0[36];
  v50 = v0[34];
  v51 = v0[32];
  v52 = v0[30];
  v53 = v0[29];
  v54 = v0[26];
  v55 = v0[25];
  v56 = v0[22];
  v57 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v29 = v0[1];

  return v29();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[58], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v42 = v0[90];
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  v5 = v0[69];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[59];
  v11 = v0[60];
  v12 = v0[58];
  v15 = v0[57];
  v16 = v0[56];
  v17 = v0[55];
  v18 = v0[53];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[47];
  v23 = v0[46];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[43];
  v27 = v0[42];
  v28 = v0[41];
  v29 = v0[40];
  v30 = v0[39];
  v31 = v0[38];
  v32 = v0[37];
  v33 = v0[36];
  v34 = v0[34];
  v35 = v0[32];
  v36 = v0[30];
  v37 = v0[29];
  v38 = v0[26];
  v39 = v0[25];
  v40 = v0[22];
  v41 = v0[21];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v13 = v0[1];

  return v13();
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 624);
  v8 = *v2;
  v3[79] = a1;
  v3[80] = v1;

  if (v1)
  {
    v5 = v3[71];

    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 648);
  v6 = *v2;
  v4[82] = v1;

  v7 = v4[79];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[85] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 664);
  v6 = *v2;
  v4[84] = v1;

  v7 = v4[79];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[86] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v8 = *v2;
  v3[92] = a1;
  v3[93] = v1;

  if (v1)
  {
    v5 = v3[71];

    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 752);
  v6 = *v2;
  v4[95] = v1;

  v7 = v4[92];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[98] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 768);
  v6 = *v2;
  v4[97] = v1;

  v7 = v4[92];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[99] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a4;
  v8[17] = a5;
  v8[14] = a2;
  v8[15] = a3;
  v8[13] = a1;
  v9 = type metadata accessor for CompletionPrompt();
  v8[20] = v9;
  v10 = *(v9 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v12 = type metadata accessor for PromptVariant();
  v8[24] = v12;
  v13 = *(v12 - 8);
  v8[25] = v13;
  v14 = *(v13 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v15 = type metadata accessor for Prompt();
  v8[28] = v15;
  v16 = *(v15 - 8);
  v8[29] = v16;
  v17 = *(v16 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  v8[32] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v20 = type metadata accessor for ChatMessagesPrompt();
  v8[34] = v20;
  v21 = *(v20 - 8);
  v8[35] = v21;
  v22 = *(v21 + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  v8[42] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v25 = type metadata accessor for ScrubbedPromptVariant(0);
  v8[48] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v8[61] = v27;
  v28 = *(v27 - 8);
  v8[62] = v28;
  v29 = *(v28 + 64) + 15;
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v30 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v8[67] = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR) - 8) + 64) + 15;
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMd, &_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMR);
  v8[75] = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  v8[76] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64) + 15;
  v8[77] = swift_task_alloc();
  v36 = type metadata accessor for PromptTemplate();
  v8[78] = v36;
  v37 = *(v36 - 8);
  v8[79] = v37;
  v38 = *(v37 + 64) + 15;
  v8[80] = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v8[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)()
{
  v1 = v0[81];
  v2 = v0[74];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  v0[82] = GenerativeConfigurationProtocol.variableBindings.getter();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  GenerativeConfigurationProtocol.promptContent.getter();
  v7 = v0[12];
  Array<A>.asPromptTemplate()();
  v8 = v0[74];
  v9 = v0[61];
  v10 = v0[62];

  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    v12 = v0[73];
    v13 = v0[72];
    v14 = v0[61];
    v15 = v0[62];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[74], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    (*(v15 + 56))(v12, 1, 1, v14);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, v13, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v16 = v11(v13, 1, v14);
    v17 = v0[72];
    if (v16 == 1)
    {
      v18 = v0[15];

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v51 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[92] = v20;
      *v20 = v0;
      v20[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v21 = v0[40];
    }

    else
    {
      v35 = v0[15];
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[72], v0[66], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v51 = (v35 + *v35);
      v36 = v35[1];
      v37 = swift_task_alloc();
      v0[83] = v37;
      *v37 = v0;
      v37[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v21 = v0[41];
    }
  }

  else
  {
    v22 = v0[79];
    v23 = v0[78];
    v24 = v0[76];
    v25 = v0[75];
    v52 = v11;
    v26 = v0[74];
    v47 = v0[77];
    v48 = v0[71];
    v49 = v0[62];
    v50 = v0[70];
    v45 = v0[80];
    v46 = v0[61];
    v43 = *(v25 + 48);
    v44 = *(v46 + 48);
    v27 = *(v22 + 32);
    v27(v24, v26, v23);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v26 + v44, v24 + v43, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v28 = *(v25 + 48);
    v27(v45, v24, v23);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v24 + v28, v47, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v29 = *(v46 + 48);
    (*(v22 + 16))(v48, v45, v23);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v47, v48 + v29, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    (*(v49 + 56))(v48, 0, 1, v46);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, v50, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v30 = v52(v50, 1, v46);
    v31 = v0[70];
    if (v30 == 1)
    {
      v32 = v0[15];

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v51 = (v32 + *v32);
      v33 = v32[1];
      v34 = swift_task_alloc();
      v0[111] = v34;
      *v34 = v0;
      v34[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v21 = v0[37];
    }

    else
    {
      v38 = v0[15];
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[70], v0[63], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v51 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      v0[102] = v40;
      *v40 = v0;
      v40[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
      v21 = v0[38];
    }
  }

  v41 = v0[16];

  return v51(v21);
}

{
  v2 = *(*v1 + 664);
  v3 = *v1;
  v3[84] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v4 = swift_task_alloc();
    v3[85] = v4;
    *v4 = v3;
    v4[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v5 = v3[81];
    v6 = v3[47];
    v7 = v3[41];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v6, v7, v5);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v4 = *v1;
  v2[86] = v0;

  v5 = v2[41];
  v6 = v2[35];
  v7 = v2[34];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2[87] = v9;
    v2[88] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  v51 = v0[84];
  v1 = v0[82];
  v2 = v0[73];
  v3 = v0[66];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v4 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v5 = v0[80];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[70];
  v15 = v0[69];
  v16 = v0[68];
  v17 = v0[66];
  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[63];
  v21 = v0[60];
  v22 = v0[59];
  v23 = v0[58];
  v24 = v0[57];
  v25 = v0[56];
  v26 = v0[55];
  v27 = v0[54];
  v28 = v0[53];
  v29 = v0[52];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[47];
  v34 = v0[46];
  v35 = v0[45];
  v36 = v0[44];
  v37 = v0[43];
  v38 = v0[41];
  v39 = v0[40];
  v40 = v0[39];
  v41 = v0[38];
  v42 = v0[37];
  v43 = v0[36];
  v44 = v0[33];
  v45 = v0[31];
  v46 = v0[30];
  v47 = v0[27];
  v48 = v0[26];
  v49 = v0[23];
  v50 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[48];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[47], v0[60], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[89] = v2;
  *v2 = v0;
  v2[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  v3 = v0[82];

  return Dictionary<>.richVariableBindings()(v3);
}

{
  v51 = v0[86];
  v1 = v0[82];
  v2 = v0[73];
  v3 = v0[66];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v4 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v5 = v0[80];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[70];
  v15 = v0[69];
  v16 = v0[68];
  v17 = v0[66];
  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[63];
  v21 = v0[60];
  v22 = v0[59];
  v23 = v0[58];
  v24 = v0[57];
  v25 = v0[56];
  v26 = v0[55];
  v27 = v0[54];
  v28 = v0[53];
  v29 = v0[52];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[47];
  v34 = v0[46];
  v35 = v0[45];
  v36 = v0[44];
  v37 = v0[43];
  v38 = v0[41];
  v39 = v0[40];
  v40 = v0[39];
  v41 = v0[38];
  v42 = v0[37];
  v43 = v0[36];
  v44 = v0[33];
  v45 = v0[31];
  v46 = v0[30];
  v47 = v0[27];
  v48 = v0[26];
  v49 = v0[23];
  v50 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v13 = v0[1];

  return v13();
}

{
  v2 = *(*v1 + 736);
  v3 = *v1;
  v3[93] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v4 = swift_task_alloc();
    v3[94] = v4;
    *v4 = v3;
    v4[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v5 = v3[81];
    v6 = v3[46];
    v7 = v3[40];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v6, v7, v5);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v4 = *v1;
  *(*v1 + 760) = v0;

  (*(v2[35] + 8))(v2[40], v2[34]);
  if (v0)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v48 = v0[93];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[73], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v2 = v0[80];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[58];
  v21 = v0[57];
  v22 = v0[56];
  v23 = v0[55];
  v24 = v0[54];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[51];
  v28 = v0[50];
  v29 = v0[49];
  v30 = v0[47];
  v31 = v0[46];
  v32 = v0[45];
  v33 = v0[44];
  v34 = v0[43];
  v35 = v0[41];
  v36 = v0[40];
  v37 = v0[39];
  v38 = v0[38];
  v39 = v0[37];
  v40 = v0[36];
  v41 = v0[33];
  v42 = v0[31];
  v43 = v0[30];
  v44 = v0[27];
  v45 = v0[26];
  v46 = v0[23];
  v47 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[73];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[48];
  v5 = v0[25];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[46], v2, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v2, v3, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[58];
  if (EnumCaseMultiPayload == 1)
  {
    v8 = v0 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v7, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v9 = MEMORY[0x1E69DA6E8];
    v10 = 34;
    v11 = 35;
  }

  else
  {
    v8 = v0 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v7, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v9 = MEMORY[0x1E69DA6E0];
    v10 = 20;
    v11 = 21;
  }

  v12 = v0[59];
  v13 = v0[69];
  v14 = *v8;
  v15 = v0[67];
  v16 = v0[24];
  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[13];
  v65 = v0[14];
  (*(v0[v11] + 32))(v13, v14, v0[v10]);
  (*(v5 + 104))(v13, *v9, v16);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v12, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v13, v19, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v17 - 8) + 8))(v18, v17);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v20 = v0[80];
  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[70];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[66];
  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[60];
  v37 = v0[59];
  v38 = v0[58];
  v39 = v0[57];
  v40 = v0[56];
  v41 = v0[55];
  v42 = v0[54];
  v43 = v0[53];
  v44 = v0[52];
  v45 = v0[51];
  v46 = v0[50];
  v47 = v0[49];
  v48 = v0[47];
  v49 = v0[46];
  v50 = v0[45];
  v51 = v0[44];
  v52 = v0[43];
  v53 = v0[41];
  v54 = v0[40];
  v55 = v0[39];
  v56 = v0[38];
  v57 = v0[37];
  v58 = v0[36];
  v59 = v0[33];
  v60 = v0[31];
  v61 = v0[30];
  v62 = v0[27];
  v63 = v0[26];
  v64 = v0[23];
  v66 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v28 = v0[1];

  return v28();
}

{
  v48 = v0[95];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[73], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v2 = v0[80];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[58];
  v21 = v0[57];
  v22 = v0[56];
  v23 = v0[55];
  v24 = v0[54];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[51];
  v28 = v0[50];
  v29 = v0[49];
  v30 = v0[47];
  v31 = v0[46];
  v32 = v0[45];
  v33 = v0[44];
  v34 = v0[43];
  v35 = v0[41];
  v36 = v0[40];
  v37 = v0[39];
  v38 = v0[38];
  v39 = v0[37];
  v40 = v0[36];
  v41 = v0[33];
  v42 = v0[31];
  v43 = v0[30];
  v44 = v0[27];
  v45 = v0[26];
  v46 = v0[23];
  v47 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[48];
  outlined init with copy of PromptCompletion(v0[60], v0[57], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[57];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[45];
    v5 = v0[42];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v5) = *(v4 + *(v5 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = v0[82];

      v7 = v0[79];
      v8 = v0[78];
      v159 = v0[90];
      v162 = v0[73];
      v9 = v0[66];
      v10 = v0[65];
      v11 = v0[64];
      v12 = v0[61];
      v165 = v0[55];
      v168 = v0[60];
      v172 = v0[48];
      v179 = v0[25];
      v182 = v0[69];
      v176 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v156 = *(v12 + 48);
      PromptTemplate.templateID.getter();
      v13 = *(v7 + 8);
      v13(v10, v8);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v14 = v11 + *(v12 + 48);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v162, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v13(v11, v8);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10 + v156, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v168, v165, type metadata accessor for ScrubbedPromptVariant);
      v15 = swift_getEnumCaseMultiPayload();
      v16 = v0[55];
      if (v15 == 1)
      {
        v17 = v0 + 45;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v18 = MEMORY[0x1E69DA6E8];
        v19 = 34;
        v20 = 35;
      }

      else
      {
        v17 = v0 + 33;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v18 = MEMORY[0x1E69DA6E0];
        v19 = 20;
        v20 = 21;
      }

      v46 = v0[60];
      v47 = *v17;
      v48 = v0[69];
      v49 = v0[67];
      v50 = v0[24];
      v51 = v0[18];
      v52 = v0[13];
      v170 = v0[17];
      v174 = v0[14];
      (*(v0[v20] + 32))(v182 + v176, v47, v0[v19]);
      (*(v179 + 104))(v182 + v176, *v18, v50);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v46, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v48, v52, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v51 - 8) + 8))(v170, v51);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v174, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      v53 = v0[80];
      v54 = v0[77];
      v55 = v0[76];
      v56 = v0[74];
      v57 = v0[73];
      v58 = v0[72];
      v59 = v0[71];
      v60 = v0[70];
      v103 = v0[69];
      v105 = v0[68];
      v107 = v0[66];
      v109 = v0[65];
      v111 = v0[64];
      v113 = v0[63];
      v115 = v0[60];
      v117 = v0[59];
      v119 = v0[58];
      v121 = v0[57];
      v123 = v0[56];
      v125 = v0[55];
      v127 = v0[54];
      v129 = v0[53];
      v131 = v0[52];
      v133 = v0[51];
      v135 = v0[50];
      v137 = v0[49];
      v139 = v0[47];
      v141 = v0[46];
      v143 = v0[45];
      v145 = v0[44];
      v147 = v0[43];
      v149 = v0[41];
      v151 = v0[40];
      v153 = v0[39];
      v155 = v0[38];
      v158 = v0[37];
      v161 = v0[36];
      v164 = v0[33];
      v167 = v0[31];
      v171 = v0[30];
      v175 = v0[27];
      v178 = v0[26];
      v181 = v0[23];
      v183 = v0[22];
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v45 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v22 = v0[32];
    v21 = v0[33];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v21, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v22) = *(v21 + *(v22 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v22 != 1)
    {
      goto LABEL_3;
    }
  }

  v23 = v0[91];
  v24 = v0[66];
  v25 = v0[31];
  v26 = type metadata accessor for CatalogClient();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = CatalogClient.init()();
  v30 = MEMORY[0x1E69DA6B8];
  v0[5] = v26;
  v0[6] = v30;
  v0[2] = v29;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v23)
  {
    v31 = v0[90];
    v32 = v0[82];
    v33 = v0[73];
    v34 = v0[66];
    v35 = v0[60];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v35, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v36 = v0[14];
    (*(*(v0[18] - 8) + 8))(v0[17]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    v37 = v0[80];
    v38 = v0[77];
    v39 = v0[76];
    v40 = v0[74];
    v41 = v0[73];
    v42 = v0[72];
    v43 = v0[71];
    v44 = v0[70];
    v101 = v0[69];
    v102 = v0[68];
    v104 = v0[66];
    v106 = v0[65];
    v108 = v0[64];
    v110 = v0[63];
    v112 = v0[60];
    v114 = v0[59];
    v116 = v0[58];
    v118 = v0[57];
    v120 = v0[56];
    v122 = v0[55];
    v124 = v0[54];
    v126 = v0[53];
    v128 = v0[52];
    v130 = v0[51];
    v132 = v0[50];
    v134 = v0[49];
    v136 = v0[47];
    v138 = v0[46];
    v140 = v0[45];
    v142 = v0[44];
    v144 = v0[43];
    v146 = v0[41];
    v148 = v0[40];
    v150 = v0[39];
    v152 = v0[38];
    v154 = v0[37];
    v157 = v0[36];
    v160 = v0[33];
    v163 = v0[31];
    v166 = v0[30];
    v169 = v0[27];
    v173 = v0[26];
    v177 = v0[23];
    v180 = v0[22];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v45 = v0[1];
LABEL_10:

    return v45();
  }

  v62 = v0[60];
  v63 = v0[56];
  v64 = v0[48];
  v65 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of PromptCompletion(v62, v63, type metadata accessor for ScrubbedPromptVariant);
  v66 = swift_getEnumCaseMultiPayload();
  v67 = (v65 + 104);
  v68 = v0[56];
  if (v66 == 1)
  {
    v69 = v0[45];
    v70 = v0[34];
    v71 = v0[35];
    v72 = v0[27];
    v73 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v68, v69, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v71 + 32))(v72, v69, v70);
    (*v67)(v72, *MEMORY[0x1E69DA6E8], v73);
    v74 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v75 = v0[33];
    v76 = v0[27];
    v77 = v0[24];
    v78 = v0[20];
    v79 = v0[21];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v68, v75, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v79 + 32))(v76, v75, v78);
    v74 = *MEMORY[0x1E69DA6E0];
    (*v67)(v76, *MEMORY[0x1E69DA6E0], v77);
  }

  v80 = (*(v0[25] + 88))(v0[27], v0[24]);
  if (v80 == v74)
  {
    v81 = v0[82];
    v82 = v0[27];
    v83 = v0[24];
    v84 = v0[25];
    v85 = v0[23];
    v86 = v0[20];
    v87 = v0[21];

    (*(v84 + 96))(v82, v83);
    (*(v87 + 32))(v85, v82, v86);
    v184 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v88 = swift_task_alloc();
    v0[96] = v88;
    *v88 = v0;
    v88[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v89 = v0[90];
    v90 = v0[31];
    v91 = v0[23];
LABEL_20:

    return (v184)(v90, v89, v91);
  }

  if (v80 == *MEMORY[0x1E69DA6E8])
  {
    v92 = v0[82];
    v93 = v0[39];
    v94 = v0[34];
    v95 = v0[35];
    v96 = v0[27];
    v97 = v0[24];
    v98 = v0[25];

    (*(v98 + 96))(v96, v97);
    (*(v95 + 32))(v93, v96, v94);
    v184 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v99 = swift_task_alloc();
    v0[98] = v99;
    *v99 = v0;
    v99[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v89 = v0[90];
    v91 = v0[39];
    v90 = v0[31];
    goto LABEL_20;
  }

  v100 = v0[24];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[73];
  v2 = v0[66];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[60], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v50 = v0[91];
  v3 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  v10 = v0[71];
  v11 = v0[70];
  v14 = v0[69];
  v15 = v0[68];
  v16 = v0[66];
  v17 = v0[65];
  v18 = v0[64];
  v19 = v0[63];
  v20 = v0[60];
  v21 = v0[59];
  v22 = v0[58];
  v23 = v0[57];
  v24 = v0[56];
  v25 = v0[55];
  v26 = v0[54];
  v27 = v0[53];
  v28 = v0[52];
  v29 = v0[51];
  v30 = v0[50];
  v31 = v0[49];
  v32 = v0[47];
  v33 = v0[46];
  v34 = v0[45];
  v35 = v0[44];
  v36 = v0[43];
  v37 = v0[41];
  v38 = v0[40];
  v39 = v0[39];
  v40 = v0[38];
  v41 = v0[37];
  v42 = v0[36];
  v43 = v0[33];
  v44 = v0[31];
  v45 = v0[30];
  v46 = v0[27];
  v47 = v0[26];
  v48 = v0[23];
  v49 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0;
  v3 = v0[21];
  v2 = v0 + 21;
  v4 = v2[10];
  v5 = v2[7];
  v6 = v2[8];
  (*(v3 + 8))(v2[2], *(v2 - 1));
  (*(v6 + 8))(v4, v5);
  v8 = v2[57];
  v7 = v2[58];
  v66 = v2[79];
  v68 = v2[52];
  v9 = v2[44];
  v10 = v2[45];
  v62 = v2[43];
  v11 = v2[40];
  v70 = v2[34];
  v72 = v2[39];
  v75 = v2[27];
  v80 = v2[4];
  v82 = v2[48];
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v64 = *(v11 + 48);
  PromptTemplate.templateID.getter();
  v12 = *(v7 + 8);
  v12(v9, v8);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v62, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v13 = v62 + *(v11 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v68, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v12(v62, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v64, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v72, v70, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = v2[34];
  if (EnumCaseMultiPayload == 1)
  {
    v16 = v1 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v15, v1[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v2 = v1 + 35;
    v17 = v1 + 34;
    v18 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v16 = v1 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v15, v1[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v18 = MEMORY[0x1E69DA6E0];
    v17 = v2 - 1;
  }

  v19 = v1[60];
  v20 = *v16;
  v21 = v1[69];
  v22 = v1[67];
  v23 = v1[24];
  v24 = v1[18];
  v25 = v1[13];
  v73 = v1[17];
  v76 = v1[14];
  (*(*v2 + 32))(v82 + v78, v20, *v17);
  (*(v80 + 104))(v82 + v78, *v18, v23);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v19, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v21, v25, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v24 - 8) + 8))(v73, v24);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v76, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v26 = v1[80];
  v27 = v1[77];
  v28 = v1[76];
  v29 = v1[74];
  v30 = v1[73];
  v31 = v1[72];
  v32 = v1[71];
  v33 = v1[70];
  v36 = v1[69];
  v37 = v1[68];
  v38 = v1[66];
  v39 = v1[65];
  v40 = v1[64];
  v41 = v1[63];
  v42 = v1[60];
  v43 = v1[59];
  v44 = v1[58];
  v45 = v1[57];
  v46 = v1[56];
  v47 = v1[55];
  v48 = v1[54];
  v49 = v1[53];
  v50 = v1[52];
  v51 = v1[51];
  v52 = v1[50];
  v53 = v1[49];
  v54 = v1[47];
  v55 = v1[46];
  v56 = v1[45];
  v57 = v1[44];
  v58 = v1[43];
  v59 = v1[41];
  v60 = v1[40];
  v61 = v1[39];
  v63 = v1[38];
  v65 = v1[37];
  v67 = v1[36];
  v69 = v1[33];
  v71 = v1[31];
  v74 = v1[30];
  v77 = v1[27];
  v79 = v1[26];
  v81 = v1[23];
  v83 = v1[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v34 = v1[1];

  return v34();
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[60];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  (*(v0[21] + 8))(v0[23], v0[20]);
  (*(v6 + 8))(v4, v5);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v54 = v0[97];
  v7 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v8 = v0[80];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v18 = v0[69];
  v19 = v0[68];
  v20 = v0[66];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[63];
  v24 = v0[60];
  v25 = v0[59];
  v26 = v0[58];
  v27 = v0[57];
  v28 = v0[56];
  v29 = v0[55];
  v30 = v0[54];
  v31 = v0[53];
  v32 = v0[52];
  v33 = v0[51];
  v34 = v0[50];
  v35 = v0[49];
  v36 = v0[47];
  v37 = v0[46];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[41];
  v42 = v0[40];
  v43 = v0[39];
  v44 = v0[38];
  v45 = v0[37];
  v46 = v0[36];
  v47 = v0[33];
  v48 = v0[31];
  v49 = v0[30];
  v50 = v0[27];
  v51 = v0[26];
  v52 = v0[23];
  v53 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 704);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  (*(v0 + 696))(*(v0 + 312), *(v0 + 272));
  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v66 = *(v0 + 808);
  v68 = *(v0 + 584);
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  v10 = *(v0 + 488);
  v70 = *(v0 + 440);
  v72 = *(v0 + 480);
  v75 = *(v0 + 384);
  v80 = *(v0 + 200);
  v82 = *(v0 + 552);
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v64 = *(v10 + 48);
  PromptTemplate.templateID.getter();
  v11 = *(v5 + 8);
  v11(v8, v6);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v12 = v9 + *(v10 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v68, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v11(v9, v6);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8 + v64, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v72, v70, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *(v0 + 440);
  if (EnumCaseMultiPayload == 1)
  {
    v15 = (v0 + 272);
    v16 = (v0 + 360);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, *(v0 + 360), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v17 = v0 + 280;
    v18 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v16 = (v0 + 264);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, *(v0 + 264), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v17 = v0 + 168;
    v15 = (v0 + 160);
    v18 = MEMORY[0x1E69DA6E0];
  }

  v19 = *(v0 + 480);
  v20 = *v16;
  v21 = *v15;
  v22 = *(v0 + 552);
  v23 = *(v0 + 536);
  v24 = *(v0 + 192);
  v25 = *(v0 + 144);
  v26 = *(v0 + 104);
  v73 = *(v0 + 136);
  v76 = *(v0 + 112);
  (*(*v17 + 32))(v82 + v78, v20, v21);
  (*(v80 + 104))(v82 + v78, *v18, v24);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v19, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v22, v26, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v25 - 8) + 8))(v73, v25);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v76, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v27 = *(v0 + 640);
  v28 = *(v0 + 616);
  v29 = *(v0 + 608);
  v30 = *(v0 + 592);
  v31 = *(v0 + 584);
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 560);
  v37 = *(v0 + 552);
  v38 = *(v0 + 544);
  v39 = *(v0 + 528);
  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v42 = *(v0 + 504);
  v43 = *(v0 + 480);
  v44 = *(v0 + 472);
  v45 = *(v0 + 464);
  v46 = *(v0 + 456);
  v47 = *(v0 + 448);
  v48 = *(v0 + 440);
  v49 = *(v0 + 432);
  v50 = *(v0 + 424);
  v51 = *(v0 + 416);
  v52 = *(v0 + 408);
  v53 = *(v0 + 400);
  v54 = *(v0 + 392);
  v55 = *(v0 + 376);
  v56 = *(v0 + 368);
  v57 = *(v0 + 360);
  v58 = *(v0 + 352);
  v59 = *(v0 + 344);
  v60 = *(v0 + 328);
  v61 = *(v0 + 320);
  v62 = *(v0 + 312);
  v63 = *(v0 + 304);
  v65 = *(v0 + 296);
  v67 = *(v0 + 288);
  v69 = *(v0 + 264);
  v71 = *(v0 + 248);
  v74 = *(v0 + 240);
  v77 = *(v0 + 216);
  v79 = *(v0 + 208);
  v81 = *(v0 + 184);
  v83 = *(v0 + 176);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v35 = *(v0 + 8);

  return v35();
}

{
  v1 = *(v0 + 704);
  v2 = *(v0 + 584);
  v3 = *(v0 + 528);
  v4 = *(v0 + 480);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  (*(v0 + 696))(*(v0 + 312), *(v0 + 272));
  (*(v7 + 8))(v5, v6);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v4, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v55 = *(v0 + 792);
  v8 = *(v0 + 112);
  (*(*(*(v0 + 144) - 8) + 8))(*(v0 + 136));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v9 = *(v0 + 640);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 592);
  v13 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v19 = *(v0 + 552);
  v20 = *(v0 + 544);
  v21 = *(v0 + 528);
  v22 = *(v0 + 520);
  v23 = *(v0 + 512);
  v24 = *(v0 + 504);
  v25 = *(v0 + 480);
  v26 = *(v0 + 472);
  v27 = *(v0 + 464);
  v28 = *(v0 + 456);
  v29 = *(v0 + 448);
  v30 = *(v0 + 440);
  v31 = *(v0 + 432);
  v32 = *(v0 + 424);
  v33 = *(v0 + 416);
  v34 = *(v0 + 408);
  v35 = *(v0 + 400);
  v36 = *(v0 + 392);
  v37 = *(v0 + 376);
  v38 = *(v0 + 368);
  v39 = *(v0 + 360);
  v40 = *(v0 + 352);
  v41 = *(v0 + 344);
  v42 = *(v0 + 328);
  v43 = *(v0 + 320);
  v44 = *(v0 + 312);
  v45 = *(v0 + 304);
  v46 = *(v0 + 296);
  v47 = *(v0 + 288);
  v48 = *(v0 + 264);
  v49 = *(v0 + 248);
  v50 = *(v0 + 240);
  v51 = *(v0 + 216);
  v52 = *(v0 + 208);
  v53 = *(v0 + 184);
  v54 = *(v0 + 176);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v17 = *(v0 + 8);

  return v17();
}

{
  v2 = *(*v1 + 816);
  v3 = *v1;
  v3[103] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v4 = swift_task_alloc();
    v3[104] = v4;
    *v4 = v3;
    v4[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v5 = v3[81];
    v6 = v3[44];
    v7 = v3[38];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v6, v7, v5);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v4 = *v1;
  v2[105] = v0;

  v5 = v2[38];
  v6 = v2[35];
  v7 = v2[34];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2[106] = v9;
    v2[107] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  v55 = v0[103];
  v1 = v0[82];
  v2 = v0[71];
  v3 = v0[63];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v5 + 8))(v4, v6);
  v9 = v0[80];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[74];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v19 = v0[69];
  v20 = v0[68];
  v21 = v0[66];
  v22 = v0[65];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[55];
  v31 = v0[54];
  v32 = v0[53];
  v33 = v0[52];
  v34 = v0[51];
  v35 = v0[50];
  v36 = v0[49];
  v37 = v0[47];
  v38 = v0[46];
  v39 = v0[45];
  v40 = v0[44];
  v41 = v0[43];
  v42 = v0[41];
  v43 = v0[40];
  v44 = v0[39];
  v45 = v0[38];
  v46 = v0[37];
  v47 = v0[36];
  v48 = v0[33];
  v49 = v0[31];
  v50 = v0[30];
  v51 = v0[27];
  v52 = v0[26];
  v53 = v0[23];
  v54 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[48];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[44], v0[54], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  v3 = v0[82];

  return Dictionary<>.richVariableBindings()(v3);
}

{
  v55 = v0[105];
  v1 = v0[82];
  v2 = v0[71];
  v3 = v0[63];

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v5 + 8))(v4, v6);
  v9 = v0[80];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[74];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v19 = v0[69];
  v20 = v0[68];
  v21 = v0[66];
  v22 = v0[65];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[55];
  v31 = v0[54];
  v32 = v0[53];
  v33 = v0[52];
  v34 = v0[51];
  v35 = v0[50];
  v36 = v0[49];
  v37 = v0[47];
  v38 = v0[46];
  v39 = v0[45];
  v40 = v0[44];
  v41 = v0[43];
  v42 = v0[41];
  v43 = v0[40];
  v44 = v0[39];
  v45 = v0[38];
  v46 = v0[37];
  v47 = v0[36];
  v48 = v0[33];
  v49 = v0[31];
  v50 = v0[30];
  v51 = v0[27];
  v52 = v0[26];
  v53 = v0[23];
  v54 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v17 = v0[1];

  return v17();
}

{
  v2 = *(*v1 + 888);
  v3 = *v1;
  v3[112] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    type metadata accessor for TokenGenerator();
    v4 = swift_task_alloc();
    v3[113] = v4;
    *v4 = v3;
    v4[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v5 = v3[81];
    v6 = v3[43];
    v7 = v3[37];

    return static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(v6, v7, v5);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v4 = *v1;
  *(*v1 + 912) = v0;

  (*(v2[35] + 8))(v2[37], v2[34]);
  if (v0)
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v5 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v52 = v0[112];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[71], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v2 + 8))(v1, v3);
  v6 = v0[80];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[71];
  v13 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[66];
  v19 = v0[65];
  v20 = v0[64];
  v21 = v0[63];
  v22 = v0[60];
  v23 = v0[59];
  v24 = v0[58];
  v25 = v0[57];
  v26 = v0[56];
  v27 = v0[55];
  v28 = v0[54];
  v29 = v0[53];
  v30 = v0[52];
  v31 = v0[51];
  v32 = v0[50];
  v33 = v0[49];
  v34 = v0[47];
  v35 = v0[46];
  v36 = v0[45];
  v37 = v0[44];
  v38 = v0[43];
  v39 = v0[41];
  v40 = v0[40];
  v41 = v0[39];
  v42 = v0[38];
  v43 = v0[37];
  v44 = v0[36];
  v45 = v0[33];
  v46 = v0[31];
  v47 = v0[30];
  v48 = v0[27];
  v49 = v0[26];
  v50 = v0[23];
  v51 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[71];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[48];
  v69 = v0[25];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[43], v2, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  swift_storeEnumTagMultiPayload();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v2, v3, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[52];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v8 = MEMORY[0x1E69DA6E8];
    v9 = 34;
    v10 = 35;
  }

  else
  {
    v7 = v0 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v8 = MEMORY[0x1E69DA6E0];
    v9 = 20;
    v10 = 21;
  }

  v11 = v0[53];
  v12 = v0[68];
  v13 = *v7;
  v14 = v0[79];
  v65 = v0[78];
  v67 = v0[80];
  v15 = v0[67];
  v16 = v0[24];
  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[13];
  v61 = v0[14];
  v63 = v0[77];
  (*(v0[v10] + 32))(v12, v13, v0[v9]);
  (*(v69 + 104))(v12, *v8, v16);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v11, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v12, v19, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v17 - 8) + 8))(v18, v17);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v61, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v14 + 8))(v67, v65);
  v20 = v0[80];
  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[70];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[66];
  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[60];
  v37 = v0[59];
  v38 = v0[58];
  v39 = v0[57];
  v40 = v0[56];
  v41 = v0[55];
  v42 = v0[54];
  v43 = v0[53];
  v44 = v0[52];
  v45 = v0[51];
  v46 = v0[50];
  v47 = v0[49];
  v48 = v0[47];
  v49 = v0[46];
  v50 = v0[45];
  v51 = v0[44];
  v52 = v0[43];
  v53 = v0[41];
  v54 = v0[40];
  v55 = v0[39];
  v56 = v0[38];
  v57 = v0[37];
  v58 = v0[36];
  v59 = v0[33];
  v60 = v0[31];
  v62 = v0[30];
  v64 = v0[27];
  v66 = v0[26];
  v68 = v0[23];
  v70 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v28 = v0[1];

  return v28();
}

{
  v52 = v0[114];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[71], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v2 + 8))(v1, v3);
  v6 = v0[80];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[71];
  v13 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[66];
  v19 = v0[65];
  v20 = v0[64];
  v21 = v0[63];
  v22 = v0[60];
  v23 = v0[59];
  v24 = v0[58];
  v25 = v0[57];
  v26 = v0[56];
  v27 = v0[55];
  v28 = v0[54];
  v29 = v0[53];
  v30 = v0[52];
  v31 = v0[51];
  v32 = v0[50];
  v33 = v0[49];
  v34 = v0[47];
  v35 = v0[46];
  v36 = v0[45];
  v37 = v0[44];
  v38 = v0[43];
  v39 = v0[41];
  v40 = v0[40];
  v41 = v0[39];
  v42 = v0[38];
  v43 = v0[37];
  v44 = v0[36];
  v45 = v0[33];
  v46 = v0[31];
  v47 = v0[30];
  v48 = v0[27];
  v49 = v0[26];
  v50 = v0[23];
  v51 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[48];
  outlined init with copy of PromptCompletion(v0[54], v0[51], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[51];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[45];
    v5 = v0[42];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v5) = *(v4 + *(v5 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = v0[82];

      v7 = v0[79];
      v8 = v0[78];
      v164 = v0[109];
      v168 = v0[71];
      v9 = v0[65];
      v10 = v0[63];
      v11 = v0[64];
      v12 = v0[61];
      v172 = v0[49];
      v176 = v0[54];
      v180 = v0[48];
      v187 = v0[25];
      v190 = v0[68];
      v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v160 = *(v12 + 48);
      PromptTemplate.templateID.getter();
      v13 = *(v7 + 8);
      v13(v9, v8);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v11, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v14 = v11 + *(v12 + 48);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v168, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v13(v11, v8);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v160, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v176, v172, type metadata accessor for ScrubbedPromptVariant);
      v15 = swift_getEnumCaseMultiPayload();
      v16 = v0[49];
      if (v15 == 1)
      {
        v17 = v0 + 45;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v161 = MEMORY[0x1E69DA6E8];
        v18 = 34;
        v19 = 35;
      }

      else
      {
        v17 = v0 + 33;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v16, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v161 = MEMORY[0x1E69DA6E0];
        v18 = 20;
        v19 = 21;
      }

      v49 = v0[54];
      v50 = *v17;
      v51 = v0[79];
      v178 = v0[78];
      v182 = v0[80];
      v52 = v0[68];
      v53 = v0[67];
      v54 = v0[24];
      v55 = v0[18];
      v166 = v0[17];
      v56 = v0[13];
      v170 = v0[14];
      v174 = v0[77];
      (*(v0[v19] + 32))(v190 + v184, v50, v0[v18]);
      (*(v187 + 104))(v190 + v184, *v161, v54);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v49, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v52, v56, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v55 - 8) + 8))(v166, v55);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v170, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v174, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      (*(v51 + 8))(v182, v178);
      v57 = v0[80];
      v58 = v0[77];
      v59 = v0[76];
      v60 = v0[74];
      v61 = v0[73];
      v62 = v0[72];
      v63 = v0[71];
      v64 = v0[70];
      v107 = v0[69];
      v109 = v0[68];
      v111 = v0[66];
      v113 = v0[65];
      v115 = v0[64];
      v117 = v0[63];
      v119 = v0[60];
      v121 = v0[59];
      v123 = v0[58];
      v125 = v0[57];
      v127 = v0[56];
      v129 = v0[55];
      v131 = v0[54];
      v133 = v0[53];
      v135 = v0[52];
      v137 = v0[51];
      v139 = v0[50];
      v141 = v0[49];
      v143 = v0[47];
      v145 = v0[46];
      v147 = v0[45];
      v149 = v0[44];
      v151 = v0[43];
      v153 = v0[41];
      v155 = v0[40];
      v157 = v0[39];
      v159 = v0[38];
      v163 = v0[37];
      v167 = v0[36];
      v171 = v0[33];
      v175 = v0[31];
      v179 = v0[30];
      v183 = v0[27];
      v186 = v0[26];
      v189 = v0[23];
      v191 = v0[22];
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v48 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v21 = v0[32];
    v20 = v0[33];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v20, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v21) = *(v20 + *(v21 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v21 != 1)
    {
      goto LABEL_3;
    }
  }

  v22 = v0[110];
  v23 = v0[63];
  v24 = v0[30];
  v25 = type metadata accessor for CatalogClient();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = CatalogClient.init()();
  v29 = MEMORY[0x1E69DA6B8];
  v0[10] = v25;
  v0[11] = v29;
  v0[7] = v28;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v22)
  {
    v30 = v0[109];
    v31 = v0[82];
    v32 = v0[71];
    v33 = v0[63];
    v34 = v0[54];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v34, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v35 = v0[80];
    v36 = v0[79];
    v37 = v0[78];
    v38 = v0[77];
    v39 = v0[14];
    (*(*(v0[18] - 8) + 8))(v0[17]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    (*(v36 + 8))(v35, v37);
    v40 = v0[80];
    v41 = v0[77];
    v42 = v0[76];
    v43 = v0[74];
    v44 = v0[73];
    v45 = v0[72];
    v46 = v0[71];
    v47 = v0[70];
    v105 = v0[69];
    v106 = v0[68];
    v108 = v0[66];
    v110 = v0[65];
    v112 = v0[64];
    v114 = v0[63];
    v116 = v0[60];
    v118 = v0[59];
    v120 = v0[58];
    v122 = v0[57];
    v124 = v0[56];
    v126 = v0[55];
    v128 = v0[54];
    v130 = v0[53];
    v132 = v0[52];
    v134 = v0[51];
    v136 = v0[50];
    v138 = v0[49];
    v140 = v0[47];
    v142 = v0[46];
    v144 = v0[45];
    v146 = v0[44];
    v148 = v0[43];
    v150 = v0[41];
    v152 = v0[40];
    v154 = v0[39];
    v156 = v0[38];
    v158 = v0[37];
    v162 = v0[36];
    v165 = v0[33];
    v169 = v0[31];
    v173 = v0[30];
    v177 = v0[27];
    v181 = v0[26];
    v185 = v0[23];
    v188 = v0[22];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v48 = v0[1];
LABEL_10:

    return v48();
  }

  v66 = v0[54];
  v67 = v0[50];
  v68 = v0[48];
  v69 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  outlined init with copy of PromptCompletion(v66, v67, type metadata accessor for ScrubbedPromptVariant);
  v70 = swift_getEnumCaseMultiPayload();
  v71 = (v69 + 104);
  v72 = v0[50];
  if (v70 == 1)
  {
    v73 = v0[45];
    v74 = v0[34];
    v75 = v0[35];
    v76 = v0[26];
    v77 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v72, v73, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v75 + 32))(v76, v73, v74);
    (*v71)(v76, *MEMORY[0x1E69DA6E8], v77);
    v78 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v79 = v0[33];
    v80 = v0[26];
    v81 = v0[24];
    v82 = v0[20];
    v83 = v0[21];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v72, v79, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v83 + 32))(v80, v79, v82);
    v78 = *MEMORY[0x1E69DA6E0];
    (*v71)(v80, *MEMORY[0x1E69DA6E0], v81);
  }

  v84 = (*(v0[25] + 88))(v0[26], v0[24]);
  if (v84 == v78)
  {
    v85 = v0[82];
    v87 = v0[25];
    v86 = v0[26];
    v88 = v0[24];
    v90 = v0[21];
    v89 = v0[22];
    v91 = v0[20];

    (*(v87 + 96))(v86, v88);
    (*(v90 + 32))(v89, v86, v91);
    v192 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v92 = swift_task_alloc();
    v0[115] = v92;
    *v92 = v0;
    v92[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v93 = v0[109];
    v94 = v0[30];
    v95 = v0[22];
LABEL_20:

    return (v192)(v94, v93, v95);
  }

  if (v84 == *MEMORY[0x1E69DA6E8])
  {
    v96 = v0[82];
    v98 = v0[35];
    v97 = v0[36];
    v99 = v0[34];
    v101 = v0[25];
    v100 = v0[26];
    v102 = v0[24];

    (*(v101 + 96))(v100, v102);
    (*(v98 + 32))(v97, v100, v99);
    v192 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v103 = swift_task_alloc();
    v0[117] = v103;
    *v103 = v0;
    v103[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
    v93 = v0[109];
    v95 = v0[36];
    v94 = v0[30];
    goto LABEL_20;
  }

  v104 = v0[24];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[71];
  v2 = v0[63];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[54], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v54 = v0[110];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v4 + 8))(v3, v5);
  v8 = v0[80];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v18 = v0[69];
  v19 = v0[68];
  v20 = v0[66];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[63];
  v24 = v0[60];
  v25 = v0[59];
  v26 = v0[58];
  v27 = v0[57];
  v28 = v0[56];
  v29 = v0[55];
  v30 = v0[54];
  v31 = v0[53];
  v32 = v0[52];
  v33 = v0[51];
  v34 = v0[50];
  v35 = v0[49];
  v36 = v0[47];
  v37 = v0[46];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[41];
  v42 = v0[40];
  v43 = v0[39];
  v44 = v0[38];
  v45 = v0[37];
  v46 = v0[36];
  v47 = v0[33];
  v48 = v0[31];
  v49 = v0[30];
  v50 = v0[27];
  v51 = v0[26];
  v52 = v0[23];
  v53 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v16 = v0[1];

  return v16();
}

{
  v1 = v0 + 21;
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v3 + 8))(v2, v4);
  v6 = v0[78];
  v5 = v0[79];
  v66 = v0[119];
  v69 = v0[71];
  v7 = v0[65];
  v61 = v0[64];
  v8 = v0[63];
  v9 = v0[61];
  v72 = v0[49];
  v75 = v0[54];
  v78 = v0[48];
  v83 = v0[25];
  v85 = v0[68];
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v63 = *(v9 + 48);
  PromptTemplate.templateID.getter();
  v10 = *(v5 + 8);
  v10(v7, v6);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v61, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v11 = v61 + *(v9 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v10(v61, v6);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7 + v63, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v75, v72, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = v0[49];
  if (EnumCaseMultiPayload == 1)
  {
    v14 = v0 + 45;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[45], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v1 = v0 + 35;
    v15 = v0 + 34;
    v64 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v14 = v0 + 33;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[33], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v64 = MEMORY[0x1E69DA6E0];
    v15 = v0 + 20;
  }

  v16 = v0[54];
  v17 = *v15;
  v18 = *v1;
  v19 = v0[79];
  v76 = v0[78];
  v79 = v0[80];
  v20 = v0[68];
  v21 = v0[67];
  v22 = v0[24];
  v23 = v0[18];
  v67 = v0[17];
  v24 = v0[13];
  v70 = v0[14];
  v73 = v0[77];
  (*(v18 + 32))(v85 + v81, *v14, v17);
  (*(v83 + 104))(v85 + v81, *v64, v22);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v16, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v20, v24, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v23 - 8) + 8))(v67, v23);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v70, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v19 + 8))(v79, v76);
  v25 = v0[80];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  v31 = v0[71];
  v32 = v0[70];
  v35 = v0[69];
  v36 = v0[68];
  v37 = v0[66];
  v38 = v0[65];
  v39 = v0[64];
  v40 = v0[63];
  v41 = v0[60];
  v42 = v0[59];
  v43 = v0[58];
  v44 = v0[57];
  v45 = v0[56];
  v46 = v0[55];
  v47 = v0[54];
  v48 = v0[53];
  v49 = v0[52];
  v50 = v0[51];
  v51 = v0[50];
  v52 = v0[49];
  v53 = v0[47];
  v54 = v0[46];
  v55 = v0[45];
  v56 = v0[44];
  v57 = v0[43];
  v58 = v0[41];
  v59 = v0[40];
  v60 = v0[39];
  v62 = v0[38];
  v65 = v0[37];
  v68 = v0[36];
  v71 = v0[33];
  v74 = v0[31];
  v77 = v0[30];
  v80 = v0[27];
  v82 = v0[26];
  v84 = v0[23];
  v86 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v33 = v0[1];

  return v33();
}

{
  v1 = v0[71];
  v2 = v0[63];
  v3 = v0[54];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v5 + 8))(v4, v6);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v58 = v0[116];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[14];
  (*(*(v0[18] - 8) + 8))(v0[17]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v8 + 8))(v7, v9);
  v12 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[70];
  v22 = v0[69];
  v23 = v0[68];
  v24 = v0[66];
  v25 = v0[65];
  v26 = v0[64];
  v27 = v0[63];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[55];
  v34 = v0[54];
  v35 = v0[53];
  v36 = v0[52];
  v37 = v0[51];
  v38 = v0[50];
  v39 = v0[49];
  v40 = v0[47];
  v41 = v0[46];
  v42 = v0[45];
  v43 = v0[44];
  v44 = v0[43];
  v45 = v0[41];
  v46 = v0[40];
  v47 = v0[39];
  v48 = v0[38];
  v49 = v0[37];
  v50 = v0[36];
  v51 = v0[33];
  v52 = v0[31];
  v53 = v0[30];
  v54 = v0[27];
  v55 = v0[26];
  v56 = v0[23];
  v57 = v0[22];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[81], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v20 = v0[1];

  return v20();
}

{
  v1 = *(v0 + 856);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  (*(v0 + 848))(*(v0 + 288), *(v0 + 272));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v67 = *(v0 + 960);
  v70 = *(v0 + 568);
  v7 = *(v0 + 520);
  v8 = *(v0 + 504);
  v9 = *(v0 + 512);
  v10 = *(v0 + 488);
  v73 = *(v0 + 392);
  v76 = *(v0 + 432);
  v79 = *(v0 + 384);
  v84 = *(v0 + 200);
  v86 = *(v0 + 544);
  v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v64 = *(v10 + 48);
  PromptTemplate.templateID.getter();
  v11 = *(v5 + 8);
  v11(v7, v6);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v12 = v9 + *(v10 + 48);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v70, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v11(v9, v6);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7 + v64, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v76, v73, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *(v0 + 392);
  if (EnumCaseMultiPayload == 1)
  {
    v15 = (v0 + 272);
    v16 = (v0 + 360);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, *(v0 + 360), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v17 = v0 + 280;
    v18 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v16 = (v0 + 264);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, *(v0 + 264), &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v17 = v0 + 168;
    v15 = (v0 + 160);
    v18 = MEMORY[0x1E69DA6E0];
  }

  v65 = v18;
  v19 = *(v0 + 432);
  v20 = *v15;
  v21 = *(v0 + 632);
  v77 = *(v0 + 624);
  v80 = *(v0 + 640);
  v22 = *(v0 + 544);
  v23 = *(v0 + 536);
  v24 = *(v0 + 192);
  v25 = *(v0 + 144);
  v68 = *(v0 + 136);
  v26 = *(v0 + 104);
  v71 = *(v0 + 112);
  v74 = *(v0 + 616);
  (*(*v17 + 32))(v86 + v82, *v16, v20);
  (*(v84 + 104))(v86 + v82, *v65, v24);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v19, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v22, v26, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v25 - 8) + 8))(v68, v25);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v71, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v74, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v21 + 8))(v80, v77);
  v27 = *(v0 + 640);
  v28 = *(v0 + 616);
  v29 = *(v0 + 608);
  v30 = *(v0 + 592);
  v31 = *(v0 + 584);
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 560);
  v37 = *(v0 + 552);
  v38 = *(v0 + 544);
  v39 = *(v0 + 528);
  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v42 = *(v0 + 504);
  v43 = *(v0 + 480);
  v44 = *(v0 + 472);
  v45 = *(v0 + 464);
  v46 = *(v0 + 456);
  v47 = *(v0 + 448);
  v48 = *(v0 + 440);
  v49 = *(v0 + 432);
  v50 = *(v0 + 424);
  v51 = *(v0 + 416);
  v52 = *(v0 + 408);
  v53 = *(v0 + 400);
  v54 = *(v0 + 392);
  v55 = *(v0 + 376);
  v56 = *(v0 + 368);
  v57 = *(v0 + 360);
  v58 = *(v0 + 352);
  v59 = *(v0 + 344);
  v60 = *(v0 + 328);
  v61 = *(v0 + 320);
  v62 = *(v0 + 312);
  v63 = *(v0 + 304);
  v66 = *(v0 + 296);
  v69 = *(v0 + 288);
  v72 = *(v0 + 264);
  v75 = *(v0 + 248);
  v78 = *(v0 + 240);
  v81 = *(v0 + 216);
  v83 = *(v0 + 208);
  v85 = *(v0 + 184);
  v87 = *(v0 + 176);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v35 = *(v0 + 8);

  return v35();
}

{
  v1 = *(v0 + 856);
  v2 = *(v0 + 568);
  v3 = *(v0 + 504);
  v4 = *(v0 + 432);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);
  (*(v0 + 848))(*(v0 + 288), *(v0 + 272));
  (*(v6 + 8))(v5, v7);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v4, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v59 = *(v0 + 944);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 112);
  (*(*(*(v0 + 144) - 8) + 8))(*(v0 + 136));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v9 + 8))(v8, v10);
  v13 = *(v0 + 640);
  v14 = *(v0 + 616);
  v15 = *(v0 + 608);
  v16 = *(v0 + 592);
  v17 = *(v0 + 584);
  v18 = *(v0 + 576);
  v19 = *(v0 + 568);
  v20 = *(v0 + 560);
  v23 = *(v0 + 552);
  v24 = *(v0 + 544);
  v25 = *(v0 + 528);
  v26 = *(v0 + 520);
  v27 = *(v0 + 512);
  v28 = *(v0 + 504);
  v29 = *(v0 + 480);
  v30 = *(v0 + 472);
  v31 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 448);
  v34 = *(v0 + 440);
  v35 = *(v0 + 432);
  v36 = *(v0 + 424);
  v37 = *(v0 + 416);
  v38 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);
  v41 = *(v0 + 376);
  v42 = *(v0 + 368);
  v43 = *(v0 + 360);
  v44 = *(v0 + 352);
  v45 = *(v0 + 344);
  v46 = *(v0 + 328);
  v47 = *(v0 + 320);
  v48 = *(v0 + 312);
  v49 = *(v0 + 304);
  v50 = *(v0 + 296);
  v51 = *(v0 + 288);
  v52 = *(v0 + 264);
  v53 = *(v0 + 248);
  v54 = *(v0 + 240);
  v55 = *(v0 + 216);
  v56 = *(v0 + 208);
  v57 = *(v0 + 184);
  v58 = *(v0 + 176);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 648), &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 712);
  v8 = *v2;
  v3[90] = a1;
  v3[91] = v1;

  if (v1)
  {
    v5 = v3[82];

    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 768);
  v6 = *v2;
  v4[97] = v1;

  v7 = v4[90];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[100] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 784);
  v6 = *v2;
  v4[99] = v1;

  v7 = v4[90];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[101] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 864);
  v8 = *v2;
  v3[109] = a1;
  v3[110] = v1;

  if (v1)
  {
    v5 = v3[82];

    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v6 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  v4[116] = v1;

  v7 = v4[109];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[119] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 936);
  v6 = *v2;
  v4[118] = v1;

  v7 = v4[109];

  if (v1)
  {
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4[120] = a1;
    v8 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t static TokenGenerator.map(tokenGenerationError:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v284 = a2;
  v265 = type metadata accessor for GenerativeError.MalformedOutputError.ErrorContext();
  v263 = *(v265 - 8);
  v3 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v262 = &v236 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Origin();
  v271 = *(v5 - 8);
  v272 = v5;
  v6 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v269 = &v236 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v267 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v266 = &v236 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryOSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v264 = &v236 - v15;
  v270 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.ViolationCategory();
  v268 = *(v270 - 8);
  v16 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v270);
  v279 = &v236 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for GenerativeError.ToolError.ErrorContext();
  v260 = *(v261 - 8);
  v18 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v257 = &v236 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v254 = &v236 - v22;
  v259 = type metadata accessor for GenerativeError.DocumentError.ErrorContext();
  v258 = *(v259 - 8);
  v23 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v259);
  v256 = &v236 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for DocumentResource();
  v253 = *(v255 - 8);
  v25 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v252 = &v236 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for GenerativeError.SchemaError.ErrorContext();
  v250 = *(v251 - 8);
  v27 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v249 = &v236 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for GenerativeError.SchemaError.ErrorType();
  v247 = *(v248 - 8);
  v29 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v246 = &v236 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType.ResourceUnavailableErrorInfo.AssetType();
  v245 = *(v31 - 8);
  v32 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v236 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenerativeError.PromptError.ErrorType();
  v277 = *(v35 - 8);
  v278 = v35;
  v36 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v276 = &v236 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType();
  v281 = *(v38 - 8);
  v282 = v38;
  v39 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v280 = &v236 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Locale();
  v238 = *(v239 - 8);
  v41 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v237 = &v236 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for InferenceError.Context();
  v242 = *(v243 - 8);
  v43 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v241 = &v236 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v48 = &v236 - v47;
  v49 = type metadata accessor for InferenceError();
  v274 = *(v49 - 8);
  v275 = v49;
  v50 = *(v274 + 64);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v236 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v244 = &v236 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8);
  v240 = &v236 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v273 = &v236 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v283 = &v236 - v61;
  v62 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v236 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TokenGenerationError(0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = (&v236 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PromptCompletion(a1, v70, type metadata accessor for TokenGenerationError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v166 = v70[1];
      v167 = v70[2];
      v168 = v70[4];
      v278 = v70[3];
      v279 = v166;
      v169 = v70[5];
      if (v167)
      {
        v285 = v167;
        MEMORY[0x1AC5A6AE0](v167);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v170 = v275;
        v171 = swift_dynamicCast();
        v172 = v274;
        (*(v274 + 56))(v48, v171 ^ 1u, 1, v170);
        v173 = (*(v172 + 48))(v48, 1, v170);
        v174 = v273;
        if (v173 != 1)
        {
          v175 = v244;
          (*(v172 + 32))(v244, v48, v170);
          (*(v172 + 16))(v53, v175, v170);
          if ((*(v172 + 88))(v53, v170) == *MEMORY[0x1E69B25D8])
          {
            (*(v172 + 96))(v53, v170);
            v176 = v241;
            (*(v242 + 32))(v241, v53, v243);
            v177 = InferenceError.Context.userInfo.getter();
            if (*(v177 + 16))
            {
              v178 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001ABA40C70);
              v179 = v283;
              v165 = v284;
              v180 = v282;
              if (v181)
              {
                v182 = (*(v177 + 56) + 16 * v178);
                v183 = *v182;
                v184 = v182[1];

                v285 = 0;
                LOBYTE(v183) = specialized String.withCString<A>(_:)(v183, v184);

                if (v183)
                {
                  v174 = v273;
                  Date.init(timeIntervalSinceReferenceDate:)();
                  (*(v242 + 8))(v241, v243);
                  (*(v274 + 8))(v244, v275);
                  v185 = type metadata accessor for Date();
                  (*(*(v185 - 8) + 56))(v174, 0, 1, v185);
LABEL_36:
                  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v174, v179, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v215 = v280;
                  GenerativeError.AvailabilityError.ErrorType.RateLimitedErrorInfo.init(retryAfterDate:)();
                  v216 = v174;
                  v217 = v281;
                  (*(v281 + 104))(v215, *MEMORY[0x1E69A0940], v180);
                  static GenerativeError.availabilityError(type:userFacingLocalizedMessage:userInfo:)();

                  (*(v217 + 8))(v215, v180);
                  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v216, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  goto LABEL_37;
                }

                v174 = v273;
                v176 = v241;
              }

              else
              {
              }
            }

            else
            {

              v179 = v283;
              v165 = v284;
              v180 = v282;
            }

            v220 = InferenceError.Context.userInfo.getter();
            if (*(v220 + 16) && (v221 = specialized __RawDictionaryStorage.find<A>(_:)(0x7466417972746572, 0xEE00657461447265), (v222 & 1) != 0))
            {
              v223 = *(v220 + 56) + 16 * v221;
              v224 = *(v223 + 8);
              v284 = *v223;

              v225 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
              v226 = v237;
              Locale.init(identifier:)();
              isa = Locale._bridgeToObjectiveC()().super.isa;
              (*(v238 + 8))(v226, v239);
              [v225 setLocale_];

              v228 = MEMORY[0x1AC5A5AE0](0xD000000000000015, 0x80000001ABA40C90);
              [v225 setDateFormat_];

              v229 = MEMORY[0x1AC5A5AE0](v284, v224);

              v284 = v225;
              v230 = [v225 dateFromString_];

              if (v230)
              {
                v231 = v240;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v232 = 0;
                v174 = v273;
                v233 = v241;
              }

              else
              {
                v232 = 1;
                v174 = v273;
                v233 = v241;
                v231 = v240;
              }

              (*(v242 + 8))(v233, v243);
              (*(v274 + 8))(v244, v275);
              v235 = type metadata accessor for Date();
              (*(*(v235 - 8) + 56))(v231, v232, 1, v235);
              outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v231, v174, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }

            else
            {

              (*(v242 + 8))(v176, v243);
              (*(v274 + 8))(v244, v275);
              v234 = type metadata accessor for Date();
              (*(*(v234 - 8) + 56))(v174, 1, 1, v234);
            }

            goto LABEL_36;
          }

          v219 = *(v172 + 8);
          v219(v175, v170);
          v219(v53, v170);
LABEL_35:
          v214 = type metadata accessor for Date();
          (*(*(v214 - 8) + 56))(v174, 1, 1, v214);
          v179 = v283;
          v165 = v284;
          v180 = v282;
          goto LABEL_36;
        }
      }

      else
      {
        (*(v274 + 56))(v48, 1, 1, v275);
        v174 = v273;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, &_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
      goto LABEL_35;
    case 2u:
      v119 = v70[1];
      v120 = v70[2];
      v121 = v70[3];
      v122 = v70[4];
      v123 = v70[5];
      v124 = type metadata accessor for Date();
      v125 = v283;
      (*(*(v124 - 8) + 56))(v283, 1, 1, v124);
      v126 = v284;
      static GenerativeError.networkingError(retryAfterDate:userFacingLocalizedMessage:userInfo:)();

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_26;
    case 3u:
      v149 = *v70;
      v150 = v70[1];
      v151 = v70[3];
      v152 = v70[4];
      v153 = v70[5];
      v154 = v70[6];
      v155 = v70[7];
      v156 = v276;
      GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.init(tokenCount:tokenCountMaximum:)();
      v158 = v277;
      v157 = v278;
      (*(v277 + 104))(v156, *MEMORY[0x1E69A09D8], v278);
      v126 = v284;
      static GenerativeError.promptError(type:userFacingLocalizedMessage:userInfo:)();
      goto LABEL_25;
    case 4u:
      v93 = v70[1];
      v74 = v70[2];
      v94 = v70[3];
      v95 = v70[4];
      v96 = v70[5];
      v78 = v284;
      static GenerativeError.canceledError(userFacingLocalizedMessage:userInfo:)();
      goto LABEL_29;
    case 5u:
      v192 = v70[1];
      v152 = v70[2];
      v193 = v70[3];
      v194 = v70[4];
      v195 = v70[5];
      (*(v245 + 104))(v34, *MEMORY[0x1E69A0938], v31);
      v156 = v280;
      GenerativeError.AvailabilityError.ErrorType.ResourceUnavailableErrorInfo.init(assetType:)();
      v158 = v281;
      v157 = v282;
      (*(v281 + 104))(v156, *MEMORY[0x1E69A0950], v282);
      v126 = v284;
      static GenerativeError.availabilityError(type:userFacingLocalizedMessage:userInfo:)();
LABEL_25:

      (*(v158 + 8))(v156, v157);
LABEL_26:
      v146 = type metadata accessor for GenerativeError();
      v147 = *(*(v146 - 8) + 56);
      v148 = v126;
      return v147(v148, 0, 1, v146);
    case 6u:
      v196 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_AA0aB5ErrorO7ContextVtMd, &_s15TokenGeneration6PromptV07SpecialA0V_AA0aB5ErrorO7ContextVtMR) + 48));
      v197 = v196[1];
      v198 = v196[2];
      v199 = v196[4];
      v200 = v196[5];

      v201 = type metadata accessor for GenerativeError();
      (*(*(v201 - 8) + 56))(v284, 1, 1, v201);
      v202 = type metadata accessor for Prompt.SpecialToken();
      return (*(*(v202 - 8) + 8))(v70, v202);
    case 7u:
    case 9u:
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v70, type metadata accessor for TokenGenerationError);
      goto LABEL_3;
    case 8u:
      v110 = v70[1];
      v111 = v70[2];
      v112 = v70[3];
      v113 = v70[4];
      v114 = v70[5];
      v115 = v246;
      GenerativeError.SchemaError.ErrorType.UnsupportedGuideErrorInfo.init()();
      v116 = v247;
      v117 = v248;
      (*(v247 + 104))(v115, *MEMORY[0x1E69A0A00], v248);
      v118 = v249;
      GenerativeError.SchemaError.ErrorContext.init(schemaName:description:)();
      v78 = v284;
      static GenerativeError.schemaError(type:context:userFacingLocalizedMessage:userInfo:)();

      (*(v250 + 8))(v118, v251);
      (*(v116 + 8))(v115, v117);
      goto LABEL_30;
    case 0xAu:
      v207 = v70[1];
      v208 = v70[2];
      v209 = v70[5];
      if (v70[4])
      {
        v210 = v70[3];
        lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
        v211 = swift_allocError();
        outlined init with copy of PromptCompletion(a1, v212, type metadata accessor for TokenGenerationError);

        v213 = v284;
        static GenerativeError.unknownUnderlyingError(error:userFacingLocalizedMessage:userInfo:)();

        swift_bridgeObjectRelease_n();

        v146 = type metadata accessor for GenerativeError();
        v147 = *(*(v146 - 8) + 56);
        v148 = v213;
        return v147(v148, 0, 1, v146);
      }

      else
      {
        v218 = v70[1];

LABEL_3:
        v71 = type metadata accessor for GenerativeError();
        return (*(*(v71 - 8) + 56))(v284, 1, 1, v71);
      }

    case 0xBu:
      v83 = *v70;
      v84 = v70[1];
      v85 = v70[2];
      v86 = v70[3];
      v87 = v70[4];
      v88 = v70[5];
      v90 = v70[6];
      v89 = v70[7];

      v91 = v257;
      GenerativeError.ToolError.ErrorContext.init(name:description:)();
      v92 = v284;
      static GenerativeError.toolError(context:userFacingLocalizedMessage:userInfo:)();

      (*(v260 + 8))(v91, v261);
      goto LABEL_23;
    case 0xCu:
      v97 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMd, &_s26GenerativeModelsFoundation16DocumentResourceV8document_15TokenGeneration0gH5ErrorO7ContextVtMR) + 48));
      v98 = *v97;
      v99 = v97[1];
      v100 = v97[3];
      v283 = v97[2];
      v101 = v97[4];
      v102 = v97[5];
      v103 = v253;
      v104 = v252;
      v105 = v255;
      (*(v253 + 32))(v252, v70, v255);
      v106 = v254;
      DocumentResource.url.getter();
      v107 = type metadata accessor for URL();
      (*(*(v107 - 8) + 56))(v106, 0, 1, v107);

      v108 = v256;
      GenerativeError.DocumentError.ErrorContext.init(url:description:)();
      v109 = v284;
      static GenerativeError.documentError(context:userFacingLocalizedMessage:userInfo:)();

      (*(v258 + 8))(v108, v259);
      (*(v103 + 8))(v104, v105);
      goto LABEL_12;
    case 0xDu:
      v203 = v70[1];
      v74 = v70[2];
      v204 = v70[3];
      v205 = v70[4];
      v206 = v70[5];
      v78 = v284;
      static GenerativeError.invalidatedError(userFacingLocalizedMessage:userInfo:)();
      goto LABEL_29;
    case 0xEu:
      v79 = v70[1];
      v74 = v70[2];
      v80 = v70[3];
      v81 = v70[4];
      v82 = v70[5];
      v78 = v284;
      static GenerativeError.authenticationError(userFacingLocalizedMessage:userInfo:)();
      goto LABEL_29;
    case 0xFu:
      v127 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryO8category_15TokenGeneration0mnD0O7ContextVtMd, &_s29GenerativeFunctionsFoundation0A5ErrorV06PromptD0V0D4TypeO014SafetyRejectedD4InfoV17ViolationCategoryO8category_15TokenGeneration0mnD0O7ContextVtMR) + 48));
      v128 = *v127;
      v129 = v127[1];
      v131 = v127[2];
      v130 = v127[3];
      v133 = v127[4];
      v132 = v127[5];
      v282 = v133;
      v283 = v130;
      v281 = v132;
      v134 = v268;
      v135 = v279;
      v136 = v270;
      (*(v268 + 32))(v279, v70, v270);
      v137 = v264;
      (*(v134 + 16))(v264, v135, v136);
      (*(v134 + 56))(v137, 0, 1, v136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation0D5ErrorV06PromptG0V0G4TypeO014SafetyRejectedG4InfoV7SourcesV6SourceOGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation0D5ErrorV06PromptG0V0G4TypeO014SafetyRejectedG4InfoV7SourcesV6SourceOGMR);
      v138 = type metadata accessor for GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources.Source();
      v139 = *(v138 - 8);
      v140 = *(v139 + 72);
      v141 = (*(v139 + 80) + 32) & ~*(v139 + 80);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1ABA1D930;
      (*(v139 + 104))(v142 + v141, *MEMORY[0x1E69A0998], v138);
      swift_bridgeObjectRetain_n();
      MEMORY[0x1AC5A6AE0](v131);
      GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources.init(sources:)();
      GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.Sources.init(sources:)();
      (*(v271 + 104))(v269, *MEMORY[0x1E69A0978], v272);
      v143 = v276;
      GenerativeError.PromptError.ErrorType.SafetyRejectedErrorInfo.init(debugDescription:underlyingError:content:violationCategory:isUnsafe:isRegionalSensitive:unsafeSources:regionalSensitiveSources:origin:)();
      v145 = v277;
      v144 = v278;
      (*(v277 + 104))(v143, *MEMORY[0x1E69A09E0], v278);
      v109 = v284;
      static GenerativeError.promptError(type:userFacingLocalizedMessage:userInfo:)();

      (*(v145 + 8))(v143, v144);
      (*(v134 + 8))(v279, v136);
LABEL_12:
      v146 = type metadata accessor for GenerativeError();
      v147 = *(*(v146 - 8) + 56);
      v148 = v109;
      return v147(v148, 0, 1, v146);
    case 0x10u:
      v73 = v70[1];
      v74 = v70[2];
      v75 = v70[3];
      v76 = v70[4];
      v77 = v70[5];
      v78 = v284;
      static GenerativeError.accountError(userFacingLocalizedMessage:userInfo:)();
LABEL_29:

LABEL_30:
      v146 = type metadata accessor for GenerativeError();
      v147 = *(*(v146 - 8) + 56);
      v148 = v78;
      return v147(v148, 0, 1, v146);
    case 0x11u:
      v186 = *v70;
      v187 = v70[1];
      v188 = v70[2];
      v190 = v70[4];
      v189 = v70[5];

      v191 = v262;
      GenerativeError.MalformedOutputError.ErrorContext.init(description:)();
      v92 = v284;
      static GenerativeError.malformedOutput(context:)();

      (*(v263 + 8))(v191, v265);
LABEL_23:
      v146 = type metadata accessor for GenerativeError();
      v147 = *(*(v146 - 8) + 56);
      v148 = v92;
      return v147(v148, 0, 1, v146);
    default:
      v159 = v70[1];
      v160 = v70[2];
      v162 = v70[3];
      v161 = v70[4];
      v163 = v70[5];
      v164 = type metadata accessor for Date();
      (*(*(v164 - 8) + 56))(v283, 1, 1, v164);
      GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
      (*(v63 + 104))(v66, *MEMORY[0x1E69A0A38], v62);
      v165 = v284;
      static GenerativeError.runtimeError(type:userFacingLocalizedMessage:userInfo:)();

      (*(v63 + 8))(v66, v62);
LABEL_37:
      v146 = type metadata accessor for GenerativeError();
      v147 = *(*(v146 - 8) + 56);
      v148 = v165;
      return v147(v148, 0, 1, v146);
  }
}

void static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(void *a1, uint64_t a2)
{
  v217 = a2;
  v175 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v172 = *(v175 - 8);
  v3 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v169 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v170 = *(v171 - 8);
  v5 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v168 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for BindableVariable();
  v167 = *(v174 - 8);
  v7 = *(v167 + 64);
  v8 = MEMORY[0x1EEE9AC00](v174);
  v166 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v173 = &v164 - v10;
  v11 = type metadata accessor for Prompt.RenderError();
  v203 = *(v11 - 8);
  v204 = v11;
  v12 = *(v203 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v193 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v205 = &v164 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v164 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v188 = &v164 - v20;
  v191 = type metadata accessor for InferenceError();
  v190 = *(v191 - 8);
  v21 = *(v190 + 64);
  v22 = MEMORY[0x1EEE9AC00](v191);
  v185 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v164 - v24;
  v180 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType();
  v179 = *(v180 - 8);
  v25 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for ModelManagerError();
  v212 = *(v214 - 8);
  v27 = *(v212 + 64);
  v28 = MEMORY[0x1EEE9AC00](v214);
  v197 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v213 = &v164 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v209 = &v164 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v194 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v189 = &v164 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v195 = &v164 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v201 = &v164 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v184 = &v164 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v199 = &v164 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v202 = &v164 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v208 = &v164 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v211 = &v164 - v51;
  v216 = type metadata accessor for TokenGenerationError(0);
  v183 = *(v216 - 8);
  v52 = *(v183 + 64);
  v53 = MEMORY[0x1EEE9AC00](v216);
  v177 = &v164 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v210 = &v164 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v215 = &v164 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v58 - 8);
  v182 = &v164 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v192 = &v164 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v200 = &v164 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v207 = &v164 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v164 - v68;
  v70 = type metadata accessor for GenerativeFunctionInstrumenter();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  v73 = MEMORY[0x1EEE9AC00](v70);
  v176 = &v164 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v181 = &v164 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v187 = &v164 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v196 = &v164 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v206 = &v164 - v81;
  v82 = type metadata accessor for GenerativeError();
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  v85 = MEMORY[0x1EEE9AC00](v82);
  v87 = &v164 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v89 = &v164 - v88;
  swift_willThrow();
  v218 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v83 + 32))(v87, v89, v82);
    lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
    swift_allocError();
    (*(v83 + 16))(v90, v87, v82);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v217, v69, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    if ((*(v71 + 48))(v69, 1, v70) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v99 = v206;
      (*(v71 + 32))(v206, v69, v70);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v71 + 8))(v99, v70);
    }

    swift_willThrow();
    (*(v83 + 8))(v87, v82);
LABEL_47:

    return;
  }

  v91 = v82;
  v165 = v71;
  v206 = v70;

  v92 = a1;
  v218 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  v94 = v215;
  v93 = v216;
  if (swift_dynamicCast())
  {
    v95 = v210;
    outlined init with take of TokenGeneratorResponsePromptCompletionStream(v94, v210, type metadata accessor for TokenGenerationError);
    v96 = v211;
    static TokenGenerator.map(tokenGenerationError:)(v95, v211);
    v97 = v208;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v96, v208, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    if ((*(v83 + 48))(v97, 1, v82) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v97, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of PromptCompletion(v95, v98, type metadata accessor for TokenGenerationError);
    }

    else
    {
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
      swift_allocError();
      (*(v83 + 32))(v113, v97, v82);
    }

    v114 = v206;
    v115 = v207;
    v116 = v165;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v217, v207, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    if ((*(v116 + 48))(v115, 1, v114) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v115, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v133 = v196;
      (*(v116 + 32))(v196, v115, v114);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v116 + 8))(v133, v114);
    }

    swift_willThrow();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v96, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v95, type metadata accessor for TokenGenerationError);
    goto LABEL_47;
  }

  v218 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  v100 = v209;
  v101 = v214;
  if (swift_dynamicCast())
  {
    v102 = v212;
    v103 = v213;
    (*(v212 + 32))(v213, v100, v101);
    v104 = *(v102 + 16);
    v105 = v197;
    v215 = (v102 + 16);
    v211 = v104;
    (v104)(v197, v103, v101);
    v106 = (*(v102 + 88))(v105, v101);
    if (v106 == *MEMORY[0x1E69B2578])
    {
      (*(v102 + 96))(v105, v101);
      v107 = v190;
      v108 = v186;
      v109 = v191;
      (*(v190 + 32))(v186, v105, v191);
      v110 = v185;
      (*(v107 + 16))(v185, v108, v109);
      v111 = v188;
      TokenGenerationError.init(_:)(v110, v188);
      if ((*(v183 + 48))(v111, 1, v93) == 1)
      {
        (*(v107 + 8))(v108, v109);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v111, &_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
        v112 = v184;
        (*(v83 + 56))(v184, 1, 1, v91);
      }

      else
      {
        v149 = v177;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v111, v177, type metadata accessor for TokenGenerationError);
        v112 = v184;
        static TokenGenerator.map(tokenGenerationError:)(v149, v184);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v149, type metadata accessor for TokenGenerationError);
        (*(v107 + 8))(v108, v109);
      }

      v139 = v199;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v112, v199, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      v140 = v83;
    }

    else if (v106 == *MEMORY[0x1E69B2588])
    {
      (*(v102 + 96))(v105, v101);
      v134 = *v105;
      v135 = v105[1];
      v136 = v178;
      GenerativeError.AvailabilityError.ErrorType.UseCaseDisabledErrorInfo.init(useCaseIdentifier:)();
      v137 = v179;
      v138 = v180;
      (*(v179 + 104))(v136, *MEMORY[0x1E69A0948], v180);
      v139 = v199;
      static GenerativeError.availabilityError(type:)();
      (*(v137 + 8))(v136, v138);
      v140 = v83;
      (*(v83 + 56))(v139, 0, 1, v91);
    }

    else
    {
      v140 = v83;
      v139 = v199;
      (*(v83 + 56))(v199, 1, 1, v91);
      (*(v102 + 8))(v105, v101);
    }

    v150 = v202;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v139, v202, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    v151 = v201;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v150, v201, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    if ((*(v140 + 48))(v151, 1, v91) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v151, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8]);
      swift_allocError();
      (v211)(v152, v213, v214);
      v101 = v214;
    }

    else
    {
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
      swift_allocError();
      (*(v140 + 32))(v153, v151, v91);
    }

    v154 = v200;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v217, v200, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    v155 = v165;
    v156 = v206;
    if ((*(v165 + 48))(v154, 1, v206) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v154, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v157 = v187;
      (*(v155 + 32))(v187, v154, v156);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v155 + 8))(v157, v156);
    }

    swift_willThrow();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v150, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    (*(v212 + 8))(v213, v101);
    goto LABEL_47;
  }

  v218 = a1;
  MEMORY[0x1AC5A6AE0](a1);
  v117 = v198;
  v118 = v204;
  if (swift_dynamicCast())
  {
    v119 = v203;
    (*(v203 + 32))(v205, v117, v118);
    v120 = *(v119 + 16);
    v121 = v193;
    v120();
    v122 = (*(v119 + 88))(v121, v118);
    if (v122 == *MEMORY[0x1E69C6238] || v122 == *MEMORY[0x1E69C6230] || v122 != *MEMORY[0x1E69C6240])
    {
      v131 = v83;
      v144 = *(v83 + 56);
      v132 = v189;
      v144(v189, 1, 1, v91);
      (*(v119 + 8))(v121, v118);
    }

    else
    {
      (*(v119 + 96))(v121, v118);
      v123 = v167;
      v124 = v173;
      v125 = v121;
      v126 = v174;
      (*(v167 + 32))(v173, v125, v174);
      (*(v123 + 16))(v166, v124, v126);
      v127 = v169;
      GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableVariableErrorInfo.init(bindableVariable:)();
      v128 = v172;
      (*(v172 + 104))(v127, *MEMORY[0x1E69A0A10], v175);
      v129 = v168;
      static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
      (*(v128 + 8))(v127, v175);
      v130 = v189;
      static GenerativeError.runtimeError(type:)();
      (*(v170 + 8))(v129, v171);
      (*(v123 + 8))(v173, v174);
      v131 = v83;
      v132 = v130;
      (*(v131 + 56))(v130, 0, 1, v91);
    }

    v145 = v132;
    v146 = v195;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v145, v195, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    v147 = v194;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v146, v194, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    if ((*(v131 + 48))(v147, 1, v91) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v147, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
      swift_allocError();
      (v120)(v148, v205, v118);
    }

    else
    {
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
      swift_allocError();
      (*(v131 + 32))(v159, v147, v91);
    }

    v160 = v192;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v217, v192, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    v161 = v165;
    v162 = v206;
    if ((*(v165 + 48))(v160, 1, v206) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v160, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
    }

    else
    {
      v163 = v181;
      (*(v161 + 32))(v181, v160, v162);
      GenerativeFunctionInstrumenter.executionEnd(error:)();
      (*(v161 + 8))(v163, v162);
    }

    swift_willThrow();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v146, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    (*(v203 + 8))(v205, v118);
    goto LABEL_47;
  }

  v141 = v182;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v217, v182, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v142 = v165;
  v143 = v206;
  if ((*(v165 + 48))(v141, 1, v206) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v141, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  }

  else
  {
    v158 = v176;
    (*(v142 + 32))(v176, v141, v143);
    GenerativeFunctionInstrumenter.executionEnd(error:)();
    (*(v142 + 8))(v158, v143);
  }

  swift_willThrow();
  MEMORY[0x1AC5A6AE0](v92);
}

uint64_t static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(uint64_t a1, uint64_t a2, int *a3)
{
  v4[2] = a2;
  v4[3] = v3;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:);

  return v9(a1);
}

uint64_t static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v3);
}

uint64_t static System.defaultInstruction.getter()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static System.defaultInstructionPrompt.getter();
  return MEMORY[0x1AC5A59C0](v3);
}

uint64_t static System.defaultInstructions(appending:)()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Prompt.components.getter();
  static System.defaultInstructionsPrompt(appending:)();

  return MEMORY[0x1AC5A59C0](v3);
}

uint64_t Prompt.promptTemplateIfWholePromptIsASinglePromptTemplate()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Component.Value.CustomData();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Prompt.Component.Value();
  v66 = *(v65 - 8);
  v6 = *(v66 + 64);
  v7 = MEMORY[0x1EEE9AC00](v65);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - v9;
  v11 = type metadata accessor for Prompt.Component();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v19 = type metadata accessor for Prompt();
  v63 = *(v19 - 8);
  v64 = v19;
  v20 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(Prompt.components.getter() + 16);

  if (v22 != 1)
  {
    goto LABEL_14;
  }

  v57 = a1;
  result = Prompt.components.getter();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = *(v12 + 16);
  v55 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v56 = v1;
  v24(v18, result + v55, v11);

  Prompt.Component.value.getter();
  v54 = *(v12 + 8);
  v54(v18, v11);
  v25 = v66;
  v26 = v65;
  v53 = *(v66 + 88);
  if (v53(v10, v65) != *MEMORY[0x1E69C6318])
  {
    (*(v25 + 8))(v10, v26);
LABEL_13:
    a1 = v57;
LABEL_14:
    v44 = type metadata accessor for PromptTemplate();
    return (*(*(v44 - 8) + 56))(a1, 1, 1, v44);
  }

  v51 = v16;
  v52 = v24;
  v49 = *(v25 + 96);
  v50 = v25 + 96;
  v49(v10, v26);
  v27 = v62;
  v28 = v63;
  v29 = v64;
  (*(v63 + 32))(v62, v10, v64);
  v30 = *(Prompt.components.getter() + 16);

  if (v30 != 1)
  {
    (*(v28 + 8))(v27, v29);
    goto LABEL_13;
  }

  result = Prompt.components.getter();
  if (!*(result + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v31 = v51;
  v52(v51, result + v55, v11);

  v32 = v61;
  Prompt.Component.value.getter();
  v54(v31, v11);
  if (v53(v32, v26) != *MEMORY[0x1E69C6308])
  {
    (*(v63 + 8))(v27, v64);
    (*(v66 + 8))(v32, v26);
    goto LABEL_13;
  }

  v49(v32, v26);
  v34 = v58;
  v33 = v59;
  v35 = v32;
  v36 = v60;
  (*(v59 + 32))(v58, v35, v60);
  v37 = Prompt.Component.Value.CustomData.name.getter();
  v39 = v38;
  v40 = static PromptTemplate.name.getter();
  v42 = v56;
  v43 = v63;
  if (v37 == v40 && v39 == v41)
  {

    goto LABEL_16;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v45 & 1) == 0)
  {
    (*(v33 + 8))(v34, v36);
    (*(v43 + 8))(v62, v64);
    goto LABEL_13;
  }

LABEL_16:
  v46 = type metadata accessor for PromptTemplate();
  lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x1E69A14E8]);
  v47 = v57;
  Prompt.Component.Value.CustomData.value<A>(type:)();
  (*(v33 + 8))(v34, v36);
  if (v42)
  {
    return (*(v43 + 8))(v62, v64);
  }

  (*(v43 + 8))(v62, v64);
  return (*(*(v46 - 8) + 56))(v47, 0, 1, v46);
}

uint64_t Dictionary<>.richVariableBindings()(uint64_t a1)
{
  v1[26] = a1;
  v2 = type metadata accessor for Prompt.ImageSurface();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = type metadata accessor for Prompt.PreprocessedImageData();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = type metadata accessor for Prompt.ImageEmbeddingData();
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();
  v11 = type metadata accessor for Prompt.ImageData();
  v1[36] = v11;
  v12 = *(v11 - 8);
  v1[37] = v12;
  v13 = *(v12 + 64) + 15;
  v1[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation13SelfAttentionVSgMd, &_s26GenerativeModelsFoundation13SelfAttentionVSgMR) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v15 = type metadata accessor for SelfAttention();
  v1[40] = v15;
  v16 = *(v15 - 8);
  v1[41] = v16;
  v17 = *(v16 + 64) + 15;
  v1[42] = swift_task_alloc();
  v18 = type metadata accessor for Prompt.Component.Value.CustomData();
  v1[43] = v18;
  v19 = *(v18 - 8);
  v1[44] = v19;
  v20 = *(v19 + 64) + 15;
  v1[45] = swift_task_alloc();
  v21 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v1[46] = v21;
  v22 = *(v21 - 8);
  v1[47] = v22;
  v23 = *(v22 + 64) + 15;
  v1[48] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMR) - 8) + 64) + 15;
  v1[49] = swift_task_alloc();
  v25 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component();
  v1[50] = v25;
  v26 = *(v25 - 8);
  v1[51] = v26;
  v27 = *(v26 + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v28 = type metadata accessor for Prompt.Component();
  v1[54] = v28;
  v29 = *(v28 - 8);
  v1[55] = v29;
  v30 = *(v29 + 64) + 15;
  v1[56] = swift_task_alloc();
  v31 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v1[57] = v31;
  v32 = *(v31 - 8);
  v1[58] = v32;
  v33 = *(v32 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR) - 8) + 64) + 15;
  v1[61] = swift_task_alloc();
  v35 = type metadata accessor for Prompt.Component.Value();
  v1[62] = v35;
  v36 = *(v35 - 8);
  v1[63] = v36;
  v37 = *(v36 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v38 = type metadata accessor for Prompt();
  v1[66] = v38;
  v39 = *(v38 - 8);
  v1[67] = v39;
  v40 = *(v39 + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Dictionary<>.richVariableBindings(), 0, 0);
}

uint64_t Dictionary<>.richVariableBindings()()
{
  v1 = *(v0 + 504);
  v148 = *(v0 + 512);
  v2 = *(v0 + 440);
  v3 = *(v0 + 408);
  v166 = *(v0 + 536);
  v169 = *(v0 + 376);
  v4 = *(v0 + 352);
  v5 = *(v0 + 328);
  v6 = *(v0 + 296);
  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v172 = *(v0 + 224);
  v175 = *(v0 + 464);
  v9 = *(v0 + 208);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v126 = v9 + 64;
  v11 = -1;
  v12 = -1 << *(v9 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v135 = v10;
  v136 = v11 & *(v9 + 64);
  v162 = *MEMORY[0x1E69C6320];
  v116 = (63 - v12) >> 6;
  v146 = *MEMORY[0x1E69C6338];
  v124 = (v166 + 8);
  v160 = (v1 + 88);
  v145 = *MEMORY[0x1E69C62D0];
  v140 = *MEMORY[0x1E69C62E8];
  v131 = *MEMORY[0x1E69C62F0];
  v121 = *MEMORY[0x1E69C6308];
  v115 = (v1 + 8);
  v152 = (v1 + 96);
  v113 = (v5 + 56);
  v114 = (v4 + 32);
  v112 = (v4 + 8);
  v109 = (v5 + 32);
  v149 = *MEMORY[0x1E69DA8A8];
  v151 = (v169 + 104);
  v108 = (v5 + 8);
  v119 = (v8 + 16);
  v120 = (v8 + 32);
  v118 = *MEMORY[0x1E69DA8A0];
  v117 = (v8 + 8);
  v129 = (v7 + 16);
  v130 = (v7 + 32);
  v128 = (v7 + 8);
  v127 = *MEMORY[0x1E69DA898];
  v138 = (v172 + 8);
  v139 = (v172 + 32);
  v137 = *MEMORY[0x1E69DA890];
  v143 = (v6 + 16);
  v144 = (v6 + 32);
  v142 = (v6 + 8);
  v141 = *MEMORY[0x1E69DA8B0];
  v158 = (v2 + 16);
  v164 = (v3 + 56);
  v125 = v2;
  v154 = (v3 + 48);
  v156 = (v2 + 8);
  v147 = v3;
  v153 = (v3 + 32);
  v122 = v9;
  v123 = (v175 + 32);

  for (i = 0; ; i = v133)
  {
    v19 = v136;
    if (v136)
    {
      v20 = i;
LABEL_15:
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
      v25 = v23 | (v20 << 6);
      v26 = (*(v122 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      outlined init with copy of PromptCompletionEvent(*(v122 + 56) + 40 * v25, v0 + 128);
      *(v0 + 72) = v27;
      *(v0 + 80) = v28;
      outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 128), v0 + 88);
    }

    else
    {
      v21 = v116 <= i + 1 ? i + 1 : v116;
      v22 = v21 - 1;
      while (1)
      {
        v20 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_48;
        }

        if (v20 >= v116)
        {
          break;
        }

        v19 = *(v126 + 8 * v20);
        ++i;
        if (v19)
        {
          i = v20;
          goto LABEL_15;
        }
      }

      v24 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      i = v22;
      *(v0 + 72) = 0u;
    }

    v29 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v29;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v30 = *(v0 + 552);
    v31 = *(v0 + 544);
    v32 = *(v0 + 520);
    if (!*(v0 + 24))
    {
      v100 = *(v0 + 512);
      v102 = *(v0 + 480);
      v101 = *(v0 + 488);
      v103 = *(v0 + 472);
      v104 = *(v0 + 448);
      v105 = *(v0 + 424);
      v155 = *(v0 + 416);
      v157 = *(v0 + 392);
      v159 = *(v0 + 384);
      v161 = *(v0 + 360);
      v163 = *(v0 + 336);
      v165 = *(v0 + 312);
      v168 = *(v0 + 304);
      v171 = *(v0 + 280);
      v174 = *(v0 + 256);
      v178 = *(v0 + 232);
      v106 = *(v0 + 208);

      v107 = *(v0 + 8);

      return v107(v135);
    }

    v133 = i;
    v134 = *(v0 + 24);
    v136 = v24;
    v33 = *(v0 + 488);
    v176 = *(v0 + 208);
    v132 = *(v0 + 16);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 32), v0 + 168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
    v34 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v150 = *(v125 + 72);
    *(swift_allocObject() + 16) = xmmword_1ABA1D930;
    v35 = *(v0 + 200);
    __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
    dispatch thunk of PromptComponentValueConvertible.toValue()();
    v36 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    Prompt.Component.init(value:priority:privacy:)();
    Prompt.init(components:)();
    Prompt.transformAndBind(bindingVariables:includeAttachments:customDataTransformers:)();
    v37 = *(v0 + 552);
    v38 = *(v0 + 528);
    v39 = *v124;
    (*v124)(*(v0 + 544), v38);
    v40 = Prompt.components.getter();
    result = v39(v37, v38);
    v170 = *(v40 + 16);
    if (v170)
    {
      break;
    }

LABEL_4:
    v15 = *(v0 + 472);
    v16 = *(v0 + 480);
    v17 = *(v0 + 456);

    PromptTemplateInfo.RichVariableBinding.init(components:)();
    (*v123)(v15, v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v132, v134, isUniquelyReferenced_nonNull_native);

    result = __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  }

  v41 = 0;
  v42 = v40 + v34;
  v173 = MEMORY[0x1E69E7CC0];
  v43 = v150;
  v167 = v40;
  while (v41 < *(v40 + 16))
  {
    v44 = *(v0 + 512);
    v45 = *(v0 + 496);
    v46 = *(v0 + 432);
    v177 = v42;
    (*v158)(*(v0 + 448));
    Prompt.Component.value.getter();
    v47 = (*v160)(v44, v45);
    if (v47 == v162)
    {
      v48 = *(v0 + 512);
      v50 = *(v0 + 392);
      v49 = *(v0 + 400);
      v51 = *(v0 + 384);
      v52 = *(v0 + 368);
      (*v152)(v48, *(v0 + 496));
      v53 = *v48;
      v54 = *(v148 + 8);
      PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:)();
      (*v151)(v51, v149, v52);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
LABEL_26:
      (*v164)(v50, 0, 1, v49);
      goto LABEL_34;
    }

    if (v47 == v146)
    {
      v55 = *(v0 + 512);
      v50 = *(v0 + 392);
      v49 = *(v0 + 400);
      v56 = *(v0 + 384);
      v57 = *(v0 + 368);
      v58 = *(v0 + 304);
      v59 = *(v0 + 288);
      (*v152)(v55, *(v0 + 496));
      (*v144)(v58, v55, v59);
      (*v143)(v56, v58, v59);
      (*v151)(v56, v141, v57);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v60 = v59;
      v43 = v150;
      (*v142)(v58, v60);
      goto LABEL_26;
    }

    if (v47 == v145)
    {
      v61 = *(v0 + 512);
      v63 = *(v0 + 392);
      v62 = *(v0 + 400);
      v64 = *(v0 + 384);
      v65 = *(v0 + 368);
      v66 = *(v0 + 232);
      v67 = *(v0 + 216);
      (*v152)(v61, *(v0 + 496));
      (*v139)(v66, v61, v67);
      Prompt.ImageSurface.surface.getter();
      PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface.init(surface:)();
      (*v151)(v64, v137, v65);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v68 = v138;
    }

    else if (v47 == v140)
    {
      v69 = *(v0 + 512);
      v63 = *(v0 + 392);
      v62 = *(v0 + 400);
      v70 = *(v0 + 384);
      v71 = *(v0 + 368);
      v66 = *(v0 + 280);
      v67 = *(v0 + 264);
      (*v152)(v69, *(v0 + 496));
      (*v130)(v66, v69, v67);
      (*v129)(v70, v66, v67);
      (*v151)(v70, v127, v71);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v68 = v128;
    }

    else
    {
      if (v47 != v131)
      {
        v86 = *(v0 + 512);
        v87 = *(v0 + 496);
        if (v47 == v121)
        {
          v88 = *(v0 + 360);
          v89 = *(v0 + 344);
          v91 = *(v0 + 312);
          v90 = *(v0 + 320);
          (*v152)(*(v0 + 512), *(v0 + 496));
          (*v114)(v88, v86, v89);
          lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type SelfAttention and conformance SelfAttention, MEMORY[0x1E69A14A0]);
          Prompt.Component.Value.CustomData.value<A>(type:)();
          v92 = *(v0 + 392);
          v93 = *(v0 + 384);
          v94 = *(v0 + 368);
          v110 = *(v0 + 360);
          v111 = *(v0 + 400);
          v95 = *(v0 + 336);
          v96 = *(v0 + 344);
          v97 = *(v0 + 312);
          v98 = *(v0 + 320);
          (*v113)(v97, 0, 1, v98);
          (*v109)(v95, v97, v98);
          SelfAttention.text.getter();
          static PromptTemplateInfo.RichVariableBinding.Component.Content.Text.selfAttention(string:)();

          (*v151)(v93, v149, v94);
          PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
          v99 = v98;
          v43 = v150;
          (*v108)(v95, v99);
          (*v112)(v110, v96);
          (*v164)(v92, 0, 1, v111);
        }

        else
        {
          (*v164)(*(v0 + 392), 1, 1, *(v0 + 400));
          (*v115)(v86, v87);
        }

        goto LABEL_34;
      }

      v72 = *(v0 + 512);
      v63 = *(v0 + 392);
      v62 = *(v0 + 400);
      v73 = *(v0 + 384);
      v74 = *(v0 + 368);
      v66 = *(v0 + 256);
      v67 = *(v0 + 240);
      (*v152)(v72, *(v0 + 496));
      (*v120)(v66, v72, v67);
      (*v119)(v73, v66, v67);
      (*v151)(v73, v118, v74);
      PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
      v68 = v117;
    }

    v75 = v67;
    v43 = v150;
    (*v68)(v66, v75);
    (*v164)(v63, 0, 1, v62);
LABEL_34:
    v76 = *(v0 + 392);
    v77 = *(v0 + 400);
    (*v156)(*(v0 + 448), *(v0 + 432));
    if ((*v154)(v76, 1, v77) == 1)
    {
      result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 392), &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVSgMR);
      v40 = v167;
    }

    else
    {
      v78 = *(v0 + 416);
      v79 = *(v0 + 424);
      v80 = *(v0 + 400);
      v81 = *v153;
      (*v153)(v79, *(v0 + 392), v80);
      v81(v78, v79, v80);
      v40 = v167;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v173[2] + 1, 1, v173);
      }

      v83 = v173[2];
      v82 = v173[3];
      if (v83 >= v82 >> 1)
      {
        v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82 > 1, v83 + 1, 1, v173);
      }

      v84 = *(v0 + 416);
      v85 = *(v0 + 400);
      v173[2] = v83 + 1;
      result = (v81)(v173 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v83, v84, v85);
    }

    ++v41;
    v42 = v177 + v43;
    if (v170 == v41)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();
  v10 = type metadata accessor for CompletionPrompt();
  v4[8] = v10;
  v11 = *(v10 - 8);
  v4[9] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v4[10] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  v4[11] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v19 = (a2 + *a2);
  v16 = a2[1];
  v17 = swift_task_alloc();
  v4[13] = v17;
  *v17 = v4;
  v17[1] = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);

  return v19(v13);
}

uint64_t closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v3 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[3], v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[4], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    (*(v7 + 32))(v4, v6, v8);
    *(v4 + *(v5 + 36)) = 0;
    v9 = v0[10];
    v10 = v0[7];
    v11 = v0[4];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[12], v0[2], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    type metadata accessor for ScrubbedPromptVariant(0);
    swift_storeEnumTagMultiPayload();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[7];
    (*(v0[6] + 32))(v14, v0[4], v0[5]);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *(v15 + 16) = v14;
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v17 = v0[12];
    v18 = v0[10];

    return static PromptScrubbing.scrubPrompt(_:scrub:)(v17, v18, &async function pointer to partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:), v15);
  }
}

{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v4 = closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[4];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[12], v0[2], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  type metadata accessor for ScrubbedPromptVariant(0);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[17];
  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UseCaseIdentifier();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:), 0, 0);
}

uint64_t static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[4], v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    v5 = v0[3];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[8], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    v6 = type metadata accessor for ChatMessagesPrompt();
    (*(*(v6 - 8) + 16))(v4, v5, v6);
    *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = 0;
    v7 = v0[11];
    v8 = v0[7];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v15 = StringRenderedPromptSanitizerWithConfiguration.useCaseIdentifier.getter();
  v17 = v16;
  static UseCaseIdentifier.foundationModels.getter();
  v18 = UseCaseIdentifier.id.getter();
  v20 = v19;
  (*(v13 + 8))(v12, v14);
  if (v15 == v18 && v17 == v20)
  {

LABEL_9:
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.inference);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1AB828000, v23, v24, "Scrubbing entire prompt as use case is Foundation Models", v25, 2u);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
    }

    v26 = v0[11];

    v27 = swift_task_alloc();
    v0[12] = v27;
    *(v27 + 16) = v26;
    v28 = swift_task_alloc();
    v0[13] = v28;
    *v28 = v0;
    v28[1] = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
    v29 = v0[2];
    v30 = v0[3];

    return static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:)(v29, v30, &async function pointer to partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:), v27);
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_9;
  }

  v31 = v0[11];
  v32 = swift_task_alloc();
  v0[15] = v32;
  *(v32 + 16) = v31;
  v33 = swift_task_alloc();
  v0[16] = v33;
  *v33 = v0;
  v33[1] = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  v34 = v0[2];
  v35 = v0[3];

  return static PromptScrubbing.scrubPrompt(_:scrub:)(v34, v35, &async function pointer to partial apply for closure #2 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:), v32);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  (*(v5 + 8))(v3, v4);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2008) = v8;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  *(v9 + 2016) = swift_task_alloc();
  v13 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2024) = v13;
  v14 = *(v13 - 8);
  *(v9 + 2032) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 2040) = swift_task_alloc();
  v16 = type metadata accessor for FunctionDescription(0);
  *(v9 + 2048) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v9 + 2056) = swift_task_alloc();
  *(v9 + 2064) = swift_task_alloc();
  v18 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  *(v9 + 2072) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v9 + 2080) = swift_task_alloc();
  v20 = type metadata accessor for ToolType(0);
  *(v9 + 2088) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v9 + 2096) = swift_task_alloc();
  *(v9 + 2104) = swift_task_alloc();
  v22 = *(type metadata accessor for ToolDescription(0) - 8);
  *(v9 + 2112) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 2120) = swift_task_alloc();
  *(v9 + 2128) = swift_task_alloc();
  *(v9 + 2136) = swift_task_alloc();
  v24 = *(type metadata accessor for ToolDescriptionEnvelope(0) - 8);
  *(v9 + 2144) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 2152) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR) - 8) + 64) + 15;
  *(v9 + 2160) = swift_task_alloc();
  v27 = type metadata accessor for AnyTooling();
  *(v9 + 2168) = v27;
  v28 = *(v27 - 8);
  *(v9 + 2176) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 2184) = swift_task_alloc();
  v30 = type metadata accessor for ToolType();
  *(v9 + 2192) = v30;
  v31 = *(v30 - 8);
  *(v9 + 2200) = v31;
  v32 = *(v31 + 64) + 15;
  *(v9 + 2208) = swift_task_alloc();
  *(v9 + 2216) = swift_task_alloc();
  *(v9 + 2224) = swift_task_alloc();
  v33 = type metadata accessor for ToolChoice();
  *(v9 + 2232) = v33;
  v34 = *(v33 - 8);
  *(v9 + 2240) = v34;
  v35 = *(v34 + 64) + 15;
  *(v9 + 2248) = swift_task_alloc();
  *(v9 + 2256) = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR) - 8) + 64) + 15;
  *(v9 + 2264) = swift_task_alloc();
  *(v9 + 2272) = swift_task_alloc();
  v37 = type metadata accessor for CompletePromptRequest(0);
  *(v9 + 2280) = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  *(v9 + 2288) = swift_task_alloc();
  *(v9 + 2296) = swift_task_alloc();
  v39 = type metadata accessor for Prompt();
  *(v9 + 2304) = v39;
  v40 = *(v39 - 8);
  *(v9 + 2312) = v40;
  v41 = *(v40 + 64) + 15;
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = swift_task_alloc();
  *(v9 + 2336) = swift_task_alloc();
  v42 = type metadata accessor for PromptVariant();
  *(v9 + 2344) = v42;
  v43 = *(v42 - 8);
  *(v9 + 2352) = v43;
  v44 = *(v43 + 64) + 15;
  *(v9 + 2360) = swift_task_alloc();
  *(v9 + 2368) = swift_task_alloc();
  *(v9 + 2376) = swift_task_alloc();
  *(v9 + 2384) = swift_task_alloc();
  v45 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2392) = v45;
  v46 = *(*(v45 - 8) + 64) + 15;
  *(v9 + 2400) = swift_task_alloc();
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR) - 8) + 64) + 15;
  *(v9 + 2408) = swift_task_alloc();
  v48 = type metadata accessor for Schema();
  *(v9 + 2416) = v48;
  v49 = *(v48 - 8);
  *(v9 + 2424) = v49;
  v50 = *(v49 + 64) + 15;
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  v51 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR) - 8) + 64) + 15;
  *(v9 + 2448) = swift_task_alloc();
  *(v9 + 2456) = swift_task_alloc();
  v52 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v52;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v53 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v53;
  v54 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v54;
  v55 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v55;
  v56 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v56;
  v57 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v57;
  *(v9 + 2464) = *a8;
  *(v9 + 2472) = *(a8 + 8);
  *(v9 + 2488) = *(a8 + 24);
  *(v9 + 2496) = *(a8 + 32);
  *(v9 + 2512) = *(a8 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)()
{
  v357 = v0;
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2416);
  v3 = *(v0 + 2408);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2000), v3, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 2456);
  if (v4 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2408), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v6 = type metadata accessor for Constraints(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = *(v0 + 2440);
    v8 = *(v0 + 2424);
    v9 = *(v0 + 2416);
    (*(v8 + 32))(v7, *(v0 + 2408), v9);
    Schema.type.getter();
    (*(v8 + 8))(v7, v9);
    v10 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  v11 = *(v0 + 2392);
  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2400), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 2400);
  v14 = *(v0 + 2352);
  v15 = *(v0 + 2344);
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v0 + 2360);
    v17 = *(v0 + 2040);
    v18 = *(v0 + 2032);
    v19 = *(v0 + 2024);
    v308 = *(v0 + 2016);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v18 + 32))(v17, v13, v19);
    (*(v14 + 32))(v16, v13 + v20, v15);
    (*(v14 + 16))(v308, v16, v15);
    v21 = 1;
    (*(v14 + 56))(v308, 0, 1, v15);
    v22 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v22;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v23 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v23;
    v24 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v24;
    v25 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v25;
    v26 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v26;
    v27 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v27;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      LOBYTE(v333) = 1;
      v38 = 0uLL;
      LOBYTE(v347) = 1;
      v39 = 2;
      v40 = -1;
      v41 = 768;
      v42 = 0x2000200020001;
      v43 = 1;
      v44 = MEMORY[0x1E69E7CD0];
      v45 = 1;
      v46 = 1;
      v47 = 1;
      v48 = 1;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
    }

    else
    {
      v29 = *(v0 + 16);
      v40 = *(v0 + 24);
      *v315 = *(v0 + 25);
      *&v315[3] = *(v0 + 28);
      v30 = *(v0 + 32);
      v21 = *(v0 + 40);
      *v316 = *(v0 + 41);
      *&v316[3] = *(v0 + 44);
      v31 = *(v0 + 48);
      v43 = *(v0 + 56);
      *&v317[3] = *(v0 + 60);
      *v317 = *(v0 + 57);
      v32 = *(v0 + 64);
      v45 = *(v0 + 72);
      *v318 = *(v0 + 73);
      *&v318[3] = *(v0 + 76);
      v33 = *(v0 + 80);
      v46 = *(v0 + 88);
      *v319 = *(v0 + 89);
      *&v319[3] = *(v0 + 92);
      v44 = *(v0 + 96);
      v34 = *(v0 + 104);
      v47 = *(v0 + 112);
      *v320 = *(v0 + 113);
      *&v320[3] = *(v0 + 116);
      v35 = *(v0 + 120);
      v48 = *(v0 + 128);
      *&v321[3] = *(v0 + 132);
      *v321 = *(v0 + 129);
      v36 = *(v0 + 136);
      v28.i32[0] = *(v0 + 144);
      v42 = vmovl_u8(v28).u64[0];
      v39 = *(v0 + 148);
      v322 = *(v0 + 149);
      v323 = *(v0 + 151);
      v38 = *(v0 + 152);
      v49 = *(v0 + 168);
      v50 = *(v0 + 184);
      v51 = *(v0 + 200);
      v41 = *(v0 + 216);
      v37 = *(v0 + 224);
    }

    *&v347 = v29;
    BYTE8(v347) = v40;
    *(&v347 + 9) = *v315;
    HIDWORD(v347) = *&v315[3];
    *&v348 = v30;
    BYTE8(v348) = v21;
    *(&v348 + 9) = *v316;
    HIDWORD(v348) = *&v316[3];
    *&v349 = v31;
    BYTE8(v349) = v43;
    HIDWORD(v349) = *&v317[3];
    *(&v349 + 9) = *v317;
    *&v350 = v32;
    BYTE8(v350) = v45;
    HIDWORD(v350) = *&v318[3];
    *(&v350 + 9) = *v318;
    v83 = *(v0 + 2512);
    *&v351 = v33;
    v84 = *(v0 + 2504);
    BYTE8(v351) = v46;
    HIDWORD(v351) = *&v319[3];
    *(&v351 + 9) = *v319;
    v85 = *(v0 + 2496);
    *&v352 = v44;
    *(&v352 + 1) = v34;
    v86 = *(v0 + 2488);
    v87 = *(v0 + 2480);
    LOBYTE(v353) = v47;
    DWORD1(v353) = *&v320[3];
    *(&v353 + 1) = *v320;
    v88 = *(v0 + 2472);
    *(&v353 + 1) = v35;
    v89 = *(v0 + 2464);
    LOBYTE(v354) = v48;
    DWORD1(v354) = *&v321[3];
    *(&v354 + 1) = *v321;
    v309 = *(v0 + 2456);
    *(&v354 + 1) = v36;
    v301 = *(v0 + 2040);
    v355[4] = v39;
    v355[7] = v323;
    *&v355[5] = v322;
    v293 = *(v0 + 2016);
    *&v355[72] = v41;
    v287 = *(v0 + 2008);
    v356 = v37;
    v280 = *(v0 + 1992);
    *(&v333 + 1) = v88;
    *&v334 = v87;
    v90 = *(v0 + 1984);
    *(&v334 + 1) = v86;
    *&v335 = v85;
    v91 = *(v0 + 1976);
    *&v333 = v89;
    v92 = *(v0 + 1960);
    *v355 = vuzp1_s8(v42, v42).u32[0];
    *&v355[8] = v38;
    *&v355[24] = v49;
    *&v355[40] = v50;
    *&v355[56] = v51;
    *(&v335 + 1) = v84;
    *&v336 = v83;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v293, v301, &v347, v91, v90, v280, v309, &v333, v92);
    v93 = *(v0 + 2360);
    v94 = *(v0 + 2344);
    v294 = *(v0 + 2040);
    v302 = *(v0 + 2456);
    v95 = *(v0 + 2024);
    v96 = *(v0 + 2016);
    v97 = (*(v0 + 2352) + 8);
    v98 = (*(v0 + 2032) + 8);
    outlined consume of RequestMetadata?(v333, *(&v333 + 1));
    v105 = *&v355[48];
    *(v0 + 1040) = *&v355[32];
    *(v0 + 1056) = v105;
    *(v0 + 1072) = *&v355[64];
    *(v0 + 1088) = v356;
    v106 = v354;
    *(v0 + 976) = v353;
    *(v0 + 992) = v106;
    v107 = *&v355[16];
    *(v0 + 1008) = *v355;
    *(v0 + 1024) = v107;
    v108 = v350;
    *(v0 + 912) = v349;
    *(v0 + 928) = v108;
    v109 = v352;
    *(v0 + 944) = v351;
    *(v0 + 960) = v109;
    v110 = v348;
    *(v0 + 880) = v347;
    *(v0 + 896) = v110;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v96, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v97)(v93, v94);
    (*v98)(v294, v95);
    goto LABEL_48;
  }

  (*(v14 + 32))(*(v0 + 2384), *(v0 + 2400), *(v0 + 2344));
  v52 = *(v0 + 192);
  *(v0 + 1256) = *(v0 + 176);
  *(v0 + 1272) = v52;
  *(v0 + 1288) = *(v0 + 208);
  *(v0 + 1304) = *(v0 + 224);
  v53 = *(v0 + 128);
  *(v0 + 1192) = *(v0 + 112);
  *(v0 + 1208) = v53;
  v54 = *(v0 + 160);
  *(v0 + 1224) = *(v0 + 144);
  *(v0 + 1240) = v54;
  v55 = *(v0 + 64);
  *(v0 + 1128) = *(v0 + 48);
  *(v0 + 1144) = v55;
  v56 = *(v0 + 96);
  *(v0 + 1160) = *(v0 + 80);
  *(v0 + 1176) = v56;
  v57 = *(v0 + 32);
  *(v0 + 1096) = *(v0 + 16);
  *(v0 + 1112) = v57;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 1;
    LOBYTE(v333) = 1;
    LOBYTE(v347) = 1;
    v69 = 0uLL;
    v70 = 0x2000200020001;
    v71 = 2;
    v72 = -1;
    v73 = 768;
    v74 = MEMORY[0x1E69E7CD0];
    v75 = 1;
    v76 = 1;
    v77 = 1;
    v78 = 1;
    v79 = 1;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
  }

  else
  {
    v59 = *(v0 + 16);
    v72 = *(v0 + 24);
    *v324 = *(v0 + 25);
    *&v324[3] = *(v0 + 28);
    v60 = *(v0 + 32);
    v68 = *(v0 + 40);
    *v325 = *(v0 + 41);
    *&v325[3] = *(v0 + 44);
    v61 = *(v0 + 48);
    v75 = *(v0 + 56);
    *&v326[3] = *(v0 + 60);
    *v326 = *(v0 + 57);
    v62 = *(v0 + 64);
    v76 = *(v0 + 72);
    *v327 = *(v0 + 73);
    *&v327[3] = *(v0 + 76);
    v63 = *(v0 + 80);
    v77 = *(v0 + 88);
    *v328 = *(v0 + 89);
    *&v328[3] = *(v0 + 92);
    v74 = *(v0 + 96);
    v64 = *(v0 + 104);
    v78 = *(v0 + 112);
    *v329 = *(v0 + 113);
    *&v329[3] = *(v0 + 116);
    v65 = *(v0 + 120);
    v79 = *(v0 + 128);
    *&v330[3] = *(v0 + 132);
    *v330 = *(v0 + 129);
    v66 = *(v0 + 136);
    v58.i32[0] = *(v0 + 144);
    v70 = vmovl_u8(v58).u64[0];
    v71 = *(v0 + 148);
    v331 = *(v0 + 149);
    v332 = *(v0 + 151);
    v69 = *(v0 + 152);
    v80 = *(v0 + 168);
    v81 = *(v0 + 184);
    v82 = *(v0 + 200);
    v73 = *(v0 + 216);
    v67 = *(v0 + 224);
  }

  v99 = *(v0 + 2512);
  v100 = *(v0 + 2504);
  v101 = *(v0 + 2488);
  v102 = *(v0 + 2472);
  v103 = *(v0 + 2384);
  v104 = *(v0 + 2336);
  *(v0 + 1312) = v59;
  *(v0 + 1320) = v72;
  *(v0 + 1324) = *&v324[3];
  *(v0 + 1321) = *v324;
  *(v0 + 1328) = v60;
  *(v0 + 1336) = v68;
  *(v0 + 1340) = *&v325[3];
  *(v0 + 1337) = *v325;
  *(v0 + 1344) = v61;
  *(v0 + 1352) = v75;
  *(v0 + 1356) = *&v326[3];
  *(v0 + 1353) = *v326;
  *(v0 + 1360) = v62;
  *(v0 + 1368) = v76;
  *(v0 + 1372) = *&v327[3];
  *(v0 + 1369) = *v327;
  *(v0 + 1376) = v63;
  *(v0 + 1384) = v77;
  *(v0 + 1388) = *&v328[3];
  *(v0 + 1385) = *v328;
  *(v0 + 1392) = v74;
  *(v0 + 1400) = v64;
  *(v0 + 1408) = v78;
  *(v0 + 1412) = *&v329[3];
  *(v0 + 1409) = *v329;
  *(v0 + 1416) = v65;
  *(v0 + 1424) = v79;
  *(v0 + 1428) = *&v330[3];
  *(v0 + 1425) = *v330;
  *(v0 + 1432) = v66;
  *(v0 + 1440) = vuzp1_s8(v70, v70).u32[0];
  *(v0 + 1444) = v71;
  *(v0 + 1447) = v332;
  *(v0 + 1445) = v331;
  *(v0 + 1448) = v69;
  *(v0 + 1464) = v80;
  *(v0 + 1480) = v81;
  *(v0 + 1496) = v82;
  *(v0 + 1512) = v73;
  *(v0 + 1520) = v67;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

  PromptVariant.tgPrompt.getter();
  v270 = *(v0 + 2488);
  v260 = *(v0 + 2472);
  v254 = *(v0 + 2448);
  v257 = *(v0 + 2456);
  v111 = *(v0 + 2384);
  v112 = *(v0 + 2376);
  v113 = *(v0 + 2352);
  v114 = *(v0 + 2344);
  v115 = *(v0 + 2336);
  v116 = *(v0 + 2328);
  v274 = v116;
  v278 = *(v0 + 2512);
  v281 = *(v0 + 2320);
  v117 = *(v0 + 2288);
  v295 = *(v0 + 2280);
  v303 = *(v0 + 2368);
  v252 = *(v0 + 2272);
  v118 = *(v0 + 1984);
  v310 = *(v0 + 1976);
  v263 = *(*(v0 + 2312) + 16);
  v266 = *(v0 + 2304);
  v263();
  v119 = *(v113 + 16);
  v119(v112, v111, v114);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v257, v254, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v118, v252, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(v0 + 1312, v0 + 1744);
  XPCDictionary.init()();
  (v263)(v281, v274, v266);
  v120 = specialized PromptEnvelope.init(sealing:xpcData:)(v281, v117);
  v121 = (v117 + v295[5]);
  *v121 = v120;
  v121[1] = v122;
  v121[2] = v123;
  v121[3] = v124;
  v119(v303, v112, v114);
  PromptVariantEnvelope.init(sealing:xpcData:)(v303, v117, v117 + v295[6]);
  v125 = *(v0 + 1488);
  *&v355[32] = *(v0 + 1472);
  *&v355[48] = v125;
  *&v355[64] = *(v0 + 1504);
  v356 = *(v0 + 1520);
  v126 = *(v0 + 1424);
  v353 = *(v0 + 1408);
  v354 = v126;
  v127 = *(v0 + 1456);
  *v355 = *(v0 + 1440);
  *&v355[16] = v127;
  v128 = *(v0 + 1360);
  v349 = *(v0 + 1344);
  v350 = v128;
  v129 = *(v0 + 1392);
  v351 = *(v0 + 1376);
  v352 = v129;
  v130 = *(v0 + 1328);
  v347 = *(v0 + 1312);
  v348 = v130;
  SamplingParametersEnvelope.init(sealing:)(&v347, &v333);
  v131 = v117 + v295[7];
  v132 = v338;
  *(v131 + 64) = v337;
  *(v131 + 80) = v132;
  v133 = v336;
  *(v131 + 32) = v335;
  *(v131 + 48) = v133;
  v134 = v342;
  *(v131 + 128) = v341;
  *(v131 + 144) = v134;
  v135 = v340;
  *(v131 + 96) = v339;
  *(v131 + 112) = v135;
  *(v131 + 208) = v346;
  v136 = v345;
  *(v131 + 176) = v344;
  *(v131 + 192) = v136;
  *(v131 + 160) = v343;
  v137 = v334;
  *v131 = v333;
  *(v131 + 16) = v137;
  v138 = *(v310 + 16);
  v139 = MEMORY[0x1E69E7CC0];
  v255 = v138;
  if (v138)
  {
    v140 = *(v0 + 2200);
    v304 = *(v0 + 2112);
    v141 = *(v0 + 1976);
    *&v347 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138, 0);
    v142 = v347;
    v143 = *(v140 + 16);
    v140 += 16;
    v144 = v141 + ((*(v140 + 64) + 32) & ~*(v140 + 64));
    v288 = *(v140 + 56);
    v296 = v143;
    v282 = (v140 - 8);
    do
    {
      v145 = *(v0 + 2216);
      v146 = *(v0 + 2208);
      v147 = *(v0 + 2192);
      v148 = *(v0 + 2120);
      v296(v145, v144, v147);
      v296(v146, v145, v147);
      ToolDescription.init(toolType:)(v146, v148);
      (*v282)(v145, v147);
      *&v347 = v142;
      v150 = *(v142 + 16);
      v149 = *(v142 + 24);
      if (v150 >= v149 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v149 > 1, v150 + 1, 1);
        v142 = v347;
      }

      v151 = *(v0 + 2120);
      *(v142 + 16) = v150 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v151, v142 + ((*(v304 + 80) + 32) & ~*(v304 + 80)) + *(v304 + 72) * v150, type metadata accessor for ToolDescription);
      v144 += v288;
      --v138;
    }

    while (v138);
    v139 = MEMORY[0x1E69E7CC0];
    v152 = *(v142 + 16);
    if (v152)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v142 = MEMORY[0x1E69E7CC0];
    v152 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v152)
    {
LABEL_18:
      v153 = *(v0 + 2424);
      v311 = *(v0 + 2144);
      v154 = *(v0 + 2112);
      v271 = *(v0 + 2056);
      v275 = *(v0 + 2080);
      v267 = *(v0 + 2048);
      *&v347 = v139;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v152, 0);
      v155 = v347;
      v156 = v142 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
      v305 = *(v154 + 72);
      v261 = (v153 + 8);
      v264 = (v153 + 16);
      do
      {
        v157 = *(v0 + 2136);
        v158 = *(v0 + 2128);
        v159 = *(v0 + 2104);
        v160 = *(v0 + 2096);
        v161 = *(v0 + 2088);
        outlined init with copy of PromptCompletion(v156, v157, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v157, v158, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v158, v159, type metadata accessor for ToolType);
        outlined init with copy of PromptCompletion(v159, v160, type metadata accessor for ToolType);
        v162 = swift_getEnumCaseMultiPayload();
        if (v162 <= 1)
        {
          v165 = *(v0 + 2096);
          v166 = *(v0 + 2080);
          v167 = *(v0 + 2072);
          if (v162)
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 2104), type metadata accessor for ToolType);
            v168 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 2104), type metadata accessor for ToolType);
            v168 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v168 - 8) + 32))(v166, v165, v168);
        }

        else if (v162 == 2)
        {
          v169 = *(v0 + 2432);
          v170 = *(v0 + 2416);
          v171 = *(v0 + 2080);
          v289 = *(v0 + 2104);
          v297 = *(v0 + 2072);
          v172 = *(v0 + 2064);
          v283 = v172;
          v173 = *(v0 + 2056);
          outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2096), v172, type metadata accessor for FunctionDescription);
          outlined init with copy of PromptCompletion(v172, v173, type metadata accessor for FunctionDescription);
          v174 = v271[1];
          *v171 = *v173;
          v275[1] = v174;
          v175 = v271[3];
          v275[2] = v271[2];
          v275[3] = v175;
          (*v264)(v169, &v173[*(v267 + 24)], v170);
          LODWORD(v171) = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

          Schema.type.getter();
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v289, type metadata accessor for ToolType);
          (*v261)(v169, v170);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v173, type metadata accessor for FunctionDescription);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v283, type metadata accessor for FunctionDescription);
        }

        else
        {
          v163 = *(v0 + 2080);
          v164 = *(v0 + 2072);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 2104), type metadata accessor for ToolType);
        }

        swift_storeEnumTagMultiPayload();
        v176 = *(v0 + 2136);
        v177 = *(v0 + 2128);
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2080), *(v0 + 2152), type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v177, type metadata accessor for ToolDescription);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v176, type metadata accessor for ToolDescription);
        *&v347 = v155;
        v179 = *(v155 + 16);
        v178 = *(v155 + 24);
        if (v179 >= v178 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v178 > 1, v179 + 1, 1);
          v155 = v347;
        }

        v180 = *(v0 + 2152);
        *(v155 + 16) = v179 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v180, v155 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v179, type metadata accessor for ToolDescriptionEnvelope);
        v156 += v305;
        --v152;
      }

      while (v152);

      goto LABEL_33;
    }
  }

  v155 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v181 = *(v0 + 2272);
  v182 = *(v0 + 2264);
  v183 = *(v0 + 2240);
  v184 = *(v0 + 2232);
  *(*(v0 + 2288) + *(*(v0 + 2280) + 36)) = v155;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v181, v182, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v185 = (*(v183 + 48))(v182, 1, v184);
  v186 = *(v0 + 2376);
  v187 = *(v0 + 2352);
  v188 = *(v0 + 2344);
  v189 = *(v0 + 2328);
  v190 = *(v0 + 2312);
  v191 = *(v0 + 2304);
  v192 = *(v0 + 2272);
  if (v185 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2272), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v272 = *(v187 + 8);
    v272(v186, v188);
    v268 = *(v190 + 8);
    v268(v189, v191);
    v193 = xmmword_1ABA26F10;
  }

  else
  {
    v306 = *(v0 + 2328);
    v312 = *(v0 + 2304);
    v194 = *(v0 + 2256);
    v195 = *(v0 + 2248);
    v196 = *(v0 + 2240);
    v197 = *(v0 + 2232);
    (*(v196 + 32))(v194, *(v0 + 2264), v197);
    (*(v196 + 16))(v195, v194, v197);
    ToolChoiceEnvelope.init(sealing:)(v195, &v347);
    (*(v196 + 8))(v194, v197);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v192, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v272 = *(v187 + 8);
    v272(v186, v188);
    v268 = *(v190 + 8);
    v268(v306, v312);
    v193 = v347;
  }

  v198 = *(v0 + 2512);
  v199 = *(v0 + 2488);
  v200 = *(v0 + 2480);
  v201 = *(v0 + 2464);
  v202 = *(v0 + 2448);
  v203 = *(v0 + 2296);
  v204 = *(v0 + 2288);
  v205 = *(v0 + 2280);
  v206 = *(v0 + 1992);
  v207 = *(v0 + 2496);
  *(v204 + v205[10]) = v193;
  v208 = v204 + v205[12];
  *v208 = v201;
  *(v208 + 16) = v200;
  *(v208 + 24) = v199;
  *(v208 + 32) = v207;
  *(v208 + 48) = v198;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v202, v204 + v205[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v204 + v205[11]) = v206;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v204, v203, type metadata accessor for CompletePromptRequest);
  v209 = v255;
  if (v255)
  {
    v210 = *(v0 + 2200);
    v211 = *(v0 + 1992);
    v298 = *(v210 + 16);
    v212 = *(v0 + 1976) + ((*(v210 + 80) + 32) & ~*(v210 + 80));
    v284 = (v210 + 8);
    v290 = *(v210 + 72);
    v276 = *(v0 + 2176);

    v313 = MEMORY[0x1E69E7CC0];
    do
    {
      v213 = *(v0 + 2224);
      v214 = *(v0 + 2216);
      v215 = *(v0 + 2192);
      v216 = *(v0 + 2168);
      v217 = *(v0 + 2160);
      v298(v213, v212, v215);
      v298(v214, v213, v215);
      AnyTooling.init(_:)(v214, v217);
      (*v284)(v213, v215);
      if ((*(v276 + 48))(v217, 1, v216) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2160), &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2160), *(v0 + 2184), type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v313 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v313[2] + 1, 1, v313);
        }

        v219 = v313[2];
        v218 = v313[3];
        if (v219 >= v218 >> 1)
        {
          v313 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v218 > 1, v219 + 1, 1, v313);
        }

        v220 = *(v0 + 2184);
        v313[2] = v219 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v220, v313 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v219, type metadata accessor for AnyTooling);
      }

      v212 += v290;
      --v209;
    }

    while (v209);
  }

  else
  {
    v221 = *(v0 + 1992);

    v313 = MEMORY[0x1E69E7CC0];
  }

  v222 = *(v0 + 2512);
  v223 = *(v0 + 2488);
  v224 = *(v0 + 2472);
  v299 = *(v0 + 2384);
  v302 = *(v0 + 2456);
  v285 = *(v0 + 2352);
  v291 = *(v0 + 2344);
  v225 = *(v0 + 2336);
  v226 = *(v0 + 2312);
  v227 = *(v0 + 2304);
  v228 = *(v0 + 2296);
  v229 = *(v0 + 2008);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v228, v313, *(v0 + 1960));

  outlined destroy of SamplingParameters(v0 + 1312);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v228, type metadata accessor for CompletePromptRequest);
  v268(v225, v227);
  v272(v299, v291);
LABEL_48:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v302, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v230 = *(v0 + 2456);
  v231 = *(v0 + 2448);
  v232 = *(v0 + 2440);
  v233 = *(v0 + 2432);
  v234 = *(v0 + 2408);
  v235 = *(v0 + 2400);
  v236 = *(v0 + 2384);
  v237 = *(v0 + 2376);
  v238 = *(v0 + 2368);
  v239 = *(v0 + 2360);
  v242 = *(v0 + 2336);
  v243 = *(v0 + 2328);
  v244 = *(v0 + 2320);
  v245 = *(v0 + 2296);
  v246 = *(v0 + 2288);
  v247 = *(v0 + 2272);
  v248 = *(v0 + 2264);
  v249 = *(v0 + 2256);
  v250 = *(v0 + 2248);
  v251 = *(v0 + 2224);
  v253 = *(v0 + 2216);
  v256 = *(v0 + 2208);
  v258 = *(v0 + 2184);
  v259 = *(v0 + 2160);
  v262 = *(v0 + 2152);
  v265 = *(v0 + 2136);
  v269 = *(v0 + 2128);
  v273 = *(v0 + 2120);
  v277 = *(v0 + 2104);
  v279 = *(v0 + 2096);
  v286 = *(v0 + 2080);
  v292 = *(v0 + 2064);
  v300 = *(v0 + 2056);
  v307 = *(v0 + 2040);
  v314 = *(v0 + 2016);

  v240 = *(v0 + 8);

  return v240();
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2016) = v8;
  *(v9 + 2008) = a8;
  *(v9 + 2000) = a7;
  *(v9 + 1992) = a6;
  *(v9 + 1984) = a5;
  *(v9 + 1976) = a4;
  *(v9 + 1968) = a2;
  *(v9 + 1960) = a1;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  *(v9 + 2024) = swift_task_alloc();
  v12 = type metadata accessor for PromptTemplateInfo();
  *(v9 + 2032) = v12;
  v13 = *(v12 - 8);
  *(v9 + 2040) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 2048) = swift_task_alloc();
  v15 = type metadata accessor for Schema();
  *(v9 + 2056) = v15;
  v16 = *(v15 - 8);
  *(v9 + 2064) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 2072) = swift_task_alloc();
  v18 = type metadata accessor for FunctionDescription(0);
  *(v9 + 2080) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v9 + 2088) = swift_task_alloc();
  *(v9 + 2096) = swift_task_alloc();
  v20 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  *(v9 + 2104) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v9 + 2112) = swift_task_alloc();
  v22 = type metadata accessor for ToolType(0);
  *(v9 + 2120) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 2128) = swift_task_alloc();
  *(v9 + 2136) = swift_task_alloc();
  v24 = *(type metadata accessor for ToolDescription(0) - 8);
  *(v9 + 2144) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 2152) = swift_task_alloc();
  *(v9 + 2160) = swift_task_alloc();
  *(v9 + 2168) = swift_task_alloc();
  v26 = *(type metadata accessor for ToolDescriptionEnvelope(0) - 8);
  *(v9 + 2176) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 2184) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR) - 8) + 64) + 15;
  *(v9 + 2192) = swift_task_alloc();
  v29 = type metadata accessor for AnyTooling();
  *(v9 + 2200) = v29;
  v30 = *(v29 - 8);
  *(v9 + 2208) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 2216) = swift_task_alloc();
  v32 = type metadata accessor for ToolType();
  *(v9 + 2224) = v32;
  v33 = *(v32 - 8);
  *(v9 + 2232) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 2240) = swift_task_alloc();
  *(v9 + 2248) = swift_task_alloc();
  *(v9 + 2256) = swift_task_alloc();
  v35 = type metadata accessor for ToolChoice();
  *(v9 + 2264) = v35;
  v36 = *(v35 - 8);
  *(v9 + 2272) = v36;
  v37 = *(v36 + 64) + 15;
  *(v9 + 2280) = swift_task_alloc();
  *(v9 + 2288) = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR) - 8) + 64) + 15;
  *(v9 + 2296) = swift_task_alloc();
  *(v9 + 2304) = swift_task_alloc();
  v39 = type metadata accessor for CompletePromptRequest(0);
  *(v9 + 2312) = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = swift_task_alloc();
  v41 = type metadata accessor for Prompt();
  *(v9 + 2336) = v41;
  v42 = *(v41 - 8);
  *(v9 + 2344) = v42;
  v43 = *(v42 + 64) + 15;
  *(v9 + 2352) = swift_task_alloc();
  *(v9 + 2360) = swift_task_alloc();
  *(v9 + 2368) = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR) - 8) + 64) + 15;
  *(v9 + 2376) = swift_task_alloc();
  *(v9 + 2384) = swift_task_alloc();
  *(v9 + 2392) = swift_task_alloc();
  v45 = type metadata accessor for PromptVariant();
  *(v9 + 2400) = v45;
  v46 = *(v45 - 8);
  *(v9 + 2408) = v46;
  v47 = *(v46 + 64) + 15;
  *(v9 + 2416) = swift_task_alloc();
  *(v9 + 2424) = swift_task_alloc();
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  v48 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v9 + 2448) = v48;
  v49 = *(*(v48 - 8) + 64) + 15;
  *(v9 + 2456) = swift_task_alloc();
  v50 = *(a3 + 176);
  *(v9 + 176) = *(a3 + 160);
  *(v9 + 192) = v50;
  *(v9 + 208) = *(a3 + 192);
  *(v9 + 224) = *(a3 + 208);
  v51 = *(a3 + 112);
  *(v9 + 112) = *(a3 + 96);
  *(v9 + 128) = v51;
  v52 = *(a3 + 144);
  *(v9 + 144) = *(a3 + 128);
  *(v9 + 160) = v52;
  v53 = *(a3 + 48);
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = v53;
  v54 = *(a3 + 80);
  *(v9 + 80) = *(a3 + 64);
  *(v9 + 96) = v54;
  v55 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v55;
  *(v9 + 2464) = *v58;
  *(v9 + 2472) = *(v58 + 8);
  *(v9 + 2488) = *(v58 + 24);
  *(v9 + 2496) = *(v58 + 32);
  *(v9 + 2512) = *(v58 + 48);

  return MEMORY[0x1EEE6DFA0](TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:), 0, 0);
}

uint64_t TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)()
{
  v355 = v0;
  v1 = *(v0 + 2448);
  outlined init with copy of PromptCompletion(*(v0 + 1968), *(v0 + 2456), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 2456);
  v4 = *(v0 + 2408);
  v5 = *(v0 + 2400);
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(v0 + 2416);
    v7 = *(v0 + 2048);
    v8 = *(v0 + 2040);
    v9 = *(v0 + 2032);
    v306 = *(v0 + 2024);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v8 + 32))(v7, v3, v9);
    (*(v4 + 32))(v6, v3 + v10, v5);
    (*(v4 + 16))(v306, v6, v5);
    v11 = 1;
    (*(v4 + 56))(v306, 0, 1, v5);
    v12 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v12;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v13 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v13;
    v14 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v14;
    v15 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v15;
    v16 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v16;
    v17 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v17;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 232) == 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      LOBYTE(v331) = 1;
      v28 = 0uLL;
      LOBYTE(v345) = 1;
      v29 = 2;
      v30 = -1;
      v31 = 768;
      v32 = 0x2000200020001;
      v33 = 1;
      v34 = MEMORY[0x1E69E7CD0];
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 1;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
    }

    else
    {
      v19 = *(v0 + 16);
      v30 = *(v0 + 24);
      *v313 = *(v0 + 25);
      *&v313[3] = *(v0 + 28);
      v20 = *(v0 + 32);
      v11 = *(v0 + 40);
      *v314 = *(v0 + 41);
      *&v314[3] = *(v0 + 44);
      v21 = *(v0 + 48);
      v33 = *(v0 + 56);
      *&v315[3] = *(v0 + 60);
      *v315 = *(v0 + 57);
      v22 = *(v0 + 64);
      v35 = *(v0 + 72);
      *v316 = *(v0 + 73);
      *&v316[3] = *(v0 + 76);
      v23 = *(v0 + 80);
      v36 = *(v0 + 88);
      *v317 = *(v0 + 89);
      *&v317[3] = *(v0 + 92);
      v34 = *(v0 + 96);
      v24 = *(v0 + 104);
      v37 = *(v0 + 112);
      *v318 = *(v0 + 113);
      *&v318[3] = *(v0 + 116);
      v25 = *(v0 + 120);
      v38 = *(v0 + 128);
      *&v319[3] = *(v0 + 132);
      *v319 = *(v0 + 129);
      v26 = *(v0 + 136);
      v18.i32[0] = *(v0 + 144);
      v32 = vmovl_u8(v18).u64[0];
      v29 = *(v0 + 148);
      v320 = *(v0 + 149);
      v321 = *(v0 + 151);
      v28 = *(v0 + 152);
      v39 = *(v0 + 168);
      v40 = *(v0 + 184);
      v41 = *(v0 + 200);
      v31 = *(v0 + 216);
      v27 = *(v0 + 224);
    }

    *&v345 = v19;
    BYTE8(v345) = v30;
    *(&v345 + 9) = *v313;
    HIDWORD(v345) = *&v313[3];
    *&v346 = v20;
    v73 = *(v0 + 2512);
    BYTE8(v346) = v11;
    *(&v346 + 9) = *v314;
    HIDWORD(v346) = *&v314[3];
    v74 = *(v0 + 2504);
    *&v347 = v21;
    v280 = *(v0 + 2496);
    BYTE8(v347) = v33;
    *(&v347 + 9) = *v315;
    HIDWORD(v347) = *&v315[3];
    v75 = *(v0 + 2488);
    *&v348 = v22;
    v271 = *(v0 + 2480);
    BYTE8(v348) = v35;
    HIDWORD(v348) = *&v316[3];
    *(&v348 + 9) = *v316;
    v76 = *(v0 + 2472);
    *&v349 = v23;
    v77 = *(v0 + 2464);
    BYTE8(v349) = v36;
    HIDWORD(v349) = *&v317[3];
    *(&v349 + 9) = *v317;
    v78 = *(v0 + 2376);
    *&v350 = v34;
    *(&v350 + 1) = v24;
    v299 = *(v0 + 2024);
    v307 = *(v0 + 2048);
    LOBYTE(v351) = v37;
    *(&v351 + 1) = *v318;
    DWORD1(v351) = *&v318[3];
    v79 = *(v0 + 2016);
    *(&v351 + 1) = v25;
    v80 = *(v0 + 2008);
    LOBYTE(v352) = v38;
    DWORD1(v352) = *&v319[3];
    *(&v352 + 1) = *v319;
    v81 = *(v0 + 2000);
    *(&v352 + 1) = v26;
    v286 = *(v0 + 1992);
    v353[4] = v29;
    v353[7] = v321;
    *&v353[5] = v320;
    v275 = *(v0 + 1984);
    *&v353[72] = v31;
    v82 = *(v0 + 1976);
    v354 = v27;
    v264 = *(v0 + 1960);
    v269 = v82;
    *v353 = vuzp1_s8(v32, v32).u32[0];
    *&v353[8] = v28;
    *&v353[24] = v39;
    *&v353[40] = v40;
    *&v353[56] = v41;
    *v78 = v81;
    *(v78 + 8) = v80;
    v83 = type metadata accessor for Constraints(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v83 - 8) + 56))(v78, 0, 1, v83);
    *&v331 = v77;
    *(&v331 + 1) = v76;
    *&v332 = v271;
    *(&v332 + 1) = v75;
    *&v333 = v280;
    *(&v333 + 1) = v74;
    *&v334 = v73;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    TokenGenerator.complete(prompt:promptTemplateInfo:parameters:tools:toolChoice:documents:constraint:metadata:)(v299, v307, &v345, v269, v275, v286, v78, &v331, v264);
    v84 = *(v0 + 2416);
    v85 = *(v0 + 2400);
    v86 = *(v0 + 2376);
    v87 = *(v0 + 2032);
    v291 = v87;
    v300 = *(v0 + 2048);
    v88 = *(v0 + 2024);
    v89 = (*(v0 + 2408) + 8);
    v90 = (*(v0 + 2040) + 8);
    outlined consume of RequestMetadata?(v331, *(&v331 + 1));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v86, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v100 = *&v353[48];
    *(v0 + 1040) = *&v353[32];
    *(v0 + 1056) = v100;
    *(v0 + 1072) = *&v353[64];
    *(v0 + 1088) = v354;
    v101 = v352;
    *(v0 + 976) = v351;
    *(v0 + 992) = v101;
    v102 = *&v353[16];
    *(v0 + 1008) = *v353;
    *(v0 + 1024) = v102;
    v103 = v348;
    *(v0 + 912) = v347;
    *(v0 + 928) = v103;
    v104 = v350;
    *(v0 + 944) = v349;
    *(v0 + 960) = v104;
    v105 = v346;
    *(v0 + 880) = v345;
    *(v0 + 896) = v105;
    outlined destroy of SamplingParameters(v0 + 880);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v88, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*v89)(v84, v85);
    (*v90)(v300, v291);
    goto LABEL_45;
  }

  (*(v4 + 32))(*(v0 + 2440), *(v0 + 2456), *(v0 + 2400));
  v42 = *(v0 + 192);
  *(v0 + 1256) = *(v0 + 176);
  *(v0 + 1272) = v42;
  *(v0 + 1288) = *(v0 + 208);
  *(v0 + 1304) = *(v0 + 224);
  v43 = *(v0 + 128);
  *(v0 + 1192) = *(v0 + 112);
  *(v0 + 1208) = v43;
  v44 = *(v0 + 160);
  *(v0 + 1224) = *(v0 + 144);
  *(v0 + 1240) = v44;
  v45 = *(v0 + 64);
  *(v0 + 1128) = *(v0 + 48);
  *(v0 + 1144) = v45;
  v46 = *(v0 + 96);
  *(v0 + 1160) = *(v0 + 80);
  *(v0 + 1176) = v46;
  v47 = *(v0 + 32);
  *(v0 + 1096) = *(v0 + 16);
  *(v0 + 1112) = v47;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 1096) == 1)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 1;
    LOBYTE(v331) = 1;
    LOBYTE(v345) = 1;
    v59 = 0uLL;
    v60 = 0x2000200020001;
    v61 = 2;
    v62 = -1;
    v63 = 768;
    v64 = MEMORY[0x1E69E7CD0];
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v68 = 1;
    v69 = 1;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
  }

  else
  {
    v49 = *(v0 + 16);
    v62 = *(v0 + 24);
    *v322 = *(v0 + 25);
    *&v322[3] = *(v0 + 28);
    v50 = *(v0 + 32);
    v58 = *(v0 + 40);
    *v323 = *(v0 + 41);
    *&v323[3] = *(v0 + 44);
    v51 = *(v0 + 48);
    v65 = *(v0 + 56);
    *&v324[3] = *(v0 + 60);
    *v324 = *(v0 + 57);
    v52 = *(v0 + 64);
    v66 = *(v0 + 72);
    *v325 = *(v0 + 73);
    *&v325[3] = *(v0 + 76);
    v53 = *(v0 + 80);
    v67 = *(v0 + 88);
    *v326 = *(v0 + 89);
    *&v326[3] = *(v0 + 92);
    v64 = *(v0 + 96);
    v54 = *(v0 + 104);
    v68 = *(v0 + 112);
    *v327 = *(v0 + 113);
    *&v327[3] = *(v0 + 116);
    v55 = *(v0 + 120);
    v69 = *(v0 + 128);
    *&v328[3] = *(v0 + 132);
    *v328 = *(v0 + 129);
    v56 = *(v0 + 136);
    v48.i32[0] = *(v0 + 144);
    v60 = vmovl_u8(v48).u64[0];
    v61 = *(v0 + 148);
    v329 = *(v0 + 149);
    v330 = *(v0 + 151);
    v59 = *(v0 + 152);
    v70 = *(v0 + 168);
    v71 = *(v0 + 184);
    v72 = *(v0 + 200);
    v63 = *(v0 + 216);
    v57 = *(v0 + 224);
  }

  v91 = *(v0 + 2512);
  v92 = *(v0 + 2504);
  v93 = *(v0 + 2488);
  v94 = *(v0 + 2472);
  v308 = *(v0 + 2440);
  v95 = *(v0 + 2392);
  v96 = *(v0 + 2368);
  v97 = *(v0 + 2008);
  v98 = *(v0 + 2000);
  *(v0 + 1312) = v49;
  *(v0 + 1320) = v62;
  *(v0 + 1324) = *&v322[3];
  *(v0 + 1321) = *v322;
  *(v0 + 1328) = v50;
  *(v0 + 1336) = v58;
  *(v0 + 1340) = *&v323[3];
  *(v0 + 1337) = *v323;
  *(v0 + 1344) = v51;
  *(v0 + 1352) = v65;
  *(v0 + 1356) = *&v324[3];
  *(v0 + 1353) = *v324;
  *(v0 + 1360) = v52;
  *(v0 + 1368) = v66;
  *(v0 + 1372) = *&v325[3];
  *(v0 + 1369) = *v325;
  *(v0 + 1376) = v53;
  *(v0 + 1384) = v67;
  *(v0 + 1388) = *&v326[3];
  *(v0 + 1385) = *v326;
  *(v0 + 1392) = v64;
  *(v0 + 1400) = v54;
  *(v0 + 1408) = v68;
  *(v0 + 1412) = *&v327[3];
  *(v0 + 1409) = *v327;
  *(v0 + 1416) = v55;
  *(v0 + 1424) = v69;
  *(v0 + 1428) = *&v328[3];
  *(v0 + 1425) = *v328;
  *(v0 + 1432) = v56;
  *(v0 + 1440) = vuzp1_s8(v60, v60).u32[0];
  *(v0 + 1444) = v61;
  *(v0 + 1447) = v330;
  *(v0 + 1445) = v329;
  *(v0 + 1448) = v59;
  *(v0 + 1464) = v70;
  *(v0 + 1480) = v71;
  *(v0 + 1496) = v72;
  *(v0 + 1512) = v63;
  *(v0 + 1520) = v57;
  *v95 = v98;
  v95[1] = v97;
  v99 = type metadata accessor for Constraints(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v99 - 8) + 56))(v95, 0, 1, v99);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v0 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

  PromptVariant.tgPrompt.getter();
  v265 = *(v0 + 2488);
  v254 = *(v0 + 2472);
  v106 = *(v0 + 2440);
  v107 = *(v0 + 2432);
  v108 = *(v0 + 2408);
  v109 = *(v0 + 2400);
  v110 = *(v0 + 2392);
  v248 = *(v0 + 2384);
  v111 = *(v0 + 2368);
  v112 = *(v0 + 2360);
  v272 = v112;
  v276 = *(v0 + 2512);
  v281 = *(v0 + 2352);
  v113 = *(v0 + 2320);
  v292 = *(v0 + 2312);
  v301 = *(v0 + 2424);
  v251 = *(v0 + 2304);
  v114 = *(v0 + 1984);
  v309 = *(v0 + 1976);
  v257 = *(*(v0 + 2344) + 16);
  v260 = *(v0 + 2336);
  v257();
  v115 = *(v108 + 16);
  v115(v107, v106, v109);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v110, v248, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v114, v251, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  outlined init with copy of SamplingParameters(v0 + 1312, v0 + 1744);
  XPCDictionary.init()();
  (v257)(v281, v272, v260);
  v116 = specialized PromptEnvelope.init(sealing:xpcData:)(v281, v113);
  v117 = (v113 + v292[5]);
  *v117 = v116;
  v117[1] = v118;
  v117[2] = v119;
  v117[3] = v120;
  v115(v301, v107, v109);
  PromptVariantEnvelope.init(sealing:xpcData:)(v301, v113, v113 + v292[6]);
  v121 = *(v0 + 1488);
  *&v353[32] = *(v0 + 1472);
  *&v353[48] = v121;
  *&v353[64] = *(v0 + 1504);
  v354 = *(v0 + 1520);
  v122 = *(v0 + 1424);
  v351 = *(v0 + 1408);
  v352 = v122;
  v123 = *(v0 + 1456);
  *v353 = *(v0 + 1440);
  *&v353[16] = v123;
  v124 = *(v0 + 1360);
  v347 = *(v0 + 1344);
  v348 = v124;
  v125 = *(v0 + 1392);
  v349 = *(v0 + 1376);
  v350 = v125;
  v126 = *(v0 + 1328);
  v345 = *(v0 + 1312);
  v346 = v126;
  SamplingParametersEnvelope.init(sealing:)(&v345, &v331);
  v127 = v113 + v292[7];
  v128 = v336;
  *(v127 + 64) = v335;
  *(v127 + 80) = v128;
  v129 = v334;
  *(v127 + 32) = v333;
  *(v127 + 48) = v129;
  v130 = v340;
  *(v127 + 128) = v339;
  *(v127 + 144) = v130;
  v131 = v338;
  *(v127 + 96) = v337;
  *(v127 + 112) = v131;
  *(v127 + 208) = v344;
  v132 = v343;
  *(v127 + 176) = v342;
  *(v127 + 192) = v132;
  *(v127 + 160) = v341;
  v133 = v332;
  *v127 = v331;
  *(v127 + 16) = v133;
  v134 = *(v309 + 16);
  v135 = MEMORY[0x1E69E7CC0];
  v310 = v134;
  if (v134)
  {
    v136 = *(v0 + 2232);
    v293 = *(v0 + 2144);
    v137 = *(v0 + 1976);
    *&v345 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134, 0);
    v138 = v345;
    v139 = *(v136 + 16);
    v136 += 16;
    v140 = v137 + ((*(v136 + 64) + 32) & ~*(v136 + 64));
    v282 = *(v136 + 56);
    v287 = v139;
    v277 = (v136 - 8);
    do
    {
      v141 = *(v0 + 2248);
      v142 = *(v0 + 2240);
      v143 = *(v0 + 2224);
      v144 = *(v0 + 2152);
      v287(v141, v140, v143);
      v287(v142, v141, v143);
      ToolDescription.init(toolType:)(v142, v144);
      (*v277)(v141, v143);
      *&v345 = v138;
      v146 = *(v138 + 16);
      v145 = *(v138 + 24);
      if (v146 >= v145 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v145 > 1, v146 + 1, 1);
        v138 = v345;
      }

      v147 = *(v0 + 2152);
      *(v138 + 16) = v146 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v147, v138 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v146, type metadata accessor for ToolDescription);
      v140 += v282;
      --v134;
    }

    while (v134);
    v135 = MEMORY[0x1E69E7CC0];
    v148 = *(v138 + 16);
    if (v148)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v138 = MEMORY[0x1E69E7CC0];
    v148 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v148)
    {
LABEL_15:
      v302 = *(v0 + 2176);
      v149 = *(v0 + 2144);
      v261 = *(v0 + 2088);
      v266 = *(v0 + 2112);
      v258 = *(v0 + 2080);
      v150 = *(v0 + 2064);
      *&v345 = v135;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v148, 0);
      v151 = v345;
      v152 = v138 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
      v294 = *(v149 + 72);
      v252 = (v150 + 8);
      v255 = (v150 + 16);
      do
      {
        v153 = *(v0 + 2168);
        v154 = *(v0 + 2160);
        v155 = *(v0 + 2136);
        v156 = *(v0 + 2128);
        v157 = *(v0 + 2120);
        outlined init with copy of PromptCompletion(v152, v153, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v153, v154, type metadata accessor for ToolDescription);
        outlined init with copy of PromptCompletion(v154, v155, type metadata accessor for ToolType);
        outlined init with copy of PromptCompletion(v155, v156, type metadata accessor for ToolType);
        v158 = swift_getEnumCaseMultiPayload();
        v159 = *(v0 + 2136);
        if (v158 <= 1)
        {
          v162 = *(v0 + 2128);
          v163 = *(v0 + 2112);
          v164 = *(v0 + 2104);
          if (v158)
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v159, type metadata accessor for ToolType);
            v165 = type metadata accessor for FileGenerationParameters();
          }

          else
          {
            outlined destroy of TokenGeneratorCompletionResponseStringStream(v159, type metadata accessor for ToolType);
            v165 = type metadata accessor for ImageGenerationParameters();
          }

          (*(*(v165 - 8) + 32))(v163, v162, v165);
        }

        else if (v158 == 2)
        {
          v166 = *(v0 + 2112);
          v278 = *(v0 + 2136);
          v167 = *(v0 + 2096);
          v283 = v167;
          v168 = *(v0 + 2088);
          v169 = *(v0 + 2072);
          v170 = *(v0 + 2056);
          outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2128), v167, type metadata accessor for FunctionDescription);
          outlined init with copy of PromptCompletion(v167, v168, type metadata accessor for FunctionDescription);
          v171 = v261[1];
          *v166 = *v168;
          v266[1] = v171;
          v172 = v261[3];
          v266[2] = v261[2];
          v266[3] = v172;
          (*v255)(v169, &v168[*(v258 + 24)], v170);
          LODWORD(v166) = *(type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0) + 24);

          Schema.type.getter();
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v278, type metadata accessor for ToolType);
          (*v252)(v169, v170);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v168, type metadata accessor for FunctionDescription);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v283, type metadata accessor for FunctionDescription);
        }

        else
        {
          v160 = *(v0 + 2112);
          v161 = *(v0 + 2104);
          outlined destroy of TokenGeneratorCompletionResponseStringStream(v159, type metadata accessor for ToolType);
        }

        swift_storeEnumTagMultiPayload();
        v173 = *(v0 + 2168);
        v174 = *(v0 + 2160);
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2112), *(v0 + 2184), type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v174, type metadata accessor for ToolDescription);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v173, type metadata accessor for ToolDescription);
        *&v345 = v151;
        v176 = *(v151 + 16);
        v175 = *(v151 + 24);
        if (v176 >= v175 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v175 > 1, v176 + 1, 1);
          v151 = v345;
        }

        v177 = *(v0 + 2184);
        *(v151 + 16) = v176 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v177, v151 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v176, type metadata accessor for ToolDescriptionEnvelope);
        v152 += v294;
        --v148;
      }

      while (v148);

      goto LABEL_30;
    }
  }

  v151 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v178 = *(v0 + 2304);
  v179 = *(v0 + 2296);
  v180 = *(v0 + 2272);
  v181 = *(v0 + 2264);
  *(*(v0 + 2320) + *(*(v0 + 2312) + 36)) = v151;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v178, v179, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v182 = (*(v180 + 48))(v179, 1, v181);
  v183 = *(v0 + 2432);
  v184 = *(v0 + 2408);
  v185 = *(v0 + 2400);
  v186 = *(v0 + 2360);
  v187 = *(v0 + 2344);
  v188 = *(v0 + 2336);
  v189 = *(v0 + 2304);
  if (v182 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2304), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v267 = *(v184 + 8);
    v267(v183, v185);
    v262 = *(v187 + 8);
    v262(v186, v188);
    v190 = xmmword_1ABA26F10;
  }

  else
  {
    v295 = *(v0 + 2360);
    v303 = *(v0 + 2336);
    v191 = *(v0 + 2288);
    v192 = *(v0 + 2280);
    v193 = *(v0 + 2272);
    v194 = *(v0 + 2264);
    (*(v193 + 32))(v191, *(v0 + 2296), v194);
    (*(v193 + 16))(v192, v191, v194);
    ToolChoiceEnvelope.init(sealing:)(v192, &v345);
    (*(v193 + 8))(v191, v194);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v189, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v267 = *(v184 + 8);
    v267(v183, v185);
    v262 = *(v187 + 8);
    v262(v295, v303);
    v190 = v345;
  }

  v195 = *(v0 + 2512);
  v196 = *(v0 + 2488);
  v197 = *(v0 + 2480);
  v198 = *(v0 + 2464);
  v199 = *(v0 + 2384);
  v200 = *(v0 + 2328);
  v201 = *(v0 + 2320);
  v202 = *(v0 + 2312);
  v203 = *(v0 + 1992);
  v204 = *(v0 + 2496);
  *(v201 + v202[10]) = v190;
  v205 = v201 + v202[12];
  *v205 = v198;
  *(v205 + 16) = v197;
  *(v205 + 24) = v196;
  *(v205 + 32) = v204;
  *(v205 + 48) = v195;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v199, v201 + v202[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v201 + v202[11]) = v203;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v201, v200, type metadata accessor for CompletePromptRequest);
  if (v310)
  {
    v206 = *(v0 + 2232);
    v207 = *(v0 + 1992);
    v296 = *(v206 + 16);
    v208 = *(v0 + 1976) + ((*(v206 + 80) + 32) & ~*(v206 + 80));
    v284 = (v206 + 8);
    v288 = *(v206 + 72);
    v273 = *(v0 + 2208);

    v209 = MEMORY[0x1E69E7CC0];
    do
    {
      v210 = *(v0 + 2256);
      v211 = *(v0 + 2248);
      v212 = *(v0 + 2224);
      v213 = *(v0 + 2200);
      v214 = *(v0 + 2192);
      v296(v210, v208, v212);
      v296(v211, v210, v212);
      AnyTooling.init(_:)(v211, v214);
      (*v284)(v210, v212);
      if ((*(v273 + 48))(v214, 1, v213) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 2192), &_s15TokenGeneration10AnyToolingVSgMd, &_s15TokenGeneration10AnyToolingVSgMR);
      }

      else
      {
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 2192), *(v0 + 2216), type metadata accessor for AnyTooling);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v209[2] + 1, 1, v209);
        }

        v216 = v209[2];
        v215 = v209[3];
        if (v216 >= v215 >> 1)
        {
          v209 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v215 > 1, v216 + 1, 1, v209);
        }

        v217 = *(v0 + 2216);
        v209[2] = v216 + 1;
        outlined init with take of TokenGeneratorResponsePromptCompletionStream(v217, v209 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v216, type metadata accessor for AnyTooling);
      }

      v208 += v288;
      --v310;
    }

    while (v310);
  }

  else
  {
    v218 = *(v0 + 1992);

    v209 = MEMORY[0x1E69E7CC0];
  }

  v219 = *(v0 + 2512);
  v220 = *(v0 + 2488);
  v221 = *(v0 + 2472);
  v304 = *(v0 + 2400);
  v311 = *(v0 + 2440);
  v289 = *(v0 + 2392);
  v297 = *(v0 + 2408);
  v222 = *(v0 + 2368);
  v223 = *(v0 + 2344);
  v224 = *(v0 + 2336);
  v225 = *(v0 + 2328);
  v226 = *(v0 + 2016);
  TokenGenerator.handleCompletePromptRequest(request:tools:)(v225, v209, *(v0 + 1960));

  outlined destroy of SamplingParameters(v0 + 1312);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v225, type metadata accessor for CompletePromptRequest);
  v262(v222, v224);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v289, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v267(v311, v304);
LABEL_45:
  v227 = *(v0 + 2456);
  v228 = *(v0 + 2440);
  v229 = *(v0 + 2432);
  v230 = *(v0 + 2424);
  v231 = *(v0 + 2416);
  v232 = *(v0 + 2392);
  v233 = *(v0 + 2384);
  v234 = *(v0 + 2376);
  v235 = *(v0 + 2368);
  v236 = *(v0 + 2360);
  v239 = *(v0 + 2352);
  v240 = *(v0 + 2328);
  v241 = *(v0 + 2320);
  v242 = *(v0 + 2304);
  v243 = *(v0 + 2296);
  v244 = *(v0 + 2288);
  v245 = *(v0 + 2280);
  v246 = *(v0 + 2256);
  v247 = *(v0 + 2248);
  v249 = *(v0 + 2240);
  v250 = *(v0 + 2216);
  v253 = *(v0 + 2192);
  v256 = *(v0 + 2184);
  v259 = *(v0 + 2168);
  v263 = *(v0 + 2160);
  v268 = *(v0 + 2152);
  v270 = *(v0 + 2136);
  v274 = *(v0 + 2128);
  v279 = *(v0 + 2112);
  v285 = *(v0 + 2096);
  v290 = *(v0 + 2088);
  v298 = *(v0 + 2072);
  v305 = *(v0 + 2048);
  v312 = *(v0 + 2024);

  v237 = *(v0 + 8);

  return v237();
}