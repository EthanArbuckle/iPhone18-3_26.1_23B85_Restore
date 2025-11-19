uint64_t static KeyboardEmojiGenerator.createEagerlyInitialized(imageGeneratorIdentifier:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 48) = *(a3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_19A3FF678, 0, 0);
}

uint64_t sub_19A3FF678()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v8[0] = v0[4];
  v8[1] = v1;
  v8[2] = v2;

  sub_19A332C58(v8[0], v1);
  v5 = _s16VisualGeneration22KeyboardEmojiGeneratorC05imageE10Identifier6clientACSSSg_AA14ClientIdentityVSgtcfC_0(v4, v3, v8);
  v6 = v0[1];

  return v6(v5);
}

uint64_t KeyboardEmojiGenerator.__allocating_init(definitionSession:)(uint64_t a1)
{
  v2 = type metadata accessor for DefinitionSession();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A4017A8(a1, v4, type metadata accessor for DefinitionSession);
  swift_allocObject();
  v5 = sub_19A3EB7F8(v4);
  sub_19A401930(a1, type metadata accessor for DefinitionSession);
  return v5;
}

uint64_t KeyboardEmojiGenerator.forceInProcessGeneration.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3FF888, 0, 0);
}

uint64_t sub_19A3FF888()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FF8AC, v1, 0);
}

uint64_t sub_19A3FF8AC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FF954, 0, 0);
}

uint64_t sub_19A3FF954()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2 + 50);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t KeyboardEmojiGenerator.assign(forceInProcessGeneration:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3FFA8C, 0, 0);
}

uint64_t sub_19A3FFA8C()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FFAB0, v1, 0);
}

uint64_t sub_19A3FFAB0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 50) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A402BC8, v2, 0);
}

uint64_t KeyboardEmojiGenerator._assign(forceInProcessGeneration:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3FFA8C, 0, 0);
}

uint64_t sub_19A3FFC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = _s16VisualGeneration22KeyboardEmojiGeneratorC05imageE10Identifier6clientACSSSg_AA14ClientIdentityVSgtcfC_0(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_19A3FFC48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DefinitionSession();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A4017A8(a1, v6, type metadata accessor for DefinitionSession);
  swift_allocObject();
  v7 = sub_19A3EB7F8(v6);
  result = sub_19A401930(a1, type metadata accessor for DefinitionSession);
  *a2 = v7;
  return result;
}

uint64_t sub_19A3FFD1C()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A3FFDB0, 0, 0);
}

uint64_t sub_19A3FFDB0()
{
  v1 = *(*(v0 + 56) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FFDD4, v1, 0);
}

uint64_t sub_19A3FFDD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3FFE80, 0, 0);
}

uint64_t sub_19A3FFE80()
{
  v1 = v0[6];
  v2 = *(v0[5] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2 + 50);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_19A3FFF20(char a1)
{
  *(v2 + 104) = a1;
  *(v2 + 64) = type metadata accessor for DefinitionSession();
  v3 = swift_task_alloc();
  v4 = *v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A3FFFB8, 0, 0);
}

uint64_t sub_19A3FFFB8()
{
  v1 = *(*(v0 + 80) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3FFFDC, v1, 0);
}

uint64_t sub_19A3FFFDC()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v5, v2, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v2 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 50) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A4000B4, v1, 0);
}

uint64_t sub_19A4000B4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.configureInferenceDiagnostics(outputDirectoryURL:fileNamePrefix:overwriteFiles:includeModelFrameData:includeSegmentFrameData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 154) = a6;
  *(v7 + 153) = a5;
  *(v7 + 152) = a4;
  *(v7 + 80) = a3;
  *(v7 + 88) = v6;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v8 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = type metadata accessor for DefinitionSession();
  *(v7 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A40027C, 0, 0);
}

uint64_t sub_19A40027C()
{
  v1 = *(*(v0 + 88) + 88);
  *(v0 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A4002A0, v1, 0);
}

uint64_t sub_19A4002A0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[18] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A40034C, 0, 0);
}

uint64_t sub_19A40034C()
{
  v20 = *(v0 + 128);
  v21 = *(v0 + 136);
  v1 = *(v0 + 112);
  v19 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 154);
  v5 = *(v0 + 153);
  v6 = *(v0 + 152);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = sub_19A570EAC();
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  v11 = v2[6];
  v12 = (v1 + v2[5]);
  v13 = v2[7];
  v14 = v2[8];
  *v12 = v8;
  v12[1] = v7;
  *(v1 + v11) = v6;
  *(v1 + v13) = v5;
  *(v1 + v14) = v4;
  v15 = *(v19 + 88);
  v16 = v20 + *(type metadata accessor for GenerationRecipe(0) + 20);
  v17 = v16 + *(_s23GenerationConfigurationVMa() + 52);

  sub_19A2F3FA0(v17 + v15, &qword_1EAFA3300);
  sub_19A401D48(v1, v17 + v15, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  (*(v3 + 56))(v17 + v15, 0, 1, v2);

  return MEMORY[0x1EEE6DFA0](sub_19A4004D8, v21, 0);
}

uint64_t sub_19A4004D8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  swift_beginAccess();
  sub_19A331CD0(v3, v2 + v1, type metadata accessor for DefinitionSession);
  swift_endAccess();
  sub_19A401930(v3, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4();
}

uint64_t KeyboardEmojiGenerator.assignedForensicsReporter.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A400640, 0, 0);
}

uint64_t sub_19A400640()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A400664, v1, 0);
}

uint64_t sub_19A400664()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A40070C, 0, 0);
}

uint64_t sub_19A40070C()
{
  v1 = v0[7];
  v2 = (v1 + *(v0[6] + 40));
  v3 = *v2;
  v4 = v2[1];
  sub_19A2E0A50(*v2);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_19A4007B4()
{
  v1[5] = type metadata accessor for DefinitionSession();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A400848, 0, 0);
}

uint64_t sub_19A400848()
{
  v1 = *(*(v0 + 56) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A40086C, v1, 0);
}

uint64_t sub_19A40086C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A400918, 0, 0);
}

uint64_t sub_19A400918()
{
  v1 = v0[6];
  v2 = (v1 + *(v0[5] + 40));
  v3 = *v2;
  v4 = v2[1];
  sub_19A2E0A50(*v2);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t KeyboardEmojiGenerator.allowImageRejection.getter()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for DefinitionSession();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A400A54, 0, 0);
}

uint64_t sub_19A400A54()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A400A78, v1, 0);
}

uint64_t sub_19A400A78()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A400B20, 0, 0);
}

uint64_t sub_19A400B20()
{
  v1 = v0[7];
  v2 = *(v0[6] + 88);
  v3 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v2 + 48);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);

  v4 = v0[1];

  return v4(v3);
}

uint64_t KeyboardEmojiGenerator.assign(allowImageRejection:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A400C58, 0, 0);
}

uint64_t sub_19A400C58()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A400C7C, v1, 0);
}

uint64_t sub_19A400C7C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A402BC8, v2, 0);
}

uint64_t KeyboardEmojiGenerator.enableGenerativeModelsAvailabilityCheck.getter()
{
  v1[5] = v0;
  _s23GenerationConfigurationVMa();
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for GenerationRecipe(0);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for DefinitionSession();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A400E44, 0, 0);
}

uint64_t sub_19A400E44()
{
  v1 = *(*(v0 + 40) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A400E68, v1, 0);
}

uint64_t sub_19A400E68()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A400F10, 0, 0);
}

uint64_t sub_19A400F10()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_19A4017A8(v1 + *(v0[9] + 88), v2, type metadata accessor for GenerationRecipe);
  sub_19A401930(v1, type metadata accessor for DefinitionSession);
  sub_19A4017A8(v2 + *(v3 + 20), v4, _s23GenerationConfigurationVMa);
  sub_19A401930(v2, type metadata accessor for GenerationRecipe);
  v5 = *(v4 + 49);
  sub_19A401930(v4, _s23GenerationConfigurationVMa);

  v6 = v0[1];

  return v6(v5);
}

uint64_t KeyboardEmojiGenerator.assign(enableGenerativeModelsAvailabilityCheck:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  *(v2 + 72) = type metadata accessor for DefinitionSession();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4010D0, 0, 0);
}

uint64_t sub_19A4010D0()
{
  v1 = *(*(v0 + 64) + 88);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A4010F4, v1, 0);
}

uint64_t sub_19A4010F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  *(v0 + 96) = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A4017A8(v2 + v5, v1, type metadata accessor for DefinitionSession);
  v6 = *(v3 + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20) + v6 + 49) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A402BC8, v2, 0);
}

void sub_19A4011CC(os_unfair_lock_s *a1)
{
  if (!a1 || (v3 = *v1, os_unfair_lock_lock(*v1 + 4), v1[1]))
  {
    sub_19A573B7C();
    __break(1u);
  }

  else
  {
    v1[1] = a1;

    os_unfair_lock_unlock(v3 + 4);
  }
}

void *sub_19A4012DC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

char *sub_19A401320(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  type metadata accessor for ImageGenerator();
  v2 = a1 + *(type metadata accessor for DefinitionSession() + 88);
  v3 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v2 + *(v3 + 20)), *(v2 + *(v3 + 20) + 8), v12);
  v4 = v13;
  if (v13)
  {
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = (*(v5 + 64))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    if (v6)
    {
      sub_19A47059C(v6);
    }
  }

  else
  {
    sub_19A2F3FA0(v12, &qword_1EAF9FDA8);
  }

  v7 = v15;
  if (!*(v15 + 16))
  {
    if (qword_1EAF9F948 != -1)
    {
      swift_once();
    }

    v11 = xmmword_1EAFA1138;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_19A31D080(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_19A31D080((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    *&v7[16 * v9 + 32] = v11;
  }

  return v7;
}

uint64_t _s16VisualGeneration22KeyboardEmojiGeneratorC6clientAcA14ClientIdentityV_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for DefinitionSession();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - v6;
  v9 = *a1;
  v8 = *(a1 + 8);
  v11 = *(a1 + 16);
  v10 = *(a1 + 20);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v12 = sub_19A5723FC();
  __swift_project_value_buffer(v12, qword_1ED82BCF0);

  v13 = sub_19A5723DC();
  v14 = sub_19A57356C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = v15;
    v35 = swift_slowAlloc();
    v36 = v35;
    *v15 = 136315138;
    v37 = v9;
    v38 = v8;
    v39 = __PAIR64__(v10, v11);

    v16 = sub_19A572DAC();
    v18 = v13;
    v19 = v14;
    v20 = v10;
    v21 = v8;
    v22 = v7;
    v23 = v5;
    v24 = v11;
    v25 = sub_19A31F114(v16, v17, &v36);

    v26 = v34;
    *(v34 + 1) = v25;
    v11 = v24;
    v5 = v23;
    v7 = v22;
    v8 = v21;
    v10 = v20;
    v27 = v18;
    v28 = v18;
    v29 = v26;
    _os_log_impl(&dword_19A2DE000, v28, v19, "Creating generator for %s", v26, 0xCu);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x19A902C50](v30, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {
  }

  type metadata accessor for AppleDiffusionResourceFactory(0);
  static AppleDiffusionResourceFactory.shared(reset:)(0);
  v37 = v9;
  v38 = v8;
  v39 = v11 | (v10 << 32);
  sub_19A4B8A1C(&v37, 0, 0, 0, v7);
  sub_19A4017A8(v7, v5, type metadata accessor for DefinitionSession);
  type metadata accessor for KeyboardEmojiGenerator();
  swift_allocObject();
  v31 = sub_19A3EB7F8(v5);
  sub_19A401930(v7, type metadata accessor for DefinitionSession);

  return v31;
}

uint64_t sub_19A4017A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A401830(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_19A2F759C;

  return sub_19A3EFB50(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_19A401930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A401990(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A33558C;

  return sub_19A3F038C(a1, v1);
}

uint64_t sub_19A401A2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A33558C;

  return sub_19A3F31E4(a1, v1);
}

uint64_t sub_19A401AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A2F759C;

  return sub_19A31C7A0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A401B9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A33558C;

  return sub_19A3F3608(a1, v4, v5, v6);
}

uint64_t sub_19A401CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A401D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s16VisualGeneration22KeyboardEmojiGeneratorC05imageE10Identifier6clientACSSSg_AA14ClientIdentityVSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for DefinitionSession();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30[-v10];
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v15 = sub_19A5723FC();
  __swift_project_value_buffer(v15, qword_1ED82BCF0);
  sub_19A332C58(v12, v13);
  v16 = sub_19A5723DC();
  v17 = sub_19A57356C();
  sub_19A334804(v12, v13);
  v18 = os_log_type_enabled(v16, v17);
  v33 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    v35 = v12;
    *v19 = 136315138;
    v36 = v13;
    v37 = v14;
    sub_19A332C58(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0100);
    v20 = sub_19A572DAC();
    v31 = v17;
    v22 = v13;
    v23 = a1;
    v24 = v11;
    v25 = v9;
    v26 = sub_19A31F114(v20, v21, &v34);

    *(v19 + 4) = v26;
    v9 = v25;
    v11 = v24;
    a1 = v23;
    v13 = v22;
    _os_log_impl(&dword_19A2DE000, v16, v31, "Creating generator for %s", v19, 0xCu);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x19A902C50](v27, -1, -1);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

  type metadata accessor for AppleDiffusionResourceFactory(0);
  static AppleDiffusionResourceFactory.shared(reset:)(0);
  v35 = v12;
  v36 = v13;
  v37 = v33;
  sub_19A4B8A1C(&v35, 0, a1, a2, v11);
  sub_19A4017A8(v11, v9, type metadata accessor for DefinitionSession);
  type metadata accessor for KeyboardEmojiGenerator();
  swift_allocObject();
  v28 = sub_19A3EB7F8(v9);
  sub_19A401930(v11, type metadata accessor for DefinitionSession);

  return v28;
}

unint64_t sub_19A4020E4()
{
  result = qword_1EAFA1168;
  if (!qword_1EAFA1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1168);
  }

  return result;
}

void sub_19A40219C()
{
  sub_19A35B140();
  if (v0 <= 0x3F)
  {
    sub_19A3330B0(319, &qword_1ED825360);
    if (v1 <= 0x3F)
    {
      sub_19A3330B0(319, &qword_1ED825598);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration22KeyboardEmojiGeneratorC26DescriptionAssignmentEventO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for KeyboardEmojiGenerator.ConditioningImageAssignmentOptions(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for KeyboardEmojiGenerator.ConditioningImageAssignmentOptions(_WORD *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19A402494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 61))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_19A4024F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_19A402578()
{
  type metadata accessor for GenerationState();
  if (v0 <= 0x3F)
  {
    sub_19A333C9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_19A402604()
{
  sub_19A402708();
  if (v0 <= 0x3F)
  {
    sub_19A57102C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_19A402708()
{
  if (!qword_1EAF9E818)
  {
    type metadata accessor for KeyboardEmojiGenerator.GenerationEvent(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA26F0);
    v0 = sub_19A5732DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9E818);
    }
  }
}

uint64_t sub_19A4027AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_19A33558C;

  return sub_19A3EAD60(a1, a2, a3, a4, a5, a6, v14);
}

void sub_19A4028A4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1180) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19A3F6824(a1, a2, v2 + v6, v7);
}

uint64_t sub_19A40295C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A33558C;

  return sub_19A3F71D8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A402A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A3F76DC(a1, v4, v5, v7, v6);
}

void *sub_19A402B60@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_19A402BF0()
{
  sub_19A571E9C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A34B5BC;

  return MEMORY[0x1EEE1F4D8](0xD000000000000010, 0x800000019A582310, 0xD000000000000036, 0x800000019A598E70);
}

uint64_t ModelManagerPolicyAsserting.acquireModelManagerPolicyAssertion()()
{
  sub_19A571E9C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A34F28C;

  return MEMORY[0x1EEE1F4D8](0xD000000000000010, 0x800000019A582310, 0xD000000000000036, 0x800000019A598E70);
}

uint64_t dispatch thunk of ModelManagerPolicyAsserting.acquireModelManagerPolicyAssertion()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A402EC0;

  return v7(a1, a2);
}

uint64_t sub_19A402EC0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_19A402FBC()
{
  sub_19A571E9C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A34F28C;

  return MEMORY[0x1EEE1F4D8](0xD000000000000010, 0x800000019A582310, 0xD000000000000036, 0x800000019A598E70);
}

id InputImageCaptionPolicy.inputImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t InputImageCaptionPolicy.description.getter()
{
  v1 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = *(v0 + 40);

  v12 = sub_19A4036F4(v11, v10, sub_19A4038D0, sub_19A4038D0);
  v13 = v12;
  v14 = v12[2];
  if (!v14)
  {

    v15 = MEMORY[0x1E69E7CC0];
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v18)
    {
LABEL_4:
      v32[1] = v9;
      v32[2] = v6;
      v32[3] = v3;
      v33 = MEMORY[0x1E69E7CC0];
      sub_19A322580(0, v18, 0);
      v19 = v33;
      v32[0] = v15;
      v20 = v15 + 5;
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v34 = 34;
        v35 = 0xE100000000000000;

        MEMORY[0x19A900A50](v21, v22);
        MEMORY[0x19A900A50](34, 0xE100000000000000);

        v24 = v34;
        v23 = v35;
        v33 = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_19A322580((v25 > 1), v26 + 1, 1);
          v19 = v33;
        }

        *(v19 + 16) = v26 + 1;
        v27 = v19 + 16 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        v20 += 2;
        --v18;
      }

      while (v18);

      goto LABEL_11;
    }

LABEL_10:

    v19 = MEMORY[0x1E69E7CC0];
LABEL_11:
    sub_19A572C8C();
    sub_19A572C7C();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    v36 = v28;
    v29 = sub_19A404344(&qword_1EAFA11A0);
    v37 = v29;
    v34 = v19;
    v30 = __swift_project_boxed_opaque_existential_1(&v34, v28);
    MEMORY[0x1EEE9AC00](v30);
    v32[-4] = v28;
    v32[-3] = v29;
    v32[-2] = sub_19A475C90;
    v32[-1] = 0;

    v33 = sub_19A3E4928(sub_19A3E3EA0, &v32[-6], v28, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v31);
    sub_19A404344(&qword_1ED823F48);
    sub_19A572BEC();

    __swift_destroy_boxed_opaque_existential_0Tm(&v34);
    sub_19A572C6C();

    sub_19A572C7C();
    sub_19A572CAC();
    sub_19A5710EC();
    return sub_19A572D7C();
  }

  v15 = sub_19A31EE78(v12[2], 0);
  v16 = sub_19A32E684(&v34, v15 + 4, v14, v13);
  result = sub_19A2EA480();
  if (v16 == v14)
  {
    v18 = v15[2];
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_19A403518@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void *sub_19A40357C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_19A403614(uint64_t a1, uint64_t a2)
{

  return sub_19A4036F4(a1, a2, sub_19A4038D0, sub_19A4038D0);
}

void *sub_19A403684(uint64_t a1, uint64_t a2)
{

  return sub_19A4036F4(a1, a2, sub_19A403CAC, sub_19A403CAC);
}

void *sub_19A4036F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_19A40357C(v15, v10, a2, a1, a4);

    MEMORY[0x19A902C50](v15, -1, -1);
  }

  return v13;
}

uint64_t sub_19A4038D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_19A5740BC();

      sub_19A572E4C();
      v26 = sub_19A57410C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_19A573F1C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_19A2ED3DC(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_19A5740BC();

      sub_19A572E4C();
      v39 = sub_19A57410C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_19A573F1C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A403CAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_19A57112C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v61 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v76 = (v61 - v14);
  result = MEMORY[0x1EEE9AC00](v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_19A2ED600(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_19A379EA4(&qword_1EAF9F8D8);
          v55 = sub_19A572B3C();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_19A379EA4(&qword_1EAF9F8D0);
              v59 = sub_19A572C2C();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_19A379EA4(&qword_1EAF9F8D8);
          v34 = sub_19A572B3C();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_19A379EA4(&qword_1EAF9F8D0);
              v40 = sub_19A572C2C();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_19A404344(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FCD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A404394(uint64_t a1)
{
  result = sub_19A2F1184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19A4043BC(uint64_t a1)
{
  result = sub_19A4043E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19A4043E4()
{
  result = qword_1EAFA11A8;
  if (!qword_1EAFA11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11A8);
  }

  return result;
}

uint64_t sub_19A404438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_19A404480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A4044F0()
{
  result = qword_1EAFA11B0;
  if (!qword_1EAFA11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11B0);
  }

  return result;
}

uint64_t sub_19A404544(unsigned __int8 a1, unsigned __int8 a2, char a3, uint64_t a4)
{
  if (a2 < 4u)
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
      goto LABEL_7;
    }
  }

  else if (a2 == 4)
  {

    v7 = 1;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (*(a4 + 8) == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a4 + 16);
  }

  if (a1 - 2 >= 2)
  {
    if (!a1)
    {
      if (v7)
      {
        if (!v9 || !*(v9 + 16) || (v12 = sub_19A31FC68(4u), (v13 & 1) == 0))
        {
          v25 = 0x6C6F203E6E63723CLL;
          if ((a3 & 1) == 0)
          {
            return v25;
          }

          goto LABEL_48;
        }
      }

      else if (!v9 || !*(v9 + 16) || (v12 = sub_19A31FC68(1u), (v20 & 1) == 0))
      {
        v25 = 0x3E78776C6E3CLL;
        if ((a3 & 1) == 0)
        {
          return v25;
        }

        goto LABEL_48;
      }

      v21 = *(*(v9 + 56) + 16 * v12);

      v25 = v21;
      if ((a3 & 1) == 0)
      {
        return v25;
      }

LABEL_48:
      v18 = 1851878688;
      v19 = 0xE400000000000000;
      goto LABEL_51;
    }

    if (v7)
    {
      if (!v9 || !*(v9 + 16) || (v16 = sub_19A31FC68(3u), (v17 & 1) == 0))
      {
        v25 = 0x6C6F203E6A61773CLL;
        if ((a3 & 1) == 0)
        {
          return v25;
        }

        goto LABEL_50;
      }
    }

    else if (!v9 || !*(v9 + 16) || (v16 = sub_19A31FC68(0), (v22 & 1) == 0))
    {
      v25 = 0x3E7367703CLL;
      if ((a3 & 1) == 0)
      {
        return v25;
      }

LABEL_50:
      v18 = 0x6E616D6F7720;
      v19 = 0xE600000000000000;
      goto LABEL_51;
    }

    v23 = *(*(v9 + 56) + 16 * v16);

    v25 = v23;
    if ((a3 & 1) == 0)
    {
      return v25;
    }

    goto LABEL_50;
  }

  if (v7)
  {
    if (!v9 || !*(v9 + 16) || (v10 = sub_19A31FC68(5u), (v11 & 1) == 0))
    {
      v25 = 0x6F203E6C6172773CLL;
      if ((a3 & 1) == 0)
      {
        return v25;
      }

      goto LABEL_36;
    }

LABEL_27:
    v15 = *(*(v9 + 56) + 16 * v10);

    v25 = v15;
    if (a3)
    {
      goto LABEL_36;
    }

    return v25;
  }

  if (v9)
  {
    if (*(v9 + 16))
    {
      v10 = sub_19A31FC68(2u);
      if (v14)
      {
        goto LABEL_27;
      }
    }
  }

  v25 = 0x3E6177617A3CLL;
  if (a3)
  {
LABEL_36:
    v18 = 0x6E6F7372657020;
    v19 = 0xE700000000000000;
LABEL_51:
    MEMORY[0x19A900A50](v18, v19);
  }

  return v25;
}

id sub_19A404874(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19A572CCC();
  v6 = [objc_opt_self() filterWithName_];

  if (v6)
  {
    [v2 extent];
    CGRectGetHeight(v14);
    [v2 extent];
    CGRectGetWidth(v15);
    v7 = sub_19A57115C();
    [v6 setValue:v7 forKey:*MEMORY[0x1E695FB20]];

    v8 = sub_19A57115C();
    [v6 setValue:v8 forKey:*MEMORY[0x1E695FA40]];

    [v6 setValue:v2 forKey:*MEMORY[0x1E695FAB0]];
    v9 = [v6 outputImage];
    if (v9 && (v10 = v9, v2 = [v9 imageByCroppingToRect_], v10, v2))
    {
    }

    else
    {
      v2 = 0x800000019A599020;
      sub_19A40565C();
      swift_allocError();
      *v11 = 0xD000000000000022;
      v11[1] = 0x800000019A599020;
      swift_willThrow();
    }
  }

  else
  {
    sub_19A40565C();
    swift_allocError();
    *v12 = 0xD000000000000025;
    v12[1] = 0x800000019A598FF0;
    swift_willThrow();
  }

  return v2;
}

void sub_19A404AB4()
{
  v1 = sub_19A572CCC();
  v2 = [objc_opt_self() filterWithName_];

  if (v2)
  {
    [v2 setValue:v0 forKey:*MEMORY[0x1E695FAB0]];
    v3 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v4 = sub_19A572CCC();
    [v2 setValue:v3 forKey:v4];

    v5 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v6 = sub_19A572CCC();
    [v2 setValue:v5 forKey:v6];

    v7 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v8 = sub_19A572CCC();
    [v2 setValue:v7 forKey:v8];

    v9 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v10 = sub_19A572CCC();
    [v2 setValue:v9 forKey:v10];

    v11 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v12 = sub_19A572CCC();
    [v2 setValue:v11 forKey:v12];

    [v2 outputImage];
  }

  else
  {
    __break(1u);
  }
}

void sub_19A404DB8()
{
  v1 = sub_19A572CCC();
  v2 = [objc_opt_self() filterWithName_];

  if (v2)
  {
    [v2 setValue:v0 forKey:*MEMORY[0x1E695FAB0]];
    v3 = sub_19A57334C();
    v4 = sub_19A572CCC();
    [v2 setValue:v3 forKey:v4];

    [v2 outputImage];
  }

  else
  {
    __break(1u);
  }
}

void sub_19A404ED0(uint64_t a1)
{
  [v1 extent];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v7 = a1;
  if (CGRectGetWidth(v15) <= a1)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (CGRectGetHeight(v16) <= v7)
    {
      v13 = v1;
      return;
    }
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectGetWidth(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (CGRectGetHeight(v18) >= v8)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v11 = v7 / CGRectGetHeight(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v12 = CGRectGetWidth(v22);
    v10 = a1;
    v7 = v12 * v11;
  }

  else
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v9 = v7 / CGRectGetWidth(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v10 = CGRectGetHeight(v20) * v9;
  }

  if (v7 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v10 > -9.22337204e18)
  {
    if (v10 < 9.22337204e18)
    {
      v14[0] = v7;
      v14[1] = v10;
      sub_19A404874(v14);
      return;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void Image.expandMask()(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    }
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  }

  v5 = v4;
  sub_19A404AB4();
  if (v6)
  {
    v7 = v6;
    sub_19A404DB8();
    if (v8)
    {
      v9 = v8;
      v10 = sub_19A572CCC();
      v11 = objc_opt_self();
      v12 = [v11 filterWithName_];

      if (v12)
      {
        v27 = a1;
        v13 = sub_19A5733BC();
        v14 = *MEMORY[0x1E695FB10];
        [v12 setValue:v13 forKey:*MEMORY[0x1E695FB10]];

        v15 = *MEMORY[0x1E695FAB0];
        [v12 setValue:v9 forKey:*MEMORY[0x1E695FAB0]];
        v28 = [v12 outputImage];
        v16 = sub_19A572CCC();
        v17 = [v11 filterWithName_];

        if (v17)
        {
          v18 = sub_19A5733BC();
          [v17 setValue:v18 forKey:v14];

          [v17 setValue:v28 forKey:v15];
          v19 = [v17 outputImage];
          if (v19)
          {
            v20 = v19;
            [v5 extent];
            v21 = [v20 imageByCroppingToRect_];

            if (v21)
            {

              *v27 = v21;
              *(v27 + 8) = 1;
              return;
            }
          }

          sub_19A40550C();
          swift_allocError();
          *v25 = 0xD000000000000020;
          v25[1] = 0x800000019A598FA0;
          swift_willThrow();
        }

        else
        {
          sub_19A40550C();
          swift_allocError();
          *v26 = 0xD000000000000029;
          v26[1] = 0x800000019A598F70;
          swift_willThrow();

          v17 = v28;
        }
      }

      else
      {
        sub_19A40550C();
        swift_allocError();
        *v24 = 0xD000000000000029;
        v24[1] = 0x800000019A598F20;
        swift_willThrow();

        v17 = v9;
      }
    }

    else
    {
      sub_19A40550C();
      swift_allocError();
      *v23 = 0xD000000000000024;
      v23[1] = 0x800000019A598ED0;
      swift_willThrow();

      v17 = v7;
    }
  }

  else
  {
    sub_19A40550C();
    swift_allocError();
    *v22 = 0xD000000000000024;
    v22[1] = 0x800000019A598ED0;
    swift_willThrow();
    v17 = v5;
  }
}

unint64_t sub_19A40550C()
{
  result = qword_1EAFA11B8;
  if (!qword_1EAFA11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11B8);
  }

  return result;
}

void Image.alphaToLuma()(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    }
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  }

  v5 = v4;
  sub_19A404AB4();
  if (v6)
  {
    v7 = v6;

    *a1 = v7;
    *(a1 + 8) = 1;
  }

  else
  {
    sub_19A40550C();
    swift_allocError();
    *v8 = 0xD000000000000024;
    v8[1] = 0x800000019A598ED0;
    swift_willThrow();
  }
}

unint64_t sub_19A40565C()
{
  result = qword_1EAFA11C0;
  if (!qword_1EAFA11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11C0);
  }

  return result;
}

uint64_t sub_19A405720()
{
  sub_19A5740BC();
  sub_19A5740EC();
  return sub_19A57410C();
}

uint64_t sub_19A405794()
{
  sub_19A5740BC();
  sub_19A5740EC();
  return sub_19A57410C();
}

BOOL sub_19A4058C4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_19A4058F4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_19A405920@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

unint64_t sub_19A4059F4()
{
  result = qword_1EAFA11C8;
  if (!qword_1EAFA11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11C8);
  }

  return result;
}

unint64_t sub_19A405A4C()
{
  result = qword_1EAFA11D0;
  if (!qword_1EAFA11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11D0);
  }

  return result;
}

unint64_t sub_19A405AA0()
{
  result = qword_1EAFA11D8;
  if (!qword_1EAFA11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11D8);
  }

  return result;
}

unint64_t sub_19A405AF8()
{
  result = qword_1EAFA11E0;
  if (!qword_1EAFA11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA11E0);
  }

  return result;
}

uint64_t sub_19A405C34(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v49 = a2;
  v51 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v13 = sub_19A5723FC();
  v14 = __swift_project_value_buffer(v13, qword_1ED82BCF0);
  v15 = v51 + 16;
  v16 = *(v51 + 16);
  v16(v12, v4, a1);
  v46 = v14;
  v17 = sub_19A5723DC();
  v18 = sub_19A57354C();
  v19 = os_log_type_enabled(v17, v18);
  v47 = v16;
  v48 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = v3;
    v21 = v20;
    v43 = swift_slowAlloc();
    v52 = v43;
    *v21 = 136315138;
    v16(v10, v12, a1);
    v22 = v4;
    v23 = v10;
    v24 = sub_19A572DAC();
    v26 = v25;
    v45 = *(v51 + 8);
    v45(v12, a1);
    v27 = v24;
    v10 = v23;
    v4 = v22;
    v28 = sub_19A31F114(v27, v26, &v52);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_19A2DE000, v17, v18, "%s checking for cancellation", v21, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x19A902C50](v29, -1, -1);
    MEMORY[0x19A902C50](v21, -1, -1);
  }

  else
  {

    v45 = *(v51 + 8);
    v45(v12, a1);
  }

  result = (*(v49 + 8))(a1);
  if (result)
  {
    v31 = v47;
    v47(v50, v4, a1);
    v32 = sub_19A5723DC();
    v33 = sub_19A57354C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v31;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v36;
      *v35 = 136315138;
      v37 = v50;
      v34(v10, v50, a1);
      v38 = sub_19A572DAC();
      v40 = v39;
      v45(v37, a1);
      v41 = sub_19A31F114(v38, v40, &v52);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_19A2DE000, v32, v33, "%s is in cancelled state; throwing CancellationError.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x19A902C50](v36, -1, -1);
      MEMORY[0x19A902C50](v35, -1, -1);
    }

    else
    {

      v45(v50, a1);
    }

    sub_19A57317C();
    sub_19A408450();
    swift_allocError();
    sub_19A572ACC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A4060BC()
{
  v10 = 0;
  sub_19A573C4C();
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v0 = sub_19A5723FC();
  __swift_project_value_buffer(v0, qword_1ED82BCF0);
  v1 = sub_19A5723DC();
  v2 = sub_19A57354C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136315394;
    v5 = sub_19A572DAC();
    v7 = sub_19A31F114(v5, v6, v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 1024;
    swift_beginAccess();
    *(v3 + 14) = v10;
    _os_log_impl(&dword_19A2DE000, v1, v2, "%s isCancelled=%{BOOL}d", v3, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x19A902C50](v4, -1, -1);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  swift_beginAccess();
  return v10;
}

uint64_t sub_19A4062CC(uint64_t a1, void (*a2)(void))
{
  v13 = 0;
  sub_19A573C4C();
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1ED82BCF0);

  v4 = sub_19A5723DC();
  v5 = sub_19A57354C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136315394;
    a2(0);
    v8 = sub_19A572DAC();
    v10 = sub_19A31F114(v8, v9, v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    swift_beginAccess();
    *(v6 + 14) = v13;
    _os_log_impl(&dword_19A2DE000, v4, v5, "%s isCancelled=%{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  return v13;
}

uint64_t sub_19A406500(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22[-v8];
  v28 = 0;
  v23 = v7;
  v24 = v10;
  v25 = v1;
  v26 = &v28;
  sub_19A573C4C();
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v11 = sub_19A5723FC();
  __swift_project_value_buffer(v11, qword_1ED82BCF0);
  v12 = *(v3 + 16);
  v12(v9, v1, a1);
  v13 = sub_19A5723DC();
  v14 = sub_19A57354C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27[0] = v16;
    *v15 = 136315394;
    v12(v6, v9, a1);
    v17 = sub_19A572DAC();
    v19 = v18;
    (*(v3 + 8))(v9, a1);
    v20 = sub_19A31F114(v17, v19, v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 1024;
    swift_beginAccess();
    *(v15 + 14) = v28;
    _os_log_impl(&dword_19A2DE000, v13, v14, "%s isCancelled=%{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x19A902C50](v16, -1, -1);
    MEMORY[0x19A902C50](v15, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, a1);
  }

  swift_beginAccess();
  return v28;
}

uint64_t sub_19A406878(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_19A57331C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A40831C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_19A40838C(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v12 = sub_19A5723FC();
  __swift_project_value_buffer(v12, qword_1ED82BCF0);
  v13 = sub_19A5723DC();
  v14 = sub_19A57354C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v15;
    v24 = swift_slowAlloc();
    v25 = v24;
    *v15 = 136315138;
    v16 = sub_19A572DAC();
    v18 = sub_19A31F114(v16, v17, &v25);

    v19 = v23;
    *(v23 + 1) = v18;
    v20 = v19;
    _os_log_impl(&dword_19A2DE000, v13, v14, "%s checking current task cancelled state", v19, 0xCu);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x19A902C50](v21, -1, -1);
    MEMORY[0x19A902C50](v20, -1, -1);
  }

  v22 = sub_19A5732FC();
  result = (*(v8 + 8))(v10, v7);
  *a2 = v22 & 1;
  return result;
}

uint64_t sub_19A406B48(uint64_t a1, uint64_t a2, _BYTE *a3, void (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - v10;
  v12 = sub_19A57331C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A40831C(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_19A40838C(v11);
  }

  v28 = a3;
  (*(v13 + 32))(v15, v11, v12);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v17 = sub_19A5723FC();
  __swift_project_value_buffer(v17, qword_1ED82BCF0);

  v18 = sub_19A5723DC();
  v19 = sub_19A57354C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27[1] = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v29 = a2;
    a4(0);

    v23 = sub_19A572DAC();
    v25 = sub_19A31F114(v23, v24, &v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_19A2DE000, v18, v19, "%s checking current task cancelled state", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x19A902C50](v22, -1, -1);
    MEMORY[0x19A902C50](v21, -1, -1);
  }

  v26 = sub_19A5732FC();
  result = (*(v13 + 8))(v15, v12);
  *v28 = v26 & 1;
  return result;
}

uint64_t sub_19A406E40(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v41 = a2;
  v42 = a3;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35[-v13];
  v15 = sub_19A57331C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A40831C(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_19A40838C(v14);
  }

  v38 = v18;
  v39 = v4;
  (*(v16 + 32))(v18, v14, v15);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v20 = sub_19A5723FC();
  __swift_project_value_buffer(v20, qword_1ED82BCF0);
  v21 = *(v7 + 16);
  v21(v11, v41, a4);
  v22 = sub_19A5723DC();
  v23 = sub_19A57354C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = v22;
    v25 = v24;
    v41 = swift_slowAlloc();
    v43 = v41;
    *v25 = 136315138;
    v36 = v23;
    v21(v40, v11, a4);
    v26 = sub_19A572DAC();
    v28 = v27;
    (*(v7 + 8))(v11, a4);
    v29 = sub_19A31F114(v26, v28, &v43);

    v30 = v25;
    *(v25 + 4) = v29;
    v31 = v37;
    _os_log_impl(&dword_19A2DE000, v37, v36, "%s checking current task cancelled state", v30, 0xCu);
    v32 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x19A902C50](v32, -1, -1);
    MEMORY[0x19A902C50](v30, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, a4);
  }

  v33 = v38;
  v34 = sub_19A5732FC();
  result = (*(v16 + 8))(v33, v15);
  *v42 = v34 & 1;
  return result;
}

uint64_t sub_19A40722C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = sub_19A57331C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A40831C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_19A40838C(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v11 = sub_19A5723FC();
  __swift_project_value_buffer(v11, qword_1ED82BCF0);
  v12 = sub_19A5723DC();
  v13 = sub_19A57354C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[1] = v1;
    v16 = v15;
    v21 = v15;
    *v14 = 136315138;
    v17 = sub_19A572DAC();
    v19 = sub_19A31F114(v17, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_19A2DE000, v12, v13, "%s marking as cancelled", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x19A902C50](v16, -1, -1);
    MEMORY[0x19A902C50](v14, -1, -1);
  }

  sub_19A57330C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_19A4074D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v38 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33[-v12];
  v14 = sub_19A57331C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A40831C(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_19A40838C(v13);
  }

  v36 = v17;
  v37 = v3;
  (*(v15 + 32))(v17, v13, v14);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v19 = sub_19A5723FC();
  __swift_project_value_buffer(v19, qword_1ED82BCF0);
  v20 = *(v6 + 16);
  v20(v10, v39, a3);
  v21 = sub_19A5723DC();
  v22 = sub_19A57354C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v21;
    v24 = v23;
    v39 = swift_slowAlloc();
    v40 = v39;
    *v24 = 136315138;
    v34 = v22;
    v20(v38, v10, a3);
    v25 = sub_19A572DAC();
    v27 = v26;
    (*(v6 + 8))(v10, a3);
    v28 = sub_19A31F114(v25, v27, &v40);

    v29 = v24;
    *(v24 + 4) = v28;
    v30 = v35;
    _os_log_impl(&dword_19A2DE000, v35, v34, "%s marking as cancelled", v29, 0xCu);
    v31 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x19A902C50](v31, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, a3);
  }

  v32 = v36;
  sub_19A57330C();
  return (*(v15 + 8))(v32, v14);
}

uint64_t sub_19A407920()
{
  v1 = atomic_load((v0 + 16));
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);

  v3 = sub_19A5723DC();
  v4 = sub_19A57354C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;

    v7 = sub_19A572DAC();
    v9 = sub_19A31F114(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v1 & 1;
    _os_log_impl(&dword_19A2DE000, v3, v4, "%s isCancelled=%{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x19A902C50](v6, -1, -1);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  return v1 & 1;
}

void sub_19A407ACC()
{
  v1 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);

  v3 = sub_19A5723DC();
  v4 = sub_19A57354C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;

    v7 = sub_19A572DAC();
    v9 = sub_19A31F114(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_19A2DE000, v3, v4, "%s marking as cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x19A902C50](v6, -1, -1);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  atomic_store(1u, (v1 + 16));
}

uint64_t sub_19A407D38()
{
  swift_beginAccess();
  sub_19A57323C();
  v0 = type metadata accessor for WriteOnceReadMany();
  sub_19A4703FC(v0);
  return v2;
}

uint64_t sub_19A407DDC()
{
  v1 = v0;
  if (!sub_19A407D38())
  {
    goto LABEL_8;
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);

  v3 = sub_19A5723DC();
  v4 = sub_19A57354C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;

    v7 = sub_19A572DAC();
    v9 = sub_19A31F114(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_19A2DE000, v3, v4, "%s checking captured task cancelled state", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x19A902C50](v6, -1, -1);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  isCancelled = swift_task_isCancelled();

  if (isCancelled)
  {
    v11 = 1;
  }

  else
  {
LABEL_8:
    v12 = v1[5];
    v13 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
    v11 = (*(v13 + 8))(v12, v13);
  }

  return v11 & 1;
}

uint64_t sub_19A407FCC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  result = sub_19A407D38();
  if (result)
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v4 = sub_19A5723FC();
    __swift_project_value_buffer(v4, qword_1ED82BCF0);

    v5 = sub_19A5723DC();
    v6 = sub_19A57354C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;

      v9 = sub_19A572DAC();
      v11 = sub_19A31F114(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_19A2DE000, v5, v6, "%s cancelling capture task", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x19A902C50](v8, -1, -1);
      MEMORY[0x19A902C50](v7, -1, -1);
    }

    sub_19A57322C();
  }

  return result;
}

uint64_t sub_19A4081B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return v0;
}

uint64_t sub_19A4081EC()
{
  sub_19A4081B4();

  return swift_deallocClassInstance();
}

uint64_t sub_19A40831C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A40838C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA11F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A408450()
{
  result = qword_1ED823FC0;
  if (!qword_1ED823FC0)
  {
    sub_19A57317C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FC0);
  }

  return result;
}

unint64_t PersonalizedGeneratedImageCaptionPolicy.description.getter()
{
  v1 = v0;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_19A57395C();

  v20 = 0xD000000000000029;
  v21 = 0x800000019A5990C0;
  v2 = type metadata accessor for PersonalizedGeneratedImageCaptionPolicy(0);
  v3 = *(v0 + *(v2 + 20));
  v4 = *(v1 + *(v2 + 28));

  v5 = sub_19A403614(v4, v3);
  v6 = v5;
  v7 = v5[2];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_19A31EE78(v5[2], 0);
  v9 = sub_19A32E684(v19, v8 + 4, v7, v6);
  sub_19A2EA480();
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  v19[3] = v10;
  v11 = sub_19A404344(&qword_1EAFA11A0);
  v19[4] = v11;
  v19[0] = v8;
  v12 = __swift_project_boxed_opaque_existential_1(v19, v10);
  MEMORY[0x1EEE9AC00](v12);
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = sub_19A475C90;
  v18[5] = 0;

  v18[7] = sub_19A3E4928(sub_19A3E3EA0, v18, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v13);
  sub_19A404344(&qword_1ED823F48);
  v14 = sub_19A572BEC();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  MEMORY[0x19A900A50](v14, v16);

  return v20;
}

uint64_t sub_19A40887C()
{
  v0 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_19A572C4C();
  sub_19A5710EC();
  return sub_19A572D7C();
}

uint64_t sub_19A40898C(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_19A4089E0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t sub_19A408A40(void (*a1)(void))
{
  a1(0);
}

unint64_t NonPersonalizedGeneratedImageCaptionPolicy.description.getter()
{
  v1 = v0;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_19A57395C();

  v20 = 0xD00000000000002DLL;
  v21 = 0x800000019A5990F0;
  v2 = type metadata accessor for NonPersonalizedGeneratedImageCaptionPolicy(0);
  v3 = *(v0 + *(v2 + 20));
  v4 = *(v1 + *(v2 + 28));

  v5 = sub_19A403614(v4, v3);
  v6 = v5;
  v7 = v5[2];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_19A31EE78(v5[2], 0);
  v9 = sub_19A32E684(v19, v8 + 4, v7, v6);
  sub_19A2EA480();
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  v19[3] = v10;
  v11 = sub_19A404344(&qword_1EAFA11A0);
  v19[4] = v11;
  v19[0] = v8;
  v12 = __swift_project_boxed_opaque_existential_1(v19, v10);
  MEMORY[0x1EEE9AC00](v12);
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = sub_19A475C90;
  v18[5] = 0;

  v18[7] = sub_19A3E4928(sub_19A3E40A0, v18, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v13);
  sub_19A404344(&qword_1ED823F48);
  v14 = sub_19A572BEC();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  MEMORY[0x19A900A50](v14, v16);

  return v20;
}

uint64_t sub_19A408CD8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_19A408D14()
{
  v0 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_19A572C4C();
  sub_19A5710EC();
  return sub_19A572D7C();
}

uint64_t sub_19A408E2C(uint64_t a1)
{
  result = sub_19A408EDC(&qword_1EAFA11F8, type metadata accessor for PersonalizedGeneratedImageCaptionPolicy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A408E84(uint64_t a1)
{
  result = sub_19A408EDC(&qword_1EAFA1200, type metadata accessor for PersonalizedGeneratedImageCaptionPolicy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A408EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A408F24(uint64_t a1)
{
  result = sub_19A408EDC(&qword_1EAFA1208, type metadata accessor for PersonalizedGeneratedImageCaptionPolicy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A408F7C(uint64_t a1)
{
  result = sub_19A408EDC(&qword_1EAFA1210, type metadata accessor for NonPersonalizedGeneratedImageCaptionPolicy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A408FD4(uint64_t a1)
{
  result = sub_19A408EDC(&qword_1EAFA1218, type metadata accessor for NonPersonalizedGeneratedImageCaptionPolicy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A40902C(uint64_t a1)
{
  result = sub_19A408EDC(&qword_1EAFA1220, type metadata accessor for NonPersonalizedGeneratedImageCaptionPolicy);
  *(a1 + 8) = result;
  return result;
}

void sub_19A4090E8()
{
  if (!qword_1EAF9F0C0)
  {
    v0 = sub_19A5733AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F0C0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeneratedImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GeneratedImage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_19A4092DC()
{
  type metadata accessor for GeneratedImage();
  if (v0 <= 0x3F)
  {
    sub_19A4090E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_19A409388(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  type metadata accessor for ResolvedImage.HiddenBufferData();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19A5770A0;
  v6 = PixelFormatType;
  v7 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 84));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = a1;
  result = sub_19A331C90(v8, v9, v10, v11);
  *v7 = Width;
  v7[1] = Height;
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = v5;
  return result;
}

void sub_19A409460(unsigned __int8 *a1, char a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(type metadata accessor for GenerationRecipe(0) + 100);
  v9 = *(v2 + v8);
  if (!*(v9 + 2) || !*(*(v9 + 9) + 16))
  {
    goto LABEL_9;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (*(v9 + 2))
    {
      goto LABEL_5;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = sub_19A32E550(v9);
  if (!*(v9 + 2))
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(v9 + 9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 9) = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v3 + 2))
    {
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_18:
  v3 = sub_19A32E53C(v3);
  if (!*(v3 + 2))
  {
    goto LABEL_19;
  }

LABEL_7:
  v3[74] = v7;
  *(v3 + 36) = v5 | (v6 << 8);
  if (!*(v9 + 2))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v3[75] = a2 & 1;
  *(v9 + 9) = v3;
  *(v2 + v8) = v9;
LABEL_9:
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v11 = sub_19A5723FC();
  __swift_project_value_buffer(v11, qword_1ED82BCF0);
  oslog = sub_19A5723DC();
  v12 = sub_19A57353C();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315395;
    v15 = sub_19A572DAC();
    v17 = sub_19A31F114(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2081;
    v18 = sub_19A3885D0();
    v20 = sub_19A31F114(v18, v19, &v22);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_19A2DE000, oslog, v12, "FaceAttributes.%s: %{private}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v14, -1, -1);
    MEMORY[0x19A902C50](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_19A4096F0(uint64_t a1)
{
  v2 = byte_19A582C9C[*v1];
  v3 = *(a1 + 24);
  if (*(a1 + 8) != 1 && v3 != 0)
  {
    if (*(v3 + 16))
    {
      v5 = sub_19A3355E4(v2);
      if (v6)
      {
        v7 = *(*(v3 + 56) + 16 * v5);

        return v7;
      }
    }
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return 0xD000000000000011;
    }

    if (v2 == 4)
    {
      return 0xD000000000000010;
    }

    v9 = 1802658148;
  }

  else
  {
    if (!v2)
    {
      return 0x7320776F6C6C6579;
    }

    if (v2 != 1)
    {
      return 0xD000000000000017;
    }

    v9 = 1701601648;
  }

  return v9 | 0x696B732000000000;
}

unint64_t sub_19A409824(unsigned __int8 a1, uint64_t a2)
{
  v4 = *v2;
  if (a1 < 4u)
  {
    v6 = sub_19A573F1C();

    v5 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (a1 == 4)
  {

    v5 = 0;
    goto LABEL_6;
  }

  v5 = 1;
LABEL_6:
  if (v4 > 3)
  {
    if ((v4 - 7) < 3)
    {
      v7 = 5;
      goto LABEL_15;
    }

    if ((v4 - 5) < 2)
    {
      v7 = 4;
      goto LABEL_15;
    }

    v7 = 3;
    v8 = sub_19A409B4C(3u, a2);
    v12 = v8;
  }

  else
  {
    if ((v4 - 1) < 2)
    {
      v7 = 1;
LABEL_15:
      v8 = sub_19A409B4C(v7, a2);
      v12 = v8;
      goto LABEL_16;
    }

    if (!v4)
    {
      v12 = sub_19A409B4C(0, a2);

      v7 = 0;
LABEL_17:
      MEMORY[0x19A900A50](8236, 0xE200000000000000);
      v10 = sub_19A409C88(v7, a2);
      MEMORY[0x19A900A50](v10);

      return v12;
    }

    v7 = 2;
    v8 = sub_19A409B4C(2u, a2);
    v12 = v8;
  }

LABEL_16:
  v9 = sub_19A573F1C();

  if ((v5 | v9))
  {
    goto LABEL_17;
  }

  return v8;
}

unint64_t sub_19A409B4C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 8) == 1 || v2 == 0;
  if (!v3 && *(v2 + 16) && (v4 = a1, v5 = sub_19A3355E4(a1), a1 = v4, (v6 & 1) != 0))
  {
    v7 = *(*(v2 + 56) + 16 * v5);

    return v7;
  }

  else
  {
    v9 = 0x7320776F6C6C6579;
    v10 = 0xD000000000000011;
    v11 = 0x696B73206B726164;
    if (a1 == 4)
    {
      v11 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v10 = v11;
    }

    v12 = 0xD000000000000017;
    if (a1 == 1)
    {
      v12 = 0x696B7320656C6170;
    }

    if (a1)
    {
      v9 = v12;
    }

    if (a1 <= 2u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }
}

unint64_t sub_19A409C88(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 8) == 1 || v2 == 0;
  if (!v3 && *(v2 + 16) && (v4 = a1, v5 = sub_19A3355E4(a1), a1 = v4, (v6 & 1) != 0))
  {
    v7 = *(*(v2 + 56) + 16 * v5);

    return v7;
  }

  else
  {
    v9 = 0x6820776F6C6C6579;
    v10 = 0xD000000000000010;
    v11 = 0x6168206E776F7262;
    if (a1 != 4)
    {
      v11 = 0x6168206B63616C62;
    }

    if (a1 != 3)
    {
      v10 = v11;
    }

    v12 = 0x6168206B63616C62;
    if (a1 != 1)
    {
      v12 = 0x616820646E6F6C62;
    }

    if (a1)
    {
      v9 = v12;
    }

    if (a1 <= 2u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_19A409DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19A57102C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A409E8C, 0, 0);
}

uint64_t sub_19A409E8C()
{
  v47 = v0;
  v1 = *(v0[7] + 16);
  v1(v0[9], v0[5] + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask_id, v0[6]);
  v45 = 0x206B736154;
  v46 = 0xE500000000000000;
  sub_19A36BC14(&qword_1ED8252D8);
  v2 = sub_19A573EDC();
  MEMORY[0x19A900A50](v2);

  MEMORY[0x19A900A50](58, 0xE100000000000000);
  v0[10] = 0x206B736154;
  v0[11] = 0xE500000000000000;
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  v0[12] = __swift_project_value_buffer(v3, qword_1EAFCA1E8);

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(0x206B736154, 0xE500000000000000, &v45);
    _os_log_impl(&dword_19A2DE000, v4, v5, "%{public}s assigning prompt conditioning image", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v8 = sub_19A57231C();
  v0[13] = v8;
  v44 = *(v8 - 8);
  v0[14] = v44;
  v0[15] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = sub_19A57236C();
  __swift_project_value_buffer(v12, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v1(v10, v9, v11);
  v13 = sub_19A57234C();
  v14 = sub_19A57361C();
  v15 = sub_19A57376C();
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[6];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45 = v20;
    *v19 = 136446210;
    v43 = v14;
    v21 = sub_19A573EDC();
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = sub_19A31F114(v21, v23, &v45);

    *(v19 + 4) = v25;
    v26 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v13, v43, v26, "promptConditioningImageAssignment", "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x19A902C50](v20, -1, -1);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[16] = v24;
  v27 = v0[5];
  v28 = v0[3];
  swift_task_alloc();
  (*(v44 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[17] = sub_19A5723AC();

  v29 = *(v27 + 16);
  v30 = *(v27 + 24);
  if (v28)
  {
    v31 = v0[5];
    v32 = v0[3];
    v45 = v29;
    LOBYTE(v46) = v30;
    v33 = v29;
    v32(v31, &v45);
    sub_19A36C080(v45, v46);
  }

  v35 = v0[4];
  v34 = v0[5];
  v36 = v0[3];
  v37 = swift_task_alloc();
  v0[18] = v37;
  *(v37 + 16) = v34;
  *(v37 + 24) = v29;
  *(v37 + 32) = v30;
  *(v37 + 40) = 0x206B736154;
  *(v37 + 48) = 0xE500000000000000;
  *(v37 + 56) = v36;
  *(v37 + 64) = v35;
  v38 = swift_task_alloc();
  v0[19] = v38;
  *(v38 + 16) = 0x206B736154;
  *(v38 + 24) = 0xE500000000000000;
  v39 = swift_task_alloc();
  v0[20] = v39;
  v40 = type metadata accessor for DefinitionSession();
  *v39 = v0;
  v39[1] = sub_19A40A43C;
  v41 = v0[2];

  return MEMORY[0x1EEE6DE18](v41, &unk_19A582DC0, v37, sub_19A36C078, v38, 0, 0, v40);
}

uint64_t sub_19A40A43C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_19A40A66C;
  }

  else
  {

    v2 = sub_19A40A574;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A40A574()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[6];
  sub_19A40AB2C("promptConditioningImageAssignment", 33, 2);

  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_19A40A66C()
{
  v27 = v0;
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_19A40AB2C("promptConditioningImageAssignment", 33, 2);

  (*(v3 + 8))(v2, v4);

  v5 = v1;
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();

  if (!os_log_type_enabled(v6, v7))
  {

    v17 = v0[3];
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = v0[21];
  v10 = v0[10];
  v9 = v0[11];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v25 = v13;
  *v11 = 136446466;
  v14 = sub_19A31F114(v10, v9, &v25);

  *(v11 + 4) = v14;
  *(v11 + 12) = 2112;
  v15 = v8;
  v16 = _swift_stdlib_bridgeErrorToNSError();
  *(v11 + 14) = v16;
  *v12 = v16;
  _os_log_impl(&dword_19A2DE000, v6, v7, "%{public}s prompt conditioning image rejected - %@", v11, 0x16u);
  sub_19A2F3FA0(v12, &qword_1EAF9FD28);
  MEMORY[0x19A902C50](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x19A902C50](v13, -1, -1);
  MEMORY[0x19A902C50](v11, -1, -1);

  v17 = v0[3];
  if (v17)
  {
LABEL_5:
    v18 = v0[5];
    v25 = v0[21];
    v26 = 64;
    v19 = v25;
    v17(v18, &v25);
    sub_19A36C080(v25, v26);
  }

LABEL_6:
  v20 = v0[16];
  v21 = v0[9];
  v22 = v0[6];
  swift_willThrow();
  v20(v21, v22);

  v23 = v0[1];

  return v23();
}

id GenerativePlayground.PromptConditioningImageAssignmentTask.promptConditioningImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t GenerativePlayground.PromptConditioningImageAssignmentTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask_id;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenerativePlayground.PromptConditioningImageAssignmentTask.isCancelled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

Swift::Void __swiftcall GenerativePlayground.PromptConditioningImageAssignmentTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller), v1);
  (*(v2 + 16))(v1, v2);
}

unint64_t GenerativePlayground.PromptConditioningImageAssignmentTask.description.getter()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD000000000000026;
}

uint64_t sub_19A40AB2C(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A40AE14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 171) = a4;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 176) = a1;
  v9 = sub_19A57102C();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A40AEE4, 0, 0);
}

uint64_t sub_19A40AEE4()
{
  v53 = v0;
  sub_19A433264();
  v1 = *(v0 + 184);
  sub_19A36C0A8(v1 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__definitionSession, *(v0 + 176));
  v2 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__options;
  *(v0 + 256) = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__options;
  v3 = *(v1 + v2 + 3);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    v49 = v4;
  }

  else
  {
    if (!v3)
    {
      sub_19A433264();
      v38 = *(v0 + 171);
      v39 = *(v0 + 192);
      v40 = *(v0 + 176);
      v41 = (*(v0 + 184) + *(v0 + 256));
      v42 = *v41;
      v43 = v40 + *(type metadata accessor for DefinitionSession() + 88);
      v44 = v43 + *(type metadata accessor for GenerationRecipe(0) + 20);
      *(v44 + 52) = v42;
      *(v44 + 53) = v41[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0040);
      inited = swift_initStackObject();
      *(v0 + 296) = inited;
      *(inited + 16) = xmmword_19A576E10;
      *(inited + 32) = v39;
      *(inited + 40) = v38;
      *(v0 + 170) = v41[3];
      v46 = v39;
      v47 = swift_task_alloc();
      *(v0 + 304) = v47;
      *v47 = v0;
      v47[1] = sub_19A40B7D0;

      return sub_19A4C07D8(inited, (v0 + 170));
    }

    v49 = 0;
  }

  v5 = 0xD000000000000025;
  v6 = *(v0 + 176);
  v7 = sub_19A4CB924();
  *(v0 + 264) = v7;
  v8 = type metadata accessor for DefinitionSession();
  v9 = (v6 + *(v8 + 88));
  if (*v9 > 1u)
  {
    if (*v9 == 2)
    {
      v10 = "Generation.AppleDiffusion";
    }

    else
    {
      v10 = "promptGuidanceSketchAssignment";
      v5 = 0xD000000000000010;
    }
  }

  else if (*v9)
  {
    v10 = ".KeyboardEmojiGenerator";
  }

  else
  {
    v5 = 0xD000000000000027;
    v10 = ".PhotosGenerativeEdit";
  }

  *(v0 + 272) = v10;
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v48 = *(*(v0 + 176) + *(v8 + 20) + 20);
  v14 = type metadata accessor for GenerationRecipe(0);
  (*(v12 + 16))(v11, &v9[*(v14 + 72)], v13);
  v15 = *(v7 + 16);

  os_unfair_lock_lock((v15 + 80));
  v16 = *(v15 + 64);
  v17 = *(v15 + 72);
  if (v16)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = sub_19A3555A0;
  }

  else
  {
    v19 = 0;
  }

  sub_19A3558F8(v16);
  os_unfair_lock_unlock((v15 + 80));
  if (v16 && (v20 = *(v0 + 171), v21 = *(v0 + 192), sub_19A3558FC(v19), v50 = v21, LOBYTE(v51) = v20, v22 = sub_19A4CEB54(), v23 >> 60 != 15))
  {
    v30 = v22;
    v31 = v23;
    v32 = sub_19A570F1C();
    v34 = v33;
    sub_19A33EFB0(v30, v31);
    v52 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_19A576E10;
    *(v35 + 32) = 0x6567616D49676E70;
    v36 = v35 + 32;
    *(v35 + 72) = MEMORY[0x1E69E6158];
    *(v35 + 40) = 0xEC00000061746144;
    *(v35 + 48) = v32;
    *(v35 + 56) = v34;
    v37 = sub_19A330370(v35);
    swift_setDeallocating();
    sub_19A2F3FA0(v36, &qword_1EAFA2F00);
    sub_19A338028(&v52, v37, &v50);
    v24 = v50;
    v25 = v51;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = *(v0 + 171);
  *(v0 + 160) = *(v0 + 192);
  *(v0 + 168) = v26;
  *(v0 + 144) = v24;
  *(v0 + 152) = v25;
  v27 = swift_task_alloc();
  *(v0 + 280) = v27;
  *v27 = v0;
  v27[1] = sub_19A40B444;
  v28 = *(v0 + 248);
  v55 = v0 + 144;

  return sub_19A353318(v0 + 169, (v0 + 160), v49, 0, v5, v10 | 0x8000000000000000, v48, v28);
}

uint64_t sub_19A40B444()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_19A40B740;
  }

  else
  {
    v2 = sub_19A40B588;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A40B588()
{
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

  v1 = *(v0 + 288);
  sub_19A433264();
  if (v1)
  {
    sub_19A36BAC0(*(v0 + 176));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 171);
    v5 = *(v0 + 192);
    v6 = *(v0 + 176);
    v7 = (*(v0 + 184) + *(v0 + 256));
    v8 = *v7;
    v9 = v6 + *(type metadata accessor for DefinitionSession() + 88);
    v10 = v9 + *(type metadata accessor for GenerationRecipe(0) + 20);
    *(v10 + 52) = v8;
    *(v10 + 53) = v7[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0040);
    inited = swift_initStackObject();
    *(v0 + 296) = inited;
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = v5;
    *(inited + 40) = v4;
    *(v0 + 170) = v7[3];
    v12 = v5;
    v13 = swift_task_alloc();
    *(v0 + 304) = v13;
    *v13 = v0;
    v13[1] = sub_19A40B7D0;

    return sub_19A4C07D8(inited, (v0 + 170));
  }
}

uint64_t sub_19A40B740()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = v0[22];

  sub_19A36BAC0(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19A40B7D0()
{
  *(*v1 + 312) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v0)
  {
    v2 = sub_19A40BAF4;
  }

  else
  {
    v2 = sub_19A40B924;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A40B924()
{
  v16 = v0;
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1EAFCA1E8);

  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(v5, v4, &v14);
    _os_log_impl(&dword_19A2DE000, v2, v3, "%{public}s accepted prompt conditioning image", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v8 = *(v0 + 216);
  if (v8)
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 171) | 0x80;
    v14 = *(v0 + 192);
    v15 = v10;
    v11 = v14;
    v8(v9, &v14);
    sub_19A36C080(v14, v15);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_19A40BAF4()
{
  sub_19A36BAC0(*(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerativePlayground.PromptConditioningImageAssignmentTask.deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller);
  return v0;
}

uint64_t GenerativePlayground.PromptConditioningImageAssignmentTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller);

  return swift_deallocClassInstance();
}

uint64_t sub_19A40BCAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A40BD28()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_19A40BD8C()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground37PromptConditioningImageAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

unint64_t sub_19A40BDEC()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD000000000000026;
}

uint64_t type metadata accessor for GenerativePlayground.PromptConditioningImageAssignmentTask()
{
  result = qword_1EAFA1250;
  if (!qword_1EAFA1250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A40BF04()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DefinitionSession();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19A40C008(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19A2F759C;

  return sub_19A40AE14(a1, v4, v5, v10, v6, v7, v8, v9);
}

uint64_t DefinitionSession.save(to:printEncodedData:)(uint64_t a1, char a2)
{
  v2 = sub_19A572D6C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_19A57081C();
  MEMORY[0x1EEE9AC00](v3);
  sub_19A57087C();
  swift_allocObject();
  sub_19A57086C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1260);
  *(swift_allocObject() + 16) = xmmword_19A576E20;
  sub_19A57080C();
  sub_19A5707FC();
  sub_19A40C574(&qword_1EAFA1268, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1270);
  sub_19A40C42C();
  sub_19A57388C();
  sub_19A57082C();
  type metadata accessor for DefinitionSession();
  sub_19A40C574(&qword_1EAFA1280, type metadata accessor for DefinitionSession);
  v4 = sub_19A57083C();
  if (v12)
  {
  }

  v6 = v4;
  v7 = v5;
  if ((a2 & 1) == 0)
  {
LABEL_5:
    sub_19A570F3C();
    sub_19A33EFC4(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19A576E10;
  sub_19A572D4C();
  result = sub_19A572D1C();
  if (v10)
  {
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 32) = result;
    *(v8 + 40) = v10;
    sub_19A5740AC();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_19A40C42C()
{
  result = qword_1EAFA1278;
  if (!qword_1EAFA1278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1278);
  }

  return result;
}

uint64_t static DefinitionSession.load(from:)()
{
  result = sub_19A570ECC();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    sub_19A5707EC();
    swift_allocObject();
    sub_19A5707DC();
    type metadata accessor for DefinitionSession();
    sub_19A40C574(&qword_1EAFA1288, type metadata accessor for DefinitionSession);
    sub_19A5707BC();

    return sub_19A33EFC4(v3, v4);
  }

  return result;
}

uint64_t sub_19A40C574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ImageProvenance()
{
  result = qword_1ED8259A8;
  if (!qword_1ED8259A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A40C630()
{
  sub_19A57102C();
  if (v0 <= 0x3F)
  {
    sub_19A40C714(319, &unk_1ED8255C8, &qword_1EAFA0108);
    if (v1 <= 0x3F)
    {
      sub_19A40C714(319, &qword_1ED825348, &qword_1EAFA1290);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A40C714(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_19A57378C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_19A40C778()
{
  v0 = sub_19A330370(MEMORY[0x1E69E7CC0]);
  v9 = v0;
  v1 = sub_19A40DF18();
  if (v1)
  {
    v2 = v1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210);
    *&v6 = v2;
    v3 = sub_19A572CFC();
    sub_19A40E138(&v6, v3, v4, v8);

    sub_19A40EBE4(v8);
    result = v9;
    if (*(v9 + 16))
    {
      return result;
    }

    goto LABEL_3;
  }

  result = v0;
  if (!*(v0 + 16))
  {
LABEL_3:

    return 0;
  }

  return result;
}

unint64_t sub_19A40C844()
{
  result = sub_19A40C778();
  if (result)
  {
    v1 = result;
    result = CGImageMetadataCreateMutable();
    metadata = result;
    v2 = 0;
    v3 = v1 + 64;
    v4 = 1 << *(v1 + 32);
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 & *(v1 + 64);
    v7 = (v4 + 63) >> 6;
    v35 = v1 + 64;
    v36 = v1;
    v34 = v7;
    if (!v6)
    {
      goto LABEL_9;
    }

    do
    {
      while (1)
      {
        v8 = v2;
LABEL_16:
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = v11 | (v8 << 6);
        v13 = (*(v1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_19A334618(*(v1 + 56) + 32 * v12, &v40);
        *&v43 = v14;
        *(&v43 + 1) = v15;
        sub_19A3355EC(&v40, &v44);

        v10 = v8;
LABEL_17:
        v46 = v43;
        v47[0] = v44;
        v47[1] = v45;
        if (!*(&v43 + 1))
        {
          goto LABEL_40;
        }

        sub_19A3355EC(v47, &v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210);
        if (swift_dynamicCast())
        {
          break;
        }

        v2 = v10;
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v37 = v10;
      v16 = 0;
      v17 = v40;
      v18 = v40 + 64;
      v19 = 1 << *(v40 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v40 + 64);
      v22 = (v19 + 63) >> 6;
      if (!v21)
      {
LABEL_24:
        if (v22 <= v16 + 1)
        {
          v24 = v16 + 1;
        }

        else
        {
          v24 = v22;
        }

        v25 = v24 - 1;
        while (1)
        {
          v23 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v21 = 0;
            v41 = 0u;
            v42 = 0u;
            v40 = 0u;
            goto LABEL_32;
          }

          v21 = *(v18 + 8 * v23);
          ++v16;
          if (v21)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_40:

        return metadata;
      }

      while (1)
      {
        v23 = v16;
LABEL_31:
        v26 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v27 = v26 | (v23 << 6);
        v28 = (*(v17 + 48) + 16 * v27);
        v29 = *v28;
        v30 = v28[1];
        sub_19A334618(*(v17 + 56) + 32 * v27, v39);
        *&v40 = v29;
        *(&v40 + 1) = v30;
        sub_19A3355EC(v39, &v41);

        v25 = v23;
LABEL_32:
        v43 = v40;
        v44 = v41;
        v45 = v42;
        if (!*(&v40 + 1))
        {
          break;
        }

        sub_19A3355EC(&v44, &v40);
        v31 = sub_19A572CCC();
        v32 = sub_19A572CCC();

        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        v33 = sub_19A573F0C();
        CGImageMetadataSetValueMatchingImageProperty(metadata, v31, v32, v33);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v40);
        v16 = v25;
        if (!v21)
        {
          goto LABEL_24;
        }
      }

      v1 = v36;
      v2 = v37;
      v7 = v34;
      v3 = v35;
    }

    while (v6);
LABEL_9:
    if (v7 <= v2 + 1)
    {
      v9 = v2 + 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 - 1;
    while (1)
    {
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        v6 = 0;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v8);
      ++v2;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A40CBAC(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12F8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1300);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1308);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1310);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1318);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A40EA40();
  sub_19A5741AC();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_19A40EAE8();
      v9 = v23;
      sub_19A573DAC();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_19A40EA94();
      v9 = v26;
      sub_19A573DAC();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_19A40EB3C();
    sub_19A573DAC();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_19A40EB90();
  sub_19A573DAC();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_19A40CFE8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A40DD0C();
  sub_19A5741AC();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_19A3A32BC();
  sub_19A573E7C();
  if (!v2)
  {
    v9 = type metadata accessor for ImageProvenance();
    LOBYTE(v11) = 1;
    sub_19A57102C();
    sub_19A36BC14(&qword_1ED8252E8);
    sub_19A573E7C();
    LOBYTE(v11) = 2;
    sub_19A573E6C();
    v11 = *&v3[*(v9 + 28)];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0108);
    sub_19A40DD60(&qword_1EAF9E900, &qword_1EAF9E918);
    sub_19A573E1C();
    v11 = *&v3[*(v9 + 32)];
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290);
    sub_19A40DDEC(&qword_1EAF9E918);
    sub_19A573E1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A40D2D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_19A57102C();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12B8);
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImageProvenance();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A40DD0C();
  v20 = v7;
  v11 = v22;
  sub_19A57417C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v10;
  v13 = v18;
  v14 = v19;
  v24 = 0;
  sub_19A3A38A4();
  sub_19A573D4C();
  *v12 = v23;
  LOBYTE(v23) = 1;
  sub_19A36BC14(&qword_1ED8252E0);
  sub_19A573D4C();
  (*(v14 + 32))(&v12[v8[5]], v5, v3);
  LOBYTE(v23) = 2;
  *&v12[v8[6]] = sub_19A573D3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0108);
  v24 = 3;
  sub_19A40DD60(&qword_1EAF9F170, &qword_1ED823F88);
  sub_19A573CDC();
  *&v12[v8[7]] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290);
  v24 = 4;
  sub_19A40DDEC(&qword_1ED823F88);
  sub_19A573CDC();
  (*(v13 + 8))(v20, v21);
  *&v12[v8[8]] = v23;
  sub_19A40DE58(v12, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_19A40DEBC(v12);
}

unint64_t sub_19A40D764()
{
  v1 = 0x6472616F6279656BLL;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_19A40D7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A40E284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A40D81C(uint64_t a1)
{
  v2 = sub_19A40EA40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A40D858(uint64_t a1)
{
  v2 = sub_19A40EA40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A40D894(uint64_t a1)
{
  v2 = sub_19A40EB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A40D8D0(uint64_t a1)
{
  v2 = sub_19A40EB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A40D90C(uint64_t a1)
{
  v2 = sub_19A40EB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A40D948(uint64_t a1)
{
  v2 = sub_19A40EB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A40D984(uint64_t a1)
{
  v2 = sub_19A40EAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A40D9C0(uint64_t a1)
{
  v2 = sub_19A40EAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A40D9FC(uint64_t a1)
{
  v2 = sub_19A40EA94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A40DA38(uint64_t a1)
{
  v2 = sub_19A40EA94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_19A40DA84@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A40E400(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_19A40DAD0()
{
  result = qword_1EAFA1298;
  if (!qword_1EAFA1298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA12A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1298);
  }

  return result;
}

unint64_t sub_19A40DB38()
{
  result = qword_1EAFA12A8;
  if (!qword_1EAFA12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA12A8);
  }

  return result;
}

unint64_t sub_19A40DB8C()
{
  v1 = *v0;
  v2 = 0x6F746172656E6567;
  v3 = 0xD000000000000014;
  v4 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69746172656E6567;
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

uint64_t sub_19A40DC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A40F17C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A40DC64(uint64_t a1)
{
  v2 = sub_19A40DD0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A40DCA0(uint64_t a1)
{
  v2 = sub_19A40DD0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_19A40DD0C()
{
  result = qword_1ED824960;
  if (!qword_1ED824960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824960);
  }

  return result;
}

uint64_t sub_19A40DD60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0108);
    sub_19A40DDEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A40DDEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A40DE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageProvenance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A40DEBC(uint64_t a1)
{
  v2 = type metadata accessor for ImageProvenance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A40DF18()
{
  v1 = *&v0[*(type metadata accessor for ImageProvenance() + 32)];
  if (v1)
  {
    return sub_19A46EF68(v1);
  }

  v3 = *v0;
  if (v3 == 3)
  {
    return 0;
  }

  if (v3 == 2)
  {
    v4 = sub_19A572CFC();
    v6 = v5;
    v7 = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69E6158];
    *&v25 = 0xD000000000000016;
    *(&v25 + 1) = 0x800000019A599310;
    sub_19A3355EC(&v25, v24);
    v8 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19A33D694(v24, v4, v6, isUniquelyReferenced_nonNull_native);

    v10 = v8;
    v11 = sub_19A572CFC();
    v13 = v12;
    v14 = 0x800000019A599380;
    v26 = v7;
    v15 = 0xD000000000000053;
  }

  else
  {
    v16 = sub_19A572CFC();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69E6158];
    *&v25 = 0xD000000000000016;
    *(&v25 + 1) = 0x800000019A599310;
    sub_19A3355EC(&v25, v24);
    v20 = MEMORY[0x1E69E7CC8];
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A33D694(v24, v16, v18, v21);

    v10 = v20;
    v11 = sub_19A572CFC();
    v13 = v22;
    v14 = 0x800000019A599330;
    v26 = v19;
    v15 = 0xD000000000000046;
  }

  *&v25 = v15;
  *(&v25 + 1) = v14;
  sub_19A3355EC(&v25, v24);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_19A33D694(v24, v11, v13, v23);

  result = v10;
  if (!*(v10 + 16))
  {

    return 0;
  }

  return result;
}

uint64_t sub_19A40E138@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_19A31F6BC(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_19A32A8A4(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_19A31F6BC(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_19A57404C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_19A32CE60();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_19A34D384(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_19A3355EC((v12[7] + 32 * v13), a4);
  result = sub_19A3355EC(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
  return result;
}

uint64_t sub_19A40E284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472616F6279656BLL && a2 == 0xED0000696A6F6D45;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019A599440 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019A599460 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_19A40E400(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12C0);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12C8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12D0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12D8);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA12E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_19A40EA40();
  v15 = v43;
  sub_19A57417C();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_19A573D7C();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_19A344190();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_19A40EB3C();
        v29 = v33;
        sub_19A573C5C();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_19A40EB90();
        v23 = v33;
        sub_19A573C5C();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_19A40EAE8();
      v28 = v33;
      sub_19A573C5C();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_19A40EA94();
      v30 = v33;
      sub_19A573C5C();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_19A5739FC();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
  *v11 = &type metadata for ImageProvenance.Generator;
  sub_19A573C7C();
  sub_19A5739DC();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  return v11;
}

unint64_t sub_19A40EA40()
{
  result = qword_1ED824948;
  if (!qword_1ED824948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824948);
  }

  return result;
}

unint64_t sub_19A40EA94()
{
  result = qword_1EAFA12E8;
  if (!qword_1EAFA12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA12E8);
  }

  return result;
}

unint64_t sub_19A40EAE8()
{
  result = qword_1EAFA12F0;
  if (!qword_1EAFA12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA12F0);
  }

  return result;
}

unint64_t sub_19A40EB3C()
{
  result = qword_1EAF9F708;
  if (!qword_1EAF9F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F708);
  }

  return result;
}

unint64_t sub_19A40EB90()
{
  result = qword_1EAF9F710;
  if (!qword_1EAF9F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F710);
  }

  return result;
}

uint64_t sub_19A40EBE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A40ECB0()
{
  result = qword_1EAFA1320;
  if (!qword_1EAFA1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1320);
  }

  return result;
}

unint64_t sub_19A40ED08()
{
  result = qword_1EAFA1328;
  if (!qword_1EAFA1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1328);
  }

  return result;
}

unint64_t sub_19A40ED60()
{
  result = qword_1ED824918;
  if (!qword_1ED824918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824918);
  }

  return result;
}

unint64_t sub_19A40EDB8()
{
  result = qword_1ED824920;
  if (!qword_1ED824920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824920);
  }

  return result;
}

unint64_t sub_19A40EE10()
{
  result = qword_1ED824908;
  if (!qword_1ED824908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824908);
  }

  return result;
}

unint64_t sub_19A40EE68()
{
  result = qword_1ED824910;
  if (!qword_1ED824910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824910);
  }

  return result;
}

unint64_t sub_19A40EEC0()
{
  result = qword_1ED8248F8;
  if (!qword_1ED8248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248F8);
  }

  return result;
}

unint64_t sub_19A40EF18()
{
  result = qword_1ED824900;
  if (!qword_1ED824900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824900);
  }

  return result;
}

unint64_t sub_19A40EF70()
{
  result = qword_1ED824928;
  if (!qword_1ED824928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824928);
  }

  return result;
}

unint64_t sub_19A40EFC8()
{
  result = qword_1ED824930;
  if (!qword_1ED824930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824930);
  }

  return result;
}

unint64_t sub_19A40F020()
{
  result = qword_1ED824938;
  if (!qword_1ED824938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824938);
  }

  return result;
}

unint64_t sub_19A40F078()
{
  result = qword_1ED824940;
  if (!qword_1ED824940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824940);
  }

  return result;
}

unint64_t sub_19A40F0D0()
{
  result = qword_1ED824950;
  if (!qword_1ED824950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824950);
  }

  return result;
}

unint64_t sub_19A40F128()
{
  result = qword_1ED824958;
  if (!qword_1ED824958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824958);
  }

  return result;
}

uint64_t sub_19A40F17C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F746172656E6567 && a2 == 0xE900000000000072;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEC00000044496E6FLL || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019A5993E0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000019A599400 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019A599420 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t dispatch thunk of RequiredResourcesIndicating.hasRequiredResources.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A31845C;

  return v7(a1, a2);
}

void *sub_19A40F464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_19A57102C();
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v16 = sub_19A57236C();
  __swift_project_value_buffer(v16, qword_1ED82BD30);
  v44 = sub_19A57231C();
  v45 = &v35;
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_19A57230C();
  v19 = sub_19A57234C();
  v40 = sub_19A57362C();

  if (sub_19A57376C())
  {
    v20 = swift_slowAlloc();
    v38 = a5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a3;
    v36 = v22;
    v46 = v22;
    *v21 = 136446210;
    v23 = v15;
    MEMORY[0x19A8FF9D0]();
    sub_19A2F4644();
    v24 = v41;
    v25 = sub_19A573EDC();
    v37 = a1;
    v26 = a4;
    v27 = a2;
    v29 = v28;
    (*(v42 + 8))(v23, v24);
    v30 = sub_19A31F114(v25, v29, &v46);
    a2 = v27;
    a4 = v26;
    a1 = v37;

    *(v21 + 4) = v30;
    v31 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v19, v40, v31, "createModelManagerSession", "session %{public}s, privacy: .public)", v21, 0xCu);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    a3 = v39;
    MEMORY[0x19A902C50](v32, -1, -1);
    v33 = v21;
    a5 = v38;
    MEMORY[0x19A902C50](v33, -1, -1);
  }

  (*(v43 + 8))(v18, v44);
  v6[2] = a1;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a2;
  v6[6] = a3;
  return v6;
}

uint64_t sub_19A40F790()
{
  v1 = v0;
  v2 = sub_19A57102C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v6 = sub_19A57236C();
  __swift_project_value_buffer(v6, qword_1ED82BD30);
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_19A57230C();
  v11 = sub_19A57234C();
  v25 = sub_19A57362C();

  if (sub_19A57376C())
  {
    v12 = swift_slowAlloc();
    v24 = v8;
    v13 = v12;
    v22 = swift_slowAlloc();
    v26 = v22;
    *v13 = 136446210;
    MEMORY[0x19A8FF9D0]();
    sub_19A2F4644();
    v14 = sub_19A573EDC();
    v23 = v7;
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    v17 = sub_19A31F114(v14, v16, &v26);

    *(v13 + 4) = v17;
    v18 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v11, v25, v18, "releaseModelManagerSession", "session %{public}s", v13, 0xCu);
    v19 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x19A902C50](v19, -1, -1);
    MEMORY[0x19A902C50](v13, -1, -1);

    (*(v24 + 8))(v10, v23);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return v1;
}

uint64_t sub_19A40FAAC()
{
  sub_19A40F790();

  return swift_deallocClassInstance();
}

uint64_t sub_19A40FB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GenerationRecipe(0);
  v6 = *(a1 + *(v5 + 24));
  if (!*(v6 + 16))
  {
    sub_19A3577FC();
    swift_allocError();
    *v15 = xmmword_19A583520;
    v16 = 4;
LABEL_10:
    *(v15 + 16) = v16;
    return swift_willThrow();
  }

  v7 = v5;
  v8 = *(v6 + 32);
  v9 = sub_19A39C230();
  if (!v9)
  {
LABEL_9:
    v30[0] = sub_19A39C230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1330);
    v17 = sub_19A572DAC();
    v19 = v18;
    sub_19A3577FC();
    swift_allocError();
    *v15 = v17;
    *(v15 + 8) = v19;
    v16 = 3;
    goto LABEL_10;
  }

  (*(v9 + 112))(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1340);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_19A4101AC(v27);
    goto LABEL_9;
  }

  sub_19A2EA460(v27, v30);
  LOBYTE(v29[0]) = v8;
  v10 = sub_19A39BD48();
  v11 = sub_19A4AD7C8(v29, v10 & 1, *(a1 + *(v7 + 84) + 24) != 0);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  v12 = v11;
  v13 = v31;
  v14 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v20 = (*(v14 + 8))(v13, v14);
  v22 = v21;
  v23 = sub_19A39B8E4();
  v25 = v24;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v30);
  *a2 = v12;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  return result;
}

uint64_t sub_19A40FD54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v10 = sub_19A57102C();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a7 + 16);
  sub_19A571E7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19A576E10;
  v46 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = v13;

  v16 = sub_19A571E3C();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v17 = sub_19A57236C();
  __swift_project_value_buffer(v17, qword_1ED82BD30);
  v18 = sub_19A57231C();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_19A57230C();
  v21 = sub_19A57234C();
  v43 = sub_19A57362C();

  if (sub_19A57376C())
  {
    v22 = swift_slowAlloc();
    v42 = &v39;
    v23 = v22;
    v41 = swift_slowAlloc();
    v52 = v41;
    *v23 = 67109634;

    *(v23 + 4) = v15;

    *(v23 + 8) = 2082;
    v25 = v12;
    MEMORY[0x19A8FF9D0](v24);
    sub_19A2F4644();
    v40 = v18;
    v26 = v16;
    v27 = v44;
    v28 = v45;
    v29 = sub_19A573EDC();
    v31 = v30;
    v32 = v28;
    v16 = v26;
    (*(v27 + 8))(v25, v32);
    v33 = sub_19A31F114(v29, v31, &v52);

    *(v23 + 10) = v33;
    *(v23 + 18) = 2080;
    v34 = sub_19A31F114(v46, a2, &v52);

    *(v23 + 20) = v34;
    v35 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v21, v43, v35, "createModelManagerSession", "client PID %d, session %{public}s, resourceBundleIdentifier %s, privacy: .public)", v23, 0x1Cu);
    v36 = v41;
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v36, -1, -1);
    MEMORY[0x19A902C50](v23, -1, -1);

    (*(v47 + 8))(v20, v40);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v47 + 8))(v20, v18);
  }

  type metadata accessor for ModelManagerInterface();
  v37 = swift_allocObject();
  sub_19A40F464(v16, v48, v49, v50, v51);
  return v37;
}

uint64_t sub_19A4101AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A410214(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v39 = a3[2];
  sub_19A40FB04(a2, &v40);
  if (!v3)
  {
    v45 = v5;
    v7 = v40;
    v8 = v41;
    v9 = v42;
    v10 = v43;
    v11 = v44;
    v12 = AppleDiffusionAdapter.modelCatalogResourceBundleIdentifier.getter(v40);
    v14 = v13;
    if (!a1)
    {
      goto LABEL_25;
    }

    v15 = v12;
    v37 = v11;
    v38 = v9;
    v16 = a1[3];
    v17 = a1[4];

    v18 = AppleDiffusionAdapter.modelCatalogInferenceAssetIdentifier.getter(v7);
    if (v17)
    {
      if (v19)
      {
        if (v16 == v18 && v17 == v19)
        {

          goto LABEL_13;
        }

        v20 = sub_19A573F1C();

        if (v20)
        {
LABEL_13:
          v9 = v38;
          if (a1[5] == v8 && a1[6] == v38 || (sub_19A573F1C() & 1) != 0)
          {
            v21 = sub_19A571E4C();
            if (v21[2])
            {
              v23 = v21[4];
              v22 = v21[5];

              if (v23 == v15 && v22 == v14)
              {

LABEL_27:
                v9 = v38;
                if (sub_19A571E6C() == v10 && v25 == v37)
                {
                }

                else
                {
                  v26 = sub_19A573F1C();

                  if ((v26 & 1) == 0)
                  {
LABEL_42:

                    goto LABEL_37;
                  }
                }

                v27 = sub_19A571E0C();

                if (v27 == v39)
                {
                  if (sub_19A571E2C() == 0xD00000000000001ALL && 0x800000019A596E30 == v28)
                  {

LABEL_41:

                    return a1;
                  }

                  v36 = sub_19A573F1C();

                  if (v36)
                  {

                    goto LABEL_41;
                  }
                }

                goto LABEL_42;
              }

              v24 = sub_19A573F1C();

              if (v24)
              {
                goto LABEL_27;
              }

              goto LABEL_22;
            }
          }

          else
          {
          }

LABEL_25:

          goto LABEL_37;
        }
      }

      else
      {
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_13;
      }
    }

LABEL_22:
    v9 = v38;
LABEL_37:
    v30 = AppleDiffusionAdapter.modelCatalogResourceBundleIdentifier.getter(v7);
    v32 = v31;
    v33 = AppleDiffusionAdapter.modelCatalogInferenceAssetIdentifier.getter(v7);
    v35 = v34;
    v40 = v45;
    v41 = v6;
    v42 = v39;

    return sub_19A40FD54(v30, v32, v8, v9, v33, v35, &v40);
  }

  return a1;
}

uint64_t sub_19A41061C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  result = sub_19A39C230();
  if (result)
  {
    (*(result + 112))(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1340);
    if (swift_dynamicCast())
    {
      sub_19A2EA460(v12, v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      v14[0] = v3;
      v14[1] = v2;
      v14[2] = v4;

      sub_19A39B8E4();
      v11 = sub_19A40FD54(v8, v10, v8, v10, 0, 0, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      return v11;
    }

    else
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      sub_19A4101AC(v12);
      return 0;
    }
  }

  return result;
}

BOOL sub_19A4107B0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = *v4;
    if (v8 == 1)
    {
      v9 = 0x6E616D6F77;
    }

    else
    {
      v9 = 0x6E79676F72646E61;
    }

    v10 = 0xEB0000000073756FLL;
    if (v8 == 1)
    {
      v10 = 0xE500000000000000;
    }

    if (*v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 7233901;
    }

    if (*v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v13 = 0x6E616D6F77;
      }

      else
      {
        v13 = 0x6E79676F72646E61;
      }

      if (a1 == 1)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xEB0000000073756FLL;
      }

      if (v11 != v13)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v14 = 0xE300000000000000;
      if (v11 != 7233901)
      {
        goto LABEL_2;
      }
    }

    if (v12 == v14)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_19A573F1C();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

BOOL sub_19A4108E8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v21 = v2;
    v6 = v2 - 1;
    if (!v2)
    {
      break;
    }

    v7 = *v3;
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v10 = 0x696A6F6D65;
      }

      else
      {
        v10 = 0x61727473756C6C69;
      }

      if (v7 == 1)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xEC0000006E6F6974;
      }

      if (*v3)
      {
        v8 = v10;
      }

      else
      {
        v8 = 0x6F6974616D696E61;
      }

      if (*v3)
      {
        v9 = v11;
      }

      else
      {
        v9 = 0xE90000000000006ELL;
      }
    }

    else if (*v3 > 4u)
    {
      if (v7 == 5)
      {
        v8 = 0xD000000000000013;
        v9 = 0x800000019A595400;
      }

      else
      {
        v9 = 0xE800000000000000;
        v8 = 0x6C616E7265747865;
      }
    }

    else
    {
      if (v7 == 3)
      {
        v8 = 0x686374656B73;
      }

      else
      {
        v8 = 0x747241656E696CLL;
      }

      if (v7 == 3)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE700000000000000;
      }
    }

    v12 = 0xD000000000000013;
    if (v4 != 5)
    {
      v12 = 0x6C616E7265747865;
    }

    v13 = 0x800000019A595400;
    if (v4 != 5)
    {
      v13 = 0xE800000000000000;
    }

    v14 = 0x747241656E696CLL;
    if (v4 == 3)
    {
      v14 = 0x686374656B73;
    }

    v15 = 0xE600000000000000;
    if (v4 != 3)
    {
      v15 = 0xE700000000000000;
    }

    if (v4 <= 4)
    {
      v12 = v14;
      v13 = v15;
    }

    if (v4 == 1)
    {
      v16 = 0x696A6F6D65;
    }

    else
    {
      v16 = 0x61727473756C6C69;
    }

    if (v4 == 1)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xEC0000006E6F6974;
    }

    if (!v4)
    {
      v16 = 0x6F6974616D696E61;
      v17 = 0xE90000000000006ELL;
    }

    if (v4 <= 2)
    {
      v18 = v16;
    }

    else
    {
      v18 = v12;
    }

    if (v4 <= 2)
    {
      v19 = v17;
    }

    else
    {
      v19 = v13;
    }

    if (v8 == v18 && v9 == v19)
    {

      return v21 != 0;
    }

    v5 = sub_19A573F1C();

    v2 = v6;
    ++v3;
  }

  while ((v5 & 1) == 0);
  return v21 != 0;
}

uint64_t sub_19A410B24(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a2 + 32);
  v5 = 0xE600000000000000;
  while (1)
  {
    v7 = *v4++;
    v6 = v7;
    if (v7 == 5)
    {
      if (a1 == 5)
      {
        return 1;
      }

      goto LABEL_4;
    }

    if (a1 == 5)
    {
      goto LABEL_4;
    }

    if (v6 <= 1)
    {
      if (v6)
      {
        v8 = 0x646C696863;
      }

      else
      {
        v8 = 2036490594;
      }

      if (v6)
      {
        v9 = 0xE500000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
      }
    }

    else if (v6 == 2)
    {
      v8 = 0x756441676E756F79;
      v9 = 0xEA0000000000746CLL;
    }

    else
    {
      if (v6 == 3)
      {
        v8 = 0x746C756461;
      }

      else
      {
        v8 = 0x726F696E6573;
      }

      if (v6 == 3)
      {
        v9 = 0xE500000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }
    }

    if (a1 == 3)
    {
      v10 = 0x746C756461;
    }

    else
    {
      v10 = 0x726F696E6573;
    }

    if (a1 == 3)
    {
      v5 = 0xE500000000000000;
    }

    if (a1 == 2)
    {
      v10 = 0x756441676E756F79;
      v5 = 0xEA0000000000746CLL;
    }

    v11 = a1 ? 0x646C696863 : 2036490594;
    v12 = a1 ? 0xE500000000000000 : 0xE400000000000000;
    v13 = a1 <= 1u ? v11 : v10;
    v14 = a1 <= 1u ? v12 : v5;
    if (v8 == v13 && v9 == v14)
    {
      break;
    }

    v15 = sub_19A573F1C();

    v5 = 0xE600000000000000;
    if (v15)
    {
      return 1;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_19A410CD4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_19A57112C();
    ++v2;
    sub_19A4170CC();
  }

  while ((sub_19A572C2C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_19A410DAC(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);
  sub_19A4B3BEC(0x3A286E6769737361, 0xE900000000000029, 0x615F6E6769737361, 0xEF293A28636E7973);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;

  sub_19A412EFC(&unk_19A5836F0, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImageStylesAssignable.assign(_:)(VisualGeneration::ImageStyle a1)
{
  v4 = v2;
  v5 = v1;
  v6 = *(v1 - 8);
  v7 = *(v6 + 64);
  v8 = *MEMORY[0x1EEE9AC00](a1);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v9 = sub_19A5723FC();
  __swift_project_value_buffer(v9, qword_1ED82BCF0);
  sub_19A4B3BEC(0x3A286E6769737361, 0xE900000000000029, 0x615F6E6769737361, 0xEF293A28636E7973);
  (*(v6 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  (*(v6 + 32))(v11 + v10, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + v10 + v7) = v8;
  sub_19A412EFC(&unk_19A5835A8, v11);
}

uint64_t sub_19A411098(_BYTE *a1)
{
  *(v2 + 40) = *a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_19A4110C4, 0, 0);
}

uint64_t sub_19A4110C4()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0190);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_19A576E10;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_19A411194;

  return sub_19A2FDB38(v2);
}

uint64_t sub_19A411194()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ImageStylesAssignable.assign_async(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4112D0, 0, 0);
}

uint64_t sub_19A4112D0()
{
  v1 = *(v0 + 64);
  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0190);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_19A576E10;
  *(v2 + 32) = v1;
  v7 = (*(v8 + 40) + **(v8 + 40));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_19A411428;
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);

  return v7(v2, v5, v4);
}

uint64_t sub_19A411428()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A411564, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A411564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4115C8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);
  sub_19A4B3BEC(0x3A286E6769737361, 0xE900000000000029, 0x615F6E6769737361, 0xEF293A28636E7973);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;

  sub_19A412EFC(&unk_19A5836D8, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImageStylesAssignable.assign(_:)(Swift::OpaquePointer a1)
{
  v4 = v2;
  v5 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1._rawValue);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v9 = sub_19A5723FC();
  __swift_project_value_buffer(v9, qword_1ED82BCF0);
  sub_19A4B3BEC(0x3A286E6769737361, 0xE900000000000029, 0x615F6E6769737361, 0xEF293A28636E7973);
  (*(v7 + 16))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  (*(v7 + 32))(v11 + v10, v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  sub_19A412EFC(&unk_19A5835C8, v11);
}

uint64_t sub_19A411950(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);
  sub_19A4B3D48(0x3A2865766F6D6572, 0xE900000000000029);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;

  sub_19A412EFC(&unk_19A5836B8, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImageStylesAssignable.remove(_:)(VisualGeneration::ImageStyle a1)
{
  v5 = v3;
  v19 = v2;
  v6 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 64);
  v18 = *MEMORY[0x1EEE9AC00](a1);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v9 = sub_19A5723FC();
  __swift_project_value_buffer(v9, qword_1ED82BCF0);
  v10 = sub_19A5723DC();
  v11 = sub_19A57355C();
  if (os_log_type_enabled(v10, v11))
  {
    v17[1] = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_19A31F114(0x3A2865766F6D6572, 0xE900000000000029, &v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x19A902C50](v13, -1, -1);
    MEMORY[0x19A902C50](v12, -1, -1);
  }

  (*(v7 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v19;
  *(v15 + 16) = v6;
  *(v15 + 24) = v16;
  (*(v7 + 32))(v15 + v14, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v15 + v14 + v8) = v18;
  sub_19A412EFC(&unk_19A5835E8, v15);
}

uint64_t sub_19A411CBC(_BYTE *a1)
{
  *(v2 + 49) = *a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_19A411CE8, 0, 0);
}

uint64_t sub_19A411CE8()
{
  v1 = *(v0 + 49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0190);
  inited = swift_initStackObject();
  *(v0 + 64) = inited;
  *(inited + 16) = xmmword_19A576E10;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_19A411DB4;

  return sub_19A2FE470(inited);
}

uint64_t sub_19A411DB4()
{
  v3 = *v0;

  swift_setDeallocating();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t ImageStylesAssignable.remove(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_19A411EF0, 0, 0);
}

uint64_t sub_19A411EF0()
{
  v1 = *(v0 + 64);
  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0190);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_19A576E10;
  *(v2 + 32) = v1;
  v7 = (*(v8 + 88) + **(v8 + 88));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_19A412048;
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);

  return v7(v2, v5, v4);
}

uint64_t sub_19A412048()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A417130, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A4121D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v13 = sub_19A5723FC();
  __swift_project_value_buffer(v13, qword_1ED82BCF0);
  sub_19A4B3D48(a4, a5);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;

  sub_19A412EFC(a7, v14);
}

uint64_t sub_19A412308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v36 = a3;
  v9 = v7;
  v11 = a1;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v15 = sub_19A5723FC();
  __swift_project_value_buffer(v15, qword_1ED82BCF0);
  v16 = sub_19A5723DC();
  v17 = sub_19A57355C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v11;
    v21 = v9;
    v22 = v20;
    v37 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_19A31F114(v33, v34, &v37);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v23 = v22;
    v9 = v21;
    v11 = v31;
    MEMORY[0x19A902C50](v23, -1, -1);
    v24 = v19;
    a7 = v32;
    MEMORY[0x19A902C50](v24, -1, -1);
  }

  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a2);
  v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v36;
  *(v27 + 16) = a2;
  *(v27 + 24) = v28;
  (*(v12 + 32))(v27 + v25, v14, a2);
  *(v27 + v26) = v11;

  sub_19A412EFC(a7, v27);
}

void sub_19A4125A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_19A31F114(0xD000000000000016, 0x800000019A599540, &v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;

  v11 = dispatch_semaphore_create(0);
  v12 = sub_19A5731CC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = &unk_19A583688;
  v13[6] = v1;
  v13[7] = v10;
  v14 = v11;

  sub_19A307070(0, 0, v4, &unk_19A583690, v13);

  sub_19A57366C();
  if (*(v10 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

Swift::Void __swiftcall ImageStylesAssignable.removeAllImageStyles()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v12 = sub_19A5723FC();
  __swift_project_value_buffer(v12, qword_1ED82BCF0);
  v13 = sub_19A5723DC();
  v14 = sub_19A57355C();
  if (os_log_type_enabled(v13, v14))
  {
    v27 = v9;
    v15 = swift_slowAlloc();
    v28 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315138;
    v9 = v27;
    *(v16 + 4) = sub_19A31F114(0xD000000000000016, 0x800000019A599540, &v29);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x19A902C50](v17, -1, -1);
    v18 = v16;
    v4 = v28;
    MEMORY[0x19A902C50](v18, -1, -1);
  }

  (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v4;
  (*(v10 + 32))(v20 + v19, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0);
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  *(v21 + 24) = 0;
  v22 = dispatch_semaphore_create(0);
  v23 = sub_19A5731CC();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = &unk_19A583618;
  v24[6] = v20;
  v24[7] = v21;
  v25 = v22;

  sub_19A307070(0, 0, v9, &unk_19A577120, v24);

  sub_19A57366C();
  if (*(v21 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A412C80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a3;
  v10 = (*(a5 + 24) + **(a5 + 24));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_19A412DB0;

  return v10(v5 + 32, a4, a5);
}

uint64_t sub_19A412DB0()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A412EE4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_19A412EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA0);
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  *(v7 + 24) = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = sub_19A5731CC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = v7;
  v11 = v8;

  sub_19A307070(0, 0, v6, &unk_19A583708, v10);

  sub_19A57366C();
  v12 = *(v7 + 24);
  if (v12)
  {
    swift_willThrow();
    v13 = v12;
  }

  else if (*(v7 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19A4130C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 40) + **(a5 + 40));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_19A33558C;

  return v11(a3, a4, a5);
}

uint64_t ImageStylesAssignable.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A413214, 0, 0);
}

uint64_t sub_19A413214()
{
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  if (v1)
  {
    v7 = (*(v0[4] + 8) + **(v0[4] + 8));
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_19A413364;
    v3 = v0[4];
    v4 = v0[3];

    return v7(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_19A413364(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A413464, 0, 0);
}

uint64_t sub_19A413464()
{
  v1 = 0;
  v25 = *(v0 + 16) + 32;
  v2 = *(v0 + 64);
  do
  {
    v3 = *(v25 + v1);
    v27 = v1 + 1;
    v28 = v2;
    v4 = *(v2 + 2);
    v5 = v2 + 32;
    while (v4)
    {
      v7 = *v5;
      if (v7 <= 2)
      {
        v10 = 0x61727473756C6C69;
        if (v7 == 1)
        {
          v10 = 0x696A6F6D65;
        }

        v11 = 0xEC0000006E6F6974;
        if (v7 == 1)
        {
          v11 = 0xE500000000000000;
        }

        if (*v5)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0x6F6974616D696E61;
        }

        if (*v5)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0xE90000000000006ELL;
        }

        if (v3 > 2)
        {
LABEL_31:
          v12 = 0xD000000000000013;
          if (v3 != 5)
          {
            v12 = 0x6C616E7265747865;
          }

          v13 = 0xE800000000000000;
          if (v3 == 5)
          {
            v13 = 0x800000019A595400;
          }

          v14 = 0x747241656E696CLL;
          if (v3 == 3)
          {
            v14 = 0x686374656B73;
            v15 = 0xE600000000000000;
          }

          else
          {
            v15 = 0xE700000000000000;
          }

          if (v3 <= 4)
          {
            v16 = v14;
          }

          else
          {
            v16 = v12;
          }

          if (v3 <= 4)
          {
            v17 = v15;
          }

          else
          {
            v17 = v13;
          }

          if (v8 != v16)
          {
            goto LABEL_5;
          }

          goto LABEL_57;
        }
      }

      else if (*v5 > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0xD000000000000013;
          v9 = 0x800000019A595400;
          if (v3 > 2)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x6C616E7265747865;
          if (v3 > 2)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x686374656B73;
        }

        else
        {
          v8 = 0x747241656E696CLL;
        }

        if (v7 == 3)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }

        if (v3 > 2)
        {
          goto LABEL_31;
        }
      }

      if (v3)
      {
        if (v3 == 1)
        {
          v18 = 0x696A6F6D65;
        }

        else
        {
          v18 = 0x61727473756C6C69;
        }

        if (v3 == 1)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v17 = 0xEC0000006E6F6974;
        }

        if (v8 != v18)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v17 = 0xE90000000000006ELL;
        if (v8 != 0x6F6974616D696E61)
        {
          goto LABEL_5;
        }
      }

LABEL_57:
      if (v9 == v17)
      {

LABEL_2:
        v1 = v27;
        v2 = v28;
        goto LABEL_3;
      }

LABEL_5:
      v6 = sub_19A573F1C();

      ++v5;
      --v4;
      if (v6)
      {
        goto LABEL_2;
      }
    }

    v2 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19A31D27C(0, *(v28 + 2) + 1, 1, v28);
    }

    v1 = v27;
    v20 = *(v2 + 2);
    v19 = *(v2 + 3);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_19A31D27C((v19 > 1), v20 + 1, 1, v2);
    }

    *(v2 + 2) = v20 + 1;
    v2[v20 + 32] = v3;
LABEL_3:
    v26[9] = v2;
  }

  while (v1 != v26[6]);
  v29 = (*(v26[4] + 40) + **(v26[4] + 40));
  v21 = swift_task_alloc();
  v26[10] = v21;
  *v21 = v26;
  v21[1] = sub_19A413868;
  v22 = v26[4];
  v23 = v26[3];

  return v29(v2, v23, v22);
}

uint64_t sub_19A413868()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A4139A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A4139A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A413A08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a3;
  v10 = (*(a5 + 72) + **(a5 + 72));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_19A413B38;

  return v10(v5 + 32, a4, a5);
}

uint64_t sub_19A413B38()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A417128, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A413C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 88) + **(a5 + 88));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_19A33558C;

  return v11(a3, a4, a5);
}

uint64_t ImageStylesAssignable.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A413DC0, 0, 0);
}

uint64_t sub_19A413DC0()
{
  v1 = *(v0[3] + 16);
  v0[7] = v1;
  if (v1)
  {
    v7 = (*(v0[5] + 8) + **(v0[5] + 8));
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_19A413F10;
    v3 = v0[5];
    v4 = v0[4];

    return v7(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_19A413F10(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A414010, 0, 0);
}

uint64_t sub_19A414010()
{
  v1 = v0[9];
  if (!*(v1 + 16))
  {

    v14 = v0[1];

    return v14();
  }

  v2 = v0[3];

  v3 = sub_19A415FDC(v1, v2);
  v5 = v4;

  if (v5)
  {
    v7 = *(v1 + 16);
    v8 = v0[9];
    v3 = v7;
LABEL_4:
    if (__OFADD__(v7, v3 - v7))
    {
      goto LABEL_101;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[2] = v8;
    if (!isUniquelyReferenced_nonNull_native || v3 > *(v8 + 3) >> 1)
    {
      if (v7 <= v3)
      {
        v10 = v3;
      }

      else
      {
        v10 = v7;
      }

      v8 = sub_19A31D27C(isUniquelyReferenced_nonNull_native, v10, 1, v8);
      v0[2] = v8;
    }

    v0[10] = v8;
    v40 = v0[5];
    sub_19A415C0C(v3, v7, 0);
    v38 = (*(v40 + 40) + **(v40 + 40));
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_19A414554;
    v12 = v0[5];
    v13 = v0[4];

    return v38(v8, v13, v12);
  }

  v7 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    goto LABEL_102;
  }

  v15 = v0[3] + 32;
  v8 = v0[9];
LABEL_21:
  v17 = *(v8 + 2);
  if (v7 == v17)
  {
    if (v7 < v3)
    {
      __break(1u);
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v7 >= v17)
  {
    goto LABEL_95;
  }

  v39 = v8;
  v41 = v3;
  v18 = 0;
  v37 = v8 + 32;
  v19 = v8[v7 + 32];
  while (v18 != v0[7])
  {
    v21 = *(v15 + v18);
    if (v21 <= 2)
    {
      v24 = 0x61727473756C6C69;
      if (v21 == 1)
      {
        v24 = 0x696A6F6D65;
      }

      v25 = 0xEC0000006E6F6974;
      if (v21 == 1)
      {
        v25 = 0xE500000000000000;
      }

      if (*(v15 + v18))
      {
        v22 = v24;
      }

      else
      {
        v22 = 0x6F6974616D696E61;
      }

      if (*(v15 + v18))
      {
        v23 = v25;
      }

      else
      {
        v23 = 0xE90000000000006ELL;
      }

      if (v19 > 2)
      {
LABEL_50:
        v26 = 0xD000000000000013;
        if (v19 != 5)
        {
          v26 = 0x6C616E7265747865;
        }

        v27 = 0xE800000000000000;
        if (v19 == 5)
        {
          v27 = 0x800000019A595400;
        }

        v28 = 0x747241656E696CLL;
        if (v19 == 3)
        {
          v28 = 0x686374656B73;
        }

        v29 = 0xE600000000000000;
        if (v19 != 3)
        {
          v29 = 0xE700000000000000;
        }

        if (v19 <= 4)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 <= 4)
        {
          v31 = v29;
        }

        else
        {
          v31 = v27;
        }

        if (v22 != v30)
        {
          goto LABEL_24;
        }

        goto LABEL_77;
      }
    }

    else if (*(v15 + v18) > 4u)
    {
      if (v21 == 5)
      {
        v22 = 0xD000000000000013;
        v23 = 0x800000019A595400;
        if (v19 > 2)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v23 = 0xE800000000000000;
        v22 = 0x6C616E7265747865;
        if (v19 > 2)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      if (v21 == 3)
      {
        v22 = 0x686374656B73;
      }

      else
      {
        v22 = 0x747241656E696CLL;
      }

      if (v21 == 3)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      if (v19 > 2)
      {
        goto LABEL_50;
      }
    }

    if (v19)
    {
      if (v19 == 1)
      {
        v32 = 0x696A6F6D65;
      }

      else
      {
        v32 = 0x61727473756C6C69;
      }

      if (v19 == 1)
      {
        v31 = 0xE500000000000000;
      }

      else
      {
        v31 = 0xEC0000006E6F6974;
      }

      if (v22 != v32)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v31 = 0xE90000000000006ELL;
      if (v22 != 0x6F6974616D696E61)
      {
        goto LABEL_24;
      }
    }

LABEL_77:
    if (v23 == v31)
    {

LABEL_19:
      v8 = v39;
      v3 = v41;
LABEL_20:
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_96;
      }

      goto LABEL_21;
    }

LABEL_24:
    v20 = sub_19A573F1C();

    ++v18;
    if (v20)
    {
      goto LABEL_19;
    }
  }

  if (v41 == v7)
  {
    v8 = v39;
    v3 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_97;
    }

    goto LABEL_20;
  }

  v8 = v39;
  if ((v41 & 0x8000000000000000) != 0)
  {
    goto LABEL_98;
  }

  v33 = *(v39 + 16);
  if (v41 < v33)
  {
    if (v7 >= v33)
    {
      goto LABEL_100;
    }

    v34 = v37[v41];
    v35 = v37[v7];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A32E564(v39);
      v8 = result;
    }

    v36 = v8 + 32;
    v36[v41] = v35;
    v36[v7] = v34;
    v3 = v41 + 1;
    if (!__OFADD__(v41, 1))
    {
      goto LABEL_20;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_19A414554()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_19A414688;
  }

  else
  {

    v2 = sub_19A414670;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A414688()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_19A4146EC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = *v4;
    if (v8 <= 2)
    {
      v11 = 0x61727473756C6C69;
      if (v8 == 1)
      {
        v11 = 0x696A6F6D65;
      }

      v12 = 0xEC0000006E6F6974;
      if (v8 == 1)
      {
        v12 = 0xE500000000000000;
      }

      if (*v4)
      {
        v9 = v11;
      }

      else
      {
        v9 = 0x6F6974616D696E61;
      }

      if (*v4)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0xE90000000000006ELL;
      }

      if (v2 > 2)
      {
LABEL_29:
        v13 = 0xD000000000000013;
        if (v2 != 5)
        {
          v13 = 0x6C616E7265747865;
        }

        v14 = 0xE800000000000000;
        if (v2 == 5)
        {
          v14 = 0x800000019A595400;
        }

        v15 = 0x747241656E696CLL;
        if (v2 == 3)
        {
          v15 = 0x686374656B73;
        }

        v16 = 0xE600000000000000;
        if (v2 != 3)
        {
          v16 = 0xE700000000000000;
        }

        if (v2 <= 4)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if (v2 <= 4)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        if (v9 != v17)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      }
    }

    else if (*v4 > 4u)
    {
      if (v8 == 5)
      {
        v9 = 0xD000000000000013;
        v10 = 0x800000019A595400;
        if (v2 > 2)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v10 = 0xE800000000000000;
        v9 = 0x6C616E7265747865;
        if (v2 > 2)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (v8 == 3)
      {
        v9 = 0x686374656B73;
      }

      else
      {
        v9 = 0x747241656E696CLL;
      }

      if (v8 == 3)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      if (v2 > 2)
      {
        goto LABEL_29;
      }
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v19 = 0x696A6F6D65;
      }

      else
      {
        v19 = 0x61727473756C6C69;
      }

      if (v2 == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xEC0000006E6F6974;
      }

      if (v9 != v19)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v18 = 0xE90000000000006ELL;
      if (v9 != 0x6F6974616D696E61)
      {
        goto LABEL_2;
      }
    }

LABEL_56:
    if (v10 == v18)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_19A573F1C();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_19A41496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(a4 + 104) + **(a4 + 104));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_19A33558C;

  return v9(a3, a4);
}

uint64_t sub_19A414A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_19A414B74;

  return v10();
}

uint64_t sub_19A414B74()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_19A414CF0;
  }

  else
  {
    v2 = sub_19A414C88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A414C88()
{
  *(*(v0 + 24) + 16) = 0;
  sub_19A57367C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A414CF0()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  *(v1 + 24) = v0[5];

  sub_19A57367C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_19A414D64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
  v7 = *(v6 + *(*(v4 - 8) + 64));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A412C80(a1, v6, v7, v4, v5);
}

uint64_t sub_19A414E74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A4130C0(a1, v1 + v6, v7, v4, v5);
}

uint64_t sub_19A414F8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A4130C0(a1, v1 + v6, v7, v4, v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 1, v2 | 7);
}

uint64_t sub_19A415128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
  v7 = *(v6 + *(*(v4 - 8) + 64));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A413A08(a1, v6, v7, v4, v5);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_19A4152CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A413C6C(a1, v1 + v6, v7, v4, v5);
}

uint64_t sub_19A4153E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A33558C;

  return sub_19A41496C(a1, v1 + v6, v4, v5);
}

unint64_t sub_19A4154CC(unint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 48 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = &v10[3 * a3];
  v15 = (v9 + 32 + 48 * a2);
  if (result != v15 || result >= v15 + 48 * v14)
  {
    result = memmove(result, v15, 48 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
    v19 = a4[1];
    v23 = *a4;
    v24 = v19;
    v25 = a4[2];
    v20 = v25;
    *v10 = v23;
    v10[1] = v19;
    v10[2] = v20;
    if (a3 == 1)
    {
      return result;
    }

    sub_19A416F2C(&v23, v22);
    sub_19A416F88(&v24, v22);
    __break(1u);
  }

  v22[0] = *a4;
  sub_19A2F132C(v22);
  v21 = a4[2];
  v24 = a4[1];
  v25 = v21;
  return sub_19A416EC4(&v24);
}

unint64_t sub_19A415608(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_19A4156D0(uint64_t a1, void *a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_19A4156F8, 0, 0);
}

uint64_t sub_19A4156F8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0190);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_19A576E10;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_19A41712C;

  return sub_19A2FDB38(v2);
}

uint64_t sub_19A4157C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_19A33558C;

  return sub_19A2FDB38(a3);
}

uint64_t sub_19A415860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_19A2F759C;

  return sub_19A2FDB38(a3);
}

uint64_t sub_19A4158F8(uint64_t a1, void *a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_19A415920, 0, 0);
}

uint64_t sub_19A415920()
{
  v1 = *(v0 + 49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0190);
  inited = swift_initStackObject();
  *(v0 + 64) = inited;
  *(inited + 16) = xmmword_19A576E10;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_19A417124;

  return sub_19A2FE470(inited);
}

uint64_t sub_19A4159EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_19A33558C;

  return sub_19A2FE470(a3);
}

uint64_t sub_19A415A84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A2F759C;

  return sub_19A2FE890();
}

unint64_t sub_19A415B28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_19A415C0C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_19A415CB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 48 * a3;
  v15 = (v9 + 32 + 48 * a2);
  if (result != v15 || result >= v15 + 48 * v14)
  {
    result = memmove(result, v15, 48 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_19A415DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_19A415F34(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A415FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v9 = *(v6 + v5);
    v7 = sub_19A4146EC(&v9, a2);
    if (v2 || v7)
    {
      break;
    }

    if (v3 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t dispatch thunk of ImageStylesAssignable.assignedImageStyles.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A31845C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageStylesAssignable.assign(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 32))();
}

uint64_t dispatch thunk of ImageStylesAssignable.assign_async(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return v9(a1, a2, a3);
}

{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A33558C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ImageStylesAssignable.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 48))();
}

{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A33558C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ImageStylesAssignable.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))();
}

{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A33558C;

  return v9(a1, a2, a3);
}

{
  return (*(a3 + 80))();
}

{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A33558C;

  return v9(a1, a2, a3);
}