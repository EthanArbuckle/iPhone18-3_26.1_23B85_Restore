uint64_t sub_1DCEAA8F4()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  v0[6] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_31_0(v11);

  return sub_1DCF65754();
}

uint64_t sub_1DCEAA9D8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DCEAAC80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEAAD78()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCEAADF4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v2);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCEAAE74()
{
  OUTLINED_FUNCTION_42();
  v0[160] = v1;
  v0[159] = v2;
  v0[158] = v3;
  v0[157] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v0[161] = OUTLINED_FUNCTION_38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v8);
  v0[162] = v9;
  v0[163] = *(v10 + 64);
  v0[164] = swift_task_alloc();
  v0[165] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCEAAF74()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = v0[165];
  v2 = v0[164];
  v3 = v0[163];
  v4 = v0[162];
  v5 = v0[158];
  v0[166] = qword_1EDE46630;
  sub_1DCB4E718((v0 + 129));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 129);
  RefreshableDeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for ViewFactory();
  v0[167] = swift_initStackObject();
  sub_1DCEAC8C4(v5, v1);
  sub_1DCB4F1DC(v1, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[168] = v7;
  sub_1DCD0506C(v2, v7 + v6);
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  v8 = swift_task_alloc();
  v0[169] = v8;
  *v8 = v0;
  v8[1] = sub_1DCEAB114;
  v9 = v0[165];
  v10 = v0[160];
  v11 = v0[159];
  v12 = OUTLINED_FUNCTION_55_2(v0[158]);

  return sub_1DCEAED90(v12, v13, v14, v15);
}

uint64_t sub_1DCEAB114()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 1352);
  *v4 = *v1;
  *(v3 + 1360) = v7;
  *(v3 + 1368) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v3 + 16, v3 + 696);
  }

  else
  {

    return MEMORY[0x1EEE6DEC0](v3 + 16, v3 + 696, sub_1DCEAB24C, v3 + 768);
  }
}

uint64_t sub_1DCEAB24C()
{
  *(v1 + 1376) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAB5AC);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAB278);
  }
}

void sub_1DCEAB278()
{
  v5 = v0;
  v1 = v0[170];
  v2 = v0[166];
  v3 = v0[161];
  v4 = v0[157];
  memcpy(v0 + 101, v0 + 87, 0x48uLL);
  sub_1DCBBF670((v0 + 101), (v0 + 115));
  sub_1DCB4E718((v0 + 139));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 139);
  v0[137] = type metadata accessor for RefreshableDeviceState();
  v0[138] = &protocol witness table for RefreshableDeviceState;
  v0[134] = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAB460()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[168];
  v2 = v0[164];
  v3 = v0[161];
  sub_1DCB16DB0(v0[165], &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCEAB514()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 1368);
  OUTLINED_FUNCTION_68_15();
  sub_1DCB16DB0(v0, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCEAB5AC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1360);

  v2 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v2, v0 + 696);
}

uint64_t sub_1DCEAB624()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 1376);
  OUTLINED_FUNCTION_68_15();
  sub_1DCB16DB0(v0, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCEAB6BC()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_64_14(v6);
  v0[16] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEAB774()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAB844()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v6);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEABAE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEABBD8()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  v0[6] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_31_0(v11);

  return static ResponsePatterns.taskComplete()();
}

uint64_t sub_1DCEABCC0()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DB04C();
  v0[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_38();
  v7 = type metadata accessor for OutputGenerationManifest();
  v0[7] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  v0[9] = OUTLINED_FUNCTION_38();
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCEABDB4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCEAC8C4(v0[3], v0[9]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1DCEABE4C;
  OUTLINED_FUNCTION_55_2(v0[9]);

  return sub_1DCF66000();
}

uint64_t sub_1DCEABE4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEAC0DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEAC1D4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  sub_1DCB16DB0(v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v4);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCEAC278()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB16DB0(v0[9], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCEAC308()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  sub_1DCB16DB0(v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v3);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCEAC3B0()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_64_14(v6);
  v0[16] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEAC468()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAC538()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v6);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void *sub_1DCEAC7C4()
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  qword_1ECCD26C0 = result;
  return result;
}

void sub_1DCEAC82C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDE57D40;
  *a2 = type metadata accessor for CATTemplateExecutor();
  *a3 = &off_1F58563F0;
  *a4 = v7;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAC8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DB0FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v16);
  v10 = __swift_destroy_boxed_opaque_existential_1Tm(v16);
  RefreshableDeviceState.siriLocale.getter(v10);
  if (a1)
  {
    v11 = sub_1DD0DD1BC();
    if (v12)
    {
      v16[0] = v11;
      v16[1] = v12;
      v15[1] = 0x6C7070612E6D6F63;
      v15[2] = 0xE900000000000065;
      sub_1DCD00AE8();
      sub_1DCD00B3C();
      sub_1DD0DDF3C();
    }

    type metadata accessor for AppInformationResolver();
    swift_initStackObject();
    sub_1DD0DCF8C();
  }

  (*(v5 + 8))(v9, v4);
  v13 = sub_1DD0DD23C();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
}

uint64_t sub_1DCEACADC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCEACB78;

  return static LabelTemplates.openApp(appDisplayInfo:)();
}

uint64_t sub_1DCEACB78()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v0)
  {
    OUTLINED_FUNCTION_59_17();
    OUTLINED_FUNCTION_152();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_48_19();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v22, v23, v24);
  }
}

uint64_t sub_1DCEACC9C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCEACB78;

  return sub_1DCC453B4();
}

uint64_t sub_1DCEACD2C()
{
  OUTLINED_FUNCTION_42();
  v0[29] = v1;
  v0[30] = v2;
  v3 = type metadata accessor for SiriKitSnippets(0);
  v0[31] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v0[32] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DB04C();
  v0[33] = v6;
  OUTLINED_FUNCTION_99(v6);
  v0[34] = v7;
  v9 = *(v8 + 64);
  v0[35] = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for OutputGenerationManifest();
  v0[36] = v10;
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  v0[37] = OUTLINED_FUNCTION_38();
  v13 = sub_1DD0DB0FC();
  v0[38] = v13;
  OUTLINED_FUNCTION_99(v13);
  v0[39] = v14;
  v16 = *(v15 + 64);
  v0[40] = OUTLINED_FUNCTION_38();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v17);
  v19 = *(v18 + 64);
  v0[41] = OUTLINED_FUNCTION_38();
  v20 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

void sub_1DCEACE90()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[30];
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
    v4 = v0[30];
  }

  v2 = v0[40];
  v0[42] = qword_1EDE46630;
  sub_1DCB4E718((v0 + 2));
  v3 = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  RefreshableDeviceState.siriLocale.getter(v3);
  type metadata accessor for AppInformationResolver();
  swift_initStackObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAD010()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  *v4 = v7;
  v3[44] = v8;
  v3[45] = v9;
  v3[46] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = swift_task_alloc();
    v3[47] = v13;
    *v13 = v7;
    OUTLINED_FUNCTION_31_0(v13);

    return static LabelTemplates.no()();
  }
}

uint64_t sub_1DCEAD168()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 376);
  *v4 = *v1;
  v3[48] = v7;
  v3[49] = v8;
  v3[50] = v0;

  if (v0)
  {
    v9 = v3[45];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEAD274()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1368 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  sub_1DCB4E718((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v0[10] = type metadata accessor for RefreshableDeviceState();
  v0[11] = &protocol witness table for RefreshableDeviceState;
  v0[7] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAD3B4()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v3[26] = v1;
  v3[27] = v5;
  v3[28] = v0;
  v6 = v2[52];
  *v4 = *v1;
  v3[53] = v0;

  sub_1DCB16DB0((v3 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v7 = v2[51];
  if (v0)
  {
    v8 = v3[49];
    v9 = v3[45];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEAD514()
{
  if (qword_1EDE4EC30 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 392);
  v30 = *(v0 + 384);
  v29 = *(v0 + 352);
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v26 = *(v0 + 272);
  v27 = *(v0 + 264);
  v28 = *(v0 + 248);
  v5 = unk_1EDE4EC40;
  OUTLINED_FUNCTION_73_8();
  v25 = v2[8];
  *(v1 + v2[9]) = 256;
  v24 = v2[10];
  *(v1 + v2[11]) = 0;
  v6 = v2[12];
  v7 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v23 = v2[13];
  OUTLINED_FUNCTION_57_13(v2[14]);
  OUTLINED_FUNCTION_57_13(v2[15]);
  *(v1 + v2[16]) = 0;
  *(v1 + v2[18]) = 0;
  OUTLINED_FUNCTION_16_29(v1 + v2[19]);
  OUTLINED_FUNCTION_29_26();
  *(v1 + v11) = MEMORY[0x1E69E7CC0];
  v12 = v2[29];
  v13 = *MEMORY[0x1E69D0678];
  v14 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v14);
  (*(v15 + 104))(v1 + v12, v13);
  v16 = v2[30];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_70_11();
  *v1 = v21;
  v1[1] = v5;
  v22 = v2[5];

  sub_1DCB67914();
}

uint64_t sub_1DCEAD860()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 440);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEAD960()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v1[54];
  v4 = v1[40];
  v5 = v1[41];
  OUTLINED_FUNCTION_41_21();

  sub_1DCEB0054(v2, type metadata accessor for SiriKitSnippets);
  sub_1DCB16DB0(v5, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v0, v7);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_152();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1DCEADA30()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DCB16DB0(v0[41], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v1 = v0[46];
  v3 = v0[40];
  v2 = v0[41];
  OUTLINED_FUNCTION_41_21();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCEADAD0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DCB16DB0(v0[41], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v1 = v0[50];
  v3 = v0[40];
  v2 = v0[41];
  OUTLINED_FUNCTION_41_21();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCEADB70()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DCB16DB0(v0[41], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v1 = v0[53];
  v3 = v0[40];
  v2 = v0[41];
  OUTLINED_FUNCTION_41_21();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1DCEADC10()
{
  result = qword_1ECCA8EE8;
  if (!qword_1ECCA8EE8)
  {
    type metadata accessor for SiriKitSnippets(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8EE8);
  }

  return result;
}

uint64_t sub_1DCEADC68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitSnippets(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCEADCCC()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_64_14(v6);
  v0[16] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEADD84()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEADE54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v6);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEAE0E0()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_64_14(v6);
  v0[16] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEAE198()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAE268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v6);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEAE4F4()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_64_14(v6);
  v0[16] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEAE5AC()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAE67C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v6);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEAE908()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEAEA00()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCEAEA7C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCEAEAE4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v2);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCEAEB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEAEB84, 0, 0);
}

void sub_1DCEAEB84()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAEC64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 120) = v0;

  sub_1DCB16DB0(v3 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCEAED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[264] = a4;
  v4[263] = a3;
  v4[262] = a2;
  v4[261] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v4[265] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AceOutput() - 8) + 64) + 15;
  v4[266] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0) - 8);
  v4[267] = v7;
  v4[268] = *(v7 + 64);
  v4[269] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCEAEED0, 0, 0);
}

void sub_1DCEAEED0()
{
  v1 = v0[269];
  v2 = v0[268];
  v3 = v0[267];
  v4 = v0[264];
  v5 = v0[263];
  v6 = v0[262];
  v7 = v0[261];
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  sub_1DCB4F1DC(v6, v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[270] = v9;
  sub_1DCD0506C(v1, v9 + v8);
  swift_asyncLet_begin();
  sub_1DCB10E5C(0, &qword_1EDE460F0, 0x1E69C7860);
  v0[271] = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)(v7, v5, v4);
  OUTLINED_FUNCTION_52_23();

  JUMPOUT(0x1DD0DF88CLL);
}

uint64_t sub_1DCEAF044()
{
  *(v1 + 2176) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAF608);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAF070);
  }
}

void sub_1DCEAF070()
{
  memcpy((v0 + 1560), (v0 + 1336), 0x48uLL);
  memcpy(__dst, (v0 + 1336), sizeof(__dst));
  sub_1DCBBF670(v0 + 1560, v0 + 1672);
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = *(v0 + 2128);
  v2 = *(v0 + 2120);
  v3 = qword_1EDE46630;
  sub_1DCB4E718(v0 + 1864);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1864));
  *(v0 + 1808) = type metadata accessor for RefreshableDeviceState();
  *(v0 + 1816) = &protocol witness table for RefreshableDeviceState;
  *(v0 + 1784) = v3;
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(v0 + 1976) = 0;
  *(v0 + 1944) = 0u;
  *(v0 + 1960) = 0u;
  swift_retain_n();
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCEAF3E8()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 2200) = v0;
  if (v0)
  {
    v2 = *(v1 + 2192);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCEAF460()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[274];
  v2 = v0[273];
  v3 = v0[271];
  v4 = v0[266];
  v5 = v0[258];
  v6 = v0[259];

  sub_1DCEAFE94(v5, v6, v3, v1);
}

uint64_t sub_1DCEAF578()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[270];
  v2 = v0[269];
  v3 = v0[266];
  v4 = v0[265];

  v5 = v0[1];
  v6 = v0[276];

  return v5(v6);
}

uint64_t sub_1DCEAF608()
{
  OUTLINED_FUNCTION_42();

  v1 = OUTLINED_FUNCTION_43_20();

  return MEMORY[0x1EEE6DEB0](v1, v2);
}

uint64_t sub_1DCEAF6B0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 2176);
  OUTLINED_FUNCTION_76_14();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCEAF728()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 2168);
  v2 = *(v0 + 2128);

  OUTLINED_FUNCTION_36_29();
  sub_1DCEB0054(v2, v3);
  v4 = OUTLINED_FUNCTION_43_20();

  return MEMORY[0x1EEE6DEB0](v4, v5);
}

uint64_t sub_1DCEAF7E8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 2200);
  OUTLINED_FUNCTION_76_14();

  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCEAF880()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAF960()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  sub_1DCB16DB0(v3 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCEAFA8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCEAFB28;

  return static LabelTemplates.openApp(appDisplayInfo:)();
}

uint64_t sub_1DCEAFB28()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v0)
  {
    OUTLINED_FUNCTION_59_17();
    OUTLINED_FUNCTION_152();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_48_19();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v22, v23, v24);
  }
}

uint64_t sub_1DCEAFC4C()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  OUTLINED_FUNCTION_43();
  return v3();
}

uint64_t sub_1DCEAFC78()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_67_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_18(v4);

  return sub_1DCEAEB64(v6, v7);
}

uint64_t sub_1DCEAFD44()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_67_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_18(v4);

  return sub_1DCEAFA8C(v6);
}

void sub_1DCEAFE10(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1ECCA9320, 0x1E69C79C8);
  v3 = sub_1DD0DE2DC();

  [a2 setCallbacks_];
}

void sub_1DCEAFE94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4[12];
  v9 = a4[13];
  __swift_project_boxed_opaque_existential_1(a4 + 9, v8);
  if ((*(v9 + 16))(v8, v9))
  {

    sub_1DCEAFFB8(a1, a2, a3, a4);
  }

  sub_1DCF97AC0(a3, a1, a2);
  v10 = swift_beginAccess();
  MEMORY[0x1E12A6920](v10);
  sub_1DCBBF95C(*((a4[4] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCEAFFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCF97C24(a3, a1, a2);
  v5 = swift_beginAccess();
  MEMORY[0x1E12A6920](v5);
  sub_1DCBBF95C(*((*(a4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB0054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCEB00A8()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_67_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_18(v4);

  return sub_1DCEACADC(v6);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E12A8390);
  }

  return result;
}

void OUTLINED_FUNCTION_68_15()
{
  v1 = v0[168];
  v2 = v0[165];
  v3 = v0[164];
  v4 = v0[161];
}

uint64_t AnyAppResolutionFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_22_34();
  OUTLINED_FUNCTION_13_36();
  AnyAppResolutionFlow.init<A>(_:)();
  return v0;
}

uint64_t sub_1DCEB0228()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1();
}

uint64_t AnyPromptFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_22_34();
  OUTLINED_FUNCTION_13_36();
  AnyPromptFlow.init<A>(_:)();
  return v0;
}

void AnyPromptFlow.init<A>(_:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_17_37(v3, v4);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_8_2();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_60_11();
  v1[6] = sub_1DCEB03C0(v13, v14, v15, v16);
  v1[7] = v17;
  OUTLINED_FUNCTION_60_11();
  v1[8] = sub_1DCEB04EC(v18, v19, v20, v21);
  v1[9] = v22;
  v23 = *(v6 + 16);
  OUTLINED_FUNCTION_116();
  v24();
  v25 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v26 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_71_12(v26);
  (v2)(v27);
  v1[10] = sub_1DCEB1EF0;
  v1[11] = v8;
  v1[5] = v0;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v1 + 2);
  OUTLINED_FUNCTION_116();
  v2();
  OUTLINED_FUNCTION_49();
}

uint64_t (*sub_1DCEB03C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DCEBDC58;
}

void *sub_1DCEB04EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD0FF788;
}

uint64_t sub_1DCEB0618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a4, a5);
}

uint64_t sub_1DCEB0748()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1() & 1;
}

uint64_t sub_1DCEB0774(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEB0794, 0, 0);
}

uint64_t sub_1DCEB0794()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 56);
  (*(v1 + 48))(*(v0 + 16));
  OUTLINED_FUNCTION_69();
  v5 = v4 & 1;

  return v3(v5);
}

uint64_t sub_1DCEB07F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB080C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v31 - v9;
  sub_1DCB0DF6C(v2 + 16, v32);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v31[1] = DynamicType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
  v12 = sub_1DD0DE02C();
  v14 = v13;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);

  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31[0] = a2;
    v19 = a1;
    v20 = v18;
    v21 = swift_slowAlloc();
    v32[0] = v21;
    *v20 = 136315138;
    v22 = sub_1DCB10E9C(v12, v14, v32);

    *(v20 + 4) = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12A8390](v21, -1, -1);
    v23 = v20;
    a1 = v19;
    a2 = v31[0];
    MEMORY[0x1E12A8390](v23, -1, -1);
  }

  else
  {
  }

  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "Synchronous execute function called directly on AnyPromptFlow. This will become a fatal error in the future.", v26, 2u);
    MEMORY[0x1E12A8390](v26, -1, -1);
  }

  v28 = *(v3 + 64);
  v27 = *(v3 + 72);
  v29 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a1;
  v30[5] = a2;
  v30[6] = v28;
  v30[7] = v27;
  sub_1DD0DCF8C();
}

void sub_1DCEB0B28()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v34 - v11;
  sub_1DCB0DF6C(v0 + 16, v35);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v34[1] = DynamicType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
  v14 = sub_1DD0DE02C();
  v16 = v15;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);

  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34[0] = v3;
    v21 = v5;
    v22 = v20;
    v23 = swift_slowAlloc();
    v35[0] = v23;
    *v22 = 136315138;
    v24 = sub_1DCB10E9C(v14, v16, v35);

    *(v22 + 4) = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_62();
    v5 = v21;
    v3 = v34[0];
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v25, v26))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_90_10(&dword_1DCAFC000, v27, v26, "Synchronous execute function called directly on AnyPromptFlow. This will become a fatal error in the future.");
    OUTLINED_FUNCTION_62();
  }

  v29 = *(v1 + 64);
  v28 = *(v1 + 72);
  v30 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v12, v31, v32, v30);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v5;
  v33[5] = v3;
  v33[6] = v29;
  v33[7] = v28;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB0DEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEB0E0C, 0, 0);
}

uint64_t sub_1DCEB0E0C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_1_4(*(v1 + 64));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_10(v5);

  return v8(v7);
}

uint64_t sub_1DCEB0EC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEB0ED4()
{
  sub_1DCB0DF6C(v0 + 16, &v3);
  v1 = OUTLINED_FUNCTION_66_3();
  return OUTLINED_FUNCTION_87_4(v1);
}

uint64_t *_s11SiriKitFlow023AnyRequestTCCAcceptanceC0Cfd_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  return v0;
}

uint64_t *AnyPromptFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  return v0;
}

uint64_t AnyNeedsValueFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_22_34();
  v1 = OUTLINED_FUNCTION_13_36();
  AnyNeedsValueFlow.init<A>(_:)(v1);
  return v0;
}

uint64_t AnyNeedsValueFlow.__deallocating_deinit()
{
  AnyPromptFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEB1004(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBC3348;

  return sub_1DCEB07F8(a1);
}

uint64_t sub_1DCEB109C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCEB0EC0(a1);
}

uint64_t sub_1DCEB1138(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCC7F0;

  return sub_1DCEB07F8(a1);
}

uint64_t sub_1DCEB11D0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEB0EC0(a1);
}

uint64_t _s11SiriKitFlow013AnyNeedsValueC0CyACyxGqd__cAA0C0Rd__AA12PromptResultOyAA06IntentG6AnswerVyxGG04ExitF0Rtd__lufc_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  (*(v6 + 16))(&v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  OUTLINED_FUNCTION_116();
  AnyPromptFlow.init<A>(_:)();
  (*(v6 + 8))(a1, a2);
  return v2;
}

uint64_t AnyRequestTCCAcceptanceFlow.__deallocating_deinit()
{
  _s11SiriKitFlow023AnyRequestTCCAcceptanceC0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEB1388(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCC7F0;

  return sub_1DCEB0774(a1);
}

uint64_t sub_1DCEB145C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEB0DEC(a1);
}

uint64_t sub_1DCEB1510()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

void AnyHandleIntentFlow.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_17_37(v25, v26);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_2();
  v35 = *(v34 + 80);
  OUTLINED_FUNCTION_8_2();
  v37 = *(v36 + 88);
  OUTLINED_FUNCTION_118_3();
  v21[2] = sub_1DCEB16D0(v38, v39, v40, v41, v42);
  v21[3] = v43;
  OUTLINED_FUNCTION_118_3();
  v21[4] = sub_1DCEB1804(v44, v45, v46, v47, v48);
  v21[5] = v49;
  v50 = *(v28 + 16);
  OUTLINED_FUNCTION_116();
  v51();
  v52 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v53 = swift_allocObject();
  v53[2] = v35;
  v53[3] = v37;
  v53[4] = v20;
  v53[5] = v22;
  v54 = *(v28 + 32);
  (v54)(v53 + v52, v33, v20);
  v21[6] = sub_1DCEB9C00;
  v21[7] = v53;
  v21[11] = v20;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v21 + 8);
  OUTLINED_FUNCTION_116();
  v54();
  OUTLINED_FUNCTION_49();
}

uint64_t (*sub_1DCEB16D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a4);
  return sub_1DCEBD9EC;
}

void *sub_1DCEB1804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a4);
  return &unk_1DD0FF778;
}

uint64_t sub_1DCEB1938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 40);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a5, a6);
}

uint64_t sub_1DCEB1A68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1DCEB1A94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEB1AA8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  (*(v1 + 16))(*(v0 + 16));
  OUTLINED_FUNCTION_69();
  v5 = v4 & 1;

  return v3(v5);
}

uint64_t sub_1DCEB1B34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEB1B48()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_1_4(*(v1 + 32));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_10(v5);

  return v8(v7);
}

uint64_t AnyHandleIntentFlow.__deallocating_deinit()
{
  AnyHandleIntentFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEB1C38(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCC7F0;

  return sub_1DCEB1A94(a1);
}

uint64_t sub_1DCEB1CF4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEB1B34(a1);
}

void AnyAppResolutionFlow.init<A>(_:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_17_37(v3, v4);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_8_2();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_60_11();
  v1[2] = sub_1DCEB1F48(v13, v14, v15, v16);
  v1[3] = v17;
  OUTLINED_FUNCTION_60_11();
  v1[4] = sub_1DCEB2074(v18, v19, v20, v21);
  v1[5] = v22;
  v23 = *(v6 + 16);
  OUTLINED_FUNCTION_116();
  v24();
  v25 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v26 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_71_12(v26);
  (v2)(v27);
  v1[6] = sub_1DCEB1EF0;
  v1[7] = v8;
  v1[11] = v0;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v1 + 8);
  OUTLINED_FUNCTION_116();
  v2();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCEB1EF0()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_11_1(*(v0 + 24));
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_59_18(v2, v5);
  return v6();
}

uint64_t (*sub_1DCEB1F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DCEBD8A8;
}

void *sub_1DCEB2074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD0FF768;
}

uint64_t sub_1DCEB21A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB21DC()
{
  OUTLINED_FUNCTION_50();
  v36 = v1;
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v34 - v14;
  sub_1DCB0DF6C(v0 + 64, v38);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  v37 = DynamicType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
  v17 = sub_1DD0DE02C();
  v19 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1EDE57E00);

  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v8;
    v35 = v6;
    v24 = v23;
    v25 = v3;
    v26 = swift_slowAlloc();
    v38[0] = v26;
    *v24 = 136315138;
    v27 = sub_1DCB10E9C(v17, v19, v38);

    *(v24 + 4) = v27;
    _os_log_impl(&dword_1DCAFC000, v21, v22, v25, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_80();
    v8 = v34;
    v6 = v35;
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v29 = *(v4 + 32);
  v28 = *(v4 + 40);
  v30 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v15, v31, v32, v30);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v8;
  v33[5] = v6;
  v33[6] = v29;
  v33[7] = v28;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB2448(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEB245C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_1_4(*(v1 + 32));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_10(v5);

  return v8(v7);
}

uint64_t sub_1DCEB2510()
{
  sub_1DCB0DF6C(v0 + 64, &v3);
  v1 = OUTLINED_FUNCTION_66_3();
  return OUTLINED_FUNCTION_87_4(v1);
}

void *_s11SiriKitFlow015AnyHandleIntentC0Cfd_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  return v0;
}

uint64_t sub_1DCEB2598(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCC7F0;

  return sub_1DCEB21A0(a1);
}

uint64_t sub_1DCEB2654(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEB2448(a1);
}

uint64_t sub_1DCEB26F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD760;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB277C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD6F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCEB2838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD6B4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB28C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD674;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1DCEB2978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD634;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB2A04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD5F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_1DCEB2AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD5B4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB2B44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD574;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t sub_1DCEB2BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD534;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

void sub_1DCEB2C84(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = a5[1];
  v16 = *a6;
  v18 = *a7;
  v17 = a7[1];
  v19 = swift_allocObject();
  v19[2] = a11;
  v19[3] = v18;
  v19[4] = v17;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB2D60(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD4F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

void sub_1DCEB2DFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = *(v10 + 80);
  v11[3] = *(v10 + 88);
  v11[4] = a8;
  v11[5] = a9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB2F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD4CC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

void sub_1DCEB2F8C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = a5[1];
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = v14;
  v16[5] = v15;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB3064(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD48C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t sub_1DCEB3118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD410;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB31A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD3D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 96) = v6;
  *(a2 + 104) = v5;
  return result;
}

void sub_1DCEB3240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *a1;
  v18 = a2;
  v19 = a1;
  v16 = a4;
  v17 = a3;
  v13 = swift_allocObject();
  v13[2] = *(v12 + 80);
  v13[3] = *(v12 + 88);
  v13[4] = a5;
  v13[5] = a6;
  v14 = a10;
  v15 = v13;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB3338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD38C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

void sub_1DCEB33C4()
{
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  v3 = *v2;
  v5 = *v4;
  v7 = *v6;
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB3460(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD384;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 112);
  v8 = *(a2 + 120);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 112) = v6;
  *(a2 + 120) = v5;
  return result;
}

void sub_1DCEB34FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a1;
  v11 = a4;
  v12 = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v9 = sub_1DCCC3628;
  v10 = v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB35C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD35C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

void sub_1DCEB3654(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v10 = *a3;
  v11 = *a4;
  v13 = *a5;
  v12 = a5[1];
  v14 = swift_allocObject();
  v14[2] = a9;
  v14[3] = v13;
  v14[4] = v12;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB371C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD354;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 128);
  v8 = *(a2 + 136);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 128) = v6;
  *(a2 + 136) = v5;
  return result;
}

void sub_1DCEB37B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v13 = a3;
  v14 = a1;
  v12 = a4;
  v9 = swift_allocObject();
  v9[2] = *(v8 + 80);
  v9[3] = *(v8 + 88);
  v9[4] = a5;
  v9[5] = a6;
  v10 = sub_1DCEBDC54;
  v11 = v9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB38C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)@<X8>)
{
  v5 = *(a1 + 144);
  v6 = *(a1 + 152);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD2F0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

void sub_1DCEB3954(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *a5;
  v15 = *a6;
  v16 = a6[1];
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = v15;
  v17[5] = v16;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB3A34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD2C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 144);
  v8 = *(a2 + 152);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 144) = v6;
  *(a2 + 152) = v5;
  return result;
}

void sub_1DCEB3AD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = *(v10 + 80);
  v11[3] = *(v10 + 88);
  v11[4] = a7;
  v11[5] = a8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB3BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)@<X8>)
{
  v5 = *(a1 + 160);
  v6 = *(a1 + 168);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD2BC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

void sub_1DCEB3C6C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v13 = *a4;
  v12 = a4[1];
  v14 = swift_allocObject();
  v14[2] = a8;
  v14[3] = v13;
  v14[4] = v12;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB3D2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD2B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 160);
  v8 = *(a2 + 168);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 160) = v6;
  *(a2 + 168) = v5;
  return result;
}

void sub_1DCEB3DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v12 = a2;
  v13 = a1;
  v11 = a3;
  v8 = swift_allocObject();
  v8[2] = *(v7 + 80);
  v8[3] = *(v7 + 88);
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_1DCEBDC54;
  v10 = v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB3ED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBDC74;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB3F5C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBDC70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.needsValueFlowProducer.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB403C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBDC74;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB40C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBDC70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.needsConfirmationFlowProducer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB41A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBDC74;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB422C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBDC70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB4304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBDC74;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB4390(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBDC70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.needsExecuteIntentFlowProducer.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t RCHChildFlowProducersAsync.needsExecuteIntentFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 56);
  result = sub_1DCB370A4(*(v1 + 48));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_1DCEB449C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD254;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB4528(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD250;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.unsupportedValueFlowProducer.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB4600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD254;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB468C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD280;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.confirmIntentFlowProducer.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB4764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBDC74;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB47F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBDC70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 96) = v6;
  *(a2 + 104) = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.handleIntentFlowProducer.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB48C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD254;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB4954(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD250;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 112);
  v8 = *(a2 + 120);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 112) = v6;
  *(a2 + 120) = v5;
  return result;
}

uint64_t RCHChildFlowProducersAsync.continueInAppFlowProducer.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB4A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD21C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB4AB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD214;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 128);
  v8 = *(a2 + 136);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 128) = v6;
  *(a2 + 136) = v5;
  return result;
}

uint64_t sub_1DCEB4B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t *, uint64_t *))
{
  v8 = a3;
  v9 = a1;
  v7 = a4;
  a5(&v6, &v9, a2, &v8, &v7);
  return v6;
}

uint64_t RCHChildFlowProducersAsync.appResolutionFlowProducer.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB4BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 144);
  v6 = *(a1 + 152);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD1C8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB4C68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD1C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 144);
  v8 = *(a2 + 152);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 144) = v6;
  *(a2 + 152) = v5;
  return result;
}

uint64_t sub_1DCEB4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t *, uint64_t *, uint64_t *, void *, uint64_t *))
{
  v12 = a2;
  v13 = a1;
  v10[1] = a5;
  v11 = a3;
  v9 = a6;
  v10[0] = a4;
  a7(&v8, &v13, &v12, &v11, v10, &v9);
  return v8;
}

uint64_t RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB4D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a1 + 160);
  v6 = *(a1 + 168);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1DCEBD18C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return sub_1DCB02C48(v5);
}

uint64_t sub_1DCEB4E24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCEBD184;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 160);
  v8 = *(a2 + 168);
  sub_1DCB02C48(v3);
  result = sub_1DCB370A4(v7);
  *(a2 + 160) = v6;
  *(a2 + 168) = v5;
  return result;
}

uint64_t sub_1DCEB4EC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *, uint64_t *, uint64_t *))
{
  v7 = a2;
  v8 = a1;
  v6 = a3;
  a4(&v5, &v8, &v7, &v6);
  return v5;
}

uint64_t RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  return OUTLINED_FUNCTION_4_90();
}

uint64_t sub_1DCEB4F48@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_1DCB17C3C(v1 + 368, &v6, qword_1ECCA8F08, &qword_1DD0FEF08);
  if (v7)
  {
    return sub_1DCAFF9E8(&v6, a1);
  }

  sub_1DCB16DB0(&v6, qword_1ECCA8F08, &qword_1DD0FEF08);
  v4 = type metadata accessor for DefaultUnimplementedUseCaseFlowFactory();
  v5 = swift_allocObject();
  a1[3] = v4;
  a1[4] = &off_1F586B1A8;
  *a1 = v5;
  sub_1DCB17D04(a1, &v6);
  swift_beginAccess();
  sub_1DCEBD114(&v6, v1 + 368);
  return swift_endAccess();
}

uint64_t RCHChildFlowFactory.__allocating_init(producers:)()
{
  OUTLINED_FUNCTION_63_14();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_33_4();
  RCHChildFlowFactory.init(producers:)(v1);
  return v0;
}

{
  OUTLINED_FUNCTION_63_14();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_33_4();
  RCHChildFlowFactory.init(producers:)(v1);
  return v0;
}

uint64_t RCHChildFlowFactory.init(producers:)(const void *a1)
{
  *(v1 + 400) = 0;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  sub_1DCB82380(v14);
  OUTLINED_FUNCTION_123_1(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v13[13], v13[14], v13[15], v13[16], v13[17], v13[18], v13[19], v13[20], v13[21], v13[22], v13[23], v13[24], v13[25], v13[26], v13[27], v13[28], v13[29], v13[30], v13[31], v13[32], v13[33], v13[34], v13[35], v13[36], v13[37], v13[38], v13[39], v13[40], v13[41], v13[42], v13[43], v14[0]);
  memcpy(__dst, a1, sizeof(__dst));
  nullsub_1(__dst);
  memcpy((v2 + 176), __dst, 0xB0uLL);
  memcpy((v1 + 16), v13, 0x160uLL);
  return v1;
}

uint64_t RCHChildFlowFactory.__allocating_init(producers:withFallbacks:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_63_14();
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_48_1();
  RCHChildFlowFactory.init(producers:withFallbacks:)(v2, v0);
  return v1;
}

uint64_t sub_1DCEB5160()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *(v1 + 480);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB5260()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_52();
  OUTLINED_FUNCTION_73_9();
  OUTLINED_FUNCTION_68_16();
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1DCEB52D8(uint64_t a1)
{
  *(v2 + 448) = v1;
  *(v2 + 456) = *v1;
  OUTLINED_FUNCTION_72_15(a1);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB5328()
{
  OUTLINED_FUNCTION_82_6();
  OUTLINED_FUNCTION_88_10();
  OUTLINED_FUNCTION_36_30();
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[4])
  {
    v2 = v0[56];
    v3 = v0[5];
    OUTLINED_FUNCTION_19_38();
  }

  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v4 = v0[26];
    v0[58] = v4;
    if (v4)
    {
      v6 = v0[56];
      v5 = v0[57];
      v0[59] = v0[27];
      v7 = OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_32_24(v7);
      v8 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v9 = v0[56];
  OUTLINED_FUNCTION_62_12(v0[57]);
  type metadata accessor for NeedsConfirmationAnswer();
  OUTLINED_FUNCTION_105_7();
  v10 = OUTLINED_FUNCTION_86_9(21);
  sub_1DCEB86C0(v10, v11);
}

uint64_t sub_1DCEB54D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *(v1 + 480);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB55D4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_52();
  OUTLINED_FUNCTION_73_9();
  OUTLINED_FUNCTION_68_16();
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1DCEB564C(uint64_t a1)
{
  *(v2 + 448) = v1;
  *(v2 + 456) = *v1;
  OUTLINED_FUNCTION_72_15(a1);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB569C()
{
  OUTLINED_FUNCTION_82_6();
  OUTLINED_FUNCTION_88_10();
  OUTLINED_FUNCTION_36_30();
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[6])
  {
    v2 = v0[56];
    v3 = v0[7];
    OUTLINED_FUNCTION_19_38();
  }

  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v4 = v0[28];
    v0[58] = v4;
    if (v4)
    {
      v6 = v0[56];
      v5 = v0[57];
      v0[59] = v0[29];
      v7 = OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_32_24(v7);
      v8 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v9 = v0[56];
  OUTLINED_FUNCTION_62_12(v0[57]);
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_105_7();
  v10 = OUTLINED_FUNCTION_86_9(23);
  sub_1DCEB86C0(v10, v11);
}

uint64_t sub_1DCEB5848()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *(v1 + 480);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB5948()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_52();
  OUTLINED_FUNCTION_73_9();
  OUTLINED_FUNCTION_68_16();
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1DCEB59C0(uint64_t a1)
{
  *(v2 + 448) = v1;
  *(v2 + 456) = *v1;
  OUTLINED_FUNCTION_72_15(a1);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB5A10()
{
  OUTLINED_FUNCTION_82_6();
  OUTLINED_FUNCTION_88_10();
  OUTLINED_FUNCTION_36_30();
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[8])
  {
    v2 = v0[56];
    v3 = v0[9];
    OUTLINED_FUNCTION_19_38();
  }

  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v4 = v0[30];
    v0[58] = v4;
    if (v4)
    {
      v6 = v0[56];
      v5 = v0[57];
      v0[59] = v0[31];
      v7 = OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_32_24(v7);
      v8 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v9 = v0[56];
  OUTLINED_FUNCTION_62_12(v0[57]);
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_105_7();
  v10 = OUTLINED_FUNCTION_86_9(22);
  sub_1DCEB86C0(v10, v11);
}

uint64_t sub_1DCEB5BBC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *(v1 + 480);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB5CBC()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_52();
  OUTLINED_FUNCTION_73_9();
  OUTLINED_FUNCTION_68_16();
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1DCEB5D34(uint64_t a1)
{
  *(v2 + 448) = v1;
  *(v2 + 456) = *v1;
  OUTLINED_FUNCTION_72_15(a1);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB5D84()
{
  OUTLINED_FUNCTION_82_6();
  OUTLINED_FUNCTION_88_10();
  OUTLINED_FUNCTION_36_30();
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[10])
  {
    v2 = v0[56];
    v3 = v0[11];
    OUTLINED_FUNCTION_19_38();
  }

  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v4 = v0[32];
    v0[58] = v4;
    if (v4)
    {
      v6 = v0[56];
      v5 = v0[57];
      v0[59] = v0[33];
      v7 = OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_32_24(v7);
      v8 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v9 = v0[56];
  OUTLINED_FUNCTION_62_12(v0[57]);
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_105_7();
  v10 = OUTLINED_FUNCTION_86_9(20);
  sub_1DCEB86C0(v10, v11);
}

uint64_t sub_1DCEB5F30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *(v1 + 480);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB6030()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_52();
  OUTLINED_FUNCTION_73_9();
  OUTLINED_FUNCTION_68_16();
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_1DCEB60A8()
{
  OUTLINED_FUNCTION_50();
  v34 = v0;
  v35 = v1;
  v32 = v3;
  v33 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v6;
  v11 = *(*v6 + 80);
  v12(255, v11);
  v13 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v28 - v20;
  v22 = v5[2];
  v30 = v5[3];
  v31 = v22;
  if (v5[5])
  {
    v23 = 0;
  }

  else
  {
    v23 = v5[4];
  }

  v24 = v5[1];
  v28 = *v5;
  v29 = v23;
  v25 = v5[6];
  (*(v15 + 16))(v21, v9, v13);
  v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v11;
  *(v27 + 24) = *(v10 + 88);
  (*(v15 + 32))(v27 + v26, v21, v13);
  v34(v7, v28, v24, v25, v31, v30, v29, v35, v27);

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCEB626C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 448);
  v3 = *(v1 + 440);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB636C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[46];
  if (v1)
  {
    v2 = v0[57];
    v4 = v0[53];
    v3 = v0[54];
    v0[47] = v1;
    swift_getWitnessTable();
    Flow.eraseToAnyValueFlow()();
    sub_1DCB370A4(v4);
  }

  else
  {
    v5 = v0[54];
    sub_1DCB370A4(v0[53]);
  }

  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCEB642C(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t, void (*)(uint64_t a1), uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a2;
  v24 = a7;
  v22[1] = a3;
  v11 = *a4;
  v12 = *(*a4 + 80);
  type metadata accessor for AnyConfirmIntentFlow();
  sub_1DD0DE97C();
  v13 = sub_1DD0DE47C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v22 - v17;
  (*(v14 + 16))(v22 - v17, a1, v13);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = *(v11 + 88);
  (*(v14 + 32))(v20 + v19, v18, v13);
  v23(a4, a5, a6, v24, sub_1DCEBCC9C, v20);
}

uint64_t sub_1DCEB65FC(uint64_t a1)
{
  *(v2 + 456) = v1;
  *(v2 + 464) = *v1;
  *(v2 + 472) = *a1;
  *(v2 + 488) = *(a1 + 16);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB664C()
{
  OUTLINED_FUNCTION_40_23(*(v0 + 456));
  OUTLINED_FUNCTION_24_28();
  if (!v1 && *(v0 + 112))
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 120);
    v21 = *(v0 + 472);
    v22 = *(v0 + 488);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_39_23(*(v0 + 456));
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v4 = *(v0 + 288);
    *(v0 + 496) = v4;
    if (v4)
    {
      v5 = *(v0 + 488);
      v7 = *(v0 + 456);
      v6 = *(v0 + 464);
      v8 = *(v0 + 296);
      *(v0 + 504) = v8;
      v9 = swift_task_alloc();
      *(v0 + 512) = v9;
      v10 = *(v0 + 472);
      *(v9 + 16) = v4;
      *(v9 + 24) = v8;
      *(v9 + 32) = v7;
      *(v9 + 40) = v10;
      *(v9 + 56) = v5;
      v11 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v13 = *(v0 + 456);
  v12 = *(v0 + 464);
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  OUTLINED_FUNCTION_107_2();
  type metadata accessor for RCHChildFlowFactory.FactoryError();
  OUTLINED_FUNCTION_11_55();
  swift_getWitnessTable();
  v16 = OUTLINED_FUNCTION_50_4();
  *v17 = 0xD000000000000010;
  v17[1] = 0x80000001DD120C90;
  sub_1DCEB4F48((v0 + 368));
  v18 = __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
  *(v0 + 408) = v16;
  *(v0 + 416) = 1;
  *(v0 + 424) = 1;
  v19 = *v18;
  OUTLINED_FUNCTION_107_2();
  v20 = type metadata accessor for HandleIntentFlowResult();
  sub_1DCEB8B50(0xD000000000000010, 0x80000001DD120C90, v0 + 408, v20);
}

uint64_t sub_1DCEB690C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 520);
  v3 = *(v1 + 512);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB6A0C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[66];
  v3 = v0[62];
  v2 = v0[63];
  v0[56] = v0[55];
  OUTLINED_FUNCTION_73_9();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCEB6A9C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void (*)(uint64_t a1), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a2;
  v24 = a7;
  v22[1] = a3;
  v11 = *(*a4 + 80);
  v12 = *(*a4 + 88);
  type metadata accessor for AnyHandleIntentFlow();
  v13 = sub_1DD0DE47C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v22 - v17;
  (*(v14 + 16))(v22 - v17, a1, v13);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  (*(v14 + 32))(v20 + v19, v18, v13);
  v23(a4, a5, a6, v24, sub_1DCEBCB40, v20);
}

void sub_1DCEB6C60(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  type metadata accessor for AnyHandleIntentFlow();
  sub_1DD0DE47C();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[58] = a3;
  v4[59] = v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[60] = *v3;
  return OUTLINED_FUNCTION_0_12(sub_1DCEB6D44);
}

void sub_1DCEB6D44()
{
  v24 = v0;
  OUTLINED_FUNCTION_40_23(*(v0 + 472));
  OUTLINED_FUNCTION_24_28();
  if (!v1)
  {
    v2 = *(v0 + 128);
    if (v2)
    {
      v4 = *(v0 + 472);
      v3 = *(v0 + 480);
      v5 = *(v0 + 136);
      v6 = *(v3 + 80);
      v7 = *(v3 + 88);
      IntentResolutionRecord.init(app:intent:intentResponse:)(*(v0 + 448), *(v0 + 456), *(v0 + 464), &v20);
      v22 = v20;
      v23 = v21;
      sub_1DCB02C48(v2);
      sub_1DD0DCF8C();
    }
  }

  OUTLINED_FUNCTION_39_23(*(v0 + 472));
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v8 = *(v0 + 304);
    *(v0 + 488) = v8;
    if (v8)
    {
      v10 = *(v0 + 464);
      v9 = *(v0 + 472);
      v11 = *(v0 + 312);
      *(v0 + 496) = v11;
      v12 = swift_task_alloc();
      *(v0 + 504) = v12;
      v13 = *(v0 + 448);
      *(v12 + 16) = v8;
      *(v12 + 24) = v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v13;
      *(v12 + 56) = v10;
      v14 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v15 = *(v0 + 472);
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  sub_1DCEB4F48((v0 + 368));
  v16 = *__swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
  v17 = OUTLINED_FUNCTION_86_9(17);
  sub_1DCEB8900(v17, v18, v19);
}

uint64_t sub_1DCEB6FDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 512);
  v3 = *(v1 + 504);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB70DC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[65];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[55];
  swift_allocObject();
  OUTLINED_FUNCTION_6_44();
  sub_1DCBD24D8();
  v5 = OUTLINED_FUNCTION_48_1();
  sub_1DCB370A4(v5);
  v6 = OUTLINED_FUNCTION_129();

  return v7(v6);
}

uint64_t sub_1DCEB7160(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void (*)(), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  v22 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA9298, &qword_1DD0FF738);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21 - v16;
  (*(v13 + 16))(&v21 - v16, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v12);
  a2(a4, a5, a6, v22, sub_1DCEBCAB0, v19);
}

uint64_t sub_1DCEB7328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[55] = a3;
  v4[56] = v3;
  v4[53] = a1;
  v4[54] = a2;
  v4[57] = *v3;
  return OUTLINED_FUNCTION_0_12(sub_1DCEB736C);
}

void sub_1DCEB736C()
{
  OUTLINED_FUNCTION_36_30();
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[18])
  {
    v3 = v0[55];
    v2 = v0[56];
    v5 = v0[53];
    v4 = v0[54];
    v6 = v0[19];
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v7 = v0[40];
    v0[58] = v7;
    if (v7)
    {
      v9 = v0[56];
      v8 = v0[57];
      v10 = v0[55];
      v11 = v0[41];
      v0[59] = v11;
      v12 = swift_task_alloc();
      v0[60] = v12;
      v13 = *(v0 + 53);
      *(v12 + 16) = v7;
      *(v12 + 24) = v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v13;
      *(v12 + 56) = v10;
      v14 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v16 = v0[56];
  v15 = v0[57];
  v17 = *(v15 + 80);
  v18 = *(v15 + 88);
  type metadata accessor for RCHChildFlowFactory.FactoryError();
  OUTLINED_FUNCTION_11_55();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_50_4();
  *v19 = 17;
  v19[1] = 0x80000001DD120C10;
  sub_1DCEB4F48(v0 + 46);
  v20 = *__swift_project_boxed_opaque_existential_1(v0 + 46, v0[49]);
  sub_1DCEB8A2C();
}

uint64_t sub_1DCEB75F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *(v1 + 480);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB76F0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[62];
  v3 = v0[58];
  v2 = v0[59];
  v0[52] = v0[51];
  Flow.eraseToAnyValueFlow()();
  v4 = OUTLINED_FUNCTION_48_1();
  sub_1DCB370A4(v4);

  v5 = OUTLINED_FUNCTION_129();

  return v6(v5);
}

uint64_t sub_1DCEB777C(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t, void (*)(uint64_t a1), uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a2;
  v24 = a7;
  v22[1] = a3;
  v11 = *a4;
  v12 = *(*a4 + 80);
  type metadata accessor for AnyAppResolutionFlow();
  v13 = sub_1DD0DE47C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v22 - v17;
  (*(v14 + 16))(v22 - v17, a1, v13);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = *(v11 + 88);
  (*(v14 + 32))(v20 + v19, v18, v13);
  v23(a4, a5, a6, v24, sub_1DCEBCA08, v20);
}

void sub_1DCEB7940(uint64_t a1)
{
  v1 = *(*a1 + 80);
  type metadata accessor for AnyAppResolutionFlow();
  sub_1DD0DE47C();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB79C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[52] = a5;
  v6[53] = v5;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  v6[54] = *v5;
  return OUTLINED_FUNCTION_0_12(sub_1DCEB7A10);
}

uint64_t sub_1DCEB7A10()
{
  OUTLINED_FUNCTION_40_23(v0[53]);
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[20])
  {
    v3 = v0[52];
    v2 = v0[53];
    v5 = v0[50];
    v4 = v0[51];
    v7 = v0[48];
    v6 = v0[49];
    v8 = v0[21];
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_39_23(v0[53]);
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v10 = v0[42];
    v9 = v0[43];
    v0[55] = v10;
    v0[56] = v9;
    if (v10)
    {
      v12 = v0[53];
      v11 = v0[54];
      v13 = v0[52];
      v24 = *(v0 + 25);
      v14 = swift_task_alloc();
      v0[57] = v14;
      v15 = *(v0 + 24);
      *(v14 + 16) = v10;
      *(v14 + 24) = v9;
      *(v14 + 32) = v12;
      *(v14 + 40) = v15;
      *(v14 + 56) = v24;
      *(v14 + 72) = v13;
      v16 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v18, v19))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_90_10(&dword_1DCAFC000, v20, v19, "No completion configured for ConfirmIntentFlow. Completing with nil");
    OUTLINED_FUNCTION_62();
  }

  v21 = OUTLINED_FUNCTION_129();

  return v22(v21);
}

uint64_t sub_1DCEB7CA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 464);
  v3 = *(v1 + 456);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB7DA8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[46];
  if (v1)
  {
    v2 = v0[59];
    v4 = v0[55];
    v3 = v0[56];
    v0[47] = v1;
    Flow.eraseToAnyValueFlow()();
    sub_1DCB370A4(v4);
  }

  else
  {
    v5 = v0[56];
    sub_1DCB370A4(v0[55]);
  }

  v6 = OUTLINED_FUNCTION_129();

  return v7(v6);
}

uint64_t sub_1DCEB7E4C(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void (*)(uint64_t a1), uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a2;
  v27 = a8;
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v25 = a3;
  v11 = *a4;
  v12 = *(*a4 + 80);
  type metadata accessor for AnyAppResolutionFlow();
  sub_1DD0DE97C();
  v13 = sub_1DD0DE47C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v22 - v17;
  (*(v14 + 16))(&v22 - v17, a1, v13);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = *(v11 + 88);
  (*(v14 + 32))(v20 + v19, v18, v13);
  v26(a4, v22, v23, v24, v27, a9, sub_1DCEBC9CC, v20);
}

void sub_1DCEB8020()
{
  OUTLINED_FUNCTION_85_9();
  v1(255, v0);
  sub_1DD0DE97C();
  sub_1DD0DE47C();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB80A4(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v3[51] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCEB80E8);
}

void sub_1DCEB80E8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_40_23(v0[50]);
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[22])
  {
    v3 = v0[49];
    v2 = v0[50];
    v4 = v0[48];
    v5 = v0[23];
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_39_23(v0[50]);
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v6 = v0[44];
    v0[52] = v6;
    if (v6)
    {
      v8 = v0[50];
      v7 = v0[51];
      v9 = v0[45];
      v0[53] = v9;
      v10 = swift_task_alloc();
      v0[54] = v10;
      v11 = *(v0 + 24);
      *(v10 + 16) = v6;
      *(v10 + 24) = v9;
      *(v10 + 32) = v8;
      *(v10 + 40) = v11;
      v12 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v13 = v0[50];
  sub_1DCEB86C0(0xD000000000000018, 0x80000001DD120B80);
}

uint64_t sub_1DCEB82F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 440);
  v3 = *(v1 + 432);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEB83F0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[56];
  v3 = v0[52];
  v2 = v0[53];
  v0[47] = v0[46];
  Flow.eraseToAnyValueFlow()();
  v4 = OUTLINED_FUNCTION_48_1();
  sub_1DCB370A4(v4);

  v5 = OUTLINED_FUNCTION_129();

  return v6(v5);
}

uint64_t sub_1DCEB847C(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t, void (*)(uint64_t a1), uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a3;
  v23 = a2;
  v9 = *a4;
  v10 = *(*a4 + 80);
  type metadata accessor for AnyRequestTCCAcceptanceFlow();
  v11 = sub_1DD0DE47C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  (*(v12 + 16))(&v20 - v15, a1, v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = *(v9 + 88);
  (*(v12 + 32))(v18 + v17, v16, v11);
  v23(a4, a5, v21, sub_1DCEBC96C, v18);
}

void sub_1DCEB8638()
{
  OUTLINED_FUNCTION_85_9();
  v1(255, *(*v0 + 176));
  sub_1DD0DE47C();
  sub_1DD0DCF8C();
}

void sub_1DCEB86C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for PromptResult();
  OUTLINED_FUNCTION_0_1();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19[-1] - v11;
  v13 = *(v5 + 80);
  v14 = *(v5 + 88);
  type metadata accessor for RCHChildFlowFactory.FactoryError();
  OUTLINED_FUNCTION_11_55();
  swift_getWitnessTable();
  v15 = swift_allocError();
  *v16 = a1;
  v16[1] = a2;
  *v12 = v15;
  v12[8] = 1;
  swift_storeEnumTagMultiPayload();

  sub_1DCEB4F48(v19);
  v17 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_1DCEB8B50(a1, a2, v12, v6);
}

uint64_t sub_1DCEB8848(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000032, 0x80000001DD120E10);
  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD120E50);
  return 0;
}

uint64_t sub_1DCEB88F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DCEB8848(*v1, v1[1]);
}

void sub_1DCEB8900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB17C3C(a3, &v4, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  sub_1DCB82888();
}

void sub_1DCEB8A2C()
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  sub_1DCB82888();
}

void sub_1DCEB8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24, v7, v8);
  v9 = qword_1EDE46628;

  if (v9 != -1)
  {
    swift_once();
  }

  type metadata accessor for UnimplementedUseCaseFlow();
  v10 = qword_1EDE46630;
  sub_1DCB4E718(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  v12[3] = type metadata accessor for RefreshableDeviceState();
  v12[4] = &protocol witness table for RefreshableDeviceState;
  v12[0] = v10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB8CD8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, char a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  sub_1DCEB8DF0(a1, a2, a3, a4, a5, a6);
  return v15;
}

unint64_t sub_1DCEB8D58()
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](*(v0 + *(*v0 + 96)), *(v0 + *(*v0 + 96) + 8));
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD000000000000019;
}

char *sub_1DCEB8DF0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, char a6)
{
  v12 = *v6;
  OUTLINED_FUNCTION_8_2();
  v14 = *(v13 + 88);
  OUTLINED_FUNCTION_112(*(v15 + 80));
  (*(v16 + 32))(&v6[v17], v18);
  OUTLINED_FUNCTION_66();
  v20 = &v6[*(v19 + 96)];
  *v20 = a1;
  *(v20 + 1) = a2;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, &v6[*(v21 + 104)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a5, &v6[*(v22 + 112)]);
  OUTLINED_FUNCTION_66();
  v6[*(v23 + 120)] = a6;
  return v6;
}

void sub_1DCEB8EF0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 80);
  type metadata accessor for UnimplementedUseCaseFlow();
  OUTLINED_FUNCTION_2_83();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCEB8F68(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCEB8FA8);
}

void sub_1DCEB8FA8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_8_2();
  v6 = *(v1 + *(v5 + 120));
  OUTLINED_FUNCTION_8_2();
  v8 = (v1 + *(v7 + 96));
  v10 = *v8;
  v9 = v8[1];
  OUTLINED_FUNCTION_8_2();
  sub_1DCB17D04(v1 + *(v11 + 112), v0 + 16);
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_1_1();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v2 + 80);
  *(v13 + 24) = v12;
  *(v13 + 32) = v6;
  *(v13 + 40) = v10;
  *(v13 + 48) = v9;
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)((v0 + 16), &unk_1DD0FF720, v13);
  OUTLINED_FUNCTION_48_1();

  sub_1DD06E414();
}

uint64_t sub_1DCEB90F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 360) = a4;
  *(v5 + 368) = a5;
  *(v5 + 400) = a3;
  *(v5 + 344) = a1;
  *(v5 + 352) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCEB9198, 0, 0);
}

uint64_t sub_1DCEB9198()
{
  v53 = v0;
  v1 = *(v0 + 352);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    *(v0 + 232) = 0;
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
    if (qword_1EDE46628 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDE46630;
    sub_1DCB4E718(v0 + 280);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));
    *(v0 + 184) = type metadata accessor for RefreshableDeviceState();
    *(v0 + 192) = &protocol witness table for RefreshableDeviceState;
    *(v0 + 160) = v3;
    v4 = *(v0 + 224);
    sub_1DD0DCF8C();
  }

  sub_1DCB17D04(Strong + *(*Strong + 104), v0 + 200);

  sub_1DCAFF9E8((v0 + 200), v0 + 160);
  if (*(v0 + 400))
  {
    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    __src = 0;
    v46 = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD00000000000008DLL, 0x80000001DD113230);
    MEMORY[0x1E12A6780](v6, v5);
    MEMORY[0x1E12A6780](0xD00000000000007FLL, 0x80000001DD1132C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E18, &unk_1DD0E5280);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DD0E07C0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0xE000000000000000;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0;
    *(v7 + 120) = 0;
    *(v7 + 128) = 0xE000000000000000;
    *(v7 + 136) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 168) = 0u;
    *(v7 + 184) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 216) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 248) = 0;

    v9 = sub_1DCCE834C(v8);
    v11 = v10;
    v13 = v12;

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = *(v0 + 368);
    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);

    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 360);
      v18 = *(v0 + 368);
      v20 = swift_slowAlloc();
      v44 = v13;
      __src = swift_slowAlloc();
      v21 = v11;
      v22 = v9;
      v23 = __src;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DCB10E9C(v19, v18, &__src);
      _os_log_impl(&dword_1DCAFC000, v16, v17, "Unimplemented usecase flow running! You'll want to wire up a flow in the flow factory for: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v9 = v22;
      v11 = v21;
      v13 = v44;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v24 = *(v0 + 376);
    v25 = *(v0 + 344);
    __src = 0xD00000000000001ALL;
    v46 = 0x80000001DD113340;
    v47 = v7;
    v48 = MEMORY[0x1E69E7CC8];
    v49 = v13;
    v50 = v11;
    v51 = xmmword_1DD0E1E40;
    v52 = v9;
    v26 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
    v27 = *(v26 + 96);
    v28 = OUTLINED_FUNCTION_7_1();
    v29(v28);
    v30 = type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_7_5(v24, v31, v32, v30);
    v33 = type metadata accessor for AceOutput();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    v25[3] = v33;
    v25[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v25);
    OUTLINED_FUNCTION_59_5(boxed_opaque_existential_1Tm_0, v35, v36, MEMORY[0x1E69E7CC0], v37, v38, v39, v40, v0 + 240, v44, __src);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 384) = v41;
  *v41 = v42;
  v41[1] = sub_1DCEB96CC;

  return static ErrorTemplates.genericError()(v0 + 16);
}

uint64_t sub_1DCEB96CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 384);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 392) = v0;

  if (v0)
  {
    v7 = sub_1DCEB995C;
  }

  else
  {
    v7 = sub_1DCEB97D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCEB97D0()
{
  OUTLINED_FUNCTION_88_10();
  v28 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 376);
  v7 = *(v0 + 344);
  __src = *(v0 + 16);
  v23 = v4;
  v24 = v5;
  v25 = v1;
  v26 = v3;
  v27 = v2;
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 160), v8);
  (*(v9 + 96))(v8, v9);
  v10 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_5(v6, v11, v12, v10);
  v13 = type metadata accessor for AceOutput();
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  v7[3] = v13;
  v7[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v7);
  OUTLINED_FUNCTION_59_5(boxed_opaque_existential_1Tm_0, v15, v16, MEMORY[0x1E69E7CC0], v17, v18, v19, v20, v0 + 240, v21, __src);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCEB995C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[47];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);

  OUTLINED_FUNCTION_29();
  v3 = v0[49];

  return v2();
}

char *sub_1DCEB99C4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 88);
  OUTLINED_FUNCTION_112(*(v4 + 80));
  (*(v5 + 8))(&v0[v6]);
  OUTLINED_FUNCTION_66();
  v8 = *&v0[*(v7 + 96) + 8];

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v9 + 104)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v10 + 112)]);
  return v0;
}

uint64_t sub_1DCEB9A78()
{
  sub_1DCEB99C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEB9AF4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEB8F68(a1);
}

uint64_t sub_1DCEB9C00()
{
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_11_1(*(v0 + 32));
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_59_18(v2, v5);
  return v6();
}

uint64_t sub_1DCEB9C58()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBEEE0();
}

uint64_t sub_1DCEB9CE4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEB9D20(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEB9D5C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEB9D98(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEB9DD4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEB9E10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEB9E4C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of AnyPromptFlow.onAsync(input:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v2 = *(v1 + 144);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_55_15(v4);

  return v6(v5);
}

uint64_t dispatch thunk of AnyPromptFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

uint64_t dispatch thunk of AnyHandleIntentFlow.onAsync(input:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v2 = *(v1 + 152);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_55_15(v4);

  return v6(v5);
}

uint64_t dispatch thunk of AnyHandleIntentFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 168);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

uint64_t dispatch thunk of AnyAppResolutionFlow.onAsync(input:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v2 = *(v1 + 144);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_55_15(v4);

  return v6(v5);
}

uint64_t dispatch thunk of AnyAppResolutionFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

void *sub_1DCEBA904()
{
  OUTLINED_FUNCTION_85_9();
  v4 = *v3;
  if (*v2)
  {
    if (v4)
    {
      v5 = *(v1 + 8);
      v6 = v0[1];
      *v0 = v4;
      v0[1] = v5;
      sub_1DD0DCF8C();
    }

    v8 = v0[1];
  }

  else if (v4)
  {
    v7 = *(v1 + 8);
    *v0 = v4;
    v0[1] = v7;
    sub_1DD0DCF8C();
  }

  *v0 = *v1;
  OUTLINED_FUNCTION_112_3();
  if (v10)
  {
    if (v9)
    {
      v11 = *(v1 + 24);
      v12 = v0[3];
      v0[2] = v9;
      v0[3] = v11;
      sub_1DD0DCF8C();
    }

    v14 = v0[3];
  }

  else if (v9)
  {
    v13 = *(v1 + 24);
    v0[2] = v9;
    v0[3] = v13;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_113_3();
  if (v16)
  {
    if (v15)
    {
      v17 = *(v1 + 40);
      v18 = v0[5];
      v0[4] = v15;
      v0[5] = v17;
      sub_1DD0DCF8C();
    }

    v20 = v0[5];
  }

  else if (v15)
  {
    v19 = *(v1 + 40);
    v0[4] = v15;
    v0[5] = v19;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_116_5();
  if (v22)
  {
    if (v21)
    {
      v23 = *(v1 + 56);
      v24 = v0[7];
      v0[6] = v21;
      v0[7] = v23;
      sub_1DD0DCF8C();
    }

    v26 = v0[7];
  }

  else if (v21)
  {
    v25 = *(v1 + 56);
    v0[6] = v21;
    v0[7] = v25;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_108_6();
  if (v28)
  {
    if (v27)
    {
      v29 = *(v1 + 72);
      v30 = v0[9];
      v0[8] = v27;
      v0[9] = v29;
      sub_1DD0DCF8C();
    }

    v32 = v0[9];
  }

  else if (v27)
  {
    v31 = *(v1 + 72);
    v0[8] = v27;
    v0[9] = v31;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_110_4();
  if (v34)
  {
    if (v33)
    {
      v35 = *(v1 + 88);
      v36 = v0[11];
      v0[10] = v33;
      v0[11] = v35;
      sub_1DD0DCF8C();
    }

    v38 = v0[11];
  }

  else if (v33)
  {
    v37 = *(v1 + 88);
    v0[10] = v33;
    v0[11] = v37;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_114_3();
  if (v40)
  {
    if (v39)
    {
      v41 = *(v1 + 104);
      v42 = v0[13];
      v0[12] = v39;
      v0[13] = v41;
      sub_1DD0DCF8C();
    }

    v44 = v0[13];
  }

  else if (v39)
  {
    v43 = *(v1 + 104);
    v0[12] = v39;
    v0[13] = v43;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_117_4();
  if (v46)
  {
    if (v45)
    {
      v47 = *(v1 + 120);
      v48 = v0[15];
      v0[14] = v45;
      v0[15] = v47;
      sub_1DD0DCF8C();
    }

    v50 = v0[15];
  }

  else if (v45)
  {
    v49 = *(v1 + 120);
    v0[14] = v45;
    v0[15] = v49;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_109_3();
  if (v52)
  {
    if (v51)
    {
      v53 = *(v1 + 136);
      v54 = v0[17];
      v0[16] = v51;
      v0[17] = v53;
      sub_1DD0DCF8C();
    }

    v56 = v0[17];
  }

  else if (v51)
  {
    v55 = *(v1 + 136);
    v0[16] = v51;
    v0[17] = v55;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_111_3();
  if (v58)
  {
    if (v57)
    {
      v59 = *(v1 + 152);
      v60 = v0[19];
      v0[18] = v57;
      v0[19] = v59;
      sub_1DD0DCF8C();
    }

    v62 = v0[19];
  }

  else if (v57)
  {
    v61 = *(v1 + 152);
    v0[18] = v57;
    v0[19] = v61;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_115_5();
  if (v64)
  {
    if (v63)
    {
      v65 = *(v1 + 168);
      v66 = v0[21];
      v0[20] = v63;
      v0[21] = v65;
      sub_1DD0DCF8C();
    }

    v68 = v0[21];
  }

  else if (v63)
  {
    v67 = *(v1 + 168);
    v0[20] = v63;
    v0[21] = v67;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_37_28();
  return v0;
}

void *sub_1DCEBAC50()
{
  OUTLINED_FUNCTION_85_9();
  v4 = *v3;
  if (*v2)
  {
    if (v4)
    {
      v5 = *(v1 + 8);
      v6 = v0[1];
      *v0 = v4;
      v0[1] = v5;

      goto LABEL_8;
    }

    v8 = v0[1];
  }

  else if (v4)
  {
    v7 = *(v1 + 8);
    *v0 = v4;
    v0[1] = v7;
    goto LABEL_8;
  }

  *v0 = *v1;
LABEL_8:
  OUTLINED_FUNCTION_112_3();
  if (v10)
  {
    if (v9)
    {
      v11 = *(v1 + 24);
      v12 = v0[3];
      v0[2] = v9;
      v0[3] = v11;

      goto LABEL_15;
    }

    v14 = v0[3];
  }

  else if (v9)
  {
    v13 = *(v1 + 24);
    v0[2] = v9;
    v0[3] = v13;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_15:
  OUTLINED_FUNCTION_113_3();
  if (v16)
  {
    if (v15)
    {
      v17 = *(v1 + 40);
      v18 = v0[5];
      v0[4] = v15;
      v0[5] = v17;

      goto LABEL_22;
    }

    v20 = v0[5];
  }

  else if (v15)
  {
    v19 = *(v1 + 40);
    v0[4] = v15;
    v0[5] = v19;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_22:
  OUTLINED_FUNCTION_116_5();
  if (v22)
  {
    if (v21)
    {
      v23 = *(v1 + 56);
      v24 = v0[7];
      v0[6] = v21;
      v0[7] = v23;

      goto LABEL_29;
    }

    v26 = v0[7];
  }

  else if (v21)
  {
    v25 = *(v1 + 56);
    v0[6] = v21;
    v0[7] = v25;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_29:
  OUTLINED_FUNCTION_108_6();
  if (v28)
  {
    if (v27)
    {
      v29 = *(v1 + 72);
      v30 = v0[9];
      v0[8] = v27;
      v0[9] = v29;

      goto LABEL_36;
    }

    v32 = v0[9];
  }

  else if (v27)
  {
    v31 = *(v1 + 72);
    v0[8] = v27;
    v0[9] = v31;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_36:
  OUTLINED_FUNCTION_110_4();
  if (v34)
  {
    if (v33)
    {
      v35 = *(v1 + 88);
      v36 = v0[11];
      v0[10] = v33;
      v0[11] = v35;

      goto LABEL_43;
    }

    v38 = v0[11];
  }

  else if (v33)
  {
    v37 = *(v1 + 88);
    v0[10] = v33;
    v0[11] = v37;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_43:
  OUTLINED_FUNCTION_114_3();
  if (v40)
  {
    if (v39)
    {
      v41 = *(v1 + 104);
      v42 = v0[13];
      v0[12] = v39;
      v0[13] = v41;

      goto LABEL_50;
    }

    v44 = v0[13];
  }

  else if (v39)
  {
    v43 = *(v1 + 104);
    v0[12] = v39;
    v0[13] = v43;
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_50:
  OUTLINED_FUNCTION_117_4();
  if (v46)
  {
    if (v45)
    {
      v47 = *(v1 + 120);
      v48 = v0[15];
      v0[14] = v45;
      v0[15] = v47;

      goto LABEL_57;
    }

    v50 = v0[15];
  }

  else if (v45)
  {
    v49 = *(v1 + 120);
    v0[14] = v45;
    v0[15] = v49;
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_57:
  OUTLINED_FUNCTION_109_3();
  if (v52)
  {
    if (v51)
    {
      v53 = *(v1 + 136);
      v54 = v0[17];
      v0[16] = v51;
      v0[17] = v53;

      goto LABEL_64;
    }

    v56 = v0[17];
  }

  else if (v51)
  {
    v55 = *(v1 + 136);
    v0[16] = v51;
    v0[17] = v55;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_64:
  OUTLINED_FUNCTION_111_3();
  if (v58)
  {
    if (v57)
    {
      v59 = *(v1 + 152);
      v60 = v0[19];
      v0[18] = v57;
      v0[19] = v59;

      goto LABEL_71;
    }

    v62 = v0[19];
  }

  else if (v57)
  {
    v61 = *(v1 + 152);
    v0[18] = v57;
    v0[19] = v61;
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_37_28();
LABEL_71:
  OUTLINED_FUNCTION_115_5();
  if (!v64)
  {
    if (v63)
    {
      v67 = *(v1 + 168);
      v0[20] = v63;
      v0[21] = v67;
      return v0;
    }

LABEL_77:
    OUTLINED_FUNCTION_37_28();
    return v0;
  }

  if (!v63)
  {
    v68 = v0[21];

    goto LABEL_77;
  }

  v65 = *(v1 + 168);
  v66 = v0[21];
  v0[20] = v63;
  v0[21] = v65;

  return v0;
}

uint64_t sub_1DCEBAF18(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 176))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCEBAF6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of RCHChildFlowFactory.__allocating_init(producers:)()
{
  return (*(v0 + 136))();
}

{
  return (*(v0 + 144))();
}

uint64_t sub_1DCEBB0E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1DCEBB1AC(void *__dst, uint64_t *__src)
{
  v4 = *__src;
  if (*__src)
  {
    if (v4 != 1)
    {
      v5 = __src[1];
      *__dst = v4;
      __dst[1] = v5;
      sub_1DD0DCF8C();
    }

    memcpy(__dst, __src, 0xB0uLL);
  }

  else
  {
    *__dst = *__src;
    v6 = __src[2];
    if (v6)
    {
      v7 = __src[3];
      __dst[2] = v6;
      __dst[3] = v7;
      sub_1DD0DCF8C();
    }

    *(__dst + 1) = *(__src + 1);
    v8 = __src[4];
    if (v8)
    {
      v9 = __src[5];
      __dst[4] = v8;
      __dst[5] = v9;
      sub_1DD0DCF8C();
    }

    *(__dst + 2) = *(__src + 2);
    v10 = __src[6];
    if (v10)
    {
      v11 = __src[7];
      __dst[6] = v10;
      __dst[7] = v11;
      sub_1DD0DCF8C();
    }

    *(__dst + 3) = *(__src + 3);
    v12 = __src[8];
    if (v12)
    {
      v13 = __src[9];
      __dst[8] = v12;
      __dst[9] = v13;
      sub_1DD0DCF8C();
    }

    *(__dst + 4) = *(__src + 4);
    v14 = __src[10];
    if (v14)
    {
      v15 = __src[11];
      __dst[10] = v14;
      __dst[11] = v15;
      sub_1DD0DCF8C();
    }

    *(__dst + 5) = *(__src + 5);
    v16 = __src[12];
    if (v16)
    {
      v17 = __src[13];
      __dst[12] = v16;
      __dst[13] = v17;
      sub_1DD0DCF8C();
    }

    *(__dst + 6) = *(__src + 6);
    v18 = __src[14];
    if (v18)
    {
      v19 = __src[15];
      __dst[14] = v18;
      __dst[15] = v19;
      sub_1DD0DCF8C();
    }

    *(__dst + 7) = *(__src + 7);
    v20 = __src[16];
    if (v20)
    {
      v21 = __src[17];
      __dst[16] = v20;
      __dst[17] = v21;
      sub_1DD0DCF8C();
    }

    *(__dst + 8) = *(__src + 8);
    v22 = __src[18];
    if (v22)
    {
      v23 = __src[19];
      __dst[18] = v22;
      __dst[19] = v23;
      sub_1DD0DCF8C();
    }

    *(__dst + 9) = *(__src + 9);
    v24 = __src[20];
    if (v24)
    {
      v25 = __src[21];
      __dst[20] = v24;
      __dst[21] = v25;
      sub_1DD0DCF8C();
    }

    *(__dst + 10) = *(__src + 10);
  }

  v26 = __src + 22;
  v27 = __src[22];
  if (v27)
  {
    if (v27 != 1)
    {
      v28 = __src[23];
      __dst[22] = v27;
      __dst[23] = v28;
      sub_1DD0DCF8C();
    }

    memcpy(__dst + 22, v26, 0xB0uLL);
  }

  else
  {
    *(__dst + 11) = *v26;
    v29 = __src[24];
    if (v29)
    {
      v30 = __src[25];
      __dst[24] = v29;
      __dst[25] = v30;
      sub_1DD0DCF8C();
    }

    *(__dst + 12) = *(__src + 12);
    v31 = __src[26];
    if (v31)
    {
      v32 = __src[27];
      __dst[26] = v31;
      __dst[27] = v32;
      sub_1DD0DCF8C();
    }

    *(__dst + 13) = *(__src + 13);
    v33 = __src[28];
    if (v33)
    {
      v34 = __src[29];
      __dst[28] = v33;
      __dst[29] = v34;
      sub_1DD0DCF8C();
    }

    *(__dst + 14) = *(__src + 14);
    v35 = __src[30];
    if (v35)
    {
      v36 = __src[31];
      __dst[30] = v35;
      __dst[31] = v36;
      sub_1DD0DCF8C();
    }

    *(__dst + 15) = *(__src + 15);
    v37 = __src[32];
    if (v37)
    {
      v38 = __src[33];
      __dst[32] = v37;
      __dst[33] = v38;
      sub_1DD0DCF8C();
    }

    *(__dst + 16) = *(__src + 16);
    v39 = __src[34];
    if (v39)
    {
      v40 = __src[35];
      __dst[34] = v39;
      __dst[35] = v40;
      sub_1DD0DCF8C();
    }

    *(__dst + 17) = *(__src + 17);
    v41 = __src[36];
    if (v41)
    {
      v42 = __src[37];
      __dst[36] = v41;
      __dst[37] = v42;
      sub_1DD0DCF8C();
    }

    *(__dst + 18) = *(__src + 18);
    v43 = __src[38];
    if (v43)
    {
      v44 = __src[39];
      __dst[38] = v43;
      __dst[39] = v44;
      sub_1DD0DCF8C();
    }

    *(__dst + 19) = *(__src + 19);
    v45 = __src[40];
    if (v45)
    {
      v46 = __src[41];
      __dst[40] = v45;
      __dst[41] = v46;
      sub_1DD0DCF8C();
    }

    *(__dst + 20) = *(__src + 20);
    v47 = __src[42];
    if (v47)
    {
      v48 = __src[43];
      __dst[42] = v47;
      __dst[43] = v48;
      sub_1DD0DCF8C();
    }

    *(__dst + 21) = *(__src + 21);
  }

  return __dst;
}

void *sub_1DCEBB504(void *__dst, void *__src, uint64_t a3)
{
  v6 = *__src;
  if (*__dst == 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        v7 = __src[1];
        *__dst = v6;
        __dst[1] = v7;
        sub_1DD0DCF8C();
      }

      goto LABEL_7;
    }

    *__dst = *__src;
    v13 = __src[2];
    if (v13)
    {
      v14 = __src[3];
      __dst[2] = v13;
      __dst[3] = v14;
      sub_1DD0DCF8C();
    }

    *(__dst + 1) = *(__src + 1);
    v15 = __src[4];
    if (v15)
    {
      v16 = __src[5];
      __dst[4] = v15;
      __dst[5] = v16;
      sub_1DD0DCF8C();
    }

    *(__dst + 2) = *(__src + 2);
    v17 = __src[6];
    if (v17)
    {
      v18 = __src[7];
      __dst[6] = v17;
      __dst[7] = v18;
      sub_1DD0DCF8C();
    }

    *(__dst + 3) = *(__src + 3);
    v19 = __src[8];
    if (v19)
    {
      v20 = __src[9];
      __dst[8] = v19;
      __dst[9] = v20;
      sub_1DD0DCF8C();
    }

    *(__dst + 4) = *(__src + 4);
    v21 = __src[10];
    if (v21)
    {
      v22 = __src[11];
      __dst[10] = v21;
      __dst[11] = v22;
      sub_1DD0DCF8C();
    }

    *(__dst + 5) = *(__src + 5);
    v23 = __src[12];
    if (v23)
    {
      v24 = __src[13];
      __dst[12] = v23;
      __dst[13] = v24;
      sub_1DD0DCF8C();
    }

    *(__dst + 6) = *(__src + 6);
    v25 = __src[14];
    if (v25)
    {
      v26 = __src[15];
      __dst[14] = v25;
      __dst[15] = v26;
      sub_1DD0DCF8C();
    }

    *(__dst + 7) = *(__src + 7);
    v27 = __src[16];
    if (v27)
    {
      v28 = __src[17];
      __dst[16] = v27;
      __dst[17] = v28;
      sub_1DD0DCF8C();
    }

    *(__dst + 8) = *(__src + 8);
    v29 = __src[18];
    if (v29)
    {
      v30 = __src[19];
      __dst[18] = v29;
      __dst[19] = v30;
      sub_1DD0DCF8C();
    }

    *(__dst + 9) = *(__src + 9);
    v31 = __src[20];
    if (!v31)
    {
      *(__dst + 10) = *(__src + 10);
      goto LABEL_95;
    }

LABEL_92:
    v81 = __src[21];
    __dst[20] = v31;
    __dst[21] = v81;
    sub_1DD0DCF8C();
  }

  if (v6 == 1)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    v10 = type metadata accessor for RCHChildFlowProducersAsync();
    (*(*(v10 - 8) + 8))(__dst, v10);
LABEL_7:
    memcpy(__dst, __src, 0xB0uLL);
    goto LABEL_95;
  }

  if (*__dst)
  {
    if (v6)
    {
      v11 = __src[1];
      v12 = __dst[1];
      *__dst = v6;
      __dst[1] = v11;
      sub_1DD0DCF8C();
    }

    v33 = __dst[1];
  }

  else if (v6)
  {
    v32 = __src[1];
    *__dst = v6;
    __dst[1] = v32;
    sub_1DD0DCF8C();
  }

  *__dst = *__src;
  v34 = __src[2];
  if (__dst[2])
  {
    if (v34)
    {
      v35 = __src[3];
      v36 = __dst[3];
      __dst[2] = v34;
      __dst[3] = v35;
      sub_1DD0DCF8C();
    }

    v38 = __dst[3];
  }

  else if (v34)
  {
    v37 = __src[3];
    __dst[2] = v34;
    __dst[3] = v37;
    sub_1DD0DCF8C();
  }

  *(__dst + 1) = *(__src + 1);
  v39 = __src[4];
  if (__dst[4])
  {
    if (v39)
    {
      v40 = __src[5];
      v41 = __dst[5];
      __dst[4] = v39;
      __dst[5] = v40;
      sub_1DD0DCF8C();
    }

    v43 = __dst[5];
  }

  else if (v39)
  {
    v42 = __src[5];
    __dst[4] = v39;
    __dst[5] = v42;
    sub_1DD0DCF8C();
  }

  *(__dst + 2) = *(__src + 2);
  v44 = __src[6];
  if (__dst[6])
  {
    if (v44)
    {
      v45 = __src[7];
      v46 = __dst[7];
      __dst[6] = v44;
      __dst[7] = v45;
      sub_1DD0DCF8C();
    }

    v48 = __dst[7];
  }

  else if (v44)
  {
    v47 = __src[7];
    __dst[6] = v44;
    __dst[7] = v47;
    sub_1DD0DCF8C();
  }

  *(__dst + 3) = *(__src + 3);
  v49 = __src[8];
  if (__dst[8])
  {
    if (v49)
    {
      v50 = __src[9];
      v51 = __dst[9];
      __dst[8] = v49;
      __dst[9] = v50;
      sub_1DD0DCF8C();
    }

    v53 = __dst[9];
  }

  else if (v49)
  {
    v52 = __src[9];
    __dst[8] = v49;
    __dst[9] = v52;
    sub_1DD0DCF8C();
  }

  *(__dst + 4) = *(__src + 4);
  v54 = __src[10];
  if (__dst[10])
  {
    if (v54)
    {
      v55 = __src[11];
      v56 = __dst[11];
      __dst[10] = v54;
      __dst[11] = v55;
      sub_1DD0DCF8C();
    }

    v58 = __dst[11];
  }

  else if (v54)
  {
    v57 = __src[11];
    __dst[10] = v54;
    __dst[11] = v57;
    sub_1DD0DCF8C();
  }

  *(__dst + 5) = *(__src + 5);
  v59 = __src[12];
  if (__dst[12])
  {
    if (v59)
    {
      v60 = __src[13];
      v61 = __dst[13];
      __dst[12] = v59;
      __dst[13] = v60;
      sub_1DD0DCF8C();
    }

    v63 = __dst[13];
  }

  else if (v59)
  {
    v62 = __src[13];
    __dst[12] = v59;
    __dst[13] = v62;
    sub_1DD0DCF8C();
  }

  *(__dst + 6) = *(__src + 6);
  v64 = __src[14];
  if (__dst[14])
  {
    if (v64)
    {
      v65 = __src[15];
      v66 = __dst[15];
      __dst[14] = v64;
      __dst[15] = v65;
      sub_1DD0DCF8C();
    }

    v68 = __dst[15];
  }

  else if (v64)
  {
    v67 = __src[15];
    __dst[14] = v64;
    __dst[15] = v67;
    sub_1DD0DCF8C();
  }

  *(__dst + 7) = *(__src + 7);
  v69 = __src[16];
  if (__dst[16])
  {
    if (v69)
    {
      v70 = __src[17];
      v71 = __dst[17];
      __dst[16] = v69;
      __dst[17] = v70;
      sub_1DD0DCF8C();
    }

    v73 = __dst[17];
  }

  else if (v69)
  {
    v72 = __src[17];
    __dst[16] = v69;
    __dst[17] = v72;
    sub_1DD0DCF8C();
  }

  *(__dst + 8) = *(__src + 8);
  v74 = __src[18];
  if (__dst[18])
  {
    if (v74)
    {
      v75 = __src[19];
      v76 = __dst[19];
      __dst[18] = v74;
      __dst[19] = v75;
      sub_1DD0DCF8C();
    }

    v78 = __dst[19];
  }

  else if (v74)
  {
    v77 = __src[19];
    __dst[18] = v74;
    __dst[19] = v77;
    sub_1DD0DCF8C();
  }

  *(__dst + 9) = *(__src + 9);
  v31 = __src[20];
  if (__dst[20])
  {
    if (v31)
    {
      v79 = __src[21];
      v80 = __dst[21];
      __dst[20] = v31;
      __dst[21] = v79;
      sub_1DD0DCF8C();
    }

    v82 = __dst[21];
  }

  else if (v31)
  {
    goto LABEL_92;
  }

  *(__dst + 10) = *(__src + 10);
LABEL_95:
  v84 = __dst + 22;
  v83 = __dst[22];
  v86 = __src + 22;
  v85 = __src[22];
  if (v83 == 1)
  {
    if (v85)
    {
      if (v85 != 1)
      {
        v87 = __src[23];
        __dst[22] = v85;
        __dst[23] = v87;
        sub_1DD0DCF8C();
      }

      goto LABEL_101;
    }

    *v84 = *v86;
    v93 = __src[24];
    if (v93)
    {
      v94 = __src[25];
      __dst[24] = v93;
      __dst[25] = v94;
      sub_1DD0DCF8C();
    }

    *(__dst + 12) = *(__src + 12);
    v95 = __src[26];
    if (v95)
    {
      v96 = __src[27];
      __dst[26] = v95;
      __dst[27] = v96;
      sub_1DD0DCF8C();
    }

    *(__dst + 13) = *(__src + 13);
    v97 = __src[28];
    if (v97)
    {
      v98 = __src[29];
      __dst[28] = v97;
      __dst[29] = v98;
      sub_1DD0DCF8C();
    }

    *(__dst + 14) = *(__src + 14);
    v99 = __src[30];
    if (v99)
    {
      v100 = __src[31];
      __dst[30] = v99;
      __dst[31] = v100;
      sub_1DD0DCF8C();
    }

    *(__dst + 15) = *(__src + 15);
    v101 = __src[32];
    if (v101)
    {
      v102 = __src[33];
      __dst[32] = v101;
      __dst[33] = v102;
      sub_1DD0DCF8C();
    }

    *(__dst + 16) = *(__src + 16);
    v103 = __src[34];
    if (v103)
    {
      v104 = __src[35];
      __dst[34] = v103;
      __dst[35] = v104;
      sub_1DD0DCF8C();
    }

    *(__dst + 17) = *(__src + 17);
    v105 = __src[36];
    if (v105)
    {
      v106 = __src[37];
      __dst[36] = v105;
      __dst[37] = v106;
      sub_1DD0DCF8C();
    }

    *(__dst + 18) = *(__src + 18);
    v107 = __src[38];
    if (v107)
    {
      v108 = __src[39];
      __dst[38] = v107;
      __dst[39] = v108;
      sub_1DD0DCF8C();
    }

    *(__dst + 19) = *(__src + 19);
    v109 = __src[40];
    if (v109)
    {
      v110 = __src[41];
      __dst[40] = v109;
      __dst[41] = v110;
      sub_1DD0DCF8C();
    }

    *(__dst + 20) = *(__src + 20);
    v111 = __src[42];
    goto LABEL_184;
  }

  if (v85 != 1)
  {
    if (v83)
    {
      if (v85)
      {
        v91 = __src[23];
        v92 = __dst[23];
        __dst[22] = v85;
        __dst[23] = v91;
        sub_1DD0DCF8C();
      }

      v113 = __dst[23];
    }

    else if (v85)
    {
      v112 = __src[23];
      __dst[22] = v85;
      __dst[23] = v112;
      sub_1DD0DCF8C();
    }

    *v84 = *v86;
    v114 = __src[24];
    if (__dst[24])
    {
      if (v114)
      {
        v115 = __src[25];
        v116 = __dst[25];
        __dst[24] = v114;
        __dst[25] = v115;
        sub_1DD0DCF8C();
      }

      v118 = __dst[25];
    }

    else if (v114)
    {
      v117 = __src[25];
      __dst[24] = v114;
      __dst[25] = v117;
      sub_1DD0DCF8C();
    }

    *(__dst + 12) = *(__src + 12);
    v119 = __src[26];
    if (__dst[26])
    {
      if (v119)
      {
        v120 = __src[27];
        v121 = __dst[27];
        __dst[26] = v119;
        __dst[27] = v120;
        sub_1DD0DCF8C();
      }

      v123 = __dst[27];
    }

    else if (v119)
    {
      v122 = __src[27];
      __dst[26] = v119;
      __dst[27] = v122;
      sub_1DD0DCF8C();
    }

    *(__dst + 13) = *(__src + 13);
    v124 = __src[28];
    if (__dst[28])
    {
      if (v124)
      {
        v125 = __src[29];
        v126 = __dst[29];
        __dst[28] = v124;
        __dst[29] = v125;
        sub_1DD0DCF8C();
      }

      v128 = __dst[29];
    }

    else if (v124)
    {
      v127 = __src[29];
      __dst[28] = v124;
      __dst[29] = v127;
      sub_1DD0DCF8C();
    }

    *(__dst + 14) = *(__src + 14);
    v129 = __src[30];
    if (__dst[30])
    {
      if (v129)
      {
        v130 = __src[31];
        v131 = __dst[31];
        __dst[30] = v129;
        __dst[31] = v130;
        sub_1DD0DCF8C();
      }

      v133 = __dst[31];
    }

    else if (v129)
    {
      v132 = __src[31];
      __dst[30] = v129;
      __dst[31] = v132;
      sub_1DD0DCF8C();
    }

    *(__dst + 15) = *(__src + 15);
    v134 = __src[32];
    if (__dst[32])
    {
      if (v134)
      {
        v135 = __src[33];
        v136 = __dst[33];
        __dst[32] = v134;
        __dst[33] = v135;
        sub_1DD0DCF8C();
      }

      v138 = __dst[33];
    }

    else if (v134)
    {
      v137 = __src[33];
      __dst[32] = v134;
      __dst[33] = v137;
      sub_1DD0DCF8C();
    }

    *(__dst + 16) = *(__src + 16);
    v139 = __src[34];
    if (__dst[34])
    {
      if (v139)
      {
        v140 = __src[35];
        v141 = __dst[35];
        __dst[34] = v139;
        __dst[35] = v140;
        sub_1DD0DCF8C();
      }

      v143 = __dst[35];
    }

    else if (v139)
    {
      v142 = __src[35];
      __dst[34] = v139;
      __dst[35] = v142;
      sub_1DD0DCF8C();
    }

    *(__dst + 17) = *(__src + 17);
    v144 = __src[36];
    if (__dst[36])
    {
      if (v144)
      {
        v145 = __src[37];
        v146 = __dst[37];
        __dst[36] = v144;
        __dst[37] = v145;
        sub_1DD0DCF8C();
      }

      v148 = __dst[37];
    }

    else if (v144)
    {
      v147 = __src[37];
      __dst[36] = v144;
      __dst[37] = v147;
      sub_1DD0DCF8C();
    }

    *(__dst + 18) = *(__src + 18);
    v149 = __src[38];
    if (__dst[38])
    {
      if (v149)
      {
        v150 = __src[39];
        v151 = __dst[39];
        __dst[38] = v149;
        __dst[39] = v150;
        sub_1DD0DCF8C();
      }

      v153 = __dst[39];
    }

    else if (v149)
    {
      v152 = __src[39];
      __dst[38] = v149;
      __dst[39] = v152;
      sub_1DD0DCF8C();
    }

    *(__dst + 19) = *(__src + 19);
    v154 = __src[40];
    if (__dst[40])
    {
      if (v154)
      {
        v155 = __src[41];
        v156 = __dst[41];
        __dst[40] = v154;
        __dst[41] = v155;
        sub_1DD0DCF8C();
      }

      v158 = __dst[41];
    }

    else if (v154)
    {
      v157 = __src[41];
      __dst[40] = v154;
      __dst[41] = v157;
      sub_1DD0DCF8C();
    }

    *(__dst + 20) = *(__src + 20);
    v111 = __src[42];
    if (__dst[42])
    {
      if (v111)
      {
        v159 = __src[43];
        v160 = __dst[43];
        __dst[42] = v111;
        __dst[43] = v159;
        sub_1DD0DCF8C();
      }

      v162 = __dst[43];

      goto LABEL_187;
    }

LABEL_184:
    if (v111)
    {
      v161 = __src[43];
      __dst[42] = v111;
      __dst[43] = v161;
      sub_1DD0DCF8C();
    }

LABEL_187:
    *(__dst + 21) = *(__src + 21);
    return __dst;
  }

  v88 = *(a3 + 16);
  v89 = *(a3 + 24);
  v90 = type metadata accessor for RCHChildFlowProducers();
  (*(*(v90 - 8) + 8))(__dst + 176, v90);
LABEL_101:
  memcpy(__dst + 22, __src + 22, 0xB0uLL);
  return __dst;
}

char *sub_1DCEBC03C(char *__dst, char *__src, uint64_t a3)
{
  if (*__dst == 1)
  {
    goto LABEL_4;
  }

  v6 = *__src;
  if (*__src == 1)
  {
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for RCHChildFlowProducersAsync();
    (*(*(v9 - 8) + 8))(__dst, v9);
LABEL_4:
    memcpy(__dst, __src, 0xB0uLL);
    goto LABEL_5;
  }

  if (*__dst)
  {
    if (v6)
    {
      v16 = *(__src + 1);
      v17 = *(__dst + 1);
      *__dst = v6;
      *(__dst + 1) = v16;

      goto LABEL_22;
    }

    v22 = *(__dst + 1);
  }

  else if (v6)
  {
    v20 = *(__src + 1);
    *__dst = v6;
    *(__dst + 1) = v20;
    goto LABEL_22;
  }

  *__dst = *__src;
LABEL_22:
  v23 = *(__src + 2);
  if (*(__dst + 2))
  {
    if (v23)
    {
      v24 = *(__src + 3);
      v25 = *(__dst + 3);
      *(__dst + 2) = v23;
      *(__dst + 3) = v24;

      goto LABEL_36;
    }

    v32 = *(__dst + 3);
  }

  else if (v23)
  {
    v26 = *(__src + 3);
    *(__dst + 2) = v23;
    *(__dst + 3) = v26;
    goto LABEL_36;
  }

  *(__dst + 1) = *(__src + 1);
LABEL_36:
  v33 = *(__src + 4);
  if (*(__dst + 4))
  {
    if (v33)
    {
      v34 = *(__src + 5);
      v35 = *(__dst + 5);
      *(__dst + 4) = v33;
      *(__dst + 5) = v34;

      goto LABEL_50;
    }

    v42 = *(__dst + 5);
  }

  else if (v33)
  {
    v36 = *(__src + 5);
    *(__dst + 4) = v33;
    *(__dst + 5) = v36;
    goto LABEL_50;
  }

  *(__dst + 2) = *(__src + 2);
LABEL_50:
  v43 = *(__src + 6);
  if (*(__dst + 6))
  {
    if (v43)
    {
      v44 = *(__src + 7);
      v45 = *(__dst + 7);
      *(__dst + 6) = v43;
      *(__dst + 7) = v44;

      goto LABEL_64;
    }

    v52 = *(__dst + 7);
  }

  else if (v43)
  {
    v46 = *(__src + 7);
    *(__dst + 6) = v43;
    *(__dst + 7) = v46;
    goto LABEL_64;
  }

  *(__dst + 3) = *(__src + 3);
LABEL_64:
  v53 = *(__src + 8);
  if (*(__dst + 8))
  {
    if (v53)
    {
      v54 = *(__src + 9);
      v55 = *(__dst + 9);
      *(__dst + 8) = v53;
      *(__dst + 9) = v54;

      goto LABEL_78;
    }

    v62 = *(__dst + 9);
  }

  else if (v53)
  {
    v56 = *(__src + 9);
    *(__dst + 8) = v53;
    *(__dst + 9) = v56;
    goto LABEL_78;
  }

  *(__dst + 4) = *(__src + 4);
LABEL_78:
  v63 = *(__src + 10);
  if (*(__dst + 10))
  {
    if (v63)
    {
      v64 = *(__src + 11);
      v65 = *(__dst + 11);
      *(__dst + 10) = v63;
      *(__dst + 11) = v64;

      goto LABEL_92;
    }

    v72 = *(__dst + 11);
  }

  else if (v63)
  {
    v66 = *(__src + 11);
    *(__dst + 10) = v63;
    *(__dst + 11) = v66;
    goto LABEL_92;
  }

  *(__dst + 5) = *(__src + 5);
LABEL_92:
  v73 = *(__src + 12);
  if (*(__dst + 12))
  {
    if (v73)
    {
      v74 = *(__src + 13);
      v75 = *(__dst + 13);
      *(__dst + 12) = v73;
      *(__dst + 13) = v74;

      goto LABEL_106;
    }

    v82 = *(__dst + 13);
  }

  else if (v73)
  {
    v76 = *(__src + 13);
    *(__dst + 12) = v73;
    *(__dst + 13) = v76;
    goto LABEL_106;
  }

  *(__dst + 6) = *(__src + 6);
LABEL_106:
  v83 = *(__src + 14);
  if (*(__dst + 14))
  {
    if (v83)
    {
      v84 = *(__src + 15);
      v85 = *(__dst + 15);
      *(__dst + 14) = v83;
      *(__dst + 15) = v84;

      goto LABEL_120;
    }

    v92 = *(__dst + 15);
  }

  else if (v83)
  {
    v86 = *(__src + 15);
    *(__dst + 14) = v83;
    *(__dst + 15) = v86;
    goto LABEL_120;
  }

  *(__dst + 7) = *(__src + 7);
LABEL_120:
  v93 = *(__src + 16);
  if (*(__dst + 16))
  {
    if (v93)
    {
      v94 = *(__src + 17);
      v95 = *(__dst + 17);
      *(__dst + 16) = v93;
      *(__dst + 17) = v94;

      goto LABEL_134;
    }

    v102 = *(__dst + 17);
  }

  else if (v93)
  {
    v96 = *(__src + 17);
    *(__dst + 16) = v93;
    *(__dst + 17) = v96;
    goto LABEL_134;
  }

  *(__dst + 8) = *(__src + 8);
LABEL_134:
  v103 = *(__src + 18);
  if (*(__dst + 18))
  {
    if (v103)
    {
      v104 = *(__src + 19);
      v105 = *(__dst + 19);
      *(__dst + 18) = v103;
      *(__dst + 19) = v104;

      goto LABEL_148;
    }

    v112 = *(__dst + 19);
  }

  else if (v103)
  {
    v106 = *(__src + 19);
    *(__dst + 18) = v103;
    *(__dst + 19) = v106;
    goto LABEL_148;
  }

  *(__dst + 9) = *(__src + 9);
LABEL_148:
  v113 = *(__src + 20);
  if (*(__dst + 20))
  {
    if (v113)
    {
      v114 = *(__src + 21);
      v115 = *(__dst + 21);
      *(__dst + 20) = v113;
      *(__dst + 21) = v114;

      goto LABEL_5;
    }

    v122 = *(__dst + 21);
  }

  else if (v113)
  {
    v116 = *(__src + 21);
    *(__dst + 20) = v113;
    *(__dst + 21) = v116;
    goto LABEL_5;
  }

  *(__dst + 10) = *(__src + 10);
LABEL_5:
  v10 = *(__dst + 22);
  v11 = *(__src + 22);
  if (v10 != 1)
  {
    if (v11 == 1)
    {
      v12 = *(a3 + 16);
      v13 = *(a3 + 24);
      v14 = type metadata accessor for RCHChildFlowProducers();
      (*(*(v14 - 8) + 8))(__dst + 176, v14);
      goto LABEL_8;
    }

    if (v10)
    {
      if (v11)
      {
        v18 = *(__src + 23);
        v19 = *(__dst + 23);
        *(__dst + 22) = v11;
        *(__dst + 23) = v18;

        goto LABEL_29;
      }

      v27 = *(__dst + 23);
    }

    else if (v11)
    {
      v21 = *(__src + 23);
      *(__dst + 22) = v11;
      *(__dst + 23) = v21;
      goto LABEL_29;
    }

    *(__dst + 11) = *(__src + 11);
LABEL_29:
    v28 = *(__src + 24);
    if (*(__dst + 24))
    {
      if (v28)
      {
        v29 = *(__src + 25);
        v30 = *(__dst + 25);
        *(__dst + 24) = v28;
        *(__dst + 25) = v29;

        goto LABEL_43;
      }

      v37 = *(__dst + 25);
    }

    else if (v28)
    {
      v31 = *(__src + 25);
      *(__dst + 24) = v28;
      *(__dst + 25) = v31;
      goto LABEL_43;
    }

    *(__dst + 12) = *(__src + 12);
LABEL_43:
    v38 = *(__src + 26);
    if (*(__dst + 26))
    {
      if (v38)
      {
        v39 = *(__src + 27);
        v40 = *(__dst + 27);
        *(__dst + 26) = v38;
        *(__dst + 27) = v39;

        goto LABEL_57;
      }

      v47 = *(__dst + 27);
    }

    else if (v38)
    {
      v41 = *(__src + 27);
      *(__dst + 26) = v38;
      *(__dst + 27) = v41;
      goto LABEL_57;
    }

    *(__dst + 13) = *(__src + 13);
LABEL_57:
    v48 = *(__src + 28);
    if (*(__dst + 28))
    {
      if (v48)
      {
        v49 = *(__src + 29);
        v50 = *(__dst + 29);
        *(__dst + 28) = v48;
        *(__dst + 29) = v49;

        goto LABEL_71;
      }

      v57 = *(__dst + 29);
    }

    else if (v48)
    {
      v51 = *(__src + 29);
      *(__dst + 28) = v48;
      *(__dst + 29) = v51;
      goto LABEL_71;
    }

    *(__dst + 14) = *(__src + 14);
LABEL_71:
    v58 = *(__src + 30);
    if (*(__dst + 30))
    {
      if (v58)
      {
        v59 = *(__src + 31);
        v60 = *(__dst + 31);
        *(__dst + 30) = v58;
        *(__dst + 31) = v59;

        goto LABEL_85;
      }

      v67 = *(__dst + 31);
    }

    else if (v58)
    {
      v61 = *(__src + 31);
      *(__dst + 30) = v58;
      *(__dst + 31) = v61;
      goto LABEL_85;
    }

    *(__dst + 15) = *(__src + 15);
LABEL_85:
    v68 = *(__src + 32);
    if (*(__dst + 32))
    {
      if (v68)
      {
        v69 = *(__src + 33);
        v70 = *(__dst + 33);
        *(__dst + 32) = v68;
        *(__dst + 33) = v69;

        goto LABEL_99;
      }

      v77 = *(__dst + 33);
    }

    else if (v68)
    {
      v71 = *(__src + 33);
      *(__dst + 32) = v68;
      *(__dst + 33) = v71;
      goto LABEL_99;
    }

    *(__dst + 16) = *(__src + 16);
LABEL_99:
    v78 = *(__src + 34);
    if (*(__dst + 34))
    {
      if (v78)
      {
        v79 = *(__src + 35);
        v80 = *(__dst + 35);
        *(__dst + 34) = v78;
        *(__dst + 35) = v79;

        goto LABEL_113;
      }

      v87 = *(__dst + 35);
    }

    else if (v78)
    {
      v81 = *(__src + 35);
      *(__dst + 34) = v78;
      *(__dst + 35) = v81;
      goto LABEL_113;
    }

    *(__dst + 17) = *(__src + 17);
LABEL_113:
    v88 = *(__src + 36);
    if (*(__dst + 36))
    {
      if (v88)
      {
        v89 = *(__src + 37);
        v90 = *(__dst + 37);
        *(__dst + 36) = v88;
        *(__dst + 37) = v89;

        goto LABEL_127;
      }

      v97 = *(__dst + 37);
    }

    else if (v88)
    {
      v91 = *(__src + 37);
      *(__dst + 36) = v88;
      *(__dst + 37) = v91;
      goto LABEL_127;
    }

    *(__dst + 18) = *(__src + 18);
LABEL_127:
    v98 = *(__src + 38);
    if (*(__dst + 38))
    {
      if (v98)
      {
        v99 = *(__src + 39);
        v100 = *(__dst + 39);
        *(__dst + 38) = v98;
        *(__dst + 39) = v99;

        goto LABEL_141;
      }

      v107 = *(__dst + 39);
    }

    else if (v98)
    {
      v101 = *(__src + 39);
      *(__dst + 38) = v98;
      *(__dst + 39) = v101;
      goto LABEL_141;
    }

    *(__dst + 19) = *(__src + 19);
LABEL_141:
    v108 = *(__src + 40);
    if (*(__dst + 40))
    {
      if (v108)
      {
        v109 = *(__src + 41);
        v110 = *(__dst + 41);
        *(__dst + 40) = v108;
        *(__dst + 41) = v109;

        goto LABEL_155;
      }

      v117 = *(__dst + 41);
    }

    else if (v108)
    {
      v111 = *(__src + 41);
      *(__dst + 40) = v108;
      *(__dst + 41) = v111;
      goto LABEL_155;
    }

    *(__dst + 20) = *(__src + 20);
LABEL_155:
    v118 = *(__src + 42);
    if (*(__dst + 42))
    {
      if (v118)
      {
        v119 = *(__src + 43);
        v120 = *(__dst + 43);
        *(__dst + 42) = v118;
        *(__dst + 43) = v119;

        return __dst;
      }

      v123 = *(__dst + 43);
    }

    else if (v118)
    {
      v121 = *(__src + 43);
      *(__dst + 42) = v118;
      *(__dst + 43) = v121;
      return __dst;
    }

    *(__dst + 21) = *(__src + 21);
    return __dst;
  }

LABEL_8:
  memcpy(__dst + 176, __src + 176, 0xB0uLL);
  return __dst;
}

uint64_t sub_1DCEBC788(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 352))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCEBC7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 352) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 352) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DCEBC894()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_95();
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_13_17(v6);

  return sub_1DCEB90F4(v8, v1, v2, v4, v3);
}

void sub_1DCEBCA08(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for AnyAppResolutionFlow();
  v5 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_58_14();

  sub_1DCEB7940(a1);
}

void sub_1DCEBCAB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA9298, &qword_1DD0FF738);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);

  sub_1DCEB72D8();
}

void sub_1DCEBCB40(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for AnyHandleIntentFlow();
  v5 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_58_14();

  sub_1DCEB6C60(a1);
}

uint64_t objectdestroy_167Tm(void (*a1)(uint64_t, void))
{
  a1(255, *(v1 + 16));
  sub_1DD0DE97C();
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

void sub_1DCEBCCC8(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = *(v2 + 24);
  a2(255, *(v2 + 16));
  sub_1DD0DE97C();
  v4 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_58_14();
  sub_1DCEB8020();
}

void sub_1DCEBCD78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DCEB60A8();
}

void sub_1DCEBCDF4(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = *(v2 + 24);
  a2(255, *(v2 + 16));
  v4 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_58_14();
  sub_1DCEB8638();
}

void sub_1DCEBCE88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DCEB60A8();
}

void sub_1DCEBCF04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DCEB60A8();
}

void sub_1DCEBCF80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DCEB60A8();
}

void sub_1DCEBCFFC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DCEB60A8();
}

uint64_t objectdestroy_163Tm(void (*a1)(uint64_t, void))
{
  a1(255, *(v1 + 16));
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCEBD114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA8F08, &qword_1DD0FEF08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCEBD18C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_45_16(a1);
  result = v5(v2, *v3, *v4);
  *v1 = result;
  return result;
}

uint64_t sub_1DCEBD1C8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  result = v8(*a1, *a2, *a3, *a4, a4[1], *a5);
  *a6 = result;
  return result;
}

uint64_t sub_1DCEBD21C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_45_16(a1);
  v4 = *v3;
  v6 = *v5;
  result = v7(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1DCEBD254(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_45_16(a1);
  result = v3(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1DCEBD280()
{
  OUTLINED_FUNCTION_64_15();
  v0();
  return v2;
}

void sub_1DCEBD2B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_1DCEB3DC8(a1, a2, a3, a4, a5);
}

void sub_1DCEBD2C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  sub_1DCEB3AD0(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DCEBD31C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1;
  return v2(&v5);
}

void sub_1DCEBD354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_1DCEB37B8(a1, a2, a3, a4, a5, a6);
}

void sub_1DCEBD384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_1DCEB34FC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCEBD454(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1DCEBD734(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

uint64_t sub_1DCEBD7A0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1DCEBD7D8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_95();
  v2 = *(v0 + 32);
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;
  v7 = OUTLINED_FUNCTION_44_20();

  return sub_1DCEB0618(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCEBD8AC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_95();
  v1 = *(v0 + 40);
  v2 = (*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_121();

  return sub_1DCEB1938(v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_7Tm()
{
  OUTLINED_FUNCTION_112(*(v0 + 32));
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCEBD9EC(uint64_t a1)
{
  v2 = *(*(*(v1 + 32) - 8) + 80);
  OUTLINED_FUNCTION_103_6(a1, *(v1 + 32), *(v1 + 40));
  return v3() & 1;
}

uint64_t sub_1DCEBDA4C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_95();
  v2 = *(v0 + 32);
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;
  v7 = OUTLINED_FUNCTION_44_20();

  return sub_1DCEB0618(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCEBDB1C(uint64_t a1)
{
  v2 = *(*(*(v1 + 24) - 8) + 80);
  OUTLINED_FUNCTION_103_6(a1, *(v1 + 24), *(v1 + 32));
  return v3() & 1;
}

void OUTLINED_FUNCTION_68_16()
{

  Flow.eraseToAnyValueFlow()();
}

void OUTLINED_FUNCTION_101_3(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{

  sub_1DCEB2DFC(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DCEBDD48(uint64_t a1)
{
  v2 = sub_1DCEC7C8C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2398, &unk_1DD0E4C80);
  swift_allocObject();
  sub_1DCC174B4(a1, sub_1DCC17088, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1ED0, &qword_1DD0FF870);
  swift_allocObject();
  sub_1DD0DCF8C();
}

void sub_1DCEBDE30()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void *sub_1DCEBDEC0(uint64_t a1)
{
  v1[2] = sub_1DCBF2ABC;
  v1[3] = a1;
  v1[4] = &unk_1DD0FF880;
  v1[5] = a1;
  v1[6] = sub_1DCEC8964;
  v1[7] = a1;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2398, &unk_1DD0E4C80);
  v1[8] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_1DCEBDF48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCEC9048;

  return sub_1DCEC7F64(a1);
}

void sub_1DCEBE020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v34 = a6;
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v11 = *a1;
  v12 = *(a11 - 8);
  v13 = *(v12 + 64);
  v37 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v16 + 80);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(v17, v18, v19, v22, v21, v20, &v40);
  v24 = v40;
  v23 = v41;
  v25 = v43;
  v31 = v42;
  v26 = v44;
  v30 = v45;
  v27 = v46;
  type metadata accessor for NeedsValueFlowStrategyAsyncAdapter();
  (*(v12 + 16))(v15, a10, a11);
  v28 = sub_1DCD74B60();
  swift_getWitnessTable();
  type metadata accessor for NeedsValueFlowStrategyAdapter();
  v39 = v28;
  v40 = v24;
  v41 = v23;
  v42 = v31;
  v43 = v25;
  v44 = v26;
  v45 = v30;
  v46 = v27;
  sub_1DD0DCF8C();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2))(uint64_t)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEBE89C;
  *(v20 + 40) = v3;
  return j__OUTLINED_FUNCTION_7_57;
}

{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEBF0B4;
  *(v20 + 40) = v3;
  return j__OUTLINED_FUNCTION_7_57;
}

void sub_1DCEBE4C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v34 = a6;
  v35 = a4;
  v33 = a3;
  v32 = a2;
  v11 = *a1;
  v12 = *(a11 - 8);
  v13 = *(v12 + 64);
  v37 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v16 + 80);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(v17, v18, v19, v22, v21, v20, &v40);
  v23 = v40;
  v24 = v41;
  v26 = v42;
  v25 = v43;
  v31 = v44;
  v30 = v45;
  v27 = v46;
  type metadata accessor for NeedsConfirmationFlowStrategyAsyncAdapter();
  (*(v12 + 16))(v15, a10, a11);
  v28 = sub_1DCDE0034(v15);
  swift_getWitnessTable();
  type metadata accessor for SiriKitNeedsConfirmationFlow();
  v39 = v28;
  v40 = v23;
  v41 = v24;
  v42 = v26;
  v43 = v25;
  v44 = v31;
  v45 = v30;
  v46 = v27;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEBE8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(v10 + 24);
  v12 = v10 + ((*(*(*(v10 + 16) - 8) + 80) + 32) & ~*(*(*(v10 + 16) - 8) + 80));
  return a10(a1, a2, a3, a4);
}

void sub_1DCEBE93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v14 = v9[4];
  v15 = *(v9 + 40);
  v16 = v9[6];
  v18[2] = type metadata accessor for SiriKitNeedsConfirmationFlow();
  v17 = *(v5 + 16);
  v18[1] = v8;
  v17(v8, v18[0], a4);
  v18[18] = v10;
  v18[19] = v11;
  v18[20] = v13;
  v18[21] = v12;
  v18[22] = v14;
  v19 = v15;
  v20 = v16;
  sub_1DD0DCF8C();
}

void sub_1DCEBECC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a8;
  v12 = *a1;
  v13 = *(a11 - 8);
  v14 = *(v13 + 64);
  v31 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v17 + 80);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(v18, v19, v20, v21, v22, a4, v34);
  v30 = v34[0];
  v28 = v34[1];
  v26 = v34[2];
  v25 = v34[4];
  v24[3] = v35;
  v29 = v36;
  type metadata accessor for NeedsConfirmationWithCancellationFlowStrategyAsyncAdapter();
  (*(v13 + 16))(v16, a10, a11);
  v23 = sub_1DCDE34FC(v16);
  swift_getWitnessTable();
  type metadata accessor for SiriKitNeedsConfirmationWithCancellationFlow();
  v33 = v23;
  sub_1DD0DCF8C();
}

void sub_1DCEBF1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v18 = v10[2];
  v14 = v10[4];
  v17[3] = *(v10 + 40);
  v15 = v10[6];
  type metadata accessor for SiriKitNeedsConfirmationWithCancellationFlow();
  (*(v6 + 16))(v9, a3, a4);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE46630;
  sub_1DCB4E718(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v19[20] = type metadata accessor for RefreshableDeviceState();
  v19[21] = &protocol witness table for RefreshableDeviceState;
  v19[17] = v16;
  sub_1DD0DCF8C();
}

void sub_1DCEBF448(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a8;
  v27 = a7;
  v20 = a6;
  v21 = a4;
  v14 = *a1;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v28 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NeedsDisambiguationFlowStrategyAsyncAdapter();
  (*(v15 + 16))(v18, a10, a11);
  v19 = sub_1DCD74B60();
  v22 = *(v14 + 80);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(a2, a3, a5, v20, v27, v21, v31);
  v27 = v31[1];
  v26 = v31[2];
  v25 = v31[4];
  v24 = v32;
  v23 = v33;
  swift_getWitnessTable();
  type metadata accessor for SiriKitNeedsDisambiguationFlow();
  v30 = v19;
  sub_1DD0DCF8C();
}

void sub_1DCEBF88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v18 = v10[2];
  v14 = v10[4];
  v17[3] = *(v10 + 40);
  v15 = v10[6];
  type metadata accessor for SiriKitNeedsDisambiguationFlow();
  (*(v6 + 16))(v9, a3, a4);
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE57DF8;
  v20 = type metadata accessor for RefreshableSiriKitEventSending();
  v21 = &off_1F5873940;
  v19 = v16;
  sub_1DD0DCF8C();
}

void static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A, B>(_:)()
{
  OUTLINED_FUNCTION_57_14();
  OUTLINED_FUNCTION_136();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_35_28(v0);
  sub_1DD0DCF8C();
}

{
  OUTLINED_FUNCTION_57_14();
  OUTLINED_FUNCTION_136();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_35_28(v0);
  sub_1DD0DCF8C();
}

void sub_1DCEBFB98(uint64_t *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  sub_1DCEBFC4C(a1, a2);
}

void sub_1DCEBFC4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v3 = *(a2 + 48);
  sub_1DCB82888();
}

void sub_1DCEBFE4C(uint64_t *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  sub_1DCEBFC4C(a1, a2);
}

void sub_1DCEBFF54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a7;
  v34 = a8;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v14 = *a1;
  v27 = a1;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v32 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UnsupportedValueFlowStrategyToAsyncAdapter();
  (*(v15 + 16))(v18, a10, a11);
  v35 = sub_1DD05EE08();
  *&v36[0] = v35;
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)(v36, v19);
  v28 = v20;
  v21 = *(v14 + 80);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(a2, a3, v29, v30, v33, v31, v36);
  v22 = swift_allocObject();
  v22[2] = a11;
  v22[3] = a12;
  v23 = v32;
  v22[4] = v34;
  v22[5] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a11;
  *(v24 + 24) = a12;
  v25 = v36[1];
  *(v24 + 56) = v36[0];
  v26 = v28;
  *(v24 + 32) = sub_1DCEC0304;
  *(v24 + 40) = v26;
  *(v24 + 48) = v27;
  *(v24 + 72) = v25;
  *(v24 + 88) = v36[2];
  *(v24 + 104) = v37;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC02B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCEC904C, 0, 0);
}

void sub_1DCEC0330()
{
  OUTLINED_FUNCTION_45_17();
  v1 = *(v0 + 80);
  sub_1DCEC0F60();
}

uint64_t static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

void sub_1DCEC0434(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a7;
  v34 = a8;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v14 = *a1;
  v27 = a1;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v32 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UnsupportedValueFlowStrategyToAsyncAdapter();
  (*(v15 + 16))(v18, a10, a11);
  v35 = sub_1DD05EE08();
  *&v36[0] = v35;
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)(v36, v19);
  v28 = v20;
  v21 = *(v14 + 80);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(a2, a3, v29, v30, v33, v31, v36);
  v22 = swift_allocObject();
  v22[2] = a11;
  v22[3] = a12;
  v23 = v32;
  v22[4] = v34;
  v22[5] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a11;
  *(v24 + 24) = a12;
  v25 = v36[1];
  *(v24 + 56) = v36[0];
  v26 = v28;
  *(v24 + 32) = sub_1DCEC09B0;
  *(v24 + 40) = v26;
  *(v24 + 48) = v27;
  *(v24 + 72) = v25;
  *(v24 + 88) = v36[2];
  *(v24 + 104) = v37;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC0850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCEC08A0, 0, 0);
}

uint64_t sub_1DCEC08A0()
{
  v16 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v7;
  v14[2] = *(v1 + 32);
  v15 = *(v1 + 48);
  v8 = v5(v3, v14);
  v9 = *(v2 + 80);
  type metadata accessor for AnyUnsupportedValueFlow();
  v0[2] = v8;
  type metadata accessor for IntentPromptAnswer();
  type metadata accessor for PromptResult();
  v10 = type metadata accessor for AnyValueFlow();
  WitnessTable = swift_getWitnessTable();
  *v6 = AnyUnsupportedValueFlow.__allocating_init<A>(_:)(v0 + 2, v10, WitnessTable);
  OUTLINED_FUNCTION_29();

  return v12();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeUnsupportedValuePunchOutFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEC0E34;
  *(v20 + 40) = v3;
  return sub_1DCEC0E6C;
}

void sub_1DCEC0AC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a8;
  v30 = a7;
  v11 = a6;
  v27[2] = a6;
  v29 = a5;
  v27[3] = a4;
  v27[1] = a3;
  v28 = a2;
  v14 = *a1;
  v27[0] = a1;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v31 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UnsupportedValueFlowStrategyToAsyncAdapter();
  (*(v15 + 16))(v18, a10, a11);
  v19 = sub_1DD05EE08();
  v20 = v30;
  v30 = *(v14 + 80);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(v28, a3, v29, v11, v20, a4, &v34);
  v22 = v34;
  v21 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  LOBYTE(v11) = v39;
  v26 = v40;
  swift_getWitnessTable();
  type metadata accessor for SiriKitUnsupportedValuePunchOutFlow();
  v33 = v19;
  v34 = v22;
  v35 = v21;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v11;
  v40 = v26;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC0E6C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(a1);
}

uint64_t static RCHChildFlowFactoryHelper.makeUnsupportedValuePunchOutFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

void sub_1DCEC0F60()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v21 = v3;
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_42_2();
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  v16 = *(v10 + 40);
  v17 = v10[6];
  v20(0, v18, v19);
  (*(v5 + 16))(v0, v21, v2);
  sub_1DD0DCF8C();
}

void sub_1DCEC1268(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *a1;
  v12 = *(*(a11 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void sub_1DCEC177C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = *v6;
  v11 = v6[1];
  v10 = v6[2];
  v12 = v6[3];
  v9 = v6[4];
  v8 = *(v6 + 40);
  v13 = v6[6];
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void static RCHChildFlowFactoryHelper.makeUnsupportedFlowProducer<A, B>(unsupportedValueFlowProducer:unsetRelationshipStrategy:_:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  v1 = v0;
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_34_32(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  v16 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_33_21(v17);
  v19(v18);
  sub_1DD0DCF8C();
}

{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  v1 = v0;
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_34_32(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  v16 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_33_21(v17);
  v19(v18);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC1CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void (*)(char a1), _OWORD *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  v16[1] = a15;
  v17 = a12;
  v18 = a13;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a14;
  return a10(a2, a3, a4, a5, a6, a7, sub_1DCEC8E4C, v16);
}

uint64_t sub_1DCEC1D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v11 = *(v9 + 16);
  *(&v11 + 1) = *(v9 + 32);
  return sub_1DCEC1CB0(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), v9 + ((*(*(v11 - 8) + 80) + 72) & ~*(*(v11 - 8) + 80)), v11);
}

void sub_1DCEC1DB4(char a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = *a4;
  if (a1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v15;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Provided decision determined that this is the Unset Relationship use case. Pushing specialized flow.", v20, 2u);
      v21 = v20;
      v15 = v19;
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    v22 = *(v15 + 88);
    static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)(a13, a14, v22, a15);
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = a14;
    v25[3] = v22;
    v25[4] = a15;
    v25[5] = a11;
    v25[6] = a12;
    v26 = *(v24 + 32);
    v27 = *(v24 + 40);
    sub_1DD0DCF8C();
  }

  v33 = *a4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v28, qword_1EDE57E00);
  v29 = sub_1DD0DD8EC();
  v30 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DCAFC000, v29, v30, "Provided decision determined that this is not the Unset Relationship use case. Pushing regular unsupported flow.", v31, 2u);
    MEMORY[0x1E12A8390](v31, -1, -1);
  }

  v32 = swift_allocObject();
  v32[2] = a14;
  v32[3] = *(v33 + 88);
  v32[4] = a15;
  v32[5] = a11;
  v32[6] = a12;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC222C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a1;
  v14 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v41 = *a2;
  v42 = v15;
  v43 = v17;
  v44 = v16;
  v39 = v18;
  v40 = v16;
  v45 = v18;
  v38 = v19;
  v46 = v19;
  v37 = v20;
  v47 = v20;
  v21 = v13;
  if (a3(&v41))
  {
    v22 = a9;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v23, qword_1EDE57E00);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v21;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DCAFC000, v24, v25, "Provided decision determined that this is the Unset Relationship use case. Pushing specialized flow.", v27, 2u);
      v28 = v27;
      v21 = v26;
      v22 = a9;
      MEMORY[0x1E12A8390](v28, -1, -1);
    }

    static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)(a7, a8, *(v21 + 88), v22);
    v41 = v14;
    v42 = v15;
    v43 = v17;
    v44 = v40;
    v45 = v39;
    v46 = v38;
    v47 = v37;
    sub_1DCEC1B70(a1, &v41);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v29 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v29, qword_1EDE57E00);
  v30 = sub_1DD0DD8EC();
  v31 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DCAFC000, v30, v31, "Provided decision determined that this is not the Unset Relationship use case. Pushing regular unsupported flow.", v32, 2u);
    MEMORY[0x1E12A8390](v32, -1, -1);
  }

  v41 = v14;
  v42 = v15;
  v43 = v17;
  v44 = v40;
  v45 = v39;
  v46 = v38;
  v47 = v37;
  v41 = a5(a1, &v41);
  v33 = *(v21 + 80);
  type metadata accessor for IntentPromptAnswer();
  type metadata accessor for PromptResult();
  type metadata accessor for AnyValueFlow();
  swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()();
  v35 = v34;

  return v35;
}

uint64_t objectdestroy_71Tm()
{
  v1 = *(v0 + 2);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  (*(v3 + 8))(&v0[v4], v1);

  return swift_deallocObject();
}

void (*static RCHChildFlowFactoryHelper.makeUnsetRelationshipFlowProducer<A, B>(config:)(uint64_t a1))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1DCB17CA0(a1, v3);
  v1 = swift_allocObject();
  sub_1DCAFF9E8(v3, v1 + 16);
  return sub_1DCEC2900;
}

void sub_1DCEC2754(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *a1;
  v11 = *(*a1 + 80);
  v12 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter();
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDE46630;
  sub_1DCB4E718(&v20);
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  v21 = type metadata accessor for RefreshableDeviceState();
  v22 = &protocol witness table for RefreshableDeviceState;
  *&v20 = v13;
  sub_1DCB17CA0(a10, v19);
  *&v20 = sub_1DCC99EC4(&v20, v19);
  v14 = *(v10 + 88);
  WitnessTable = swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)(&v20, v12, v14, WitnessTable);
  v18 = *(v16 + 32);
  v17 = *(v16 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCEC2A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a8;
  v31 = a7;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v12 = *(a10 - 8);
  v13 = *(v12 + 64);
  v25 = a11;
  MEMORY[0x1EEE9AC00](a1, a9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = a10;
  *(v19 + 24) = v20;
  (*(v12 + 32))(v19 + v15, v14, a10);
  *(v19 + v16) = a2;
  v21 = v27;
  *(v19 + v17) = v26;
  *(v19 + v18) = v21;
  v22 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC2C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v20 = v16;
    type metadata accessor for ConfirmIntentFlowStrategyAsyncAdapter();
    (*(v13 + 16))(v18, a2, a8);
    v25 = sub_1DCCA697C();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    IntentResolutionRecord.init(app:intent:intentResponse:)(a3, a4, a5, &v23);
    v21 = v23;
    v22 = v24;
    sub_1DD0DCF8C();
  }

  return v16(0);
}

uint64_t sub_1DCEC3048(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void *))
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v9[0] = *a2;
  v9[1] = v4;
  v9[2] = v6;
  if (a3(v9))
  {
    v9[5] = v5;
    v9[6] = v4;
    v9[7] = v6;
    if (qword_1EDE4F6A8 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE57DF8;
    v9[3] = type metadata accessor for RefreshableSiriKitEventSending();
    v9[4] = &off_1F5873940;
    v9[0] = v7;
    sub_1DD0DCF8C();
  }

  return 0;
}

uint64_t sub_1DCEC3220(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 24);
  v4 = *(*(*(v2 + 16) - 8) + 80);
  v5 = *(v2 + 40);
  return sub_1DCEC3048(a1, a2, *(v2 + 32));
}

void static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)()
{
  OUTLINED_FUNCTION_23_25();
  v5 = v4;
  OUTLINED_FUNCTION_136();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v0;
  v6[4] = v3;
  v6[5] = v2;
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)(v5, sub_1DCEC32F4, v6, v1, v0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC32F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = v6();
  return a4(v8 & 1);
}

void static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)()
{
  OUTLINED_FUNCTION_79_12();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_49_19();
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)())(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_79_12();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = OUTLINED_FUNCTION_49_19();
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)(v3);

  return OUTLINED_FUNCTION_32_25();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeConfirmIntentWithAutoCompletionFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEC3880;
  *(v20 + 40) = v3;
  return sub_1DCEC9040;
}

void sub_1DCEC350C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = *(*(a8 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeConfirmIntentWithWaitToContinueFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEC3C3C;
  *(v20 + 40) = v3;
  return sub_1DCEC9040;
}

void sub_1DCEC3980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a4;
  v24 = a7;
  v26 = a6;
  v27 = a5;
  v9 = *a1;
  v10 = *(a8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 88);
  v25 = *(v14 + 80);
  IntentResolutionRecord.init(app:intent:intentResponse:)(v16, v17, v18, v28);
  v20 = v28[0];
  v19 = v28[1];
  v21 = v28[2];
  type metadata accessor for ConfirmIntentFlowStrategyAsyncAdapter();
  swift_getWitnessTable();
  type metadata accessor for SiriKitWaitToContinueFlow();
  (*(v10 + 16))(v13, v24, a8);
  v22 = sub_1DCCA697C();
  v28[7] = v21;
  v28[8] = v22;
  v28[5] = v20;
  v28[6] = v19;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC3C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 24);
  OUTLINED_FUNCTION_58_15(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16));
  v10 = *(v9 + 80);
  return v12(v11);
}

uint64_t static RCHChildFlowFactoryHelper.makeConfirmIntentWithWaitToContinueFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

void sub_1DCEC3D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  type metadata accessor for SiriKitWaitToContinueFlow();
  (*(v6 + 16))(v9, a3, a4);
  v14[11] = v11;
  v14[12] = v12;
  v14[13] = v13;
  sub_1DD0DCF8C();
}

void sub_1DCEC3F58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*(a8 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE46630;
  sub_1DCB4E718(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v11[3] = type metadata accessor for RefreshableDeviceState();
  v11[4] = &protocol witness table for RefreshableDeviceState;
  v11[0] = v10;
  sub_1DD0DCF8C();
}

void sub_1DCEC4354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDE46630;
  sub_1DCB4E718(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v11[3] = type metadata accessor for RefreshableDeviceState();
  v11[4] = &protocol witness table for RefreshableDeviceState;
  v11[0] = v8;
  sub_1DD0DCF8C();
}

void sub_1DCEC4870(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(a2 + 2);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)(a3, a6);
  v15 = *a2;
  v16 = v11;
  v12 = sub_1DCEC46F0(a1, &v15);
  v13 = *(v10 + 80);
  v14 = *(v10 + 88);
  type metadata accessor for HandleIntentThenRespondFlow();
  *&v15 = sub_1DCD7EE2C(v12, a4, a5);
  sub_1DD0DCF8C();
}

void sub_1DCEC49A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = (v0 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1DCEC4870(v7, v8, v0 + v4, *v6, v6[1], v9);
}

void sub_1DCEC4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a3;
  v37 = a4;
  v38 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = &v35 - v18;
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ContinueInAppDialogFlowStrategyAsyncAdapter();
  (*(v20 + 16))(v24, a7, a8);
  v39 = sub_1DCCC937C(v24);
  v40 = v39;
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)(&v40, v25);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  *(v28 + 24) = a6;
  v29 = swift_allocObject();
  v29[2] = a8;
  v29[3] = a9;
  v30 = v36;
  v31 = v37;
  v29[4] = a2;
  v29[5] = v30;
  v29[6] = v31;
  v29[7] = sub_1DCEC4F28;
  v32 = v38;
  v29[8] = v27;
  v29[9] = v32;
  v33 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = sub_1DCEC905C;
  v34[5] = v28;
  v34[6] = &unk_1DD0FF8E0;
  v34[7] = v29;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC4DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *a7;
  return MEMORY[0x1EEE6DFA0](sub_1DCEC4E14, 0, 0);
}

void sub_1DCEC4E14()
{
  v9 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v7 = v0[2];
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  IntentResolutionRecord.init(app:intent:intentResponse:)(v0[3], v0[4], v0[5], &v8);
  sub_1DD0DCF8C();
}

uint64_t static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

void sub_1DCEC5010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a3;
  v37 = a4;
  v38 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = &v35 - v18;
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ContinueInAppAutoPunchOutFlowStrategyAsyncAdapter();
  (*(v20 + 16))(v24, a7, a8);
  v39 = sub_1DCCCF4B0(v24);
  v40 = v39;
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)(&v40, v25);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  *(v28 + 24) = a6;
  v29 = swift_allocObject();
  v29[2] = a8;
  v29[3] = a9;
  v30 = v36;
  v31 = v37;
  v29[4] = a2;
  v29[5] = v30;
  v29[6] = v31;
  v29[7] = sub_1DCEC5620;
  v32 = v38;
  v29[8] = v27;
  v29[9] = v32;
  v33 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = sub_1DCEC905C;
  v34[5] = v28;
  v34[6] = &unk_1DD0FF8C8;
  v34[7] = v29;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC53B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *a7;
  return MEMORY[0x1EEE6DFA0](sub_1DCEC9050, 0, 0);
}

void sub_1DCEC540C()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v18(0, v16, v17);
  (*(v5 + 16))(v11, v3, v1);
  if (qword_1EDE4F6A8 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = qword_1EDE57DF8;
  v20[22] = type metadata accessor for RefreshableSiriKitEventSending();
  v20[23] = &off_1F5873940;
  v20[19] = v19;
  sub_1DD0DCF8C();
}

uint64_t static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithHandoffToCompanionProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

void sub_1DCEC5708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a3;
  v37 = a4;
  v38 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = &v35 - v18;
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ContinueInAppHandoffToCompanionFlowStrategyAsyncAdapter();
  (*(v20 + 16))(v24, a7, a8);
  v39 = sub_1DCCCF4B0(v24);
  v40 = v39;
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithHandoffToCompanionProducer<A>(strategy:)(&v40, v25);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  *(v28 + 24) = a6;
  v29 = swift_allocObject();
  v29[2] = a8;
  v29[3] = a9;
  v30 = v36;
  v31 = v37;
  v29[4] = a2;
  v29[5] = v30;
  v29[6] = v31;
  v29[7] = sub_1DCEC5AAC;
  v32 = v38;
  v29[8] = v27;
  v29[9] = v32;
  v33 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = sub_1DCCC3628;
  v34[5] = v28;
  v34[6] = &unk_1DD0FF8B0;
  v34[7] = v29;
  sub_1DD0DCF8C();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithHandoffDialogProducer<A>(strategy:)(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEC5EF0;
  *(v20 + 40) = v3;
  return sub_1DCEC5F08;
}