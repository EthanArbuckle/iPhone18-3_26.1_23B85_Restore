uint64_t closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v23;
  *(v8 + 152) = v22;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = *(*(type metadata accessor for StringResponseSanitizerRunnerConfiguration() - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v13 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  *(v8 + 208) = v13;
  v14 = *(v13 - 8);
  *(v8 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v16 = type metadata accessor for StringResponseSanitizerWithRunner();
  *(v8 + 232) = v16;
  v17 = *(v16 - 8);
  *(v8 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 272), v5, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 312);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 264), &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v9 = *(MEMORY[0x1E69A0918] + 4);
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = v8 & 1;
    v17 = v0 + 16;
  }

  else
  {
    v18 = *(v0 + 256);
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    v21 = *(v0 + 232);
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v25 = *(v0 + 128);
    v24 = *(v0 + 136);
    (*(v20 + 32))(v18, *(v0 + 264), v21);
    (*(v20 + 16))(v19, v18, v21);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v23, MEMORY[0x1E69A1558]);
    v26 = *(v0 + 248);
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    LOBYTE(v22) = *(v0 + 312);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    *(v0 + 80) = v29;
    *(v0 + 88) = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type StringResponseSanitizerWithConfiguration and conformance StringResponseSanitizerWithConfiguration, MEMORY[0x1E69A1550]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v28 + 16))(boxed_opaque_existential_1, v27, v29);
    v32 = *(MEMORY[0x1E69A0918] + 4);
    v33 = swift_task_alloc();
    *(v0 + 296) = v33;
    *v33 = v0;
    v33[1] = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = v22 & 1;
    v17 = v0 + 56;
  }

  return MEMORY[0x1EEE0A3D0](v15, v13, v14, v16, v17, v12, v11);
}

uint64_t closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v33;
  *(v8 + 104) = v32;
  *(v8 + 88) = a8;
  *(v8 + 96) = v31;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v10 = *(v31 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v12 = *(*(type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = *(*(type metadata accessor for RunnableConfigurationStorage() - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v14 = *(*(type metadata accessor for OverridableConfigurationStorage() - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v15 = type metadata accessor for CompletionPrompt();
  *(v8 + 176) = v15;
  v16 = *(v15 - 8);
  *(v8 + 184) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v8 + 200) = v18;
  v19 = *(v18 - 8);
  *(v8 + 208) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v21 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  *(v8 + 224) = v21;
  v22 = *(v21 - 8);
  *(v8 + 232) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v25 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  *(v8 + 264) = v25;
  v26 = *(v25 - 8);
  *(v8 + 272) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[32];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[5];
  v5 = v0[6];
  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v9 = 1;
  }

  else
  {
    v10 = v0[31];
    v12 = v0[26];
    v11 = v0[27];
    v41 = v0[25];
    v13 = v0[7];
    v14 = v0[5];
    (*(v7 + 32))(v0[36], v8, v6);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v11, MEMORY[0x1E69A1568]);
    (*(v12 + 8))(v11, v41);
    v15 = v0[38];
    v16 = v0[36];
    v17 = v0[33];
    v18 = v0[34];
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[28];
    v22 = v0[29];
    (*(v18 + 16))(v0[35], v16, v17);
    (*(v22 + 16))(v20, v19, v21);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v22 + 8))(v19, v21);
    (*(v18 + 8))(v16, v17);
    v9 = 0;
  }

  v23 = v0[38];
  v24 = v0[24];
  v26 = v0[20];
  v25 = v0[21];
  v27 = v0[17];
  v40 = v0[37];
  v42 = v0[18];
  v28 = v0[15];
  v29 = v0[12];
  v30 = v0[6];
  v31 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v31 - 8) + 56))(v23, v9, 1, v31);
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  CompletionPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, v40, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v32 = swift_task_alloc();
  v0[39] = v32;
  *(v32 + 16) = v24;
  (*(v27 + 16))(v42, v30, v29);
  v33 = swift_task_alloc();
  v0[40] = v33;
  *v33 = v0;
  v33[1] = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v34 = v0[37];
  v36 = v0[18];
  v35 = v0[19];
  v37 = v0[15];
  v38 = v0[12];

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v35, v34, &async function pointer to partial apply for closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), v32, v36, 0, v38, v37);
}

{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  GenerativeFunctionInstrumenter.inferenceBegin()();
  v3 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  *(v0 + 16) = type metadata accessor for TokenGenerator();
  *(v0 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  *v5 = v0;
  v5[1] = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v6 = *(v0 + 152);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 32);
  v18 = *(v0 + 120);
  v16 = *(v0 + 88);
  v17 = *(v0 + 104);

  return closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v13, v9, v6, v11, v10, v12, v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    *(v2 + 352) = *(v2 + 16);
    v4 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v4 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1120) = v20;
  *(v8 + 1104) = v19;
  *(v8 + 1096) = v18;
  *(v8 + 1088) = v17;
  *(v8 + 1080) = a8;
  *(v8 + 1072) = a7;
  *(v8 + 1064) = a6;
  *(v8 + 1056) = a5;
  *(v8 + 1048) = a4;
  *(v8 + 1040) = a3;
  *(v8 + 1032) = a2;
  *(v8 + 1024) = a1;
  v9 = *(v18 - 8);
  *(v8 + 1128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 1136) = swift_task_alloc();
  v11 = type metadata accessor for GenerativeFunctionInstrumenter();
  *(v8 + 1144) = v11;
  v12 = *(v11 - 8);
  *(v8 + 1152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 1160) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR) - 8) + 64) + 15;
  *(v8 + 1168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = *(v0 + 1048);
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1096), *(v0 + 1120), v0 + 16);
  v2 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v2;
  *(v0 + 424) = *(v0 + 208);
  v3 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v3;
  v4 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v4;
  v5 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v5;
  v6 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v6;
  v7 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  v8 = *(v0 + 1168);
  v9 = *(v0 + 1160);
  v10 = *(v0 + 1152);
  v30 = *(v0 + 1144);
  v31 = (v0 + 936);
  v11 = *(v0 + 1136);
  v12 = *(v0 + 1128);
  v13 = *(v0 + 1120);
  v14 = *(v0 + 1096);
  v29 = *(v0 + 1064);
  v15 = *(v0 + 1048);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v7;
  v16 = GenerativeConfigurationProtocol.tools.getter();
  *(v0 + 1176) = v16;
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v17 = v16;
  }

  v32 = v17;
  GenerativeConfigurationProtocol.toolChoice.getter();
  v18 = GenerativeConfigurationProtocol.documents.getter();
  *(v0 + 1184) = v18;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  (*(v10 + 16))(v9, v29, v30);
  (*(v12 + 16))(v11, v15, v14);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v9, v11, v14, (v0 + 880));
  v20 = *(v0 + 896);
  v21 = *(v0 + 904);
  v22 = *(v0 + 928);
  *v31 = *(v0 + 880);
  *(v0 + 952) = v20;
  *(v0 + 960) = v21;
  *(v0 + 968) = *(v0 + 912);
  *(v0 + 984) = v22;
  v23 = swift_task_alloc();
  *(v0 + 1192) = v23;
  *v23 = v0;
  v23[1] = closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v24 = *(v0 + 1168);
  v25 = *(v0 + 1056);
  v26 = *(v0 + 1040);
  v27 = *(v0 + 1032);
  v34 = *(v0 + 1080);
  v35 = *(v0 + 1112);

  return TokenGenerator.complete<A>(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:generating:metadata:)(v0 + 992, v26, v0 + 232, v32, v24, v19, v25, v31);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 232);
  v5 = *(*v1 + 1192);
  v6 = *v1;
  v3[150] = v0;

  v7 = v2[148];
  v8 = v2[147];
  v9 = v2[146];

  v10 = v3[118];
  if (v0)
  {
    v11 = v3[120];
    v12 = v3[122];
    v13 = v3[123];

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v14 = *(v3 + 31);
    *(v3 + 28) = *v4;
    *(v3 + 29) = v14;
    v15 = *(v3 + 39);
    v17 = *(v3 + 33);
    v16 = *(v3 + 35);
    *(v3 + 32) = *(v3 + 37);
    *(v3 + 33) = v15;
    *(v3 + 30) = v17;
    *(v3 + 31) = v16;
    v18 = *(v3 + 47);
    v20 = *(v3 + 41);
    v19 = *(v3 + 43);
    *(v3 + 36) = *(v3 + 45);
    *(v3 + 37) = v18;
    *(v3 + 34) = v20;
    *(v3 + 35) = v19;
    v22 = *(v3 + 51);
    v21 = *(v3 + 53);
    v23 = *(v3 + 49);
    *(v3 + 328) = *(v3 + 220);
    *(v3 + 39) = v22;
    *(v3 + 40) = v21;
    *(v3 + 38) = v23;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 56), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v25 = v3[120];
    v26 = v3[122];
    v27 = v3[123];

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v28 = *(v3 + 31);
    *(v3 + 83) = *v4;
    *(v3 + 85) = v28;
    v29 = *(v3 + 39);
    v31 = *(v3 + 33);
    v30 = *(v3 + 35);
    *(v3 + 91) = *(v3 + 37);
    *(v3 + 93) = v29;
    *(v3 + 87) = v31;
    *(v3 + 89) = v30;
    v32 = *(v3 + 47);
    v34 = *(v3 + 41);
    v33 = *(v3 + 43);
    *(v3 + 99) = *(v3 + 45);
    *(v3 + 101) = v32;
    *(v3 + 95) = v34;
    *(v3 + 97) = v33;
    v36 = *(v3 + 51);
    v35 = *(v3 + 53);
    v37 = *(v3 + 49);
    *(v3 + 436) = *(v3 + 220);
    *(v3 + 105) = v36;
    *(v3 + 107) = v35;
    *(v3 + 103) = v37;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 83), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v24, 0, 0);
}

{
  v1 = *(v0 + 1168);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1136);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 992);
  v5 = *(v0 + 1016);
  v14 = *(v0 + 1080);
  v13 = *(v0 + 1112);
  type metadata accessor for TokenStream.AsyncIterator();
  v17 = *(v0 + 1000);
  v12 = *(v0 + 1096);
  v6 = swift_allocBox();
  v8 = v7;
  type metadata accessor for TokenStream();
  TokenStream.makeAsyncIterator()(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v14;
  *(v9 + 40) = v12;
  *(v9 + 56) = v13;
  *(v9 + 72) = v6;
  AsyncThrowingStream.init<>(unfolding:)();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for TokenStream.AsyncIterator();
  v1[8] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  return TokenStream.AsyncIterator.next()(v5);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    swift_endAccess();
    v3 = closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[6];
  v2 = *v1;
  v3 = *(v1 + 8);
  v10 = (v0[3] + *v0[3]);
  v4 = *(v0[3] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v2, v3);
}

uint64_t protocol witness for CompletionLanguageModelProvidingGenerativeStreamable._completeMultiElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._completeMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for CompletionLanguageModelProvidingGenerativeStreamable._completeSingleElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._completeSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t TokenGenerator._respond<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v5[4] = a1;
  v5[5] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v11 = type metadata accessor for ChatMessageRole();
  v5[7] = v11;
  v12 = *(v11 - 8);
  v5[8] = v12;
  v13 = *(v12 + 64) + 15;
  v5[9] = swift_task_alloc();
  v14 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  v5[10] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v5[11] = v16;
  v17 = swift_task_alloc();
  v5[12] = v17;
  *v17 = v5;
  v17[1] = TokenGenerator._respond<A>(configuration:);

  return TokenGenerator._streamResponse<A>(configuration:)(v16, a2, a3, a4);
}

uint64_t TokenGenerator._respond<A>(configuration:)()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = TokenGenerator._respond<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._respond<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  (*(v0[8] + 104))(v0[9], *MEMORY[0x1E69C6400], v0[7]);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, v2 + v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = TokenGenerator._respond<A>(configuration:);
  v8 = v0[11];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v8);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[4];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[6], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v0[2] = v1;
  v0[3] = v2;
  ChatMessageResponse.init(role:content:)();
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v4, type metadata accessor for TokenGeneratorChatResponseStringStream);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t TokenGenerator._respond<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 112);
  v10 = *v4;
  *(*v4 + 120) = v3;

  if (v3)
  {
    v11 = TokenGenerator._respond<A>(configuration:);
  }

  else
  {
    v8[16] = a3;
    v8[17] = a2;
    v8[18] = a1;
    v11 = TokenGenerator._respond<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5[142] = v4;
  v5[141] = a4;
  v5[140] = a3;
  v5[139] = a2;
  v5[138] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v5[143] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[144] = swift_task_alloc();
  v9 = *(a3 - 8);
  v5[145] = v9;
  v5[146] = *(v9 + 64);
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
  v5[149] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[150] = swift_task_alloc();
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v12 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](TokenGenerator._streamResponse<A>(configuration:), 0, 0);
}

uint64_t TokenGenerator._streamResponse<A>(configuration:)()
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1112);
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1120), *(v0 + 1128), v0 + 16);
  v3 = *(v0 + 176);
  v2 = *(v0 + 192);
  v4 = *(v0 + 160);
  *(v0 + 616) = v3;
  *(v0 + 632) = v2;
  v5 = *(v0 + 192);
  *(v0 + 648) = *(v0 + 208);
  v7 = *(v0 + 112);
  v6 = *(v0 + 128);
  v8 = *(v0 + 96);
  *(v0 + 552) = v7;
  *(v0 + 568) = v6;
  v9 = *(v0 + 128);
  v11 = *(v0 + 144);
  v10 = *(v0 + 160);
  *(v0 + 584) = v11;
  *(v0 + 600) = v10;
  v13 = *(v0 + 48);
  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  *(v0 + 488) = v13;
  *(v0 + 504) = v12;
  v15 = *(v0 + 64);
  v17 = *(v0 + 80);
  v16 = *(v0 + 96);
  *(v0 + 520) = v17;
  *(v0 + 536) = v16;
  v18 = *(v0 + 32);
  v19 = *(v0 + 16);
  *(v0 + 456) = v19;
  *(v0 + 472) = v18;
  *(v0 + 400) = v3;
  *(v0 + 416) = v5;
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 336) = v7;
  *(v0 + 352) = v9;
  *(v0 + 368) = v11;
  *(v0 + 384) = v4;
  *(v0 + 272) = v13;
  *(v0 + 288) = v15;
  *(v0 + 304) = v17;
  *(v0 + 320) = v8;
  *(v0 + 664) = *(v0 + 224);
  *(v0 + 448) = *(v0 + 224);
  *(v0 + 240) = v19;
  *(v0 + 256) = v14;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 240) == 1)
  {
    v20 = 1;
    v21 = 0;
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 456, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
  }

  v22 = *(v0 + 1184);
  v23 = *(v0 + 1176);
  v24 = *(v0 + 1168);
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1136);
  v27 = *(v25 + 16);
  v46 = *(v0 + 1120);
  v28 = *(v0 + 1120);
  v27(v22, *(v0 + 1112), v28);
  v27(v23, v22, v28);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v0 + 1240) = v30;
  *(v30 + 16) = v46;
  (*(v25 + 32))(v30 + v29, v22, v28);
  *(v30 + ((v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;

  if (v20)
  {
    *(v0 + 1272) = mach_absolute_time();
    v31 = swift_task_alloc();
    *(v0 + 1280) = v31;
    *v31 = v0;
    v31[1] = TokenGenerator._streamResponse<A>(configuration:);
    v32 = *(v0 + 1176);
    v33 = *(v0 + 1152);
    v34 = *(v0 + 1136);
    v35 = *(v0 + 1128);
    v36 = *(v0 + 1120);
    v37 = *MEMORY[0x1E69E9840];

    return closure #1 in TokenGenerator._streamResponse<A>(configuration:)(v33, v32, v34, v36, v35);
  }

  else
  {
    (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1120));
    v39 = swift_task_alloc();
    *(v0 + 1248) = v39;
    v39[2] = &async function pointer to partial apply for closure #1 in TokenGenerator._streamResponse<A>(configuration:);
    v39[3] = v30;
    v39[4] = v21;
    v40 = *(MEMORY[0x1E69E88A0] + 4);
    v41 = swift_task_alloc();
    *(v0 + 1256) = v41;
    *v41 = v0;
    v41[1] = TokenGenerator._streamResponse<A>(configuration:);
    v42 = *(v0 + 1224);
    v43 = *(v0 + 1192);
    v44 = *(v0 + 1144);
    v45 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DD58](v42, v44, v43, 0, 0, &closure #1 in withTimeout<A>(timeout:_:)specialized partial apply, v39, v44);
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 1256);
  v9 = *v1;
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v4 = TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v5 = *(v2 + 1248);

    v4 = TokenGenerator._streamResponse<A>(configuration:);
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 1280);
  v4 = *v1;
  *(*v1 + 1288) = v0;

  (*(v2[145] + 8))(v2[147], v2[140]);
  if (v0)
  {
    v5 = TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v5 = TokenGenerator._streamResponse<A>(configuration:);
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v85 = v0;
  v84 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1192);

  v5 = *(v3 + *(v4 + 48));
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v3, v2, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v6 = *(v0 + 1264);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1112);
  *(*(v0 + 1232) + *(*(v0 + 1192) + 48)) = v5;
  GenerativeConfigurationProtocol.samplingParameters.getter(v8, v7, &v70);
  if (v6)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v10 = *(v0 + 1232);
    v11 = *(v0 + 1224);
    v12 = *(v0 + 1216);
    v13 = *(v0 + 1208);
    v14 = *(v0 + 1200);
    v15 = *(v0 + 1184);
    v16 = *(v0 + 1176);
    v17 = *(v0 + 1152);

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v21 = v80;
    v20 = v81;
    v22 = v79;
    *(v0 + 1048) = v80;
    *(v0 + 1064) = v20;
    v23 = v81;
    *(v0 + 1080) = v82;
    v24 = v77;
    v25 = v76;
    v26 = v77;
    *(v0 + 984) = v76;
    *(v0 + 1000) = v24;
    v27 = v79;
    v28 = v78;
    *(v0 + 1016) = v78;
    *(v0 + 1032) = v27;
    v29 = v73;
    v30 = v72;
    v31 = v73;
    *(v0 + 920) = v72;
    *(v0 + 936) = v29;
    v32 = v75;
    v33 = v74;
    v34 = v75;
    *(v0 + 952) = v74;
    *(v0 + 968) = v32;
    v35 = v71;
    v36 = v70;
    v37 = v71;
    *(v0 + 888) = v70;
    *(v0 + 904) = v35;
    *(v0 + 832) = v21;
    *(v0 + 848) = v23;
    *(v0 + 864) = v82;
    *(v0 + 768) = v25;
    *(v0 + 784) = v26;
    *(v0 + 800) = v28;
    *(v0 + 816) = v22;
    *(v0 + 704) = v30;
    *(v0 + 720) = v31;
    *(v0 + 736) = v33;
    *(v0 + 752) = v34;
    *(v0 + 1096) = v83;
    *(v0 + 880) = v83;
    *(v0 + 672) = v36;
    *(v0 + 688) = v37;
    v38 = 0.0;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 672) == 1 || (outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 888, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR), (*(v0 + 784) & 1) != 0))
    {
      v65 = 1;
    }

    else
    {
      v65 = 0;
      v38 = *(v0 + 776) - v5;
    }

    v39 = *(v0 + 1232);
    v40 = *(v0 + 1216);
    v41 = *(v0 + 1208);
    v42 = *(v0 + 1200);
    v66 = *(v0 + 1224);
    v67 = *(v0 + 1184);
    v68 = *(v0 + 1176);
    v69 = *(v0 + 1152);
    v43 = *(v0 + 1144);
    v44 = *(v0 + 1104);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, v40, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v63 = *(v43 + 64);
    v64 = *(v43 + 48);
    v59 = v40[1];
    v60 = *v40;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, v41, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v45 = *(v41 + 8);
    v46 = *(v41 + 24);

    v47 = *(v43 + 48);
    v62 = *(v43 + 64);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v39, v42, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v48 = *(v42 + 8);
    v49 = *(v42 + 24);

    v61 = *(v43 + 48);
    v58 = *(v43 + 64);
    *v44 = v60;
    *(v44 + 1) = v59;
    v50 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v41 + v47, &v44[v50[5]], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v51 = v50[6];
    v52 = type metadata accessor for GenerativeFunctionInstrumenter();
    v53 = *(v52 - 8);
    (*(v53 + 32))(&v44[v51], v42 + v58, v52);
    v54 = &v44[v50[7]];
    *v54 = v38;
    *(v54 + 8) = v65;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42 + v61, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v55 = *(v53 + 8);
    v55(v41 + v62, v52);
    v55(v40 + v63, v52);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v40 + v64, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);

    v18 = *(v0 + 8);
    v56 = *MEMORY[0x1E69E9840];
  }

  return v18();
}

{
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[156];
  v2 = v0[155];

  v3 = v0[158];
  v4 = v0[154];
  v5 = v0[153];
  v6 = v0[152];
  v7 = v0[151];
  v8 = v0[150];
  v9 = v0[148];
  v10 = v0[147];
  v11 = v0[144];

  v12 = v0[1];
  v13 = *MEMORY[0x1E69E9840];

  return v12();
}

{
  v88 = v0;
  v87 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1272);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1152), *(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v2 = mach_absolute_time();
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  *(v0 + 228) = 0;
  v4 = *(v0 + 1240);
  v5 = *(v0 + 1152);
  *(v0 + 232) = 0;
  mach_timebase_info((v0 + 228));

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  LODWORD(v6) = *(v0 + 228);
  LODWORD(v7) = *(v0 + 232);
  v8 = v3 * v6 / (v7 * 1000000000.0);
  v9 = *(v0 + 1288);
  v10 = *(v0 + 1128);
  v11 = *(v0 + 1120);
  v12 = *(v0 + 1112);
  *(*(v0 + 1232) + *(*(v0 + 1192) + 48)) = v8;
  GenerativeConfigurationProtocol.samplingParameters.getter(v11, v10, &v73);
  if (v9)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v13 = *(v0 + 1232);
    v14 = *(v0 + 1224);
    v15 = *(v0 + 1216);
    v16 = *(v0 + 1208);
    v17 = *(v0 + 1200);
    v18 = *(v0 + 1184);
    v19 = *(v0 + 1176);
    v20 = *(v0 + 1152);

    v21 = *(v0 + 8);
    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v24 = v83;
    v23 = v84;
    v25 = v82;
    *(v0 + 1048) = v83;
    *(v0 + 1064) = v23;
    v26 = v84;
    *(v0 + 1080) = v85;
    v27 = v80;
    v28 = v79;
    v29 = v80;
    *(v0 + 984) = v79;
    *(v0 + 1000) = v27;
    v30 = v82;
    v31 = v81;
    *(v0 + 1016) = v81;
    *(v0 + 1032) = v30;
    v32 = v76;
    v33 = v75;
    v34 = v76;
    *(v0 + 920) = v75;
    *(v0 + 936) = v32;
    v35 = v78;
    v36 = v77;
    v37 = v78;
    *(v0 + 952) = v77;
    *(v0 + 968) = v35;
    v38 = v74;
    v39 = v73;
    v40 = v74;
    *(v0 + 888) = v73;
    *(v0 + 904) = v38;
    *(v0 + 832) = v24;
    *(v0 + 848) = v26;
    *(v0 + 864) = v85;
    *(v0 + 768) = v28;
    *(v0 + 784) = v29;
    *(v0 + 800) = v31;
    *(v0 + 816) = v25;
    *(v0 + 704) = v33;
    *(v0 + 720) = v34;
    *(v0 + 736) = v36;
    *(v0 + 752) = v37;
    *(v0 + 1096) = v86;
    *(v0 + 880) = v86;
    *(v0 + 672) = v39;
    *(v0 + 688) = v40;
    v41 = 0.0;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 672) == 1 || (outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 888, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR), (*(v0 + 784) & 1) != 0))
    {
      v68 = 1;
    }

    else
    {
      v68 = 0;
      v41 = *(v0 + 776) - v8;
    }

    v42 = *(v0 + 1232);
    v43 = *(v0 + 1216);
    v44 = *(v0 + 1208);
    v45 = *(v0 + 1200);
    v69 = *(v0 + 1224);
    v70 = *(v0 + 1184);
    v71 = *(v0 + 1176);
    v72 = *(v0 + 1152);
    v46 = *(v0 + 1144);
    v47 = *(v0 + 1104);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, v43, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v66 = *(v46 + 64);
    v67 = *(v46 + 48);
    v62 = v43[1];
    v63 = *v43;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, v44, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v48 = *(v44 + 8);
    v49 = *(v44 + 24);

    v50 = *(v46 + 48);
    v65 = *(v46 + 64);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v42, v45, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v51 = *(v45 + 8);
    v52 = *(v45 + 24);

    v64 = *(v46 + 48);
    v61 = *(v46 + 64);
    *v47 = v63;
    *(v47 + 1) = v62;
    v53 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v44 + v50, &v47[v53[5]], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v54 = v53[6];
    v55 = type metadata accessor for GenerativeFunctionInstrumenter();
    v56 = *(v55 - 8);
    (*(v56 + 32))(&v47[v54], v45 + v61, v55);
    v57 = &v47[v53[7]];
    *v57 = v41;
    *(v57 + 8) = v68;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v45 + v64, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v58 = *(v56 + 8);
    v58(v44 + v65, v55);
    v58(v43 + v66, v55);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v43 + v67, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);

    v21 = *(v0 + 8);
    v59 = *MEMORY[0x1E69E9840];
  }

  return v21();
}

{
  v14 = *MEMORY[0x1E69E9840];
  v1 = v0[155];

  v2 = v0[161];
  v3 = v0[154];
  v4 = v0[153];
  v5 = v0[152];
  v6 = v0[151];
  v7 = v0[150];
  v8 = v0[148];
  v9 = v0[147];
  v10 = v0[144];

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t TokenGeneratorChatResponseStringStream.role.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69C6400];
  v3 = type metadata accessor for ChatMessageRole();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for ChatLanguageModelProviding._respond<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._respond<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGeneratorChatResponse.role.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ChatMessageRole();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenGenerator._oneShotResponse<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v11 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  v4[6] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v4[7] = v13;
  v14 = swift_task_alloc();
  v4[8] = v14;
  *v14 = v4;
  v14[1] = TokenGenerator._oneShotResponse<A>(configuration:);

  return TokenGenerator._streamResponse<A>(configuration:)(v13, a2, a3, a4);
}

uint64_t TokenGenerator._oneShotResponse<A>(configuration:)()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *v1;
  v6 = v1[3];
  v17 = *(v1 + 1);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + v2[5], v3 + v4[5], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v7 = v4[6];
  v8 = v2[6];
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v9 - 8) + 16))(v3 + v7, v1 + v8, v9);
  v10 = (v1 + v2[7]);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v3 = v5;
  *(v3 + 8) = v17;
  *(v3 + 24) = v6;
  v12 = v3 + v4[7];
  *v12 = v11;
  *(v12 + 8) = v10;

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = TokenGenerator._oneShotResponse<A>(configuration:);
  v15 = v0[4];
  v14 = v0[5];

  return TokenGeneratorResponsePromptCompletionStream.collect()(v14);
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  if (v0)
  {
    v4 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  else
  {
    v4 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[7], type metadata accessor for TokenGeneratorChatResponseStringStream);
  v4 = *MEMORY[0x1E69C6400];
  v5 = type metadata accessor for ChatMessageRole();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for TokenGeneratorChatResponse(0);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1, v3 + *(v6 + 20), type metadata accessor for PromptCompletion);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

{
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[7], type metadata accessor for TokenGeneratorChatResponseStringStream);
  v1 = v0[11];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t protocol witness for ChatLanguageModelProvidingOneShot._oneShotResponse<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._oneShotResponse<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGeneratorCompletionResponseStringStream.rawStream.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t TokenGeneratorCompletionResponseStringStream._generativeFunctionInstrumenter.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TokenGeneratorCompletionResponseStringStream.timeout.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream(uint64_t a1)
{
  v2[4] = v1;
  v2[5] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream, 0, 0);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 24);
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v0[2] = type metadata accessor for TokenGenerator();
  v0[3] = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream;
  v8 = v0[4];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v8);
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[6], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v1 = v0[1];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  return v1(v2, v3, v4);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 56);
  v10 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {
    v8[12] = v8[2];
    v11 = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream;
  }

  else
  {
    v8[9] = a3;
    v8[10] = a2;
    v8[11] = a1;
    v11 = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence._generativeFunctionInstrumenter.getter in conformance TokenGeneratorCompletionResponseStringStream@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ChatLanguageModelResponseStringStream.role.getter in conformance TokenGeneratorChatResponseStringStream@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69C6400];
  v3 = type metadata accessor for ChatMessageRole();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69A1560] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return MEMORY[0x1EEE0B7C8](a1, a2);
}

{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69A1560] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return MEMORY[0x1EEE0B7C8](a1, a2);
}

uint64_t closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[555] = a5;
  v5[554] = a4;
  v5[553] = a3;
  v5[552] = a2;
  v5[551] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR) - 8) + 64) + 15;
  v5[556] = swift_task_alloc();
  v8 = *(a4 - 8);
  v5[557] = v8;
  v9 = *(v8 + 64) + 15;
  v5[558] = swift_task_alloc();
  v5[559] = swift_task_alloc();
  v10 = *(*(type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0) - 8) + 64) + 15;
  v5[560] = swift_task_alloc();
  v11 = *(*(type metadata accessor for RunnableConfigurationStorage() - 8) + 64) + 15;
  v5[561] = swift_task_alloc();
  v12 = *(*(type metadata accessor for OverridableConfigurationStorage() - 8) + 64) + 15;
  v5[562] = swift_task_alloc();
  v13 = type metadata accessor for ChatMessagesPrompt();
  v5[563] = v13;
  v14 = *(v13 - 8);
  v5[564] = v14;
  v15 = *(v14 + 64) + 15;
  v5[565] = swift_task_alloc();
  v16 = type metadata accessor for StringResponseSanitizerRunnerConfiguration();
  v5[566] = v16;
  v17 = *(v16 - 8);
  v5[567] = v17;
  v18 = *(v17 + 64) + 15;
  v5[568] = swift_task_alloc();
  v5[569] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR) - 8) + 64) + 15;
  v5[570] = swift_task_alloc();
  v20 = type metadata accessor for StringResponseSanitizerWithRunner();
  v5[571] = v20;
  v21 = *(v20 - 8);
  v5[572] = v21;
  v22 = *(v21 + 64) + 15;
  v5[573] = swift_task_alloc();
  v5[574] = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  v5[575] = v23;
  v24 = *(v23 - 8);
  v5[576] = v24;
  v25 = *(v24 + 64) + 15;
  v5[577] = swift_task_alloc();
  v5[578] = swift_task_alloc();
  v26 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v5[579] = v26;
  v27 = *(v26 - 8);
  v5[580] = v27;
  v28 = *(v27 + 64) + 15;
  v5[581] = swift_task_alloc();
  v5[582] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR) - 8) + 64) + 15;
  v5[583] = swift_task_alloc();
  v30 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  v5[584] = v30;
  v31 = *(v30 - 8);
  v5[585] = v31;
  v32 = *(v31 + 64) + 15;
  v5[586] = swift_task_alloc();
  v5[587] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR) - 8) + 64) + 15;
  v5[588] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v5[589] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v5[590] = swift_task_alloc();
  v5[591] = swift_task_alloc();
  v36 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5[592] = v36;
  v37 = *(v36 - 8);
  v5[593] = v37;
  v38 = *(v37 + 64) + 15;
  v5[594] = swift_task_alloc();
  v5[595] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._streamResponse<A>(configuration:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._streamResponse<A>(configuration:)()
{
  v1 = *(v0 + 4424);
  if (v1[3])
  {
    v3 = v1[6];
    v2 = v1[7];
  }

  v4 = *(v0 + 4760);
  v5 = *(v0 + 4704);
  v6 = *(v0 + 4664);
  v7 = *(v0 + 4440);
  v8 = *(v0 + 4432);
  v9 = *(v0 + 4416);
  v10 = v1[18];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  *(v0 + 4768) = GenerativeConfigurationProtocol.documents.getter();
  *(v0 + 4776) = GenerativeConfigurationProtocol.tools.getter();
  GenerativeConfigurationProtocol.toolChoice.getter();
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v11 = *(v0 + 4680);
  v12 = *(v0 + 4672);
  v13 = *(v0 + 4664);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v14 = 1;
  }

  else
  {
    v15 = *(v0 + 4760);
    v16 = *(v0 + 4656);
    v17 = *(v0 + 4624);
    v18 = *(v0 + 4424);
    (*(v11 + 32))(*(v0 + 4696), v13, v12);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v17, MEMORY[0x1E69A1568]);
    v85 = *(v0 + 4728);
    v19 = *(v0 + 4696);
    v20 = *(v0 + 4688);
    v21 = *(v0 + 4680);
    v22 = *(v0 + 4672);
    v23 = *(v0 + 4656);
    v24 = *(v0 + 4648);
    v25 = *(v0 + 4640);
    v26 = *(v0 + 4632);
    (*(*(v0 + 4608) + 8))(*(v0 + 4624), *(v0 + 4600));
    (*(v21 + 16))(v20, v19, v22);
    (*(v25 + 16))(v24, v23, v26);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v25 + 8))(v23, v26);
    (*(v21 + 8))(v19, v22);
    v14 = 0;
  }

  v27 = *(v0 + 4728);
  v28 = *(v0 + 4560);
  v29 = *(v0 + 4440);
  v30 = *(v0 + 4432);
  v31 = *(v0 + 4416);
  v32 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v32 - 8) + 56))(v27, v14, 1, v32);
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v33 = *(v0 + 4576);
  v34 = *(v0 + 4568);
  v35 = *(v0 + 4560);
  if ((*(v33 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    v36 = 1;
  }

  else
  {
    v37 = *(v0 + 4760);
    v38 = *(v0 + 4616);
    v39 = *(v0 + 4552);
    v40 = *(v0 + 4424);
    (*(v33 + 32))(*(v0 + 4592), v35, v34);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v38, MEMORY[0x1E69A1558]);
    v86 = *(v0 + 4712);
    v41 = *(v0 + 4592);
    v42 = *(v0 + 4584);
    v43 = *(v0 + 4576);
    v44 = *(v0 + 4568);
    v45 = *(v0 + 4552);
    v46 = *(v0 + 4544);
    v47 = *(v0 + 4536);
    v48 = *(v0 + 4528);
    (*(*(v0 + 4608) + 8))(*(v0 + 4616), *(v0 + 4600));
    (*(v43 + 16))(v42, v41, v44);
    (*(v47 + 16))(v46, v45, v48);
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    (*(v47 + 8))(v45, v48);
    (*(v43 + 8))(v41, v44);
    v36 = 0;
  }

  v49 = *(v0 + 4712);
  v50 = *(v0 + 4440);
  v51 = *(v0 + 4432);
  v52 = *(v0 + 4416);
  v53 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  (*(*(v53 - 8) + 56))(v49, v36, 1, v53);
  *(v0 + 4784) = GenerativeConfigurationProtocol.grammar.getter(v51, v50);
  *(v0 + 4792) = v54;
  v55 = *(v0 + 4416);
  *(v0 + 4800) = GenerativeConfigurationProtocol.partialGrammar.getter(*(v0 + 4432), *(v0 + 4440));
  *(v0 + 4808) = v56;
  v57 = *(v0 + 4416);
  *(v0 + 4816) = GenerativeConfigurationProtocol.grammarIdentifier.getter(*(v0 + 4432), *(v0 + 4440));
  *(v0 + 4824) = v58;
  v59 = *(v0 + 4416);
  *(v0 + 4832) = GenerativeConfigurationProtocol.schemaIdentifier.getter(*(v0 + 4432), *(v0 + 4440));
  *(v0 + 4840) = v60;
  v61 = *(v0 + 4416);
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 4432), *(v0 + 4440), v0 + 1960);
  v62 = *(v0 + 2136);
  *(v0 + 392) = *(v0 + 2120);
  *(v0 + 408) = v62;
  *(v0 + 424) = *(v0 + 2152);
  v63 = *(v0 + 2072);
  *(v0 + 328) = *(v0 + 2056);
  *(v0 + 344) = v63;
  v64 = *(v0 + 2104);
  *(v0 + 360) = *(v0 + 2088);
  *(v0 + 376) = v64;
  v65 = *(v0 + 2008);
  *(v0 + 264) = *(v0 + 1992);
  *(v0 + 280) = v65;
  v66 = *(v0 + 2040);
  *(v0 + 296) = *(v0 + 2024);
  *(v0 + 312) = v66;
  v67 = *(v0 + 1976);
  *(v0 + 232) = *(v0 + 1960);
  v68 = *(v0 + 4728);
  v69 = *(v0 + 4520);
  v70 = *(v0 + 4496);
  v71 = *(v0 + 4488);
  v87 = *(v0 + 4720);
  v88 = *(v0 + 4472);
  v72 = *(v0 + 4456);
  v73 = *(v0 + 4440);
  v74 = *(v0 + 4432);
  v75 = *(v0 + 4416);
  *(v0 + 440) = *(v0 + 2168);
  *(v0 + 248) = v67;
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v68, v87, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v76 = swift_task_alloc();
  *(v0 + 4848) = v76;
  *(v76 + 16) = v69;
  v77 = *(v72 + 16);
  *(v0 + 4856) = v77;
  *(v0 + 4864) = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v77(v88, v75, v74);
  v78 = swift_task_alloc();
  *(v0 + 4872) = v78;
  *v78 = v0;
  v78[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  v79 = *(v0 + 4720);
  v80 = *(v0 + 4480);
  v81 = *(v0 + 4472);
  v82 = *(v0 + 4440);
  v83 = *(v0 + 4432);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v80, v79, &async function pointer to partial apply for closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:), v76, v81, 0, v83, v82);
}

{
  v2 = *v1;
  v3 = *(*v1 + 4872);
  v13 = *v1;
  *(*v1 + 4880) = v0;

  if (v0)
  {
    v4 = v2[605];
    v5 = v2[603];
    v6 = v2[601];
    v7 = v2[599];
    v8 = v2[596];
    if (v2[597])
    {
      v9 = v2[597];
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v2 + 29), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    v10 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v11 = v2[606];

    v10 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

{
  v1 = (v0 + 232);
  v2 = *(v0 + 4792);
  v3 = *(v0 + 4760);
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  GenerativeFunctionInstrumenter.inferenceBegin()();
  if (v2)
  {
    v132 = *(v0 + 4856);
    v136 = *(v0 + 4864);
    v4 = *(v0 + 4840);
    v5 = *(v0 + 4824);
    v6 = *(v0 + 4808);
    v150 = *(v0 + 4792);
    v140 = *(v0 + 4776);
    v145 = *(v0 + 4768);
    v7 = *(v0 + 4752);
    v8 = *(v0 + 4744);
    v9 = *(v0 + 4736);
    v10 = *(v0 + 4464);
    v129 = *(v0 + 4760);
    v130 = *(v0 + 4440);
    v11 = *(v0 + 4432);
    v128 = *(v0 + 4416);

    v12 = *(v0 + 408);
    *(v0 + 3200) = *(v0 + 392);
    *(v0 + 3216) = v12;
    *(v0 + 3232) = *(v0 + 424);
    v13 = *(v0 + 344);
    *(v0 + 3136) = *(v0 + 328);
    *(v0 + 3152) = v13;
    v14 = *(v0 + 376);
    *(v0 + 3168) = *(v0 + 360);
    *(v0 + 3184) = v14;
    v15 = *(v0 + 280);
    *(v0 + 3072) = *(v0 + 264);
    *(v0 + 3088) = v15;
    v16 = *(v0 + 312);
    *(v0 + 3104) = *(v0 + 296);
    *(v0 + 3120) = v16;
    v17 = *(v0 + 248);
    *(v0 + 3040) = *v1;
    *(v0 + 3248) = *(v0 + 440);
    *(v0 + 3056) = v17;
    (*(v8 + 16))(v7, v129, v9);
    v132(v10, v128, v11);
    RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v7, v10, v11, (v0 + 4024));
    v18 = *(v0 + 4040);
    v19 = *(v0 + 4048);
    v20 = *(v0 + 4072);
    *(v0 + 4080) = *(v0 + 4024);
    *(v0 + 4096) = v18;
    *(v0 + 4104) = v19;
    *(v0 + 4112) = *(v0 + 4056);
    *(v0 + 4128) = v20;
    v21 = swift_task_alloc();
    *(v0 + 4888) = v21;
    *v21 = v0;
    v21[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
    if (v140)
    {
      v22 = v140;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    if (v145)
    {
      v23 = v145;
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v0 + 4784);
    v25 = *(v0 + 4704);
    v26 = *(v0 + 4480);
    v27 = *(v0 + 4424);

    return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)(v0 + 4376, v26, v0 + 3040, v22, v25, v23, v24, v150);
  }

  else
  {
    v29 = *(v0 + 4808);
    if (v29)
    {
      v141 = *(v0 + 4864);
      v30 = *(v0 + 4840);
      v31 = *(v0 + 4824);
      v147 = *(v0 + 4776);
      v151 = *(v0 + 4768);
      v131 = *(v0 + 4760);
      v32 = *(v0 + 4752);
      v33 = *(v0 + 4744);
      v34 = *(v0 + 4736);
      v35 = *(v0 + 4464);
      v133 = *(v0 + 4440);
      v137 = *(v0 + 4856);
      v36 = *(v0 + 4432);
      v37 = *(v0 + 4416);

      v38 = *(v0 + 408);
      *(v0 + 2768) = *(v0 + 392);
      *(v0 + 2784) = v38;
      *(v0 + 2800) = *(v0 + 424);
      v39 = *(v0 + 344);
      *(v0 + 2704) = *(v0 + 328);
      *(v0 + 2720) = v39;
      v40 = *(v0 + 376);
      *(v0 + 2736) = *(v0 + 360);
      *(v0 + 2752) = v40;
      v41 = *(v0 + 280);
      *(v0 + 2640) = *(v0 + 264);
      *(v0 + 2656) = v41;
      v42 = *(v0 + 312);
      *(v0 + 2672) = *(v0 + 296);
      *(v0 + 2688) = v42;
      v43 = *(v0 + 248);
      *(v0 + 2608) = *v1;
      *(v0 + 2816) = *(v0 + 440);
      *(v0 + 2624) = v43;
      (*(v33 + 16))(v32, v131, v34);
      v137(v35, v37, v36);
      RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v32, v35, v36, (v0 + 3744));
      v44 = *(v0 + 3760);
      v45 = *(v0 + 3768);
      v46 = *(v0 + 3792);
      *(v0 + 3800) = *(v0 + 3744);
      *(v0 + 3816) = v44;
      *(v0 + 3824) = v45;
      *(v0 + 3832) = *(v0 + 3776);
      *(v0 + 3848) = v46;
      v47 = swift_task_alloc();
      *(v0 + 4904) = v47;
      *v47 = v0;
      v47[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
      if (v147)
      {
        v48 = v147;
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }

      if (v151)
      {
        v49 = v151;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }

      v50 = *(v0 + 4800);
      v51 = *(v0 + 4704);
      v52 = *(v0 + 4480);
      v53 = *(v0 + 4424);

      return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:partialGrammar:metadata:)(v0 + 4344, v52, v0 + 2608, v48, v51, v49, v50, v29);
    }

    else
    {
      v54 = *(v0 + 4824);
      if (v54)
      {
        v142 = *(v0 + 4864);
        v55 = *(v0 + 4840);
        v148 = *(v0 + 4776);
        v152 = *(v0 + 4768);
        v56 = *(v0 + 4760);
        v57 = *(v0 + 4752);
        v58 = *(v0 + 4744);
        v59 = *(v0 + 4736);
        v60 = *(v0 + 4464);
        v134 = *(v0 + 4440);
        v138 = *(v0 + 4856);
        v61 = *(v0 + 4432);
        v62 = *(v0 + 4416);

        v63 = *(v0 + 408);
        *(v0 + 1904) = *(v0 + 392);
        *(v0 + 1920) = v63;
        *(v0 + 1936) = *(v0 + 424);
        v64 = *(v0 + 344);
        *(v0 + 1840) = *(v0 + 328);
        *(v0 + 1856) = v64;
        v65 = *(v0 + 376);
        *(v0 + 1872) = *(v0 + 360);
        *(v0 + 1888) = v65;
        v66 = *(v0 + 280);
        *(v0 + 1776) = *(v0 + 264);
        *(v0 + 1792) = v66;
        v67 = *(v0 + 312);
        *(v0 + 1808) = *(v0 + 296);
        *(v0 + 1824) = v67;
        v68 = *(v0 + 248);
        *(v0 + 1744) = *v1;
        *(v0 + 1952) = *(v0 + 440);
        *(v0 + 1760) = v68;
        (*(v58 + 16))(v57, v56, v59);
        v138(v60, v62, v61);
        RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v57, v60, v61, (v0 + 4192));
        v69 = *(v0 + 4208);
        v70 = *(v0 + 4216);
        v71 = *(v0 + 4240);
        *(v0 + 3688) = *(v0 + 4192);
        *(v0 + 3704) = v69;
        *(v0 + 3712) = v70;
        *(v0 + 3720) = *(v0 + 4224);
        *(v0 + 3736) = v71;
        v72 = swift_task_alloc();
        *(v0 + 4920) = v72;
        *v72 = v0;
        v72[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
        if (v148)
        {
          v73 = v148;
        }

        else
        {
          v73 = MEMORY[0x1E69E7CC0];
        }

        if (v152)
        {
          v74 = v152;
        }

        else
        {
          v74 = MEMORY[0x1E69E7CC0];
        }

        v75 = *(v0 + 4816);
        v76 = *(v0 + 4704);
        v77 = *(v0 + 4480);
        v78 = *(v0 + 4424);

        return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammarIdentifier:metadata:)(v0 + 4312, v77, v0 + 1744, v73, v76, v74, v75, v54);
      }

      else
      {
        v79 = *(v0 + 4840);
        v80 = (*(v0 + 4744) + 16);
        v81 = *(v0 + 4856);
        v149 = v81;
        v153 = *(v0 + 4864);
        if (v79)
        {
          v143 = *(v0 + 4776);
          v82 = *(v0 + 4760);
          v83 = *(v0 + 4752);
          v84 = *(v0 + 4736);
          v85 = *(v0 + 4464);
          v135 = *(v0 + 4440);
          v139 = *(v0 + 4768);
          v86 = *(v0 + 4432);
          v87 = *(v0 + 4416);
          v88 = *(v0 + 408);
          *(v0 + 1256) = *(v0 + 392);
          *(v0 + 1272) = v88;
          *(v0 + 1288) = *(v0 + 424);
          *(v0 + 1304) = *(v0 + 440);
          v89 = *(v0 + 344);
          *(v0 + 1192) = *(v0 + 328);
          *(v0 + 1208) = v89;
          v90 = *(v0 + 376);
          *(v0 + 1224) = *(v0 + 360);
          *(v0 + 1240) = v90;
          v91 = *(v0 + 280);
          *(v0 + 1128) = *(v0 + 264);
          *(v0 + 1144) = v91;
          v92 = *(v0 + 312);
          *(v0 + 1160) = *(v0 + 296);
          *(v0 + 1176) = v92;
          v93 = *(v0 + 248);
          *(v0 + 1096) = *v1;
          *(v0 + 1112) = v93;
          (*v80)(v83, v82, v84);
          v149(v85, v87, v86);
          RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v83, v85, v86, (v0 + 3912));
          v94 = *(v0 + 3928);
          v95 = *(v0 + 3936);
          v96 = *(v0 + 3960);
          *(v0 + 3856) = *(v0 + 3912);
          *(v0 + 3872) = v94;
          *(v0 + 3880) = v95;
          *(v0 + 3888) = *(v0 + 3944);
          *(v0 + 3904) = v96;
          v97 = swift_task_alloc();
          *(v0 + 4936) = v97;
          *v97 = v0;
          v97[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
          if (v143)
          {
            v98 = v143;
          }

          else
          {
            v98 = MEMORY[0x1E69E7CC0];
          }

          if (v139)
          {
            v99 = v139;
          }

          else
          {
            v99 = MEMORY[0x1E69E7CC0];
          }

          v100 = *(v0 + 4832);
          v101 = *(v0 + 4704);
          v102 = *(v0 + 4480);
          v103 = *(v0 + 4424);

          return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schemaIdentifier:metadata:)(v0 + 4280, v102, v0 + 1096, v98, v101, v99, v100, v79);
        }

        else
        {
          v144 = *(v0 + 4768);
          v146 = *(v0 + 4776);
          v104 = *(v0 + 4760);
          v105 = *(v0 + 4752);
          v106 = *(v0 + 4736);
          v107 = *(v0 + 4464);
          v108 = *(v0 + 4448);
          v109 = *(v0 + 4440);
          v110 = *(v0 + 4432);
          v111 = *(v0 + 4416);
          v112 = *(v0 + 408);
          *(v0 + 608) = *(v0 + 392);
          *(v0 + 624) = v112;
          *(v0 + 640) = *(v0 + 424);
          *(v0 + 656) = *(v0 + 440);
          v113 = *(v0 + 344);
          *(v0 + 544) = *(v0 + 328);
          *(v0 + 560) = v113;
          v114 = *(v0 + 376);
          *(v0 + 576) = *(v0 + 360);
          *(v0 + 592) = v114;
          v115 = *(v0 + 280);
          *(v0 + 480) = *(v0 + 264);
          *(v0 + 496) = v115;
          v116 = *(v0 + 312);
          *(v0 + 512) = *(v0 + 296);
          *(v0 + 528) = v116;
          v117 = *(v0 + 248);
          *(v0 + 448) = *v1;
          *(v0 + 464) = v117;
          GenerativeConfigurationProtocol.schema.getter();
          (*v80)(v105, v104, v106);
          v149(v107, v111, v110);
          RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v105, v107, v110, (v0 + 4136));
          v118 = *(v0 + 4152);
          v119 = *(v0 + 4160);
          v120 = *(v0 + 4184);
          *(v0 + 3968) = *(v0 + 4136);
          *(v0 + 3984) = v118;
          *(v0 + 3992) = v119;
          *(v0 + 4000) = *(v0 + 4168);
          *(v0 + 4016) = v120;
          v121 = swift_task_alloc();
          *(v0 + 4952) = v121;
          *v121 = v0;
          v121[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
          if (v146)
          {
            v122 = v146;
          }

          else
          {
            v122 = MEMORY[0x1E69E7CC0];
          }

          if (v144)
          {
            v123 = v144;
          }

          else
          {
            v123 = MEMORY[0x1E69E7CC0];
          }

          v124 = *(v0 + 4704);
          v125 = *(v0 + 4480);
          v126 = *(v0 + 4448);
          v127 = *(v0 + 4424);

          return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)(v0 + 4248, v125, v0 + 448, v122, v124, v123, v126, v0 + 3968);
        }
      }
    }
  }
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 3040);
  v5 = *(*v1 + 4888);
  v6 = *v1;
  *(*v1 + 4896) = v0;

  v7 = v2[599];
  if (v2[597])
  {
    v8 = v2[597];
  }

  if (v2[596])
  {
    v9 = v2[596];
  }

  v10 = v3[511];
  if (v0)
  {
    v11 = v3[513];
    v12 = v3[515];
    v13 = v3[516];

    v14 = *(v3 + 191);
    *(v3 + 353) = *v4;
    *(v3 + 355) = v14;
    v15 = *(v3 + 192);
    v16 = *(v3 + 193);
    v17 = *(v3 + 195);
    *(v3 + 361) = *(v3 + 194);
    *(v3 + 363) = v17;
    *(v3 + 357) = v15;
    *(v3 + 359) = v16;
    v18 = *(v3 + 196);
    v19 = *(v3 + 197);
    v20 = *(v3 + 199);
    *(v3 + 369) = *(v3 + 198);
    *(v3 + 371) = v20;
    *(v3 + 365) = v18;
    *(v3 + 367) = v19;
    v21 = *(v3 + 200);
    v22 = *(v3 + 201);
    v23 = *(v3 + 202);
    *(v3 + 1516) = *(v3 + 1624);
    *(v3 + 375) = v22;
    *(v3 + 377) = v23;
    *(v3 + 373) = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 353), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v25 = v3[513];
    v26 = v3[515];
    v27 = v3[516];

    v28 = *(v3 + 191);
    *(v3 + 1) = *v4;
    *(v3 + 2) = v28;
    v29 = *(v3 + 192);
    v30 = *(v3 + 193);
    v31 = *(v3 + 195);
    *(v3 + 5) = *(v3 + 194);
    *(v3 + 6) = v31;
    *(v3 + 3) = v29;
    *(v3 + 4) = v30;
    v32 = *(v3 + 196);
    v33 = *(v3 + 197);
    v34 = *(v3 + 199);
    *(v3 + 9) = *(v3 + 198);
    *(v3 + 10) = v34;
    *(v3 + 7) = v32;
    *(v3 + 8) = v33;
    v35 = *(v3 + 200);
    v36 = *(v3 + 201);
    v37 = *(v3 + 202);
    *(v3 + 112) = *(v3 + 1624);
    *(v3 + 12) = v36;
    *(v3 + 13) = v37;
    *(v3 + 11) = v35;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 2), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v24, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 2608);
  v5 = *(*v1 + 4904);
  v6 = *v1;
  *(*v1 + 4912) = v0;

  v7 = v2[601];
  if (v2[597])
  {
    v8 = v2[597];
  }

  if (v2[596])
  {
    v9 = v2[596];
  }

  v10 = v3[476];
  if (v0)
  {
    v11 = v3[478];
    v12 = v3[480];
    v13 = v3[481];

    v14 = *v4;
    *(v3 + 218) = *(v3 + 164);
    *(v3 + 217) = v14;
    v15 = *(v3 + 165);
    v16 = *(v3 + 166);
    v17 = *(v3 + 167);
    *(v3 + 222) = *(v3 + 168);
    *(v3 + 221) = v17;
    *(v3 + 220) = v16;
    *(v3 + 219) = v15;
    v18 = *(v3 + 169);
    v19 = *(v3 + 170);
    v20 = *(v3 + 171);
    *(v3 + 226) = *(v3 + 172);
    *(v3 + 225) = v20;
    *(v3 + 224) = v19;
    *(v3 + 223) = v18;
    v21 = *(v3 + 173);
    v22 = *(v3 + 174);
    v23 = *(v3 + 175);
    *(v3 + 1840) = *(v3 + 1408);
    *(v3 + 229) = v23;
    *(v3 + 228) = v22;
    *(v3 + 227) = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 434), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v25 = v3[478];
    v26 = v3[480];
    v27 = v3[481];

    v28 = *(v3 + 164);
    *(v3 + 407) = *v4;
    *(v3 + 409) = v28;
    v29 = *(v3 + 165);
    v30 = *(v3 + 166);
    v31 = *(v3 + 168);
    *(v3 + 415) = *(v3 + 167);
    *(v3 + 417) = v31;
    *(v3 + 411) = v29;
    *(v3 + 413) = v30;
    v32 = *(v3 + 169);
    v33 = *(v3 + 170);
    v34 = *(v3 + 172);
    *(v3 + 423) = *(v3 + 171);
    *(v3 + 425) = v34;
    *(v3 + 419) = v32;
    *(v3 + 421) = v33;
    v35 = *(v3 + 173);
    v36 = *(v3 + 174);
    v37 = *(v3 + 175);
    *(v3 + 1732) = *(v3 + 1408);
    *(v3 + 429) = v36;
    *(v3 + 431) = v37;
    *(v3 + 427) = v35;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 407), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v24, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v40 = *(v0 + 4376);
  v39 = *(v0 + 4392);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v40;
  *(v10 + 1) = v39;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);
  v14 = *(v0 + 4760);
  v15 = *(v0 + 4752);
  v16 = *(v0 + 4728);
  v17 = *(v0 + 4720);
  v18 = *(v0 + 4712);
  v19 = *(v0 + 4704);
  v20 = *(v0 + 4696);
  v21 = *(v0 + 4688);
  v22 = *(v0 + 4664);
  v23 = *(v0 + 4656);
  v26 = *(v0 + 4648);
  v27 = *(v0 + 4624);
  v28 = *(v0 + 4616);
  v29 = *(v0 + 4592);
  v30 = *(v0 + 4584);
  v31 = *(v0 + 4560);
  v32 = *(v0 + 4552);
  v33 = *(v0 + 4544);
  v34 = *(v0 + 4520);
  v35 = *(v0 + 4496);
  v36 = *(v0 + 4488);
  v37 = *(v0 + 4480);
  v38 = *(v0 + 4472);
  *&v39 = *(v0 + 4464);
  *&v40 = *(v0 + 4448);

  v24 = *(v0 + 8);

  return v24();
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 1744);
  v5 = *(*v1 + 4920);
  v6 = *v1;
  *(*v1 + 4928) = v0;

  v7 = v2[603];
  if (v2[597])
  {
    v8 = v2[597];
  }

  if (v2[596])
  {
    v9 = v2[596];
  }

  v10 = v3[462];
  if (v0)
  {
    v11 = v3[464];
    v12 = v3[466];
    v13 = v3[467];

    v14 = *v4;
    *(v3 + 137) = *(v3 + 110);
    *(v3 + 136) = v14;
    v15 = *(v3 + 111);
    v16 = *(v3 + 112);
    v17 = *(v3 + 113);
    *(v3 + 141) = *(v3 + 114);
    *(v3 + 140) = v17;
    *(v3 + 139) = v16;
    *(v3 + 138) = v15;
    v18 = *(v3 + 115);
    v19 = *(v3 + 116);
    v20 = *(v3 + 117);
    *(v3 + 145) = *(v3 + 118);
    *(v3 + 144) = v20;
    *(v3 + 143) = v19;
    *(v3 + 142) = v18;
    v21 = *(v3 + 119);
    v22 = *(v3 + 120);
    v23 = *(v3 + 121);
    *(v3 + 1192) = *(v3 + 976);
    *(v3 + 148) = v23;
    *(v3 + 147) = v22;
    *(v3 + 146) = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 272), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v25 = v3[464];
    v26 = v3[466];
    v27 = v3[467];

    v28 = *(v3 + 110);
    *(v3 + 299) = *v4;
    *(v3 + 301) = v28;
    v29 = *(v3 + 111);
    v30 = *(v3 + 112);
    v31 = *(v3 + 114);
    *(v3 + 307) = *(v3 + 113);
    *(v3 + 309) = v31;
    *(v3 + 303) = v29;
    *(v3 + 305) = v30;
    v32 = *(v3 + 115);
    v33 = *(v3 + 116);
    v34 = *(v3 + 118);
    *(v3 + 315) = *(v3 + 117);
    *(v3 + 317) = v34;
    *(v3 + 311) = v32;
    *(v3 + 313) = v33;
    v35 = *(v3 + 119);
    v36 = *(v3 + 120);
    v37 = *(v3 + 121);
    *(v3 + 1300) = *(v3 + 976);
    *(v3 + 321) = v36;
    *(v3 + 323) = v37;
    *(v3 + 319) = v35;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 299), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v24, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v40 = *(v0 + 4344);
  v39 = *(v0 + 4360);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v40;
  *(v10 + 1) = v39;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);
  v14 = *(v0 + 4760);
  v15 = *(v0 + 4752);
  v16 = *(v0 + 4728);
  v17 = *(v0 + 4720);
  v18 = *(v0 + 4712);
  v19 = *(v0 + 4704);
  v20 = *(v0 + 4696);
  v21 = *(v0 + 4688);
  v22 = *(v0 + 4664);
  v23 = *(v0 + 4656);
  v26 = *(v0 + 4648);
  v27 = *(v0 + 4624);
  v28 = *(v0 + 4616);
  v29 = *(v0 + 4592);
  v30 = *(v0 + 4584);
  v31 = *(v0 + 4560);
  v32 = *(v0 + 4552);
  v33 = *(v0 + 4544);
  v34 = *(v0 + 4520);
  v35 = *(v0 + 4496);
  v36 = *(v0 + 4488);
  v37 = *(v0 + 4480);
  v38 = *(v0 + 4472);
  *&v39 = *(v0 + 4464);
  *&v40 = *(v0 + 4448);

  v24 = *(v0 + 8);

  return v24();
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 1096);
  v5 = *(*v1 + 4936);
  v6 = *v1;
  *(*v1 + 4944) = v0;

  v7 = v2[605];
  if (v2[597])
  {
    v8 = v2[597];
  }

  if (v2[596])
  {
    v9 = v2[596];
  }

  v10 = v3[483];
  if (v0)
  {
    v11 = v3[485];
    v12 = v3[487];
    v13 = v3[488];

    v14 = *v4;
    *(v3 + 83) = *(v3 + 139);
    *(v3 + 82) = v14;
    v15 = *(v3 + 141);
    v16 = *(v3 + 143);
    v17 = *(v3 + 145);
    *(v3 + 87) = *(v3 + 147);
    *(v3 + 86) = v17;
    *(v3 + 85) = v16;
    *(v3 + 84) = v15;
    v18 = *(v3 + 149);
    v19 = *(v3 + 151);
    v20 = *(v3 + 153);
    *(v3 + 91) = *(v3 + 155);
    *(v3 + 90) = v20;
    *(v3 + 89) = v19;
    *(v3 + 88) = v18;
    v21 = *(v3 + 157);
    v22 = *(v3 + 159);
    v23 = *(v3 + 161);
    *(v3 + 760) = *(v3 + 652);
    *(v3 + 94) = v23;
    *(v3 + 93) = v22;
    *(v3 + 92) = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 164), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v25 = v3[485];
    v26 = v3[487];
    v27 = v3[488];

    v28 = *(v3 + 139);
    *(v3 + 191) = *v4;
    *(v3 + 193) = v28;
    v29 = *(v3 + 141);
    v30 = *(v3 + 143);
    v31 = *(v3 + 147);
    *(v3 + 199) = *(v3 + 145);
    *(v3 + 201) = v31;
    *(v3 + 195) = v29;
    *(v3 + 197) = v30;
    v32 = *(v3 + 149);
    v33 = *(v3 + 151);
    v34 = *(v3 + 155);
    *(v3 + 207) = *(v3 + 153);
    *(v3 + 209) = v34;
    *(v3 + 203) = v32;
    *(v3 + 205) = v33;
    v35 = *(v3 + 157);
    v36 = *(v3 + 159);
    v37 = *(v3 + 161);
    *(v3 + 868) = *(v3 + 652);
    *(v3 + 213) = v36;
    *(v3 + 215) = v37;
    *(v3 + 211) = v35;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 191), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v24, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v40 = *(v0 + 4312);
  v39 = *(v0 + 4328);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v40;
  *(v10 + 1) = v39;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);
  v14 = *(v0 + 4760);
  v15 = *(v0 + 4752);
  v16 = *(v0 + 4728);
  v17 = *(v0 + 4720);
  v18 = *(v0 + 4712);
  v19 = *(v0 + 4704);
  v20 = *(v0 + 4696);
  v21 = *(v0 + 4688);
  v22 = *(v0 + 4664);
  v23 = *(v0 + 4656);
  v26 = *(v0 + 4648);
  v27 = *(v0 + 4624);
  v28 = *(v0 + 4616);
  v29 = *(v0 + 4592);
  v30 = *(v0 + 4584);
  v31 = *(v0 + 4560);
  v32 = *(v0 + 4552);
  v33 = *(v0 + 4544);
  v34 = *(v0 + 4520);
  v35 = *(v0 + 4496);
  v36 = *(v0 + 4488);
  v37 = *(v0 + 4480);
  v38 = *(v0 + 4472);
  *&v39 = *(v0 + 4464);
  *&v40 = *(v0 + 4448);

  v24 = *(v0 + 8);

  return v24();
}

{
  v2 = *v1;
  v3 = *(*v1 + 4952);
  v4 = *v1;
  *(v2 + 4960) = v0;

  v5 = *(v2 + 4776);
  v6 = *(v2 + 4768);
  v7 = *(v2 + 4448);

  v8 = *(v2 + 3976);
  if (v0)
  {
    v9 = *(v2 + 3992);
    v10 = *(v2 + 4008);
    v11 = *(v2 + 4016);

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v12 = *(v2 + 464);
    *(v2 + 664) = *(v2 + 448);
    *(v2 + 680) = v12;
    v13 = *(v2 + 528);
    v15 = *(v2 + 480);
    v14 = *(v2 + 496);
    *(v2 + 728) = *(v2 + 512);
    *(v2 + 744) = v13;
    *(v2 + 696) = v15;
    *(v2 + 712) = v14;
    v16 = *(v2 + 592);
    v18 = *(v2 + 544);
    v17 = *(v2 + 560);
    *(v2 + 792) = *(v2 + 576);
    *(v2 + 808) = v16;
    *(v2 + 760) = v18;
    *(v2 + 776) = v17;
    v20 = *(v2 + 624);
    v19 = *(v2 + 640);
    v21 = *(v2 + 608);
    *(v2 + 872) = *(v2 + 656);
    *(v2 + 840) = v20;
    *(v2 + 856) = v19;
    *(v2 + 824) = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 664, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v22 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v23 = *(v2 + 3992);
    v24 = *(v2 + 4008);
    v25 = *(v2 + 4016);

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v26 = *(v2 + 464);
    *(v2 + 880) = *(v2 + 448);
    *(v2 + 896) = v26;
    v27 = *(v2 + 528);
    v29 = *(v2 + 480);
    v28 = *(v2 + 496);
    *(v2 + 944) = *(v2 + 512);
    *(v2 + 960) = v27;
    *(v2 + 912) = v29;
    *(v2 + 928) = v28;
    v30 = *(v2 + 592);
    v32 = *(v2 + 544);
    v31 = *(v2 + 560);
    *(v2 + 1008) = *(v2 + 576);
    *(v2 + 1024) = v30;
    *(v2 + 976) = v32;
    *(v2 + 992) = v31;
    v34 = *(v2 + 624);
    v33 = *(v2 + 640);
    v35 = *(v2 + 656);
    *(v2 + 1040) = *(v2 + 608);
    *(v2 + 1088) = v35;
    *(v2 + 1072) = v33;
    *(v2 + 1056) = v34;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 880, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v22 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v22, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v40 = *(v0 + 4280);
  v39 = *(v0 + 4296);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v40;
  *(v10 + 1) = v39;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);
  v14 = *(v0 + 4760);
  v15 = *(v0 + 4752);
  v16 = *(v0 + 4728);
  v17 = *(v0 + 4720);
  v18 = *(v0 + 4712);
  v19 = *(v0 + 4704);
  v20 = *(v0 + 4696);
  v21 = *(v0 + 4688);
  v22 = *(v0 + 4664);
  v23 = *(v0 + 4656);
  v26 = *(v0 + 4648);
  v27 = *(v0 + 4624);
  v28 = *(v0 + 4616);
  v29 = *(v0 + 4592);
  v30 = *(v0 + 4584);
  v31 = *(v0 + 4560);
  v32 = *(v0 + 4552);
  v33 = *(v0 + 4544);
  v34 = *(v0 + 4520);
  v35 = *(v0 + 4496);
  v36 = *(v0 + 4488);
  v37 = *(v0 + 4480);
  v38 = *(v0 + 4472);
  *&v39 = *(v0 + 4464);
  *&v40 = *(v0 + 4448);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v40 = *(v0 + 4248);
  v39 = *(v0 + 4264);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v40;
  *(v10 + 1) = v39;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);
  v14 = *(v0 + 4760);
  v15 = *(v0 + 4752);
  v16 = *(v0 + 4728);
  v17 = *(v0 + 4720);
  v18 = *(v0 + 4712);
  v19 = *(v0 + 4704);
  v20 = *(v0 + 4696);
  v21 = *(v0 + 4688);
  v22 = *(v0 + 4664);
  v23 = *(v0 + 4656);
  v26 = *(v0 + 4648);
  v27 = *(v0 + 4624);
  v28 = *(v0 + 4616);
  v29 = *(v0 + 4592);
  v30 = *(v0 + 4584);
  v31 = *(v0 + 4560);
  v32 = *(v0 + 4552);
  v33 = *(v0 + 4544);
  v34 = *(v0 + 4520);
  v35 = *(v0 + 4496);
  v36 = *(v0 + 4488);
  v37 = *(v0 + 4480);
  v38 = *(v0 + 4472);
  *&v39 = *(v0 + 4464);
  *&v40 = *(v0 + 4448);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = v0[606];
  v2 = v0[595];
  v3 = v0[593];
  v4 = v0[592];
  v5 = v0[591];
  v6 = v0[589];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[588], &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v3 + 8))(v2, v4);

  v33 = v0[610];
  v7 = v0[595];
  v8 = v0[594];
  v9 = v0[591];
  v10 = v0[590];
  v11 = v0[589];
  v12 = v0[588];
  v13 = v0[587];
  v14 = v0[586];
  v17 = v0[583];
  v18 = v0[582];
  v19 = v0[581];
  v20 = v0[578];
  v21 = v0[577];
  v22 = v0[574];
  v23 = v0[573];
  v24 = v0[570];
  v25 = v0[569];
  v26 = v0[568];
  v27 = v0[562];
  v28 = v0[561];
  v29 = v0[560];
  v30 = v0[559];
  v31 = v0[558];
  v32 = v0[556];
  (*(v0[564] + 8))(v0[565], v0[563]);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  v33 = v0[612];
  v7 = v0[595];
  v8 = v0[594];
  v9 = v0[591];
  v10 = v0[590];
  v11 = v0[589];
  v12 = v0[588];
  v13 = v0[587];
  v14 = v0[586];
  v17 = v0[583];
  v18 = v0[582];
  v19 = v0[581];
  v20 = v0[578];
  v21 = v0[577];
  v22 = v0[574];
  v23 = v0[573];
  v24 = v0[570];
  v25 = v0[569];
  v26 = v0[568];
  v27 = v0[562];
  v28 = v0[561];
  v29 = v0[560];
  v30 = v0[559];
  v31 = v0[558];
  v32 = v0[556];
  (*(v0[564] + 8))(v0[565], v0[563]);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  v33 = v0[614];
  v7 = v0[595];
  v8 = v0[594];
  v9 = v0[591];
  v10 = v0[590];
  v11 = v0[589];
  v12 = v0[588];
  v13 = v0[587];
  v14 = v0[586];
  v17 = v0[583];
  v18 = v0[582];
  v19 = v0[581];
  v20 = v0[578];
  v21 = v0[577];
  v22 = v0[574];
  v23 = v0[573];
  v24 = v0[570];
  v25 = v0[569];
  v26 = v0[568];
  v27 = v0[562];
  v28 = v0[561];
  v29 = v0[560];
  v30 = v0[559];
  v31 = v0[558];
  v32 = v0[556];
  (*(v0[564] + 8))(v0[565], v0[563]);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  v33 = v0[616];
  v7 = v0[595];
  v8 = v0[594];
  v9 = v0[591];
  v10 = v0[590];
  v11 = v0[589];
  v12 = v0[588];
  v13 = v0[587];
  v14 = v0[586];
  v17 = v0[583];
  v18 = v0[582];
  v19 = v0[581];
  v20 = v0[578];
  v21 = v0[577];
  v22 = v0[574];
  v23 = v0[573];
  v24 = v0[570];
  v25 = v0[569];
  v26 = v0[568];
  v27 = v0[562];
  v28 = v0[561];
  v29 = v0[560];
  v30 = v0[559];
  v31 = v0[558];
  v32 = v0[556];
  (*(v0[564] + 8))(v0[565], v0[563]);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  v33 = v0[618];
  v7 = v0[595];
  v8 = v0[594];
  v9 = v0[591];
  v10 = v0[590];
  v11 = v0[589];
  v12 = v0[588];
  v13 = v0[587];
  v14 = v0[586];
  v17 = v0[583];
  v18 = v0[582];
  v19 = v0[581];
  v20 = v0[578];
  v21 = v0[577];
  v22 = v0[574];
  v23 = v0[573];
  v24 = v0[570];
  v25 = v0[569];
  v26 = v0[568];
  v27 = v0[562];
  v28 = v0[561];
  v29 = v0[560];
  v30 = v0[559];
  v31 = v0[558];
  v32 = v0[556];
  (*(v0[564] + 8))(v0[565], v0[563]);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  v33 = v0[620];
  v7 = v0[595];
  v8 = v0[594];
  v9 = v0[591];
  v10 = v0[590];
  v11 = v0[589];
  v12 = v0[588];
  v13 = v0[587];
  v14 = v0[586];
  v17 = v0[583];
  v18 = v0[582];
  v19 = v0[581];
  v20 = v0[578];
  v21 = v0[577];
  v22 = v0[574];
  v23 = v0[573];
  v24 = v0[570];
  v25 = v0[569];
  v26 = v0[568];
  v27 = v0[562];
  v28 = v0[561];
  v29 = v0[560];
  v30 = v0[559];
  v31 = v0[558];
  v32 = v0[556];
  (*(v0[564] + 8))(v0[565], v0[563]);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:), 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for ChatMessagesPrompt();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for ChatLanguageModelProvidingStreamable._streamResponse<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._streamResponse<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGenerator._respond<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(*(type metadata accessor for TokenGeneratorChatResponseGenerableAdditionalInfo(0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = swift_task_alloc();
  *(v7 + 24) = v17;
  *v17 = v7;
  v17[1] = TokenGenerator._respond<A, B>(type:configuration:);

  return TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, v16, a2, a3, a4, a5, a6, a7);
}

uint64_t TokenGenerator._respond<A, B>(type:configuration:)()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = TokenGenerator._respond<A, B>(type:configuration:);
  }

  else
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v2 + 16), type metadata accessor for TokenGeneratorChatResponseGenerableAdditionalInfo);
    v4 = TokenGenerator._respond<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[17] = a8;
  v9[18] = v8;
  v9[15] = a6;
  v9[16] = a7;
  v9[13] = a4;
  v9[14] = a5;
  v9[11] = a2;
  v9[12] = a3;
  v9[10] = a1;
  v12 = type metadata accessor for ChatMessageRole();
  v9[19] = v12;
  v13 = *(v12 - 8);
  v9[20] = v13;
  v14 = *(v13 + 64) + 15;
  v9[21] = swift_task_alloc();
  v15 = *(a6 - 8);
  v9[22] = v15;
  v9[23] = *(v15 + 64);
  v9[24] = swift_task_alloc();
  v16 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v9[25] = swift_task_alloc();
  v9[26] = swift_task_alloc();
  v17 = *(a5 - 8);
  v9[27] = v17;
  v18 = *(v17 + 64) + 15;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v19 = type metadata accessor for GenerativeFunctionInstrumenter();
  v9[30] = v19;
  v20 = *(v19 - 8);
  v9[31] = v20;
  v21 = *(v20 + 64) + 15;
  v9[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._oneShotResponse<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._oneShotResponse<A, B>(type:configuration:)()
{
  v1 = *(v0 + 144);
  if (v1[3])
  {
    v3 = v1[6];
    v2 = v1[7];
  }

  v28 = *(v0 + 256);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  v24 = *(v0 + 184);
  v25 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = v1[18];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  *(v0 + 40) = v8;
  *(v0 + 48) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v12 = *(v5 + 16);
  v12(boxed_opaque_existential_1, v9, v8);
  v12(v4, v9, v8);
  v13 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v7;
  *(v14 + 3) = v8;
  *(v14 + 4) = v25;
  *(v14 + 5) = v6;
  (*(v5 + 32))(&v14[v13], v4, v8);
  *(v0 + 56) = &async function pointer to partial apply for closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  *(v0 + 64) = v14;
  *(v0 + 72) = 1;
  v15 = swift_task_alloc();
  *(v0 + 264) = v15;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v25;
  v15[5] = v6;
  v15[6] = v9;
  v15[7] = v1;
  v15[8] = v28;
  v16 = swift_task_alloc();
  *(v0 + 272) = v16;
  *v16 = v0;
  v16[1] = TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  v17 = *(v0 + 256);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 144);
  v21 = *(v0 + 112);
  v22 = *(v0 + 96);
  v27 = *(v0 + 128);

  return TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(v18, v19, v22, v0 + 16, v17, &async function pointer to partial apply for closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:), v15, v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  }

  else
  {
    v5 = *(v2 + 264);

    outlined destroy of TokenGenerator.CompleteGenerableConfigurationInput(v2 + 16);
    v4 = TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[29];
  v13 = v0[30];
  v14 = v0[32];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  v12 = v0[25];
  v15 = v0[24];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  (*(v0[20] + 104))(v0[21], *MEMORY[0x1E69C6400], v0[19]);
  (*(v3 + 16))(v4, v2, v6);
  ChatMessageResponse.init(role:content:)();
  outlined init with copy of PromptCompletion(v5, v7, type metadata accessor for PromptCompletion);
  outlined init with copy of PromptCompletion(v5, v12, type metadata accessor for PromptCompletion);
  v9 = type metadata accessor for TokenGeneratorChatResponseGenerableAdditionalInfo(0);
  InferenceResponse.init(_:)(v12, v7 + *(v9 + 20));
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v5, type metadata accessor for PromptCompletion);
  (*(v3 + 8))(v2, v6);
  (*(v1 + 8))(v14, v13);

  v10 = v0[1];

  return v10();
}

{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v10 = v0[21];

  outlined destroy of TokenGenerator.CompleteGenerableConfigurationInput((v0 + 2));
  (*(v4 + 8))(v2, v3);

  v11 = v0[1];
  v12 = v0[35];

  return v11();
}

uint64_t closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(type metadata accessor for RunnableConfigurationStorage() - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = *(*(type metadata accessor for OverridableConfigurationStorage() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a6;
  v8[7] = a8;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v8[11] = v12;
  v13 = *(v12 - 8);
  v8[12] = v13;
  v14 = *(v13 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v16 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  v8[16] = v16;
  v17 = *(v16 - 8);
  v8[17] = v17;
  v18 = *(v17 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)()
{
  v1 = v0[15];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v8 = 1;
  }

  else
  {
    v9 = v0[14];
    v11 = v0[9];
    v10 = v0[10];
    v32 = v0[8];
    v13 = v0[4];
    v12 = v0[5];
    (*(v6 + 32))(v0[19], v7, v5);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v10, MEMORY[0x1E69A1568]);
    (*(v11 + 8))(v10, v32);
    v14 = v0[19];
    v15 = v0[17];
    v16 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[2];
    (*(v15 + 16))(v0[18], v14, v16);
    (*(v20 + 16))(v18, v17, v19);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v20 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    v8 = 0;
  }

  v23 = v0[18];
  v22 = v0[19];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[13];
  v27 = v0[10];
  v28 = v0[2];
  v29 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v29 - 8) + 56))(v28, v8, 1, v29);

  v30 = v0[1];

  return v30();
}

uint64_t protocol witness for ChatLanguageModelProvidingOneShotGenerable._oneShotResponse<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *v8;
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t TokenGenerator._respondMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._respondMultiElement<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._respondMultiElement<A, B>(type:configuration:)()
{
  v1 = v0[11];
  if (v1[3])
  {
    v3 = v1[6];
    v2 = v1[7];
  }

  v19 = v0[14];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v1[18];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  v0[2] = 0;
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Array();
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = v0 + 2;
  v11 = swift_task_alloc();
  v0[16] = v11;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v4;
  v11[5] = v5;
  v11[6] = v8;
  v11[7] = v1;
  v11[8] = v19;
  v12 = swift_task_alloc();
  v0[17] = v12;
  type metadata accessor for GenerativeStream();
  v0[3] = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  *v12 = v0;
  v12[1] = TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[6];
  v16 = v0[5];
  v25 = v0[10];
  v23 = v0[8];
  v24 = v0[9];
  v22 = v0[7];
  v17 = v0[4];

  return TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v17, v16, v15, v20, v13, partial apply for specialized closure #1 in TokenGenerator._respondMultiElement<A, B>(type:configuration:), v10, &async function pointer to partial apply for closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);

    v4 = TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[2];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v23;
  *(v8 + 152) = v22;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = *(*(type metadata accessor for StringResponseSanitizerRunnerConfiguration() - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v13 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  *(v8 + 208) = v13;
  v14 = *(v13 - 8);
  *(v8 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v16 = type metadata accessor for StringResponseSanitizerWithRunner();
  *(v8 + 232) = v16;
  v17 = *(v16 - 8);
  *(v8 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 272), v5, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 312);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 264), &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v9 = *(MEMORY[0x1E69A0918] + 4);
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = v8 & 1;
    v17 = v0 + 16;
  }

  else
  {
    v18 = *(v0 + 256);
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    v21 = *(v0 + 232);
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v25 = *(v0 + 128);
    v24 = *(v0 + 136);
    (*(v20 + 32))(v18, *(v0 + 264), v21);
    (*(v20 + 16))(v19, v18, v21);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v23, MEMORY[0x1E69A1558]);
    v26 = *(v0 + 248);
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    LOBYTE(v22) = *(v0 + 312);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    *(v0 + 80) = v29;
    *(v0 + 88) = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type StringResponseSanitizerWithConfiguration and conformance StringResponseSanitizerWithConfiguration, MEMORY[0x1E69A1550]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v28 + 16))(boxed_opaque_existential_1, v27, v29);
    v32 = *(MEMORY[0x1E69A0918] + 4);
    v33 = swift_task_alloc();
    *(v0 + 296) = v33;
    *v33 = v0;
    v33[1] = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = v22 & 1;
    v17 = v0 + 56;
  }

  return MEMORY[0x1EEE0A3D0](v15, v13, v14, v16, v17, v12, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(v2 + 288) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 16, &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);
  if (v0)
  {
    v4 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  else
  {
    v4 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v6 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 56, &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);
    v4 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[33];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[34], &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[33];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[34], &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);

  v7 = v0[1];

  return v7();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[34], &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v0 + 7), &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);
  v5 = v0[38];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];

  v13 = v0[1];

  return v13();
}

uint64_t TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v9 + 1440) = v8;
  *(v9 + 1432) = v33;
  *(v9 + 1416) = v32;
  *(v9 + 1408) = v31;
  *(v9 + 1400) = v30;
  *(v9 + 1392) = v29;
  *(v9 + 1376) = v28;
  *(v9 + 1368) = a8;
  *(v9 + 1360) = a5;
  *(v9 + 1352) = a4;
  *(v9 + 1344) = a3;
  *(v9 + 1336) = a1;
  *(v9 + 1448) = *v8;
  v10 = type metadata accessor for ChatMessageRole();
  *(v9 + 1456) = v10;
  v11 = *(v10 - 8);
  *(v9 + 1464) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 1472) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  *(v9 + 1480) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  *(v9 + 1488) = v14;
  v15 = *(v14 - 8);
  *(v9 + 1496) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 1504) = swift_task_alloc();
  v17 = *(v31 - 8);
  *(v9 + 1512) = v17;
  *(v9 + 1520) = *(v17 + 64);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = swift_task_alloc();
  v18 = type metadata accessor for GenerativeFunctionInstrumenter();
  *(v9 + 1544) = v18;
  v19 = *(v18 - 8);
  *(v9 + 1552) = v19;
  *(v9 + 1560) = *(v19 + 64);
  *(v9 + 1568) = swift_task_alloc();
  *(v9 + 1576) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  *(v9 + 1584) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v9 + 1592) = swift_task_alloc();
  *(v9 + 1600) = swift_task_alloc();
  v22 = *(v30 - 8);
  *(v9 + 1608) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 1616) = swift_task_alloc();
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v70 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1344);
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1408), *(v0 + 1432), v0 + 16);
  v3 = *(v0 + 176);
  v2 = *(v0 + 192);
  v4 = *(v0 + 160);
  *(v0 + 616) = v3;
  *(v0 + 632) = v2;
  v5 = *(v0 + 192);
  *(v0 + 648) = *(v0 + 208);
  v7 = *(v0 + 112);
  v6 = *(v0 + 128);
  v8 = *(v0 + 96);
  *(v0 + 552) = v7;
  *(v0 + 568) = v6;
  v9 = *(v0 + 128);
  v11 = *(v0 + 144);
  v10 = *(v0 + 160);
  *(v0 + 584) = v11;
  *(v0 + 600) = v10;
  v13 = *(v0 + 48);
  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  *(v0 + 488) = v13;
  *(v0 + 504) = v12;
  v15 = *(v0 + 64);
  v17 = *(v0 + 80);
  v16 = *(v0 + 96);
  *(v0 + 520) = v17;
  *(v0 + 536) = v16;
  v18 = *(v0 + 32);
  v19 = *(v0 + 16);
  *(v0 + 456) = v19;
  *(v0 + 472) = v18;
  *(v0 + 400) = v3;
  *(v0 + 416) = v5;
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 336) = v7;
  *(v0 + 352) = v9;
  *(v0 + 368) = v11;
  *(v0 + 384) = v4;
  *(v0 + 272) = v13;
  *(v0 + 288) = v15;
  *(v0 + 304) = v17;
  *(v0 + 320) = v8;
  *(v0 + 664) = *(v0 + 224);
  *(v0 + 448) = *(v0 + 224);
  *(v0 + 240) = v19;
  *(v0 + 256) = v14;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 240) == 1)
  {
    v69 = 1;
    v20 = 0;
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 456, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v20 = *(v0 + 344);
    v69 = *(v0 + 352);
  }

  v21 = *(v0 + 1552);
  v22 = *(v0 + 1544);
  v23 = *(v0 + 1536);
  v58 = *(v0 + 1568);
  v59 = *(v0 + 1528);
  v61 = *(v0 + 1520);
  v62 = *(v0 + 1560);
  v24 = *(v0 + 1512);
  v68 = *(v0 + 1440);
  v25 = *(v0 + 1400);
  v26 = *(v0 + 1360);
  v66 = v25;
  v67 = *(v0 + 1352);
  v57 = *(v0 + 1344);
  v27 = *(v21 + 16);
  v63 = *(v0 + 1408);
  v28 = *(v0 + 1408);
  v60 = v28;
  v29 = *(v0 + 1424);
  v64 = v29;
  v65 = *(v0 + 1384);
  v30 = *(v0 + 1576);
  v27();
  v31 = *(v24 + 16);
  v31(v23, v57, v28);
  (v27)(v58, v30, v22);
  v31(v59, v23, v28);
  v32 = (*(v21 + 80) + 72) & ~*(v21 + 80);
  v33 = (v62 + *(v24 + 80) + v32) & ~*(v24 + 80);
  v34 = (v61 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v0 + 1640) = v35;
  *(v35 + 16) = v65;
  *(v35 + 32) = v66;
  *(v35 + 40) = v63;
  *(v35 + 56) = v64;
  (*(v21 + 32))(v35 + v32, v30, v22);
  (*(v24 + 32))(v35 + v33, v23, v60);
  *(v35 + v34) = v68;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;

  if (v69)
  {
    *(v0 + 1672) = mach_absolute_time();
    v36 = swift_task_alloc();
    *(v0 + 1680) = v36;
    *v36 = v0;
    v36[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v37 = *(v0 + 1568);
    v38 = *(v0 + 1528);
    v39 = *(v0 + 1504);
    v40 = *(v0 + 1440);
    v41 = *(v0 + 1400);
    v42 = *(v0 + 1392);
    v43 = *(v0 + 1384);
    v44 = *(v0 + 1352);
    v45 = *MEMORY[0x1E69E9840];
    v73 = *(v0 + 1424);
    v74 = *(v0 + 1432);
    v72 = *(v0 + 1408);

    return closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v39, v37, v38, v40, v44, v43, v42, v41);
  }

  else
  {
    v47 = *(v0 + 1528);
    v48 = *(v0 + 1512);
    v49 = *(v0 + 1408);
    (*(*(v0 + 1552) + 8))(*(v0 + 1568), *(v0 + 1544));
    (*(v48 + 8))(v47, v49);
    v50 = swift_task_alloc();
    *(v0 + 1648) = v50;
    v50[2] = &async function pointer to partial apply for closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v50[3] = v35;
    v50[4] = v20;
    v51 = *(MEMORY[0x1E69E88A0] + 4);
    v52 = swift_task_alloc();
    *(v0 + 1656) = v52;
    *v52 = v0;
    v52[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v53 = *(v0 + 1592);
    v54 = *(v0 + 1584);
    v55 = *(v0 + 1488);
    v56 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DD58](v53, v55, v54, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v50, v55);
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 1656);
  v9 = *v1;
  *(*v1 + 1664) = v0;

  if (v0)
  {
    v4 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v5 = *(v2 + 1648);

    v4 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 1680);
  v4 = *v1;
  *(*v1 + 1688) = v0;

  v5 = v2[191];
  v6 = v2[189];
  v7 = v2[176];
  (*(v2[194] + 8))(v2[196], v2[193]);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v8 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v59 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1592);
  v4 = *(v0 + 1584);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1488);

  v7 = *(v3 + *(v4 + 48));
  (*(v5 + 32))(v2, v3, v6);
  v8 = *(v0 + 1664);
  v9 = *(v0 + 1432);
  v10 = *(v0 + 1408);
  v11 = *(v0 + 1344);
  *(*(v0 + 1600) + *(*(v0 + 1584) + 48)) = v7;
  *(v0 + 1320) = 0;
  *(v0 + 1328) = 1;
  GenerativeConfigurationProtocol.samplingParameters.getter(v10, v9, v0 + 672);
  if (v8)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1600), &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
    v12 = *(v0 + 1632);
    v13 = *(v0 + 1624);
    v14 = *(v0 + 1616);
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1592);
    v17 = *(v0 + 1576);
    v18 = *(v0 + 1568);
    v50 = *(v0 + 1536);
    v51 = *(v0 + 1528);
    v53 = *(v0 + 1504);
    v55 = *(v0 + 1480);
    v57 = *(v0 + 1472);
    v19 = *(v0 + 1360);
    MEMORY[0x1AC5A6AE0](v8);
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    swift_willThrow();

    v20 = *(v0 + 8);
    v21 = *MEMORY[0x1E69E9840];

    return v20();
  }

  else
  {
    v24 = *(v0 + 832);
    v23 = *(v0 + 848);
    v25 = *(v0 + 816);
    *(v0 + 1264) = v24;
    *(v0 + 1280) = v23;
    v26 = *(v0 + 848);
    *(v0 + 1296) = *(v0 + 864);
    v28 = *(v0 + 768);
    v27 = *(v0 + 784);
    v29 = *(v0 + 752);
    *(v0 + 1200) = v28;
    *(v0 + 1216) = v27;
    v30 = *(v0 + 784);
    v32 = *(v0 + 800);
    v31 = *(v0 + 816);
    *(v0 + 1232) = v32;
    *(v0 + 1248) = v31;
    v34 = *(v0 + 704);
    v33 = *(v0 + 720);
    v35 = *(v0 + 688);
    *(v0 + 1136) = v34;
    *(v0 + 1152) = v33;
    v36 = *(v0 + 720);
    v38 = *(v0 + 736);
    v37 = *(v0 + 752);
    *(v0 + 1168) = v38;
    *(v0 + 1184) = v37;
    v39 = *(v0 + 688);
    v40 = *(v0 + 672);
    *(v0 + 1104) = v40;
    *(v0 + 1120) = v39;
    *(v0 + 1048) = v24;
    *(v0 + 1064) = v26;
    *(v0 + 1080) = *(v0 + 864);
    *(v0 + 984) = v28;
    *(v0 + 1000) = v30;
    *(v0 + 1016) = v32;
    *(v0 + 1032) = v25;
    *(v0 + 920) = v34;
    *(v0 + 936) = v36;
    *(v0 + 952) = v38;
    *(v0 + 968) = v29;
    *(v0 + 1312) = *(v0 + 880);
    *(v0 + 1096) = *(v0 + 880);
    *(v0 + 888) = v40;
    *(v0 + 904) = v35;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 888) != 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 1104, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
      if ((*(v0 + 1000) & 1) == 0)
      {
        *(v0 + 1320) = *(v0 + 992) - v7;
        *(v0 + 1328) = 0;
      }
    }

    v41 = *(v0 + 1600);
    v42 = *(v0 + 1448);
    v43 = *(v0 + 1432);
    v56 = *(v0 + 1416);
    v58 = *(v0 + 1400);
    v52 = *(v0 + 1384);
    v54 = *(v0 + 1368);
    (*(*(v0 + 1552) + 56))(*(v0 + 1480), 1, 1, *(v0 + 1544));
    v44 = swift_task_alloc();
    *(v0 + 1696) = v44;
    *(v44 + 16) = v52;
    *(v44 + 32) = v58;
    *(v44 + 48) = v56;
    *(v44 + 64) = v43;
    *(v44 + 72) = v54;
    *(v44 + 88) = v41;
    *(v44 + 96) = v0 + 1320;
    v45 = swift_task_alloc();
    *(v0 + 1704) = v45;
    *v45 = v0;
    v45[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v46 = *(v0 + 1624);
    v47 = *(v0 + 1480);
    v48 = *(v0 + 1400);
    v49 = *MEMORY[0x1E69E9840];

    return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v46, v47, &async function pointer to partial apply for closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:));
  }
}

{
  v20 = *MEMORY[0x1E69E9840];
  v1 = v0[206];
  v2 = v0[205];

  v3 = v0[208];
  v4 = v0[204];
  v5 = v0[203];
  v6 = v0[202];
  v7 = v0[200];
  v8 = v0[199];
  v9 = v0[197];
  v15 = v0[196];
  v16 = v0[192];
  v17 = v0[191];
  v18 = v0[188];
  v10 = v0[185];
  v19 = v0[184];
  v11 = v0[170];
  MEMORY[0x1AC5A6AE0](v3);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v12 = v0[1];
  v13 = *MEMORY[0x1E69E9840];

  return v12();
}

{
  v63 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1672);
  (*(*(v0 + 1496) + 16))(*(v0 + 1600), *(v0 + 1504), *(v0 + 1488));
  v2 = mach_absolute_time();
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + 228) = 0;
  v5 = *(v0 + 1640);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 1496);
  v8 = *(v0 + 1488);
  *(v0 + 232) = 0;
  mach_timebase_info((v0 + 228));

  (*(v7 + 8))(v6, v8);
  LODWORD(v9) = *(v0 + 228);
  LODWORD(v10) = *(v0 + 232);
  v11 = v4 * v9 / (v10 * 1000000000.0);
  v12 = *(v0 + 1688);
  v13 = *(v0 + 1432);
  v14 = *(v0 + 1408);
  v15 = *(v0 + 1344);
  *(*(v0 + 1600) + *(*(v0 + 1584) + 48)) = v11;
  *(v0 + 1320) = 0;
  *(v0 + 1328) = 1;
  GenerativeConfigurationProtocol.samplingParameters.getter(v14, v13, v0 + 672);
  if (v12)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1600), &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
    v16 = *(v0 + 1632);
    v17 = *(v0 + 1624);
    v18 = *(v0 + 1616);
    v19 = *(v0 + 1600);
    v20 = *(v0 + 1592);
    v21 = *(v0 + 1576);
    v22 = *(v0 + 1568);
    v54 = *(v0 + 1536);
    v55 = *(v0 + 1528);
    v57 = *(v0 + 1504);
    v59 = *(v0 + 1480);
    v61 = *(v0 + 1472);
    v23 = *(v0 + 1360);
    MEMORY[0x1AC5A6AE0](v12);
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    swift_willThrow();

    v24 = *(v0 + 8);
    v25 = *MEMORY[0x1E69E9840];

    return v24();
  }

  else
  {
    v28 = *(v0 + 832);
    v27 = *(v0 + 848);
    v29 = *(v0 + 816);
    *(v0 + 1264) = v28;
    *(v0 + 1280) = v27;
    v30 = *(v0 + 848);
    *(v0 + 1296) = *(v0 + 864);
    v32 = *(v0 + 768);
    v31 = *(v0 + 784);
    v33 = *(v0 + 752);
    *(v0 + 1200) = v32;
    *(v0 + 1216) = v31;
    v34 = *(v0 + 784);
    v36 = *(v0 + 800);
    v35 = *(v0 + 816);
    *(v0 + 1232) = v36;
    *(v0 + 1248) = v35;
    v38 = *(v0 + 704);
    v37 = *(v0 + 720);
    v39 = *(v0 + 688);
    *(v0 + 1136) = v38;
    *(v0 + 1152) = v37;
    v40 = *(v0 + 720);
    v42 = *(v0 + 736);
    v41 = *(v0 + 752);
    *(v0 + 1168) = v42;
    *(v0 + 1184) = v41;
    v43 = *(v0 + 688);
    v44 = *(v0 + 672);
    *(v0 + 1104) = v44;
    *(v0 + 1120) = v43;
    *(v0 + 1048) = v28;
    *(v0 + 1064) = v30;
    *(v0 + 1080) = *(v0 + 864);
    *(v0 + 984) = v32;
    *(v0 + 1000) = v34;
    *(v0 + 1016) = v36;
    *(v0 + 1032) = v29;
    *(v0 + 920) = v38;
    *(v0 + 936) = v40;
    *(v0 + 952) = v42;
    *(v0 + 968) = v33;
    *(v0 + 1312) = *(v0 + 880);
    *(v0 + 1096) = *(v0 + 880);
    *(v0 + 888) = v44;
    *(v0 + 904) = v39;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 888) != 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 1104, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
      if ((*(v0 + 1000) & 1) == 0)
      {
        *(v0 + 1320) = *(v0 + 992) - v11;
        *(v0 + 1328) = 0;
      }
    }

    v45 = *(v0 + 1600);
    v46 = *(v0 + 1448);
    v47 = *(v0 + 1432);
    v60 = *(v0 + 1416);
    v62 = *(v0 + 1400);
    v56 = *(v0 + 1384);
    v58 = *(v0 + 1368);
    (*(*(v0 + 1552) + 56))(*(v0 + 1480), 1, 1, *(v0 + 1544));
    v48 = swift_task_alloc();
    *(v0 + 1696) = v48;
    *(v48 + 16) = v56;
    *(v48 + 32) = v62;
    *(v48 + 48) = v60;
    *(v48 + 64) = v47;
    *(v48 + 72) = v58;
    *(v48 + 88) = v45;
    *(v48 + 96) = v0 + 1320;
    v49 = swift_task_alloc();
    *(v0 + 1704) = v49;
    *v49 = v0;
    v49[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v50 = *(v0 + 1624);
    v51 = *(v0 + 1480);
    v52 = *(v0 + 1400);
    v53 = *MEMORY[0x1E69E9840];

    return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v50, v51, &async function pointer to partial apply for closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:));
  }
}

{
  v19 = *MEMORY[0x1E69E9840];
  v1 = v0[205];

  v2 = v0[211];
  v3 = v0[204];
  v4 = v0[203];
  v5 = v0[202];
  v6 = v0[200];
  v7 = v0[199];
  v8 = v0[197];
  v14 = v0[196];
  v15 = v0[192];
  v16 = v0[191];
  v17 = v0[188];
  v9 = v0[185];
  v18 = v0[184];
  v10 = v0[170];
  MEMORY[0x1AC5A6AE0](v2);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 1704);
  v4 = *v1;
  *(*v1 + 1712) = v0;

  v5 = *(v2 + 1696);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 1480), &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  if (v0)
  {
    v6 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v6 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v22 = *MEMORY[0x1E69E9840];
  v1 = v0[204];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
  v5 = v0[200];
  v15 = v0[199];
  v16 = v0[197];
  v17 = v0[196];
  v18 = v0[192];
  v19 = v0[191];
  v20 = v0[188];
  v21 = v0[185];
  v6 = v0[184];
  v7 = v0[183];
  v8 = v0[182];
  v9 = v0[175];
  v10 = v0[170];
  v14 = v0[167];
  (*(v4 + 32))(v1);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  GenerativeFunctionInstrumenter.executionEnd(error:)();
  (*(v7 + 104))(v6, *MEMORY[0x1E69C6400], v8);
  (*(v4 + 16))(v3, v1, v9);
  ChatMessageResponse.init(role:content:)();
  (*(v4 + 8))(v1, v9);

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

{
  v18 = *MEMORY[0x1E69E9840];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[200], &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  v1 = v0[214];
  v2 = v0[204];
  v3 = v0[203];
  v4 = v0[202];
  v5 = v0[200];
  v6 = v0[199];
  v7 = v0[197];
  v13 = v0[196];
  v14 = v0[192];
  v15 = v0[191];
  v16 = v0[188];
  v8 = v0[185];
  v17 = v0[184];
  v9 = v0[170];
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v10 = v0[1];
  v11 = *MEMORY[0x1E69E9840];

  return v10();
}

uint64_t TokenGenerator._respondSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._respondSingleElement<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._respondSingleElement<A, B>(type:configuration:)()
{
  v1 = v0[10];
  if (v1[3])
  {
    v3 = v1[6];
    v2 = v1[7];
  }

  v20 = v0[13];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v1[18];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  v0[2] = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_allocObject();
  v0[14] = v11;
  *(v11 + 16) = v0 + 2;
  v12 = swift_task_alloc();
  v0[15] = v12;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v4;
  v12[5] = v5;
  v12[6] = v8;
  v12[7] = v1;
  v12[8] = v20;
  v13 = swift_task_alloc();
  v0[16] = v13;
  swift_getAssociatedConformanceWitness();
  *v13 = v0;
  v13[1] = TokenGenerator._respondSingleElement<A, B>(type:configuration:);
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[5];
  v17 = v0[4];
  v25 = v0[9];
  v23 = v0[7];
  v24 = v0[8];
  v22 = v0[6];
  v18 = v0[3];

  return TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v18, v17, v16, AssociatedTypeWitness, v14, partial apply for specialized closure #1 in TokenGenerator._completeSingleElement<A, B>(type:configuration:), v11, &async function pointer to partial apply for closure #2 in TokenGenerator._respondSingleElement<A, B>(type:configuration:));
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = TokenGenerator._respondSingleElement<A, B>(type:configuration:);
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 120);

    v4 = TokenGenerator._respondSingleElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[2];

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  v6 = v0[2];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];
  v8 = v0[17];

  return v7();
}

uint64_t specialized closure #1 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(uint64_t *a1)
{
  swift_beginAccess();
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v3 = type metadata accessor for CatalogClient();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v2 = CatalogClient.init()();
    *a1 = v2;
  }

  swift_endAccess();

  return v2;
}

uint64_t closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v33;
  *(v8 + 104) = v32;
  *(v8 + 88) = a8;
  *(v8 + 96) = v31;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v10 = *(v31 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v12 = *(*(type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = *(*(type metadata accessor for RunnableConfigurationStorage() - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v14 = *(*(type metadata accessor for OverridableConfigurationStorage() - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v15 = type metadata accessor for ChatMessagesPrompt();
  *(v8 + 176) = v15;
  v16 = *(v15 - 8);
  *(v8 + 184) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v8 + 200) = v18;
  v19 = *(v18 - 8);
  *(v8 + 208) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v21 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  *(v8 + 224) = v21;
  v22 = *(v21 - 8);
  *(v8 + 232) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v25 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  *(v8 + 264) = v25;
  v26 = *(v25 - 8);
  *(v8 + 272) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[32];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[5];
  v5 = v0[6];
  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v9 = 1;
  }

  else
  {
    v10 = v0[31];
    v12 = v0[26];
    v11 = v0[27];
    v41 = v0[25];
    v13 = v0[7];
    v14 = v0[5];
    (*(v7 + 32))(v0[36], v8, v6);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v11, MEMORY[0x1E69A1568]);
    (*(v12 + 8))(v11, v41);
    v15 = v0[38];
    v16 = v0[36];
    v17 = v0[33];
    v18 = v0[34];
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[28];
    v22 = v0[29];
    (*(v18 + 16))(v0[35], v16, v17);
    (*(v22 + 16))(v20, v19, v21);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v22 + 8))(v19, v21);
    (*(v18 + 8))(v16, v17);
    v9 = 0;
  }

  v23 = v0[38];
  v24 = v0[24];
  v26 = v0[20];
  v25 = v0[21];
  v27 = v0[17];
  v40 = v0[37];
  v42 = v0[18];
  v28 = v0[15];
  v29 = v0[12];
  v30 = v0[6];
  v31 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v31 - 8) + 56))(v23, v9, 1, v31);
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, v40, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v32 = swift_task_alloc();
  v0[39] = v32;
  *(v32 + 16) = v24;
  (*(v27 + 16))(v42, v30, v29);
  v33 = swift_task_alloc();
  v0[40] = v33;
  *v33 = v0;
  v33[1] = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v34 = v0[37];
  v36 = v0[18];
  v35 = v0[19];
  v37 = v0[15];
  v38 = v0[12];

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v35, v34, &async function pointer to partial apply for closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), v32, v36, 0, v38, v37);
}

{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  GenerativeFunctionInstrumenter.inferenceBegin()();
  v3 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  *(v0 + 16) = type metadata accessor for TokenGenerator();
  *(v0 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  *v5 = v0;
  v5[1] = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v6 = *(v0 + 152);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 32);
  v18 = *(v0 + 120);
  v16 = *(v0 + 88);
  v17 = *(v0 + 104);

  return closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v13, v9, v6, v11, v10, v12, v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    *(v2 + 352) = *(v2 + 16);
    v4 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v4 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v11 = v0[32];
  v12 = v0[31];
  v13 = v0[30];
  v14 = v0[27];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[18];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[16], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v8, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v5 + 8))(v6, v7);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[39];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[38], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v18 = v0[41];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1120) = v20;
  *(v8 + 1104) = v19;
  *(v8 + 1096) = v18;
  *(v8 + 1088) = v17;
  *(v8 + 1080) = a8;
  *(v8 + 1072) = a7;
  *(v8 + 1064) = a6;
  *(v8 + 1056) = a5;
  *(v8 + 1048) = a4;
  *(v8 + 1040) = a3;
  *(v8 + 1032) = a2;
  *(v8 + 1024) = a1;
  v9 = *(v18 - 8);
  *(v8 + 1128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 1136) = swift_task_alloc();
  v11 = type metadata accessor for GenerativeFunctionInstrumenter();
  *(v8 + 1144) = v11;
  v12 = *(v11 - 8);
  *(v8 + 1152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 1160) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR) - 8) + 64) + 15;
  *(v8 + 1168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = *(v0 + 1048);
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1096), *(v0 + 1120), v0 + 16);
  v2 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v2;
  *(v0 + 424) = *(v0 + 208);
  v3 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v3;
  v4 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v4;
  v5 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v5;
  v6 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v6;
  v7 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  v8 = *(v0 + 1168);
  v9 = *(v0 + 1160);
  v10 = *(v0 + 1152);
  v30 = *(v0 + 1144);
  v31 = (v0 + 936);
  v11 = *(v0 + 1136);
  v12 = *(v0 + 1128);
  v13 = *(v0 + 1120);
  v14 = *(v0 + 1096);
  v29 = *(v0 + 1064);
  v15 = *(v0 + 1048);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v7;
  v16 = GenerativeConfigurationProtocol.tools.getter();
  *(v0 + 1176) = v16;
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v17 = v16;
  }

  v32 = v17;
  GenerativeConfigurationProtocol.toolChoice.getter();
  v18 = GenerativeConfigurationProtocol.documents.getter();
  *(v0 + 1184) = v18;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  (*(v10 + 16))(v9, v29, v30);
  (*(v12 + 16))(v11, v15, v14);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v9, v11, v14, (v0 + 880));
  v20 = *(v0 + 896);
  v21 = *(v0 + 904);
  v22 = *(v0 + 928);
  *v31 = *(v0 + 880);
  *(v0 + 952) = v20;
  *(v0 + 960) = v21;
  *(v0 + 968) = *(v0 + 912);
  *(v0 + 984) = v22;
  v23 = swift_task_alloc();
  *(v0 + 1192) = v23;
  *v23 = v0;
  v23[1] = closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v24 = *(v0 + 1168);
  v25 = *(v0 + 1056);
  v26 = *(v0 + 1040);
  v27 = *(v0 + 1032);
  v34 = *(v0 + 1080);
  v35 = *(v0 + 1112);

  return TokenGenerator.complete<A>(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:generating:metadata:)(v0 + 992, v26, v0 + 232, v32, v24, v19, v25, v31);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 232);
  v5 = *(*v1 + 1192);
  v6 = *v1;
  v3[150] = v0;

  v7 = v2[148];
  v8 = v2[147];
  v9 = v2[146];

  v10 = v3[118];
  if (v0)
  {
    v11 = v3[120];
    v12 = v3[122];
    v13 = v3[123];

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v14 = *(v3 + 31);
    *(v3 + 28) = *v4;
    *(v3 + 29) = v14;
    v15 = *(v3 + 39);
    v17 = *(v3 + 33);
    v16 = *(v3 + 35);
    *(v3 + 32) = *(v3 + 37);
    *(v3 + 33) = v15;
    *(v3 + 30) = v17;
    *(v3 + 31) = v16;
    v18 = *(v3 + 47);
    v20 = *(v3 + 41);
    v19 = *(v3 + 43);
    *(v3 + 36) = *(v3 + 45);
    *(v3 + 37) = v18;
    *(v3 + 34) = v20;
    *(v3 + 35) = v19;
    v22 = *(v3 + 51);
    v21 = *(v3 + 53);
    v23 = *(v3 + 49);
    *(v3 + 328) = *(v3 + 220);
    *(v3 + 39) = v22;
    *(v3 + 40) = v21;
    *(v3 + 38) = v23;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 56), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v25 = v3[120];
    v26 = v3[122];
    v27 = v3[123];

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
    v28 = *(v3 + 31);
    *(v3 + 83) = *v4;
    *(v3 + 85) = v28;
    v29 = *(v3 + 39);
    v31 = *(v3 + 33);
    v30 = *(v3 + 35);
    *(v3 + 91) = *(v3 + 37);
    *(v3 + 93) = v29;
    *(v3 + 87) = v31;
    *(v3 + 89) = v30;
    v32 = *(v3 + 47);
    v34 = *(v3 + 41);
    v33 = *(v3 + 43);
    *(v3 + 99) = *(v3 + 45);
    *(v3 + 101) = v32;
    *(v3 + 95) = v34;
    *(v3 + 97) = v33;
    v36 = *(v3 + 51);
    v35 = *(v3 + 53);
    v37 = *(v3 + 49);
    *(v3 + 436) = *(v3 + 220);
    *(v3 + 105) = v36;
    *(v3 + 107) = v35;
    *(v3 + 103) = v37;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v3 + 83), &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v24 = closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v24, 0, 0);
}

{
  v1 = *(v0 + 1168);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1136);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 992);
  v5 = *(v0 + 1016);
  v14 = *(v0 + 1080);
  v13 = *(v0 + 1112);
  type metadata accessor for TokenStream.AsyncIterator();
  v17 = *(v0 + 1000);
  v12 = *(v0 + 1096);
  v6 = swift_allocBox();
  v8 = v7;
  type metadata accessor for TokenStream();
  TokenStream.makeAsyncIterator()(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v14;
  *(v9 + 40) = v12;
  *(v9 + 56) = v13;
  *(v9 + 72) = v6;
  AsyncThrowingStream.init<>(unfolding:)();

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[150];
  v2 = v0[146];
  v3 = v0[145];
  v4 = v0[142];

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for TokenStream.AsyncIterator();
  v1[8] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  return TokenStream.AsyncIterator.next()(v5);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    swift_endAccess();
    v3 = closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[6];
  v2 = type metadata accessor for Token();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = Token.text.getter();
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  v8 = v0[5];
  v7 = v0[6];
  *v8 = v4;
  v8[1] = v5;

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[6];
  swift_endAccess();

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[6];
  v2 = *v1;
  v3 = *(v1 + 8);
  v10 = (v0[3] + *v0[3]);
  v4 = *(v0[3] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v2, v3);
}

{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for ChatLanguageModelProvidingGenerativeStreamable._respondMultiElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._respondMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for ChatLanguageModelProvidingGenerativeStreamable._respondSingleElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._respondSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:), 0, 0);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = Token.text.getter();
  v1[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return v1;
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorV05tokenG030generativeFunctionInstrumenter7timeoutACx_0A24FunctionsInstrumentation0alM0VSdSgtcSciRz0C10Generation0C0V7ElementRtzlu33_EE31B55F68B8D8F9B96F66F00FC05E4ELlfCAK0cG0VySSG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v48 = a7;
  v47 = a6;
  v50 = a5;
  v49 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  v45 = *(v19 - 8);
  v20 = *(v45 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v46 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v44 - v23;
  v55[0] = a1;
  v55[1] = a2;
  v55[2] = a3;
  v56 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type TokenStream<String> and conformance TokenStream<A>, &_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR);
  AsyncMapSequence.init(_:transform:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  v24 = swift_allocBox();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMR);
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  (*(v13 + 16))(v16, v18, v12);
  v28 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  (*(v13 + 32))(v29 + v28, v16, v12);
  v30 = (v29 + ((v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
  v30[1] = 0;

  v31 = v51;
  AsyncThrowingStream.init<>(unfolding:)();
  (*(v13 + 8))(v18, v12);

  v56 = v19;
  v57 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<String, Error> and conformance AsyncThrowingStream<A, B>, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  v33 = v45;
  (*(v45 + 16))(boxed_opaque_existential_1, v31, v19);
  v58 = v47;
  v59 = v48 & 1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, v54, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v52, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = v52[1];
  *(v35 + 24) = v52[0];
  *(v35 + 40) = v36;
  *(v35 + 56) = v52[2];
  *(v35 + 72) = v53;
  *(v35 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
  *(v35 + 88) = 0;

  v37 = v46;
  AsyncThrowingStream.init<>(unfolding:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);

  v38 = *(type metadata accessor for TokenGeneratorResponseStringStreamAsyncIterator(0) + 20);
  v39 = type metadata accessor for GenerativeFunctionInstrumenter();
  v40 = *(v39 - 8);
  v41 = v50;
  (*(v40 + 16))(v49 + v38, v50, v39);
  MEMORY[0x1AC5A5E40](v19);
  (*(v40 + 8))(v41, v39);
  v42 = *(v33 + 8);
  v42(v37, v19);
  v42(v51, v19);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:generativeFunctionInstrumenter:timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:generativeFunctionInstrumenter:timeout:), 0, 0);
}

uint64_t TokenGeneratorResponseStringStreamAsyncIterator.next()()
{
  *(v1 + 48) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGeneratorResponseStringStreamAsyncIterator.next(), 0, 0);
}

{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(type metadata accessor for TokenGeneratorResponseStringStreamAsyncIterator(0) + 20);
  *(v0 + 88) = v3;
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  *(v0 + 32) = type metadata accessor for TokenGenerator();
  *(v0 + 40) = v6;
  v7 = *(MEMORY[0x1E69E87B0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVySSs5Error_p_GMd, &_sScs8IteratorVySSs5Error_p_GMR);
  *v8 = v0;
  v8[1] = TokenGeneratorResponseStringStreamAsyncIterator.next();
  v10 = *(v0 + 48);

  return MEMORY[0x1EEE6DB98](v0 + 16, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    *(v2 + 80) = *(v2 + 32);
    v4 = TokenGeneratorResponseStringStreamAsyncIterator.next();
  }

  else
  {
    v4 = TokenGeneratorResponseStringStreamAsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (!v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 48);
    GenerativeFunctionInstrumenter.inferenceEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 56), &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v5 = *(v0 + 8);

  return v5(v1, v2);
}

void TokenGeneratorResponseStringStreamAsyncIterator.next()()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TokenGeneratorResponseStringStreamAsyncIterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return TokenGeneratorResponseStringStreamAsyncIterator.next()();
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return TokenGeneratorResponseStringStreamAsyncIterator.next()();
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *(*v3 + 32);
  v19 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    if (v8)
    {
      v10 = v6[4];
      v9 = v6[5];
      swift_getObjectType();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v17 = _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  else
  {
    if (v8)
    {
      v14 = v6[4];
      v15 = v6[5];
      swift_getObjectType();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v13 = v16;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v6[9] = a2;
    v6[10] = a1;
    v17 = _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_;
  }

  return MEMORY[0x1EEE6DFA0](v17, v11, v13);
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY0_, 0, 0);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY0_()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0) + 20);
  *(v0 + 112) = v3;
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  *(v0 + 16) = type metadata accessor for TokenGenerator();
  *(v0 + 24) = v6;
  v7 = *(MEMORY[0x1E69E87B0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMR);
  *v8 = v0;
  v8[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TQ1_;
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);

  return MEMORY[0x1EEE6DB98](v11, v9);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    *(v2 + 96) = *(v2 + 16);
    v4 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY3_;
  }

  else
  {
    v4 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY2_()
{
  if (!*(*(v0 + 40) + 24))
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 64);
    GenerativeFunctionInstrumenter.inferenceEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 72), &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v3 = *(v0 + 8);

  return v3();
}

void _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY3_()
{
  v1 = v0[11];
  v2 = v0[9];
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
  v0[13] = 0;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY4_()
{
  v1 = v0[9];
  v0[4] = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1[6] = a1;
  v2 = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v1[6] = a1;
  v2 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

uint64_t specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v5 + *(v0[7] + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  outlined init with copy of PromptCompletion(v5, v2, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  outlined init with copy of PromptCompletion(v2, v1, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[12] = v10;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v10 + v9, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  if (v8)
  {
    mach_absolute_time();
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v12 = v0[10];
    v13 = *MEMORY[0x1E69E9840];

    return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v12);
  }

  else
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[10], type metadata accessor for TokenGeneratorCompletionResponseStringStream);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
    v16 = swift_task_alloc();
    v0[13] = v16;
    v16[2] = &async function pointer to partial apply for specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v16[3] = v10;
    v16[4] = v7;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenst6result_Sd8durationtMd, &_sSS7content_SaySSG6tokenst6result_Sd8durationtMR);
    v18 = *(MEMORY[0x1E69E88A0] + 4);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v20 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DD58](v0 + 2, v15, v17, 0, 0, &closure #1 in withTimeout<A>(timeout:_:)specialized partial apply, v16, v15);
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);

  mach_absolute_time();
  *(v0 + 172) = 0;
  *(v0 + 168) = 0;
  mach_timebase_info((v0 + 168));

  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9(v5, v4, v6);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[12];

  v2 = v0[17];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

{
  v10 = *MEMORY[0x1E69E9840];
  v1 = v0[12];

  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];
  v8 = *MEMORY[0x1E69E9840];

  return v7(v3, v2, v4);
}

{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

{
  v21 = *MEMORY[0x1E69E9840];
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v5 + *(v0[7] + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  outlined init with copy of PromptCompletion(v5, v2, type metadata accessor for TokenGeneratorChatResponseStringStream);
  outlined init with copy of PromptCompletion(v2, v1, type metadata accessor for TokenGeneratorChatResponseStringStream);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[12] = v10;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v10 + v9, type metadata accessor for TokenGeneratorChatResponseStringStream);
  if (v8)
  {
    mach_absolute_time();
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v12 = v0[10];
    v13 = *MEMORY[0x1E69E9840];

    return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v12);
  }

  else
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[10], type metadata accessor for TokenGeneratorChatResponseStringStream);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
    v16 = swift_task_alloc();
    v0[13] = v16;
    v16[2] = &async function pointer to partial apply for specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v16[3] = v10;
    v16[4] = v7;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenst6result_Sd8durationtMd, &_sSS7content_SaySSG6tokenst6result_Sd8durationtMR);
    v18 = *(MEMORY[0x1E69E88A0] + 4);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v20 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DD58](v0 + 2, v15, v17, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v16, v15);
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

uint64_t specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = *v4;
  v9 = *(*v4 + 128);
  v10 = *v4;
  v8[17] = v3;

  v11 = v8[10];
  if (v3)
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v11, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
    v12 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v8[18] = a3;
    v8[19] = a2;
    v8[20] = a1;
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v11, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
    v12 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

{
  v15 = *MEMORY[0x1E69E9840];
  v8 = *v4;
  v9 = *(*v4 + 128);
  v10 = *v4;
  v8[17] = v3;

  v11 = v8[10];
  if (v3)
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v11, type metadata accessor for TokenGeneratorChatResponseStringStream);
    v12 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v8[18] = a3;
    v8[19] = a2;
    v8[20] = a1;
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v11, type metadata accessor for TokenGeneratorChatResponseStringStream);
    v12 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t partial apply for closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(a1, v1 + v6, v7, v4, v5);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(a3 - 8);
  v4[13] = v5;
  v4[14] = *(v5 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v24 = (*(v5 + 48))(v6, v5);
  v25 = v8;
  v9 = *(v3 + 16);
  v9(v1, v7, v6);
  v9(v2, v1, v6);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  (*(v3 + 32))(v11 + v10, v1, v6);
  if (v25)
  {
    mach_absolute_time();
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v13 = v0[15];
    v14 = v0[11];
    v15 = v0[12];
    v16 = *MEMORY[0x1E69E9840];

    return closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()((v0 + 6), v13, v14, v15);
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[11]);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
    v19 = swift_task_alloc();
    v0[18] = v19;
    v19[2] = &async function pointer to partial apply for closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v19[3] = v11;
    v19[4] = v24;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenst6result_Sd8durationtMd, &_sSS7content_SaySSG6tokenst6result_Sd8durationtMR);
    v21 = *(MEMORY[0x1E69E88A0] + 4);
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v23 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DD58](v0 + 2, v18, v20, 0, 0, &closure #1 in withTimeout<A>(timeout:_:)specialized partial apply, v19, v18);
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v6 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 136);

  v2 = *(v0 + 24);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 72);
  *v5 = *(v0 + 16);
  *(v5 + 8) = v2;

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[20];
  v5 = v0[15];
  v4 = v0[16];

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 136);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);

  mach_absolute_time();
  *(v0 + 188) = 0;
  *(v0 + 184) = 0;
  mach_timebase_info((v0 + 184));

  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 72);
  *v7 = v3;
  v7[1] = v2;
  v7[2] = v4;

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[17];

  v2 = v0[22];
  v4 = v0[15];
  v3 = v0[16];

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Token();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v5 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v1[4] = a1;
  v2 = type metadata accessor for Token();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v5 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v1 = *(v0 + 32);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return (specialized TokenStream.collect())(v0 + 16, v3, v2, v4, v5);
}

{
  v1 = *(v0 + 104);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 120) = v3;
  v5 = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
  *(v0 + 168) = *(v5 + 24);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  GenerativeFunctionInstrumenter.responseProcessingBegin()();
  v6 = *(v1 + 16);
  v7 = *(v0 + 104);
  if (v6)
  {
    v37 = v5;
    v38 = v4;
    v8 = *(v0 + 48);
    v42 = MEMORY[0x1E69E7CC0];
    v39 = v3;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v9 = v42;
    v10 = *(v8 + 16);
    v8 += 16;
    v11 = v7 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v40 = *(v8 + 56);
    v41 = v10;
    v12 = (v8 - 8);
    do
    {
      v13 = *(v0 + 56);
      v14 = *(v0 + 40);
      v41(v13, v11, v14);
      v15 = Token.text.getter();
      v17 = v16;
      (*v12)(v13, v14);
      v19 = *(v42 + 16);
      v18 = *(v42 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v42 + 16) = v19 + 1;
      v20 = v42 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v11 += v40;
      --v6;
    }

    while (v6);
    v21 = *(v0 + 104);
    v3 = v39;

    v5 = v37;
    v4 = v38;
  }

  else
  {
    v22 = *(v0 + 104);

    v9 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 128) = v9;
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 64);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 32) + *(v5 + 20), v25, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 64), &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v26 = *(v0 + 168);
    v27 = *(v0 + 88);
    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = *(v0 + 32);
    GenerativeFunctionInstrumenter.responseProcessingEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    v31 = *(v0 + 8);
    v32 = *(v0 + 128);

    return v31(v4, v3, v32);
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    v34 = *(MEMORY[0x1E69A1548] + 4);
    v35 = swift_task_alloc();
    *(v0 + 136) = v35;
    *v35 = v0;
    v35[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v36 = *(v0 + 88);

    return MEMORY[0x1EEE0B778](v4, v3);
  }
}

{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 88);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 32);
  GenerativeFunctionInstrumenter.responseProcessingEnd()();
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  v8 = *(v0 + 8);
  v9 = *(v0 + 128);

  return v8(v1, v2, v9);
}

{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[18];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 32);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return (specialized TokenStream.collect())(v0 + 16, v3, v2, v4, v5);
}

{
  v1 = *(v0 + 104);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 120) = v3;
  v5 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  *(v0 + 168) = *(v5 + 24);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  GenerativeFunctionInstrumenter.responseProcessingBegin()();
  v6 = *(v1 + 16);
  v7 = *(v0 + 104);
  if (v6)
  {
    v37 = v5;
    v38 = v4;
    v8 = *(v0 + 48);
    v42 = MEMORY[0x1E69E7CC0];
    v39 = v3;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v9 = v42;
    v10 = *(v8 + 16);
    v8 += 16;
    v11 = v7 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v40 = *(v8 + 56);
    v41 = v10;
    v12 = (v8 - 8);
    do
    {
      v13 = *(v0 + 56);
      v14 = *(v0 + 40);
      v41(v13, v11, v14);
      v15 = Token.text.getter();
      v17 = v16;
      (*v12)(v13, v14);
      v19 = *(v42 + 16);
      v18 = *(v42 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v42 + 16) = v19 + 1;
      v20 = v42 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v11 += v40;
      --v6;
    }

    while (v6);
    v21 = *(v0 + 104);
    v3 = v39;

    v5 = v37;
    v4 = v38;
  }

  else
  {
    v22 = *(v0 + 104);

    v9 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 128) = v9;
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 64);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 32) + *(v5 + 20), v25, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 64), &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v26 = *(v0 + 168);
    v27 = *(v0 + 88);
    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = *(v0 + 32);
    GenerativeFunctionInstrumenter.responseProcessingEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    v31 = *(v0 + 8);
    v32 = *(v0 + 128);

    return v31(v4, v3, v32);
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    v34 = *(MEMORY[0x1E69A1548] + 4);
    v35 = swift_task_alloc();
    *(v0 + 136) = v35;
    *v35 = v0;
    v35[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v36 = *(v0 + 88);

    return MEMORY[0x1EEE0B778](v4, v3);
  }
}

uint64_t specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 136);
  v8 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {
    v9 = v6[15];
    v10 = v6[16];

    v11 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v12 = v6[15];

    v6[19] = a2;
    v6[20] = a1;
    v11 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  v6 = *v3;
  v7 = *(*v3 + 136);
  v8 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {
    v9 = v6[15];
    v10 = v6[16];

    v11 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v12 = v6[15];

    v6[19] = a2;
    v6[20] = a1;
    v11 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a2);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a2);
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Token();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = type metadata accessor for GenerativeFunctionInstrumenter();
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v14 = *(v13 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v1 = v0[9];
  (*(v0[11] + 16))(v0[10]);
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v0[22] = v2;
  v0[23] = v5;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return (specialized TokenStream.collect())(v0 + 6, v3, v2, v4, v5);
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[10];
  v5 = v0[11];
  v51 = v4;
  v54 = v0[25];
  v6 = v0[9];
  v47 = v0[6];
  v48 = v0[7];
  v0[27] = v48;
  v7 = *(v5 + 40);
  v0[28] = v7;
  v0[29] = (v5 + 40) & 0xFFFFFFFFFFFFLL | 0x65BD000000000000;
  v7();
  GenerativeFunctionInstrumenter.inferenceEnd()();
  v8 = *(v1 + 8);
  v0[30] = v8;
  v0[31] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  (v7)(v51, v5);
  GenerativeFunctionInstrumenter.responseProcessingBegin()();
  v8(v2, v3);
  v9 = *(v54 + 16);
  v10 = v0[25];
  if (v9)
  {
    v11 = v0[13];
    v56 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v12 = v56;
    v13 = *(v11 + 16);
    v11 += 16;
    v14 = v10 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v49 = *(v11 + 56);
    v52 = v13;
    v15 = (v11 - 8);
    do
    {
      v16 = v0[14];
      v17 = v0[12];
      v52(v16, v14, v17);
      v18 = Token.text.getter();
      v20 = v19;
      (*v15)(v16, v17);
      v22 = *(v56 + 16);
      v21 = *(v56 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      }

      *(v56 + 16) = v22 + 1;
      v23 = v56 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v14 += v49;
      --v9;
    }

    while (v9);
    v24 = v0[25];
    v25 = v48;
  }

  else
  {
    v26 = v0[25];

    v12 = MEMORY[0x1E69E7CC0];
    v25 = v48;
  }

  v0[32] = v12;
  v28 = v0[16];
  v27 = v0[17];
  v29 = v0[15];
  v30 = v0[9];
  (*(v0[11] + 32))(v0[10]);
  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[15], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v32 = v0[29];
    v31 = v0[30];
    v33 = v0[28];
    v34 = v0[21];
    v35 = v0[19];
    v45 = v0[18];
    v46 = v0[32];
    v50 = v0[15];
    v53 = v0[14];
    v55 = v0[31];
    v36 = v0[10];
    v44 = v0[11];
    v37 = v0[8];
    v38 = v0[9];
    v33(v36);
    GenerativeFunctionInstrumenter.responseProcessingEnd()();
    v31(v34, v35);
    (v33)(v36, v44);
    GenerativeFunctionInstrumenter.executionEnd(error:)();
    v31(v34, v35);
    *v37 = v47;
    v37[1] = v48;
    v37[2] = v46;

    v39 = v0[1];

    return v39();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v41 = *(MEMORY[0x1E69A1548] + 4);
    v42 = swift_task_alloc();
    v0[33] = v42;
    *v42 = v0;
    v42[1] = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v43 = v0[18];

    return MEMORY[0x1EEE0B778](v47, v25);
  }
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v14 = v0[35];
  v15 = v0[36];
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[21];
  v5 = v0[19];
  v12 = v0[18];
  v13 = v0[32];
  v16 = v0[15];
  v17 = v0[14];
  v18 = v0[31];
  v6 = v0[10];
  v11 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v3(v6);
  GenerativeFunctionInstrumenter.responseProcessingEnd()();
  v1(v4, v5);
  (v3)(v6, v11);
  GenerativeFunctionInstrumenter.executionEnd(error:)();
  v1(v4, v5);
  *v7 = v15;
  v7[1] = v14;
  v7[2] = v13;

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[34];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 184);
  v6 = *(*v2 + 176);
  v9 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v7 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v7 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v9 = v6[32];
    v10 = v6[27];

    v11 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v12 = v6[27];

    v6[35] = a2;
    v6[36] = a1;
    v11 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t specialized TokenStream.collect()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[5] = a3;
  v5[6] = a5;
  v5[4] = a1;
  v7 = type metadata accessor for String.Encoding();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = type metadata accessor for Token();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v13 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = type metadata accessor for PromptCompletion.Content(0);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v18 = *(*(type metadata accessor for PromptCompletion(0) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  v5[22] = v19;
  v5[23] = swift_task_alloc();

  v23 = (a4 + *a4);
  v20 = a4[1];
  v21 = swift_task_alloc();
  v5[24] = v21;
  *v21 = v5;
  v21[1] = specialized TokenStream.collect();

  return v23(v19);
}

uint64_t specialized TokenStream.collect()()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = specialized TokenStream.collect();
  }

  else
  {
    v3 = specialized TokenStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[23];
  v3 = v0[5];
  v2 = v0[6];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[22], v1, type metadata accessor for PromptCompletion);

  v4 = *(v1 + 32);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v1, type metadata accessor for PromptCompletion);
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
    v13 = v0[18];
    v14 = v0[15];
    v107 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v15 = v107;
    v16 = v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    do
    {
      v18 = v0[21];
      v19 = v0[16];
      outlined init with copy of PromptCompletion(v16, v19, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of PromptCompletion(v19, v18, type metadata accessor for PromptCompletion.Content);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v19, type metadata accessor for PromptCompletion.Segment);
      v21 = *(v107 + 16);
      v20 = *(v107 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
      }

      v22 = v0[21];
      *(v107 + 16) = v21 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v22, v107 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, type metadata accessor for PromptCompletion.Content);
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
    v24 = v0[18];
    v95 = v0[19];
    v25 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v24 + 72);
    v93 = v0[11];
    v104 = (v93 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    v97 = v0;
    v92 = v26;
    do
    {
      v29 = v0[19];
      v28 = v0[20];
      v30 = v0[17];
      outlined init with copy of PromptCompletion(v25, v28, type metadata accessor for PromptCompletion.Content);
      outlined init with copy of PromptCompletion(v28, v29, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = v0[19];
      v32 = v0[20];
      if (EnumCaseMultiPayload)
      {
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[20], type metadata accessor for PromptCompletion.Content);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v33, type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v34 = v0[13];
        v98 = v0[10];
        v101 = v0[14];
        v35 = *v33;
        v36 = v27;
        v38 = v95[1];
        v37 = v95[2];
        v39 = v95[3];
        v40 = v95[4];

        Token.init(text:)();
        v27 = v36;

        outlined consume of Data?(v39, v40);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v32, type metadata accessor for PromptCompletion.Content);
        v41 = *v104;
        (*v104)(v101, v34, v98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v43 = v27[2];
        v42 = v27[3];
        v0 = v97;
        if (v43 >= v42 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1, v27);
        }

        v44 = v97[14];
        v45 = v97[10];
        v27[2] = v43 + 1;
        v41(v27 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v43, v44, v45);
        v26 = v92;
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
  v96 = v27;
  if (v47)
  {
    v49 = v0[11];
    v108 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
    v48 = v108;
    v50 = *(v49 + 16);
    v49 += 16;
    v51 = v27 + ((*(v49 + 64) + 32) & ~*(v49 + 64));
    v99 = *(v49 + 56);
    v102 = v50;
    v52 = (v49 - 8);
    do
    {
      v53 = v0[12];
      v54 = v0[10];
      v102(v53, v51, v54);
      v55 = Token.text.getter();
      v57 = v56;
      result = (*v52)(v53, v54);
      v59 = *(v108 + 16);
      v58 = *(v108 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
      }

      *(v108 + 16) = v60;
      v61 = v108 + 16 * v59;
      *(v61 + 32) = v55;
      *(v61 + 40) = v57;
      v51 += v99;
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
  v67 = v0[8];
  v66 = v0[9];
  v68 = v0[7];

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

  v72 = v0[25];

  static Generable.decode(data:)();
  if (v72)
  {
    outlined consume of Data?(v69, v71);

    v74 = v0[22];
    v73 = v0[23];
    v76 = v0[20];
    v75 = v0[21];
    v77 = v0[19];
    v78 = v0[16];
    v80 = v0[13];
    v79 = v0[14];
    v81 = v0[12];
    v105 = v0[9];

    v82 = v0[1];

    return v82();
  }

  else
  {
    v84 = v0[22];
    v83 = v0[23];
    v86 = v0[20];
    v85 = v0[21];
    v87 = v0[19];
    v88 = v0[16];
    v94 = v0[14];
    v100 = v0[13];
    v103 = v0[12];
    v106 = v0[9];
    v89 = v0[4];
    outlined consume of Data?(v69, v71);
    v90 = v0[3];
    *v89 = v0[2];
    v89[1] = v90;

    v91 = v0[1];

    return v91(v96);
  }
}

{
  v1 = v0[5];
  v2 = v0[6];

  v15 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t TokenGeneratorResponsePromptCompletionStream.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR);
  v70 = *(v68 - 8);
  v2 = *(v70 + 64);
  v3 = MEMORY[0x1EEE9AC00](v68);
  *&v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v60 - v5;
  v72 = type metadata accessor for GenerativeFunctionInstrumenter();
  v71 = *(v72 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v60 - v11;
  v13 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v60 - v19;
  v21 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + v21[5], v12, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v22 = *v1;
    v23 = v1[3];
    v24 = v21[6];
    v25 = v71;
    v26 = *(v71 + 16);
    v66 = *(v1 + 1);
    v27 = v8;
    v28 = v72;
    v26(v8, v1 + v24, v72);
    v29 = (v1 + v21[7]);
    v30 = *v29;
    v31 = *(v29 + 8);
    *(&v79 + 1) = &type metadata for PromptCompletionStream;
    v80 = lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
    v32 = swift_allocObject();
    *(v32 + 16) = v22;
    *(v32 + 24) = v66;
    *(v32 + 40) = v23;
    *&v78 = v32;
    v81 = v30;
    v82 = v31;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v78, v77, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &v73, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v34 = swift_allocObject();
    v35 = v74;
    *(v34 + 24) = v73;
    *(v34 + 16) = v33;
    *(v34 + 40) = v35;
    *(v34 + 56) = v75;
    *(v34 + 72) = v76;
    *(v34 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
    *(v34 + 88) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
    v36 = v67;
    AsyncThrowingStream.init<>(unfolding:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);

    v37 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0);
    v26((v69 + *(v37 + 20)), v8, v28);
    v38 = v68;
    MEMORY[0x1AC5A5E40](v68);
    (*(v70 + 8))(v36, v38);
    (*(v25 + 8))(v27, v28);
  }

  else
  {
    v39 = *(v14 + 32);
    v65 = v20;
    v39(v20, v12, v13);
    v40 = *(v14 + 16);
    v41 = *(v1 + 1);
    v61 = *v1;
    v60 = v41;
    v64 = v18;
    v40(v18, v20, v13);
    v42 = v21[6];
    v63 = *(v71 + 16);
    v62 = v8;
    v63(v8, v1 + v42, v72);
    v43 = (v1 + v21[7]);
    v44 = *v43;
    v45 = *(v43 + 8);
    v78 = v61;
    v79 = v60;
    lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
    v46 = v67;
    StringResponseSanitizerWithConfiguration.scrub<A>(_:elementToContent:)();
    v47 = v68;
    *(&v79 + 1) = v68;
    v80 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<PromptCompletionEvent, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
    v49 = v70;
    (*(v70 + 16))(boxed_opaque_existential_1, v46, v47);
    v81 = v44;
    v82 = v45;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v78, v77, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &v73, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    v52 = v74;
    *(v51 + 24) = v73;
    *(v51 + 40) = v52;
    *(v51 + 56) = v75;
    *(v51 + 72) = v76;
    *(v51 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
    *(v51 + 88) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
    v53 = v66;
    AsyncThrowingStream.init<>(unfolding:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);

    v54 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0);
    v55 = v62;
    v56 = v72;
    v63((v69 + *(v54 + 20)), v62, v72);
    MEMORY[0x1AC5A5E40](v47);
    v57 = *(v49 + 8);
    v57(v53, v47);
    v57(v46, v47);
    (*(v71 + 8))(v55, v56);
    v58 = *(v14 + 8);
    v58(v64, v13);
    v58(v65, v13);
  }

  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v78, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
}

uint64_t closure #1 in TokenGeneratorResponsePromptCompletionStream.AsyncIterator.init(promptCompletionStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)(uint64_t a1)
{
  outlined init with copy of PromptCompletionEvent(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v3;

  outlined consume of Data?(v4, v5);
  return v1;
}

uint64_t TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next(), 0, 0);
}

uint64_t TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0) + 20);
  *(v0 + 80) = v3;
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  *(v0 + 16) = type metadata accessor for TokenGenerator();
  *(v0 + 24) = v6;
  v7 = *(MEMORY[0x1E69E87B0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMR);
  *v8 = v0;
  v8[1] = TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next();
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);

  return MEMORY[0x1EEE6DB98](v10, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    *(v2 + 72) = *(v2 + 16);
    v4 = TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next();
  }

  else
  {
    v4 = TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  if (!*(*(v0 + 32) + 24))
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 40);
    GenerativeFunctionInstrumenter.inferenceEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 48), &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v3 = *(v0 + 8);

  return v3();
}

void TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TokenGeneratorResponsePromptCompletionStream.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()(a1);
}

uint64_t _s15TokenGeneration0A39GeneratorResponsePromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = _s15TokenGeneration0A39GeneratorResponsePromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5(a1, a2, a3);
}

uint64_t _s15TokenGeneration0A39GeneratorResponsePromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t TokenGenerator._render<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v8 = type metadata accessor for PromptTemplateInfo();
  v5[22] = v8;
  v9 = *(v8 - 8);
  v5[23] = v9;
  v10 = *(v9 + 64) + 15;
  v5[24] = swift_task_alloc();
  v11 = type metadata accessor for PromptVariant();
  v5[25] = v11;
  v12 = *(v11 - 8);
  v5[26] = v12;
  v13 = *(v12 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v14 = type metadata accessor for Prompt.Rendering();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v16 = *(v15 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v18 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v5[34] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v20 = *(a3 - 8);
  v5[37] = v20;
  v21 = *(v20 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v22 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5[40] = v22;
  v23 = *(v22 - 8);
  v5[41] = v23;
  v24 = *(v23 + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._render<A>(configuration:), 0, 0);
}

{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v8 = type metadata accessor for PromptTemplateInfo();
  v5[22] = v8;
  v9 = *(v8 - 8);
  v5[23] = v9;
  v10 = *(v9 + 64) + 15;
  v5[24] = swift_task_alloc();
  v11 = type metadata accessor for PromptVariant();
  v5[25] = v11;
  v12 = *(v11 - 8);
  v5[26] = v12;
  v13 = *(v12 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v14 = type metadata accessor for Prompt.Rendering();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v16 = *(v15 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v18 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v5[34] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v20 = *(a3 - 8);
  v5[37] = v20;
  v21 = *(v20 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v22 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5[40] = v22;
  v23 = *(v22 - 8);
  v5[41] = v23;
  v24 = *(v23 + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._render<A>(configuration:), 0, 0);
}

uint64_t TokenGenerator._render<A>(configuration:)()
{
  v31 = v0;
  v1 = *(v0 + 160);
  if (v1[3])
  {
    v2 = v1[6];
    v3 = v1[7];
  }

  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  v25 = *(v0 + 304);
  v8 = *(v0 + 296);
  v23 = *(v0 + 320);
  v24 = *(v0 + 264);
  v9 = *(v0 + 144);
  v10 = *(v0 + 136);
  v11 = v1[18];
  v12 = *(v0 + 152);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v6 + 16))(v5, v4, v23);
  v13 = *(v8 + 16);
  v13(v7, v10, v9);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v5, v7, v9, &v26);
  *(v0 + 352) = v26;
  *(v0 + 360) = v27;
  *(v0 + 376) = v28;
  *(v0 + 384) = v29;
  *(v0 + 400) = v30;
  v14 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  v15 = swift_task_alloc();
  *(v0 + 408) = v15;
  v15[2] = v9;
  v15[3] = v12;
  v15[4] = v10;
  v13(v25, v10, v9);
  v16 = swift_task_alloc();
  *(v0 + 416) = v16;
  *v16 = v0;
  v16[1] = TokenGenerator._render<A>(configuration:);
  v17 = *(v0 + 304);
  v18 = *(v0 + 288);
  v19 = *(v0 + 264);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v18, v19, &async function pointer to partial apply for closure #1 in TokenGenerator._render<A>(configuration:), v15, v17, 0, v20, v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v11 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[47];
    v7 = v2[45];

    v8 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v9 = v2[51];

    v8 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v1 = v0[34];
  outlined init with copy of PromptCompletion(v0[36], v0[35], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v34 = v0[44];
  v9 = v0[35];
  v10 = v0[25];
  v11 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v32 = v0[49];
    v33 = v0[50];
    v12 = v0[27];
    v29 = v0[45];
    v30 = v0[47];
    v14 = v0[23];
    v13 = v0[24];
    v31 = v0[48];
    v16 = v0[21];
    v15 = v0[22];
    v28 = v0[46];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v14 + 32))(v13, v9, v15);
    (*(v11 + 32))(v12, v9 + v17, v10);
    (*(v11 + 16))(v16, v12, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
    v0[2] = v34;
    v0[3] = v29;
    v0[4] = v28;
    v0[5] = v30;
    v0[6] = v31;
    v0[7] = v32;
    v0[8] = v33;
    v18 = swift_task_alloc();
    v0[56] = v18;
    *v18 = v0;
    v18[1] = TokenGenerator._render<A>(configuration:);
    v19 = v0[31];
    v20 = v0[24];
    v22 = v0[20];
    v21 = v0[21];

    return TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)(v19, v21, v20, (v0 + 2));
  }

  else
  {
    (*(v11 + 32))(v0[28], v0[35], v0[25]);
    v0[9] = v34;
    v0[10] = v8;
    v0[11] = v7;
    v0[12] = v6;
    v0[13] = v5;
    v0[14] = v4;
    v0[15] = v3;
    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = TokenGenerator._render<A>(configuration:);
    v25 = v0[31];
    v26 = v0[28];
    v27 = v0[20];

    return TokenGenerator.render(prompt:metadata:)(v25, v26, (v0 + 9));
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v13 = *v1;
  v2[55] = v0;

  v4 = v2[9];
  v5 = v2[10];
  v2 += 9;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  outlined consume of RequestMetadata?(v4, v5);
  if (v0)
  {
    v11 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v11 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  v1 = v0[41];
  v11 = v0[40];
  v12 = v0[43];
  v13 = v0[42];
  v14 = v0[39];
  v10 = v0[36];
  v2 = v0[32];
  v17 = v0[35];
  v18 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  v15 = v0[38];
  v16 = v0[28];
  v19 = v0[27];
  v6 = v0[25];
  v20 = v0[24];
  v21 = v0[21];
  v9 = v0[16];
  (*(v0[26] + 8))();
  (*(v3 + 32))(v2, v4, v5);
  Prompt.Rendering.renderedString.getter();
  Prompt.Rendering.originalPrompt.getter();
  Prompt.Rendering.segments.getter();
  Prompt.Rendering.tokenIDs.getter();
  RawPrompt.init(text:originalPrompt:segments:tokenIDs:)();
  (*(v3 + 8))(v2, v5);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v10, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v1 + 8))(v12, v11);

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 168);
  v14 = *v1;
  v2[57] = v0;

  v5 = v2[2];
  v6 = v2[3];
  v2 += 2;
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  outlined consume of RequestMetadata?(v5, v6);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v0)
  {
    v12 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v12 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[41];
  v11 = v0[40];
  v12 = v0[43];
  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[38];
  v10 = v0[36];
  v16 = v0[35];
  v2 = v0[32];
  v17 = v0[33];
  v18 = v0[24];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v19 = v0[28];
  v6 = v0[22];
  v20 = v0[27];
  v21 = v0[21];
  v9 = v0[16];
  (*(v0[23] + 8))();
  (*(v4 + 32))(v2, v3, v5);
  Prompt.Rendering.renderedString.getter();
  Prompt.Rendering.originalPrompt.getter();
  Prompt.Rendering.segments.getter();
  Prompt.Rendering.tokenIDs.getter();
  RawPrompt.init(text:originalPrompt:segments:tokenIDs:)();
  (*(v4 + 8))(v2, v5);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v10, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v1 + 8))(v12, v11);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[51];
  (*(v0[41] + 8))(v0[43], v0[40]);

  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v11 = v0[28];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[21];
  v17 = v0[53];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  (*(v0[26] + 8))(v0[28], v0[25]);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v4, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v3 + 8))(v1, v2);
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[31];
  v14 = v0[28];
  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[55];

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[23];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v7 + 8))(v5, v6);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v4, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v3 + 8))(v1, v2);
  v9 = v0[42];
  v8 = v0[43];
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[35];
  v12 = v0[36];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[31];
  v17 = v0[28];
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[21];
  v23 = v0[57];

  v18 = v0[1];

  return v18();
}

{
  v31 = v0;
  v1 = *(v0 + 160);
  if (v1[3])
  {
    v2 = v1[6];
    v3 = v1[7];
  }

  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  v25 = *(v0 + 304);
  v8 = *(v0 + 296);
  v23 = *(v0 + 320);
  v24 = *(v0 + 264);
  v9 = *(v0 + 144);
  v10 = *(v0 + 136);
  v11 = v1[18];
  v12 = *(v0 + 152);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v6 + 16))(v5, v4, v23);
  v13 = *(v8 + 16);
  v13(v7, v10, v9);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v5, v7, v9, &v26);
  *(v0 + 352) = v26;
  *(v0 + 360) = v27;
  *(v0 + 376) = v28;
  *(v0 + 384) = v29;
  *(v0 + 400) = v30;
  v14 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  v15 = swift_task_alloc();
  *(v0 + 408) = v15;
  v15[2] = v9;
  v15[3] = v12;
  v15[4] = v10;
  v13(v25, v10, v9);
  v16 = swift_task_alloc();
  *(v0 + 416) = v16;
  *v16 = v0;
  v16[1] = TokenGenerator._render<A>(configuration:);
  v17 = *(v0 + 304);
  v18 = *(v0 + 288);
  v19 = *(v0 + 264);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v18, v19, &async function pointer to partial apply for closure #1 in TokenGenerator._render<A>(configuration:), v15, v17, 0, v20, v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v11 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[47];
    v7 = v2[45];

    v8 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v9 = v2[51];

    v8 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v1 = v0[34];
  outlined init with copy of PromptCompletion(v0[36], v0[35], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v34 = v0[44];
  v9 = v0[35];
  v10 = v0[25];
  v11 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v32 = v0[49];
    v33 = v0[50];
    v12 = v0[27];
    v29 = v0[45];
    v30 = v0[47];
    v14 = v0[23];
    v13 = v0[24];
    v31 = v0[48];
    v16 = v0[21];
    v15 = v0[22];
    v28 = v0[46];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v14 + 32))(v13, v9, v15);
    (*(v11 + 32))(v12, v9 + v17, v10);
    (*(v11 + 16))(v16, v12, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
    v0[2] = v34;
    v0[3] = v29;
    v0[4] = v28;
    v0[5] = v30;
    v0[6] = v31;
    v0[7] = v32;
    v0[8] = v33;
    v18 = swift_task_alloc();
    v0[56] = v18;
    *v18 = v0;
    v18[1] = TokenGenerator._render<A>(configuration:);
    v19 = v0[31];
    v20 = v0[24];
    v22 = v0[20];
    v21 = v0[21];

    return TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)(v19, v21, v20, (v0 + 2));
  }

  else
  {
    (*(v11 + 32))(v0[28], v0[35], v0[25]);
    v0[9] = v34;
    v0[10] = v8;
    v0[11] = v7;
    v0[12] = v6;
    v0[13] = v5;
    v0[14] = v4;
    v0[15] = v3;
    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = TokenGenerator._render<A>(configuration:);
    v25 = v0[31];
    v26 = v0[28];
    v27 = v0[20];

    return TokenGenerator.render(prompt:metadata:)(v25, v26, (v0 + 9));
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v13 = *v1;
  v2[55] = v0;

  v4 = v2[9];
  v5 = v2[10];
  v2 += 9;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  outlined consume of RequestMetadata?(v4, v5);
  if (v0)
  {
    v11 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v11 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 168);
  v14 = *v1;
  v2[57] = v0;

  v5 = v2[2];
  v6 = v2[3];
  v2 += 2;
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  outlined consume of RequestMetadata?(v5, v6);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v0)
  {
    v12 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v12 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t protocol witness for CompletionLanguageModelProvidingRenderable._render<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._render<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ChatLanguageModelProvidingRenderable._render<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._render<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v24 - v13;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v24 - v13, &_sScPSgMd, &_sScPSgMR);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration16PromptCompletionV_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  type metadata accessor for PromptCompletion(0);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v5 + 56) = a5;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError.RuntimeError();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = type metadata accessor for GenerativeError.ErrorType();
  *(v5 + 112) = v12;
  v13 = *(v12 - 8);
  *(v5 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v16 = type metadata accessor for GenerativeError();
  *(v5 + 144) = v16;
  v17 = *(v16 - 8);
  *(v5 + 152) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertSgMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertSgMR) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  *(v5 + 176) = v20;
  v21 = *(v20 - 8);
  *(v5 + 184) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v26 = *MEMORY[0x1E69E9840];
  *(v5 + 56) = a5;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError.RuntimeError();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = type metadata accessor for GenerativeError.ErrorType();
  *(v5 + 112) = v12;
  v13 = *(v12 - 8);
  *(v5 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v16 = type metadata accessor for GenerativeError();
  *(v5 + 144) = v16;
  v17 = *(v16 - 8);
  *(v5 + 152) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v20 = type metadata accessor for PromptCompletion(0);
  *(v5 + 176) = v20;
  v21 = *(v20 - 8);
  *(v5 + 184) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v26 = *MEMORY[0x1E69E9840];
  *(v5 + 56) = a5;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError.RuntimeError();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = type metadata accessor for GenerativeError.ErrorType();
  *(v5 + 112) = v12;
  v13 = *(v12 - 8);
  *(v5 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v16 = type metadata accessor for GenerativeError();
  *(v5 + 144) = v16;
  v17 = *(v16 - 8);
  *(v5 + 152) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGSgMd, &_sScsySSs5Error_pGSgMR) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  *(v5 + 176) = v20;
  v21 = *(v20 - 8);
  *(v5 + 184) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v22 = *MEMORY[0x1E69E9840];
  *(v5 + 136) = a5;
  *(v5 + 120) = a3;
  *(v5 + 128) = a4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v5 + 144) = v6;
  v7 = *(v6 - 8);
  *(v5 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError.RuntimeError();
  *(v5 + 168) = v9;
  v10 = *(v9 - 8);
  *(v5 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v12 = type metadata accessor for GenerativeError.ErrorType();
  *(v5 + 192) = v12;
  v13 = *(v12 - 8);
  *(v5 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR) - 8) + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v16 = type metadata accessor for GenerativeError();
  *(v5 + 224) = v16;
  v17 = *(v16 - 8);
  *(v5 + 232) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v20 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in withTimeout<A>(timeout:_:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a2, a3, a4, a5);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in withTimeout<A>(timeout:_:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a2, a3, a4, a5);
}

uint64_t partial apply for specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()(uint64_t a1)
{
  v4 = *(type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()(a1, v1 + v5);
}

uint64_t outlined init with take of TokenGeneratorResponsePromptCompletionStream(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v21 = *MEMORY[0x1E69E9840];
  *(v4 + 72) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError.RuntimeError();
  *(v4 + 104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v11 = type metadata accessor for GenerativeError.ErrorType();
  *(v4 + 128) = v11;
  v12 = *(v11 - 8);
  *(v4 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR) - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v15 = type metadata accessor for GenerativeError();
  *(v4 + 160) = v15;
  v16 = *(v15 - 8);
  *(v4 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v19 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v21 = *MEMORY[0x1E69E9840];
  *(v4 + 64) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  v5 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError.RuntimeError();
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  *(v4 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v11 = type metadata accessor for GenerativeError.ErrorType();
  *(v4 + 120) = v11;
  v12 = *(v11 - 8);
  *(v4 + 128) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR) - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v15 = type metadata accessor for GenerativeError();
  *(v4 + 152) = v15;
  v16 = *(v15 - 8);
  *(v4 + 160) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v19 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v10 = *v5;
  v11 = *(*v5 + 24);
  v12 = *v5;

  if (!v4)
  {
    v13 = *(v10 + 16);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
  }

  v14 = *(v12 + 8);

  return v14();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v9(a1);
}

{
  *(v4 + 40) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);

  return v8(v4 + 16);
}

{
  *(v4 + 32) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v4;
  v6[1] = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);

  return v8(v4 + 16);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(double a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v3 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v1 + 32) = v3;
  v4 = *(v3 - 8);
  *(v1 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  *(v1 + 56) = v6;
  v7 = *(v6 - 8);
  *(v1 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  *(v1 + 16) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v3 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v1 + 32) = v3;
  v4 = *(v3 - 8);
  *(v1 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  *(v1 + 56) = v6;
  v7 = *(v6 - 8);
  *(v1 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)()
{
  v1 = v0[9];
  v2 = v0[2];
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  v7 = v0[9];

  return specialized Clock.sleep(for:tolerance:)(v3, v5, 0, 0, 1);
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v6 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
  (*(v2 + 104))(v1, *MEMORY[0x1E69A0A38], v3);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v2 + 8))(v1, v3);
  swift_willThrow();
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[3];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[9];
  v2 = v0[2];
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  v7 = v0[9];

  return specialized Clock.sleep(for:tolerance:)(v3, v5, 0, 0, 1);
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v6 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t specialized StreamWithTimeout.Iterator.next()()
{
  v8 = *MEMORY[0x1E69E9840];
  v1[10] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized StreamWithTimeout.Iterator.next(), 0, 0);
}

{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 80);
  if (*(v1 + 64))
  {
    goto LABEL_2;
  }

  if (*(v1 + 80))
  {
    v8 = mach_absolute_time();
    *(v1 + 72) = v8;
    *(v1 + 80) = 0;
    if (*(v1 + 64) == 1)
    {
      v1 = *(v0 + 80);
LABEL_2:

      v2 = v1;
LABEL_3:
      *(v0 + 144) = mach_absolute_time();
      swift_beginAccess();
      v3 = *(v2 + 40);
      v4 = *(v2 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v3);
      v5 = *(MEMORY[0x1E69E85A8] + 4);
      v6 = swift_task_alloc();
      *(v0 + 152) = v6;
      *v6 = v0;
      v6[1] = specialized StreamWithTimeout.Iterator.next();
      v7 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6D8C8](v0 + 64, v3, v4);
    }
  }

  else
  {
    v8 = *(v1 + 72);
  }

  v9 = *(v1 + 56);
  v10 = mach_absolute_time();
  v11 = v10 >= v8;
  v12 = v10 - v8;
  if (!v11)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 192) = 0;
  mach_timebase_info((v0 + 192));
  v13 = *(v0 + 192);
  v14.i64[0] = v13;
  v14.i64[1] = HIDWORD(v13);
  v15 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v15.f64[0] = v12;
  v16 = vmulq_f64(v15, vcvtq_f64_u64(v14));
  if (v9 <= vdivq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0])
  {
    if (one-time initialization token for generator == -1)
    {
LABEL_18:
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Log.generator);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v9;
        _os_log_impl(&dword_1AB828000, v26, v27, "Aborting execution as stream exceeded maxiumum allotted time %f", v28, 0xCu);
        MEMORY[0x1AC5A6CD0](v28, -1, -1);
      }

      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      v32 = *(v0 + 88);
      v31 = *(v0 + 96);

      v33 = type metadata accessor for Date();
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
      (*(v30 + 104))(v29, *MEMORY[0x1E69A0A38], v31);
      type metadata accessor for GenerativeError();
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
      swift_allocError();
      static GenerativeError.runtimeError(type:)();
      (*(v30 + 8))(v29, v31);
      swift_willThrow();
      v34 = *(v0 + 112);
      v35 = *(v0 + 88);

      v36 = *(v0 + 8);
      v37 = *MEMORY[0x1E69E9840];

      return v36();
    }

LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  v2 = *(v0 + 80);
  v17 = *(v1 + 64);
  v18 = *(v1 + 56);

  if (v17)
  {
    goto LABEL_3;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  v20[2] = &async function pointer to partial apply for specialized closure #1 in StreamWithTimeout.Iterator.next();
  v20[3] = v2;
  v20[4] = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg6result_Sd8durationtMd, &_sSSSg6result_Sd8durationtMR);
  v22 = *(MEMORY[0x1E69E88A0] + 4);
  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = specialized StreamWithTimeout.Iterator.next();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DD58](v0 + 40, v19, v21, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v20, v19);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = specialized StreamWithTimeout.Iterator.next();
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {
    swift_endAccess();
    *(v2 + 168) = *(v2 + 64);
    v4 = specialized StreamWithTimeout.Iterator.next();
  }

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = mach_absolute_time();
  v4 = v3 - v2;
  if (v3 < v2)
  {
    __break(1u);
  }

  *(v0 + 184) = 0;
  v5 = *(v0 + 80);
  *(v0 + 188) = 0;
  mach_timebase_info((v0 + 184));

  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 80);
  if ((*(v8 + 64) & 1) == 0 && v7)
  {
    *(v8 + 56) = *(v8 + 56) + v4 * *(v0 + 184) / (*(v0 + 188) * -1000000000.0);
    *(v8 + 64) = 0;
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 88);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11(v6, v7);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[10];
  swift_endAccess();

  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 80);

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 80);
  if ((*(v4 + 64) & 1) == 0 && v2)
  {
    *(v4 + 56) = *(v4 + 56) - *(v0 + 56);
    *(v4 + 64) = 0;
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7(v3, v2);
}

{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[15];
  v2 = v0[10];

  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

{
  v37 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 184);
  if (*(v1 + 64))
  {
    goto LABEL_2;
  }

  if (*(v1 + 80))
  {
    v8 = mach_absolute_time();
    *(v1 + 72) = v8;
    *(v1 + 80) = 0;
    if (*(v1 + 64) == 1)
    {
      v1 = *(v0 + 184);
LABEL_2:

      v2 = v1;
LABEL_3:
      *(v0 + 248) = mach_absolute_time();
      swift_beginAccess();
      v3 = *(v2 + 40);
      v4 = *(v2 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v3);
      v5 = *(MEMORY[0x1E69E85A8] + 4);
      v6 = swift_task_alloc();
      *(v0 + 256) = v6;
      *v6 = v0;
      v6[1] = specialized StreamWithTimeout.Iterator.next();
      v7 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6D8C8](v0 + 112, v3, v4);
    }
  }

  else
  {
    v8 = *(v1 + 72);
  }

  v9 = *(v1 + 56);
  v10 = mach_absolute_time();
  v11 = v10 - v8;
  if (v10 < v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 280) = 0;
  mach_timebase_info((v0 + 280));
  v12.i64[0] = *(v0 + 280);
  v12.i64[1] = HIDWORD(*(v0 + 280));
  v13 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v13.f64[0] = v11;
  v14 = vmulq_f64(v13, vcvtq_f64_u64(v12));
  if (v9 <= vdivq_f64(v14, vdupq_laneq_s64(v14, 1)).f64[0])
  {
    if (one-time initialization token for generator == -1)
    {
LABEL_17:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.generator);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v9;
        _os_log_impl(&dword_1AB828000, v24, v25, "Aborting execution as stream exceeded maxiumum allotted time %f", v26, 0xCu);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
      }

      v28 = *(v0 + 208);
      v27 = *(v0 + 216);
      v30 = *(v0 + 192);
      v29 = *(v0 + 200);

      v31 = type metadata accessor for Date();
      (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
      (*(v28 + 104))(v27, *MEMORY[0x1E69A0A38], v29);
      type metadata accessor for GenerativeError();
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
      swift_allocError();
      static GenerativeError.runtimeError(type:)();
      (*(v28 + 8))(v27, v29);
      swift_willThrow();
      v32 = *(v0 + 216);
      v33 = *(v0 + 192);

      v34 = *(v0 + 8);
      v35 = *MEMORY[0x1E69E9840];

      return v34();
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v2 = *(v0 + 184);
  v15 = *(v1 + 64);
  v16 = *(v1 + 56);

  if (v15)
  {
    goto LABEL_3;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v18 = swift_task_alloc();
  *(v0 + 224) = v18;
  v18[2] = &async function pointer to partial apply for specialized closure #1 in StreamWithTimeout.Iterator.next();
  v18[3] = v2;
  v18[4] = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSg6result_Sd8durationtMd, &_s15TokenGeneration21PromptCompletionEvent_pSg6result_Sd8durationtMR);
  v20 = *(MEMORY[0x1E69E88A0] + 4);
  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = specialized StreamWithTimeout.Iterator.next();
  v22 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DD58](v0 + 64, v17, v19, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v18, v17);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = specialized StreamWithTimeout.Iterator.next();
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {
    swift_endAccess();
    v3 = specialized StreamWithTimeout.Iterator.next();
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 248);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 112, v0 + 16, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v2 = mach_absolute_time();
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  v4 = *(v0 + 184);
  *(v0 + 272) = 0;
  mach_timebase_info((v0 + 272));

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 112, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v5 = *(v0 + 184);
  if ((*(v5 + 64) & 1) == 0 && *(v0 + 40))
  {
    *(v5 + 56) = *(v5 + 56) + v3 * *(v0 + 272) / (*(v0 + 276) * -1000000000.0);
    *(v5 + 64) = 0;
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 48);
  *v8 = v9;
  *(v8 + 16) = v10;

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[23];
  swift_endAccess();

  v2 = v0[33];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 184);

  v2 = *(v0 + 104);
  *(v0 + 48) = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v3;
  v4 = *(v0 + 184);
  if ((*(v4 + 64) & 1) == 0 && *(v0 + 40))
  {
    *(v4 + 56) = *(v4 + 56) - v2;
    *(v4 + 64) = 0;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  *(v7 + 32) = *(v0 + 48);
  *v7 = v8;
  *(v7 + 16) = v9;

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10();
}

{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[28];
  v2 = v0[23];

  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[24];

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t specialized StreamWithTimeout.Iterator.next()(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized StreamWithTimeout.Iterator.next(), 0, 0);
}

uint64_t specialized closure #1 in StreamWithTimeout.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
}

{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
}

uint64_t specialized closure #1 in StreamWithTimeout.Iterator.next()()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in StreamWithTimeout.Iterator.next();
  v6 = v0[5];

  return MEMORY[0x1EEE6D8C8](v6, v2, v3);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

{
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in StreamWithTimeout.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v0 + 40, v2, v3);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 56);
    swift_endAccess();
    *v4 = *(v3 + 40);
    v5 = *(v3 + 8);

    return v5();
  }
}

{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  if (!*(v1 + 16))
  {
    v2 = *(v0 + 160);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 168), v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    v3 = *(v0 + 40);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64) + 15;
    v7 = swift_task_alloc();
    (*(v5 + 16))(v7, v4, v3);
    *(v0 + 96) = swift_getAssociatedTypeWitness();
    *(v0 + 104) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCySS_GMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCySS_GMR);
    v10 = swift_allocObject();
    *(v10 + 56) = 0;
    *(v10 + 64) = 1;
    *(v10 + 72) = 0;
    *(v10 + 80) = 1;
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 72), v10 + 16);
    *(v10 + 56) = v8;
    *(v10 + 64) = v9;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    swift_beginAccess();
    v11 = *(v2 + 16);
    *(v2 + 16) = v10;
  }

  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return specialized StreamWithTimeout.Iterator.next()();
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  (*(v0 + 176))(v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[20];
  v1 = v0[21];
  swift_beginAccess();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, v2, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  if (v1 == 1)
  {
    v6 = v0[21];
    v7 = v0[19];
    (*(v0[17] + 16))(v0[18], v0[13], v0[16]);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<TokenStream<String>, String> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v7, v6, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  }

  v8 = v0[21];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    swift_endAccess();
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];

    v12 = v0[1];

    return v12(0, 0);
  }

  else
  {
    v14 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<TokenStream<String>, String>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMR);
    v15 = *(MEMORY[0x1E69E85A8] + 4);
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
    v17 = v0[21];

    return MEMORY[0x1EEE6D8C8](v0 + 11, v3, v14);
  }
}

{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  else
  {
    swift_endAccess();
    v3 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];

  v6 = v0[1];

  return v6(v2, v1);
}

{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  swift_endAccess();
  v6(v1);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 168);
  swift_beginAccess();
  if (!*(v1 + 16))
  {
    v2 = *(v0 + 168);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 176), v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v3 = *(v0 + 40);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64) + 15;
    v7 = swift_task_alloc();
    (*(v5 + 16))(v7, v4, v3);
    *(v0 + 96) = swift_getAssociatedTypeWitness();
    *(v0 + 104) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCyAA21PromptCompletionEvent_p_GMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCyAA21PromptCompletionEvent_p_GMR);
    v10 = swift_allocObject();
    *(v10 + 56) = 0;
    *(v10 + 64) = 1;
    *(v10 + 72) = 0;
    *(v10 + 80) = 1;
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 72), v10 + 16);
    *(v10 + 56) = v8;
    *(v10 + 64) = v9;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    swift_beginAccess();
    v11 = *(v2 + 16);
    *(v2 + 16) = v10;
  }

  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  v13 = *(v0 + 160);

  return specialized StreamWithTimeout.Iterator.next()(v13);
}

{
  v2 = *(*v1 + 200);
  v3 = *v1;
  *(v3 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  (*(v0 + 184))(v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, v2, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  if (v1 == 1)
  {
    v6 = v0[22];
    v7 = v0[20];
    (*(v0[18] + 16))(v0[19], v0[14], v0[17]);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncCompactMapSequence<ResponseSequence, Data> and conformance AsyncCompactMapSequence<A, B>, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v7, v6, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  }

  v8 = v0[22];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    swift_endAccess();
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    *v0[13] = xmmword_1ABA1D8C0;

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncCompactMapSequence<ResponseSequence, Data>.Iterator and conformance AsyncCompactMapSequence<A, B>.Iterator, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMR);
    v15 = *(MEMORY[0x1E69E85A8] + 4);
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
    v17 = v0[22];

    return MEMORY[0x1EEE6D8C8](v0 + 11, v3, v14);
  }
}

{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  else
  {
    swift_endAccess();
    v3 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  **(v0 + 104) = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  swift_endAccess();
  v6(v1);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}