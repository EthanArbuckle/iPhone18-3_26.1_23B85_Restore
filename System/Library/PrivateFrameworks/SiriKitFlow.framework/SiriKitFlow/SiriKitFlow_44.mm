uint64_t sub_1DCF3AEE4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1DCF3A878(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  sub_1DCF3A6B8(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t sub_1DCF3AF58(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  sub_1DCF3A6B8(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t sub_1DCF3AFA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) >> 3) & 0xFFFFFFC0 | (*(a1 + 24) >> 2);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1DCF3AFEC(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (8 * -a2) & 0x7FFFFFE00 | (4 * (-a2 & 0x3FLL));
      *(result + 32) = 0;
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

uint64_t sub_1DCF3B07C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF3B0E8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00) - 8) + 80);

  return sub_1DCF3A504(a1);
}

uint64_t sub_1DCF3B180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DCF3B1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveConfirmProcessingResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCF3B234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveConfirmProcessingResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCF3B298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCF3B300(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCF3A998(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_1DCF3B34C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCF3A998(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCF3A7D4(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCF3B3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCF3A7D4(v4, v5, v6);
  return a1;
}

uint64_t sub_1DCF3B40C()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  *(v1 + 128) = v6;
  *(v1 + 136) = v5;
  *(v1 + 120) = v7;
  v8 = sub_1DD0DD85C();
  *(v1 + 144) = v8;
  v9 = *(v8 - 8);
  *(v1 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *v4;
  v13 = v4[1];
  *(v1 + 168) = v11;
  *(v1 + 176) = v12;
  *(v1 + 184) = v13;
  v14 = *(v4 + 2);
  *(v1 + 192) = *(v4 + 1);
  *(v1 + 208) = v14;
  v15 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void sub_1DCF3B508()
{
  v6 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v5 = sub_1DD0DD8FC();
  v0[28] = OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF3B838()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  *(v1 + 248) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF3B924()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 248);
  if (v1)
  {
    if (v1 == 1)
    {
      if ([*(v0 + 128) _type] == 2)
      {
        v2 = [*(v0 + 128) _codableDescription];
        v3 = [v2 isEligibleForWidgets];

        if (v3)
        {
          v4 = *(v0 + 216);
          if ([objc_msgSend(swift_getObjCClassFromMetadata() alloc)])
          {
            objc_opt_self();
            OUTLINED_FUNCTION_75_0();
            v5 = swift_dynamicCastObjCClass();
            if (v5)
            {
              v7 = *(v0 + 120);
              v6 = *(v0 + 128);
              *v7 = v6;
              *(v7 + 8) = 0;
              *(v7 + 16) = v5;
              *(v7 + 24) = 0;
              v8 = v6;
              goto LABEL_15;
            }

            swift_unknownObjectRelease();
          }

          v39 = *(v0 + 224);
          v41 = *(v0 + 200);
          v40 = *(v0 + 208);
          v42 = *(v0 + 192);
          v43 = *(v0 + 176);
          sub_1DD0DCF8C();
        }
      }

      v23 = *(v0 + 224);
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v26);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_62();
      }

      v32 = *(v0 + 120);

      sub_1DCF41240(1);
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_64_17();
      v33 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000015, 0x80000001DD124C90);
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;
      *v32 = v33;
      *(v32 + 24) = 1;
    }

    else
    {
      v21 = *(v0 + 120);
      v20 = *(v0 + 128);
      *v21 = v20;
      *(v21 + 8) = 0;
      *(v21 + 16) = v1;
      *(v21 + 24) = 0;
      v22 = v20;
    }
  }

  else
  {
    v9 = *(v0 + 224);
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_23(v11))
    {
      v12 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v12);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_62();
    }

    v18 = *(v0 + 120);

    sub_1DCF41240(0);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v19 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000028, 0x80000001DD124D20);
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = v19;
    *(v18 + 24) = 1;
  }

LABEL_15:
  v34 = *(v0 + 232);
  v36 = *(v0 + 160);
  v35 = *(v0 + 168);
  sub_1DCF3DF18("intentHandle", 12, 2);

  OUTLINED_FUNCTION_29();

  return v37();
}

uint64_t sub_1DCF3BCE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1DCF3BD10, 0, 0);
}

uint64_t sub_1DCF3BD10()
{
  v2 = [*(v0 + 40) handleSelector];
  if (v2)
  {
    v3 = v2;
    if ([*(v0 + 32) respondsToSelector_])
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v4 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
      v5 = sub_1DD0DD8EC();
      v6 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v6))
      {
        v7 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v7);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v14 = *(v0 + 24);
      v13 = *(v0 + 32);

      [v13 methodForSelector_];
      v15 = swift_task_alloc();
      OUTLINED_FUNCTION_40_29(v15);
      v16 = *(MEMORY[0x1E69E88D0] + 4);
      v17 = swift_task_alloc();
      *(v0 + 56) = v17;
      sub_1DCB10E5C(0, &qword_1EDE461E0, 0x1E696E8A0);
      OUTLINED_FUNCTION_30_35();
      *v17 = v18;
      v17[1] = sub_1DCF3BF00;
      v19 = OUTLINED_FUNCTION_9_69();

      return MEMORY[0x1EEE6DDE0](v19, v20, v21, 0xD000000000000022, v22, v23, v1, v24);
    }

    v2 = 1;
  }

  v25 = *(v0 + 8);

  return v25(v2);
}

uint64_t sub_1DCF3BF00()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF3C000()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  *(v1 + 136) = v6;
  *(v1 + 144) = v5;
  *(v1 + 120) = v7;
  *(v1 + 128) = v8;
  *(v1 + 112) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  *(v1 + 152) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *v4;
  v14 = v4[1];
  *(v1 + 184) = v12;
  *(v1 + 192) = v13;
  *(v1 + 200) = v14;
  v15 = *(v4 + 2);
  *(v1 + 208) = *(v4 + 1);
  *(v1 + 224) = v15;
  v16 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

void sub_1DCF3C0F8()
{
  v6 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  v5 = sub_1DD0DD8FC();
  v0[30] = __swift_project_value_buffer(v5, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF3C4EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[33];
  v3 = v1[32];
  v4 = v1[31];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  swift_unknownObjectRelease();

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF3C610()
{
  OUTLINED_FUNCTION_125();
  v44 = v1;
  v2 = v1[19];
  sub_1DCB09910(v1[14], v1[23], &qword_1ECCAABD0, &qword_1DD0EA240);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v1[23];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1DCB0E9D8(v1[23], &qword_1ECCAABD0, &qword_1DD0EA240);
  }

  else
  {
    type metadata accessor for ResolveConfirmProcessingResult();
    OUTLINED_FUNCTION_75_0();
    v5 = swift_getEnumCaseMultiPayload();
    sub_1DCF410B4(v4);
    if (v5 == 1)
    {
      v6 = v1[30];
      v7 = sub_1DD0DD8EC();
      v8 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v8))
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  v9 = v1[19];
  sub_1DCB09910(v1[14], v1[22], &qword_1ECCAABD0, &qword_1DD0EA240);
  v10 = swift_getEnumCaseMultiPayload();
  v11 = v1[22];
  if (v10 == 1)
  {
    sub_1DCB0E9D8(v1[22], &qword_1ECCAABD0, &qword_1DD0EA240);
LABEL_9:
    v13 = v1[30];
    sub_1DCB09910(v1[14], v1[21], &qword_1ECCAABD0, &qword_1DD0EA240);
    v7 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6DC();
    v15 = OUTLINED_FUNCTION_23(v14);
    v16 = v1[21];
    if (!v15)
    {

      sub_1DCB0E9D8(v16, &qword_1ECCAABD0, &qword_1DD0EA240);
      goto LABEL_16;
    }

    v18 = v1[19];
    v17 = v1[20];
    OUTLINED_FUNCTION_151();
    v19 = OUTLINED_FUNCTION_10_0();
    v43 = v19;
    *v0 = 136315138;
    sub_1DCB09910(v16, v17, &qword_1ECCAABD0, &qword_1DD0EA240);
    v20 = sub_1DD0DE02C();
    v22 = v21;
    sub_1DCB0E9D8(v16, &qword_1ECCAABD0, &qword_1DD0EA240);
    v23 = sub_1DCB10E9C(v20, v22, &v43);

    *(v0 + 4) = v23;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_92_0();
    goto LABEL_14;
  }

  type metadata accessor for ResolveConfirmProcessingResult();
  OUTLINED_FUNCTION_75_0();
  v12 = swift_getEnumCaseMultiPayload();
  sub_1DCF410B4(v11);
  if (v12)
  {
    goto LABEL_9;
  }

  v29 = v1[30];
  v7 = sub_1DD0DD8EC();
  v30 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v30))
  {
LABEL_13:
    v31 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v31);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v32, v33, v34, v35, v36, 2u);
LABEL_14:
    OUTLINED_FUNCTION_62();
  }

LABEL_15:

LABEL_16:
  v38 = v1[22];
  v37 = v1[23];
  v40 = v1[20];
  v39 = v1[21];

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCF3C910(void *a1, uint64_t a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  v5 = __swift_project_value_buffer(v4, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "ResolveConfirmHandleExecutor.resolveConfirmIntent slotNamesToSlotDescription", v8, 2u);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v9 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v14 = sub_1DCF41110(v13, v12, a1);
      if (v14)
      {
        v15 = v14;

        v16 = v15;
        MEMORY[0x1E12A6920]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD0DE33C();
        }

        sub_1DD0DE3AC();

        v9 = v28;
      }

      else
      {

        v17 = sub_1DD0DD8EC();
        v18 = sub_1DD0DE6EC();

        if (os_log_type_enabled(v17, v18))
        {
          v26 = v9;
          v19 = a1;
          v20 = v5;
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v27 = v22;
          *v21 = 136315138;
          v23 = sub_1DCB10E9C(v13, v12, &v27);

          *(v21 + 4) = v23;
          _os_log_impl(&dword_1DCAFC000, v17, v18, "ResolveConfirmHandleExecutor.resolveConfirmIntent missing intentSlotDescription for %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          MEMORY[0x1E12A8390](v22, -1, -1);
          v24 = v21;
          v5 = v20;
          a1 = v19;
          v9 = v26;
          MEMORY[0x1E12A8390](v24, -1, -1);
        }

        else
        {
        }
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return v9;
}

uint64_t sub_1DCF3CBC8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 240) = v18;
  *(v9 + 248) = v8;
  *(v9 + 224) = a8;
  *(v9 + 232) = v17;
  *(v9 + 208) = a6;
  *(v9 + 216) = a7;
  *(v9 + 192) = a4;
  *(v9 + 200) = a5;
  *(v9 + 176) = a1;
  *(v9 + 184) = a2;
  v11 = sub_1DD0DD85C();
  *(v9 + 256) = v11;
  v12 = *(v11 - 8);
  *(v9 + 264) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  v14 = a3[1];
  *(v9 + 16) = *a3;
  *(v9 + 32) = v14;
  *(v9 + 48) = a3[2];

  return MEMORY[0x1EEE6DFA0](sub_1DCF3CCB4, 0, 0);
}

uint64_t sub_1DCF3CCB4()
{
  OUTLINED_FUNCTION_125();
  v3 = (v1 + 16);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  if (v5 >> 1 == v4)
  {
    v6 = *(v1 + 192);
    v7 = qword_1EDE4F900;
    swift_unknownObjectRetain();
    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v10))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v11);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_62();
    }

    v17 = *(v1 + 224);

    if (v17 && (v18 = [*(v1 + 224) name]) != 0)
    {
      v19 = v18;
      v20 = sub_1DD0DDFBC();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v38 = *(v1 + 232);
    v39 = *(v1 + 184);
    type metadata accessor for ParameterResolutionResult();
    swift_allocObject();
    v40 = sub_1DCB35974(v39, v38, v20, v22, 0);
    *(v1 + 352) = v40;
    v41 = *(v1 + 32);
    *(v1 + 112) = *v3;
    *(v1 + 128) = v41;
    *(v1 + 144) = *(v1 + 48);

    v42 = v39;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v1 + 360) = v43;
    *v43 = v44;
    v43[1] = sub_1DCF3D604;
    v45 = *(v1 + 240);
    v46 = *(v1 + 248);
    v47 = *(v1 + 176);
    v48 = *(v1 + 184);

    return sub_1DCF3D754(v47, v48, (v1 + 112), v40);
  }

  if ((v5 >> 1) <= v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1 + 160;
  v23 = *(v1 + 232);
  v24 = *(v1 + 192);
  v25 = *(*(v1 + 200) + 8 * v4);
  *(v1 + 280) = v25;
  *(v1 + 288) = sub_1DCB54800(v4 + 1);
  *(v1 + 296) = v26;
  *(v1 + 304) = v27;
  *(v1 + 312) = v28;
  *(v1 + 160) = v23;
  v29 = qword_1EDE4EC80;
  v0 = v25;

  if (v29 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_14_5();
  }

  v30 = *(v1 + 272);
  v31 = *(v1 + 184);
  v32 = sub_1DD0DD88C();
  v49 = *(v1 + 240);
  OUTLINED_FUNCTION_92(v32, qword_1EDE57DD0);
  v33 = swift_task_alloc();
  *(v1 + 320) = v33;
  *(v33 + 16) = v49;
  *(v33 + 32) = v0;
  *(v33 + 40) = v31;
  *(v33 + 48) = v3;
  *(v33 + 56) = v2;
  sub_1DD0DD84C();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 328) = v34;
  *v34 = v35;
  v34[1] = sub_1DCF3CFFC;
  v36 = *(v1 + 272);

  return sub_1DCF113C0();
}

void sub_1DCF3CFFC()
{
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[40];
    (*(v3[33] + 8))(v3[34], v3[32]);

    MEMORY[0x1EEE6DFA0](sub_1DCF3D144, 0, 0);
  }
}

id sub_1DCF3D144()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 168);
  if (v1 == 5)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v21))
    {
      v22 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v22);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_62();
    }

    v28 = *(v0 + 280);

    v29 = *(v0 + 160);
    result = [v28 name];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = result;
    v32 = *(v0 + 280);
    v31 = *(v0 + 288);
    v33 = *(v0 + 176);
    v34 = *(v0 + 184);
    v35 = sub_1DD0DDFBC();
    v37 = v36;
    sub_1DCF4122C(5uLL);

    type metadata accessor for ParameterResolutionResult();
    swift_allocObject();
    v38 = sub_1DCB35974(v34, v29, v35, v37, 0);

    v39 = v34;
    swift_unknownObjectRelease();
    *v33 = v39;
    v33[1] = v38;
    type metadata accessor for ResolveConfirmProcessingResult();
    OUTLINED_FUNCTION_35_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
    OUTLINED_FUNCTION_35_30();
    v40 = v39;
  }

  else
  {
    if (v1 == 4)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v2 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
      v3 = sub_1DD0DD8EC();
      v4 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v5);
        _os_log_impl(&dword_1DCAFC000, v3, v4, "ResolveConfirmHandleExecutor.resolveConfirmIntent continue to next slot", 4, 2u);
        OUTLINED_FUNCTION_62();
      }

      v6 = *(v0 + 280);

      v7 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v7;
      *(v0 + 96) = *(v0 + 48);
      *(v0 + 336) = *(v0 + 160);
      v8 = v6;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 344) = v9;
      *v9 = v10;
      v9[1] = sub_1DCF3D48C;
      v11 = *(v0 + 304);
      v12 = *(v0 + 312);
      v13 = *(v0 + 288);
      v14 = *(v0 + 296);
      v15 = *(v0 + 248);
      v16 = *(v0 + 176);
      v17 = *(v0 + 184);
      v47 = *(v0 + 240);

      return sub_1DCF3CBC8(v16, v17, v0 + 64, v13, v14, v11, v12, v6);
    }

    v41 = *(v0 + 288);
    v42 = *(v0 + 176);

    swift_unknownObjectRelease();
    *v42 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
    swift_storeEnumTagMultiPayload();
    v43 = *(v0 + 160);
  }

  v44 = *(v0 + 272);

  OUTLINED_FUNCTION_29();

  return v45();
}

uint64_t sub_1DCF3D48C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 344);
  v3 = *(v1 + 280);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF3D588()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 336);
  v2 = *(v0 + 288);

  sub_1DCF4122C(4uLL);
  swift_unknownObjectRelease();

  v3 = *(v0 + 272);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCF3D604()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 360);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF3D6E8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[44];
  v2 = v0[24];

  swift_unknownObjectRelease();
  v3 = v0[34];

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCF3D754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  v7 = type metadata accessor for ResolveConfirmProcessingResult();
  *(v5 + 104) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_1DD0DD85C();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a3;
  v14 = a3[1];
  *(v5 + 144) = v12;
  *(v5 + 152) = v13;
  *(v5 + 160) = v14;
  v15 = *(a3 + 2);
  *(v5 + 168) = *(a3 + 1);
  *(v5 + 184) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1DCF3D86C, 0, 0);
}

uint64_t sub_1DCF3D86C()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v11 = *(v0 + 144);
  v12 = sub_1DD0DD88C();
  __swift_project_value_buffer(v12, qword_1EDE57DD0);
  sub_1DD0DD84C();
  v13 = sub_1DD0DD87C();
  v14 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v15 = *(v0 + 144);
    v16 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v16);
    v17 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v13, v14, v17, "intentConfirm", "", v1, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v20 = *(v0 + 136);
  v21 = *(v0 + 144);
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  v31 = *(v0 + 184);
  v32 = *(v0 + 168);

  (*(v23 + 16))(v20, v21, v22);
  v24 = sub_1DD0DD8CC();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 208) = OUTLINED_FUNCTION_13_64();
  (*(v23 + 8))(v21, v22);
  *(v0 + 16) = v19;
  *(v0 + 24) = v18;
  *(v0 + 32) = v32;
  *(v0 + 48) = v31;
  v27 = swift_task_alloc();
  *(v0 + 216) = v27;
  *v27 = v0;
  v27[1] = sub_1DCF3DAC4;
  v28 = *(v0 + 96);
  v29 = *(v0 + 80);

  return sub_1DCF3E1B4(v0 + 16, v29);
}

uint64_t sub_1DCF3DAC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 224) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF3DBB0()
{
  OUTLINED_FUNCTION_41();
  v32 = v0;
  v1 = v0[28];
  if (v1 < 2)
  {
    v2 = v0[25];
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v5);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_62();
    }

    v11 = v0[24];

    if ([objc_msgSend(swift_getObjCClassFromMetadata() alloc)])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_75_0();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v15 = v0[13];
        v14 = v0[14];
        v17 = v0[10];
        v16 = v0[11];
        v18 = v0[9];
        sub_1DCF41240(v0[28]);
        *v14 = v17;
        v14[1] = v16;
        v14[2] = v13;
        swift_storeEnumTagMultiPayload();
        v19 = OUTLINED_FUNCTION_15_58();
        sub_1DCB3992C(v19, v18, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
        swift_storeEnumTagMultiPayload();
        sub_1DD0DCF8C();
      }

      swift_unknownObjectRelease();
    }

    v27 = v0[25];
    v29 = v0[22];
    v28 = v0[23];
    v30 = v0[21];
    v31 = v0[19];
    sub_1DD0DCF8C();
  }

  v21 = v0[13];
  v22 = v0[14];
  v23 = v0[11];
  v24 = v0[9];
  *v22 = v0[10];
  v22[1] = v23;
  v22[2] = v1;
  swift_storeEnumTagMultiPayload();
  v25 = OUTLINED_FUNCTION_15_58();
  sub_1DCB3992C(v25, v24, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  OUTLINED_FUNCTION_35_30();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF3DF18(unint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v4 = sub_1DD0DD89C();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = sub_1DD0DD85C();
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v18 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v18, qword_1EDE57DD0);
  v19 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  v21 = sub_1DD0DE7EC();
  result = sub_1DD0DE92C();
  if ((result & 1) == 0)
  {

    return (*(v12 + 8))(v17, v9);
  }

  if ((v22 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
LABEL_10:
      sub_1DD0DCF8C();
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DCF3E1B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1DCF3E1DC, 0, 0);
}

uint64_t sub_1DCF3E1DC()
{
  v2 = [*(v0 + 40) confirmSelector];
  if (v2)
  {
    v3 = v2;
    if ([*(v0 + 32) respondsToSelector_])
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v4 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
      v5 = sub_1DD0DD8EC();
      v6 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v6))
      {
        v7 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v7);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v14 = *(v0 + 24);
      v13 = *(v0 + 32);

      [v13 methodForSelector_];
      v15 = swift_task_alloc();
      OUTLINED_FUNCTION_40_29(v15);
      v16 = *(MEMORY[0x1E69E88D0] + 4);
      v17 = swift_task_alloc();
      *(v0 + 56) = v17;
      sub_1DCB10E5C(0, &qword_1EDE461E0, 0x1E696E8A0);
      OUTLINED_FUNCTION_30_35();
      *v17 = v18;
      v17[1] = sub_1DCF3BF00;
      v19 = OUTLINED_FUNCTION_9_69();

      return MEMORY[0x1EEE6DDE0](v19, v20, v21, 0xD000000000000023, v22, v23, v1, v24);
    }

    v2 = 1;
  }

  v25 = *(v0 + 8);

  return v25(v2);
}

uint64_t sub_1DCF3E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v13 = a5[1];
  *(v7 + 16) = *a5;
  *(v7 + 32) = v13;
  *(v7 + 48) = a5[2];
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_1DCF3E4B0;

  return sub_1DCF3E594(a1, a3, a4, v7 + 16, a6, a7);
}

uint64_t sub_1DCF3E4B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF3E594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = v6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v10 = *(a4 + 8);
  *(v7 + 16) = *a4;
  *(v7 + 24) = v10;
  v11 = *(a4 + 32);
  *(v7 + 32) = *(a4 + 16);
  *(v7 + 48) = v11;
  v12 = swift_task_alloc();
  *(v7 + 112) = v12;
  *v12 = v7;
  v12[1] = sub_1DCF3E660;

  return sub_1DCF3EB5C(a2, v7 + 16, a3);
}

uint64_t sub_1DCF3E660()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1DCF3E74C()
{
  OUTLINED_FUNCTION_41();
  v56 = v0;
  v2 = *(v0 + 120);
  if (v2)
  {
    if (v2 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v3 = *(v0 + 72);
      v4 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
      v5 = v3;
      v6 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();

      if (OUTLINED_FUNCTION_245())
      {
        v7 = *(v0 + 72);
        OUTLINED_FUNCTION_151();
        v8 = OUTLINED_FUNCTION_10_0();
        v55 = v8;
        *v5 = 136315138;
        v9 = sub_1DCF4B96C(v7);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v9 = 4999502;
          v11 = 0xE300000000000000;
        }

        v12 = sub_1DCB10E9C(v9, v11, &v55);

        *(v5 + 1) = v12;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_62();
      }

      v18 = 4;
    }

    else
    {
      sub_1DCF412A0(*(v0 + 120));
      v34 = qword_1EDE4F900;
      swift_unknownObjectRetain();
      if (v34 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v38);
        _os_log_impl(&dword_1DCAFC000, v36, v37, "ResolveConfirmHandleExecutor.resolveConfirmIntent slot resolver returned, attempt update intent", v1, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v39 = *(v0 + 104);
      v40 = *(v0 + 72);

      v41 = sub_1DCF3F0C4();
      result = [v40 name];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v43 = result;
      v44 = sub_1DD0DDFBC();
      v46 = v45;

      v47 = *(v0 + 88);
      if (v41)
      {
        v48 = *v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = *v47;
        sub_1DCB361D4(v41, v44, v46, isUniquelyReferenced_nonNull_native);

        *v47 = v55;
      }

      else
      {
        v50 = *(v0 + 88);
        sub_1DCF40C4C(v44, v46);
      }

      v51 = *(v0 + 120);
      v52 = *(v0 + 96);
      v53 = *(v0 + 104);
      LOBYTE(v53) = sub_1DCF3F3C8(*(v0 + 80), v2, *(v0 + 72));
      sub_1DCF412B0(v51);
      sub_1DCF412B0(v51);
      sub_1DCF412B0(v51);
      if (v53)
      {
        v18 = 4;
      }

      else
      {
        v18 = 5;
      }
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = *(v0 + 72);
    v20 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
    v21 = v19;
    v22 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_245())
    {
      v23 = *(v0 + 72);
      OUTLINED_FUNCTION_151();
      v24 = OUTLINED_FUNCTION_10_0();
      v55 = v24;
      *v21 = 136315138;
      v25 = sub_1DCF4B96C(v23);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v25 = 4999502;
        v27 = 0xE300000000000000;
      }

      v28 = sub_1DCB10E9C(v25, v27, &v55);

      *(v21 + 1) = v28;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_62();
    }

    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v18 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000015, 0x80000001DD124C90);
  }

  **(v0 + 64) = v18;
  OUTLINED_FUNCTION_29();

  return v54();
}

uint64_t sub_1DCF3EB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = *(a2 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1DCF3EB84, 0, 0);
}

uint64_t sub_1DCF3EB84()
{
  OUTLINED_FUNCTION_125();
  v53 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 24);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_52_0();
    v52 = v7;
    *v3 = 136315138;
    v8 = sub_1DCF4B96C(v6);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 4999502;
      v10 = 0xE300000000000000;
    }

    v11 = sub_1DCB10E9C(v8, v10, &v52);

    *(v3 + 1) = v11;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "ResolveConfirmHandleExecutor.resolveSlots resolve slot : %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    OUTLINED_FUNCTION_92_0();
  }

  v12 = [*(v0 + 24) resolveSelector];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = &selRef_setResetFlowTaskState_;
  v15 = v12;
  if ([*(v0 + 40) respondsToSelector_])
  {
    goto LABEL_15;
  }

  v16 = [*(v0 + 24) deprecatedResolveSelector];
  if (!v16 || (v15 = v16, ![*(v0 + 40) respondsToSelector_]))
  {
LABEL_20:
    v48 = *(v0 + 8);
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X2, X16 }
  }

  v14 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v14, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52 = v19;
    *v18 = 136315394;
    v20 = sub_1DD0DB19C();
    v22 = sub_1DCB10E9C(v20, v21, &v52);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_1DD0DB19C();
    v25 = sub_1DCB10E9C(v23, v24, &v52);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1DCAFC000, v14, v17, "ResolveConfirmHandleExecutor calling deprecated @selector(%s). In-process extension should implement proper @selector(%s).", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v19, -1, -1);
    OUTLINED_FUNCTION_37();
  }

LABEL_15:
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v27))
  {
    OUTLINED_FUNCTION_151();
    v28 = OUTLINED_FUNCTION_52_0();
    v52 = v28;
    *v14 = 136315138;
    v29 = sub_1DD0DB19C();
    v31 = sub_1DCB10E9C(v29, v30, &v52);

    *(v14 + 4) = v31;
    _os_log_impl(&dword_1DCAFC000, v26, v27, "ResolveConfirmHandleExecutor.resolveConfirmIntent calling selector (%s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1E12A8390](v28, -1, -1);
    OUTLINED_FUNCTION_92_0();
  }

  v33 = *(v0 + 32);
  v32 = *(v0 + 40);
  v34 = [v32 methodForSelector_];
  v35 = swift_task_alloc();
  *(v0 + 48) = v35;
  v35[2] = v34;
  v35[3] = v32;
  v35[4] = v13;
  v35[5] = v33;
  v36 = *(MEMORY[0x1E69E88D0] + 4);
  v37 = swift_task_alloc();
  *(v0 + 56) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAAF0, &qword_1DD103308);
  OUTLINED_FUNCTION_30_35();
  *v37 = v38;
  v37[1] = sub_1DCF3EFC4;
  OUTLINED_FUNCTION_9_69();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DDE0](v39, v40, v41, v42, v43, v44, v45, v46);
}

uint64_t sub_1DCF3EFC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF3F0C4()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAAF0, &qword_1DD103308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB90, &unk_1DD0E8AB0);
  if (swift_dynamicCast())
  {
    v0 = v17;
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
      _os_log_impl(&dword_1DCAFC000, v2, v3, "Found a multicardinal resolution result for parameter", v4, 2u);
      MEMORY[0x1E12A8390](v4, -1, -1);
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v6 = qword_1EDE4F900;
    if (v5)
    {
      v7 = v5;
      swift_unknownObjectRetain();
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v8, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v10 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1DCAFC000, v9, v10, "Found a single resolution result for parameter", v11, 2u);
        MEMORY[0x1E12A8390](v11, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v0 = swift_allocObject();
      *(v0 + 16) = xmmword_1DD0E15D0;
      *(v0 + 32) = v7;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v12 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v12, qword_1EDE57E00);
      v13 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1DCAFC000, v13, v14, "Unable to convert data provider into either multicardinal results or single results.", v15, 2u);
        MEMORY[0x1E12A8390](v15, -1, -1);
      }

      return 0;
    }
  }

  return v0;
}

uint64_t sub_1DCF3F3C8(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAAF0, &qword_1DD103308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB90, &unk_1DD0E8AB0);
  if (swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "ResolveConfirmHandleExecutor.updateIntent is an array", v8, 2u);
      MEMORY[0x1E12A8390](v8, -1, -1);
    }

    v9 = sub_1DCF3FD40(a1, v22, a3);
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = qword_1EDE4F900;
    if (v10)
    {
      v12 = v10;
      swift_unknownObjectRetain();
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v13, qword_1EDE57E00);
      v14 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DCAFC000, v14, v15, "ResolveConfirmHandleExecutor.updateIntent is single value", v16, 2u);
        MEMORY[0x1E12A8390](v16, -1, -1);
      }

      v9 = sub_1DCF40448(a1, v12, a3);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v17 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v17, qword_1EDE57E00);
      v18 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DCAFC000, v18, v19, "ResolveConfirmHandleExecutor.updateIntent unknown value type", v20, 2u);
        MEMORY[0x1E12A8390](v20, -1, -1);
      }

      v9 = 0;
    }
  }

  return v9 & 1;
}

void sub_1DCF3F70C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB10, &qword_1DD103318);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = aBlock - v14;
  (*(v11 + 16))(aBlock - v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v10);
  aBlock[4] = sub_1DCF412CC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DCF3F9F0;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);

  a2(a3, a4, a5, v18);
  _Block_release(v18);
}

uint64_t sub_1DCF3F8D0()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "ResolveConfirmHandleExecutor.resolveConfirmIntent responded", v3, 2u);
    MEMORY[0x1E12A8390](v3, -1, -1);
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB10, &qword_1DD103318);
  return sub_1DD0DE46C();
}

void sub_1DCF3F9F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCF3FA50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCF3FAB8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a2;
  v26 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAAA88, &qword_1DD1032E8);
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14, v19);
  v21 = &v25 - v20;
  (*(v16 + 16))(&v25 - v20, a1, v13);
  v22 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v23 = swift_allocObject();
  (*(v16 + 32))(v23 + v22, v21, v13);
  aBlock[4] = a7;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DCF3FA50;
  aBlock[3] = a8;
  v24 = _Block_copy(aBlock);

  v25(a3, a4, v26, v24);
  _Block_release(v24);
}

void sub_1DCF3FC5C()
{
  OUTLINED_FUNCTION_46_25();
  v1 = v0;
  v3 = v2;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v6))
  {
    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, v1, v7, 2u);
    OUTLINED_FUNCTION_37();
  }

  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAAA88, &qword_1DD1032E8);
  sub_1DD0DE46C();
  OUTLINED_FUNCTION_45_21();
}

uint64_t sub_1DCF3FD40(void *a1, uint64_t a2, void *a3)
{
  v47 = a1;
  v48 = a3;
  v52 = 0u;
  v53 = 0u;
  v4 = sub_1DCB08B14(a2);
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_29:
    if (*(v7 + 16))
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);

      sub_1DCB0E9D8(&v52, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      *&v52 = v7;
      *(&v53 + 1) = v25;
    }

    v5 = v48;
    if (qword_1EDE4F900 != -1)
    {
LABEL_51:
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DCAFC000, v27, v28, "ResolveConfirmHandleExecutor.updateIntentMultiValue applying value to intent", v29, 2u);
      MEMORY[0x1E12A8390](v29, -1, -1);
    }

    sub_1DCB09910(&v52, &v50, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    v30 = v51;
    sub_1DCB0E9D8(&v50, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    if (v30 || ![v5 isEnum])
    {
      sub_1DCB09910(&v52, &v50, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v34 = v51;
      if (v51)
      {
        v35 = __swift_project_boxed_opaque_existential_1(&v50, v51);
        v36 = *(v34 - 8);
        v37 = *(v36 + 64);
        MEMORY[0x1EEE9AC00](v35, v35);
        v39 = &v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v39);
        v40 = sub_1DD0DF09C();
        (*(v36 + 8))(v39, v34);
        __swift_destroy_boxed_opaque_existential_1Tm(&v50);
      }

      else
      {
        v40 = 0;
      }

      result = [v5 facadePropertyName];
      if (result)
      {
        v45 = result;

        [v47 setValue:v40 forKey:v45];
        swift_unknownObjectRelease();

        goto LABEL_48;
      }

      __break(1u);
    }

    else
    {
      v31 = sub_1DD0DE5BC();
      result = [v5 facadePropertyName];
      if (result)
      {
        v33 = result;

        [v47 setValue:v31 forKey:v33];

LABEL_48:
        sub_1DCB0E9D8(&v52, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        return 1;
      }
    }

    __break(1u);
    return result;
  }

  v5 = v4;
  v6 = 0;
  v49 = a2 & 0xFFFFFFFFFFFFFF8;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12A72C0](v6, a2);
    }

    else
    {
      if (v6 >= *(v49 + 16))
      {
        goto LABEL_50;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v11 = [v8 resolutionResultCode];
    if (v11 > 7)
    {
      goto LABEL_15;
    }

    if (((1 << v11) & 0xA0) == 0)
    {
      break;
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "ResolveConfirmHandleExecutor.updateIntentMultiValue not required", v15, 2u);
      MEMORY[0x1E12A8390](v15, -1, -1);
    }

LABEL_15:
LABEL_26:
    ++v6;
    if (v10 == v5)
    {
      goto LABEL_29;
    }
  }

  if (!v11)
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
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "ResolveConfirmHandleExecutor.updateIntentMultiValue success", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    v20 = [v9 resolvedValue];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v7 + 16);
      sub_1DCB1C394();
      v7 = v23;
    }

    v21 = *(v7 + 16);
    if (v21 >= *(v7 + 24) >> 1)
    {
      sub_1DCB1C394();
      v7 = v24;
    }

    *(v7 + 16) = v21 + 1;
    sub_1DCB20B30(&v50, (v7 + 32 * v21 + 32));
    goto LABEL_26;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v41 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v41, qword_1EDE57E00);
  v42 = sub_1DD0DD8EC();
  v43 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1DCAFC000, v42, v43, "ResolveConfirmHandleExecutor.updateIntentMultiValue requires user input", v44, 2u);
    MEMORY[0x1E12A8390](v44, -1, -1);
  }

  sub_1DCB0E9D8(&v52, &dword_1ECCA3CE0, &unk_1DD0E4F80);

  return 0;
}

id sub_1DCF40448(void *a1, id a2, void *a3)
{
  v42 = 0u;
  v43 = 0u;
  switch([a2 resolutionResultCode])
  {
    case 0uLL:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DCAFC000, v16, v17, "ResolveConfirmHandleExecutor.updateIntentSingleValue success", v18, 2u);
        MEMORY[0x1E12A8390](v18, -1, -1);
      }

      v19 = [a2 resolvedValue];
      sub_1DD0DEA6C();
      swift_unknownObjectRelease();
      sub_1DCB0E9D8(&v42, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v42 = v40;
      v43 = v41;
      goto LABEL_22;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 6uLL:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v6 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v6, qword_1EDE57E00);
      v7 = sub_1DD0DD8EC();
      v8 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DCAFC000, v7, v8, "ResolveConfirmHandleExecutor.updateIntentSingleValue requires user input", v9, 2u);
        MEMORY[0x1E12A8390](v9, -1, -1);
      }

      v10 = 0;
      goto LABEL_36;
    case 5uLL:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1DCAFC000, v21, v22, "ResolveConfirmHandleExecutor.updateIntentSingleValue not required", v23, 2u);
        MEMORY[0x1E12A8390](v23, -1, -1);
      }

      sub_1DCB0E9D8(&v42, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v42 = 0u;
      v43 = 0u;
      goto LABEL_22;
    case 7uLL:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v11 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v11, qword_1EDE57E00);
      v12 = sub_1DD0DD8EC();
      v13 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1DCAFC000, v12, v13, "ResolveConfirmHandleExecutor.updateIntentSingleValue not implemented", v14, 2u);
        MEMORY[0x1E12A8390](v14, -1, -1);
      }

      goto LABEL_22;
    default:
LABEL_22:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DCAFC000, v25, v26, "ResolveConfirmHandleExecutor.updateIntentSingleValue applying value to intent", v27, 2u);
        MEMORY[0x1E12A8390](v27, -1, -1);
      }

      sub_1DCB09910(&v42, &v40, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v28 = *(&v41 + 1);
      sub_1DCB0E9D8(&v40, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (!v28 && [a3 isEnum])
      {
        v29 = sub_1DD0DE5BC();
        result = [a3 facadePropertyName];
        if (result)
        {
          v31 = result;
          [a1 setValue:v29 forKey:result];

          goto LABEL_35;
        }

LABEL_38:
        __break(1u);
        return result;
      }

      sub_1DCB09910(&v42, &v40, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v32 = *(&v41 + 1);
      if (*(&v41 + 1))
      {
        v33 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        v34 = *(v32 - 8);
        v35 = *(v34 + 64);
        MEMORY[0x1EEE9AC00](v33, v33);
        v37 = &v40 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v37);
        v38 = sub_1DD0DF09C();
        (*(v34 + 8))(v37, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(&v40);
      }

      else
      {
        v38 = 0;
      }

      result = [a3 facadePropertyName];
      if (!result)
      {
        __break(1u);
        goto LABEL_38;
      }

      v39 = result;
      [a1 setValue:v38 forKey:result];
      swift_unknownObjectRelease();

LABEL_35:
      v10 = 1;
LABEL_36:
      sub_1DCB0E9D8(&v42, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      return v10;
  }
}

uint64_t sub_1DCF40ACC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1DD0DEB3C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DCF40B24()
{
  OUTLINED_FUNCTION_46_25();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v7 = sub_1DCB21038(v5, v6);
  if (v8)
  {
    v9 = v7;
    v10 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *v1;
    v11 = *(*v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27E8, &unk_1DD0E6B10);
    OUTLINED_FUNCTION_11_64();
    v12 = *(*(v22 + 48) + 16 * v9 + 8);

    v13 = *(v22 + 56);
    v14 = type metadata accessor for Input(0);
    OUTLINED_FUNCTION_2(v14);
    sub_1DCB3992C(v13 + *(v15 + 72) * v9, v3, type metadata accessor for Input);
    sub_1DD0DEDEC();
    *v1 = v22;
  }

  else
  {
    type metadata accessor for Input(0);
  }

  OUTLINED_FUNCTION_45_21();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t sub_1DCF40C4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1DCB21038(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB00, &qword_1DD0E6AF0);
  sub_1DD0DEDCC();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB90, &unk_1DD0E8AB0);
  sub_1DD0DEDEC();
  *v3 = v13;
  return v11;
}

double sub_1DCF40FBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_24_32(a1, a2);
  if (v9)
  {
    v10 = v8;
    v11 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    v12 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1DD0DEDCC();
    v13 = *(*(v17 + 48) + 16 * v10 + 8);

    v14 = (*(v17 + 56) + 48 * v10);
    v15 = v14[1];
    *v5 = *v14;
    v5[1] = v15;
    v5[2] = v14[2];
    sub_1DD0DEDEC();
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
  }

  return result;
}

uint64_t sub_1DCF410B4(uint64_t a1)
{
  v2 = type metadata accessor for ResolveConfirmProcessingResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DCF41110(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  v5 = [a3 slotByName_];

  return v5;
}

uint64_t sub_1DCF41160()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[6];
  v8 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1DCB4AD3C;

  return sub_1DCF3E3CC(v3, v5, v6, v7, v9, v8, v4);
}

unint64_t sub_1DCF4122C(unint64_t result)
{
  if ((result & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    return sub_1DCF349A0(result);
  }

  return result;
}

void sub_1DCF41240(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_1DCF412A0(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1DCF412B0(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DCF412CC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB10, &qword_1DD103318) - 8) + 80);

  return sub_1DCF3F8D0();
}

uint64_t sub_1DCF4142C()
{
  type metadata accessor for ParameterHints();
  v0 = swift_allocObject();
  type metadata accessor for ParameterClause();
  *(v0 + 16) = sub_1DD0DDE9C();
  return v0;
}

uint64_t sub_1DCF41490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ParameterResolutionResult();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = 0;

  v9 = a1;
  return v8;
}

uint64_t sub_1DCF41504(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB90, &unk_1DD0E8AB0);
  v6 = sub_1DD0DDE9C();
  type metadata accessor for ParameterResolutionResult();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 48) = 1;

  v8 = a1;
  return v7;
}

uint64_t ResolveConfirmHandleProcessing.executeResolveConfirm<A>(intent:parameterMetadata:cancelIntentOnParameterRejection:executeOnRemoteCompanion:siriKitIntentHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[2];
  v11 = *(a11 + 24);
  OUTLINED_FUNCTION_6_69();
  return v12();
}

void ResolveConfirmHandleProcessing.executeResolveConfirm<A>(intent:parameterMetadata:executeOnRemoteCompanion:siriKitIntentHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_8_70();
  a33 = v35;
  a34 = v36;
  v60 = v37;
  v39 = v38;
  v59 = v40;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = a35;
  v52 = *(v43 + 32);
  v53 = *(v43 + 40);
  type metadata accessor for AnnotatedIntent();
  *&a19 = v50;
  v54 = v50;
  v55 = sub_1DCF4142C();
  v57 = v44[1];
  v58 = *v44;
  v56 = sub_1DCB5C758(&a19, v55);
  a19 = v58;
  a20 = v57;
  a21 = v52;
  a22 = v53;
  (*(v51 + 40))(v56, v48, v46, &a19, v42, v59, v39, v60);

  OUTLINED_FUNCTION_4_102();
}

uint64_t ResolveConfirmHandleProcessing.executeResolveConfirm<A>(annotatedIntent:parameterMetadata:cancelIntentOnParameterRejection:executeOnRemoteCompanion:siriKitIntentHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[2];
  v10 = *(a10 + 40);
  v11 = *(*a1 + 80);
  OUTLINED_FUNCTION_6_69();
  return v12();
}

uint64_t ResolveConfirmHandleProcessing.executeResolveConfirm<A>(annotatedIntent:parameterMetadata:executeOnRemoteCompanion:siriKitIntentHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_8_70();
  a35 = v36;
  a36 = v38;
  v40 = *v39;
  if (v41)
  {
    type metadata accessor for SiriKitIntentExecutionBehavior();
    static SiriKitIntentExecutionBehavior.companionExecution()();
    v42 = OUTLINED_FUNCTION_0_107();
  }

  else
  {
    v44 = *v37;
    if (*v37)
    {
      v46 = v37[1];
      v45 = v37[2];
      v47 = v37[3];
      v48 = v37[4];
      v49 = v37[5];
      type metadata accessor for SiriKitIntentExecutionBehavior();
      a19 = v44;
      a20 = v46;
      a21 = v45;
      a22 = v47;
      a23 = v48;
      a24 = v49;
      static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(&a19);
    }

    type metadata accessor for SiriKitIntentExecutionBehavior();
    static SiriKitIntentExecutionBehavior.standard()();
    v42 = OUTLINED_FUNCTION_0_107();
  }

  v43(v42);
  OUTLINED_FUNCTION_4_102();
}

uint64_t ResolveConfirmHandleProcessing.executeResolveConfirm<A>(annotatedIntent:parameterMetadata:intentExecutionBehavior:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v15 - v8);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DCAFC000, v11, v12, "ResolveConfirmHandleProcessing.executeResolveConfirm is not implemented", v13, 2u);
    MEMORY[0x1E12A8390](v13, -1, -1);
  }

  type metadata accessor for CommandFailure();
  swift_allocObject();
  *v9 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000047, 0x80000001DD124D80);
  swift_storeEnumTagMultiPayload();
  a4(v9);
  return sub_1DCF42200(v9);
}

uint64_t ResolveConfirmHandleProcessing.executeHandle<A>(intent:executeOnRemoteCompanion:siriKitIntentHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_8_70();
  a35 = v36;
  a36 = v38;
  if (v39)
  {
    type metadata accessor for SiriKitIntentExecutionBehavior();
    static SiriKitIntentExecutionBehavior.companionExecution()();
  }

  else
  {
    v40 = *v37;
    if (*v37)
    {
      v41 = v37[1];
      v42 = v37[2];
      v43 = v37[3];
      v44 = v37[4];
      v45 = v37[5];
      type metadata accessor for SiriKitIntentExecutionBehavior();
      a19 = v40;
      a20 = v41;
      a21 = v42;
      a22 = v43;
      a23 = v44;
      a24 = v45;
      static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(&a19);
    }

    type metadata accessor for SiriKitIntentExecutionBehavior();
    static SiriKitIntentExecutionBehavior.standard()();
  }

  v46 = OUTLINED_FUNCTION_3_107();
  v47(v46);
  OUTLINED_FUNCTION_4_102();
}

uint64_t ResolveConfirmHandleProcessing.executeHandle<A>(intent:intentExecutionBehavior:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void **))
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "ResolveConfirmHandleProcessing.executeHandle is not implemented", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  type metadata accessor for CommandFailure();
  swift_allocObject();
  v14 = 0;
  v15 = 0;
  v13 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000003FLL, 0x80000001DD124DD0);
  v16 = 1;
  a3(&v13);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;

  return sub_1DCB64AFC(v8, v9, v10, v11);
}

void ResolveConfirmHandleProcessing.executeAutoHandle<A>(intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_97();
  type metadata accessor for SiriKitIntentExecutionBehavior();
  static SiriKitIntentExecutionBehavior.standard()();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  v10 = *(a6 + 72);
  sub_1DD0DCF8C();
}

uint64_t ResolveConfirmHandleProcessing.executeHandle<A>(intent:completion:)()
{
  OUTLINED_FUNCTION_2_97();
  type metadata accessor for SiriKitIntentExecutionBehavior();
  static SiriKitIntentExecutionBehavior.standard()();
  v0 = OUTLINED_FUNCTION_3_107();
  v1(v0);
}

uint64_t sub_1DCF420CC(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24) == 1)
  {
    v15 = *a1;
    v16 = 0;
    v17 = 1;
    sub_1DD0DCF8C();
  }

  sub_1DD0DB03C();
  v10 = sub_1DD0DAFFC();
  v12 = v11;
  (*(v5 + 8))(v9, v4);
  v15 = v10;
  v16 = v12;
  v17 = 0;
  a2(&v15);
  return sub_1DCCB6F10(v15, v16, v17);
}

uint64_t sub_1DCF42200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t destroy for ResolveConfirmError(unint64_t *a1)
{
  result = *a1;
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

unint64_t *assignWithCopy for ResolveConfirmError(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      sub_1DD0DCF8C();
    }

    *a1 = v4;
  }

  else
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      sub_1DD0DCF8C();
    }

    *a1 = *a2;
  }

  return a1;
}

unint64_t *assignWithTake for ResolveConfirmError(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    goto LABEL_6;
  }

  if (v3 < 0xFFFFFFFF)
  {

LABEL_6:
    *a1 = v3;
    return a1;
  }

  *a1 = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ResolveConfirmError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResolveConfirmError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ResolveConfirmProcessingResult(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *a2;
  *a1 = *a2;
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = a2[1];
      v7 = a2[2];
      a1[1] = v8;
      a1[2] = v7;
      v9 = v6;
      sub_1DD0DCF8C();
    }

    a1[1] = a2[1];
    v20 = v6;
    sub_1DD0DCF8C();
  }

  v10 = a2[2];
  a1[1] = a2[1];
  a1[2] = v10;
  v11 = v6;

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
  v13 = a1 + v12;
  v14 = a2 + v12;
  *(a1 + v12) = *(a2 + v12);
  v15 = *(type metadata accessor for ParameterClause() + 20);
  v16 = &v13[v15];
  v17 = &v14[v15];
  v18 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v19 = sub_1DD0DC76C();
      (*(*(v19 - 8) + 16))(v16, v17, v19);
      goto LABEL_31;
    case 1u:
      v29 = sub_1DD0DC76C();
      (*(*(v29 - 8) + 16))(v16, v17, v29);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v16[*(v30 + 48)] = *&v17[*(v30 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v23 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v23;
      *(v16 + 2) = *(v17 + 2);

      goto LABEL_31;
    case 3u:
      *v16 = *v17;
      swift_unknownObjectRetain();
      goto LABEL_31;
    case 4u:
      v21 = sub_1DD0DB1EC();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      goto LABEL_31;
    case 5u:
      v31 = *v17;
      *v16 = *v17;
      v32 = v31;
      goto LABEL_31;
    case 6u:
      v33 = sub_1DD0DB4BC();
      (*(*(v33 - 8) + 16))(v16, v17, v33);
      v34 = type metadata accessor for USOParse();
      v35 = v34[5];
      v36 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v17[v35], 1, v36))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v16[v35], &v17[v35], *(*(v37 - 8) + 64));
      }

      else
      {
        (*(*(v36 - 8) + 16))(&v16[v35], &v17[v35], v36);
        __swift_storeEnumTagSinglePayload(&v16[v35], 0, 1, v36);
      }

      v69 = v34[6];
      v70 = &v16[v69];
      v71 = &v17[v69];
      v72 = *(v71 + 1);
      *v70 = *v71;
      *(v70 + 1) = v72;
      v73 = v34[7];
      v74 = &v16[v73];
      v75 = &v17[v73];
      v74[4] = v75[4];
      *v74 = *v75;

      goto LABEL_31;
    case 7u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 16))(v16, v17, v24);
      v25 = type metadata accessor for USOParse();
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v17[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v16[v26], &v17[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 16))(&v16[v26], &v17[v26], v27);
        __swift_storeEnumTagSinglePayload(&v16[v26], 0, 1, v27);
      }

      v49 = v25[6];
      v50 = &v16[v49];
      v51 = &v17[v49];
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 1) = v52;
      v53 = v25[7];
      v54 = &v16[v53];
      v55 = &v17[v53];
      v54[4] = v55[4];
      *v54 = *v55;
      v56 = type metadata accessor for LinkParse();
      v57 = v56[5];
      v58 = &v16[v57];
      v59 = &v17[v57];
      v60 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v60;
      v61 = v56[6];
      v62 = &v16[v61];
      v63 = &v17[v61];
      v64 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v64;
      v65 = v56[7];
      v66 = &v16[v65];
      v67 = &v17[v65];
      v68 = *(v67 + 1);
      *v66 = *v67;
      *(v66 + 1) = v68;

      goto LABEL_31;
    case 8u:
      v38 = sub_1DD0DD12C();
      (*(*(v38 - 8) + 16))(v16, v17, v38);
      v39 = type metadata accessor for NLRouterParse();
      v40 = v39[5];
      v41 = &v16[v40];
      v42 = &v17[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v39[6];
      v45 = &v16[v44];
      v46 = &v17[v44];
      v47 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v46, 1, v47))
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v45, v46, *(*(v48 - 8) + 64));
      }

      else
      {
        v76 = sub_1DD0DB4BC();
        (*(*(v76 - 8) + 16))(v45, v46, v76);
        v77 = v47[5];
        v90 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v46[v77], 1, v90))
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v45[v77], &v46[v77], *(*(v78 - 8) + 64));
        }

        else
        {
          (*(*(v90 - 8) + 16))(&v45[v77], &v46[v77]);
          __swift_storeEnumTagSinglePayload(&v45[v77], 0, 1, v90);
        }

        v79 = v47[6];
        v80 = &v45[v79];
        v81 = &v46[v79];
        v82 = *(v81 + 1);
        *v80 = *v81;
        *(v80 + 1) = v82;
        v83 = v47[7];
        v84 = &v45[v83];
        v85 = &v46[v83];
        v84[4] = v85[4];
        *v84 = *v85;

        __swift_storeEnumTagSinglePayload(v45, 0, 1, v47);
      }

      v86 = v39[7];
      v87 = *&v17[v86];
      *&v16[v86] = v87;
      v88 = v87;
      goto LABEL_31;
    case 9u:
      v22 = sub_1DD0DD08C();
      (*(*(v22 - 8) + 16))(v16, v17, v22);
LABEL_31:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v16, v17, *(*(v18 - 8) + 64));
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for ResolveConfirmProcessingResult(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_1DCF410B4(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        a1[1] = a2[1];
        a1[2] = a2[2];
        v6 = v5;
        sub_1DD0DCF8C();
      }

      a1[1] = a2[1];
      v16 = v5;
      sub_1DD0DCF8C();
    }

    a1[1] = a2[1];
    a1[2] = a2[2];
    v7 = v5;

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v11 = *(type metadata accessor for ParameterClause() + 20);
    v12 = &v9[v11];
    v13 = &v10[v11];
    v14 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 16))(v12, v13, v15);
        goto LABEL_30;
      case 1u:
        v24 = sub_1DD0DC76C();
        (*(*(v24 - 8) + 16))(v12, v13, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v12[*(v25 + 48)] = *&v13[*(v25 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v12 = *v13;
        *(v12 + 1) = *(v13 + 1);
        *(v12 + 2) = *(v13 + 2);

        goto LABEL_30;
      case 3u:
        *v12 = *v13;
        swift_unknownObjectRetain();
        goto LABEL_30;
      case 4u:
        v17 = sub_1DD0DB1EC();
        (*(*(v17 - 8) + 16))(v12, v13, v17);
        goto LABEL_30;
      case 5u:
        v26 = *v13;
        *v12 = *v13;
        v27 = v26;
        goto LABEL_30;
      case 6u:
        v28 = sub_1DD0DB4BC();
        (*(*(v28 - 8) + 16))(v12, v13, v28);
        v29 = type metadata accessor for USOParse();
        v30 = v29[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v30], &v13[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 16))(&v12[v30], &v13[v30], v31);
          __swift_storeEnumTagSinglePayload(&v12[v30], 0, 1, v31);
        }

        v60 = v29[6];
        v61 = &v12[v60];
        v62 = &v13[v60];
        *v61 = *v62;
        *(v61 + 1) = *(v62 + 1);
        v63 = v29[7];
        v64 = &v12[v63];
        v65 = &v13[v63];
        v66 = *v65;
        v64[4] = v65[4];
        *v64 = v66;

        goto LABEL_30;
      case 7u:
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 16))(v12, v13, v19);
        v20 = type metadata accessor for USOParse();
        v21 = v20[5];
        v22 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v21], 1, v22))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v21], &v13[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(*(v22 - 8) + 16))(&v12[v21], &v13[v21], v22);
          __swift_storeEnumTagSinglePayload(&v12[v21], 0, 1, v22);
        }

        v43 = v20[6];
        v44 = &v12[v43];
        v45 = &v13[v43];
        *v44 = *v45;
        *(v44 + 1) = *(v45 + 1);
        v46 = v20[7];
        v47 = &v12[v46];
        v48 = &v13[v46];
        v49 = *v48;
        v47[4] = v48[4];
        *v47 = v49;
        v50 = type metadata accessor for LinkParse();
        v51 = v50[5];
        v52 = &v12[v51];
        v53 = &v13[v51];
        *v52 = *v53;
        *(v52 + 1) = *(v53 + 1);
        v54 = v50[6];
        v55 = &v12[v54];
        v56 = &v13[v54];
        *v55 = *v56;
        *(v55 + 1) = *(v56 + 1);
        v57 = v50[7];
        v58 = &v12[v57];
        v59 = &v13[v57];
        *v58 = *v59;
        *(v58 + 1) = *(v59 + 1);

        goto LABEL_30;
      case 8u:
        v33 = sub_1DD0DD12C();
        (*(*(v33 - 8) + 16))(v12, v13, v33);
        v34 = type metadata accessor for NLRouterParse();
        v35 = *(v34 + 20);
        v36 = &v12[v35];
        v37 = &v13[v35];
        *v36 = *v37;
        *(v36 + 1) = *(v37 + 1);
        v82 = v34;
        v38 = *(v34 + 24);
        v39 = &v12[v38];
        v40 = &v13[v38];
        v41 = type metadata accessor for USOParse();

        if (__swift_getEnumTagSinglePayload(v40, 1, v41))
        {
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v39, v40, *(*(v42 - 8) + 64));
        }

        else
        {
          v67 = sub_1DD0DB4BC();
          (*(*(v67 - 8) + 16))(v39, v40, v67);
          v68 = v41[5];
          v81 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v40[v68], 1, v81))
          {
            v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v39[v68], &v40[v68], *(*(v69 - 8) + 64));
          }

          else
          {
            (*(*(v81 - 8) + 16))(&v39[v68], &v40[v68]);
            __swift_storeEnumTagSinglePayload(&v39[v68], 0, 1, v81);
          }

          v70 = v41[6];
          v71 = &v39[v70];
          v72 = &v40[v70];
          *v71 = *v72;
          *(v71 + 1) = *(v72 + 1);
          v73 = v41[7];
          v74 = &v39[v73];
          v75 = &v40[v73];
          v76 = *v75;
          v74[4] = v75[4];
          *v74 = v76;

          __swift_storeEnumTagSinglePayload(v39, 0, 1, v41);
        }

        v77 = *(v82 + 28);
        v78 = *&v13[v77];
        *&v12[v77] = v78;
        v79 = v78;
        goto LABEL_30;
      case 9u:
        v18 = sub_1DD0DD08C();
        (*(*(v18 - 8) + 16))(v12, v13, v18);
LABEL_30:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v12, v13, *(*(v14 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for ResolveConfirmProcessingResult(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
    v7 = &a1[v6];
    v8 = &a2[v6];
    *&a1[v6] = *&a2[v6];
    v9 = *(type metadata accessor for ParameterClause() + 20);
    v10 = &v7[v9];
    v11 = &v8[v9];
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_26;
      case 1u:
        v23 = sub_1DD0DC76C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v24 + 48)] = *&v11[*(v24 + 48)];
        goto LABEL_26;
      case 4u:
        v26 = sub_1DD0DB1EC();
        (*(*(v26 - 8) + 32))(v10, v11, v26);
        goto LABEL_26;
      case 6u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(v10, v11, v27);
        v28 = type metadata accessor for USOParse();
        v29 = v28[5];
        v30 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v29], 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v29], &v11[v29], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(*(v30 - 8) + 32))(&v10[v29], &v11[v29], v30);
          __swift_storeEnumTagSinglePayload(&v10[v29], 0, 1, v30);
        }

        *&v10[v28[6]] = *&v11[v28[6]];
        v40 = v28[7];
        v41 = &v10[v40];
        v42 = &v11[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        goto LABEL_26;
      case 7u:
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 32))(v10, v11, v32);
        v33 = type metadata accessor for USOParse();
        v34 = v33[5];
        v35 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v35))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v34], &v11[v34], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(*(v35 - 8) + 32))(&v10[v34], &v11[v34], v35);
          __swift_storeEnumTagSinglePayload(&v10[v34], 0, 1, v35);
        }

        *&v10[v33[6]] = *&v11[v33[6]];
        v43 = v33[7];
        v44 = &v10[v43];
        v45 = &v11[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        v46 = type metadata accessor for LinkParse();
        *&v10[v46[5]] = *&v11[v46[5]];
        *&v10[v46[6]] = *&v11[v46[6]];
        *&v10[v46[7]] = *&v11[v46[7]];
        goto LABEL_26;
      case 8u:
        v16 = sub_1DD0DD12C();
        (*(*(v16 - 8) + 32))(v10, v11, v16);
        v17 = type metadata accessor for NLRouterParse();
        *&v10[v17[5]] = *&v11[v17[5]];
        v18 = v17[6];
        v19 = &v10[v18];
        v20 = &v11[v18];
        v21 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v20, 1, v21))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v19, v20, *(*(v22 - 8) + 64));
        }

        else
        {
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 32))(v19, v20, v37);
          v38 = v21[5];
          v50 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v38], 1, v50))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v19[v38], &v20[v38], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v50 - 8) + 32))(&v19[v38], &v20[v38]);
            __swift_storeEnumTagSinglePayload(&v19[v38], 0, 1, v50);
          }

          *&v19[v21[6]] = *&v20[v21[6]];
          v47 = v21[7];
          v48 = &v19[v47];
          v49 = &v20[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
        }

        *&v10[v17[7]] = *&v11[v17[7]];
        goto LABEL_26;
      case 9u:
        v25 = sub_1DD0DD08C();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v14 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v14);
  }
}

char *assignWithTake for ResolveConfirmProcessingResult(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCF410B4(a1);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
    v7 = &a1[v6];
    v8 = &a2[v6];
    *&a1[v6] = *&a2[v6];
    v9 = *(type metadata accessor for ParameterClause() + 20);
    v10 = &v7[v9];
    v11 = &v8[v9];
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_27;
      case 1u:
        v23 = sub_1DD0DC76C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v24 + 48)] = *&v11[*(v24 + 48)];
        goto LABEL_27;
      case 4u:
        v26 = sub_1DD0DB1EC();
        (*(*(v26 - 8) + 32))(v10, v11, v26);
        goto LABEL_27;
      case 6u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(v10, v11, v27);
        v28 = type metadata accessor for USOParse();
        v29 = v28[5];
        v30 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v29], 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v29], &v11[v29], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(*(v30 - 8) + 32))(&v10[v29], &v11[v29], v30);
          __swift_storeEnumTagSinglePayload(&v10[v29], 0, 1, v30);
        }

        *&v10[v28[6]] = *&v11[v28[6]];
        v40 = v28[7];
        v41 = &v10[v40];
        v42 = &v11[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        goto LABEL_27;
      case 7u:
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 32))(v10, v11, v32);
        v33 = type metadata accessor for USOParse();
        v34 = v33[5];
        v35 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v35))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v34], &v11[v34], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(*(v35 - 8) + 32))(&v10[v34], &v11[v34], v35);
          __swift_storeEnumTagSinglePayload(&v10[v34], 0, 1, v35);
        }

        *&v10[v33[6]] = *&v11[v33[6]];
        v43 = v33[7];
        v44 = &v10[v43];
        v45 = &v11[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        v46 = type metadata accessor for LinkParse();
        *&v10[v46[5]] = *&v11[v46[5]];
        *&v10[v46[6]] = *&v11[v46[6]];
        *&v10[v46[7]] = *&v11[v46[7]];
        goto LABEL_27;
      case 8u:
        v16 = sub_1DD0DD12C();
        (*(*(v16 - 8) + 32))(v10, v11, v16);
        v17 = type metadata accessor for NLRouterParse();
        *&v10[v17[5]] = *&v11[v17[5]];
        v18 = v17[6];
        v19 = &v10[v18];
        v20 = &v11[v18];
        v21 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v20, 1, v21))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v19, v20, *(*(v22 - 8) + 64));
        }

        else
        {
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 32))(v19, v20, v37);
          v38 = v21[5];
          v50 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v38], 1, v50))
          {
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v19[v38], &v20[v38], *(*(v39 - 8) + 64));
          }

          else
          {
            (*(*(v50 - 8) + 32))(&v19[v38], &v20[v38]);
            __swift_storeEnumTagSinglePayload(&v19[v38], 0, 1, v50);
          }

          *&v19[v21[6]] = *&v20[v21[6]];
          v47 = v21[7];
          v48 = &v19[v47];
          v49 = &v20[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
        }

        *&v10[v17[7]] = *&v11[v17[7]];
        goto LABEL_27;
      case 9u:
        v25 = sub_1DD0DD08C();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_1DCF443AC()
{
  v4 = &unk_1DD103450;
  v5 = &unk_1DD103468;
  result = type metadata accessor for ParameterClause();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout3();
    v6 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void destroy for HandleProcessingResult(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

void sub_1DCF444AC(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = *(a2 + 16);
  v4 = v2;
  sub_1DD0DCF8C();
}

void assignWithCopy for HandleProcessingResult(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for HandleProcessingResult(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t dispatch thunk of ResolveConfirmHandleProcessingAsync.executeResolveConfirm<A>(annotatedIntent:parameterMetadata:intentExecutionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 8);
  OUTLINED_FUNCTION_24_0();
  v22 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  v19[1] = sub_1DCB4A548;

  return v22(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ResolveConfirmHandleProcessingAsync.executeHandle<A>(intent:intentExecutionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_97();
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_24_0();
  v21 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_11_0(v17);
  *v18 = v19;
  v18[1] = sub_1DCB4A548;

  return v21(v9, v8, v7, v6, a5, a6);
}

uint64_t dispatch thunk of ResolveConfirmHandleProcessingAsync.executeAutoHandle<A>(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 24);
  OUTLINED_FUNCTION_24_0();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB193FC;

  return v18(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ResolveConfirmHandleProcessingAsync.executeAutoHandleCancel(aceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  OUTLINED_FUNCTION_24_0();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCF44BD4;

  return v15(a1, a2, a3, a4);
}

uint64_t sub_1DCF44BD4(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

void sub_1DCF44CE0()
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69C7B40]) init];
  v1 = OUTLINED_FUNCTION_86();
  sub_1DCF4B5A4(v1, v2, v3);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  AceServiceInvokerAsync.submitAndForget(_:)(v6, v4, v5);
}

void sub_1DCF44D74()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 224);
    v10 = *(v3 + 168);

    OUTLINED_FUNCTION_101();

    MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1DCF44E9C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  sub_1DCB3D1F0(*(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));
  OUTLINED_FUNCTION_103_8();
  sub_1DCB3B864();

  OUTLINED_FUNCTION_108_8();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF44F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = *a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCF44F90, 0, 0);
}

uint64_t sub_1DCF44F90()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 96), *(*(v0 + 72) + 120));
  v6 = v3[1];
  v5 = v3[2];
  *(v0 + 16) = *v3;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v7 = *(v1 + 16);
  v8 = *v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v9;
  v10 = *(v2 + 80);
  *v9 = v11;
  v9[1] = sub_1DCDF2588;
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);

  return sub_1DCF3C000();
}

uint64_t sub_1DCF45060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF45088, 0, 0);
}

void sub_1DCF45088()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_100_7(v6, 3.8521e-34);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    OUTLINED_FUNCTION_62();
  }

  v12 = sub_1DD0DDE9C();
  v0[7] = v12;
  sub_1DCDAC354(v12);
}

uint64_t sub_1DCF45244()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF4533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF45364, 0, 0);
}

void sub_1DCF45364()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_100_7(v6, 3.8521e-34);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    OUTLINED_FUNCTION_62();
  }

  v12 = sub_1DD0DDE9C();
  v0[7] = v12;
  sub_1DCDAC354(v12);
}

uint64_t sub_1DCF45520()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF456EC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 280);

    OUTLINED_FUNCTION_101();

    MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DCF45808()
{
  v38 = v1;
  v2 = *(v1 + 256);
  v31 = v2;
  v32 = *(v1 + 264);
  v30 = *(v1 + 248);
  v27 = *(v1 + 232);
  v28 = *(v1 + 240);
  v3 = *(v1 + 224);
  v34 = *(v1 + 272);
  v33 = *(v1 + 216);
  v4 = *(v1 + 200);
  v35 = *(v1 + 208);
  v5 = *(v1 + 176);
  v29 = *(v1 + 160);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v25 = *(v1 + 152);
  v26 = v6;
  v8 = *(v1 + 96);
  v9 = *(v1 + 64);
  v24 = *(v1 + 72);
  v10 = *(v1 + 80);
  v23 = *(v1 + 88);
  (*(v7 + 16))();
  sub_1DD0DD84C();
  v11 = OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_46(v11);
  v12 = sub_1DD0DD87C();
  v13 = sub_1DD0DE7FC();
  v14 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v12, v13, v14, "logCoreDuetBlocking", "", v0, 2u);
  v36[0] = v9;
  v36[1] = v24;
  v36[2] = v10;
  v37 = v23;
  sub_1DCCD86F4(v36);

  v15 = sub_1DD0DE7EC();
  v16 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v12, v15, v16, "logCoreDuetBlocking", "", v0, 2u);

  OUTLINED_FUNCTION_62();
  sub_1DCB3D1F0(v27, v28, v30, v31, v32);
  v33(v5, v29);
  (*(v7 + 8))(v25, v26);
  *v8 = v9;
  *(v8 + 8) = v24;
  *(v8 + 16) = v10;
  *(v8 + 24) = v23;
  sub_1DCB3B864();

  v18 = *(v1 + 184);
  v17 = *(v1 + 192);
  v19 = *(v1 + 176);
  v20 = *(v1 + 152);

  OUTLINED_FUNCTION_29();

  return v21();
}

uint64_t sub_1DCF45A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1DD0DD85C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF45B08, 0, 0);
}

uint64_t sub_1DCF45B08()
{
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DD0DD88C();
  v12 = *(v0 + 24);
  OUTLINED_FUNCTION_92(v4, qword_1EDE57DD0);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v12;
  *(v5 + 40) = v3;
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_32_2(&unk_1DD1017D8);
  v13 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v7;
  *v7 = v8;
  v7[1] = sub_1DCF45C48;
  v9 = *(v0 + 72);
  v10 = *(v0 + 16);

  return v13(v10, "intentHandle", 12, 2, v9, &unk_1DD1036F0, v5);
}

void sub_1DCF45C48()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[10];
    (*(v3[8] + 8))(v3[9], v3[7]);

    OUTLINED_FUNCTION_43();

    v10();
  }
}

uint64_t sub_1DCF45D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF45DA8, 0, 0);
}

uint64_t sub_1DCF45DA8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 80);
  v2 = __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 96), *(*(v0 + 72) + 120));
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = *v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v6;
  *v6 = v7;
  v6[1] = sub_1DCF45E60;
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 64);

  return sub_1DCF3B40C();
}

uint64_t sub_1DCF45E60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCF45F40()
{
  OUTLINED_FUNCTION_42();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1DD0DD85C();
  v1[6] = v5;
  OUTLINED_FUNCTION_99(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_38();
  v9 = swift_task_alloc();
  v1[9] = v9;
  *v9 = v1;
  v9[1] = sub_1DCF4601C;

  return sub_1DCF48A24();
}

uint64_t sub_1DCF4601C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;
  *(v1 + 104) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF46108()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 80);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v4 = sub_1DD0DD88C();
  v12 = *(v0 + 32);
  __swift_project_value_buffer(v4, qword_1EDE57DD0);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v3;
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_32_2(&unk_1DD1017D0);
  v13 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v7;
  *v7 = v8;
  v7[1] = sub_1DCF463A8;
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);

  return v13(v10, "ExecuteAutoHandle", 17, 2, v9, &unk_1DD1036C8, v5);
}

void sub_1DCF463A8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[11];
    (*(v3[7] + 8))(v3[8], v3[6]);

    OUTLINED_FUNCTION_101();

    MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DCF464E0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);
  sub_1DCCB707C(*(v0 + 80), *(v0 + 104) & 1);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF4654C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF46570, 0, 0);
}

uint64_t sub_1DCF46570()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[3];
  v1 = v0[4];
  sub_1DCF493B0();
  v0[5] = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DCF46618;
  v6 = v0[3];

  return sub_1DCF47F4C();
}

uint64_t sub_1DCF46618()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF46704()
{
  OUTLINED_FUNCTION_33();
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    sub_1DD0DCF8C();
  }

  v3 = *(v0 + 40);
  v4 = [v3 aceId];

  if (v4)
  {
    v5 = *(v0 + 40);
    v6 = sub_1DD0DDFBC();
    v8 = v7;

    v9 = *(v0 + 64);
    v10 = *(v0 + 16);
    *v10 = v6;
    *(v10 + 8) = v8;
    *(v10 + 16) = v9 & 1;
    OUTLINED_FUNCTION_43();

    v11();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DCF4690C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF46924()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_allocWithZone(MEMORY[0x1E69C7B40]) init];
  v0[5] = v3;
  sub_1DCF4B5A4(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1DCF469F0;
  v5 = v0[4];

  return sub_1DCF47F4C();
}

uint64_t sub_1DCF469F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF46ADC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2(v3, v1 & 1);
}

uint64_t sub_1DCF46B44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  LOBYTE(v6) = 0;
  if (*(a2 + 8) != 1)
  {
    if (*(a2 + 8))
    {
      OUTLINED_FUNCTION_122_2();
      if (!v69)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v33 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
      v34 = OUTLINED_FUNCTION_66_11();
      sub_1DCB6DECC(v34, v35);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6EC();
      v38 = OUTLINED_FUNCTION_66_11();
      sub_1DCB6DE90(v38, v39);
      if (os_log_type_enabled(v36, v37))
      {
        v40 = OUTLINED_FUNCTION_151();
        v41 = OUTLINED_FUNCTION_83();
        v146 = v41;
        *v40 = 136315138;
        OUTLINED_FUNCTION_82_8();
        v42 = OUTLINED_FUNCTION_66_11();
        sub_1DCB6DECC(v42, v43);
        v44 = SubmitCommandError.description.getter();
        v45 = a3;
        v47 = v46;
        sub_1DCB6DE90(v142, v143);
        v48 = sub_1DCB10E9C(v44, v47, &v146);
        a3 = v45;

        *(v40 + 4) = v48;
        _os_log_impl(&dword_1DCAFC000, v36, v37, "Received an unexpected error for ProcessIntent command: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        OUTLINED_FUNCTION_41_26();
        OUTLINED_FUNCTION_14_3();
      }

      type metadata accessor for ResolveConfirmHandleService();
      OUTLINED_FUNCTION_82_8();
      sub_1DCF47608(a1, &v142);
      v142 = 0;
      v143 = 0xE000000000000000;
      sub_1DD0DEC1C();
      v146 = v142;
      v147 = v143;
      OUTLINED_FUNCTION_57_0();
      MEMORY[0x1E12A6780](0xD000000000000038);
      v144 = &type metadata for SubmitCommandError;
      v145 = sub_1DCF4B978();
      OUTLINED_FUNCTION_82_8();
      __swift_project_boxed_opaque_existential_1(&v142, &type metadata for SubmitCommandError);
      v49 = OUTLINED_FUNCTION_66_11();
      sub_1DCB6DECC(v49, v50);
      sub_1DCBBFA6C();
      OUTLINED_FUNCTION_102_6();
      __swift_destroy_boxed_opaque_existential_1Tm(&v142);
      v51 = OUTLINED_FUNCTION_20();
      MEMORY[0x1E12A6780](v51);

      v52 = v146;
      v53 = v147;
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_41_4();
      swift_allocObject();
      v54 = CommandFailure.init(errorCode:reason:)(-1, v52, v53);
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_122_2();
    if (!v69)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v9))
    {
      v10 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v10);
      OUTLINED_FUNCTION_106_6();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v16 = sub_1DD0DADFC();
    v141 = [v16 code];
    v17 = [v16 userInfo];
    v18 = sub_1DD0DDE6C();

    v19 = *MEMORY[0x1E696AA08];
    v20 = sub_1DD0DDFBC();
    sub_1DCB90D40(v20, v21, v18);

    if (v144)
    {
      sub_1DCB10E5C(0, &qword_1ECCAABD8, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v22 = v146;
LABEL_22:
        v55 = [v16 domain];
        v140 = sub_1DD0DDFBC();
        v32 = v56;

        goto LABEL_23;
      }
    }

    else
    {
      sub_1DCB16D50(&v142, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v22 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_122_2();
  if (!v69)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v25))
  {
    v26 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v26);
    OUTLINED_FUNCTION_106_6();
    _os_log_impl(v27, v28, v29, v30, v31, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v140 = 0;
  v141 = [v5 errorCode];
  v22 = 0;
  v32 = 0;
LABEL_23:
  v139 = a1;
  OUTLINED_FUNCTION_122_2();
  if (!v69)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v57 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
  swift_bridgeObjectRetain_n();
  v58 = sub_1DD0DD8EC();
  v59 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v58, v59))
  {
    OUTLINED_FUNCTION_43_0();
    v60 = OUTLINED_FUNCTION_109();
    v142 = v60;
    *v32 = 136315394;
    v61 = a3;
    if (v32)
    {
      v62 = v140;
    }

    else
    {
      v62 = 0x3E6C696E3CLL;
    }

    if (v32)
    {
      v6 = v32;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v63 = sub_1DCB10E9C(v62, v6, &v142);

    *(v32 + 4) = v63;
    a3 = v61;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v141;
    _os_log_impl(&dword_1DCAFC000, v58, v59, "Interpreting received error: errorDomain='%s' errorCode=%ld", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    OUTLINED_FUNCTION_41_26();
    OUTLINED_FUNCTION_80();
  }

  v64 = *MEMORY[0x1E69AA8B8];
  v65 = sub_1DD0DDFBC();
  v67 = MEMORY[0x1E69C7FA0];
  if (!v32)
  {

    v68 = v140;
    goto LABEL_43;
  }

  v68 = v140;
  v69 = v65 == v140 && v32 == v66;
  if (v69)
  {
  }

  else
  {
    OUTLINED_FUNCTION_43_26();
    OUTLINED_FUNCTION_113_6();
    if ((v6 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v70 = *v67;
  OUTLINED_FUNCTION_116_8();
  if (v69)
  {
    goto LABEL_54;
  }

LABEL_43:
  v71 = *MEMORY[0x1E69AA8B0];
  v72 = sub_1DD0DDFBC();
  if (!v32)
  {

    goto LABEL_57;
  }

  if (v72 == v68 && v32 == v73)
  {
  }

  else
  {
    OUTLINED_FUNCTION_43_26();
    OUTLINED_FUNCTION_113_6();
    if ((v6 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v75 = *v67;
  OUTLINED_FUNCTION_116_8();
  if (v69)
  {
LABEL_54:
    swift_bridgeObjectRelease_n();
    v76 = sub_1DD0DD8EC();
    v77 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v77))
    {
      v78 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v78);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_62();
    }

    v54 = 0;
    goto LABEL_100;
  }

LABEL_57:
  v84 = sub_1DD0DDFBC();
  if (!v32)
  {

    goto LABEL_71;
  }

  if (v84 == v68 && v32 == v85)
  {
  }

  else
  {
    OUTLINED_FUNCTION_43_26();
    OUTLINED_FUNCTION_113_6();
    if ((v6 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v87 = *MEMORY[0x1E69C7FD0];
  OUTLINED_FUNCTION_116_8();
  if (v69)
  {

    v88 = sub_1DD0DD8EC();
    v89 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v89))
    {
      v90 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v90);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v91, v92, v93, v94, v95, 2u);
      OUTLINED_FUNCTION_62();
    }

    v54 = 1;
    goto LABEL_100;
  }

LABEL_71:
  v96 = sub_1DD0DDFBC();
  if (v32)
  {
    if (v96 == v68 && v32 == v97)
    {
    }

    else
    {
      OUTLINED_FUNCTION_43_26();
      OUTLINED_FUNCTION_113_6();
      if ((v6 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    v99 = *MEMORY[0x1E69C7FA8];
    OUTLINED_FUNCTION_116_8();
    if (v69)
    {

      v100 = sub_1DD0DD8EC();
      v101 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v101))
      {
        v102 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v102);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v103, v104, v105, v106, v107, 2u);
        OUTLINED_FUNCTION_62();
      }

      v54 = 2;
      goto LABEL_100;
    }

    goto LABEL_85;
  }

LABEL_85:
  v108 = sub_1DD0DDFBC();
  if (!v32)
  {
LABEL_91:

LABEL_97:
    v120 = OUTLINED_FUNCTION_66_11();
    sub_1DCB6DECC(v120, v121);
    v122 = sub_1DD0DD8EC();
    v123 = sub_1DD0DE6EC();
    v124 = OUTLINED_FUNCTION_66_11();
    sub_1DCB6DE90(v124, v125);
    if (os_log_type_enabled(v122, v123))
    {
      OUTLINED_FUNCTION_151();
      v126 = OUTLINED_FUNCTION_109();
      v146 = v126;
      *v32 = 136315138;
      OUTLINED_FUNCTION_82_8();
      v127 = OUTLINED_FUNCTION_66_11();
      sub_1DCB6DECC(v127, v128);
      v129 = SubmitCommandError.description.getter();
      v131 = v130;
      sub_1DCB6DE90(v142, v143);
      v132 = sub_1DCB10E9C(v129, v131, &v146);

      *(v32 + 4) = v132;
      _os_log_impl(&dword_1DCAFC000, v122, v123, "Received an unexpected error code ProcessIntent command: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      OUTLINED_FUNCTION_41_26();
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for ResolveConfirmHandleService();
    OUTLINED_FUNCTION_82_8();
    sub_1DCF47608(v139, &v142);
    v142 = 0;
    v143 = 0xE000000000000000;
    sub_1DD0DEC1C();
    v146 = v142;
    v147 = v143;
    MEMORY[0x1E12A6780](0xD000000000000039, 0x80000001DD125300);
    v144 = &type metadata for SubmitCommandError;
    v145 = sub_1DCF4B978();
    OUTLINED_FUNCTION_82_8();
    __swift_project_boxed_opaque_existential_1(&v142, &type metadata for SubmitCommandError);
    v133 = OUTLINED_FUNCTION_66_11();
    sub_1DCB6DECC(v133, v134);
    sub_1DCBBFA6C();
    OUTLINED_FUNCTION_102_6();
    __swift_destroy_boxed_opaque_existential_1Tm(&v142);
    v135 = OUTLINED_FUNCTION_20();
    MEMORY[0x1E12A6780](v135);

    v136 = v146;
    v137 = v147;
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v54 = CommandFailure.init(errorCode:reason:errorDomain:underlyingError:)(v141, v136, v137, v140, v32, v22);
    goto LABEL_100;
  }

  if (v108 == v68 && v32 == v109)
  {
  }

  else
  {
    OUTLINED_FUNCTION_43_26();
    OUTLINED_FUNCTION_113_6();
    if ((v6 & 1) == 0)
    {
      goto LABEL_91;
    }
  }

  v111 = *MEMORY[0x1E69C7FB0];

  if (v111 != v141)
  {
    goto LABEL_97;
  }

  v112 = sub_1DD0DD8EC();
  v113 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v113))
  {
    v114 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v114);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v115, v116, v117, v118, v119, 2u);
    OUTLINED_FUNCTION_62();
  }

  v54 = 3;
LABEL_100:
  *a3 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  return swift_storeEnumTagMultiPayload();
}

void sub_1DCF47608(void *a1, uint64_t a2)
{
  v3 = *a2;
  switch(*(a2 + 8))
  {
    case 1:
      v214 = *a2;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v46 = sub_1DD0DD8FC();
      v47 = OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
      v55 = OUTLINED_FUNCTION_36_36(v47, v48, v49, v50, v51, v52, v53, v54, v214);
      v57 = sub_1DCB6DECC(v55, v56);
      v65 = OUTLINED_FUNCTION_36_36(v57, v58, v59, v60, v61, v62, v63, v64, v215);
      v67 = sub_1DCB6DECC(v65, v66);
      v75 = OUTLINED_FUNCTION_36_36(v67, v68, v69, v70, v71, v72, v73, v74, v216);
      v77 = sub_1DCB6DECC(v75, v76);
      v85 = OUTLINED_FUNCTION_36_36(v77, v78, v79, v80, v81, v82, v83, v84, v217);
      v87 = sub_1DCB6DECC(v85, v86);
      v95 = OUTLINED_FUNCTION_36_36(v87, v88, v89, v90, v91, v92, v93, v94, v218);
      sub_1DCB6DECC(v95, v96);
      v97 = a1;
      v6 = sub_1DD0DD8EC();
      v98 = sub_1DD0DE6EC();

      v99 = OUTLINED_FUNCTION_86_4();
      if (!v99)
      {
        v125 = OUTLINED_FUNCTION_36_36(v99, v100, v101, v102, v103, v104, v105, v106, v219);
        sub_1DCB6DE90(v125, v126);

        v135 = OUTLINED_FUNCTION_36_36(v127, v128, v129, v130, v131, v132, v133, v134, v221);
        sub_1DCB6DE90(v135, v136);
        v145 = OUTLINED_FUNCTION_36_36(v137, v138, v139, v140, v141, v142, v143, v144, v222);
        sub_1DCB6DE90(v145, v146);

        goto LABEL_26;
      }

      v107 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      *v107 = 136316418;
      v108 = sub_1DCB35468(v219, &selRef_aceId);
      if (v109)
      {
        v110 = v109;
      }

      else
      {
        v108 = 0x3E6C696E3CLL;
        v110 = 0xE500000000000000;
      }

      v111 = sub_1DCB10E9C(v108, v110, &v227);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      v112 = sub_1DCB35468(v219, &selRef_refId);
      if (v113)
      {
        v120 = OUTLINED_FUNCTION_36_36(v112, v113, v114, v115, v116, v117, v118, v119, v219);
      }

      else
      {
        v120 = OUTLINED_FUNCTION_36_36(v112, 0, v114, v115, v116, v117, v118, v119, v219);
      }

      sub_1DCB6DE90(v120, v121);
      v149 = OUTLINED_FUNCTION_48_5();
      v152 = sub_1DCB10E9C(v149, v150, v151);

      *(v107 + 14) = v152;
      *(v107 + 22) = 2048;
      v153 = [v220 errorCode];
      v161 = OUTLINED_FUNCTION_36_36(v153, v154, v155, v156, v157, v158, v159, v160, v220);
      sub_1DCB6DE90(v161, v162);
      *(v107 + 24) = v153;
      v171 = OUTLINED_FUNCTION_36_36(v163, v164, v165, v166, v167, v168, v169, v170, v224);
      sub_1DCB6DE90(v171, v172);
      *(v107 + 32) = 2080;
      v173 = sub_1DCD0E4C4(v225);
      if (v174)
      {
        v181 = OUTLINED_FUNCTION_36_36(v173, v174, v175, v176, v177, v178, v179, v180, v225);
      }

      else
      {
        v181 = OUTLINED_FUNCTION_36_36(v173, 0, v175, v176, v177, v178, v179, v180, v225);
      }

      sub_1DCB6DE90(v181, v182);
      v188 = OUTLINED_FUNCTION_81_9(v183, v184, v185, v186, v187);

      *(v107 + 34) = v188;
      *(v107 + 42) = 2080;
      v189 = [v226 description];
      v190 = sub_1DD0DDFBC();
      v192 = v191;

      v201 = OUTLINED_FUNCTION_36_36(v193, v194, v195, v196, v197, v198, v199, v200, v226);
      sub_1DCB6DE90(v201, v202);
      v203 = sub_1DCB10E9C(v190, v192, &v227);

      *(v107 + 44) = v203;
      *(v107 + 52) = 2080;
      v204 = [v97 description];
      sub_1DD0DDFBC();

      v210 = OUTLINED_FUNCTION_81_9(v205, v206, v207, v208, v209);

      *(v107 + 54) = v210;
      _os_log_impl(&dword_1DCAFC000, v6, v98, "Received SACommandFailed: aceId=%s refId=%s errorCode=%ld, reason='%s', description='%s' for command <%s>", v107, 0x3Eu);
      goto LABEL_34;
    case 2:
      v212 = *a2;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      sub_1DCB6DECC(v212, 2u);
      v21 = a1;
      v6 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();

      if (!OUTLINED_FUNCTION_86_4())
      {
        goto LABEL_22;
      }

      v23 = OUTLINED_FUNCTION_43_0();
      v227 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = [v212 description];
      v25 = sub_1DD0DDFBC();
      v27 = v26;

      sub_1DCB6DE90(v212, 2u);
      v28 = sub_1DCB10E9C(v25, v27, &v227);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = [v21 description];
      sub_1DD0DDFBC();

      v35 = OUTLINED_FUNCTION_81_9(v30, v31, v32, v33, v34);

      *(v23 + 14) = v35;
      _os_log_impl(&dword_1DCAFC000, v6, v22, "Received unexpected command response type: %s for command <%s>", v23, 0x16u);
LABEL_34:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      goto LABEL_35;
    case 3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v36 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
      v37 = a1;
      v213 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v213, v38))
      {
        v39 = OUTLINED_FUNCTION_151();
        v40 = OUTLINED_FUNCTION_83();
        v227 = v40;
        *v39 = 136315138;
        v41 = [v37 description];
        sub_1DD0DDFBC();

        v42 = OUTLINED_FUNCTION_124();
        v45 = sub_1DCB10E9C(v42, v43, v44);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_1DCAFC000, v213, v38, "Received unexpected nil response for command <%s>", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_80();

        goto LABEL_36;
      }

LABEL_26:
      OUTLINED_FUNCTION_84();

      break;
    default:
      v211 = *a2;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v4 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
      sub_1DCB6DECC(v211, 0);
      v5 = a1;
      v6 = sub_1DD0DD8EC();
      v7 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = OUTLINED_FUNCTION_43_0();
        v227 = swift_slowAlloc();
        *v8 = 136315394;
        swift_getErrorValue();
        v9 = sub_1DD0DF18C();
        v11 = v10;
        sub_1DCB6DE90(v211, 0);
        v12 = sub_1DCB10E9C(v9, v11, &v227);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = [v5 description];
        sub_1DD0DDFBC();

        v19 = OUTLINED_FUNCTION_81_9(v14, v15, v16, v17, v18);

        *(v8 + 14) = v19;
        _os_log_impl(&dword_1DCAFC000, v6, v7, "Received an error <%s> for command <%s>", v8, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_92_0();
LABEL_35:
        OUTLINED_FUNCTION_80();

LABEL_36:
        OUTLINED_FUNCTION_84();
      }

      else
      {
LABEL_22:

        OUTLINED_FUNCTION_84();

        sub_1DCB6DE90(v122, v123);
      }

      break;
  }
}

void sub_1DCF47DA4(void *a1, void *a2, __int16 a3, void (*a4)(uint64_t))
{
  type metadata accessor for ResolveConfirmHandleService();
  if ((a3 & 0x100) != 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1DCF47608(a1, &v20);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = a2;
    oslog = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = OUTLINED_FUNCTION_151();
      v12 = OUTLINED_FUNCTION_83();
      v23 = v12;
      *v11 = 136315138;
      v20 = a2;
      v21 = a3;
      v22 = 0;
      v13 = OUTLINED_FUNCTION_17_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      v15 = sub_1DD0DE02C();
      v17 = sub_1DCB10E9C(v15, v16, &v23);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, oslog, v10, "Logic error, non-failure passed to error handler: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_80();
    }

    else
    {
      v18 = OUTLINED_FUNCTION_21_3();
      a4(v18);
    }
  }
}

uint64_t sub_1DCF47F4C()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_1DD0DD85C();
  v1[10] = v3;
  OUTLINED_FUNCTION_99(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF47FF0()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[13] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  v13 = sub_1DD0DD88C();
  __swift_project_value_buffer(v13, qword_1EDE57DD0);
  sub_1DD0DCF8C();
}

void sub_1DCF48180()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
    OUTLINED_FUNCTION_101();

    MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCF482AC()
{
  v63 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v6))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_61_3();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_14_3();
  }

  v12 = *(v0 + 104);
  if (v4)
  {
    v13 = OUTLINED_FUNCTION_38_28();
    sub_1DCB390C4(v13, v14, v15);
    v16 = OUTLINED_FUNCTION_21_3();
    sub_1DCB6DECC(v16, v17);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    v20 = OUTLINED_FUNCTION_38_28();
    sub_1DCB390D0(v20, v21, v22);
    if (os_log_type_enabled(v18, v19))
    {
      v23 = OUTLINED_FUNCTION_151();
      v24 = OUTLINED_FUNCTION_83();
      v62 = v24;
      *v23 = 136315138;
      v60 = v2;
      LOBYTE(v61) = v3;
      v25 = OUTLINED_FUNCTION_21_3();
      sub_1DCB6DECC(v25, v26);
      v27 = SubmitCommandError.description.getter();
      v29 = v28;
      sub_1DCB6DE90(v2, v3);
      v30 = sub_1DCB10E9C(v27, v29, &v62);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Received an error for GenericClientCommand: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
      v31 = OUTLINED_FUNCTION_38_28();
      sub_1DCB390D0(v31, v32, v33);
    }

    else
    {

      v43 = OUTLINED_FUNCTION_38_28();
      sub_1DCB390D0(v43, v44, v45);
    }

    v46 = *(v0 + 64);
    OUTLINED_FUNCTION_10_69();
    sub_1DCF47DA4(v47, v2, v3 | 0x100, v48);
    OUTLINED_FUNCTION_4_14();
    sub_1DD0DEC1C();
    *(v0 + 16) = v60;
    *(v0 + 24) = v61;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000028);
    *(v0 + 48) = v2;
    *(v0 + 56) = v3;
    *(v0 + 57) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB8, &qword_1DD103698);
    sub_1DD0DEDBC();
    v49 = OUTLINED_FUNCTION_38_28();
    sub_1DCB390D0(v49, v50, v51);
    v52 = *(v0 + 16);
    v53 = *(v0 + 24);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v54 = OUTLINED_FUNCTION_24_30();
    CommandFailure.init(errorCode:reason:)(v54, v55, v53);
  }

  else
  {
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v35))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_14_3();
    }

    v41 = OUTLINED_FUNCTION_21_3();
    sub_1DCB390D0(v41, v42, 0);
  }

  v56 = *(v0 + 96);

  v57 = OUTLINED_FUNCTION_56_22();

  return v58(v57);
}

uint64_t sub_1DCF485A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF485C0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_29(*(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  OUTLINED_FUNCTION_45_22();
  *v1 = v2;
  v1[1] = sub_1DCF48684;
  v3 = *(v0 + 64);

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCF48684()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF4878C()
{
  v1 = v0[6];
  *v1 = v0[11];
  *(v1 + 8) = 0;
  *(v0[6] + 9) = v0[10] != 0;
  OUTLINED_FUNCTION_43();
  return v2();
}

uint64_t sub_1DCF487D0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[10];
  v2 = v0[6];
  swift_getErrorValue();
  v3 = v0[2];
  sub_1DCF4886C(v0[3], v0[4], v2);

  *(v0[6] + 9) = v0[10] != 0;
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCF4886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = *(v7 + 16);
  v13(&v20 - v14, v4, a1);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v20;
    v17 = v21;
  }

  else
  {
    v13(v11, v4, a1);
    v18 = sub_1DD0DF06C();
    if (v18)
    {
      v16 = v18;
      result = (*(v7 + 8))(v11, a1);
    }

    else
    {
      v16 = swift_allocError();
      result = (*(v7 + 32))(v19, v11, a1);
    }

    v17 = 0;
  }

  *a3 = v16;
  *(a3 + 8) = v17;
  return result;
}

uint64_t sub_1DCF48A24()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 80) = v0;
  v2 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF48A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_211();
  a15 = v17;
  a16 = v18;
  OUTLINED_FUNCTION_33();
  a14 = v16;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = sub_1DD0DD8FC();
  v16[12] = __swift_project_value_buffer(v19, qword_1EDE57E00);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v21))
  {
    v22 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v22);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_62();
  }

  v29 = v16[10];
  v28 = v16[11];

  NLContextUpdate.init()(v28);
  *(v28 + 136) = 1;
  a9 = 0;
  v16[13] = NLContextUpdate.doConvertToAceContextUpdate(options:)(&a9);
  v30 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v29[5]);
  v31 = swift_task_alloc();
  v16[14] = v31;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v31 = v16;
  v31[1] = sub_1DCF48C1C;
  OUTLINED_FUNCTION_152();

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCF48C1C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF48D24()
{
  v71 = v0;
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v6);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v12 = *(v0 + 120);

  v13 = *(v0 + 96);
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_42_28();
    sub_1DCB390C4(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_61_23();
    sub_1DCB6DECC(v17, v18);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    v21 = OUTLINED_FUNCTION_42_28();
    sub_1DCB390D0(v21, v22, v23);
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_151();
      v24 = OUTLINED_FUNCTION_109();
      v70 = v24;
      *v1 = 136315138;
      v68 = v2;
      LOBYTE(v69) = 0;
      v25 = OUTLINED_FUNCTION_61_23();
      sub_1DCB6DECC(v25, v26);
      v27 = SubmitCommandError.description.getter();
      v29 = v28;
      sub_1DCB6DE90(v2, 0);
      v30 = sub_1DCB10E9C(v27, v29, &v70);

      *(v1 + 4) = v30;
      OUTLINED_FUNCTION_121_3();
      _os_log_impl(v31, v32, v33, v34, v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_37();
      v35 = OUTLINED_FUNCTION_42_28();
      sub_1DCB390D0(v35, v36, v37);
    }

    else
    {

      v50 = OUTLINED_FUNCTION_42_28();
      sub_1DCB390D0(v50, v51, v52);
    }

    v53 = *(v0 + 104);
    v54 = *(v0 + 88);
    OUTLINED_FUNCTION_10_69();
    sub_1DCF47DA4(v53, v2, 256, v55);
    OUTLINED_FUNCTION_4_14();
    sub_1DD0DEC1C();
    *(v0 + 40) = v68;
    *(v0 + 48) = v69;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000027);
    *(v0 + 56) = v2;
    *(v0 + 64) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB8, &qword_1DD103698);
    sub_1DD0DEDBC();

    v56 = OUTLINED_FUNCTION_42_28();
    sub_1DCB390D0(v56, v57, v58);
    v60 = *(v0 + 40);
    v59 = *(v0 + 48);
    sub_1DCB41F98(v54);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v61 = OUTLINED_FUNCTION_24_30();
    CommandFailure.init(errorCode:reason:)(v61, v62, v59);
  }

  else
  {
    v38 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6DC();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 104);
    v42 = *(v0 + 88);
    if (v40)
    {
      v43 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_47_0(v43);
      OUTLINED_FUNCTION_121_3();
      _os_log_impl(v44, v45, v46, v47, v1, 2u);
      OUTLINED_FUNCTION_37();

      v48 = OUTLINED_FUNCTION_61_23();
      sub_1DCB390D0(v48, v49, 0);
    }

    else
    {
      v63 = OUTLINED_FUNCTION_61_23();
      sub_1DCB390D0(v63, v64, 0);
    }

    sub_1DCB41F98(v42);
  }

  OUTLINED_FUNCTION_134_2();
  v65 = OUTLINED_FUNCTION_56_22();

  return v66(v65);
}

uint64_t sub_1DCF4903C()
{
  v67 = v0;
  v1 = *(v0 + 120);
  swift_getErrorValue();
  v2 = *(v0 + 16);
  sub_1DCF4886C(*(v0 + 24), *(v0 + 32), &v64);

  v3 = v64;
  v4 = v65;
  v5 = *(v0 + 96);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v7))
  {
    v8 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_47_0(v8);
    OUTLINED_FUNCTION_67_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_37();
  }

  v14 = *(v0 + 120);

  v15 = *(v0 + 96);
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_44_27();
    sub_1DCB390C4(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_86();
    sub_1DCB6DECC(v19, v20);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6EC();
    v23 = OUTLINED_FUNCTION_44_27();
    sub_1DCB390D0(v23, v24, v25);
    if (os_log_type_enabled(v21, v22))
    {
      v26 = OUTLINED_FUNCTION_151();
      v27 = OUTLINED_FUNCTION_83();
      v66 = v27;
      *v26 = 136315138;
      v64 = v3;
      LOBYTE(v65) = v4;
      v28 = OUTLINED_FUNCTION_86();
      sub_1DCB6DECC(v28, v29);
      v30 = SubmitCommandError.description.getter();
      v32 = v31;
      sub_1DCB6DE90(v64, v65);
      v33 = sub_1DCB10E9C(v30, v32, &v66);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_1DCAFC000, v21, v22, "Received an error for reset FlowTaskState: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_14_3();
      v34 = OUTLINED_FUNCTION_44_27();
      sub_1DCB390D0(v34, v35, v36);
    }

    else
    {

      v45 = OUTLINED_FUNCTION_44_27();
      sub_1DCB390D0(v45, v46, v47);
    }

    v48 = *(v0 + 104);
    v49 = *(v0 + 88);
    OUTLINED_FUNCTION_10_69();
    sub_1DCF47DA4(v48, v3, v4 | 0x100, v50);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_1DD0DEC1C();
    v51 = v65;
    *(v0 + 40) = v64;
    *(v0 + 48) = v51;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000027);
    *(v0 + 56) = v3;
    *(v0 + 64) = v4;
    *(v0 + 65) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB8, &qword_1DD103698);
    sub_1DD0DEDBC();

    v52 = OUTLINED_FUNCTION_44_27();
    sub_1DCB390D0(v52, v53, v54);
    v56 = *(v0 + 40);
    v55 = *(v0 + 48);
    sub_1DCB41F98(v49);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v57 = OUTLINED_FUNCTION_24_30();
    CommandFailure.init(errorCode:reason:)(v57, v58, v55);
  }

  else
  {
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 104);
    v41 = *(v0 + 88);
    if (v39)
    {
      v42 = OUTLINED_FUNCTION_50_0();
      *v42 = 0;
      _os_log_impl(&dword_1DCAFC000, v37, v38, "Send reset FlowTaskState Completed", v42, 2u);
      OUTLINED_FUNCTION_14_3();

      v43 = OUTLINED_FUNCTION_86();
      sub_1DCB390D0(v43, v44, 0);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_86();
      sub_1DCB390D0(v59, v60, 0);
    }

    sub_1DCB41F98(v41);
  }

  OUTLINED_FUNCTION_134_2();
  v61 = OUTLINED_FUNCTION_56_22();

  return v62(v61);
}

void sub_1DCF493B0()
{
  OUTLINED_FUNCTION_20_10();
  v0 = sub_1DD0DB04C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  sub_1DCB60DAC();
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7B48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  OUTLINED_FUNCTION_92_2();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD0E15D0;
  *(v10 + 32) = [objc_opt_self() wrapCommandInStartLocalRequest_];
  sub_1DCC9DC0C(v10, v9);
  v11 = v9;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_17_1();
  v14(v13);
  OUTLINED_FUNCTION_99_8();
  sub_1DCB4D8E8(v15, v16, v17);

  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1DCF49518()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_129_2();
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF49614()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF4971C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_129_2();
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF49818()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  v3 = v1;
  v4 = OUTLINED_FUNCTION_124_2();
  sub_1DCB51C9C(v4);
  *v2 = v1;
  *(v2 + 8) = 0;
  *(*(v0 + 96) + 9) = 0;
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF4988C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 136);
  OUTLINED_FUNCTION_79_17();
  OUTLINED_FUNCTION_110_6();
  v3 = OUTLINED_FUNCTION_124();
  sub_1DCF4886C(v3, v4, v5);
  OUTLINED_FUNCTION_92_13();
  *(*(v1 + 96) + 9) = v0;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCF49908()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF49A10()
{
  v1 = *(v0 + 96);
  *v1 = *(v0 + 160);
  *(v1 + 8) = 0;
  *(*(v0 + 96) + 9) = 0;
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1DCF49A2C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_79_17();
  OUTLINED_FUNCTION_110_6();
  v3 = OUTLINED_FUNCTION_124();
  sub_1DCF4886C(v3, v4, v5);
  OUTLINED_FUNCTION_92_13();
  *(*(v1 + 96) + 9) = v0;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCF49AA8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_79_17();
  OUTLINED_FUNCTION_110_6();
  v3 = OUTLINED_FUNCTION_124();
  sub_1DCF4886C(v3, v4, v5);
  OUTLINED_FUNCTION_92_13();
  *(*(v1 + 96) + 9) = v0;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

_OWORD *sub_1DCF49B24(uint64_t a1, uint64_t a2, id a3)
{
  v122 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  v6 = sub_1DD0DAEFC();
  v120[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v120];

  if (v7)
  {
    v8 = v120[0];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    OUTLINED_FUNCTION_17_41(v9, v10, v11, v9, v12, v13, v14, v15, v111, v115, v116, v117);
    if (swift_dynamicCast())
    {
      v16 = v117;
      sub_1DCB90D40(0x6874615079656BLL, 0xE700000000000000, v117);
      if (v121)
      {
        OUTLINED_FUNCTION_17_41(v17, v18, v19, MEMORY[0x1E69E6158], v20, v21, v22, v23, v112, v115, v116, v117);
        v24 = swift_dynamicCast();
        if (v24)
        {
          v25 = v117;
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v26 = v118;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        sub_1DCB16D50(v120, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        v25 = 0;
        v26 = 0;
      }

      sub_1DCB90D40(0xD000000000000011, 0x80000001DD124F30, v16);
      if (v121)
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
        OUTLINED_FUNCTION_17_41(v32, v33, v34, v32, v35, v36, v37, v38, v112, v115, v116, v117);
        if (swift_dynamicCast())
        {

          v39 = 0;
          v29 = MEMORY[0x1E69E7CC0];
          v120[0] = MEMORY[0x1E69E7CC0];
          v40 = v117[2];
LABEL_17:
          v41 = v39;
          while (1)
          {
            if (v40 == v41)
            {

              goto LABEL_12;
            }

            if (v41 >= v117[2])
            {
              break;
            }

            v39 = v41 + 1;
            v42 = v117[v41 + 4];
            v43 = objc_allocWithZone(MEMORY[0x1E696E920]);
            OUTLINED_FUNCTION_123_2();

            v44 = sub_1DCF4B3A8(v42, a3);
            v41 = v39;
            if (v44)
            {
              v3 = v44;
              MEMORY[0x1E12A6920]();
              v45 = *((v120[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
              {
                OUTLINED_FUNCTION_21_0(v45);
                sub_1DD0DE33C();
              }

              OUTLINED_FUNCTION_15_9();
              sub_1DD0DE3AC();
              v29 = v120[0];
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_69;
        }
      }

      else
      {
        sub_1DCB16D50(v120, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      }

      v46 = objc_allocWithZone(MEMORY[0x1E696E920]);
      v47 = a3;

      v49 = sub_1DCF4B3A8(v48, v47);
      if (v49)
      {
        a3 = v49;
        if ([a3 resolutionResultCode] == 2 && (v50 = objc_msgSend(a3, sel_disambiguationItems), v51 = sub_1DD0DE2EC(), v50, v52 = *(v51 + 16), , !v52))
        {
          sub_1DCB90D40(0x6F697463656C6573, 0xEE00736D6574496ELL, v16);

          if (!v121)
          {

            goto LABEL_50;
          }

          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
          OUTLINED_FUNCTION_17_41(v62, v63, v64, v62, v65, v66, v67, v68, v112, v115, v116, v117);
          if (swift_dynamicCast())
          {
            v3 = v117;
            if (v26)
            {
              v69 = [v47 _codableDescription];
              v70 = sub_1DCF4B540(v25, v26, v69);

              if (v70)
              {

                if ([v70 valueType] != 65)
                {
                  if ([v70 valueType] != 7 && objc_msgSend(v70, sel_valueType) != 30)
                  {

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
                    OUTLINED_FUNCTION_92_2();
                    v29 = swift_allocObject();
                    v29[1] = xmmword_1DD0E15D0;
                    *(v29 + 4) = [objc_opt_self() needsValue];
                    goto LABEL_75;
                  }

                  v87 = v117[2];
                  if (v87)
                  {
                    v114 = v70;
                    v115 = MEMORY[0x1E69E7CC0];
                    sub_1DCB38954();
                    v88 = 4;
                    v89 = v115;
                    do
                    {
                      v90 = v3[v88];
                      v91 = *(v90 + 16);

                      if (v91 && (v92 = sub_1DCB21038(0x616C756261636F76, 0xEF65756C61567972), (v93 & 1) != 0) && (v94 = sub_1DCB0DF6C(*(v90 + 56) + 32 * v92, v120), OUTLINED_FUNCTION_17_41(v94, v95, v96, v97, v98, v99, v100, v101, v114, v115, v116, v117), (swift_dynamicCast() & 1) != 0))
                      {
                        v102 = v117;
                        v103 = v118;
                      }

                      else
                      {

                        v102 = 0;
                        v103 = 0xE000000000000000;
                      }

                      v115 = v89;
                      v104 = *(v89 + 16);
                      v105 = v104 + 1;
                      if (v104 >= *(v89 + 24) >> 1)
                      {
                        sub_1DCB38954();
                        v105 = v104 + 1;
                        v89 = v115;
                      }

                      *(v89 + 16) = v105;
                      v106 = v89 + 16 * v104;
                      *(v106 + 32) = v102;
                      *(v106 + 40) = v103;
                      ++v88;
                      --v87;
                    }

                    while (v87);

                    v70 = v114;
                  }

                  else
                  {
                  }

                  v109 = objc_opt_self();
                  v110 = sub_1DD0DE2DC();

                  v108 = [v109 disambiguationWithStringsToDisambiguate_];

LABEL_74:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
                  OUTLINED_FUNCTION_92_2();
                  v29 = swift_allocObject();
                  v29[1] = xmmword_1DD0E15D0;
                  *(v29 + 4) = v108;
LABEL_75:

                  goto LABEL_12;
                }

                v71 = v117[2];
                if (!v71)
                {

                  goto LABEL_71;
                }

                v112 = v70;
                v117 = MEMORY[0x1E69E7CC0];
                sub_1DCB38954();
                v72 = 0;
                v73 = v117;
                do
                {
                  if (v72 >= v3[2])
                  {
                    __break(1u);
                  }

                  v115 = v3[v72 + 4];
                  sub_1DCF4A4C0(&v115, v120);
                  v74 = v120[0];
                  v75 = v120[1];
                  v117 = v73;
                  v77 = *(v73 + 16);
                  v76 = *(v73 + 24);
                  if (v77 >= v76 >> 1)
                  {
                    OUTLINED_FUNCTION_21_0(v76);
                    sub_1DCB38954();
                    v73 = v117;
                  }

                  ++v72;
                  *(v73 + 16) = v77 + 1;
                  v78 = v73 + 16 * v77;
                  *(v78 + 32) = v74;
                  *(v78 + 40) = v75;
                }

                while (v71 != v72);
LABEL_69:

                v70 = v112;
LABEL_71:
                v107 = objc_opt_self();
                sub_1DD0DE2DC();
                OUTLINED_FUNCTION_123_2();

                v108 = [v107 disambiguationWithStringsToDisambiguate_];

                goto LABEL_74;
              }
            }
          }
        }

        else
        {

          if ([a3 resolutionResultCode] == 3)
          {
            v53 = [a3 itemToConfirm];
            sub_1DD0DEA6C();
            swift_unknownObjectRelease();
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
            OUTLINED_FUNCTION_17_41(v54, v55, v56, v54, v57, v58, v59, v60, v112, v115, v116, v117);
            swift_dynamicCast();
            if (v119)
            {

              v61 = &v117;
LABEL_51:
              sub_1DCB16D50(v61, &dword_1ECCA3CE0, &unk_1DD0E4F80);
              goto LABEL_52;
            }

            sub_1DCB16D50(&v117, &dword_1ECCA3CE0, &unk_1DD0E4F80);
            sub_1DCB90D40(0x65756C6176, 0xE500000000000000, v16);

            if (v121)
            {
              v79 = sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);
              OUTLINED_FUNCTION_17_41(v79, v80, v81, v79, v82, v83, v84, v85, v113, v115, v116, v117);
              if (swift_dynamicCast())
              {

                v86 = v117;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
                OUTLINED_FUNCTION_92_2();
                v29 = swift_allocObject();
                v29[1] = xmmword_1DD0E15D0;
                *(v29 + 4) = [objc_opt_self() resolutionResultConfirmationRequiredWithItemToConfirm_];

                goto LABEL_12;
              }

LABEL_52:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
              OUTLINED_FUNCTION_92_2();
              v29 = swift_allocObject();
              v29[1] = xmmword_1DD0E15D0;
              *(v29 + 4) = a3;

              goto LABEL_12;
            }

LABEL_50:
            v61 = v120;
            goto LABEL_51;
          }
        }

        goto LABEL_52;
      }
    }
  }

  else
  {
    v27 = v120[0];
    v28 = sub_1DD0DAE0C();

    swift_willThrow();
  }

  v29 = 0;
LABEL_12:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t sub_1DCF4A4C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1DCB90D40(1684632949, 0xE400000000000000, *a1);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v5 = v12;
      v4 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DCB16D50(&v14, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v5 = 0;
  v4 = 0xE000000000000000;
LABEL_6:
  sub_1DCB90D40(0x65756C6176, 0xE500000000000000, v3);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v6 = v13;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DCB16D50(&v14, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v7 = 0;
  v6 = 0xE000000000000000;
LABEL_11:
  sub_1DCB90D40(0x616C756261636F76, 0xEF65756C61567972, v3);
  if (!v16)
  {
    sub_1DCB16D50(&v14, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v9 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_16;
  }

  v9 = v12;
  v8 = v13;
LABEL_16:
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v14 = 0x3A2264697575227BLL;
  v15 = 0xE900000000000022;
  MEMORY[0x1E12A6780](v5, v4);

  MEMORY[0x1E12A6780](0x65756C6176222C22, 0xEB00000000223A22);
  MEMORY[0x1E12A6780](v7, v6);

  MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD124F50);
  MEMORY[0x1E12A6780](v9, v8);

  result = MEMORY[0x1E12A6780](32034, 0xE200000000000000);
  v11 = v15;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

void sub_1DCF4A748(void *a1)
{
  v1 = sub_1DCF4B428([a1 _codableDescription]);
  if (v1)
  {
    sub_1DCB90D40(0xD000000000000012, 0x80000001DD124EF0, v1);

    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
      if (swift_dynamicCast())
      {
        v2 = *(v15 + 16);
        if (v2)
        {
          v3 = MEMORY[0x1E69E7CC0];
          v4 = 32;
          do
          {
            v5 = *(v15 + v4);
            if (*(v5 + 16))
            {
              v6 = *(v15 + v4);

              v7 = sub_1DCB21038(0xD000000000000015, 0x80000001DD124F10);
              if (v8)
              {
                sub_1DCB0DF6C(*(v5 + 56) + 32 * v7, v17);

                if (swift_dynamicCast())
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v12 = *(v3 + 16);
                    sub_1DCB34108();
                    v3 = v13;
                  }

                  v10 = *(v3 + 16);
                  v9 = *(v3 + 24);
                  if (v10 >= v9 >> 1)
                  {
                    OUTLINED_FUNCTION_21_0(v9);
                    sub_1DCB34108();
                    v3 = v14;
                  }

                  *(v3 + 16) = v10 + 1;
                  v11 = v3 + 16 * v10;
                  *(v11 + 32) = v15;
                  *(v11 + 40) = v16;
                }
              }

              else
              {
              }
            }

            v4 += 8;
            --v2;
          }

          while (v2);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1DCB16D50(v17, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }
  }

  OUTLINED_FUNCTION_84();
}

uint64_t sub_1DCF4A970()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB60F10();
}

uint64_t sub_1DCF4AA34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF45F40();
}

uint64_t sub_1DCF4AAE8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCF4AB90;

  return sub_1DCF4690C(a1, a2);
}

uint64_t sub_1DCF4AB90()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_32_1();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2 & 1);
}

void sub_1DCF4AC84()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_136();
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v11;
  v17[4] = v9;
  v17[5] = v7;
  v18 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_36_4(v18);
  OUTLINED_FUNCTION_41_4();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v5;
  v19[5] = v3;
  v19[6] = &unk_1DD103670;
  v19[7] = v17;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4ADB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB5C86C();
}

void sub_1DCF4AE78()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_92_2();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = v1;
  v15[4] = v9;
  v16 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_36_4(v16);
  OUTLINED_FUNCTION_41_4();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v7;
  v17[5] = v5;
  v17[6] = &unk_1DD103640;
  v17[7] = v15;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4AF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCF45F40();
}

void sub_1DCF4B044()
{
  OUTLINED_FUNCTION_20_10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_72();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;
  OUTLINED_FUNCTION_92_2();
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v8;
  v15[4] = v6;
  v16 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_36_4(v16);
  OUTLINED_FUNCTION_41_4();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = sub_1DCF21B08;
  v17[5] = v14;
  v17[6] = &unk_1DD103628;
  v17[7] = v15;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4B184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1DCF4B234;

  return sub_1DCF4690C(a3, a4);
}

uint64_t sub_1DCF4B234()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF4B320()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1 & 1;
  return OUTLINED_FUNCTION_15_7();
}

id sub_1DCF4B3A8(uint64_t a1, void *a2)
{
  v4 = sub_1DD0DDE4C();

  v5 = [v2 initWithJSONDictionary:v4 forIntent:a2];

  return v5;
}

uint64_t sub_1DCF4B428(void *a1)
{
  v2 = [a1 dictionaryRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDE6C();

  return v3;
}

void sub_1DCF4B4A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD0DDE4C();

  [a3 logEventWithType:a1 context:v5];
}

id sub_1DCF4B540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  v5 = [a3 attributeByKeyPath_];

  return v5;
}

void sub_1DCF4B5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDelayedActionAceId_];
}

uint64_t sub_1DCF4B5FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_71_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCF4B184(v6, v1, v2, v0);
}

uint64_t sub_1DCF4B694()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF118();
}

uint64_t sub_1DCF4B724()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCF4AF8C();
}

uint64_t sub_1DCF4B7BC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF31C();
}

uint64_t sub_1DCF4B84C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF4ADB0();
}

uint64_t sub_1DCF4B8DC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCCC0244();
}

unint64_t sub_1DCF4B978()
{
  result = qword_1EDE48E38;
  if (!qword_1EDE48E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE48E38);
  }

  return result;
}

uint64_t sub_1DCF4B9CC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_71_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCF4654C(v5, v1, v0);
}

uint64_t sub_1DCF4BA64()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_37_34();
  OUTLINED_FUNCTION_152();

  return sub_1DCF45A40(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF4BAF8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_37_34();
  OUTLINED_FUNCTION_152();

  return sub_1DCF45D80(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF4BB8C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF44F40(v3, v4, v5, v6, v7);
}

void sub_1DCF4BC1C()
{
  OUTLINED_FUNCTION_50();
  v43 = v1;
  v44 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v42 = v11;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  v46 = type metadata accessor for ResolveConfirmHandleExecutor();
  v47 = &off_1F58710E8;
  v45[0] = v8;
  type metadata accessor for ResolveConfirmHandleService();
  v27 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  OUTLINED_FUNCTION_0_1();
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_16();
  v34 = (v33 - v32);
  (*(v35 + 16))(v33 - v32);
  v36 = *v34;
  (*(v19 + 16))(v26, v42, v6);
  (*(v13 + 16))(v0, v10, v4);
  v37 = OUTLINED_FUNCTION_48_5();
  sub_1DCF4BE70(v37, v38, v36, v27, v6, v4, v43, v44);
  v39 = *(v13 + 8);
  v40 = OUTLINED_FUNCTION_19();
  v41(v40);
  (*(v19 + 8))(v42, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCF4BE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[3] = a5;
  v20[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v19[3] = a6;
  v19[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  (*(*(a6 - 8) + 32))(v16, a2, a6);
  v18[3] = type metadata accessor for ResolveConfirmHandleExecutor();
  v18[4] = &off_1F58710E8;
  v18[0] = a3;
  sub_1DCB17CA0(v20, a4 + 16);
  sub_1DCB17CA0(v19, a4 + 56);
  sub_1DCB17CA0(v18, a4 + 96);
  sub_1DCB83278();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return a4;
}

uint64_t OUTLINED_FUNCTION_81_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1DCB10E9C(v5, v6, va);
}

uint64_t OUTLINED_FUNCTION_105_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_109_6()
{

  return type metadata accessor for CommandFailure();
}

uint64_t OUTLINED_FUNCTION_113_6()
{
}

void ReactiveFlowPlan.resolveInto<>(_:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v9;
  (*(v13 + 16))(v11, v2, a1);
  v16 = v12;
  v14 = type metadata accessor for ResolveIntoModifier();
  OUTLINED_FUNCTION_1_114();
  swift_getWitnessTable();
  sub_1DCDDC1D8(v11, &v16, a1, v14, a2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4C174(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1DCF4C1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for ResolveIntoPlan();
  OUTLINED_FUNCTION_0_1();
  v45 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_34_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v7 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DE97C();
  sub_1DD0DDB6C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_4();
  v12 = sub_1DD0DDA8C();
  swift_getWitnessTable();
  v13 = sub_1DD0DDA5C();
  swift_getWitnessTable();
  v14 = sub_1DD0DDA4C();
  swift_getWitnessTable();
  v49 = v7;
  v50 = sub_1DD0DDA6C();
  WitnessTable = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  sub_1DD0DDABC();
  OUTLINED_FUNCTION_0_1();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v19);
  swift_getWitnessTable();
  sub_1DD0DDA8C();
  OUTLINED_FUNCTION_0_1();
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v24);
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v29);
  v30 = *(*(v12 - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = *(*(v13 - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = *(*(v14 - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_0_1();
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v43);
  (*(a3 + 48))(a1, a2, a3);
  v49 = *(a1 + *(v47 + 44));
  type metadata accessor for Resolvable();
  Resolvable.resolvedValuePublisher.getter(&v48);
}

uint64_t sub_1DCF4CD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v23 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v23 - v15;
  (*(v6 + 16))(v11, a1, v5);
  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v11, v5);
    v17 = type metadata accessor for _FlowPlanEvent();
    v18 = a2;
    v19 = 1;
  }

  else
  {
    v20 = *(v12 + 32);
    v20(v16, v11, AssociatedTypeWitness);
    v20(a2, v16, AssociatedTypeWitness);
    v21 = type metadata accessor for _FlowPlanEvent();
    swift_storeEnumTagMultiPayload();
    v18 = a2;
    v19 = 0;
    v17 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
}

uint64_t sub_1DCF4CF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v53 = type metadata accessor for ResolveIntoPlan();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v53, v6);
  v50 = v44 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for _FlowPlanEvent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = v44 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v13, v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = v44 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v44 - v27;
  v29 = *(v10 + 16);
  v51 = v10 + 16;
  v52 = v29;
  v29(v15, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v9;
    v49 = a1;
    (*(v16 + 32))(v28, v15, AssociatedTypeWitness);
    if (qword_1ECCA13A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v30, qword_1ECCD2748);
    v31 = *(v16 + 16);
    v48 = v28;
    v31(v25, v28, AssociatedTypeWitness);
    v32 = v50;
    (*(v4 + 16))(v50, v54, v53);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v45 = v33;
      v36 = v35;
      v46 = swift_slowAlloc();
      v57 = v46;
      *v36 = 136315394;
      v31(v21, v25, AssociatedTypeWitness);
      v37 = sub_1DD0DE02C();
      v44[1] = v34;
      v38 = v37;
      v40 = v39;
      (*(v16 + 8))(v25, AssociatedTypeWitness);
      v41 = sub_1DCB10E9C(v38, v40, &v57);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      v56 = *&v32[*(v53 + 44)];
      type metadata accessor for Resolvable();
      sub_1DD0DCF8C();
    }

    v42 = v53;
    (*(v4 + 8))(v32, v53);
    (*(v16 + 8))(v25, AssociatedTypeWitness);
    v57 = *(v54 + *(v42 + 44));
    type metadata accessor for Resolvable();
    sub_1DD0DCF8C();
  }

  (*(v10 + 8))(v15, v9);
  return v52(v55, a1, v9);
}

uint64_t sub_1DCF4D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v39 = a1;
  v40 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v6 = *(v38 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for _FlowPlanEvent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v35 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v22);
  v25 = &v35 - v24;
  v26 = *(v23 + 48);
  v35 = v14;
  v27 = *(v14 + 16);
  v27(&v35 - v24, v39, v13);
  v27(&v25[v26], v40, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  v27(v18, v25, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v38 + 8))(v18, AssociatedTypeWitness);
LABEL_5:
    v32 = 0;
    goto LABEL_6;
  }

  v28 = v38;
  v29 = *(v38 + 32);
  v29(v12, v18, AssociatedTypeWitness);
  v30 = &v25[v26];
  v31 = v36;
  v29(v36, v30, AssociatedTypeWitness);
  v32 = sub_1DD0DDF7C();
  v33 = *(v28 + 8);
  v33(v31, AssociatedTypeWitness);
  v33(v12, AssociatedTypeWitness);
  v20 = v35;
  TupleTypeMetadata2 = v13;
LABEL_6:
  (*(v20 + 8))(v25, TupleTypeMetadata2);
  return v32 & 1;
}

uint64_t sub_1DCF4D860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ResolveIntoPlan();
  *(a4 + *(result + 44)) = v5;
  return result;
}

unint64_t sub_1DCF4D900()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

void sub_1DCF4D954(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  (*(v13 + 16))(v11);
  v17 = v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_1DCF4D860(v11, &v17, v5, a2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4DA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCF4DAF4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    *a1 = *a2;
  }

  else
  {
    (*(v5 + 16))(a1, a2);
    *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4DBEC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
}

void sub_1DCF4DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_1DD0DCF8C();
}

void sub_1DCF4DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = *v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCF4DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCF4DE68(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCF4DFA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF4E170(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF4E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1DCF4CD64(a1, a2);
}

uint64_t sub_1DCF4E1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for ResolveIntoPlan() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1DCF4CF84(a1, v9, a2);
}

uint64_t ResolveParameterResult.parameterName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ResolveParameterResult.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t ResolveParameterResult.__deallocating_deinit()
{
  ResolveParameterResult.deinit();

  return swift_deallocClassInstance();
}

uint64_t ResolveParameterFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DCF4E33C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 160);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_59();
  v11 = *(v10 + 96);
  v12 = type metadata accessor for ResolveParameterFlowFrame.State();
  OUTLINED_FUNCTION_2(v12);
  return (*(v13 + 16))(a1, &v1[v5]);
}

uint64_t sub_1DCF4E3F8(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 160);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_59();
  v11 = *(v10 + 96);
  v12 = type metadata accessor for ResolveParameterFlowFrame.State();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_1DCF4E4BC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v67 = a4;
  v68 = a3;
  v66 = a2;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v61 - v12;
  OUTLINED_FUNCTION_104();
  v15 = *(v14 + 88);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v62 = v17;
  v63 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - v22;
  OUTLINED_FUNCTION_0_1();
  v65 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  v64 = &v61 - v29;
  OUTLINED_FUNCTION_104();
  v31 = *(v30 + 80);
  OUTLINED_FUNCTION_104();
  v33 = *(v32 + 96);
  v34 = type metadata accessor for ResolveParameterFlowFrame.State();
  OUTLINED_FUNCTION_0_1();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_10_2();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_9_70();
  sub_1DCF4E33C(v46);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v36 + 8))(v5, v34);
  if (EnumCaseMultiPayload != 3)
  {
    v52 = *MEMORY[0x1E699F738];
    v53 = sub_1DD0DB34C();
    OUTLINED_FUNCTION_2(v53);
    (*(v54 + 104))(v13, v52);
    OUTLINED_FUNCTION_8_71();
    v68(v13);
    return sub_1DCB0E9D8(v13, &unk_1ECCA9BE0, &qword_1DD0E9590);
  }

  (*(*v4 + 232))(v66);
  if (__swift_getEnumTagSinglePayload(v23, 1, v15) == 1)
  {
    (*(v62 + 8))(v23, v63);
    v48 = v68;
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v49 = *MEMORY[0x1E699F738];
    v50 = sub_1DD0DB34C();
    OUTLINED_FUNCTION_2(v50);
    (*(v51 + 104))(v13, v49);
    OUTLINED_FUNCTION_8_71();
    v48(v13);
    return sub_1DCB0E9D8(v13, &unk_1ECCA9BE0, &qword_1DD0E9590);
  }

  v56 = v64;
  v57 = v65;
  (*(v65 + 32))(v64, v23, v15);
  (*(v57 + 16))(v43, v56, v15);
  swift_storeEnumTagMultiPayload();
  sub_1DCF4E3F8(v43);
  v58 = *MEMORY[0x1E699F740];
  v59 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v59);
  (*(v60 + 104))(v13, v58);
  OUTLINED_FUNCTION_8_71();
  v68(v13);
  sub_1DCB0E9D8(v13, &unk_1ECCA9BE0, &qword_1DD0E9590);
  return (*(v57 + 8))(v56, v15);
}

uint64_t sub_1DCF4E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v6 = *v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2(v53);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = v6[11];
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v50 - v18;
  v20 = v6[10];
  v21 = v6[12];
  type metadata accessor for ResolveParameterFlowFrame.State();
  OUTLINED_FUNCTION_0_1();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_10_2();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9_70();
  sub_1DCF4E33C(v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_11_65();
      sub_1DCF4E33C(v30);
      OUTLINED_FUNCTION_5_95();
      sub_1DD0DF07C();
      v37 = *(v23 + 8);
      v38 = OUTLINED_FUNCTION_5_95();
      v40 = v39;
      v39(v38);
      v41 = v57;
      v42 = v58;
      v54 = type metadata accessor for CommandFailure();
      swift_allocObject();
      v43 = CommandFailure.init(errorCode:reason:)(-1, v41, v42);
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      v51 = qword_1EDE57E18;
      v50[3] = sub_1DD0DE6EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1DD0E07C0;
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_1DCF4E33C(v30);
      OUTLINED_FUNCTION_5_95();
      sub_1DD0DF07C();
      v45 = OUTLINED_FUNCTION_5_95();
      v52 = v40;
      v40(v45);
      v46 = v57;
      v47 = v58;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1DCB34060();
      *(v44 + 32) = v46;
      *(v44 + 40) = v47;
      sub_1DD0DD7EC();

      sub_1DCC7AE30();
      v48 = OUTLINED_FUNCTION_10_70();
      *v49 = v43;
      *v30 = v48;
      OUTLINED_FUNCTION_5_95();
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_5_95();
    swift_storeEnumTagMultiPayload();
    sub_1DCF4E3F8(v30);
    return (*(*v5 + 240))(v54, v55, v56);
  }

  else
  {
    (*(v13 + 32))(v19, v4, v11);
    sub_1DCCFA914();
    v36 = sub_1DD0DE93C();
    sub_1DD0DE70C();
    sub_1DD0DD7EC();

    (*(*v5 + 248))(v19, v54, v55, v56);
    return (*(v13 + 8))(v19, v11);
  }
}

uint64_t sub_1DCF4EE74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for ResolveParameterFlowFrame.State();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v28 - v18);
  sub_1DCF4E33C(&v28 - v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_11_65();
    sub_1DCF4E33C(v15);
    sub_1DD0DF07C();
    (*(v8 + 8))(v15, v6);
    v21 = v28;
    v22 = v29;
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v23 = CommandFailure.init(errorCode:reason:)(-1, v21, v22);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    sub_1DD0DD7EC();
    sub_1DCC7AE30();
    v24 = swift_allocError();
    *v25 = v23;
    *a1 = v24;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    v26 = *v19;
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    sub_1DD0DD7EC();
    *a1 = v26;
    goto LABEL_10;
  }

  (*(*(v4 - 8) + 32))(a1, v19, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCF4F1E8(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v14 - v8);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v10 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000002ALL, 0x80000001DD125520);
  sub_1DCC7AE30();
  v11 = swift_allocError();
  *v12 = v10;
  *v9 = v11;
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_1DCB0E9D8(v9, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCF4F310(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  type metadata accessor for SiriKitFlowFrameInput();
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1DCB0E9D8(v10, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t *ResolveParameterFlowFrame.deinit()
{
  v1 = *v0;
  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  v4 = v0[7];

  v5 = v0[9];

  v6 = *(*v0 + 160);
  v7 = *(v1 + 80);
  OUTLINED_FUNCTION_104();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_104();
  v11 = *(v10 + 96);
  v12 = type metadata accessor for ResolveParameterFlowFrame.State();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 8))(v0 + v6);
  return v0;
}

uint64_t ResolveParameterFlowFrame.__deallocating_deinit()
{
  ResolveParameterFlowFrame.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCF4F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4F618(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF4F6DC(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for ResolveParameterFlowFrame.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF4F8E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

_BYTE *sub_1DCF4F978(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *__dst = *a2;
    sub_1DD0DCF8C();
  }

  v7 = a2[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_19;
      case 2:
        v10 = *a2;
        goto LABEL_19;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v10 = *a2;
LABEL_19:
        v11 = (v10 | (v8 << (8 * v5))) + 2;
        if (v5 >= 4)
        {
          v7 = v10 + 2;
        }

        else
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    v12 = *a2;
    v13 = *a2;
    *__dst = v12;
    __dst[v5] = 1;
    return __dst;
  }

  if (!v7)
  {
    (*(v4 + 16))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

void sub_1DCF4FB18(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        if (v2 >= 4)
        {
          v3 = v6 + 2;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    (*(*(*(a2 + 24) - 8) + 8))();
  }
}

_BYTE *sub_1DCF4FC0C(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    v10 = *a2;
    v11 = *a2;
    *__dst = v10;
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 24) - 8) + 16))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCF4FD6C(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v19 = *__src;
    v20 = v19;
    *__dst = v19;
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

_BYTE *sub_1DCF4FF98(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *__dst = *a2;
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 24) - 8) + 32))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCF500E4(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    *__dst = *__src;
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

uint64_t sub_1DCF50308(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1DCF50454(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 <= 3)
  {
    v6 = (1u >> (8 * v5)) ^ 0xFD;
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF50638(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCF506DC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

void sub_1DCF508C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v45 = v25;
  v46 = v24;
  v27 = v26;
  v41[1] = v26;
  v43 = v28;
  v44 = v29;
  v30 = v28;
  v32 = v31;
  v34 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v35 = *(v48 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  v47 = v41 - v38;
  (*(a24 + 176))(a23, a24);
  OUTLINED_FUNCTION_5_13();
  v39 = swift_allocObject();
  v39[2] = a23;
  v39[3] = a24;
  v39[4] = a21;
  v39[5] = a22;
  v39[6] = v34;
  v39[7] = v32;
  v39[8] = v30;
  v40 = v45;
  v39[9] = v44;
  v39[10] = v40;
  v39[11] = v27;
  v39[12] = v46;
  v41[2] = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF50AE4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v20 = *a1;
  v21 = *(a1 + 72);
  if ((v21 & 1) == 0)
  {
    v24 = a3;
    v25 = *(a12 + 152);
    v36 = *a1;
    v26 = *(a1 + 3);
    v37 = *(a1 + 1);
    v38 = v26;
    v27 = *(a1 + 7);
    v39 = *(a1 + 5);
    v40 = v27;
    v41 = v21;
    sub_1DCBBF670(&v36, v35);
    v25(a11, a12);
    v28 = swift_allocObject();
    *(v28 + 16) = a11;
    *(v28 + 24) = a12;
    *(v28 + 32) = a2;
    *(v28 + 40) = v24;
    *(v28 + 48) = a4;
    *(v28 + 56) = a8;
    *(v28 + 64) = a6;
    *(v28 + 72) = a7;
    *(v28 + 80) = a9;
    *(v28 + 88) = v20;
    v29 = *(a1 + 3);
    *(v28 + 96) = *(a1 + 1);
    *(v28 + 112) = v29;
    v30 = *(a1 + 7);
    *(v28 + 128) = *(a1 + 5);
    *(v28 + 144) = v30;
    *(v28 + 160) = a10;
    *(v28 + 168) = a5;
    v31 = *(swift_getAssociatedConformanceWitness() + 32);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD0E07C0;
  v35[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1DCB34060();
  *(v22 + 32) = 0;
  *(v22 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  return a2(v20, 1);
}

uint64_t sub_1DCF50EF0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v22);
  if ((a2 & 1) == 0)
  {
    v29 = a4;
    v25 = a1;
    v26 = *(a14 + 192);

    v26(a13, a14);
    v27 = swift_allocObject();
    v27[2] = a13;
    v27[3] = a14;
    memcpy(v27 + 4, a10, 0x48uLL);
    v27[13] = a11;
    v27[14] = v25;
    v27[15] = a5;
    v27[16] = a6;
    v27[17] = a9;
    v27[18] = a12;
    v27[19] = a7;
    v27[20] = a8;
    v27[21] = a3;
    v27[22] = v29;
    v28 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1DCBBF670(a10, &v32);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1DCB34060();
  *(v23 + 32) = 0;
  *(v23 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  return a3(a1, 1);
}

void sub_1DCF51270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v39 = a8;
  v32 = a4;
  v31 = a1;
  v40 = a12;
  v36 = a11;
  v37 = a10;
  v35 = a9;
  v19 = type metadata accessor for AceOutput();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2, sizeof(__dst));
  sub_1DCB17CA0(a3 + 64, v43);
  v29[3] = *(*(a3 + 16) + 16);
  v38 = a2;
  v24 = a2[7];
  (*(a14 + 320))(a6, a13, a14);
  LOBYTE(v42[0]) = 53;
  v25 = *(a14 + 312);
  v34 = a6;
  v41 = a7;
  v33 = a5;
  v26 = v25(v42, a6, a7, a13, a14);
  v27 = v26;
  if (v26)
  {
    v28 = type metadata accessor for DefaultFlowActivity();
    v26 = sub_1DCCAE20C();
  }

  else
  {
    v28 = 0;
    v42[1] = 0;
    v42[2] = 0;
  }

  v42[0] = v27;
  v42[3] = v28;
  v42[4] = v26;
  v30 = v23;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

void sub_1DCF51654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v23 = v22;
  v25 = v24;
  v40 = v27;
  v42 = v26;
  v43 = v28;
  v44 = v29;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_7_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  (*(a21 + 176))(v23, a21);
  v39 = swift_allocObject();
  v39[2] = v23;
  v39[3] = a21;
  v39[4] = v40;
  v39[5] = v25;
  v39[6] = v21;
  v39[7] = v33;
  v39[8] = v42;
  v39[9] = v31;
  v39[10] = v44;
  v39[11] = v43;
  v41 = *(swift_getAssociatedConformanceWitness() + 48);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF51850(const void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = a8;
  v79 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v71 = v59 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v72 = v59 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v69 = v59 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v68 = v59 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v70 = v59 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v75 = v59 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v74 = v59 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v76 = v59 - v45;
  v46 = type metadata accessor for AceOutput();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46, v48);
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(__src, a1, 0x49uLL);
  if (LOBYTE(__src[9]) != 1)
  {
    v59[1] = v22;
    v61 = v46;
    v73 = a7;
    v67 = a3;
    memcpy(v89, a1, sizeof(v89));
    sub_1DCB17CA0(a4 + 64, v88);
    v65 = a4;
    v60 = *(*(a4 + 16) + 16);
    v54 = *(a11 + 320);
    sub_1DCBBF670(__src, &v81);
    v78 = a5;
    v54(a6, a10, a11);
    LOBYTE(v81) = 5;
    v55 = *(a11 + 312);
    v66 = a6;
    v63 = a10;
    v64 = a11;
    v56 = v55(&v81, a6, 0, a10, a11);
    v57 = v56;
    if (v56)
    {
      v58 = type metadata accessor for DefaultFlowActivity();
      v56 = sub_1DCCAE20C();
    }

    else
    {
      v58 = 0;
      v85 = 0;
      v84 = 0;
    }

    v62 = a9;
    v83 = v57;
    v86 = v58;
    v87 = v56;
    sub_1DCBBA39C(v88);
  }

  v49 = __src[0];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1DD0E07C0;
  v81 = 0;
  v82 = 0xE000000000000000;
  v80 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v51 = v81;
  v52 = v82;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1DCB34060();
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  sub_1DD0DD7EC();

  return v79(v49, 1);
}

uint64_t sub_1DCF52840(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  if ((a2 & 1) == 0)
  {
    v17 = 5;
    v16 = 35;
    v14 = 3;
    v15 = 0;
    sub_1DCFA6EF4((a3 + 104), &v17, a4, a5, a6, a7, a8, &v16, 0, 1, 0, &v14, *a9, a9[1], a12, a13);
  }

  return a10(a1, 1);
}

void sub_1DCF528F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v55 = v24;
  v58 = v25;
  v59 = v26;
  v60 = v27;
  v29 = v28;
  v31 = v30;
  v61 = v32;
  v57 = v33;
  v35 = v34;
  v52 = a21;
  v53 = a22;
  OUTLINED_FUNCTION_7_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v56 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v51 - v41;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1DD0E07C0;
  OUTLINED_FUNCTION_7_7();
  v44 = swift_getAssociatedTypeWitness();
  *(v43 + 64) = OUTLINED_FUNCTION_2_98(v44);
  *(v43 + 32) = v31;
  v45 = v31;
  sub_1DD0DD7EC();

  v46 = *(a24 + 176);
  v51[1] = v42;
  v46(a23, a24);
  OUTLINED_FUNCTION_5_13();
  v47 = swift_allocObject();
  v47[2] = a23;
  v47[3] = a24;
  v48 = v53;
  v47[4] = v52;
  v47[5] = v48;
  v47[6] = v35;
  v47[7] = v57;
  v47[8] = v45;
  v49 = v59;
  v47[9] = v61;
  v47[10] = v49;
  v47[11] = v29;
  v51[0] = v29;
  v47[12] = v55;
  v52 = *(swift_getAssociatedConformanceWitness() + 32);
  v50 = v45;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF52BDC(uint64_t *a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a6;
  v19 = type metadata accessor for AceOutput();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v65 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v66 = v50 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v64 = v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v67 = v50 - v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(*(AssociatedTypeWitness - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v35);
  v39 = v50 - v38;
  v40 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v42 = a1;
    v59 = a2;
    v60 = a3;
    v62 = v37;
    v63 = v36;
    v68 = a10;
    v43 = a8;
    v44 = v42[1];
    v57 = v42[7];
    v52 = v42;
    v56 = v42[8];
    v45 = a7;
    v46 = v40;
    (*(a12 + 200))(&v72, a5, v69, v45, v43, a9, a11, a12);
    v51 = v72;
    v47 = *(a12 + 152);
    v61 = v39;
    v47(a11, a12);
    v48 = v69;
    LOBYTE(v71) = 62;
    LOBYTE(v70) = 29;
    v49 = [a9 unsupportedReason];
    v72 = 3;
    LOWORD(v73) = 0;
    v58 = a11;
    v54 = v44;
    v55 = v46;
    v50[1] = a5;
    v53 = a4;
    sub_1DCFA6EF4((v68 + 104), &v71, a5, a4, v48, v45, v43, &v70, v49, 0, a9, &v72, v46, v44, a11, a12);
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCF53734(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = type metadata accessor for NLContextUpdate();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v24 - v12;
  if (a2)
  {
    v14 = a1;
    v15 = 1;
  }

  else
  {
    NLContextUpdate.init()(&v24 - v12);
    v13[136] = 1;
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
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "SiriKit Metrics reset FlowTaskState from Client", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    v20 = a3[6];
    v21 = a3[7];
    __swift_project_boxed_opaque_existential_1(a3 + 3, v20);
    v25 = 0;
    v22 = NLContextUpdate.doConvertToAceContextUpdate(options:)(&v25);
    (*(v21 + 48))(v22, v20, v21);

    sub_1DCB42D14(v13, type metadata accessor for NLContextUpdate);
    v14 = 0;
    v15 = 0;
  }

  return a4(v14, v15);
}

void sub_1DCF53918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v51 = v24;
  v58 = v25;
  v59 = v26;
  v60 = v27;
  v55 = v28;
  v30 = v29;
  v61 = v31;
  v57 = v32;
  v34 = v33;
  v53 = a21;
  OUTLINED_FUNCTION_7_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v56 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v50 - v40;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DD0E07C0;
  OUTLINED_FUNCTION_7_7();
  v43 = swift_getAssociatedTypeWitness();
  *(v42 + 64) = OUTLINED_FUNCTION_2_98(v43);
  *(v42 + 32) = v30;
  v44 = v30;
  sub_1DD0DD7EC();

  v45 = *(a24 + 176);
  v52 = v41;
  v45(a23, a24);
  OUTLINED_FUNCTION_5_13();
  v46 = swift_allocObject();
  v46[2] = a23;
  v46[3] = a24;
  v46[4] = v53;
  v46[5] = a22;
  v46[6] = v51;
  v46[7] = v34;
  v47 = v57;
  v46[8] = v44;
  v46[9] = v47;
  v48 = v59;
  v46[10] = v61;
  v46[11] = v48;
  v50 = v34;
  v46[12] = v55;
  v53 = *(swift_getAssociatedConformanceWitness() + 32);
  v49 = v44;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF53C08(const void *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31[9] = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = v31 - v22;
  v24 = type metadata accessor for AceOutput();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  memcpy(__dst, a1, 0x49uLL);
  if (LOBYTE(__dst[9]) != 1)
  {
    v31[6] = a2;
    v31[7] = a7;
    v31[8] = a3;
    v31[5] = a10;
    v31[4] = a9;
    memcpy(v36, a1, sizeof(v36));
    sub_1DCBBF670(__dst, v35);
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    memcpy(v35, a1, sizeof(v35));
    v28 = *(*(a4 + 16) + 16);
    v29 = *(a12 + 320);
    v31[3] = a5;
    v29(a6, a11, a12);
    v31[2] = a6;
    v30 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v30);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  return a2(__dst[0], 1);
}