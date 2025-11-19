uint64_t sub_1DCC118F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

uint64_t AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 16);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1DCC11AA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)();
}

uint64_t AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCC11BC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)();
}

uint64_t AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCC33894();
}

uint64_t sub_1DCC11CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)();
}

uint64_t AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t AppDisambiguationStrategyAsync.parseDisambiguationResponseWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC11E14()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[5];
  v2 = (*(v0[4] + 8))(v0[2], v0[3]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1DCC11E84()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_20();
  return v4(v3);
}

uint64_t sub_1DCC11EDC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC11EF4()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC11FC0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v6);
  (*(v13 + 16))(a3, sub_1DCC11344, v15, v12, v13);
}

uint64_t sub_1DCC12144(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1215C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC12228(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v6);
  (*(v13 + 24))(a3, sub_1DCC11344, v15, v12, v13);
}

uint64_t sub_1DCC123AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC123C4()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC12490(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v6);
  (*(v13 + 32))(a3, sub_1DCC11344, v15, v12, v13);
}

uint64_t sub_1DCC12614(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1262C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC126F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v6);
  (*(v13 + 40))(a3, sub_1DCC11344, v15, v12, v13);
}

uint64_t sub_1DCC1287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC12894()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[1].i64[1];
  v2 = swift_task_alloc();
  v0[3].i64[0] = v2;
  v2[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[3].i64[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCC12984(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  v13 = a2[5];
  v14 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v13);
  (*(v8 + 16))(v12, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v12, v7);
  (*(v14 + 48))(a3, v19, sub_1DCC111BC, v16, v13, v14);
}

uint64_t sub_1DCC12B3C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC11EDC(a1, a2);
}

uint64_t sub_1DCC12BE8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC12144(a1, a2);
}

uint64_t sub_1DCC12C94(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC123AC(a1, a2);
}

uint64_t sub_1DCC12D40(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC12614(a1, a2);
}

uint64_t sub_1DCC12DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCC1287C(a1, a2, a3);
}

uint64_t sub_1DCC12EA0()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD113F50);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t static AppDisambiguationResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        return 0;
      }

      v9 = OUTLINED_FUNCTION_20();

      return sub_1DCC0D128(v9, v10);
    case 2:
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_12;
    case 3:
      if (v5 != 3)
      {
        return 0;
      }

      OUTLINED_FUNCTION_20();

      return sub_1DCD0632C();
    case 4:
      if (v2)
      {
        if (v5 != 4 || v4 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 4 || v4 != 0)
      {
        return 0;
      }

      return 1;
    default:
      if (*(a2 + 24))
      {
        return 0;
      }

LABEL_12:
      sub_1DD0DD1FC();
      sub_1DCC15D8C(v4, v5);
      sub_1DCC15D8C(v2, v3);
      OUTLINED_FUNCTION_20();
      v7 = sub_1DD0DD1EC();
      sub_1DCC15DCC(v4, v5);
      sub_1DCC15DCC(v2, v3);
      return v7 & 1;
  }
}

uint64_t sub_1DCC13094(void *a1, char a2, void *a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      return sub_1DCC0D128(a1, a3);
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      goto LABEL_11;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return sub_1DCD0632C();
    case 4:
      if (a1)
      {
        return a4 == 4 && a3 == 1;
      }

      return a4 == 4 && !a3;
    default:
      if (a4)
      {
        return 0;
      }

LABEL_11:
      sub_1DD0DD1FC();
      sub_1DCC15D8C(a3, a4);
      sub_1DCC15D8C(a1, a2);
      v9 = sub_1DD0DD1EC();
      sub_1DCC15DCC(a3, a4);
      sub_1DCC15DCC(a1, a2);
      return v9 & 1;
  }
}

void sub_1DCC1320C(uint64_t a1, char a2)
{
  type metadata accessor for AppDisambiguationResponse();
  OUTLINED_FUNCTION_33_0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

unint64_t static AppDisambiguationResponse.disambiguate(apps:)(uint64_t a1)
{
  if (sub_1DCB08B14(a1))
  {
    if (sub_1DCB08B14(a1) != 1)
    {
      type metadata accessor for AppDisambiguationResponse();
      OUTLINED_FUNCTION_33_0();
      v19 = swift_allocObject();
      *(OUTLINED_FUNCTION_50_3(v19) + 24) = 1;

      return v1;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "App disambiguation given single item, treating as confirmation)", v6, 2u);
      OUTLINED_FUNCTION_80();
    }

    v1 = a1 & 0xC000000000000001;
    sub_1DCB35460(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) == 0)
    {
      v7 = *(a1 + 32);
      sub_1DD0DCF8C();
    }

    MEMORY[0x1E12A72C0](0, a1);
    type metadata accessor for AppDisambiguationResponse();
    OUTLINED_FUNCTION_33_0();
    v8 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_50_3(v8);
    v18 = 2;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "App disambiguation given empty list)", v12, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v1 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000023, 0x80000001DD113D40);
    OUTLINED_FUNCTION_25_5();
    sub_1DCC16724(v13, v14);
    OUTLINED_FUNCTION_50_4();
    *v15 = v1;
    type metadata accessor for AppDisambiguationResponse();
    OUTLINED_FUNCTION_33_0();
    v16 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_50_3(v16);
    v18 = 3;
  }

  *(v17 + 24) = v18;
  return v1;
}

uint64_t sub_1DCC134E0(uint64_t a1)
{
  type metadata accessor for AppDisambiguationResponse();
  OUTLINED_FUNCTION_33_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 4;
  return result;
}

uint64_t static AppDisambiguationResponse.error(_:)(void *a1)
{
  type metadata accessor for AppDisambiguationResponse();
  OUTLINED_FUNCTION_33_0();
  v3 = swift_allocObject();
  *(OUTLINED_FUNCTION_50_3(v3) + 24) = 3;
  v4 = a1;
  return v1;
}

uint64_t sub_1DCC1358C(id a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1DD0DEC1C();

      strcpy(v10, ".disambiguate(");
      HIBYTE(v10[1]) = -18;
      v9 = sub_1DD0DD1FC();
      v6 = MEMORY[0x1E12A6960](a1, v9);
      goto LABEL_11;
    case 2:
      v3 = 0x6D7269666E6F632ELL;
      v4 = 0xE900000000000028;
      goto LABEL_8;
    case 3:
      strcpy(v10, ".error(");
      v10[1] = 0xE700000000000000;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v8 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v8);

      return v10[0];
    case 4:
      if (a1)
      {
        return 0x65726F6E67692ELL;
      }

      else
      {
        return 0x6C65636E61632ELL;
      }

    default:
      v3 = 0x287463656C65732ELL;
      v4 = 0xE800000000000000;
LABEL_8:
      v10[0] = v3;
      v10[1] = v4;
      sub_1DD0DD1FC();
      sub_1DCC16724(&qword_1EDE46330, MEMORY[0x1E69CE208]);
      v6 = sub_1DD0DF03C();
LABEL_11:
      MEMORY[0x1E12A6780](v6);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      return v10[0];
  }
}

uint64_t AppDisambiguationResponse.__deallocating_deinit()
{
  sub_1DCC15DCC(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_33_0();

  return swift_deallocClassInstance();
}

void sub_1DCC13834(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Input(0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_42_2();
  v9 = v3[12];
  (*(v3[11] + 8))(a1, v3[10]);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC13BA4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC13BB8()
{
  v1 = *(*(v0 + 24) + *(**(v0 + 24) + 120));
  if (v1)
  {
    if (!sub_1DCC0CCE4())
    {
      v12 = *(v0 + 16);
      *v12 = v1;
      *(v12 + 8) = 0;
      OUTLINED_FUNCTION_29();
      sub_1DD0DCF8C();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DCAFC000, v3, v4, "AppConfirmationStrategyAdapter.parseDisambiguationResponse called while its disambiguationAction value is set to nil", v5, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v6 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000074, 0x80000001DD113FD0);
    OUTLINED_FUNCTION_25_5();
    sub_1DCC16724(v7, v8);
    OUTLINED_FUNCTION_50_4();
    *v9 = v6;
  }

  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1DCC13DA8()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v3 = sub_1DD0DD2FC();
  v1[11] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[12] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_8(v8);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC13E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = v10[9];
  v11 = v10[10];
  v13 = sub_1DCC142BC();
  OUTLINED_FUNCTION_31_5(v13);
  v15 = *(v14 + 96);
  v17 = v11 + 80;
  v16 = *(v11 + 80);
  v18 = *(*(v17 + 8) + 16);
  OUTLINED_FUNCTION_8();
  v34 = v19 + *v19;
  v21 = *(v20 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v10[15] = v22;
  *v22 = v23;
  v22[1] = sub_1DCC13F9C;
  v24 = v10[8];
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1DCC13F9C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
    v10 = *(v3 + 104);
    v9 = *(v3 + 112);

    OUTLINED_FUNCTION_32_3();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCC140C8()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_14_14();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CE250]);
  *(v0 + 58) = 47;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_11(v3);

  return sub_1DCC152F0();
}

uint64_t sub_1DCC14174()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCC142BC()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *v0;
  sub_1DCF41428(v0[1], *v0);
  sub_1DCF41428(v2, v3);
  if ((v3 & 0xC000000000000001) == 0 || v1 == v2)
  {
  }

  else
  {
    if (v1 >= v2)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    sub_1DD0DD1FC();

    v5 = v1;
    do
    {
      v6 = v5 + 1;
      sub_1DD0DEC4C();
      v5 = v6;
    }

    while (v2 != v6);
  }

  if (v3 >> 62)
  {
LABEL_16:
    sub_1DCB0E9D8(v0, &qword_1ECCA1D90, &unk_1DD0E4C70);
    v0 = sub_1DD0DEE4C();
    v3 = v9;
    v1 = v10;
    v2 = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v0 = (v3 & 0xFFFFFFFFFFFFFF8);
  v3 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v2 = (2 * v2) | 1;
  if ((v2 & 1) == 0)
  {
LABEL_14:
    sub_1DCC16784(v0, v3, v1, v2, MEMORY[0x1E69CE208]);
    v8 = v7;
LABEL_23:
    swift_unknownObjectRelease();
    return v8;
  }

LABEL_17:
  sub_1DD0DF0DC();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v2 >> 1, v1))
  {
    goto LABEL_27;
  }

  if (v13 != (v2 >> 1) - v1)
  {
LABEL_28:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  return v8;
}

uint64_t sub_1DCC14494()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v3 = sub_1DD0DD2FC();
  v1[11] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[12] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_8(v8);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC14568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = v10[9];
  v11 = v10[10];
  v13 = sub_1DCC142BC();
  OUTLINED_FUNCTION_31_5(v13);
  v15 = *(v14 + 96);
  v17 = v11 + 80;
  v16 = *(v11 + 80);
  v18 = *(*(v17 + 8) + 24);
  OUTLINED_FUNCTION_8();
  v34 = v19 + *v19;
  v21 = *(v20 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v10[15] = v22;
  *v22 = v23;
  v22[1] = sub_1DCC14688;
  v24 = v10[8];
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1DCC14688()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
    v10 = *(v3 + 104);
    v9 = *(v3 + 112);

    OUTLINED_FUNCTION_32_3();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCC147B4()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_14_14();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CE250]);
  *(v0 + 58) = 9;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_11(v3);

  return sub_1DCC152F0();
}

uint64_t sub_1DCC14860()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v3 = sub_1DD0DD2FC();
  v1[11] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[12] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_8(v8);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC14934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = v10[9];
  v11 = v10[10];
  v13 = sub_1DCC142BC();
  OUTLINED_FUNCTION_31_5(v13);
  v15 = *(v14 + 96);
  v17 = v11 + 80;
  v16 = *(v11 + 80);
  v18 = *(*(v17 + 8) + 32);
  OUTLINED_FUNCTION_8();
  v34 = v19 + *v19;
  v21 = *(v20 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v10[15] = v22;
  *v22 = v23;
  v22[1] = sub_1DCC14A54;
  v24 = v10[8];
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1DCC14A54()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
    v10 = *(v3 + 104);
    v9 = *(v3 + 112);

    OUTLINED_FUNCTION_32_3();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCC14B80()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_14_14();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CE250]);
  *(v0 + 58) = 10;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_11(v3);

  return sub_1DCC152F0();
}

uint64_t sub_1DCC14C2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC14C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = v10[3];
  v11 = v10[4];
  OUTLINED_FUNCTION_13();
  v14 = *(v13 + 96);
  v16 = *(v12 + *(v15 + 104));
  v18 = *(v17 + 80);
  v19 = *(*(v17 + 88) + 40);
  OUTLINED_FUNCTION_8();
  v35 = v20 + *v20;
  v22 = *(v21 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v10[5] = v23;
  *v23 = v24;
  v23[1] = sub_1DCBEA100;
  v25 = v10[2];
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1DCC14DB0()
{
  OUTLINED_FUNCTION_42();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v1[9] = *v0;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v1[10] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC14E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = v10[8];
  v11 = v10[9];
  OUTLINED_FUNCTION_13();
  v14 = *(v13 + 96);
  v10[12] = *(v12 + *(v15 + 104));
  v17 = *(v16 + 80);
  v18 = *(*(v16 + 88) + 48);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v10[13] = v22;
  *v22 = v23;
  v22[1] = sub_1DCC14F9C;
  v24 = v10[6];
  v25 = v10[7];
  OUTLINED_FUNCTION_47();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1DCC14F9C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 88);

    OUTLINED_FUNCTION_32_3();

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1DCC150C0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = (v0[8] + *(*v0[8] + 112));
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *v2 = 6;
  *(v2 + 8) = 0x54746E6572727543;
  *(v2 + 16) = 0xEB000000006B7361;
  if (sub_1DCB08B14(v1))
  {
    v5 = v0[12];
    v6 = v5 & 0xC000000000000001;
    sub_1DCB35460(0, (v5 & 0xC000000000000001) == 0, v5);
    v7 = v0[12];
    if (!v6)
    {
      v8 = *(v7 + 32);
      sub_1DD0DCF8C();
    }

    v9 = MEMORY[0x1E12A72C0](0, v7);
  }

  else
  {
    v9 = 0;
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[7];
  type metadata accessor for SiriKitEvent(0);
  *(v10 + 24) = v9;
  bzero((v10 + 32), 0x88uLL);
  swift_getErrorValue();
  v13 = v0[2];
  v14 = v0[4];
  *(v10 + 168) = sub_1DCEE0FD4(v0[3]);
  *(v10 + 176) = v15;
  *(v10 + 184) = 8;
  swift_storeEnumTagMultiPayload();
  v0[14] = SiriKitEvent.__allocating_init(_:builder:)(v10, 0);
  v16 = *(v4 + 16);
  OUTLINED_FUNCTION_24_0();
  v23 = (v17 + *v17);
  v19 = *(v18 + 4);
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_35_7(v20);

  return v23(v21);
}

uint64_t sub_1DCC152F0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 56) = v5;
  v6 = type metadata accessor for SiriKitEventPayload(0);
  *(v1 + 80) = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_38();
  *(v1 + 128) = *v3;
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCC153BC()
{
  v43 = v0;
  v1 = *(v0 + 64);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((sub_1DCB651D0(v2) & 1) == 0)
  {
LABEL_8:
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 88);

    OUTLINED_FUNCTION_29();

    return v24();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v7 = 136315394;
    v42 = v6;
    v8 = ActivityType.rawValue.getter();
    v10 = sub_1DCB10E9C(v8, v9, &v41);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DCB10E9C(0x54746E6572727543, 0xEB000000006B7361, &v41);
    _os_log_impl(&dword_1DCAFC000, v4, v5, "AppResolutionFlow logging Task step: %s for Task type: %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 64);
  v13 = *(v0 + 56);
  v14 = *(**(v0 + 72) + 112);
  v15 = *(v0 + 128);
  v16 = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_2(v16);
  (*(v17 + 16))(v11, v13, v16);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
  v19 = v1[3];
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  (*(v18 + 8))(v19, v18);
  if (sub_1DCE0669C(v15, 10))
  {
    v20 = *(v0 + 104);
    sub_1DCB0E9D8(v0 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
    sub_1DCB0E9D8(v20, &qword_1ECCA2278, &qword_1DD0E4830);
    goto LABEL_8;
  }

  v26 = *(v0 + 96);
  v27 = *(v0 + 104);
  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  v30 = (*(v0 + 72) + v14);
  v31 = *(v0 + 128);
  if (sub_1DCE0669C(v31, 10))
  {
    v31 = 25;
  }

  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
  *v26 = v31;
  *(v26 + 8) = 0x54746E6572727543;
  *(v26 + 16) = 0xEB000000006B7361;
  *(v26 + 24) = 29;
  sub_1DCB09910(v0 + 16, v26 + 32, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v26 + 72) = 0;
  sub_1DCB09910(v27, v26 + v32, &qword_1ECCA2278, &qword_1DD0E4830);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SiriKitEvent(0);
  sub_1DCC110F8(v26, v28, type metadata accessor for SiriKitEventPayload);
  *(v0 + 112) = SiriKitEvent.__allocating_init(_:builder:)(v28, 0);
  sub_1DCC11158(v26, type metadata accessor for SiriKitEventPayload);
  v33 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v34 = *(v33 + 16);
  OUTLINED_FUNCTION_8();
  v40 = (v35 + *v35);
  v37 = *(v36 + 4);
  v38 = swift_task_alloc();
  *(v0 + 120) = v38;
  *v38 = v0;
  v39 = OUTLINED_FUNCTION_35_7(v38);

  return v40(v39);
}

uint64_t sub_1DCC15880()
{
  OUTLINED_FUNCTION_13();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 96));
  OUTLINED_FUNCTION_66();
  v4 = *(v0 + *(v3 + 104));

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v5 + 112)));
  OUTLINED_FUNCTION_66();
  v7 = *(v0 + *(v6 + 120));

  return v0;
}

uint64_t sub_1DCC15930()
{
  sub_1DCC15880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC159A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCC13BA4(a1);
}

uint64_t sub_1DCC15A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC13DA8();
}

uint64_t sub_1DCC15AE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC14494();
}

uint64_t sub_1DCC15B8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC14860();
}

uint64_t sub_1DCC15C34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCC14C2C(a1);
}

uint64_t sub_1DCC15CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC14DB0();
}

id sub_1DCC15D8C(id result, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:
      sub_1DD0DCF8C();
    case 1:

      break;
    case 3:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCC15DCC(void *a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:

      break;
    case 1:

      break;
    case 3:

      break;
    default:
      return;
  }
}

_BYTE *storeEnumTagSinglePayload for AppDisambiguationFlowUtil(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 16);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 24);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 32);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 48);
  OUTLINED_FUNCTION_24_0();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AD3C;

  return v18(v9, v7, v5, v3, v1);
}

uint64_t sub_1DCC165BC(uint64_t a1)
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

uint64_t assignWithCopy for AppDisambiguationResponse.AppDisambiguationAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCC15D8C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCC15DCC(v5, v6);
  return a1;
}

uint64_t assignWithTake for AppDisambiguationResponse.AppDisambiguationAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCC15DCC(v4, v5);
  return a1;
}

uint64_t sub_1DCC16724(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DCC16784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = (2 * ((v10 - 32) / 8)) | 1;
    }

    if (v5 != a3)
    {
      a5(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void static AppFlowFactory.makeFixedAppResolutionFlow<A>(app:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_13();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_1_15(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2398, &unk_1DD0E4C80);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = a1;
  *(v3 + 64) = sub_1DCC17088;
  *(v3 + 72) = v2;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  OUTLINED_FUNCTION_4_11();
  type metadata accessor for AnyAppResolutionFlow();
  sub_1DD0DCF8C();
}

void static AppFlowFactory.makeOnDeviceAppResolutionFlow<A, B>(strategy:input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Input(0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_2_22();
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow();
  v16 = type metadata accessor for AppResolutionOnDeviceFlowStrategyAsyncAdapter();
  (*(v10 + 16))(v15, a1, a3);
  v17 = sub_1DCC23540();
  v18[14] = v16;
  v18[15] = &off_1F5854208;
  v18[11] = v17;
  sub_1DCB82888();
}

void static AppFlowFactory.makeOnDeviceAppResolutionFlow<A, B>(strategy:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Input(0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow();
  v13[3] = a3;
  v13[4] = a5;
  __swift_allocate_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_112(a3);
  (*(v12 + 16))();
  sub_1DCB82888();
}

void static AppFlowFactory.makeOnDeviceAppResolutionFlow<A, B, C>(appResolutionStrategy:authenticationStrategy:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for Input(0);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow();
  v15[3] = a4;
  v15[4] = a7;
  __swift_allocate_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_112(a4);
  (*(v14 + 16))();
  sub_1DCB82888();
}

void static AppFlowFactory.makeOnDeviceAppResolutionFlow<A>(resolving:appResolutionStrategy:unlockDeviceStrategy:protectedAppCheckStrategy:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Input(0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow();
  sub_1DCB17D04(a2, v8);
  sub_1DCB82888();
}

void sub_1DCC17010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_project_boxed_opaque_existential_1(a2, v9);

  sub_1DCC175E4(a1, v11, a3, a4, a5, v9, v10);
}

void sub_1DCC17098(uint64_t a1@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCC171B0()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "DefaultUnlockDeviceFlowStrategy rendering default unlock prompt", v4, 2u);
    MEMORY[0x1E12A8390](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1DCC17300;
  v6 = *(v0 + 16);

  return sub_1DCCDB478();
}

uint64_t sub_1DCC17300()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DCC17418(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCC17190(a1);
}

uint64_t sub_1DCC174B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  return v3;
}

uint64_t sub_1DCC174D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppFlowFactory(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCC175E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[3] = a6;
  v12[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a6);
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

uint64_t sub_1DCC1795C(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 16);
  if (v5 && (v6 = [v5 appNameMap]) != 0)
  {
    v7 = v6;
    v8 = sub_1DD0DDE6C();

    v1 = a1;
    v9 = sub_1DD0DB06C();
    sub_1DCB6B180(v9, v10, v8);
    OUTLINED_FUNCTION_0_13();

    if (!v2)
    {
      sub_1DD0DB06C();
      v12 = v11;
      sub_1DCB1C4D8();
      v1 = sub_1DD0DEA3C();
      v14 = v13;

      sub_1DCB6B180(v1, v14, v8);
      OUTLINED_FUNCTION_0_13();

      if (!v12)
      {
        v16 = sub_1DD0DB08C();
        if (v17)
        {
          v18 = v16;
          v19 = v17;

          sub_1DCB6B180(v18, v19, v8);
          OUTLINED_FUNCTION_0_13();
          swift_bridgeObjectRelease_n();
        }

        v1 = v3;
        sub_1DCB2D10C();
        OUTLINED_FUNCTION_0_13();
      }
    }
  }

  else
  {
    sub_1DCB2D10C();
    OUTLINED_FUNCTION_0_13();
  }

  return v1;
}

uint64_t sub_1DCC17B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_16(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1DCB21038(v4, v5), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for Input(0);
    OUTLINED_FUNCTION_4_12(v13);
    sub_1DCC174D4(v12 + *(v14 + 72) * v11, v3);
    v15 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    type metadata accessor for Input(0);
    v15 = OUTLINED_FUNCTION_2_1();
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1DCC17BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_1_16(a1, a2, a3);
  if (v9 && (v10 = v8, v11 = sub_1DCB21038(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    OUTLINED_FUNCTION_4_12(v15);
    (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v10);
    v17 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    a4(0);
    v17 = OUTLINED_FUNCTION_2_1();
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

double sub_1DCC17C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_16(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1DCB21038(v4, v5), (v10 & 1) != 0))
  {
    sub_1DCB17CA0(*(v8 + 56) + 40 * v9, v3);
  }

  else
  {
    *(v3 + 32) = 0;
    result = 0.0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  return result;
}

void *sub_1DCC17CF4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB5B97C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1DCC17D3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1DCC5F934(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_5_14(v2);
  }

  else
  {
    return 0;
  }
}

double sub_1DCC17D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_16(a1, a2, a3);
  if (v8 && (v9 = v6, v14 = v7, v10 = sub_1DCB21038(v4, v5), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 48 * v10;

    v14(v12, v3);
  }

  else
  {
    result = 0.0;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  return result;
}

uint64_t sub_1DCC17E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB21038(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_5_14(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC17E88(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1DCC5F9DC(a1 & 1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

id sub_1DCC18008(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  return sub_1DCB89BB0(a1, a2, 0);
}

uint64_t sub_1DCC181F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DCC18008(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() appInfoWithApplicationRecord_];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      sub_1DCC18364();
      swift_willThrowTypedImpl();

      return a1;
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Error initializing INAppInfo, missing app record", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

unint64_t sub_1DCC18364()
{
  result = qword_1ECCA23A8;
  if (!qword_1ECCA23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA23A8);
  }

  return result;
}

uint64_t sub_1DCC183C8(char a1)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a1 & 1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC1841C()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1DCC184B0;

  return sub_1DCC18804();
}

uint64_t sub_1DCC184B0()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  v4[5] = v0;
  v4[6] = v10;

  if (!v1)
  {
    v13 = swift_task_alloc();
    v4[7] = v13;
    *v13 = v8;
    v13[1] = sub_1DCC18628;

    sub_1DCC19E5C();
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1DCC18628()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 64) = v0;

  if (v0)
  {
    v10 = sub_1DCC187A4;
  }

  else
  {
    v10 = sub_1DCC1872C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DCC1872C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 40) = 3;
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC187A4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC18804()
{
  OUTLINED_FUNCTION_42();
  v5 = *MEMORY[0x1E69E9840];
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DCC18890, 0, 0);
}

uint64_t sub_1DCC18890()
{
  v35 = v0;
  v34[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  type metadata accessor for ParameterWrapper();
  inited = swift_initStackObject();
  *(v0 + 64) = inited;
  *(inited + 16) = v1;

  v3 = sub_1DCD14AE4();
  v5 = v4;
  v6 = sub_1DCD14AE4();
  v11 = v10;
  v32 = v6;
  v12 = sub_1DCC6A1F8(0xD000000000000013, 0x80000001DD1142B0);
  if (!v12)
  {
    v12 = sub_1DD0DDE9C();
  }

  v13 = v12;
  *(v0 + 72) = v12;
  v14 = sub_1DCC6A084();
  *(v0 + 112) = v14;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);

  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();

  v33 = v13;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_1DCB10E9C(v3, v5, v34);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1DCB10E9C(v32, v11, v34);
    *(v18 + 22) = 2080;
    v19 = sub_1DD0DDE7C();
    v21 = sub_1DCB10E9C(v19, v20, v34);

    *(v18 + 24) = v21;
    *(v18 + 32) = 1024;
    *(v18 + 34) = (v14 == 2) | v14 & 1;
    _os_log_impl(&dword_1DCAFC000, v16, v17, "Handling AppIntentBehaviorResponse with bundleId: %s, appIntentId: %s, appIntentParameters: %s, openWhenRun: %{BOOL}d", v18, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v23 = sub_1DD0DDF8C();

  v24 = sub_1DD0DDF8C();

  *(v0 + 40) = 0;
  v25 = [v22 actionForBundleIdentifier:v23 andActionIdentifier:v24 error:v0 + 40];
  *(v0 + 80) = v25;

  v26 = *(v0 + 40);
  if (v25)
  {
    v27 = v26;
    v28 = swift_task_alloc();
    *(v0 + 88) = v28;
    *v28 = v0;
    v28[1] = sub_1DCC18D5C;
    v29 = *(v0 + 56);
    v30 = *MEMORY[0x1E69E9840];

    return sub_1DCC190D0(v33, v25);
  }

  else
  {
    v31 = v26;

    sub_1DD0DAE0C();

    swift_willThrow();

    OUTLINED_FUNCTION_29();
    v8 = *MEMORY[0x1E69E9840];

    return v7();
  }
}

uint64_t sub_1DCC18D5C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v7 = *(v4 + 88);
  *v6 = *v2;
  *(v5 + 96) = v1;

  v8 = *(v4 + 72);

  if (v1)
  {
    v9 = sub_1DCC1903C;
  }

  else
  {
    *(v5 + 104) = a1;
    v9 = sub_1DCC18EC4;
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCC18EC4()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = (*(v0 + 112) == 2) | *(v0 + 112);
  v4 = [objc_opt_self() policyWithActionMetadata_];
  sub_1DCB10E5C(0, &qword_1ECCA2400, 0x1E69AC948);
  v5 = sub_1DD0DE2DC();

  v6 = [v4 actionWithParameters_];

  v7 = [v6 actionWithOpenWhenRun_];
  swift_setDeallocating();
  v8 = *(v2 + 16);

  v9 = *(v0 + 8);
  v10 = *(v0 + 80);
  v11 = *MEMORY[0x1E69E9840];

  return v9(v7, v10);
}

uint64_t sub_1DCC1903C()
{
  OUTLINED_FUNCTION_42();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 64);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_29();
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_1DCC190D0(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC190E8()
{
  v1 = [*(v0 + 192) parameters];
  sub_1DCB10E5C(0, &qword_1ECCA23F0, 0x1E69AC688);
  v2 = sub_1DD0DE2EC();

  v3 = 0;
  v82 = sub_1DCB08B14(v2);
  v4 = MEMORY[0x1E69E7CC8];
LABEL_2:
  while (2)
  {
    while (2)
    {
      *(v0 + 208) = v4;
      for (i = v3; ; ++i)
      {
        if (v82 == i)
        {
          v40 = *(v0 + 184);

          v41 = MEMORY[0x1E69E7CC0];
          *(v0 + 176) = MEMORY[0x1E69E7CC0];
          v42 = *(v40 + 32);
          *(v0 + 288) = v42;
          v43 = 1 << v42;
          if (v43 < 64)
          {
            v44 = ~(-1 << v43);
          }

          else
          {
            v44 = -1;
          }

          v45 = v44 & *(v40 + 64);
          *(v0 + 216) = v41;

          v46 = 0;
          if (!v45)
          {
            goto LABEL_32;
          }

          do
          {
            v47 = *(v0 + 184);
LABEL_36:
            v49 = __clz(__rbit64(v45));
            v45 &= v45 - 1;
            v50 = v49 | (v46 << 6);
            v51 = (*(v47 + 48) + 16 * v50);
            v53 = *v51;
            v52 = v51[1];
            sub_1DCB0DF6C(*(v47 + 56) + 32 * v50, v0 + 112);
            *(v0 + 64) = v53;
            *(v0 + 72) = v52;
            sub_1DCB20B30((v0 + 112), (v0 + 80));

LABEL_37:
            *(v0 + 224) = v45;
            *(v0 + 232) = v46;
            OUTLINED_FUNCTION_47_5();
            v54 = *(v0 + 24);
            *(v0 + 240) = v54;
            v55 = *(v0 + 208);
            if (!v54)
            {
              v69 = *(v0 + 184);

              OUTLINED_FUNCTION_69();
              OUTLINED_FUNCTION_33_5();

              __asm { BRAA            X2, X16 }
            }

            *(v0 + 248) = *(v0 + 16);
            sub_1DCB20B30((v0 + 32), (v0 + 144));
            if (*(v55 + 16))
            {
              v56 = *(v0 + 208);
              v57 = OUTLINED_FUNCTION_48_5();
              v59 = sub_1DCB21038(v57, v58);
              if (v60)
              {
                OUTLINED_FUNCTION_50_5(v59);
                v73 = v72;
                v74 = swift_task_alloc();
                *(v0 + 264) = v74;
                *v74 = v0;
                OUTLINED_FUNCTION_24_7(v74);
                OUTLINED_FUNCTION_48_5();
                OUTLINED_FUNCTION_33_5();

                sub_1DCC1ACBC(v75, v76, v77, v78);
                return;
              }
            }

            if (qword_1EDE4F900 != -1)
            {
              OUTLINED_FUNCTION_1_2();
              swift_once();
            }

            v61 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v61, qword_1EDE57E00);

            v62 = sub_1DD0DD8EC();
            v63 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v62, v63))
            {
              OUTLINED_FUNCTION_18_1();
              v64 = swift_slowAlloc();
              v83 = OUTLINED_FUNCTION_83();
              *v64 = 136315138;
              v65 = OUTLINED_FUNCTION_48_5();
              v68 = sub_1DCB10E9C(v65, v66, v67);

              *(v64 + 4) = v68;
              _os_log_impl(&dword_1DCAFC000, v62, v63, "Unable to determine valueType for identifier in actionParameters dictionary: %s", v64, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v83);
              OUTLINED_FUNCTION_37();
              OUTLINED_FUNCTION_80();
            }

            else
            {
            }

            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
          }

          while (v45);
LABEL_32:
          while (1)
          {
            v48 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            if (v48 >= (((1 << *(v0 + 288)) + 63) >> 6))
            {
              v45 = 0;
              *(v0 + 80) = 0u;
              *(v0 + 96) = 0u;
              *(v0 + 64) = 0u;
              goto LABEL_37;
            }

            v47 = *(v0 + 184);
            v45 = *(v47 + 8 * v48 + 64);
            ++v46;
            if (v45)
            {
              v46 = v48;
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E12A72C0](i, v2);
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_55;
        }

        v8 = sub_1DCC1EFA4(v6);
        if (!v9)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v18 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v18, qword_1EDE57E00);
          v19 = sub_1DD0DD8EC();
          v20 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_1DCAFC000, v19, v20, "Key in actionParameters dictionary has no name. Ignoring...", v21, 2u);
            OUTLINED_FUNCTION_37();
          }

          goto LABEL_17;
        }

        v10 = v8;
        v11 = v9;
        v12 = [v7 valueType];
        if (v12)
        {
          break;
        }

        v13 = OUTLINED_FUNCTION_49_3();
        v15 = sub_1DCB21038(v13, v14);
        v17 = v16;

        if (v17)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v36 = v4[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23F8, &unk_1DD0E4FB0);
          sub_1DD0DEDCC();
          v37 = *(v4[6] + 16 * v15 + 8);

          sub_1DCB10E5C(0, &qword_1ECCA23D8, 0x1E69ACA98);
          sub_1DD0DEDEC();

          goto LABEL_2;
        }

LABEL_17:
      }

      v22 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v23 = OUTLINED_FUNCTION_49_3();
      v25 = sub_1DCB21038(v23, v24);
      if (__OFADD__(v4[2], (v26 & 1) == 0))
      {
        __break(1u);
        goto LABEL_61;
      }

      v27 = v25;
      v81 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23F8, &unk_1DD0E4FB0);
      if ((sub_1DD0DEDCC() & 1) == 0)
      {
        if ((v81 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_26:

        v38 = v4[7];
        v39 = *(v38 + 8 * v27);
        *(v38 + 8 * v27) = v22;

        continue;
      }

      break;
    }

    v28 = OUTLINED_FUNCTION_49_3();
    v30 = sub_1DCB21038(v28, v29);
    if ((v81 & 1) != (v31 & 1))
    {
LABEL_57:
      OUTLINED_FUNCTION_33_5();

      sub_1DD0DF12C();
      return;
    }

    v27 = v30;
    if (v81)
    {
      goto LABEL_26;
    }

LABEL_23:
    v4[(v27 >> 6) + 8] |= 1 << v27;
    v32 = (v4[6] + 16 * v27);
    *v32 = v10;
    v32[1] = v11;
    *(v4[7] + 8 * v27) = v22;

    v33 = v4[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (!v34)
    {
      v4[2] = v35;
      continue;
    }

    break;
  }

LABEL_61:
  __break(1u);
}

uint64_t sub_1DCC197B0()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 264);
  *v3 = *v1;
  v2[34] = v6;
  v2[35] = v0;

  if (v0)
  {
    v7 = v2[30];
    v10 = v2 + 26;
    v9 = v2[26];
    v8 = v10[1];

    v11 = sub_1DCC19DEC;
  }

  else
  {
    v11 = sub_1DCC198D8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DCC198D8()
{
  v58 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  objc_allocWithZone(MEMORY[0x1E69AC948]);

  v4 = v1;
  sub_1DCC1EEB4(v3, v2, v1);
  MEMORY[0x1E12A6920]();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_1DD0DE3AC();
    v54 = *(v0 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = *(v0 + 272);
    v6 = *(v0 + 240);
    v56 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v56, qword_1EDE57E00);

    v7 = v5;
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6DC();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 272);
    if (v10)
    {
      v12 = *(v0 + 240);
      v13 = *(v0 + 248);
      OUTLINED_FUNCTION_42_3();
      v55 = v14;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_83();
      v57 = v17;
      *v15 = 136315394;
      v18 = sub_1DCB10E9C(v13, v12, &v57);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v11;
      *v16 = v1;
      v19 = v11;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Resolved value for app intent parameter: %s to: %@", v15, 0x16u);
      sub_1DCB16D50(v16, qword_1ECCA8AD0, &qword_1DD0E4F90);
      OUTLINED_FUNCTION_80();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    else
    {
      v20 = *(v0 + 240);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    v21 = *(v0 + 224);
    v1 = *(v0 + 232);
    *(v0 + 216) = v54;
    v22 = qword_1EDE57E00;
    if (v21)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v24 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v24 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {
        v21 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_14;
      }

      v23 = *(v0 + 184);
      v21 = *(v23 + 8 * v24 + 64);
      ++v1;
      if (v21)
      {
        v1 = v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:
    sub_1DD0DE33C();
  }

  while (1)
  {
    v23 = *(v0 + 184);
LABEL_13:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v1 << 6);
    v27 = (*(v23 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    sub_1DCB0DF6C(*(v23 + 56) + 32 * v26, v0 + 112);
    *(v0 + 64) = v28;
    *(v0 + 72) = v29;
    sub_1DCB20B30((v0 + 112), (v0 + 80));

LABEL_14:
    *(v0 + 224) = v21;
    *(v0 + 232) = v1;
    OUTLINED_FUNCTION_47_5();
    v30 = *(v0 + 24);
    *(v0 + 240) = v30;
    v31 = *(v0 + 208);
    if (!v30)
    {
      v42 = *(v0 + 184);

      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_33_5();

      __asm { BRAA            X2, X16 }
    }

    v32 = *(v0 + 16);
    *(v0 + 248) = v32;
    sub_1DCB20B30((v0 + 32), (v0 + 144));
    if (*(v31 + 16))
    {
      v33 = *(v0 + 208);
      v34 = sub_1DCB21038(v32, v30);
      if (v35)
      {
        break;
      }
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    __swift_project_value_buffer(v56, v22);

    v36 = sub_1DD0DD8EC();
    v37 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_18_1();
      v38 = swift_slowAlloc();
      v39 = v22;
      v40 = OUTLINED_FUNCTION_83();
      v57 = v40;
      *v38 = 136315138;
      v41 = sub_1DCB10E9C(v32, v30, &v57);

      *(v38 + 4) = v41;
      _os_log_impl(&dword_1DCAFC000, v36, v37, "Unable to determine valueType for identifier in actionParameters dictionary: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      v22 = v39;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_50_5(v34);
  v46 = v45;
  v47 = swift_task_alloc();
  *(v0 + 264) = v47;
  *v47 = v0;
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_33_5();

  return sub_1DCC1ACBC(v48, v49, v50, v51);
}

uint64_t sub_1DCC19DEC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 280);

  return v2();
}

void sub_1DCC19E5C()
{
  OUTLINED_FUNCTION_42();
  v14 = *MEMORY[0x1E69E9840];
  v0[7] = v1;
  v0[8] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23E0, &qword_1DD0E4F98);
  v0[9] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[10] = v4;
  v6 = *(v5 + 64);
  v0[11] = OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23E8, &unk_1DD0E4FA0);
  v0[12] = v7;
  OUTLINED_FUNCTION_99(v7);
  v0[13] = v8;
  v10 = *(v9 + 64);
  v0[14] = OUTLINED_FUNCTION_38();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64);
  v0[15] = OUTLINED_FUNCTION_38();
  sub_1DD0DCC3C();
}

void sub_1DCC1A024()
{
  OUTLINED_FUNCTION_51_4();
  v2 = v0;
  v1 = *MEMORY[0x1E69E9840];
  sub_1DD0DCA6C();
}

uint64_t sub_1DCC1A580()
{
  OUTLINED_FUNCTION_42();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 200) = v0;

  if (v0)
  {
    v10 = sub_1DCC1AB8C;
  }

  else
  {
    v10 = sub_1DCC1A6B0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DCC1A6B0()
{
  v77 = v0;
  v76[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);
    v73 = *(v0 + 152);
    v75 = *(v0 + 176);
    v68 = *(v0 + 136);
    v71 = *(v0 + 128);
    v24 = *(v0 + 104);
    v65 = *(v0 + 112);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    sub_1DCC1EE60();
    v29 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_54_5(v29, v30);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v65, v25);
  }

  else
  {
    v3 = *(v0 + 16);
    if (v2 == 4)
    {
      v4 = *(v0 + 168);
      v5 = v3;
      v6 = sub_1DD0DD8EC();
      LOBYTE(v4) = sub_1DD0DE6DC();
      OUTLINED_FUNCTION_55_7();
      v62 = v4;
      v7 = os_log_type_enabled(v6, v4);
      v8 = *(v0 + 176);
      v9 = *(v0 + 152);
      v10 = *(v0 + 128);
      v11 = *(v0 + 136);
      v12 = *(v0 + 104);
      v72 = *(v0 + 96);
      v74 = *(v0 + 112);
      v13 = *(v0 + 80);
      v70 = *(v0 + 88);
      v64 = *(v0 + 160);
      v67 = *(v0 + 72);
      if (v7)
      {
        OUTLINED_FUNCTION_18_1();
        v58 = v14;
        v60 = v8;
        v15 = swift_slowAlloc();
        v59 = v9;
        v16 = OUTLINED_FUNCTION_83();
        v76[0] = v16;
        *v15 = 136315138;
        v17 = [v5 description];
        v57 = v10;
        v18 = sub_1DD0DDFBC();
        v20 = v19;

        OUTLINED_FUNCTION_55_7();
        v21 = sub_1DCB10E9C(v18, v20, v76);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_1DCAFC000, v6, v62, "Successfully executed app intent: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();

        OUTLINED_FUNCTION_55_7();
        (*(v13 + 8))(v70, v67);
        (*(v12 + 8))(v74, v72);
        v60(v59, v57);
      }

      else
      {

        OUTLINED_FUNCTION_55_7();
        (*(v13 + 8))(v70, v67);
        (*(v12 + 8))(v74, v72);
        v8(v9, v10);
      }

      v51 = *(v0 + 144);
      v50 = *(v0 + 152);
      v53 = *(v0 + 112);
      v52 = *(v0 + 120);
      v54 = *(v0 + 88);

      OUTLINED_FUNCTION_29();
      v55 = *MEMORY[0x1E69E9840];
      goto LABEL_12;
    }

    v31 = *(v0 + 168);
    v32 = v3;
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6EC();
    sub_1DCC1EF90(v3, v2);
    v61 = v3;
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_109();
      v76[0] = v35;
      *v1 = 136315138;
      *(v0 + 32) = v3;
      *(v0 + 40) = v2;
      v36 = v32;
      v37 = sub_1DD0DE02C();
      v39 = sub_1DCB10E9C(v37, v38, v76);

      *(v1 + 4) = v39;
      _os_log_impl(&dword_1DCAFC000, v33, v34, "Failed to execute app intent: %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v73 = *(v0 + 152);
    v75 = *(v0 + 176);
    v69 = *(v0 + 136);
    v71 = *(v0 + 128);
    v42 = *(v0 + 104);
    v43 = *(v0 + 88);
    v63 = *(v0 + 96);
    v66 = *(v0 + 112);
    v44 = *(v0 + 72);
    v45 = *(v0 + 80);
    sub_1DCC1EE60();
    v46 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_54_5(v46, v47);

    sub_1DCC1EF90(v61, v2);
    (*(v45 + 8))(v43, v44);
    (*(v42 + 8))(v66, v63);
  }

  v75(v73, v71);
  OUTLINED_FUNCTION_44_4();

  OUTLINED_FUNCTION_29();
  v49 = *MEMORY[0x1E69E9840];
LABEL_12:

  return v48();
}

uint64_t sub_1DCC1AB8C()
{
  OUTLINED_FUNCTION_90();
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 160);
  v14 = *(v0 + 152);
  v15 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v15(v14, v2);
  v10 = *(v0 + 200);
  OUTLINED_FUNCTION_44_4();

  OUTLINED_FUNCTION_29();
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1DCC1ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1ACD8()
{
  v115 = v0;
  v1 = v0[5];
  v2 = objc_opt_self();
  v3 = [v2 stringValueType];
  sub_1DCB10E5C(0, &qword_1ECCA23D8, 0x1E69ACA98);
  OUTLINED_FUNCTION_21_3();
  LOBYTE(v1) = sub_1DD0DE8EC();

  if (v1)
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_2_23(v4);
    OUTLINED_FUNCTION_96_0();

    return sub_1DCC1C34C(v5, v6, v7);
  }

  else
  {
    v10 = v0[5];
    v11 = [v2 doubleValueType];
    LOBYTE(v10) = OUTLINED_FUNCTION_38_7();

    if (v10)
    {
      v12 = swift_task_alloc();
      v0[8] = v12;
      *v12 = v0;
      OUTLINED_FUNCTION_2_23(v12);
      OUTLINED_FUNCTION_96_0();

      return sub_1DCC1C504(v13, v14, v15);
    }

    else
    {
      v17 = v0[5];
      v18 = [v2 BOOLValueType];
      LOBYTE(v17) = OUTLINED_FUNCTION_38_7();

      if (v17)
      {
        v19 = swift_task_alloc();
        v0[9] = v19;
        *v19 = v0;
        OUTLINED_FUNCTION_2_23(v19);
        OUTLINED_FUNCTION_96_0();

        return sub_1DCC1C6F8(v20, v21, v22);
      }

      else
      {
        v24 = v0[5];
        v25 = [v2 intValueType];
        LOBYTE(v24) = OUTLINED_FUNCTION_38_7();

        if (v24)
        {
          v26 = swift_task_alloc();
          v0[10] = v26;
          *v26 = v0;
          OUTLINED_FUNCTION_2_23(v26);
          OUTLINED_FUNCTION_96_0();

          return sub_1DCC1C8B8(v27, v28, v29);
        }

        else
        {
          v31 = v0[5];
          v32 = [v2 int8ValueType];
          LOBYTE(v31) = OUTLINED_FUNCTION_38_7();

          if (v31)
          {
            v33 = swift_task_alloc();
            v0[11] = v33;
            *v33 = v0;
            OUTLINED_FUNCTION_2_23(v33);
            OUTLINED_FUNCTION_96_0();

            return sub_1DCC1CAE8(v34, v35, v36);
          }

          else
          {
            v38 = v0[5];
            v39 = [v2 int16ValueType];
            LOBYTE(v38) = OUTLINED_FUNCTION_38_7();

            if (v38)
            {
              v40 = swift_task_alloc();
              v0[12] = v40;
              *v40 = v0;
              OUTLINED_FUNCTION_2_23(v40);
              OUTLINED_FUNCTION_96_0();

              return sub_1DCC1CCEC(v41, v42, v43);
            }

            else
            {
              v45 = v0[5];
              v46 = [v2 int32ValueType];
              LOBYTE(v45) = OUTLINED_FUNCTION_38_7();

              if (v45)
              {
                v47 = swift_task_alloc();
                v0[13] = v47;
                *v47 = v0;
                OUTLINED_FUNCTION_2_23(v47);
                OUTLINED_FUNCTION_96_0();

                return sub_1DCC1CEF0(v48, v49, v50);
              }

              else
              {
                v52 = v0[5];
                v53 = [v2 int64ValueType];
                LOBYTE(v52) = OUTLINED_FUNCTION_38_7();

                if (v52)
                {
                  v54 = swift_task_alloc();
                  v0[14] = v54;
                  *v54 = v0;
                  OUTLINED_FUNCTION_2_23(v54);
                  OUTLINED_FUNCTION_96_0();

                  return sub_1DCC1D0FC(v55, v56, v57);
                }

                else
                {
                  v59 = v0[5];
                  v60 = [v2 URLValueType];
                  LOBYTE(v59) = OUTLINED_FUNCTION_38_7();

                  if (v59)
                  {
                    v61 = swift_task_alloc();
                    v0[15] = v61;
                    *v61 = v0;
                    OUTLINED_FUNCTION_2_23(v61);
                    OUTLINED_FUNCTION_96_0();

                    return sub_1DCC1D2E4();
                  }

                  else
                  {
                    v63 = v0[5];
                    v64 = [v2 placemarkValueType];
                    LOBYTE(v63) = OUTLINED_FUNCTION_38_7();

                    if (v63)
                    {
                      v65 = swift_task_alloc();
                      v0[16] = v65;
                      *v65 = v0;
                      OUTLINED_FUNCTION_2_23(v65);
                      OUTLINED_FUNCTION_96_0();

                      return sub_1DCC1D728(v66, v67, v68);
                    }

                    else
                    {
                      v70 = v0[5];
                      v71 = [v2 dateValueType];
                      LOBYTE(v70) = OUTLINED_FUNCTION_38_7();

                      if (v70)
                      {
                        v72 = swift_task_alloc();
                        v0[17] = v72;
                        *v72 = v0;
                        OUTLINED_FUNCTION_2_23(v72);
                        OUTLINED_FUNCTION_96_0();

                        return sub_1DCC1DDAC(v73, v74, v75);
                      }

                      else
                      {
                        v77 = v0[5];
                        v78 = [v2 dateComponentsValueType];
                        v79 = sub_1DD0DE8EC();

                        if (v79)
                        {
                          v80 = swift_task_alloc();
                          v0[18] = v80;
                          *v80 = v0;
                          OUTLINED_FUNCTION_2_23(v80);
                          OUTLINED_FUNCTION_96_0();

                          return sub_1DCC1E0CC();
                        }

                        else
                        {
                          v82 = v0[5];
                          objc_opt_self();
                          if (swift_dynamicCastObjCClass())
                          {
                            v83 = swift_task_alloc();
                            v0[19] = v83;
                            *v83 = v0;
                            OUTLINED_FUNCTION_2_23(v83);
                            OUTLINED_FUNCTION_96_0();

                            return sub_1DCC1E760(v84, v85, v86, v87);
                          }

                          else
                          {
                            v89 = v0[5];
                            objc_opt_self();
                            if (!swift_dynamicCastObjCClass())
                            {
                              if (qword_1EDE4F900 != -1)
                              {
                                OUTLINED_FUNCTION_1_2();
                                swift_once();
                              }

                              v96 = v0[5];
                              v97 = v0[3];
                              v98 = sub_1DD0DD8FC();
                              __swift_project_value_buffer(v98, qword_1EDE57E00);

                              v99 = v96;
                              v100 = sub_1DD0DD8EC();
                              LOBYTE(v96) = sub_1DD0DE6EC();

                              if (os_log_type_enabled(v100, v96))
                              {
                                v101 = v0[5];
                                v103 = v0[2];
                                v102 = v0[3];
                                OUTLINED_FUNCTION_42_3();
                                v104 = swift_slowAlloc();
                                v105 = swift_slowAlloc();
                                v106 = OUTLINED_FUNCTION_83();
                                v114 = v106;
                                *v104 = 136315394;
                                *(v104 + 4) = sub_1DCB10E9C(v103, v102, &v114);
                                *(v104 + 12) = 2112;
                                *(v104 + 14) = v101;
                                *v105 = v101;
                                v107 = v101;
                                OUTLINED_FUNCTION_53_1(&dword_1DCAFC000, v108, v109, "Unable to convert value for app intent parameter %s to %@: unsupported value type");
                                sub_1DCB16D50(v105, qword_1ECCA8AD0, &qword_1DD0E4F90);
                                OUTLINED_FUNCTION_80();
                                __swift_destroy_boxed_opaque_existential_1Tm(v106);
                                OUTLINED_FUNCTION_80();
                                OUTLINED_FUNCTION_80();
                              }

                              sub_1DCC1EE60();
                              v110 = OUTLINED_FUNCTION_34();
                              OUTLINED_FUNCTION_19_8(v110, v111);
                              OUTLINED_FUNCTION_29();
                              OUTLINED_FUNCTION_96_0();

                              __asm { BRAA            X1, X16 }
                            }

                            v90 = swift_task_alloc();
                            v0[20] = v90;
                            *v90 = v0;
                            OUTLINED_FUNCTION_2_23(v90);
                            OUTLINED_FUNCTION_96_0();

                            return sub_1DCC1EAD0(v91, v92, v93, v94);
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
    }
  }
}

uint64_t sub_1DCC1B69C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 56);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1B784()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 64);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1B86C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 72);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1B954()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 80);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1BA3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 88);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1BB24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 96);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1BC0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 104);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1BCF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 112);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1BDDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 120);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1BEC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 128);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1BFAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 136);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1C094()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 144);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1C17C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 152);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1C264()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 160);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCC1C34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  sub_1DCB0DF6C(v14[10], (v14 + 2));
  v16 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_39_4())
  {
    v43 = v14[6];
    v44 = v14[7];
    [objc_opt_self() stringValueType];
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v43, v44, a12, v16, a14);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (OUTLINED_FUNCTION_245())
    {
      v29 = v14[8];
      v28 = v14[9];
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_25_6();
      *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v30);
      OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v31, v32, "Unable to convert value for app intent parameter %s to a String");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    sub_1DCC1EE60();
    v33 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_19_8(v33, v34);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_27_6();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC1C504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4())
  {
    v45 = v16;
    v44 = *(v14 + 48);
    v17 = [objc_opt_self() doubleValueType];
LABEL_5:
    v17;
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, *&v44, a11, a12, v45, a14);
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    v45 = v16;
    v44 = *(v14 + 48);
    v17 = [objc_opt_self() doubleValueType];
    goto LABEL_5;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v30 = *(v14 + 56);
    v29 = *(v14 + 64);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v31);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v32, v33, "Unable to convert value for app intent parameter %s to a Double");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  sub_1DCC1EE60();
  v34 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_8(v34, v35);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1C6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  sub_1DCB0DF6C(*(v14 + 64), v14 + 16);
  v16 = MEMORY[0x1E69E6370];
  if (OUTLINED_FUNCTION_39_4())
  {
    LOBYTE(a10) = *(v14 + 72);
    [objc_opt_self() BOOLValueType];
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, v16, a14);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = *(v14 + 56);
    v27 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_22_12(v27, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (OUTLINED_FUNCTION_245())
    {
      v30 = *(v14 + 48);
      v29 = *(v14 + 56);
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_25_6();
      *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v31);
      OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v32, v33, "Unable to convert value for app intent parameter %s to a Bool");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    sub_1DCC1EE60();
    v34 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_19_8(v34, v35);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_27_6();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC1C8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4())
  {
    OUTLINED_FUNCTION_36_8();
    v46 = v17;
    v18 = [objc_opt_self() intValueType];
LABEL_8:
    v18;
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v46, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = *(v14 + 48);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v20 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v20 < 9.22337204e18)
      {
        a13 = v16;
        v46 = v20;
        v18 = [objc_opt_self() intValueType];
        goto LABEL_8;
      }

      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v29 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v29, qword_1EDE57E00);
  v30 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v32 = *(v14 + 56);
    v31 = *(v14 + 64);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v33);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v34, v35, "Unable to convert value for app intent parameter %s to an Int");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  sub_1DCC1EE60();
  v36 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_8(v36, v37);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC1CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E7230];
  OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4())
  {
    a13 = v16;
    LOBYTE(a10) = *(v14 + 48);
    v17 = [objc_opt_self() int8ValueType];
LABEL_7:
    v17;
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
    return;
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_36_8();
    if (v18 >= -128)
    {
      if (v18 > 127)
      {
        __break(1u);
        return;
      }

      LOBYTE(a10) = v18;
      v17 = [objc_opt_self() int8ValueType];
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v30 = *(v14 + 56);
    v29 = *(v14 + 64);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v31);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v32, v33, "Unable to convert value for app intent parameter %s to an Int8");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  sub_1DCC1EE60();
  v34 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_8(v34, v35);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1CCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC1CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E7290];
  OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4())
  {
    a13 = v16;
    LOWORD(a10) = *(v14 + 48);
    v17 = [objc_opt_self() int16ValueType];
LABEL_7:
    v17;
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
    return;
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_36_8();
    if (v18 >= -32768)
    {
      if (v18 >= 0x8000)
      {
        __break(1u);
        return;
      }

      LOWORD(a10) = v18;
      v17 = [objc_opt_self() int16ValueType];
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v30 = *(v14 + 56);
    v29 = *(v14 + 64);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v31);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v32, v33, "Unable to convert value for app intent parameter %s to an Int16");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  sub_1DCC1EE60();
  v34 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_8(v34, v35);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC1CF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E72F0];
  OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4())
  {
    a13 = v16;
    LODWORD(a10) = *(v14 + 48);
    v17 = [objc_opt_self() int32ValueType];
LABEL_7:
    v17;
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
    return;
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_36_8();
    if (v18 >= 0xFFFFFFFF80000000)
    {
      if (v18 > 0x7FFFFFFF)
      {
        __break(1u);
        return;
      }

      LODWORD(a10) = v18;
      v17 = [objc_opt_self() int32ValueType];
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v30 = *(v14 + 56);
    v29 = *(v14 + 64);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v31);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v32, v33, "Unable to convert value for app intent parameter %s to an Int32");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  sub_1DCC1EE60();
  v34 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_8(v34, v35);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1D0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1D114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4() || (OUTLINED_FUNCTION_35_8(), OUTLINED_FUNCTION_5_15(), swift_dynamicCast()))
  {
    OUTLINED_FUNCTION_36_8();
    v43 = v16;
    [objc_opt_self() int64ValueType];
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v43, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_22_12(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (OUTLINED_FUNCTION_245())
    {
      v29 = *(v14 + 56);
      v28 = *(v14 + 64);
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_25_6();
      *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v30);
      OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v31, v32, "Unable to convert value for app intent parameter %s to an Int64");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    sub_1DCC1EE60();
    v33 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_19_8(v33, v34);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_27_6();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC1D2E4()
{
  OUTLINED_FUNCTION_42();
  v0[13] = v1;
  v0[14] = v2;
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v0[15] = OUTLINED_FUNCTION_38();
  v7 = sub_1DD0DAECC();
  v0[16] = v7;
  OUTLINED_FUNCTION_99(v7);
  v0[17] = v8;
  v10 = *(v9 + 64);
  v0[18] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCC1D3C0, 0, 0);
}

uint64_t sub_1DCC1D3C0()
{
  sub_1DCB0DF6C(v0[14], (v0 + 2));
  if (!swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v17 = v0[13];
    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_22_12(v18, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_12;
    }

    v20 = v0[12];
    v19 = v0[13];
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    *v1 = 136315138;
    v21 = OUTLINED_FUNCTION_21_3();
    *(v1 + 4) = sub_1DCB10E9C(v21, v22, v23);
    v16 = "Unable to convert value for app intent parameter %s to a URL: value is not a string";
    goto LABEL_11;
  }

  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  v5 = v0[11];
  sub_1DD0DAEBC();

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DCB16D50(v0[15], &unk_1ECCA28C0, &unk_1DD0E1D80);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v6 = v0[13];
    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_22_12(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_12;
    }

    v10 = v0[12];
    v9 = v0[13];
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    *v1 = 136315138;
    v11 = OUTLINED_FUNCTION_21_3();
    *(v1 + 4) = sub_1DCB10E9C(v11, v12, v13);
    v16 = "Unable to convert value for app intent parameter %s to a URL";
LABEL_11:
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v14, v15, v16);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
LABEL_12:

    v24 = v0[18];
    v25 = v0[15];
    sub_1DCC1EE60();
    OUTLINED_FUNCTION_34();
    *v26 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_29();

    return v27();
  }

  v30 = v0[17];
  v29 = v0[18];
  v31 = v0[16];
  (*(v30 + 32))(v29, v0[15], v31);
  v0[9] = v31;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
  (*(v30 + 16))(boxed_opaque_existential_1Tm, v29, v31);
  v33 = [objc_opt_self() URLValueType];
  v34 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v35 = OUTLINED_FUNCTION_34_7(v0 + 6);
  (*(v30 + 8))(v29, v31);

  OUTLINED_FUNCTION_69();

  return v36(v35);
}

uint64_t sub_1DCC1D728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1D740()
{
  OUTLINED_FUNCTION_51_4();
  sub_1DCB0DF6C(*(v0 + 10), (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  v1 = MEMORY[0x1E69E7CA0];
  OUTLINED_FUNCTION_12_13();
  if (!swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_41;
    }

    v8 = *(v0 + 8);
    v7 = *(v0 + 9);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v9);
    v12 = "Unable to convert value for app intent parameter %s to a placemark: value is not a dictionary";
    goto LABEL_40;
  }

  v2 = *(v0 + 6);
  sub_1DCB90D40(1701667182, 0xE400000000000000, v2);
  if (*(v0 + 5))
  {
    OUTLINED_FUNCTION_12_13();
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 6);
      v4 = *(v0 + 7);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_11:
  sub_1DCB90D40(0x6E6F697461636F6CLL, 0xE800000000000000, v2);

  if (*(v0 + 5))
  {
    OUTLINED_FUNCTION_12_13();
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 6);
      goto LABEL_16;
    }
  }

  else
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v13 = sub_1DD0DDE9C();
LABEL_16:
  sub_1DCB90D40(0x616E6964726F6F63, 0xEA00000000006574, v13);

  if (*(v0 + 5))
  {
    OUTLINED_FUNCTION_12_13();
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 6);
      goto LABEL_21;
    }
  }

  else
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v14 = sub_1DD0DDE9C();
LABEL_21:
  sub_1DCB90D40(0x656475746974616CLL, 0xE800000000000000, v14);
  if (!*(v0 + 5))
  {

    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_30:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v24 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v24, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_41;
    }

    v26 = *(v0 + 8);
    v25 = *(v0 + 9);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v27);
    v12 = "Unable to convert value for app intent parameter %s to a placemark: no latitude found at location.coordinate.latitude";
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_12_13();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_30;
  }

  v15 = v0[6];
  sub_1DCB90D40(0x64757469676E6F6CLL, 0xE900000000000065, v14);

  if (*(v0 + 5))
  {
    OUTLINED_FUNCTION_12_13();
    if (swift_dynamicCast())
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v15 longitude:v0[6]];
      sub_1DCB10E5C(0, &qword_1ECCA23D0, 0x1E695FC20);
      v17 = v16;
      v35 = sub_1DCC1DD10(v17, v3, v4, 0);
      v18 = objc_opt_self();
      v19 = v35;
      v20 = [v18 placemarkValueType];
      v21 = OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));

      OUTLINED_FUNCTION_69();

      return v22(v21);
    }
  }

  else
  {

    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v28 = OUTLINED_FUNCTION_46_5();
  OUTLINED_FUNCTION_22_12(v28, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v30 = *(v0 + 8);
    v29 = *(v0 + 9);
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v31);
    v12 = "Unable to convert value for app intent parameter %s to a placemark: no longitude found at location.coordinate.longitude";
LABEL_40:
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v10, v11, v12);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

LABEL_41:

  sub_1DCC1EE60();
  v32 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_8(v32, v33);
  OUTLINED_FUNCTION_29();

  return v34();
}

id sub_1DCC1DD10(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1DD0DDF8C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

uint64_t sub_1DCC1DDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1DDC4()
{
  OUTLINED_FUNCTION_35_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  OUTLINED_FUNCTION_5_15();
  if (!swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_22_12(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_22;
    }

    v7 = v0[7];
    v6 = v0[8];
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v8);
    v11 = "Unable to convert value for app intent parameter %s to a date: value is not a dictionary";
    goto LABEL_21;
  }

  v2 = v0[6];
  OUTLINED_FUNCTION_45_4();
  if (v0[5])
  {
    OUTLINED_FUNCTION_5_15();
    if (swift_dynamicCast())
    {

      v3 = v0[6];
LABEL_13:
      v0[5] = sub_1DD0DAFDC();
      __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
      sub_1DD0DAF8C();
      [objc_opt_self() dateValueType];
      v13 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
      OUTLINED_FUNCTION_34_7(v0 + 2);
      OUTLINED_FUNCTION_7_16();

      return v14();
    }
  }

  else
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_45_4();

  if (v0[5])
  {
    OUTLINED_FUNCTION_5_15();
    if (swift_dynamicCast())
    {
      v12 = v0[6];
      goto LABEL_13;
    }
  }

  else
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v16 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v16, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v18 = v0[7];
    v17 = v0[8];
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v19);
    v11 = "Unable to convert value for app intent parameter %s to a date: no value found for secs";
LABEL_21:
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v9, v10, v11);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

LABEL_22:

  sub_1DCC1EE60();
  v20 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19_8(v20, v21);
  OUTLINED_FUNCTION_29();

  return v22();
}

uint64_t sub_1DCC1E0CC()
{
  OUTLINED_FUNCTION_42();
  v0[42] = v1;
  v0[43] = v2;
  v0[41] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23C0, &qword_1DD0E4F68);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v0[44] = OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23C8, &unk_1DD0E4F70);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[45] = OUTLINED_FUNCTION_38();
  v10 = sub_1DD0DAC2C();
  v0[46] = v10;
  OUTLINED_FUNCTION_99(v10);
  v0[47] = v11;
  v13 = *(v12 + 64);
  v0[48] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCC1E1D4, 0, 0);
}

uint64_t sub_1DCC1E1D4()
{
  sub_1DCB0DF6C(v0[43], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  if (OUTLINED_FUNCTION_43_6())
  {
    v3 = v0[44];
    v2 = v0[45];
    v4 = v0[34];
    v5 = sub_1DD0DB15C();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
    v6 = sub_1DD0DB18C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
    sub_1DCB90D40(1918985593, 0xE400000000000000, v4);
    if (v0[9])
    {
      if (OUTLINED_FUNCTION_43_6())
      {
        v50 = v0[40];
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 6), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    sub_1DCB90D40(0x68746E6F6DLL, 0xE500000000000000, v4);
    if (v0[13])
    {
      if (OUTLINED_FUNCTION_43_6())
      {
        v23 = v0[39];
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 10), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    sub_1DCB90D40(7954788, 0xE300000000000000, v4);
    if (v0[17])
    {
      if (OUTLINED_FUNCTION_43_6())
      {
        v24 = v0[38];
        goto LABEL_22;
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 14), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v24 = 1;
LABEL_22:
    sub_1DCB90D40(1920298856, 0xE400000000000000, v4);
    if (v0[21])
    {
      if (OUTLINED_FUNCTION_43_6())
      {
        v25 = v0[37];
        goto LABEL_27;
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 18), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v25 = 0;
LABEL_27:
    sub_1DCB90D40(0x6574756E696DLL, 0xE600000000000000, v4);
    if (v0[25])
    {
      if (OUTLINED_FUNCTION_43_6())
      {
        v26 = v0[36];
        goto LABEL_32;
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 22), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v26 = 0;
LABEL_32:
    sub_1DCB90D40(0x646E6F636573, 0xE600000000000000, v4);

    if (v0[29])
    {
      if (OUTLINED_FUNCTION_43_6())
      {
        v27 = v0[35];
LABEL_37:
        v29 = v0[47];
        v28 = v0[48];
        v30 = v0[45];
        v31 = v0[46];
        v32 = v0[44];
        LOBYTE(v49) = 1;
        LOBYTE(v48) = 1;
        LOBYTE(v47) = 1;
        LOBYTE(v46) = 1;
        LOBYTE(v45) = 1;
        LOBYTE(v44) = 1;
        LOBYTE(v43) = 1;
        LOBYTE(v42) = 0;
        v41 = v27;
        LOBYTE(v40) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v38) = 0;
        sub_1DD0DAC0C();
        v0[33] = v31;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 30);
        (*(v29 + 16))(boxed_opaque_existential_1Tm, v28, v31);
        v34 = [objc_opt_self() dateComponentsValueType];
        v35 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        v36 = OUTLINED_FUNCTION_34_7(v0 + 30);
        (*(v29 + 8))(v28, v31);

        OUTLINED_FUNCTION_69();

        return v37(v36);
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 26), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v27 = 0;
    goto LABEL_37;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v7 = v0[42];
  v8 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_22_12(v8, qword_1EDE57E00);
  v9 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    v11 = v0[41];
    v10 = v0[42];
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    *v1 = 136315138;
    v12 = OUTLINED_FUNCTION_21_3();
    *(v1 + 4) = sub_1DCB10E9C(v12, v13, v14);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v15, v16, "Unable to convert value for app intent parameter %s to a dateComponents: value is not a dictionary");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  v17 = v0[48];
  v19 = v0[44];
  v18 = v0[45];
  sub_1DCC1EE60();
  OUTLINED_FUNCTION_34();
  *v20 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v21();
}

uint64_t sub_1DCC1E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1E778()
{
  OUTLINED_FUNCTION_51_4();
  v37 = v0;
  sub_1DCB0DF6C(v0[12], (v0 + 2));
  v1 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_39_4())
  {
    v2 = v0[13];
    v3 = v0[6];
    v4 = v0[7];
    v34 = v1;
    v32 = v3;
    v33 = v4;
    sub_1DCB10E5C(0, &qword_1ECCA23B8, 0x1E69AC898);
    v35 = 11365;
    v36 = 0xE200000000000000;
    v5 = [v2 enumerationIdentifier];
    v6 = sub_1DD0DDFBC();
    v8 = v7;

    MEMORY[0x1E12A6780](v6, v8);

    sub_1DCC1EA5C();
    v9 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_34_7(&v32);
    OUTLINED_FUNCTION_7_16();

    return v10();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v12 = v0[11];
    v13 = v0[12];
    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    sub_1DCB0DF6C(v13, (v0 + 2));

    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[10];
      v17 = v0[11];
      OUTLINED_FUNCTION_42_3();
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v19 = 136315394;
      v20 = OUTLINED_FUNCTION_49_3();
      *(v19 + 4) = sub_1DCB10E9C(v20, v21, v22);
      *(v19 + 12) = 2080;
      sub_1DCB0DF6C((v0 + 2), (v0 + 6));
      v23 = sub_1DD0DE02C();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v26 = sub_1DCB10E9C(v23, v25, &v32);

      *(v19 + 14) = v26;
      OUTLINED_FUNCTION_53_1(&dword_1DCAFC000, v27, v28, "Unable to convert value for app intent parameter %s to an EnumerationValue for %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    sub_1DCC1EE60();
    v29 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_19_8(v29, v30);
    OUTLINED_FUNCTION_29();

    return v31();
  }
}

id sub_1DCC1EA5C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DD0DDF8C();

  v2 = [v0 initWithEnumerationIdentifier_];

  return v2;
}

uint64_t sub_1DCC1EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1EAE8()
{
  OUTLINED_FUNCTION_51_4();
  v26 = v0;
  sub_1DCB0DF6C(v0[10], (v0 + 2));
  v1 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_39_4())
  {
    v2 = v0[6];
    v3 = v0[7];
    v25[3] = v1;
    v25[0] = v2;
    v25[1] = v3;
    [objc_opt_self() stringValueType];
    OUTLINED_FUNCTION_10_14(objc_allocWithZone(MEMORY[0x1E69ACA88]));
    OUTLINED_FUNCTION_7_16();

    return v4();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v6 = v0[11];
    v7 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v7, qword_1EDE57E00);
    v8 = v6;
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();

    if (OUTLINED_FUNCTION_245())
    {
      v10 = v0[11];
      v12 = v0[8];
      v11 = v0[9];
      OUTLINED_FUNCTION_42_3();
      v13 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = OUTLINED_FUNCTION_48_5();
      *(v13 + 4) = sub_1DCB10E9C(v14, v15, v16);
      *(v13 + 12) = 2080;
      v17 = [v10 identifier];
      v18 = sub_1DD0DDFBC();
      v20 = v19;

      v21 = sub_1DCB10E9C(v18, v20, v25);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1DCAFC000, v9, v6, "Unable to convert value for app intent parameter %s to an EntityValue of type %s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    sub_1DCC1EE60();
    v22 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_19_8(v22, v23);
    OUTLINED_FUNCTION_29();

    return v24();
  }
}

uint64_t sub_1DCC1ED58()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC1EDB4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB22EC8;

  return sub_1DCC1841C();
}

unint64_t sub_1DCC1EE60()
{
  result = qword_1ECCA23B0;
  if (!qword_1ECCA23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA23B0);
  }

  return result;
}

id sub_1DCC1EEB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD0DDF8C();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_1DCC1EF18(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_1DD0DF09C() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

void sub_1DCC1EF90(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1DCC1EFA4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCC1F0EC()
{
  result = qword_1ECCA2408;
  if (!qword_1ECCA2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2408);
  }

  return result;
}

void *AppNameSemanticConcept.__allocating_init(app:)()
{
  v0 = static SAAppInfoFactory.createAppInfo(app:)();
  if (v0 && (v1 = sub_1DCC1F2F4(v0), v2))
  {
    v3 = v1;
    v4 = v2;
    type metadata accessor for AppNameSemanticConcept();
    swift_allocObject();
    v5 = sub_1DCF7C4D4(0x656D614E707061, 0xE700000000000000, v3, v4);
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DD0E07C0;
    v7 = sub_1DD0DD1BC();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1DCB34060();
    v10 = 4999502;
    if (v9)
    {
      v10 = v7;
    }

    v11 = 0xE300000000000000;
    if (v9)
    {
      v11 = v9;
    }

    *(v6 + 32) = v10;
    *(v6 + 40) = v11;
    sub_1DD0DD7EC();

    return 0;
  }

  return v5;
}

uint64_t AppNameSemanticConcept.__deallocating_deinit()
{
  SemanticValueConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC1F2F4(void *a1)
{
  v2 = [a1 displayAppName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

void sub_1DCC1F3A4()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC1F4DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_1DCC1F690;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_1DCC1F628;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DCC1F628()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_1DCC1F690()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

unint64_t sub_1DCC1F6F4(uint64_t a1, char a2)
{
  result = 0x6C616974696E692ELL;
  switch(a2)
  {
    case -4:
      result = 0xD00000000000001BLL;
      break;
    case -3:
      result = 0xD000000000000012;
      break;
    case -2:
      result = 0xD000000000000015;
      break;
    case -1:
      return result;
    default:
      sub_1DCB8D4CC(0x6C616974696E692ELL, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      v3 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v3);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      sub_1DCB79360(0x6C616974696E692ELL, 0x69u);
      result = 0x74656C706D6F632ELL;
      break;
  }

  return result;
}

unint64_t sub_1DCC1F884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  sub_1DCB09910(a1, &v15 - v11, a2, a3);
  v13 = 0x646574726174732ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_13_10();
      v13 = 0x65646E7573696D2ELL;
      break;
    case 2u:
      OUTLINED_FUNCTION_13_10();
      v13 = 0x74656C706D6F632ELL;
      break;
    case 3u:
      sub_1DCB0E9D8(v12, a2, a3);
      v13 = 0x726F7272652ELL;
      break;
    case 4u:
      break;
    case 5u:
      v13 = 0x5374706D6F72702ELL;
      break;
    case 6u:
      v13 = 0x61507974706D652ELL;
      break;
    case 7u:
      v13 = 0x6C6C65636E61632ELL;
      break;
    default:
      OUTLINED_FUNCTION_13_10();
      v13 = 0xD000000000000011;
      break;
  }

  OUTLINED_FUNCTION_13_10();
  return v13;
}

uint64_t sub_1DCC1FA50(uint64_t a1)
{
  sub_1DCB09910(a1, &v3, &qword_1ECCA1F60, &unk_1DD0E5250);
  if (v5)
  {
    sub_1DCB0E9D8(&v3, &qword_1ECCA1F60, &unk_1DD0E5250);
    sub_1DCB0E9D8(a1, &qword_1ECCA1F60, &unk_1DD0E5250);
    return OUTLINED_FUNCTION_16_7();
  }

  else
  {

    sub_1DCB0E9D8(a1, &qword_1ECCA1F60, &unk_1DD0E5250);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    return OUTLINED_FUNCTION_12_14();
  }
}

uint64_t sub_1DCC1FB08(void *a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x74656C706D6F632ELL;
  }

  MEMORY[0x1E12A6780](0x2864656C6961662ELL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](10537, 0xE200000000000000);
  sub_1DCC22568(a1);
  return 0;
}

uint64_t sub_1DCC1FC04()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 32);
  v4 = *v0;
  *(*v0 + 40) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DCC1FD00, 0, 0);
}

void sub_1DCC1FD00()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  sub_1DCB87830(v1, 1u);
}

void sub_1DCC1FD8C()
{
  sub_1DCB17CA0(v0 + 32, v12);
  sub_1DCB17CA0(v0 + 152, v11);
  sub_1DCB17CA0(v0 + 192, v10);
  v1 = type metadata accessor for UnlockDeviceFlowAsync(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v13;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  (*(v8 + 16))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  sub_1DD01D228();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  sub_1DD0DCF8C();
}

void *sub_1DCC1FF1C()
{
  v15 = v0;
  v14 = *(v0[5] + 16);

  sub_1DCC21990(&v14);
  result = v14;
  v0[6] = v14;
  v2 = result[2];
  v0[7] = v2;
  if (v2)
  {
    v3 = v0[5];
    v0[8] = 0;
    if (result[2])
    {
      v0[9] = result[5];
      v4 = result[4];
      v5 = v3[33];
      __swift_project_boxed_opaque_existential_1(v3 + 29, v3[32]);
      v6 = *(v5 + 8);

      v13 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      v0[10] = v8;
      *v8 = v0;
      v9 = OUTLINED_FUNCTION_7_17(v8);

      return v13(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1DCC20BCC();
    v10 = OUTLINED_FUNCTION_34();
    *v11 = 0xD000000000000073;
    v11[1] = 0x80000001DD114610;
    v12 = v0[1];

    return v12(v10);
  }

  return result;
}

uint64_t sub_1DCC20138()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DCC2024C, 0, 0);
}

uint64_t sub_1DCC2024C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 33);
  switch(*(v0 + 33))
  {
    case 2:
      v3 = *(v0 + 48);
      v4 = *(v0 + 24);

      goto LABEL_5;
    default:
      v5 = sub_1DD0DF0AC();

      if (v5)
      {
        v6 = *(v0 + 48);
LABEL_5:

        sub_1DCC22514();
        v7 = OUTLINED_FUNCTION_34();
        *v8 = 0;
        *(v8 + 8) = 0;
LABEL_15:
        *(v8 + 16) = 2;
        goto LABEL_16;
      }

      break;
  }

  switch(v2)
  {
    case 0:
      v9 = *(v0 + 48);
      goto LABEL_13;
    case 1:
    case 2:
    case 3:
      v10 = sub_1DD0DF0AC();

      if (v10)
      {
        goto LABEL_11;
      }

      if (v2 == 1)
      {
        v13 = *(v0 + 48);
LABEL_13:

        goto LABEL_14;
      }

      v11 = sub_1DD0DF0AC();

      if (v11)
      {
LABEL_11:
        v12 = *(v0 + 48);
LABEL_14:

        sub_1DCC22514();
        v7 = OUTLINED_FUNCTION_34();
        *v8 = xmmword_1DD0E5100;
        goto LABEL_15;
      }

      v16 = *(v0 + 64) + 1;
      if (v16 == *(v0 + 56))
      {
        v17 = *(v0 + 48);

        sub_1DCC20BCC();
        v7 = OUTLINED_FUNCTION_34();
        *v18 = 0xD000000000000073;
        v18[1] = 0x80000001DD114610;
LABEL_16:
        v14 = *(v0 + 8);

        return v14(v7);
      }

      *(v0 + 64) = v16;
      v19 = *(v0 + 48);
      if (v16 >= *(v19 + 16))
      {
        __break(1u);
LABEL_26:
        JUMPOUT(0);
      }

      v20 = *(v0 + 40);
      v21 = v19 + 16 * v16;
      *(v0 + 72) = *(v21 + 40);
      v22 = *(v21 + 32);
      v23 = v20[33];
      __swift_project_boxed_opaque_existential_1(v20 + 29, v20[32]);
      v24 = *(v23 + 8);

      v28 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v0 + 80) = v26;
      *v26 = v0;
      v27 = OUTLINED_FUNCTION_7_17();

      return v28(v27);
    default:
      goto LABEL_26;
  }
}

unint64_t sub_1DCC20608(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

void sub_1DCC206A0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
    v2 = *a1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "Unlock flow failed: terminating AppRCHAuthorizationFlow early.", v6, 2u);
      MEMORY[0x1E12A8390](v6, -1, -1);
    }

    sub_1DCB8D4CC(v1, 1);
    sub_1DCB87830(v1, 1u);
  }

  sub_1DCB87830(0, 0xFDu);
}

void destroy for AppRCHAuthorizationFlow.State(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
  }
}

uint64_t sub_1DCC20818(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  if (v3 > 1)
  {
    *a1 = *a2;
    v6 = *(a2 + 8);
    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v4 = *a2;
    v5 = *a2;
    *a1 = v4;
    v6 = 1;
LABEL_6:
    *(a1 + 8) = v6;
    return a1;
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t assignWithCopy for AppRCHAuthorizationFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 > 1)
  {
    if (v5 <= 1)
    {
      if (v5 != 1)
      {
LABEL_8:
        *(a1 + 8) = 0;
        return a1;
      }

LABEL_11:
      v6 = *a2;
      v7 = v6;
      *a1 = v6;
      *(a1 + 8) = 1;
      return a1;
    }

LABEL_14:
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    return a1;
  }

  if (v5 > 1)
  {
    if (v4 == 1)
    {
    }

    goto LABEL_14;
  }

  if (a1 != a2)
  {
    if (v4 == 1)
    {

      v5 = *(a2 + 8);
      if (v5 >= 2)
      {
        v5 = *a2 + 2;
      }
    }

    if (v5 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  return a1;
}

uint64_t assignWithTake for AppRCHAuthorizationFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 > 1)
  {
    if (v5 <= 1)
    {
      if (v5 != 1)
      {
LABEL_8:
        *(a1 + 8) = 0;
        return a1;
      }

      goto LABEL_11;
    }

LABEL_14:
    *a1 = *a2;
    v6 = *(a2 + 8);
    goto LABEL_15;
  }

  if (v5 > 1)
  {
    if (v4 == 1)
    {
    }

    goto LABEL_14;
  }

  if (a1 != a2)
  {
    if (v4 == 1)
    {

      v5 = *(a2 + 8);
      if (v5 >= 2)
      {
        v5 = *a2 + 2;
      }
    }

    if (v5 != 1)
    {
      goto LABEL_8;
    }

LABEL_11:
    *a1 = *a2;
    v6 = 1;
LABEL_15:
    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AppRCHAuthorizationFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppRCHAuthorizationFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -4 - a2;
    }
  }

  return result;
}

uint64_t sub_1DCC20A8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC20AA0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t sub_1DCC20B00()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v0;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DCBFA404;

  return sub_1DCB86BA0(v3);
}

void *sub_1DCC20B98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCB8D4D8();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

unint64_t sub_1DCC20BCC()
{
  result = qword_1ECCA2410;
  if (!qword_1ECCA2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2410);
  }

  return result;
}

uint64_t sub_1DCC20C20()
{
  sub_1DCB09910(v0, &v2, &qword_1ECCA1F60, &unk_1DD0E5250);
  if (v4)
  {
    sub_1DCB0E9D8(&v2, &qword_1ECCA1F60, &unk_1DD0E5250);
    return OUTLINED_FUNCTION_16_7();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    return OUTLINED_FUNCTION_12_14();
  }
}

void sub_1DCC20CA0()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2468, &unk_1DD0E97C0);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v8);
      OUTLINED_FUNCTION_11_18(v9 / 32);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCB5DF38(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC20D70()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2480, &qword_1DD0E5238);
      v8 = OUTLINED_FUNCTION_14_15();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_6_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F3EC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2488, &unk_1DD0E5240);
    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC20E40()
{
  OUTLINED_FUNCTION_10_15();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2448, &qword_1DD0E5210);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F440(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_5_16();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC20EFC()
{
  OUTLINED_FUNCTION_10_15();
  if (v3)
  {
    OUTLINED_FUNCTION_1_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_14();
    }
  }

  else
  {
    v4 = v2;
  }

  if (v4 <= *(v0 + 16))
  {
    v7 = *(v0 + 16);
  }

  else
  {
    v7 = v4;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24A0, &qword_1DD0F9890);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v12 = _swift_stdlib_malloc_size(v11);
  if (!v9)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 - v10 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11_18((v12 - v10) / v9);
LABEL_17:
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270) - 8) + 80);
  if (v1)
  {
    sub_1DCD3F484();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DCC21190()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24B0, &qword_1DD0E5310);
      v8 = OUTLINED_FUNCTION_14_15();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_6_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCD44350(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC21250()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24B8, &qword_1DD0E5318);
      v8 = OUTLINED_FUNCTION_14_15();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_6_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F544(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24C0, qword_1DD0E5320);
    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC21320()
{
  OUTLINED_FUNCTION_10_15();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24A8, &qword_1DD0E5278);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v9);
      OUTLINED_FUNCTION_11_18(v10 / 8);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F5B4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC21414(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 24);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC21510()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v8);
      OUTLINED_FUNCTION_11_18(v9 / 64);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F464(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC21610(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_17();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_7();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_14();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1DCC217C4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2458, &qword_1DD0E5220);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8) + 80);
  if (v5)
  {
    sub_1DCD3F630();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DCC21990(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DCC224D0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DCC219FC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DCC219FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD0DF02C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD0DE38C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DCC21BB8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DCC21AF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DCC21AF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1DD0DF0AC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DCC21BB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1DD0DF0AC();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1DD0DF0AC()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1DD0DF0AC() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1DCE18BB0();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1DCE18BB0();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1DCC221EC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1DCC220C0(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1DCC220C0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DCC22390(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DCC221EC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DCC221EC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1DCB341E4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1DD0DF0AC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1DCB341E4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1DD0DF0AC() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1DCC223A4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1DCC223D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2430, &unk_1DD0E51F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1DCC22514()
{
  result = qword_1ECCA2428;
  if (!qword_1ECCA2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2428);
  }

  return result;
}

void sub_1DCC22568(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1DCC22578(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int128 *a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v42 = a7;
  v43 = a8;
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v36 = a13;
  v37 = a12;
  v14 = *(a11 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v36 - v21;
  v23 = *(a10 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v20, v25);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v36 - v30;
  (*(v23 + 32))(&v36 - v30, v32, a10);
  (*(v14 + 32))(v22, a6, a11);
  v33 = swift_allocObject();
  (*(v23 + 16))(v28, v31, a10);
  (*(v14 + 16))(v18, v22, a11);
  v34 = sub_1DCC227F4(v38, v39, v40, v41, v28, v18, v42, v43, v33, a10, a11, v37, v36);
  (*(v14 + 8))(v22, a11);
  (*(v23 + 8))(v31, a10);
  return v34;
}

uint64_t sub_1DCC227F4(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int128 *a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(a9 + 256) = a10;
  *(a9 + 264) = a12;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a9 + 232));
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1Tm, a5, a10);
  *(a9 + 136) = a11;
  *(a9 + 144) = a13;
  v20 = __swift_allocate_boxed_opaque_existential_1Tm((a9 + 112));
  (*(*(a11 - 8) + 32))(v20, a6, a11);
  *(a9 + 272) = 0;
  *(a9 + 280) = -1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  sub_1DCAFF9E8(a3, a9 + 32);
  sub_1DCAFF9E8(a4, a9 + 72);
  sub_1DCAFF9E8(a7, a9 + 152);
  sub_1DCAFF9E8(a8, a9 + 192);
  return a9;
}

BOOL AnyValueFlow<A>.attemptToOverrideProtectedAppCheckClient(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DCC22DC8(v4, v1, v2, v3);
}

unint64_t sub_1DCC22998(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000025, 0x80000001DD1147D0);
    MEMORY[0x1E12A6780](a1, a2);
    v7 = OUTLINED_FUNCTION_1_18();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1DD0DEC1C();
    v5 = OUTLINED_FUNCTION_1_18();
    MEMORY[0x1E12A6780](v5);
    sub_1DD0DD1FC();
    sub_1DCC234E0();
    v6 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v6);

    v7 = 41;
    v8 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x1E12A6780](v7, v8);
    return 0;
  }

  if (a1 | a2)
  {
    return 0xD00000000000004CLL;
  }

  else
  {
    return 0xD00000000000005BLL;
  }
}

BOOL AnyAppResolutionFlow.attemptToOverrideProtectedAppCheckClient(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24C8, &qword_1DD0E5350);
  sub_1DCEBDBC4(&v22, v2, v2);
  v3 = v23;
  if (v23)
  {
    sub_1DCAFF9E8(&v22, v24);
    sub_1DCB17CA0(a1, &v22);
    v4 = v25;
    v5 = v26;
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    (*(v5 + 16))(&v22, v4, v5);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DCB17CA0(a1, &v22);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      sub_1DCB17CA0(&v22, &v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA24D8, &unk_1DD0E5360);
      v11 = sub_1DD0DE02C();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      v14 = sub_1DCB10E9C(v11, v13, &v21);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "App resolution flow conforms to ProtectedAppCheckClientOverridable. It's ProtectedAppCheckClient has been set to %s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A8390](v10, -1, -1);
      MEMORY[0x1E12A8390](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_1DCC230E8(&v22);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "App resolution flow does not conform to ProtectedAppCheckClientOverridable. Cannot override.", v18, 2u);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }
  }

  return v3 != 0;
}

BOOL sub_1DCC22DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = a3;
  v33[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v33);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  v8 = *(a2 + 32);
  sub_1DCC90B54(&v28);
  v9 = v29;
  if (v29)
  {
    sub_1DCAFF9E8(&v28, v30);
    sub_1DCB17CA0(v33, &v28);
    v10 = v31;
    v11 = v32;
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    (*(v11 + 16))(&v28, v10, v11);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    sub_1DCB17CA0(v33, &v28);
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      sub_1DCB17CA0(&v28, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA24D8, &unk_1DD0E5360);
      v17 = sub_1DD0DE02C();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      v20 = sub_1DCB10E9C(v17, v19, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "App resolution flow conforms to ProtectedAppCheckClientOverridable. It's ProtectedAppCheckClient has been set to %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A8390](v16, -1, -1);
      MEMORY[0x1E12A8390](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    sub_1DCC230E8(&v28);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "App resolution flow does not conform to ProtectedAppCheckClientOverridable. Cannot override.", v24, 2u);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v9 != 0;
}

uint64_t sub_1DCC230E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24D0, &qword_1DD0E5358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCC2315C(unint64_t a1, void *a2)
{
  switch(a1 >> 62)
  {
    case 1uLL:

      v3 = a2;

      goto LABEL_7;
    case 2uLL:
      v3 = (a1 & 0x3FFFFFFFFFFFFFFFLL);

LABEL_7:

      break;
    case 3uLL:
      return;
    default:

      break;
  }
}

unint64_t *assignWithCopy for AppResolutionFlowResult(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCBF4C98(*a2);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_1DCC2315C(v5, v6);
  return a1;
}

unint64_t *assignWithTake for AppResolutionFlowResult(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_1DCC2315C(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppResolutionFlowResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 16))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for AppResolutionFlowResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1DCC2330C(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_1DCC23328(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
    result[1] = 0;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCC23364(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    sub_1DD0DCF8C();
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DCC23394(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DCC233B4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCC23364(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AppResolutionFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCC23364(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCC23394(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AppResolutionFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCC23394(v4, v5, v6);
  return a1;
}

uint64_t sub_1DCC234A0(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DCC234B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DCC234E0()
{
  result = qword_1EDE46330;
  if (!qword_1EDE46330)
  {
    sub_1DD0DD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46330);
  }

  return result;
}

uint64_t sub_1DCC23540()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1DCC24BD8();
  return v3;
}

uint64_t sub_1DCC23580()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_49_3();
  sub_1DCC2945C();
  return v3;
}

void AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v29 - v11;
  v13 = sub_1DD0DD2DC();
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14, v19);
  v21 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v29 - v23;
  sub_1DCC240DC(a1, &v29 - v23);
  (*(v16 + 16))(v21, v24, v13);
  v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v26 = swift_allocObject();
  (*(v16 + 32))(v26 + v25, v21, v13);
  v27 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_1DD0E5460;
  v28[5] = v26;
  v28[6] = a2;
  v28[7] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCC238E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v19 - v15;
  v17 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a7;
  v18[5] = 0;
  v18[6] = a2;
  v18[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC239CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)(a1);
}

uint64_t sub_1DCC23A78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)();
}

uint64_t AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DD2DC();
  v0[4] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  v0[5] = v5;
  v7 = *(v6 + 64) + 15;
  v0[6] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCC23BC8()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC240DC(v0[3], v0[6]);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_76_4(v1);

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCC23C58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC23D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)();
}

uint64_t AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t AppResolutionOnDeviceFlowStrategy<>.resolveApp(input:)()
{
  v0 = sub_1DD0DD2FC();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = *MEMORY[0x1E69CE228];
  v11 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_2(v11);
  (*(v12 + 104))(v9, v10);
  v13 = *MEMORY[0x1E69CE240];
  v14 = *(v3 + 104);
  v15 = OUTLINED_FUNCTION_67_5();
  v16(v15);
  v17 = type metadata accessor for AppResolutionAction();
  v18 = OUTLINED_FUNCTION_73_1(v17);
  v19 = OUTLINED_FUNCTION_74_3(v18, OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result);
  v20(v19);
  *(v18 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
  return v18;
}

uint64_t static AppResolutionAction.noAppFound()()
{
  v0 = sub_1DD0DD2FC();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = *MEMORY[0x1E69CE228];
  v11 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_2(v11);
  (*(v12 + 104))(v9, v10);
  v13 = *MEMORY[0x1E69CE240];
  v14 = *(v3 + 104);
  v15 = OUTLINED_FUNCTION_67_5();
  v16(v15);
  v17 = type metadata accessor for AppResolutionAction();
  v18 = OUTLINED_FUNCTION_73_1(v17);
  v19 = OUTLINED_FUNCTION_74_3(v18, OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result);
  v20(v19);
  *(v18 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
  return v18;
}

uint64_t sub_1DCC240DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DD2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v4);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x1E69CE240])
  {
    (*(v5 + 8))(v9, v4);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  (*(v5 + 96))(v9, v4);
  v10 = sub_1DD0DD2DC();
  return (*(*(v10 - 8) + 32))(a2, v9, v10);
}

uint64_t sub_1DCC243C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCC24464()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t sub_1DCC244FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1);
}

uint64_t sub_1DCC245A8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput();
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v2[7];
  v5 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_52_3(v5);
  v6 = v2[9];
  v7 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_52_3(v7);
  v8 = v2[8];
  v9 = *MEMORY[0x1E69D0678];
  v10 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v10);
  (*(v11 + 104))(boxed_opaque_existential_1Tm + v8, v9);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCC33634(v0 + 16, (boxed_opaque_existential_1Tm + 11), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_29();

  return v12();
}

uint64_t sub_1DCC2470C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)();
}

uint64_t AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DD2DC();
  v0[4] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  v0[5] = v5;
  v7 = *(v6 + 64) + 15;
  v0[6] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCC2485C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC240DC(v0[3], v0[6]);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_76_4(v1);

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCC248EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC249E4()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_82_1();
  v1(v0);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC24A50()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_1();
  v2(v1);

  OUTLINED_FUNCTION_29();
  v4 = *(v0 + 64);

  return v3();
}

uint64_t sub_1DCC24ABC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)();
}

uint64_t AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t sub_1DCC24BD8()
{
  OUTLINED_FUNCTION_13();
  (*(*(*(v2 + 80) - 8) + 32))(v0 + *(v1 + 96));
  return v0;
}

uint64_t sub_1DCC24C44()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v0;
  OUTLINED_FUNCTION_13();
  v1[15] = v3;
  v5 = *(v4 + 80);
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCC24D28()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(**(v0 + 112) + 96);
  v4 = *(*(v0 + 136) + 16);
  v5 = OUTLINED_FUNCTION_67_5();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2588, &qword_1DD0E5A10);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 104);
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *(v8 + 16) = v0 + 16;
    *(v8 + 24) = v7;
    v9 = *(MEMORY[0x1E69E88D0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    type metadata accessor for AppResolutionAction();
    *v10 = v0;
    v10[1] = sub_1DCC24F30;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 104);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA2590, &qword_1DD0E5A18);
    (*(*(v12 + 88) + 24))(v13, v11);
    v14 = *(v0 + 144);

    v15 = OUTLINED_FUNCTION_129();

    return v16(v15);
  }
}

uint64_t sub_1DCC24F30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC25030()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[18];

  v3 = OUTLINED_FUNCTION_129();

  return v4(v3);
}

uint64_t sub_1DCC25094(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2598, &qword_1DD0E5A20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v6);
  (*(v13 + 8))(a3, sub_1DCC337F8, v15, v12, v13);
}

uint64_t sub_1DCC25268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25280()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC2534C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(v5[11] + 32))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC254F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25510()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC255DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(v5[11] + 40))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC25788(uint64_t a1)
{
  sub_1DCB09970(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCC25828(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25840()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC2590C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(v5[11] + 48))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC25AB8()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_78_5(v3, v4, *(*(v2 + 88) + 8));
  v6 = *(v5 + 80);
  return v7();
}

uint64_t sub_1DCC25B1C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25B34()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC25C00(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 8) + 16))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC25DB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25DC8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC25E94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 8) + 24))(a3, sub_1DCC3376C, v14, v5[10]);
}

uint64_t sub_1DCC26044(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC2605C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC26128(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 8) + 32))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC262D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC262F0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC263BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 8) + 40))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC2656C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26584()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC26650(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 8) + 48))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC26800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26818()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_52_5(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCC268F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(*(v6[11] + 8) + 56))(a3, v18, sub_1DCC33878, v15, v6[10]);
}

uint64_t sub_1DCC26AB0()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_78_5(v3, v4, *(*(v2 + 88) + 16));
  v6 = *(v5 + 80);
  return v7();
}

uint64_t sub_1DCC26B14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26B2C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC26BF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 16) + 16))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC26DA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26DC0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC26E8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 16) + 24))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC2703C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC27054()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC27120(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 16) + 32))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC272D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC272E8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC273B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(*(v5[11] + 16) + 40))(a3, sub_1DCC33878, v14, v5[10]);
}

uint64_t sub_1DCC27564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC2757C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_52_5(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCC27658()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCC27774(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(*(v6[11] + 16) + 48))(a3, v18, sub_1DCC33878, v15, v6[10]);
}

uint64_t sub_1DCC27948()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB47434;

  return sub_1DCC24C44();
}

uint64_t sub_1DCC279E0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC25268(a1, a2);
}

uint64_t sub_1DCC27A8C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC254F8(a1, a2);
}

uint64_t sub_1DCC27B38(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC25828(a1, a2);
}

uint64_t sub_1DCC27C08(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC25B1C(a1, a2);
}

uint64_t sub_1DCC27CB4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC25DB0(a1, a2);
}

uint64_t sub_1DCC27D60(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC26044(a1, a2);
}

uint64_t sub_1DCC27E0C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC262D8(a1, a2);
}

uint64_t sub_1DCC27EB8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC2656C(a1, a2);
}

uint64_t sub_1DCC27F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCC26800(a1, a2, a3);
}

uint64_t sub_1DCC2803C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC26B14(a1, a2);
}