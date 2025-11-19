uint64_t sub_2682CE474(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821AF90(a1, a2);
}

uint64_t sub_2682CE538(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CE558, 0, 0);
}

uint64_t sub_2682CE558()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834B3F4(v3);
}

uint64_t sub_2682CE5DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821B094(a1, a2);
}

uint64_t sub_2682CE688()
{
  v0 = sub_2683CE1F8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CE1E8();
  sub_2683696A4();
  sub_2683CE178();

  return v3;
}

void *sub_2682CE70C(void **a1)
{
  v1 = *a1;
  sub_2681828AC(qword_280251698, &qword_280253320, 0x277CD4228);
  v2 = v1;
  return v1;
}

uint64_t sub_2682CE76C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_268324724(a1);
}

void sub_2682CE804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &a9 - v30;
  v32 = sub_2683CB668();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_14_3();
  sub_2683CEF98();
  [v25 triggerContact];
  v34 = v23[14];
  __swift_project_boxed_opaque_existential_1(v23 + 10, v23[13]);
  sub_2683CC088();
  if (sub_2683CEF78())
  {
    v23 = v23[34];
    v35 = v23;

    sub_2683CEF68();

    sub_2683CEF88();

    sub_2683CF168();
    v36 = OUTLINED_FUNCTION_14_19();
    if (__swift_getEnumTagSinglePayload(v36, 1, v23) != 1)
    {

      OUTLINED_FUNCTION_23_0(v23);
      (*(v37 + 32))(v27, v31, v23);
      goto LABEL_7;
    }
  }

  else
  {
    sub_2683CF168();
    v38 = OUTLINED_FUNCTION_14_19();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v23);
  }

  sub_2683CFB38();

  sub_2683CF168();
  if (__swift_getEnumTagSinglePayload(v31, 1, v23) != 1)
  {
    sub_26812D9E0(v31, &unk_28024E7C0, &unk_2683D6CA0);
  }

LABEL_7:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682CEA2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2682CEA9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CEABC, 0, 0);
}

uint64_t sub_2682CEABC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834B700(v3);
}

uint64_t sub_2682CEB40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821AE8C(a1, a2);
}

uint64_t sub_2682CEC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = sub_2683CE078();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2683CE068();
  v12 = sub_2683CDD18();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_2683CDD08();
  a5(a1, a2);
  sub_2683CDCC8();

  sub_2683CDBF8();

  return v11;
}

uint64_t sub_2682CECC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_26832460C(a1);
}

uint64_t sub_2682CED58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CED78, 0, 0);
}

uint64_t sub_2682CED78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834C1E4(v3);
}

uint64_t sub_2682CEDFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_26821B198(a1, a2);
}

uint64_t sub_2682CEEA8()
{
  v0 = sub_2683CE078();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CE068();
  sub_26836945C();
  sub_2683CDBF8();

  return v3;
}

id sub_2682CEF14(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *a1;
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v10 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v11 = v9;
  v12 = sub_26835E66C(v9, 0, 0, 0, 0, v8, v6, 0, 0, 0, 0, 0, 0, 0);
  sub_2681828AC(&qword_28024D578, &qword_280253310, 0x277CD4220);
  return v12;
}

uint64_t sub_2682CF090(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_26832483C(a1);
}

uint64_t sub_2682CF128(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2682CF1D4(a1, a2);
}

uint64_t sub_2682CF1D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2682CF274, 0, 0);
}

uint64_t sub_2682CF274()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_26839D0D0(v1);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v0 + 40);
    sub_2683CFB38();

    v6 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
    OUTLINED_FUNCTION_23_0(v6);
    (*(v7 + 32))(v3, v2, v6);
  }

  else
  {
    v8 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
    sub_2683CFB38();
    if (__swift_getEnumTagSinglePayload(v2, 1, v8) != 1)
    {
      sub_26812D9E0(*(v0 + 40), &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  v9 = *(v0 + 40);

  OUTLINED_FUNCTION_40();

  return v10();
}

uint64_t sub_2682CF3C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682CF3E8, 0, 0);
}

uint64_t sub_2682CF3E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834B600(v3);
}

uint64_t sub_2682CF46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2682CF48C, 0, 0);
}

uint64_t sub_2682CF48C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 24) + 120);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_4(v2);
  *v3 = v4;
  v3[1] = sub_268188BA8;
  v5 = *(v0 + 16);

  return sub_26821B29C();
}

uint64_t sub_2682CF520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26813D6E8;

  return sub_268324954();
}

uint64_t sub_2682CF5B0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CE474(v3, v4);
}

uint64_t sub_2682CF668()
{
  OUTLINED_FUNCTION_13_3();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  v4[1] = sub_2681342AC;
  v6 = OUTLINED_FUNCTION_0_8();

  return v7(v6);
}

uint64_t sub_2682CF71C()
{
  OUTLINED_FUNCTION_13_3();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  v4[1] = sub_2681342AC;
  v6 = OUTLINED_FUNCTION_0_8();

  return v7(v6);
}

uint64_t sub_2682CF7D0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2682CEA9C(v3, v4);
}

uint64_t sub_2682CF854()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CEB40(v3, v4);
}

uint64_t sub_2682CF8E8()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D6E0;
  v3 = OUTLINED_FUNCTION_14_19();

  return sub_2682CECC0(v3);
}

uint64_t sub_2682CF974()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2682CE538(v3, v4);
}

uint64_t sub_2682CF9F8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CE5DC(v3, v4);
}

uint64_t sub_2682CFA8C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D6E0;
  v3 = OUTLINED_FUNCTION_14_19();

  return sub_2682CE76C(v3);
}

uint64_t sub_2682CFB18()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2682CED58(v3, v4);
}

uint64_t sub_2682CFB9C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CEDFC(v3, v4);
}

uint64_t sub_2682CFC30()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D0C0;
  v3 = OUTLINED_FUNCTION_14_19();

  return sub_2682CF090(v3);
}

uint64_t objectdestroyTm_2()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  if (*(v0 + 200) == 1)
  {
    v4 = *(v0 + 160);
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  OUTLINED_FUNCTION_33_11();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2682CFD54()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CF128(v3, v4);
}

uint64_t sub_2682CFDE8()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_2682CF3C8(v3, v4);
}

uint64_t sub_2682CFE6C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_2682CF46C(v3, v4, v5);
}

uint64_t sub_2682CFF00()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26813D6E0;

  return sub_2682CF520();
}

uint64_t sub_2682CFF88(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2682D0010(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2682D0168(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_23_19()
{

  return sub_268134034(v1 + 80, v0 + 416);
}

uint64_t OUTLINED_FUNCTION_25_17()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));

  return type metadata accessor for AddTasksCATPatternsExecutor();
}

uint64_t OUTLINED_FUNCTION_34_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = a2;
  *(v3 - 120) = v2;

  return sub_268134034(v3 - 120, v3 - 160);
}

uint64_t OUTLINED_FUNCTION_35_10()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return sub_2683CC9B8();
}

uint64_t OUTLINED_FUNCTION_36_12()
{

  return sub_268134034(v1 + 192, v0 + 272);
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return sub_26813C7E0(v1 + 144, v0 + 224);
}

uint64_t OUTLINED_FUNCTION_38_10()
{
}

uint64_t sub_2682D048C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2683CCDC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251720, &unk_2683E40A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D2250;
  *(v13 + 32) = v2;

  sub_2683CD518();
  v14 = sub_2683CD528();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  MEMORY[0x26D613F10](v13, v12);

  sub_2682D0734(v12);
  sub_2683CCF88();

  (*(v5 + 32))(a1, v8, v4);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_2682D0734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251720, &unk_2683E40A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Snippet.Disambiguation.items.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Snippet.Disambiguation.items.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *v1;

  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t Snippet.Disambiguation.app.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Snippet.Disambiguation.app.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t Snippet.Disambiguation.init(items:app:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

uint64_t sub_2682D099C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737473696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2682D0AF8(char a1)
{
  result = 0x737473696CLL;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x7265646E696D6572;
      break;
    case 3:
      result = 0x73746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2682D0B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682D099C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682D0BA4(uint64_t a1)
{
  v2 = sub_2682D137C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D0BE0(uint64_t a1)
{
  v2 = sub_2682D137C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D0C1C(uint64_t a1)
{
  v2 = sub_2682D13D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D0C58(uint64_t a1)
{
  v2 = sub_2682D13D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D0C94(uint64_t a1)
{
  v2 = sub_2682D1548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D0CD0(uint64_t a1)
{
  v2 = sub_2682D1548();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D0D0C(uint64_t a1)
{
  v2 = sub_2682D1424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D0D48(uint64_t a1)
{
  v2 = sub_2682D1424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D0D84(uint64_t a1)
{
  v2 = sub_2682D14F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D0DC0(uint64_t a1)
{
  v2 = sub_2682D14F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Disambiguation.Items.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v59 = v1;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251728, &qword_2683E40B0);
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v55 = v8;
  v56 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v54 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251730, &qword_2683E40B8);
  v14 = OUTLINED_FUNCTION_0_3(v13);
  v52 = v15;
  v53 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v51 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251738, &qword_2683E40C0);
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v49 = v22;
  v50 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v48 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251740, &qword_2683E40C8);
  OUTLINED_FUNCTION_0_3(v28);
  v48 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_28_2();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251748, &qword_2683E40D0);
  OUTLINED_FUNCTION_0_3(v58);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v48 - v38;
  v57 = *v3;
  v40 = *(v3 + 8);
  v41 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2682D137C();
  sub_2683D0718();
  v42 = (v34 + 8);
  switch(v40)
  {
    case 1:
      sub_2682D14F4();
      OUTLINED_FUNCTION_117_1();
      OUTLINED_FUNCTION_13_26();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
      sub_2682D2670(&unk_280254480);
      OUTLINED_FUNCTION_14_20();
      v47 = v50;
      sub_2683D0548();
      (*(v49 + 8))(v27, v47);
      goto LABEL_7;
    case 2:
      sub_2682D1424();
      v44 = v51;
      OUTLINED_FUNCTION_117_1();
      OUTLINED_FUNCTION_13_26();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
      sub_2682D1478(&qword_28024D880);
      OUTLINED_FUNCTION_14_20();
      v45 = v53;
      OUTLINED_FUNCTION_19_23();
      v46 = v52;
      goto LABEL_5;
    case 3:
      sub_2682D13D0();
      v44 = v54;
      OUTLINED_FUNCTION_117_1();
      OUTLINED_FUNCTION_13_26();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251760, &qword_2683E40D8);
      sub_2682D25C4(&unk_280251768);
      OUTLINED_FUNCTION_14_20();
      v45 = v56;
      OUTLINED_FUNCTION_19_23();
      v46 = v55;
LABEL_5:
      (*(v46 + 8))(v44, v45);
LABEL_7:
      (*v42)(v39, v2);
      break;
    default:
      sub_2682D1548();
      v43 = v58;
      sub_2683D04C8();
      OUTLINED_FUNCTION_13_26();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251788, &qword_2683E40F0);
      sub_2682D26D8(&unk_280251790);
      OUTLINED_FUNCTION_14_20();
      sub_2683D0548();
      (*(v48 + 8))(v2, v28);
      (*v42)(v39, v43);
      break;
  }

  OUTLINED_FUNCTION_62();
}

unint64_t sub_2682D137C()
{
  result = qword_280251750;
  if (!qword_280251750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251750);
  }

  return result;
}

unint64_t sub_2682D13D0()
{
  result = qword_280251758;
  if (!qword_280251758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251758);
  }

  return result;
}

unint64_t sub_2682D1424()
{
  result = qword_280251770;
  if (!qword_280251770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251770);
  }

  return result;
}

unint64_t sub_2682D1478(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_2682D2630(v4);
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682D14F4()
{
  result = qword_280251778;
  if (!qword_280251778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251778);
  }

  return result;
}

unint64_t sub_2682D1548()
{
  result = qword_280251780;
  if (!qword_280251780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251780);
  }

  return result;
}

void Snippet.Disambiguation.Items.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      MEMORY[0x26D617190](1);
      v6 = OUTLINED_FUNCTION_0_0();

      sub_26814E9C0(v6, v7);
      break;
    case 2:
      MEMORY[0x26D617190](2);
      v4 = OUTLINED_FUNCTION_0_0();

      sub_26814E1A8(v4, v5);
      break;
    case 3:
      MEMORY[0x26D617190](3);
      OUTLINED_FUNCTION_0_0();

      sub_26814EA24();
      break;
    default:
      MEMORY[0x26D617190](0);
      v2 = OUTLINED_FUNCTION_0_0();

      sub_26814EAAC(v2, v3);
      break;
  }
}

uint64_t Snippet.Disambiguation.Items.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2683D0698();
  switch(v2)
  {
    case 1:
      v31 = MEMORY[0x26D617190](1);
      v39 = OUTLINED_FUNCTION_15_22(v31, v32, v33, v34, v35, v36, v37, v38, v42, v43);
      sub_26814E9C0(v39, v40);
      break;
    case 2:
      v13 = MEMORY[0x26D617190](2);
      v21 = OUTLINED_FUNCTION_15_22(v13, v14, v15, v16, v17, v18, v19, v20, v42, v43);
      sub_26814E1A8(v21, v22);
      break;
    case 3:
      v23 = MEMORY[0x26D617190](3);
      OUTLINED_FUNCTION_15_22(v23, v24, v25, v26, v27, v28, v29, v30, v42, v43);
      sub_26814EA24();
      break;
    default:
      v3 = MEMORY[0x26D617190](0);
      v11 = OUTLINED_FUNCTION_15_22(v3, v4, v5, v6, v7, v8, v9, v10, v42, v43);
      sub_26814EAAC(v11, v12);
      break;
  }

  return sub_2683D06D8();
}

void Snippet.Disambiguation.Items.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_63_0();
  v99 = v10;
  v13 = v12;
  v94 = v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251798, &qword_2683E40F8);
  OUTLINED_FUNCTION_0_3(v90);
  v93 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v97 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802517A0, &qword_2683E4100);
  v91 = OUTLINED_FUNCTION_0_3(v20);
  v92 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_0();
  v96 = v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802517A8, &qword_2683E4108);
  OUTLINED_FUNCTION_0_3(v95);
  v89 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802517B0, &qword_2683E4110);
  OUTLINED_FUNCTION_0_3(v32);
  v88 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_28_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802517B8, &unk_2683E4118);
  OUTLINED_FUNCTION_0_3(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v82 - v43;
  v45 = v13[3];
  v46 = v13[4];
  v98 = v13;
  __swift_project_boxed_opaque_existential_1(v13, v45);
  sub_2682D137C();
  v47 = v99;
  sub_2683D06F8();
  if (v47)
  {
    goto LABEL_9;
  }

  v85 = v32;
  v86 = v11;
  v87 = v31;
  v48 = v96;
  v49 = v97;
  v99 = v39;
  v50 = v44;
  v51 = sub_2683D04B8();
  sub_268151B7C(v51, 0);
  if (v53 == v54 >> 1)
  {
LABEL_8:
    v61 = sub_2683D01D8();
    swift_allocError();
    v63 = v62;
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v63 = &type metadata for Snippet.Disambiguation.Items;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v99 + 8))(v50, v37);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v98);
LABEL_10:
    OUTLINED_FUNCTION_62();
    return;
  }

  if (v53 < (v54 >> 1))
  {
    v83 = *(v52 + v53);
    v55 = sub_268151B68(v53 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v84 = v55;
    if (v57 == v59 >> 1)
    {
      v60 = v94;
      switch(v83)
      {
        case 1:
          LOBYTE(a10) = 1;
          sub_2682D14F4();
          OUTLINED_FUNCTION_3_34();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
          sub_2682D2670(&unk_280254470);
          sub_2683D04A8();
          v67 = v99;
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_4_33();
          v77(v76);
          v78 = *(v67 + 8);
          v79 = OUTLINED_FUNCTION_5_31();
          v80(v79);
          break;
        case 2:
          LOBYTE(a10) = 2;
          sub_2682D1424();
          v49 = v48;
          OUTLINED_FUNCTION_3_34();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
          sub_2682D1478(&qword_28024D8F8);
          OUTLINED_FUNCTION_9_25();
          v65 = v91;
          OUTLINED_FUNCTION_20_22();
          v66 = v99;
          swift_unknownObjectRelease();
          v68 = v92;
          goto LABEL_14;
        case 3:
          LOBYTE(a10) = 3;
          sub_2682D13D0();
          OUTLINED_FUNCTION_3_34();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251760, &qword_2683E40D8);
          sub_2682D25C4(&unk_2802517C0);
          OUTLINED_FUNCTION_9_25();
          v65 = v90;
          OUTLINED_FUNCTION_20_22();
          v66 = v99;
          swift_unknownObjectRelease();
          v68 = v93;
LABEL_14:
          (*(v68 + 8))(v49, v65);
          v69 = *(v66 + 8);
          v70 = OUTLINED_FUNCTION_5_31();
          v71(v70);
          break;
        default:
          LOBYTE(a10) = 0;
          sub_2682D1548();
          OUTLINED_FUNCTION_3_34();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251788, &qword_2683E40F0);
          sub_2682D26D8(&unk_2802517C8);
          OUTLINED_FUNCTION_9_25();
          sub_2683D04A8();
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_4_33();
          v73(v72);
          v74 = OUTLINED_FUNCTION_1_40();
          v75(v74);
          break;
      }

      v81 = v98;
      *v60 = a10;
      *(v60 + 8) = v83;
      __swift_destroy_boxed_opaque_existential_0(v81);
      goto LABEL_10;
    }

    v50 = v44;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_2682D2004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2682D20C8(char a1)
{
  if (a1)
  {
    return 7368801;
  }

  else
  {
    return 0x736D657469;
  }
}

uint64_t sub_2682D212C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2683D0698();
  Snippet.Disambiguation.Items.hash(into:)();
  return sub_2683D06D8();
}

uint64_t sub_2682D2188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682D2004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682D21B0(uint64_t a1)
{
  v2 = sub_2682D2744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D21EC(uint64_t a1)
{
  v2 = sub_2682D2744();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Disambiguation.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802517D0, &qword_2683E4128);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_28_2();
  v11 = *v0;
  v12 = *(v0 + 8);
  v14 = v0[2];
  v15 = v0[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2682D2744();

  sub_2683D0718();
  sub_2682D2798();
  sub_2683D0548();

  if (!v1)
  {
    sub_2682084F8();

    sub_2683D0548();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_62();
}

void Snippet.Disambiguation.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802517E8, &qword_2683E4130);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2682D2744();
  sub_2683D06F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_2682D27EC();
    OUTLINED_FUNCTION_10_21();
    v14 = v18;
    v15 = v19;
    sub_26820884C();
    OUTLINED_FUNCTION_10_21();
    (*(v7 + 8))(v12, v5);
    v16 = v18;
    v17 = v19;
    *v4 = v14;
    *(v4 + 8) = v15;
    *(v4 + 16) = v16;
    *(v4 + 24) = v17;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_62();
}

unint64_t sub_2682D25C4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280251760, &qword_2683E40D8);
    v4();
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682D2630(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    type metadata accessor for Snippet.Reminder(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682D2670(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280253390, &qword_2683E2550);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682D26D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280251788, &qword_2683E40F0);
    v4();
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682D2744()
{
  result = qword_2802517D8;
  if (!qword_2802517D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802517D8);
  }

  return result;
}

unint64_t sub_2682D2798()
{
  result = qword_2802517E0;
  if (!qword_2802517E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802517E0);
  }

  return result;
}

unint64_t sub_2682D27EC()
{
  result = qword_2802517F0;
  if (!qword_2802517F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802517F0);
  }

  return result;
}

unint64_t sub_2682D2844()
{
  result = qword_2802517F8;
  if (!qword_2802517F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802517F8);
  }

  return result;
}

unint64_t sub_2682D289C()
{
  result = qword_280251800;
  if (!qword_280251800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251800);
  }

  return result;
}

unint64_t sub_2682D28F4()
{
  result = qword_280251808;
  if (!qword_280251808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251808);
  }

  return result;
}

uint64_t sub_2682D2954(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2682D2994(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

_BYTE *_s14descr2878F8F29V14DisambiguationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14descr2878F8F29V14DisambiguationV5ItemsO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2682D2BDC(_BYTE *result, int a2, int a3)
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

unint64_t sub_2682D2C8C()
{
  result = qword_280251810;
  if (!qword_280251810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251810);
  }

  return result;
}

unint64_t sub_2682D2CE4()
{
  result = qword_280251818;
  if (!qword_280251818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251818);
  }

  return result;
}

unint64_t sub_2682D2D3C()
{
  result = qword_280251820;
  if (!qword_280251820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251820);
  }

  return result;
}

unint64_t sub_2682D2D94()
{
  result = qword_280251828;
  if (!qword_280251828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251828);
  }

  return result;
}

unint64_t sub_2682D2DEC()
{
  result = qword_280251830;
  if (!qword_280251830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251830);
  }

  return result;
}

unint64_t sub_2682D2E44()
{
  result = qword_280251838;
  if (!qword_280251838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251838);
  }

  return result;
}

unint64_t sub_2682D2E9C()
{
  result = qword_280251840;
  if (!qword_280251840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251840);
  }

  return result;
}

unint64_t sub_2682D2EF4()
{
  result = qword_280251848;
  if (!qword_280251848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251848);
  }

  return result;
}

unint64_t sub_2682D2F4C()
{
  result = qword_280251850;
  if (!qword_280251850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251850);
  }

  return result;
}

unint64_t sub_2682D2FA4()
{
  result = qword_280251858;
  if (!qword_280251858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251858);
  }

  return result;
}

unint64_t sub_2682D2FFC()
{
  result = qword_280251860;
  if (!qword_280251860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251860);
  }

  return result;
}

unint64_t sub_2682D3054()
{
  result = qword_280251868;
  if (!qword_280251868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251868);
  }

  return result;
}

unint64_t sub_2682D30AC()
{
  result = qword_280251870;
  if (!qword_280251870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251870);
  }

  return result;
}

unint64_t sub_2682D3104()
{
  result = qword_280251878;
  if (!qword_280251878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251878);
  }

  return result;
}

unint64_t sub_2682D315C()
{
  result = qword_280251880;
  if (!qword_280251880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251880);
  }

  return result;
}

unint64_t sub_2682D31B4()
{
  result = qword_280251888;
  if (!qword_280251888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251888);
  }

  return result;
}

unint64_t sub_2682D320C()
{
  result = qword_280251890;
  if (!qword_280251890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251890);
  }

  return result;
}

unint64_t sub_2682D3264()
{
  result = qword_280251898;
  if (!qword_280251898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251898);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_34()
{

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_10_21()
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_19_23()
{
  v2 = *(v0 - 88);

  return sub_2683D0548();
}

uint64_t OUTLINED_FUNCTION_20_22()
{

  return sub_2683D04A8();
}

id sub_2682D33A8(void *a1)
{
  v24 = [a1 targetTaskList];
  v2 = sub_2682D3FB0(a1);
  v23 = sub_2682D3F48(v2);
  v22 = v3;
  v21 = v4;

  v5 = sub_268388364(a1);
  v6 = sub_2682D3F48(v5);
  v19 = v7;
  v20 = v6;
  v18 = v8;

  v17 = [a1 spatialEventTrigger];
  v9 = [a1 temporalEventTrigger];
  v10 = [a1 contactEventTrigger];
  v11 = [a1 priority];
  if (v11)
  {
    v12 = [a1 priority];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 taskReference];
  v14 = v13;
  if (v13)
  {
    v13 = [a1 taskReference];
  }

  v15 = sub_2682D3964(v24, v23, v22, v21, v20, v19, v18, v17, v9, v10, v12, v11 == 0, v13, v14 == 0);

  sub_2681125FC(v20, v19, v18);
  sub_2681125FC(v23, v22, v21);

  return v15;
}

id sub_2682D3594(char a1, uint64_t a2, char a3)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_4_34();
      v39 = v16;
      v37 = v16;
      v36 = 0;
      goto LABEL_22;
    case 2:
      if (a3)
      {
        v4 = 1;
      }

      else
      {
        v4 = a2;
      }

      if (a3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }

      v35 = 0;
      v6 = OUTLINED_FUNCTION_3_35();
      v10 = v4;
      v11 = v5;
      goto LABEL_17;
    case 3:
      OUTLINED_FUNCTION_4_34();
      v39 = 0;
      v37 = v14;
      v36 = 0;
      goto LABEL_22;
    case 4:
      if (a3)
      {
        v4 = 1;
      }

      else
      {
        v4 = a2;
      }

      if (a3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }

      v6 = OUTLINED_FUNCTION_5_32();
      v7 = v4;
      v8 = 0;
      v9 = v5;
      v10 = 0;
      v11 = 3;
LABEL_17:
      v12 = sub_2682D3964(v6, v7, v8, v9, v10, 0, v11, 0, 0, 0, v35, 1, 0, 1);
      sub_2681125FC(v4, 0, v5);
      return v12;
    case 5:
      v34 = 0;
      v36 = 0;
      OUTLINED_FUNCTION_2_35();
      v33 = v17;
      goto LABEL_22;
    case 6:
      OUTLINED_FUNCTION_4_34();
      v38 = v25;
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_0_50();
      return sub_2682D3964(v26, v27, v28, v29, v30, v31, v32, 1, v33, v34, v35, v38, 0, v40);
    case 7:
      v33 = 0;
      v34 = 0;
      OUTLINED_FUNCTION_2_35();
      v36 = v15;
      goto LABEL_22;
    default:
      OUTLINED_FUNCTION_2_35();
      v34 = v3;
      v36 = 0;
      v33 = 0;
LABEL_22:
      OUTLINED_FUNCTION_0_50();
      return sub_2682D3964(v18, v19, v20, v21, v22, v23, v24, 0, v33, v34, v36, v37, v39, v40);
  }
}

id sub_2682D3714(char a1, void *a2, uint64_t a3, char a4)
{
  switch(a1)
  {
    case 1:
      result = sub_2681DFB60(a2);
      if (!v4)
      {
        v44 = 0;
        v42 = result;
        v40 = 1;
        v38 = 0;
        goto LABEL_16;
      }

      return result;
    case 2:
      if (a4)
      {
        result = sub_2681DFA50(a2);
        if (!v4)
        {
          v9 = result;
          a3 = 0;
          v10 = 1;
LABEL_29:
          OUTLINED_FUNCTION_1_41();
          v37 = 0;
          v28 = OUTLINED_FUNCTION_3_35();
          v32 = v9;
          v33 = a3;
          v34 = v10;
          goto LABEL_30;
        }
      }

      else
      {
        result = sub_2681DF4C8(a2);
        if (!v4)
        {
          v9 = result;
          v10 = 2;
          goto LABEL_29;
        }
      }

      return result;
    case 3:
      result = sub_2681DFA18(a2);
      if (v4)
      {
        return result;
      }

      v7 = result;
      v35 = 0;
      v36 = 0;
      OUTLINED_FUNCTION_1_41();
      v37 = 0;
      goto LABEL_19;
    case 4:
      if (a4)
      {
        result = sub_2681DF9E0(a2);
        if (v4)
        {
          return result;
        }

        v9 = result;
        a3 = 0;
        v10 = 1;
      }

      else
      {
        result = sub_2681DF9A8(a2);
        if (v4)
        {
          return result;
        }

        v9 = result;
        v10 = 2;
      }

      OUTLINED_FUNCTION_1_41();
      v28 = OUTLINED_FUNCTION_5_32();
      v29 = v9;
      v30 = a3;
      v31 = v10;
      v32 = 0;
      v33 = 0;
      v34 = 3;
LABEL_30:
      v27 = sub_2682D3964(v28, v29, v30, v31, v32, v33, v34, 0, 0, 0, v37, v39, v41, v43);
      sub_2681125FC(v9, a3, v10);
      return v27;
    case 5:
      result = sub_2681DF970(a2);
      if (v4)
      {
        return result;
      }

      v7 = result;
      v36 = 0;
      v37 = 0;
      OUTLINED_FUNCTION_1_41();
      v35 = v18;
      goto LABEL_19;
    case 6:
      result = sub_2681DF5DC(a2);
      if (v4)
      {
        return result;
      }

      v7 = result;
      v35 = 0;
      v36 = 0;
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_0_50();
      v26 = v7;
      goto LABEL_22;
    case 7:
      result = sub_2681DF6F8();
      if (!v4)
      {
        v44 = 1;
        v42 = 0;
        v40 = 0;
        v38 = result;
LABEL_16:
        OUTLINED_FUNCTION_0_50();
        return sub_2682D3964(v11, v12, v13, v14, v15, v16, v17, 0, 0, 0, v38, v40, v42, v44);
      }

      return result;
    default:
      result = sub_2681DF938(a2);
      if (v4)
      {
        return result;
      }

      v7 = result;
      OUTLINED_FUNCTION_1_41();
      v36 = v8;
      v37 = 0;
      v35 = 0;
LABEL_19:
      OUTLINED_FUNCTION_0_50();
      v26 = 0;
LABEL_22:
      v27 = sub_2682D3964(v19, v20, v21, v22, v23, v24, v25, v26, v35, v36, v37, v39, v41, v43);

      return v27;
  }
}

id sub_2682D3964(void *a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, void *a8, void *a9, void *a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v15 = v14;
  v23 = [v15 targetTaskList];
  v24 = v23;
  if (a1 == 1)
  {
    v52 = 0;
  }

  else if (a1)
  {
    v52 = a1;
  }

  else
  {
    v25 = v23;
    v52 = v24;
  }

  sub_2680F1DAC(a1);

  v26 = sub_268388364(v15);
  v27 = sub_2682D3D4C(v26, a5, a6, a7, sub_2683ABE58, sub_26822934C, sub_2683922FC, sub_2682D4010);

  v28 = [v15 spatialEventTrigger];
  v29 = v28;
  v54 = a4;
  if (a8 == 1)
  {
    v31 = 0;
  }

  else if (a8)
  {
    v31 = a8;
  }

  else
  {
    v30 = v28;
    v31 = v29;
  }

  sub_2680F1DAC(a8);

  v32 = [v15 temporalEventTrigger];
  v33 = v32;
  if (a9 == 1)
  {
    v35 = 0;
  }

  else if (a9)
  {
    v35 = a9;
  }

  else
  {
    v34 = v32;
    v35 = v33;
  }

  sub_2680F1DAC(a9);

  v36 = [v15 priority];
  if (a11)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  if (a12)
  {
    v38 = v37;
  }

  else
  {
    v38 = a11;
  }

  v39 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  v40 = sub_268213240(v52, v27, v31, v35, v38);
  v41 = [v15 taskReference];
  if (a13)
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  if (a14)
  {
    v43 = v42;
  }

  else
  {
    v43 = a13;
  }

  [v40 setTaskReference_];
  v44 = [v15 contactEventTrigger];
  v45 = v44;
  if (a10 == 1)
  {
    v47 = 0;
    v46 = a3;
  }

  else
  {
    v46 = a3;
    if (a10)
    {
      v47 = a10;
    }

    else
    {
      v47 = v44;
    }
  }

  sub_2680F1DAC(a10);

  [v40 setContactEventTrigger_];
  v48 = sub_2682D3FB0(v15);
  v49 = sub_2682D3D4C(v48, a2, v46, v54, sub_2683ABE58, sub_26822934C, sub_2683922FC, sub_2682D4010);

  if (v49)
  {
    sub_2681D2438();
    v50 = sub_2683CFC98();
  }

  else
  {
    v50 = 0;
  }

  [v40 setTargetTaskListMembers_];

  return v40;
}

unint64_t sub_2682D3D4C(unint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t (*a5)(unint64_t), uint64_t (*a6)(unint64_t), void (*a7)(uint64_t, uint64_t), void (*a8)(unint64_t, unint64_t, uint64_t))
{
  v12 = a1;
  switch(a4)
  {
    case 1:

      return a2;
    case 2:
      if (!a1 || !a5(a1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_2683D2250;
        *(v12 + 32) = a2;
        v23 = a2;
        return v12;
      }

      result = a5(v12);
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v21 = result;

      if (v21 <= a3)
      {
        return v12;
      }

      a8(a2, a3, 2);
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!result || v12 >> 62)
      {
        result = a6(v12);
        v12 = result;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
      {
        v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20);
        *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20) = a2;

        return v12;
      }

      goto LABEL_28;
    case 3:
      if (!(a2 | a3))
      {
        goto LABEL_21;
      }

      return 0;
    default:
      if (!a1)
      {
        goto LABEL_21;
      }

      result = a5(a1);
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
        if (result <= a2)
        {
LABEL_21:

          return v12;
        }

        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (!result || v12 >> 62)
        {
          result = a6(v12);
          v12 = result;
        }

        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15 > a2)
        {
          v16 = v15 - 1;
          v17 = v15 - 1 - a2;
          v18 = (v12 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 32;
          v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20);
          a7(v18 + 8, v17);
          *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v16;

          return v12;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
  }
}

unint64_t sub_2682D3F48(unint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_2683D00A8())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:

      return v1;
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2682D3FB0(void *a1)
{
  v1 = [a1 targetTaskListMembers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2681D2438();
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t Snippet.snippetHidden(for:idiom:)()
{
  v1 = sub_2683CECA8();
  v2 = OUTLINED_FUNCTION_0_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Snippet();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  sub_2681432C8(v0, v15 - v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v18 = 1;
    }

    else
    {
      (*(v4 + 104))(v9, *MEMORY[0x277D61BE8], v1);
      v18 = sub_2683CEC98();
      (*(v4 + 8))(v9, v1);
    }
  }

  else
  {
    v18 = 0;
  }

  sub_2682D6410(v16, type metadata accessor for Snippet);
  return v18 & 1;
}

uint64_t type metadata accessor for Snippet()
{
  result = qword_280251A28;
  if (!qword_280251A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2682D4278(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265646E696D6572 && a2 == 0xEE006C6961746544;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000002683FFBA0 == a2;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7265646E696D6572 && a2 == 0xEF65736F706D6F43;
          if (v9 || (sub_2683D0598() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x736B736154646461 && a2 == 0xEA00000000007033;
            if (v10 || (sub_2683D0598() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000002683FFBC0 == a2;
              if (v11 || (sub_2683D0598() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6174654465746F6ELL && a2 == 0xEC00000070316C69;
                if (v12 || (sub_2683D0598() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F4E657461657263 && a2 == 0xEC00000070336574;
                  if (v13 || (sub_2683D0598() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000002683FFBE0 == a2;
                    if (v14 || (sub_2683D0598() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6552686372616573 && a2 == 0xEE007033746C7573;
                      if (v15 || (sub_2683D0598() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000012 && 0x80000002683FFC00 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_2683D0598();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_2682D464C(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x6769626D61736964;
      break;
    case 2:
    case 4:
      result = 0x7265646E696D6572;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x736B736154646461;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6174654465746F6ELL;
      break;
    case 8:
      result = 0x6F4E657461657263;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6552686372616573;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2682D47DC(uint64_t a1)
{
  v2 = sub_2682D6218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4818(uint64_t a1)
{
  v2 = sub_2682D6218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4854(uint64_t a1)
{
  v2 = sub_2682D63BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4890(uint64_t a1)
{
  v2 = sub_2682D63BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D48D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682D4278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682D48FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2682D4644();
  *a1 = result;
  return result;
}

uint64_t sub_2682D4924(uint64_t a1)
{
  v2 = sub_2682D5F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4960(uint64_t a1)
{
  v2 = sub_2682D5F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D499C(uint64_t a1)
{
  v2 = sub_2682D611C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D49D8(uint64_t a1)
{
  v2 = sub_2682D611C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4A14(uint64_t a1)
{
  v2 = sub_2682D6368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4A50(uint64_t a1)
{
  v2 = sub_2682D6368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4A8C(uint64_t a1)
{
  v2 = sub_2682D6170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4AC8(uint64_t a1)
{
  v2 = sub_2682D6170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4B04(uint64_t a1)
{
  v2 = sub_2682D6074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4B40(uint64_t a1)
{
  v2 = sub_2682D6074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4B7C(uint64_t a1)
{
  v2 = sub_2682D626C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4BB8(uint64_t a1)
{
  v2 = sub_2682D626C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4BF4(uint64_t a1)
{
  v2 = sub_2682D6314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4C30(uint64_t a1)
{
  v2 = sub_2682D6314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4C6C(uint64_t a1)
{
  v2 = sub_2682D62C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4CA8(uint64_t a1)
{
  v2 = sub_2682D62C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4CE4(uint64_t a1)
{
  v2 = sub_2682D6020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4D20(uint64_t a1)
{
  v2 = sub_2682D6020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4D5C(uint64_t a1)
{
  v2 = sub_2682D61C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4D98(uint64_t a1)
{
  v2 = sub_2682D61C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682D4DD4(uint64_t a1)
{
  v2 = sub_2682D5FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682D4E10(uint64_t a1)
{
  v2 = sub_2682D5FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518A0, &qword_2683E4A90);
  OUTLINED_FUNCTION_0_38(v2, &__dst[13]);
  v217 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518A8, &qword_2683E4A98);
  OUTLINED_FUNCTION_0_38(v8, &__dst[11]);
  v215 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v13);
  v211 = type metadata accessor for Snippet.SearchResult3p();
  v14 = OUTLINED_FUNCTION_1(v211);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518B0, &qword_2683E4AA0);
  OUTLINED_FUNCTION_0_38(v18, &__dst[5]);
  v209 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518B8, &qword_2683E4AA8);
  OUTLINED_FUNCTION_0_38(v24, &__dst[2]);
  v206 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v29);
  Note3p = type metadata accessor for Snippet.CreateNote3p();
  v30 = OUTLINED_FUNCTION_1(Note3p);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518C0, &qword_2683E4AB0);
  OUTLINED_FUNCTION_0_38(v34, &v223[88]);
  v202 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518C8, &qword_2683E4AB8);
  OUTLINED_FUNCTION_0_38(v40, &v223[72]);
  v201 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v45);
  v200 = type metadata accessor for Snippet.SetTaskAttribute3p();
  v46 = OUTLINED_FUNCTION_1(v200);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518D0, &qword_2683E4AC0);
  OUTLINED_FUNCTION_0_38(v50, &v223[24]);
  v199 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v55);
  v198 = type metadata accessor for Snippet.AddTasks3p();
  v56 = OUTLINED_FUNCTION_1(v198);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518D8, &qword_2683E4AC8);
  OUTLINED_FUNCTION_0_38(v60, &v221);
  v197 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v65);
  v196 = type metadata accessor for Snippet.ReminderCompose();
  v66 = OUTLINED_FUNCTION_1(v196);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518E0, &qword_2683E4AD0);
  OUTLINED_FUNCTION_0_38(v70, v216);
  v195 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v75);
  v194 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v76 = OUTLINED_FUNCTION_1(v194);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518E8, &qword_2683E4AD8);
  OUTLINED_FUNCTION_0_38(v80, &v211);
  v193[6] = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518F0, &qword_2683E4AE0);
  OUTLINED_FUNCTION_0_38(v86, &v208);
  v193[3] = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802518F8, &qword_2683E4AE8);
  OUTLINED_FUNCTION_0_38(v92, v205);
  v193[0] = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v96);
  v98 = v193 - v97;
  v99 = type metadata accessor for Snippet.AppPunchout();
  v100 = OUTLINED_FUNCTION_1(v99);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_14_3();
  v105 = v104 - v103;
  v106 = type metadata accessor for Snippet();
  v107 = OUTLINED_FUNCTION_1(v106);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_14_3();
  v112 = v111 - v110;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251900, &qword_2683E4AF0);
  OUTLINED_FUNCTION_0_3(v225);
  v221 = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v116);
  v118 = v193 - v117;
  v119 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v119);
  sub_2682D5F78();
  v220 = v118;
  sub_2683D0718();
  sub_2681432C8(v219, v112);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v167 = *v112;
      v168 = *(v112 + 8);
      v170 = *(v112 + 16);
      v169 = *(v112 + 24);
      LOBYTE(__dst[0]) = 1;
      sub_2682D6368();
      v171 = v193[2];
      v172 = v225;
      OUTLINED_FUNCTION_24_14();
      v174 = *(v173 - 256);
      sub_2683D04C8();
      __dst[0] = v167;
      LOBYTE(__dst[1]) = v168;
      __dst[2] = v170;
      __dst[3] = v169;
      sub_2682D28F4();
      OUTLINED_FUNCTION_33_12(&v208);
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_12_15(v207);
      v175(v171, v168);
      OUTLINED_FUNCTION_12_15(&v225);
      v176(v174, v172);

    case 2u:
      memcpy(__dst, v112, 0x69uLL);
      v223[0] = 2;
      sub_2682D6314();
      OUTLINED_FUNCTION_3_36(&v209);
      memcpy(v223, __dst, 0x69uLL);
      sub_2681B8338();
      OUTLINED_FUNCTION_33_12(&v211);
      OUTLINED_FUNCTION_38_11();
      v151 = OUTLINED_FUNCTION_4_35(v210);
      v152(v151);
      OUTLINED_FUNCTION_12_15(&v225);
      v153(v119, v106);
      return sub_2681B82AC(__dst);
    case 3u:
      OUTLINED_FUNCTION_44_10(v112, type metadata accessor for Snippet.ReminderSearchResult, v213);
      LOBYTE(__dst[0]) = 3;
      sub_2682D62C0();
      OUTLINED_FUNCTION_3_36(&v214);
      OUTLINED_FUNCTION_29_14();
      sub_2682D7B00(v155, v156);
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_33_12(v216);
      OUTLINED_FUNCTION_18_23(v212);
      v157 = OUTLINED_FUNCTION_4_35(&v215);
      v158(v157);
      v125 = type metadata accessor for Snippet.ReminderSearchResult;
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_44_10(v112, type metadata accessor for Snippet.ReminderCompose, &v218);
      LOBYTE(__dst[0]) = 4;
      sub_2682D626C();
      OUTLINED_FUNCTION_3_36(&v219);
      OUTLINED_FUNCTION_28_14();
      sub_2682D7B00(v136, v137);
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_33_12(&v221);
      OUTLINED_FUNCTION_18_23(&v217);
      v138 = OUTLINED_FUNCTION_4_35(&v220);
      v139(v138);
      v125 = type metadata accessor for Snippet.ReminderCompose;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_44_10(v112, type metadata accessor for Snippet.AddTasks3p, v223);
      LOBYTE(__dst[0]) = 5;
      sub_2682D6218();
      OUTLINED_FUNCTION_3_36(&v223[8]);
      OUTLINED_FUNCTION_26_15();
      sub_2682D7B00(v177, v178);
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_33_12(&v223[24]);
      OUTLINED_FUNCTION_18_23(v222);
      v179 = OUTLINED_FUNCTION_4_35(&v223[16]);
      v180(v179);
      v125 = type metadata accessor for Snippet.AddTasks3p;
      goto LABEL_15;
    case 6u:
      OUTLINED_FUNCTION_44_10(v112, type metadata accessor for Snippet.SetTaskAttribute3p, &v223[40]);
      LOBYTE(__dst[0]) = 6;
      sub_2682D61C4();
      OUTLINED_FUNCTION_3_36(&v223[48]);
      OUTLINED_FUNCTION_25_18();
      sub_2682D7B00(v181, v182);
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_33_12(&v223[72]);
      OUTLINED_FUNCTION_18_23(&v223[32]);
      v183 = OUTLINED_FUNCTION_4_35(&v223[56]);
      v184(v183);
      v125 = type metadata accessor for Snippet.SetTaskAttribute3p;
      goto LABEL_15;
    case 7u:
      v160 = *v112;
      v159 = *(v112 + 8);
      LOBYTE(__dst[0]) = 7;
      sub_2682D6170();
      OUTLINED_FUNCTION_24_14();
      v162 = *(v161 - 256);
      sub_2683D04C8();
      __dst[0] = v160;
      __dst[1] = v159;
      sub_2681386F8();
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_12_15(&v223[80]);
      v163 = OUTLINED_FUNCTION_32_11();
      v164(v163);
      v165 = OUTLINED_FUNCTION_4_35(&v225);
      v166(v165);

    case 8u:
      OUTLINED_FUNCTION_44_10(v112, type metadata accessor for Snippet.CreateNote3p, &v223[104]);
      LOBYTE(__dst[0]) = 8;
      sub_2682D611C();
      OUTLINED_FUNCTION_3_36(__dst);
      OUTLINED_FUNCTION_30_12();
      sub_2682D7B00(v189, v190);
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_33_12(&__dst[2]);
      OUTLINED_FUNCTION_18_23(&v223[96]);
      v191 = OUTLINED_FUNCTION_4_35(&__dst[1]);
      v192(v191);
      v125 = type metadata accessor for Snippet.CreateNote3p;
      goto LABEL_15;
    case 9u:
      v140 = *v112;
      v141 = *(v112 + 8);
      v142 = *(v112 + 16);
      v144 = *(v112 + 24);
      v143 = *(v112 + 32);
      v145 = *(v112 + 40);
      LOBYTE(__dst[0]) = 9;
      sub_2682D6074();
      v146 = v208;
      OUTLINED_FUNCTION_24_14();
      v148 = *(v147 - 256);
      sub_2683D04C8();
      v219 = v140;
      __dst[0] = v140;
      __dst[1] = v141;
      LOBYTE(__dst[2]) = v142;
      __dst[3] = v144;
      __dst[4] = v143;
      LOBYTE(__dst[5]) = v145;
      sub_2682D60C8();
      OUTLINED_FUNCTION_33_12(&__dst[5]);
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_12_15(&__dst[4]);
      v149(v146, v141);
      OUTLINED_FUNCTION_12_15(&v225);
      v150(v148, v225);

    case 0xAu:
      OUTLINED_FUNCTION_44_10(v112, type metadata accessor for Snippet.SearchResult3p, &__dst[7]);
      LOBYTE(__dst[0]) = 10;
      sub_2682D6020();
      OUTLINED_FUNCTION_3_36(&__dst[8]);
      OUTLINED_FUNCTION_31_8();
      sub_2682D7B00(v185, v186);
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_33_12(&__dst[11]);
      OUTLINED_FUNCTION_18_23(&__dst[6]);
      v187 = OUTLINED_FUNCTION_4_35(&__dst[10]);
      v188(v187);
      v125 = type metadata accessor for Snippet.SearchResult3p;
      goto LABEL_15;
    case 0xBu:
      v126 = *v112;
      LOBYTE(__dst[0]) = 11;
      sub_2682D5FCC();
      v127 = v214;
      v128 = v225;
      OUTLINED_FUNCTION_24_14();
      v130 = *(v129 - 256);
      sub_2683D04C8();
      LOWORD(__dst[0]) = v126;
      sub_2681B6644();
      v131 = v218;
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_12_15(&__dst[12]);
      v132(v127, v131);
      OUTLINED_FUNCTION_12_15(&v225);
      v134 = v130;
      v135 = v128;
      return v133(v134, v135);
    default:
      sub_2682D79BC(v112, v105, type metadata accessor for Snippet.AppPunchout);
      LOBYTE(__dst[0]) = 0;
      sub_2682D63BC();
      v106 = v225;
      OUTLINED_FUNCTION_24_14();
      v119 = *(v120 - 256);
      sub_2683D04C8();
      OUTLINED_FUNCTION_27_11();
      sub_2682D7B00(v121, v122);
      OUTLINED_FUNCTION_36_13();
      v123 = v193[1];
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_12_15(v204);
      v124(v98, v123);
      v125 = type metadata accessor for Snippet.AppPunchout;
LABEL_15:
      sub_2682D6410(v105, v125);
      OUTLINED_FUNCTION_12_15(&v225);
      v134 = v119;
      v135 = v106;
      return v133(v134, v135);
  }
}

unint64_t sub_2682D5F78()
{
  result = qword_280251908;
  if (!qword_280251908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251908);
  }

  return result;
}

unint64_t sub_2682D5FCC()
{
  result = qword_280251910;
  if (!qword_280251910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251910);
  }

  return result;
}

unint64_t sub_2682D6020()
{
  result = qword_280251918;
  if (!qword_280251918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251918);
  }

  return result;
}

unint64_t sub_2682D6074()
{
  result = qword_280251920;
  if (!qword_280251920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251920);
  }

  return result;
}

unint64_t sub_2682D60C8()
{
  result = qword_280251928;
  if (!qword_280251928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251928);
  }

  return result;
}

unint64_t sub_2682D611C()
{
  result = qword_280251930;
  if (!qword_280251930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251930);
  }

  return result;
}

unint64_t sub_2682D6170()
{
  result = qword_280251940;
  if (!qword_280251940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251940);
  }

  return result;
}

unint64_t sub_2682D61C4()
{
  result = qword_280251948;
  if (!qword_280251948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251948);
  }

  return result;
}

unint64_t sub_2682D6218()
{
  result = qword_280251950;
  if (!qword_280251950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251950);
  }

  return result;
}

unint64_t sub_2682D626C()
{
  result = qword_280251960;
  if (!qword_280251960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251960);
  }

  return result;
}

unint64_t sub_2682D62C0()
{
  result = qword_280251968;
  if (!qword_280251968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251968);
  }

  return result;
}

unint64_t sub_2682D6314()
{
  result = qword_280251970;
  if (!qword_280251970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251970);
  }

  return result;
}

unint64_t sub_2682D6368()
{
  result = qword_280251978;
  if (!qword_280251978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251978);
  }

  return result;
}

unint64_t sub_2682D63BC()
{
  result = qword_280251980;
  if (!qword_280251980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251980);
  }

  return result;
}

uint64_t sub_2682D6410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t Snippet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v249 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280251990, &unk_2683E4AF8);
  OUTLINED_FUNCTION_0_38(v3, &__src[12]);
  v238 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280251998, &unk_2683E4B00);
  OUTLINED_FUNCTION_0_38(v9, &__src[11]);
  v237 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519A0, &unk_2683E4B08);
  OUTLINED_FUNCTION_0_38(v15, &__src[10]);
  v236 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519A8, &unk_2683E4B10);
  OUTLINED_FUNCTION_0_38(v21, &__src[9]);
  v235 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519B0, &unk_2683E4B18);
  OUTLINED_FUNCTION_0_38(v27, &__src[8]);
  v234 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519B8, &unk_2683E4B20);
  OUTLINED_FUNCTION_0_38(v33, &__src[7]);
  v233 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519C0, &unk_2683E4B28);
  OUTLINED_FUNCTION_0_38(v39, &__src[6]);
  v232 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519C8, &unk_2683E4B30);
  OUTLINED_FUNCTION_0_38(v45, &__src[5]);
  v231 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_0();
  v254 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519D0, &unk_2683E4B38);
  OUTLINED_FUNCTION_0_38(v51, &__src[4]);
  v230 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_5_0();
  v253 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519D8, &unk_2683E4B40);
  OUTLINED_FUNCTION_0_38(v57, &__src[3]);
  v240 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519E0, &unk_2683E4B48);
  OUTLINED_FUNCTION_0_38(v63, &__src[2]);
  v229 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519E8, &unk_2683E4B50);
  OUTLINED_FUNCTION_0_38(v69, __src);
  v228 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v74);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802519F0, &unk_2683E4B58);
  OUTLINED_FUNCTION_0_3(v256);
  v251 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v78);
  v80 = &v218 - v79;
  v252 = type metadata accessor for Snippet();
  v81 = OUTLINED_FUNCTION_1(v252);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  v92 = MEMORY[0x28223BE20](v91);
  v94 = &v218 - v93;
  v95 = MEMORY[0x28223BE20](v92);
  v97 = &v218 - v96;
  v98 = MEMORY[0x28223BE20](v95);
  v100 = &v218 - v99;
  v101 = MEMORY[0x28223BE20](v98);
  v103 = &v218 - v102;
  MEMORY[0x28223BE20](v101);
  v105 = &v218 - v104;
  v106 = a1[3];
  v107 = a1[4];
  v257 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v106);
  sub_2682D5F78();
  v255 = v80;
  v108 = v259;
  sub_2683D06F8();
  if (v108)
  {
    return __swift_destroy_boxed_opaque_existential_0(v257);
  }

  v223 = v103;
  v221 = v100;
  v222 = v97;
  v224 = v94;
  v109 = v253;
  v110 = v252;
  v259 = v105;
  v111 = v255;
  v112 = sub_2683D04B8();
  result = sub_268151B7C(v112, 0);
  if (v115 == v116 >> 1)
  {
    goto LABEL_8;
  }

  v220 = 0;
  if (v115 >= (v116 >> 1))
  {
    __break(1u);
    return result;
  }

  v219 = *(v114 + v115);
  sub_268151B68(v115 + 1);
  v118 = v117;
  v120 = v119;
  swift_unknownObjectRelease();
  if (v118 != v120 >> 1)
  {
LABEL_8:
    v131 = v111;
    v132 = sub_2683D01D8();
    swift_allocError();
    v134 = v133;
    v135 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v134 = v110;
    v111 = v256;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v132 - 8) + 104))(v134, *MEMORY[0x277D84160], v132);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_23_20();
    v130 = v131;
LABEL_9:
    v136 = v111;
LABEL_10:
    v129(v130, v136);
    return __swift_destroy_boxed_opaque_existential_0(v257);
  }

  v121 = v220;
  v122 = v250;
  switch(v219)
  {
    case 1:
      LOBYTE(__src[0]) = 1;
      sub_2682D6368();
      OUTLINED_FUNCTION_13_27();
      sub_2682D289C();
      OUTLINED_FUNCTION_45_6();
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_22_16();
      v194 = OUTLINED_FUNCTION_4_35(&v244);
      v195(v194);
      v196 = OUTLINED_FUNCTION_20_23();
      v197(v196);
      v198 = __src[1];
      v199 = __src[2];
      v200 = __src[3];
      v168 = v221;
      *v221 = __src[0];
      v168[8] = v198;
      *(v168 + 2) = v199;
      *(v168 + 3) = v200;
      OUTLINED_FUNCTION_41_9();
      goto LABEL_36;
    case 2:
      LOBYTE(__src[0]) = 2;
      sub_2682D6314();
      v137 = v242;
      OUTLINED_FUNCTION_13_27();
      sub_2681B82E0();
      OUTLINED_FUNCTION_45_6();
      v138 = (v240 + 8);
      v139 = (v251 + 8);
      v220 = 0;
      swift_unknownObjectRelease();
      (*v138)(v137, v122);
      v179 = *v139;
      v180 = OUTLINED_FUNCTION_32_11();
      v181(v180);
      v168 = v222;
      memcpy(v222, __src, 0x69uLL);
      OUTLINED_FUNCTION_41_9();
      goto LABEL_36;
    case 3:
      LOBYTE(__src[0]) = 3;
      sub_2682D62C0();
      v140 = v109;
      sub_2683D0418();
      if (v121)
      {
        v153 = OUTLINED_FUNCTION_7_22();
        v155(v153, v154);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v257);
      }

      type metadata accessor for Snippet.ReminderSearchResult(0);
      v220 = 0;
      OUTLINED_FUNCTION_29_14();
      sub_2682D7B00(v141, v142);
      v143 = v224;
      OUTLINED_FUNCTION_21_18();
      v144 = v220;
      sub_2683D04A8();
      if (v144)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_12_15(&v245);
        v146 = v140;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_22_16();
      OUTLINED_FUNCTION_12_15(&v245);
      v182(v140, v97);
      v183 = OUTLINED_FUNCTION_7_22();
      v184(v183);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_36();
      v186 = v143;
      goto LABEL_42;
    case 4:
      LOBYTE(__src[0]) = 4;
      sub_2682D626C();
      OUTLINED_FUNCTION_43_8();
      type metadata accessor for Snippet.ReminderCompose();
      OUTLINED_FUNCTION_28_14();
      sub_2682D7B00(v156, v157);
      OUTLINED_FUNCTION_34_13(&v254);
      OUTLINED_FUNCTION_21_18();
      sub_2683D04A8();
      OUTLINED_FUNCTION_22_16();
      v169 = OUTLINED_FUNCTION_10_22(&v246);
      v170(v169);
      OUTLINED_FUNCTION_23_20();
      v171(v120, v111);
      OUTLINED_FUNCTION_40_11();
      goto LABEL_41;
    case 5:
      LOBYTE(__src[0]) = 5;
      sub_2682D6218();
      OUTLINED_FUNCTION_12_20(&v259);
      type metadata accessor for Snippet.AddTasks3p();
      OUTLINED_FUNCTION_39_10();
      OUTLINED_FUNCTION_26_15();
      sub_2682D7B00(v158, v159);
      OUTLINED_FUNCTION_34_13(&v255);
      sub_2683D04A8();
      OUTLINED_FUNCTION_42_10();
      if (v109)
      {
        swift_unknownObjectRelease();
        v160 = OUTLINED_FUNCTION_6_28(&v247);
        v161(v160);
        (*(v97 + 1))(v111);
        return __swift_destroy_boxed_opaque_existential_0(v257);
      }

      OUTLINED_FUNCTION_22_16();
      v201 = OUTLINED_FUNCTION_6_28(&v247);
      v202(v201);
      (*(v97 + 1))(v111, v256);
      OUTLINED_FUNCTION_40_11();
      goto LABEL_41;
    case 6:
      LOBYTE(__src[0]) = 6;
      sub_2682D61C4();
      OUTLINED_FUNCTION_19_24(&v260);
      type metadata accessor for Snippet.SetTaskAttribute3p();
      OUTLINED_FUNCTION_39_10();
      OUTLINED_FUNCTION_25_18();
      sub_2682D7B00(v147, v148);
      OUTLINED_FUNCTION_34_13(&v256);
      v149 = v97;
      OUTLINED_FUNCTION_21_18();
      sub_2683D04A8();
      if (v109)
      {
        swift_unknownObjectRelease();
        v150 = &v248;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_22_16();
      v203 = OUTLINED_FUNCTION_10_22(&v248);
      v204(v203);
      v205 = OUTLINED_FUNCTION_7_22();
      v206(v205);
      OUTLINED_FUNCTION_40_11();
      goto LABEL_41;
    case 7:
      LOBYTE(__src[0]) = 7;
      sub_2682D6170();
      OUTLINED_FUNCTION_12_20(&v261);
      sub_2681386A0();
      OUTLINED_FUNCTION_35_11();
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_22_16();
      v187 = OUTLINED_FUNCTION_6_28(&v249);
      v188(v187);
      v189 = OUTLINED_FUNCTION_20_23();
      v190(v189);
      v191 = __src[1];
      v168 = v225;
      *v225 = __src[0];
      *(v168 + 1) = v191;
      OUTLINED_FUNCTION_41_9();
      goto LABEL_36;
    case 8:
      LOBYTE(__src[0]) = 8;
      sub_2682D611C();
      OUTLINED_FUNCTION_19_24(&v262);
      type metadata accessor for Snippet.CreateNote3p();
      OUTLINED_FUNCTION_39_10();
      OUTLINED_FUNCTION_30_12();
      sub_2682D7B00(v162, v163);
      OUTLINED_FUNCTION_34_13(&v257);
      v149 = v97;
      OUTLINED_FUNCTION_21_18();
      sub_2683D04A8();
      if (v109)
      {
        swift_unknownObjectRelease();
        v150 = &v250;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_22_16();
      v211 = OUTLINED_FUNCTION_10_22(&v250);
      v212(v211);
      v213 = OUTLINED_FUNCTION_7_22();
      v214(v213);
      OUTLINED_FUNCTION_40_11();
      goto LABEL_41;
    case 9:
      LOBYTE(__src[0]) = 9;
      sub_2682D6074();
      OUTLINED_FUNCTION_12_20(&v263);
      sub_2682D7A1C();
      OUTLINED_FUNCTION_35_11();
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_22_16();
      v172 = OUTLINED_FUNCTION_6_28(&v251);
      v173(v172);
      v174 = OUTLINED_FUNCTION_20_23();
      v175(v174);
      v176 = __src[1];
      v177 = __src[2];
      v178 = __src[5];
      v168 = v226;
      *v226 = __src[0];
      *(v168 + 1) = v176;
      v168[16] = v177;
      *(v168 + 24) = *&__src[3];
      v168[40] = v178;
      OUTLINED_FUNCTION_41_9();
      goto LABEL_36;
    case 10:
      LOBYTE(__src[0]) = 10;
      sub_2682D6020();
      OUTLINED_FUNCTION_19_24(&v264);
      type metadata accessor for Snippet.SearchResult3p();
      OUTLINED_FUNCTION_39_10();
      OUTLINED_FUNCTION_31_8();
      sub_2682D7B00(v151, v152);
      v149 = v97;
      OUTLINED_FUNCTION_21_18();
      sub_2683D04A8();
      if (v109)
      {
        swift_unknownObjectRelease();
        v150 = &v252;
LABEL_32:
        OUTLINED_FUNCTION_12_15(v150);
        v146 = v149;
LABEL_33:
        v145(v146, v97);
        v130 = OUTLINED_FUNCTION_7_22();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_22_16();
      v207 = OUTLINED_FUNCTION_10_22(&v252);
      v208(v207);
      v209 = OUTLINED_FUNCTION_7_22();
      v210(v209);
      OUTLINED_FUNCTION_40_11();
LABEL_41:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_36();
      v186 = v122;
      goto LABEL_42;
    case 11:
      LOBYTE(__src[0]) = 11;
      sub_2682D5FCC();
      OUTLINED_FUNCTION_12_20(&v265);
      sub_2681B65EC();
      OUTLINED_FUNCTION_35_11();
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_22_16();
      v164 = OUTLINED_FUNCTION_6_28(&v253);
      v165(v164);
      v166 = OUTLINED_FUNCTION_20_23();
      v167(v166);
      v168 = v227;
      *v227 = __src[0];
      OUTLINED_FUNCTION_41_9();
LABEL_36:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_36();
      v186 = v168;
      goto LABEL_42;
    default:
      LOBYTE(__src[0]) = 0;
      sub_2682D63BC();
      v123 = v241;
      OUTLINED_FUNCTION_43_8();
      type metadata accessor for Snippet.AppPunchout();
      OUTLINED_FUNCTION_39_10();
      OUTLINED_FUNCTION_27_11();
      sub_2682D7B00(v124, v125);
      v126 = v223;
      v127 = v239;
      sub_2683D04A8();
      if (v109)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_12_15(&v243);
        v128(v123, v127);
        OUTLINED_FUNCTION_23_20();
        v130 = v255;
        goto LABEL_9;
      }

      v220 = 0;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_12_15(&v243);
      v192(v123, v127);
      OUTLINED_FUNCTION_23_20();
      v193(v255, v111);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_36();
      v186 = v126;
LABEL_42:
      v215 = v259;
      sub_2682D79BC(v186, v259, v185);
      v216 = v257;
      OUTLINED_FUNCTION_2_36();
      sub_2682D79BC(v215, v249, v217);
      result = __swift_destroy_boxed_opaque_existential_0(v216);
      break;
  }

  return result;
}

uint64_t sub_2682D79BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2682D7A1C()
{
  result = qword_2802519F8;
  if (!qword_2802519F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802519F8);
  }

  return result;
}

uint64_t sub_2682D7B00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2682D7B48()
{
  result = type metadata accessor for Snippet.AppPunchout();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Snippet.ReminderSearchResult(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Snippet.ReminderCompose();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Snippet.AddTasks3p();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Snippet.SetTaskAttribute3p();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Snippet.CreateNote3p();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Snippet.SearchResult3p();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Snippet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2682D7DD8(_BYTE *result, int a2, int a3)
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

unint64_t sub_2682D7E88()
{
  result = qword_280251A38;
  if (!qword_280251A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A38);
  }

  return result;
}

unint64_t sub_2682D7EE0()
{
  result = qword_280251A40;
  if (!qword_280251A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A40);
  }

  return result;
}

unint64_t sub_2682D7F38()
{
  result = qword_280251A48;
  if (!qword_280251A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A48);
  }

  return result;
}

unint64_t sub_2682D7F90()
{
  result = qword_280251A50;
  if (!qword_280251A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A50);
  }

  return result;
}

unint64_t sub_2682D7FE8()
{
  result = qword_280251A58;
  if (!qword_280251A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A58);
  }

  return result;
}

unint64_t sub_2682D8040()
{
  result = qword_280251A60;
  if (!qword_280251A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A60);
  }

  return result;
}

unint64_t sub_2682D8098()
{
  result = qword_280251A68;
  if (!qword_280251A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A68);
  }

  return result;
}

unint64_t sub_2682D80F0()
{
  result = qword_280251A70;
  if (!qword_280251A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A70);
  }

  return result;
}

unint64_t sub_2682D8148()
{
  result = qword_280251A78;
  if (!qword_280251A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A78);
  }

  return result;
}

unint64_t sub_2682D81A0()
{
  result = qword_280251A80;
  if (!qword_280251A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A80);
  }

  return result;
}

unint64_t sub_2682D81F8()
{
  result = qword_280251A88;
  if (!qword_280251A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A88);
  }

  return result;
}

unint64_t sub_2682D8250()
{
  result = qword_280251A90;
  if (!qword_280251A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A90);
  }

  return result;
}

unint64_t sub_2682D82A8()
{
  result = qword_280251A98;
  if (!qword_280251A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251A98);
  }

  return result;
}

unint64_t sub_2682D8300()
{
  result = qword_280251AA0;
  if (!qword_280251AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AA0);
  }

  return result;
}

unint64_t sub_2682D8358()
{
  result = qword_280251AA8;
  if (!qword_280251AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AA8);
  }

  return result;
}

unint64_t sub_2682D83B0()
{
  result = qword_280251AB0;
  if (!qword_280251AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AB0);
  }

  return result;
}

unint64_t sub_2682D8408()
{
  result = qword_280251AB8;
  if (!qword_280251AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AB8);
  }

  return result;
}

unint64_t sub_2682D8460()
{
  result = qword_280251AC0;
  if (!qword_280251AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AC0);
  }

  return result;
}

unint64_t sub_2682D84B8()
{
  result = qword_280251AC8;
  if (!qword_280251AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AC8);
  }

  return result;
}

unint64_t sub_2682D8510()
{
  result = qword_280251AD0;
  if (!qword_280251AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AD0);
  }

  return result;
}

unint64_t sub_2682D8568()
{
  result = qword_280251AD8;
  if (!qword_280251AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AD8);
  }

  return result;
}

unint64_t sub_2682D85C0()
{
  result = qword_280251AE0;
  if (!qword_280251AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AE0);
  }

  return result;
}

unint64_t sub_2682D8618()
{
  result = qword_280251AE8;
  if (!qword_280251AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AE8);
  }

  return result;
}

unint64_t sub_2682D8670()
{
  result = qword_280251AF0;
  if (!qword_280251AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AF0);
  }

  return result;
}

unint64_t sub_2682D86C8()
{
  result = qword_280251AF8;
  if (!qword_280251AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251AF8);
  }

  return result;
}

unint64_t sub_2682D8720()
{
  result = qword_280251B00;
  if (!qword_280251B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B00);
  }

  return result;
}

unint64_t sub_2682D8778()
{
  result = qword_280251B08;
  if (!qword_280251B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B08);
  }

  return result;
}

unint64_t sub_2682D87D0()
{
  result = qword_280251B10;
  if (!qword_280251B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B10);
  }

  return result;
}

unint64_t sub_2682D8828()
{
  result = qword_280251B18;
  if (!qword_280251B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B18);
  }

  return result;
}

unint64_t sub_2682D8880()
{
  result = qword_280251B20;
  if (!qword_280251B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B20);
  }

  return result;
}

unint64_t sub_2682D88D8()
{
  result = qword_280251B28;
  if (!qword_280251B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B28);
  }

  return result;
}

unint64_t sub_2682D8930()
{
  result = qword_280251B30;
  if (!qword_280251B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B30);
  }

  return result;
}

unint64_t sub_2682D8988()
{
  result = qword_280251B38;
  if (!qword_280251B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B38);
  }

  return result;
}

unint64_t sub_2682D89E0()
{
  result = qword_280251B40;
  if (!qword_280251B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B40);
  }

  return result;
}

unint64_t sub_2682D8A38()
{
  result = qword_280251B48;
  if (!qword_280251B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B48);
  }

  return result;
}

unint64_t sub_2682D8A90()
{
  result = qword_280251B50;
  if (!qword_280251B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B50);
  }

  return result;
}

unint64_t sub_2682D8AE8()
{
  result = qword_280251B58;
  if (!qword_280251B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B58);
  }

  return result;
}

unint64_t sub_2682D8B40()
{
  result = qword_280251B60;
  if (!qword_280251B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B60);
  }

  return result;
}

unint64_t sub_2682D8B98()
{
  result = qword_280251B68;
  if (!qword_280251B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_36@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);
  v5 = *(v1 - 336);

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_12_20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 216);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_13_27()
{
  v2 = *(v0 - 216);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_18_23@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 320);

  return sub_2683D0548();
}

uint64_t OUTLINED_FUNCTION_19_24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 216);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_22_16()
{
  *(v1 - 640) = v0;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_35_11()
{
  v2 = *(v0 - 256);

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_38_11()
{
  v2 = *(v0 - 320);

  return sub_2683D0548();
}

uint64_t OUTLINED_FUNCTION_43_8()
{
  v2 = *(v0 - 216);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_44_10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2682D79BC(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_45_6()
{
  v2 = *(v0 - 256);

  return sub_2683D04A8();
}

uint64_t sub_2682D8F20()
{
  v0 = sub_2683CB7A8();
  v1 = OUTLINED_FUNCTION_0_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_2683CB528();
  v14 = OUTLINED_FUNCTION_0_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v27 - v22;
  sub_2683CB768();
  sub_2683CB738();
  (*(v3 + 8))(v8, v0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_268220674(v12);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v23, v12, v13);
    sub_2683CB518();
    v24 = sub_2683CB4B8();
    v25 = *(v16 + 8);
    v25(v21, v13);
    v25(v23, v13);
  }

  return v24 & 1;
}

uint64_t sub_2682D915C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
  v0 = sub_2683CB798();
  OUTLINED_FUNCTION_0_3(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2683DB790;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277CC9980], v0);
  v8(v7 + v4, *MEMORY[0x277CC99A0], v0);
  v8(v7 + 2 * v4, *MEMORY[0x277CC99A8], v0);
  v8(v7 + 3 * v4, *MEMORY[0x277CC9930], v0);
  v9 = sub_2682D9570(v6);
  v10 = sub_2682D92C4(v9);

  return v10 & 1;
}

uint64_t sub_2682D92C4(uint64_t a1)
{
  v2 = sub_2683CB798();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = sub_2683CB0D8();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v40 = v16;
  v41 = v15;
  v42 = v18 - v17;
  (*(v16 + 16))();
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;

  v25 = 0;
  while (v22)
  {
LABEL_9:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    (*(v5 + 16))(v10, *(a1 + 48) + *(v5 + 72) * (v27 | (v25 << 6)), v2);
    v28 = sub_2683CB058();
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_4_36();
      result = v31(v30);
    }

    else
    {
      v32 = v28;
      v33 = v5;
      v34 = a1;
      v35 = sub_2683CAE48();
      v36 = OUTLINED_FUNCTION_4_36();
      result = v37(v36);
      v38 = v32 == v35;
      a1 = v34;
      v5 = v33;
      if (!v38)
      {
        v39 = 1;
LABEL_14:
        (*(v40 + 8))(v42, v41);

        return v39;
      }
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v39 = 0;
      goto LABEL_14;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2682D9570(uint64_t a1)
{
  v2 = sub_2683CB798();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v37 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v32 - v10;
  if (!*(a1 + 16))
  {
    v12 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251B70, &qword_2683E5B38);
  result = sub_2683D0148();
  v12 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v40 = result + 56;
  v14 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v14 + 32) & ~v14);
  v39 = v37 + 16;
  v15 = (v37 + 8);
  v33 = (v37 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v37 + 72);
    v38 = v13 + 1;
    v17 = *(v37 + 16);
    v17(v41, v35 + v16 * v13, v2);
    v18 = *(v12 + 40);
    sub_2682D9880(&qword_280251B78);
    v19 = sub_2683CF9F8();
    v20 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v40 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) == 0)
      {
        break;
      }

      v25 = v12;
      v17(v9, *(v12 + 48) + v21 * v16, v2);
      sub_2682D9880(&qword_280251B80);
      v26 = sub_2683CFA58();
      v27 = *v15;
      (*v15)(v9, v2);
      if (v26)
      {
        result = (v27)(v41, v2);
        v12 = v25;
        goto LABEL_12;
      }

      v19 = v21 + 1;
      v12 = v25;
    }

    v28 = v41;
    *(v40 + 8 * v22) = v24 | v23;
    result = (*v33)(*(v12 + 48) + v21 * v16, v28, v2);
    v29 = *(v12 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    *(v12 + 16) = v31;
LABEL_12:
    v13 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2682D9880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2683CB798();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2682D98C4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251B88, &qword_2683E5B40), v2 = sub_2683D0148(), (v25 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v23 = v1;
    v24 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v24 + v3);
      v26 = v3 + 1;
      v5 = *(v2 + 40);
      sub_2683D0698();
      switch(v4)
      {
        case 4:
          OUTLINED_FUNCTION_2_37();
          break;
        case 6:
          OUTLINED_FUNCTION_3_37();
          break;
        default:
          break;
      }

      sub_2683CFB48();

      v6 = sub_2683D06D8();
      v7 = ~(-1 << *(v2 + 32));
      v8 = v6 & v7;
      OUTLINED_FUNCTION_5_33();
      if ((v11 & v10) != 0)
      {
        while (1)
        {
          v12 = 0xEC00000073736572;
          v13 = 0x64646120656D6F68;
          switch(*(*(v2 + 48) + v8))
          {
            case 1:
              v13 = 0x646461206B726F77;
              v12 = 0xEC00000073736572;
              break;
            case 2:
              v13 = 0xD000000000000010;
              v12 = 0x80000002683FA6A0;
              break;
            case 3:
              v12 = 0xE600000000000000;
              v13 = 0x79627261656ELL;
              break;
            case 4:
              OUTLINED_FUNCTION_2_37();
              break;
            case 5:
              v14 = 544045415;
              goto LABEL_16;
            case 6:
              OUTLINED_FUNCTION_3_37();
              break;
            case 7:
              v14 = 544829025;
LABEL_16:
              v13 = v14 | 0x7264646100000000;
              v12 = 0xEB00000000737365;
              break;
            case 8:
              v13 = 0xD000000000000010;
              v12 = 0x80000002683FA6F0;
              break;
            default:
              break;
          }

          v15 = 0x64646120656D6F68;
          v16 = 0xEC00000073736572;
          switch(v4)
          {
            case 1:
              v15 = 0x646461206B726F77;
              v16 = 0xEC00000073736572;
              break;
            case 2:
              v15 = 0xD000000000000010;
              v16 = 0x80000002683FA6A0;
              break;
            case 3:
              v16 = 0xE600000000000000;
              v15 = 0x79627261656ELL;
              break;
            case 4:
              v15 = 0x61206C6F6F686373;
              v16 = 0xEE00737365726464;
              break;
            case 5:
              v17 = 544045415;
              goto LABEL_26;
            case 6:
              v15 = 0x646120726568746FLL;
              v16 = 0xED00007373657264;
              break;
            case 7:
              v17 = 544829025;
LABEL_26:
              v15 = v17 | 0x7264646100000000;
              v16 = 0xEB00000000737365;
              break;
            case 8:
              v15 = 0xD000000000000010;
              v16 = 0x80000002683FA6F0;
              break;
            default:
              break;
          }

          if (v13 == v15 && v12 == v16)
          {
            break;
          }

          v19 = sub_2683D0598();

          if (v19)
          {
            goto LABEL_38;
          }

          v8 = (v8 + 1) & v7;
          OUTLINED_FUNCTION_5_33();
          if ((v10 & v11) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
LABEL_35:
        *(v2 + 56 + 8 * v9) = v10 | v11;
        *(*(v2 + 48) + v8) = v4;
        v20 = *(v2 + 16);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_41;
        }

        *(v2 + 16) = v22;
      }

LABEL_38:
      v3 = v26;
      v1 = v23;
      if (v26 == v25)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_39:
  }
}

uint64_t sub_2682D9D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BA8, &qword_2683E5B58);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  (MEMORY[0x28223BE20])();
  v112 = v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BB0, &qword_2683E5B60);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  (MEMORY[0x28223BE20])();
  v111 = v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BB8, &qword_2683E5B68);
  OUTLINED_FUNCTION_23(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  (MEMORY[0x28223BE20])();
  v110 = v101 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BC0, &qword_2683E5B70);
  OUTLINED_FUNCTION_23(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  (MEMORY[0x28223BE20])();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BC8, &qword_2683E5B78);
  OUTLINED_FUNCTION_23(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  (MEMORY[0x28223BE20])();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BD0, &unk_2683E5B80);
  v23 = OUTLINED_FUNCTION_23(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v109 = v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_56_3();
  v108 = v28;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_56_3();
  v107 = v30;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_56_3();
  v106 = v32;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_56_3();
  v113 = v34;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  v37 = v101 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E8, &qword_2683D9190);
  OUTLINED_FUNCTION_23(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v41);
  v43 = v101 - v42;
  v44 = sub_2683CE628();
  v45 = OUTLINED_FUNCTION_0_3(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  v51 = v101 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v52;
  sub_2681340E8(a1, v43, &qword_28024D2E8, &qword_2683D9190);
  if (__swift_getEnumTagSinglePayload(v43, 1, v53) == 1)
  {
    sub_26812D9E0(a1, &qword_28024D2E8, &qword_2683D9190);
    sub_26812D9E0(v43, &qword_28024D2E8, &qword_2683D9190);
  }

  else
  {
    v105 = v47;
    (*(v47 + 32))(v51, v43, v53);
    sub_2683CE5F8();
    OUTLINED_FUNCTION_5_34();
    OUTLINED_FUNCTION_1_42();
    if (v55)
    {
      goto LABEL_8;
    }

    sub_2683CE538();
    OUTLINED_FUNCTION_5_34();
    OUTLINED_FUNCTION_1_42();
    if (v56 || (sub_2683CE5B8(), OUTLINED_FUNCTION_5_34(), OUTLINED_FUNCTION_1_42(), v57) || (sub_2683CE5D8(), OUTLINED_FUNCTION_5_34(), OUTLINED_FUNCTION_1_42(), v58))
    {
LABEL_8:
      sub_2683CE5F8();
      v103 = a1;
      v59 = sub_2683CE678();
      v60 = OUTLINED_FUNCTION_0_51();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
      v63 = sub_2683CE688();
      v102 = v53;
      v64 = v63;
      v65 = OUTLINED_FUNCTION_2_38();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v64);
      v101[1] = v37;
      OUTLINED_FUNCTION_9_26();
      v68 = sub_2683CE698();
      OUTLINED_FUNCTION_89_1(v37);
      sub_2683CE538();
      v104 = a2;
      v69 = OUTLINED_FUNCTION_0_51();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v59);
      v72 = OUTLINED_FUNCTION_2_38();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v64);
      v75 = v113;
      sub_2683CE668();
      OUTLINED_FUNCTION_89_1(v75);
      sub_2683CE5B8();
      v76 = OUTLINED_FUNCTION_0_51();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v59);
      v79 = OUTLINED_FUNCTION_2_38();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v64);
      v82 = v106;
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_89_1(v82);
      sub_2683CE5D8();
      v83 = OUTLINED_FUNCTION_0_51();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v59);
      v86 = OUTLINED_FUNCTION_2_38();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v64);
      v89 = v107;
      a2 = v104;
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_89_1(v89);
      v90 = sub_2683CE858();
      __swift_storeEnumTagSinglePayload(v110, 1, 1, v90);
      __swift_storeEnumTagSinglePayload(v108, 1, 1, v68);
      __swift_storeEnumTagSinglePayload(v109, 1, 1, v68);
      sub_2683CE838();
      v91 = OUTLINED_FUNCTION_0_51();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
      sub_2683CE848();
      v95 = OUTLINED_FUNCTION_2_38();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
      sub_2683CEBE8();
      sub_26812D9E0(v103, &qword_28024D2E8, &qword_2683D9190);
      (*(v105 + 8))(v51, v102);
      v54 = 0;
      goto LABEL_9;
    }

    sub_26812D9E0(a1, &qword_28024D2E8, &qword_2683D9190);
    (*(v105 + 8))(v51, v53);
  }

  v54 = 1;
LABEL_9:
  v99 = sub_2683CEBF8();
  return __swift_storeEnumTagSinglePayload(a2, v54, 1, v99);
}

uint64_t sub_2682DA400()
{
  v0 = sub_2683CEAD8();
  v1 = OUTLINED_FUNCTION_0_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251B90, &qword_2683E5B48);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251B98, &qword_2683E5B50);
  v15 = OUTLINED_FUNCTION_23(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v35 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  if (sub_2683CEB58())
  {
    sub_2683CEAE8();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0_51();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v0);
  }

  (*(v3 + 104))(v23, *MEMORY[0x277D561C0], v0);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v0);
  v29 = *(v8 + 48);
  sub_2681340E8(v25, v13, &qword_280251B98, &qword_2683E5B50);
  sub_2681340E8(v23, &v13[v29], &qword_280251B98, &qword_2683E5B50);
  OUTLINED_FUNCTION_2_6(v13);
  if (v30)
  {
    OUTLINED_FUNCTION_9_12(v23);
    OUTLINED_FUNCTION_9_12(v25);
    OUTLINED_FUNCTION_2_6(&v13[v29]);
    if (v30)
    {
      sub_26812D9E0(v13, &qword_280251B98, &qword_2683E5B50);
LABEL_15:
      v31 = sub_2681A3824();
      return v31 & 1;
    }

    goto LABEL_12;
  }

  sub_2681340E8(v13, v20, &qword_280251B98, &qword_2683E5B50);
  OUTLINED_FUNCTION_2_6(&v13[v29]);
  if (v30)
  {
    OUTLINED_FUNCTION_9_12(v23);
    OUTLINED_FUNCTION_9_12(v25);
    (*(v3 + 8))(v20, v0);
LABEL_12:
    sub_26812D9E0(v13, &qword_280251B90, &qword_2683E5B48);
    goto LABEL_13;
  }

  (*(v3 + 32))(v7, &v13[v29], v0);
  sub_2682DA798();
  v32 = sub_2683CFA58();
  v33 = *(v3 + 8);
  v33(v7, v0);
  sub_26812D9E0(v23, &qword_280251B98, &qword_2683E5B50);
  sub_26812D9E0(v25, &qword_280251B98, &qword_2683E5B50);
  v33(v20, v0);
  sub_26812D9E0(v13, &qword_280251B98, &qword_2683E5B50);
  if (v32)
  {
    goto LABEL_15;
  }

LABEL_13:
  v31 = 0;
  return v31 & 1;
}

unint64_t sub_2682DA798()
{
  result = qword_280251BA0;
  if (!qword_280251BA0)
  {
    sub_2683CEAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251BA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_34()
{
}

uint64_t OUTLINED_FUNCTION_9_26()
{

  return sub_2683CE668();
}

uint64_t sub_2682DA85C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA48 = result;
  return result;
}

uint64_t sub_2682DA8C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA50 = result;
  return result;
}

uint64_t sub_2682DA92C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA58 = result;
  return result;
}

uint64_t sub_2682DA994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA60 = result;
  return result;
}

uint64_t sub_2682DA9FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA68 = result;
  return result;
}

uint64_t sub_2682DAA64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF8, &qword_2683E5C70);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA70 = result;
  return result;
}

uint64_t sub_2682DAACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C08, &qword_2683E5C78);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA78 = result;
  return result;
}

uint64_t sub_2682DAB34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA80 = result;
  return result;
}

uint64_t sub_2682DAB9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA88 = result;
  return result;
}

uint64_t sub_2682DAC04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C18, &unk_2683E5C80);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CA90 = result;
  return result;
}

uint64_t sub_2682DAC6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683E5B90;
  if (qword_28024C900 != -1)
  {
    swift_once();
  }

  v1 = qword_28027CA48;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  *(v0 + 56) = v2;
  v3 = sub_2682DB230(&qword_28024EFB0, &qword_28024EFA8, &unk_2683F32C0);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_28024C908;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28027CA50;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_28024C910;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28027CA58;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;
  v8 = qword_28024C918;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28027CA60;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 152) = v9;
  v10 = qword_28024C920;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28027CA68;
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 192) = v11;
  v12 = qword_28024C928;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28027CA70;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF8, &qword_2683E5C70);
  *(v0 + 264) = sub_2682DB230(&qword_280251C00, &qword_280251BF8, &qword_2683E5C70);
  *(v0 + 232) = v13;
  v14 = qword_28024C930;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_28027CA78;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C08, &qword_2683E5C78);
  *(v0 + 304) = sub_2682DB230(&qword_280251C10, &qword_280251C08, &qword_2683E5C78);
  *(v0 + 272) = v15;
  v16 = qword_28024C938;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_28027CA80;
  *(v0 + 336) = v2;
  *(v0 + 344) = v3;
  *(v0 + 312) = v17;
  v18 = qword_28024C940;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_28027CA88;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  *(v0 + 352) = v19;
  v20 = qword_28024C948;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_28027CA90;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C18, &unk_2683E5C80);
  *(v0 + 424) = sub_2682DB230(&qword_280251C20, &qword_280251C18, &unk_2683E5C80);
  *(v0 + 392) = v21;

  return sub_2683CCF98();
}

uint64_t sub_2682DB0C4()
{
  v0 = sub_2683CCFC8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2682DB16C(uint64_t a1)
{
  result = sub_2682DC9DC(&qword_280251BD8, MEMORY[0x277D5E668]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2682DB230(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2682DB284@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E8, &qword_2683D9190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C28, &qword_2683E5C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v61 - v7;
  v72 = sub_2683CD0D8();
  v65 = *(v72 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v72);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C30, &qword_2683E5C98);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v61 - v14;
  v69 = sub_2683CD0B8();
  v63 = *(v69 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v69);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C38, &qword_2683E5CA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v68 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = &v61 - v21;
  v22 = sub_2683CD0E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v61 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C40, &qword_2683E5CA8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v61 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C48, &unk_2683E5CB0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v67 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v61 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v61 - v37;
  v74 = a1;
  sub_2683CE618();
  if (qword_28024C948 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookContactTriggerPersonIntentNode(0);
  sub_2682DC9DC(&qword_280251C70, type metadata accessor for NotebookContactTriggerPersonIntentNode);
  sub_2683CD5C8();
  v39 = v23;
  (*(v23 + 104))(v36, *MEMORY[0x277D5E418], v22);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v22);
  v40 = *(v26 + 48);
  sub_2681340E8(v38, v29, &qword_280251C48, &unk_2683E5CB0);
  sub_2681340E8(v36, &v29[v40], &qword_280251C48, &unk_2683E5CB0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v22) == 1)
  {
    sub_26812D9E0(v36, &qword_280251C48, &unk_2683E5CB0);
    sub_26812D9E0(v38, &qword_280251C48, &unk_2683E5CB0);
    if (__swift_getEnumTagSinglePayload(&v29[v40], 1, v22) == 1)
    {
      sub_26812D9E0(v29, &qword_280251C48, &unk_2683E5CB0);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v41 = v67;
  sub_2681340E8(v29, v67, &qword_280251C48, &unk_2683E5CB0);
  if (__swift_getEnumTagSinglePayload(&v29[v40], 1, v22) == 1)
  {
    sub_26812D9E0(v36, &qword_280251C48, &unk_2683E5CB0);
    sub_26812D9E0(v38, &qword_280251C48, &unk_2683E5CB0);
    (*(v39 + 8))(v41, v22);
LABEL_8:
    sub_26812D9E0(v29, &qword_280251C40, &qword_2683E5CA8);
    goto LABEL_10;
  }

  v42 = v39;
  v43 = *(v39 + 32);
  v44 = v61;
  v43(v61, &v29[v40], v22);
  sub_2682DC9DC(&qword_280251C58, MEMORY[0x277D5E420]);
  sub_2683CFA58();
  v45 = *(v42 + 8);
  v45(v44, v22);
  sub_26812D9E0(v36, &qword_280251C48, &unk_2683E5CB0);
  sub_26812D9E0(v38, &qword_280251C48, &unk_2683E5CB0);
  v45(v67, v22);
  sub_26812D9E0(v29, &qword_280251C48, &unk_2683E5CB0);
LABEL_10:
  v46 = v71;
  v47 = v69;
  sub_2683CE5A8();
  if (qword_28024C910 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  sub_2683CE5C8();
  if (qword_28024C930 != -1)
  {
    swift_once();
  }

  v48 = v75;
  sub_2683CD5C8();
  v49 = v68;
  sub_2681340E8(v48, v68, &qword_280251C38, &qword_2683E5CA0);
  if (__swift_getEnumTagSinglePayload(v49, 1, v47) != 1)
  {
    v51 = v62;
    v50 = v63;
    (*(v63 + 32))(v62, v49, v47);
    sub_2683CD0A8();
    (*(v50 + 8))(v51, v47);
  }

  sub_26812D9E0(v75, &qword_280251C38, &qword_2683E5CA0);
  sub_2683CE568();
  if (qword_28024C908 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  sub_2683CE608();
  if (qword_28024C920 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  sub_2683CE558();
  if (qword_28024C918 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  sub_2683CE548();
  v52 = v72;
  if (qword_28024C928 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  v53 = v70;
  sub_2681340E8(v46, v70, &qword_280251C30, &qword_2683E5C98);
  if (__swift_getEnumTagSinglePayload(v53, 1, v52) != 1)
  {
    v55 = v64;
    v54 = v65;
    (*(v65 + 32))(v64, v53, v52);
    sub_2683CD0C8();
    (*(v54 + 8))(v55, v52);
  }

  sub_26812D9E0(v46, &qword_280251C30, &qword_2683E5C98);
  sub_2683CE578();
  if (qword_28024C938 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  sub_2683CE5E8();
  if (qword_28024C900 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  sub_2683CE598();
  if (qword_28024C940 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  v56 = v73;
  if (v76)
  {
    v57 = sub_2683CE628();
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v57);
    sub_2683CE958();
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = sub_2683CE968();
  __swift_storeEnumTagSinglePayload(v56, v58, 1, v59);
  return sub_2683CE588();
}

uint64_t sub_2682DBF20@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E8, &qword_2683D9190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C28, &qword_2683E5C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v66 - v8;
  v77 = sub_2683CD0D8();
  v71 = *(v77 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v77);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C30, &qword_2683E5C98);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v76 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v66 - v15;
  v75 = sub_2683CD0B8();
  v69 = *(v75 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v75);
  v68 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C38, &qword_2683E5CA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v74 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v66 - v22;
  v23 = sub_2683CD0E8();
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](v23);
  v67 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C40, &qword_2683E5CA8);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v66 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251C48, &unk_2683E5CB0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v81 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v66 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v66 - v38;
  v80 = a1;
  sub_2683CE618();
  v40 = sub_2682DC9DC(&qword_280251C50, MEMORY[0x277D5E668]);
  v41 = *(v40 + 88);
  v42 = sub_2683CD468();
  v78 = v1;
  v41(v42, v40);
  v43 = v73;
  (*(v73 + 104))(v37, *MEMORY[0x277D5E418], v23);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v23);
  v44 = *(v27 + 56);
  sub_2681340E8(v39, v30, &qword_280251C48, &unk_2683E5CB0);
  sub_2681340E8(v37, &v30[v44], &qword_280251C48, &unk_2683E5CB0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v23) == 1)
  {
    sub_26812D9E0(v37, &qword_280251C48, &unk_2683E5CB0);
    sub_26812D9E0(v39, &qword_280251C48, &unk_2683E5CB0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v30[v44], 1, v23);
    v46 = v82;
    if (EnumTagSinglePayload == 1)
    {
      sub_26812D9E0(v30, &qword_280251C48, &unk_2683E5CB0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_2681340E8(v30, v81, &qword_280251C48, &unk_2683E5CB0);
  if (__swift_getEnumTagSinglePayload(&v30[v44], 1, v23) == 1)
  {
    sub_26812D9E0(v37, &qword_280251C48, &unk_2683E5CB0);
    sub_26812D9E0(v39, &qword_280251C48, &unk_2683E5CB0);
    (*(v43 + 8))(v81, v23);
    v46 = v82;
LABEL_6:
    sub_26812D9E0(v30, &qword_280251C40, &qword_2683E5CA8);
    goto LABEL_8;
  }

  v47 = &v30[v44];
  v48 = v67;
  (*(v43 + 32))(v67, v47, v23);
  sub_2682DC9DC(&qword_280251C58, MEMORY[0x277D5E420]);
  sub_2683CFA58();
  v49 = *(v43 + 8);
  v49(v48, v23);
  sub_26812D9E0(v37, &qword_280251C48, &unk_2683E5CB0);
  sub_26812D9E0(v39, &qword_280251C48, &unk_2683E5CB0);
  v49(v81, v23);
  sub_26812D9E0(v30, &qword_280251C48, &unk_2683E5CB0);
  v46 = v82;
LABEL_8:
  sub_2683CE5A8();
  (*(v40 + 32))(v42, v40);
  sub_2683CE5C8();
  v50 = v83;
  (*(v40 + 64))(v42, v40);
  v51 = v50;
  v52 = v74;
  sub_2681340E8(v51, v74, &qword_280251C38, &qword_2683E5CA0);
  v53 = v75;
  if (__swift_getEnumTagSinglePayload(v52, 1, v75) != 1)
  {
    v54 = v68;
    v55 = v69;
    (*(v69 + 32))(v68, v52, v53);
    sub_2683CD0A8();
    (*(v55 + 8))(v54, v53);
    v46 = v82;
  }

  sub_26812D9E0(v83, &qword_280251C38, &qword_2683E5CA0);
  sub_2683CE568();
  (*(v40 + 24))(v42, v40);
  sub_2683CE608();
  (*(v40 + 48))(v42, v40);
  sub_2683CE558();
  (*(v40 + 40))(v42, v40);
  sub_2683CE548();
  (*(v40 + 56))(v42, v40);
  v56 = v76;
  sub_2681340E8(v46, v76, &qword_280251C30, &qword_2683E5C98);
  v57 = v77;
  if (__swift_getEnumTagSinglePayload(v56, 1, v77) != 1)
  {
    v58 = v70;
    v59 = v71;
    (*(v71 + 32))(v70, v56, v57);
    sub_2683CD0C8();
    (*(v59 + 8))(v58, v57);
  }

  sub_26812D9E0(v46, &qword_280251C30, &qword_2683E5C98);
  sub_2683CE578();
  (*(v40 + 72))(v42, v40);
  sub_2683CE5E8();
  (*(v40 + 16))(v42, v40);
  sub_2683CE598();
  (*(v40 + 80))(v42, v40);
  if (v60)
  {
    v61 = sub_2683CE628();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v61);
    v62 = v79;
    sub_2683CE958();
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v79;
  }

  v64 = sub_2683CE968();
  __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
  return sub_2683CE588();
}

uint64_t sub_2682DC9DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2682DCA6C()
{
  result = sub_2683CD628();
  if (v1 <= 0x3F)
  {
    result = sub_2683CCFB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2682DCAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2683CD628();
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a3, a1);
  *(a3 + *(type metadata accessor for NotebookContactTriggerPersonIntentNode(0) + 20)) = a2;
}

uint64_t sub_2682DCB78(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for NotebookContactTriggerPersonIntentNode(0);
  OUTLINED_FUNCTION_0_52();
  sub_2682DC9DC(v4, v5);
  sub_2683CD5C8();
  return v7;
}

uint64_t sub_2682DCC0C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for NotebookContactTriggerPersonIntentNode(0);
  OUTLINED_FUNCTION_0_52();
  sub_2682DC9DC(v4, v5);

  return sub_2683CD5C8();
}

uint64_t sub_2682DCCA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2683CD628();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2682DCF40(uint64_t a1)
{
  v2 = sub_2682DC9DC(&qword_280251C80, type metadata accessor for NotebookContactTriggerPersonIntentNode);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_2682DCFBC(uint64_t a1)
{
  v2 = sub_2682DC9DC(&qword_280251C80, type metadata accessor for NotebookContactTriggerPersonIntentNode);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_2682DD074(uint64_t a1)
{
  result = sub_2682DC9DC(&qword_280251C78, type metadata accessor for NotebookContactTriggerPersonIntentNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2682DD0F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2682DD118, 0, 0);
}

uint64_t sub_2682DD118()
{
  sub_26813CA00(v0[9], (v0 + 2));
  v1 = *(MEMORY[0x277D5BDB0] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2682DD1C0;
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x2821BB3B8](v3, v4, v0 + 2);
}

uint64_t sub_2682DD1C0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_2682DD314(v3 + 16);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2682DD2FC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2682DD314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280251C88, &qword_2683E5E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2682DD384(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2682DD784();
    if (v3 <= 0x3F)
    {
      sub_2682DD7D4();
      if (v4 <= 0x3F)
      {
        sub_2682DD838();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2682DD43C(uint64_t result, unsigned int a2, uint64_t a3)
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
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_2682DD588(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
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
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_2682DD784()
{
  if (!qword_280251D10)
  {
    v0 = sub_2683CFD28();
    if (!v1)
    {
      atomic_store(v0, &qword_280251D10);
    }
  }
}

void sub_2682DD7D4()
{
  if (!qword_280251D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280251D20, qword_2683E5E20);
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_280251D18);
    }
  }
}

unint64_t sub_2682DD838()
{
  result = qword_280251D28;
  if (!qword_280251D28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280251D28);
  }

  return result;
}

uint64_t sub_2682DD880(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2682DD8C4(char a1, unint64_t a2, char a3)
{
  if (a1)
  {
    if (a3)
    {
      a2 = 1;
    }

    if (a3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_2682DDAD8(a2, 0, v4, 0);
    sub_2681125FC(a2, 0, v4);
    return v5;
  }

  else
  {

    return sub_2682DDAD8(0, 0, 3, 1);
  }
}

void *sub_2682DD960(char a1, void *a2, unint64_t a3, char a4)
{
  if (a1)
  {
    if (a4)
    {
      result = sub_2681DF684(a2);
      if (!v4)
      {
        v6 = result;
        v7 = 0;
        v8 = 1;
LABEL_10:
        v10 = sub_2682DDAD8(v6, v7, v8, 0);
        sub_2681125FC(v6, v7, v8);
        return v10;
      }
    }

    else
    {
      v7 = a3;
      result = sub_2681DF64C(a2);
      if (!v4)
      {
        v6 = result;
        v8 = 2;
        goto LABEL_10;
      }
    }
  }

  else
  {
    result = sub_2681DF614(a2);
    if (!v4)
    {
      v9 = result;
      v10 = sub_2682DDAD8(0, 0, 3, result);

      return v10;
    }
  }

  return result;
}

uint64_t sub_2682DDA40(void *a1)
{
  v2 = sub_2682E5FA4(a1);
  v3 = [a1 nextTriggerTime];
  sub_2683CFF08();
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = sub_2682DDAD8(v2, 0, v4, v3);

  return v5;
}

uint64_t sub_2682DDAD8(unint64_t a1, unint64_t a2, char a3, void *a4)
{
  v9 = sub_2682E5FA4(v4);
  sub_2682D3CF8(v9, a1, a2, a3);

  v10 = [v4 nextTriggerTime];
  v11 = v10;
  if (!a4)
  {
    v12 = v10;
  }

  sub_2680F1DAC(a4);

  sub_2683CFF08();
  sub_268143430();
  return sub_2683CFF18();
}

uint64_t Snippet.NoteSearchResult.noteIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Snippet.NoteSearchResult.count.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t Snippet.NoteSearchResult.count.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t Snippet.NoteSearchResult.searchString.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Snippet.NoteSearchResult.searchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Snippet.NoteSearchResult.init(noteIdentifiers:searchString:count:pageInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *a7 = result;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 40) = v7;
  return result;
}

BOOL static Snippet.NoteSearchResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if ((sub_26814BEB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v13 = v4 == v10 && v5 == v9;
    if (!v13 && (sub_2683D0598() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6 == 2)
  {
    return v11 == 2;
  }

  return v11 != 2 && ((v6 ^ v11) & 1) == 0;
}

uint64_t sub_2682DDE28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965746F6ELL && a2 == 0xEF73726569666974;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F666E4965676170 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2682DDF88(char a1)
{
  result = 0x6E65644965746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x746E756F63;
      break;
    case 2:
      result = 0x7453686372616573;
      break;
    case 3:
      result = 0x6F666E4965676170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2682DE024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682DDE28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682DE04C(uint64_t a1)
{
  v2 = sub_2682DE304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682DE088(uint64_t a1)
{
  v2 = sub_2682DE304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.NoteSearchResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251D30, &unk_2683E5E60);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v17 - v9;
  v11 = *v1;
  v21 = v1[1];
  v20 = *(v1 + 16);
  v12 = v1[3];
  v18 = v1[4];
  v19 = v12;
  HIDWORD(v17) = *(v1 + 40);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2682DE304();

  sub_2683D0718();
  v27 = v11;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2682DECB8(&qword_280254480);
  OUTLINED_FUNCTION_6_26();
  sub_2683D0548();

  if (!v14)
  {
    v15 = BYTE4(v17);
    v25 = 1;
    OUTLINED_FUNCTION_6_26();
    sub_2683D04F8();
    v24 = 2;
    OUTLINED_FUNCTION_6_26();
    sub_2683D04D8();
    v23 = v15;
    v22 = 3;
    sub_2681D6B54();
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_2682DE304()
{
  result = qword_280251D38;
  if (!qword_280251D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251D38);
  }

  return result;
}

uint64_t Snippet.NoteSearchResult.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  sub_26814E9C0(a1, *v1);
  if (v3 == 1)
  {
    sub_2683D06B8();
    if (v5)
    {
LABEL_3:
      sub_2683D06B8();
      sub_2683CFB48();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2683D06B8();
    MEMORY[0x26D617190](v2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_2683D06B8();
LABEL_6:
  if (v6 != 2)
  {
    sub_2683D06B8();
  }

  return sub_2683D06B8();
}

uint64_t Snippet.NoteSearchResult.hashValue.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 3);
  v10 = v3;
  sub_2683D0698();
  Snippet.NoteSearchResult.hash(into:)(v5);
  return sub_2683D06D8();
}

uint64_t Snippet.NoteSearchResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251D40, &qword_2683E5E70);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682DE304();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2682DECB8(&qword_280254470);
  OUTLINED_FUNCTION_2_39();
  sub_2683D04A8();
  OUTLINED_FUNCTION_2_39();
  v10 = sub_2683D0458();
  v19 = v11;
  v20 = v10;
  OUTLINED_FUNCTION_2_39();
  v12 = sub_2683D0438();
  v15 = v14;
  v18 = v12;
  sub_2681D71B0();
  OUTLINED_FUNCTION_2_39();
  sub_2683D0468();
  v16 = OUTLINED_FUNCTION_0_53();
  v17(v16);
  *a2 = v22;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v21;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2682DE70C()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 3);
  v10 = v3;
  sub_2683D0698();
  Snippet.NoteSearchResult.hash(into:)(v5);
  return sub_2683D06D8();
}

void sub_2682DE7A0(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v4 = sub_2683CC818();
  v5 = sub_2682DEB58(v4);
  v6 = sub_2683CC818();
  v7 = [v6 userActivity];

  if (!v7 || (v8 = sub_2682DEC40(v7)) == 0)
  {
    v41 = 0u;
    v42 = 0u;
    goto LABEL_8;
  }

  v9 = v8;
  sub_2683D0108();
  sub_2682DFC10(v9, &v41);

  sub_2682DF018(v40);
  if (!*(&v42 + 1))
  {
LABEL_8:
    sub_2682DF06C(&v41);
LABEL_9:
    v11 = 0;
    v39 = 1;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_268129504(0, &qword_28024F970, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v40[0];
  v11 = [v40[0] integerValue];

  v39 = 0;
  if (!v5)
  {
LABEL_6:
    v12 = MEMORY[0x277D84F90];
LABEL_25:
    v27 = sub_2683CC848();
    v28 = [v27 title];

    if (v28)
    {
      v29 = [v28 spokenPhrase];

      v30 = sub_2683CFA78();
      v32 = v31;
    }

    else
    {
      v33 = sub_2683CC848();
      v30 = sub_2682DEBD0(v33);
      v32 = v34;
    }

    if (v39)
    {
      if (!v5)
      {
        v11 = 0;
        v35 = 1;
        goto LABEL_32;
      }

      v11 = sub_268229348(v5);
    }

    v35 = 0;
LABEL_32:
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v35;
    *(a2 + 24) = v30;
    *(a2 + 32) = v32;
    *(a2 + 40) = v3;
    type metadata accessor for Snippet();
    swift_storeEnumTagMultiPayload();
    return;
  }

LABEL_10:
  v37 = v3;
  v38 = a2;
  v13 = sub_2683ABE58(v5);

  v14 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v14)
    {

      a2 = v38;
      v3 = v37;
      goto LABEL_25;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D616C90](v14, v5);
    }

    else
    {
      if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v15 = *(v5 + 8 * v14 + 32);
    }

    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v17 = v15;
    v18 = [v17 identifier];
    if (v18)
    {
      v19 = v18;
      v20 = sub_2683CFA78();
      v36 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v12 + 16) + 1, 1, v12);
        v12 = v25;
      }

      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2682E4728(v22 > 1, v23 + 1, 1, v12);
        v12 = v26;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v36;
      v14 = v16;
    }

    else
    {

      ++v14;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_2682DEB58(void *a1)
{
  v2 = [a1 notes];

  if (!v2)
  {
    return 0;
  }

  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t sub_2682DEBD0(void *a1)
{
  v2 = [a1 content];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_2682DEC40(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CF9C8();

  return v3;
}

uint64_t sub_2682DECB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280253390, &qword_2683E2550);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2682DED30()
{
  result = qword_280251D48;
  if (!qword_280251D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251D48);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2682DED98(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2682DEDD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V16NoteSearchResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2682DEF14()
{
  result = qword_280251D50;
  if (!qword_280251D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251D50);
  }

  return result;
}

unint64_t sub_2682DEF6C()
{
  result = qword_280251D58;
  if (!qword_280251D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251D58);
  }

  return result;
}

unint64_t sub_2682DEFC4()
{
  result = qword_280251D60;
  if (!qword_280251D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251D60);
  }

  return result;
}

uint64_t sub_2682DF06C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2682DF0F0@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2683CD558();
  if (sub_2683ABE58(v4))
  {
    sub_2683ABE60(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    if (sub_2683CE328() == 0x525F6E6F6D6D6F63 && v6 == 0xEF7265646E696D65)
    {
    }

    else
    {
      OUTLINED_FUNCTION_4_37();
      OUTLINED_FUNCTION_5_35();
    }

    if (sub_2683CE328() == 0x6E456F4E5F6F7375 && v12 == 0xEC00000079746974)
    {

      if (!a1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = sub_2683D0598();

      if ((v14 & 1) == 0 || !a1)
      {
        goto LABEL_21;
      }
    }

    v15 = sub_2683CE318();
    v16 = a1(v15);
    OUTLINED_FUNCTION_2_40();

    if (v16)
    {
LABEL_21:

      sub_2683CD718();

      OUTLINED_FUNCTION_2_40();

      result = swift_unknownObjectRelease();
      v18 = v28;
      *a2 = v27;
      *(a2 + 16) = v18;
      return result;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027C958);

    v9 = sub_2683CF7C8();
    v20 = sub_2683CFE78();

    if (!os_log_type_enabled(v9, v20))
    {
      OUTLINED_FUNCTION_2_40();

      goto LABEL_30;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v21 = 136315138;
    v23 = sub_2683CE328();
    v25 = sub_2681610A0(v23, v24, &v26);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2680EB000, v9, v20, "[NotebookNLv4Intent] Incorrect base entity received %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE78();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2680EB000, v9, v10, "[NotebookNLv4Intent] No USO tasks", v11, 2u);
      OUTLINED_FUNCTION_38();
    }
  }

  OUTLINED_FUNCTION_2_40();
LABEL_30:

  result = swift_unknownObjectRelease();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

double sub_2682DF700@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v6 = sub_2683CCDD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCC58();
  v11 = sub_2683CCF78();
  (*(v7 + 8))(v10, v6);
  if (!v11)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE78();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2680EB000, v16, v17, "[NotebookNLv4Intent] Couldn't convert USO parse to dialog act", v18, 2u);
      OUTLINED_FUNCTION_38();
    }

    sub_268128194(a2);

    v19 = sub_2683CCC68();
    OUTLINED_FUNCTION_0_9(v19);
    (*(v20 + 8))(a1);
    goto LABEL_9;
  }

  sub_2682DF0F0(a2, &v22);
  v12 = sub_2683CCC68();
  OUTLINED_FUNCTION_0_9(v12);
  (*(v13 + 8))(a1);
  if (*(&v23 + 1) == 1)
  {
    sub_2682DF93C(&v22);
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 1;
    return result;
  }

  result = *&v22;
  v21 = v23;
  *a3 = v22;
  *(a3 + 1) = v21;
  return result;
}

uint64_t sub_2682DF93C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251D68, &unk_2683E60D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2682DF9BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2682DFA10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_40()
{

  return sub_268128194(v0);
}

uint64_t OUTLINED_FUNCTION_4_37()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_5_35()
{
}

uint64_t sub_2682DFAC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2682E186C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for Snippet.Reminder(0);
    OUTLINED_FUNCTION_1(v8);
    sub_26815E3F0(v7 + *(v9 + 72) * v6, a2);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = type metadata accessor for Snippet.Reminder(0);
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_2682DFB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2682E1790(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_2682DFBBC(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2682E18EC(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

double sub_2682DFC10@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2682E18AC(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_26813CC6C(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_2682DFC74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2682E1790(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 48 * v6;

    sub_2682E1808(v8, a4);
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  return result;
}

void sub_2682DFCE0()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_2683CF408();
  OUTLINED_FUNCTION_1_7();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x28223BE20](v11);
  v13 = (&v39 - v12);
  v14 = *(v7 + 16);
  v14(&v39 - v12, v2, v5);
  if ((*(v7 + 88))(v13, v5) == *MEMORY[0x277D60918])
  {
    (*(v7 + 96))(v13, v5);
    *&v42 = *v13;
    v15 = v42;
    sub_268129504(0, &qword_28024F2C8, 0x277CD3D30);
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DA0, &qword_2683E6248);
    if (swift_dynamicCast())
    {
      v17 = v0;
      v40 = v4;
      sub_268128148(&v44, v47);
      v18 = v48;
      v19 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v19 + 8))(&v42, v18, v19);
      if (v43)
      {
        sub_268128148(&v42, &v44);
        v20 = *(&v45 + 1);
        v21 = v46;
        __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
        v22 = (*(v21 + 8))(v20, v21);
        sub_2682E0B24(v22, &v42);

        (*(v7 + 8))(v2, v5);
        v23 = v42;
        v24 = BYTE1(v42);
        __swift_destroy_boxed_opaque_existential_0(&v44);
        __swift_destroy_boxed_opaque_existential_0(v47);
        v4 = v40;
        goto LABEL_14;
      }

      sub_26812D9E0(&v42, &qword_28024DCD0, &unk_2683D4990);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v4 = v40;
      v0 = v17;
    }

    else
    {

      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_26812D9E0(&v44, &qword_280251DA8, &unk_2683E6250);
    }
  }

  else
  {
    (*(v7 + 8))(v13, v5);
  }

  if (qword_28024CC50 != -1)
  {
    OUTLINED_FUNCTION_5_36();
  }

  v25 = sub_2683CF7E8();
  __swift_project_value_buffer(v25, qword_28027CE90);
  v41 = v2;
  v14(v0, v2, v5);
  v26 = sub_2683CF7C8();
  v27 = sub_2683CFE78();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = v4;
    v29 = v28;
    v39 = swift_slowAlloc();
    v47[0] = v39;
    *v29 = 136315138;
    sub_2682E3388(&qword_280251D98, MEMORY[0x277D60930]);
    v30 = sub_2683D0568();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_9_27();
    v2(v33);
    v34 = sub_2681610A0(v30, v32, v47);

    *(v29 + 4) = v34;
    OUTLINED_FUNCTION_20_24(&dword_2680EB000, v35, v36, "[AddTriggerIntentParameters] Cannot get parameters from SiriSuggestions.Intent, default triggers to false: %s");
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_38();
    v4 = v40;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v37 = OUTLINED_FUNCTION_9_27();
    v2(v37);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
  v38 = sub_2683CF9D8();
  sub_2682E0B24(v38, v47);
  (v2)(v41, v5);
  v23 = v47[0];
  v24 = BYTE1(v47[0]);
LABEL_14:
  *v4 = v23;
  v4[1] = v24;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682E0174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v4 = sub_2682E1790(1701667182, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2682E1808(*(a1 + 56) + 48 * v4, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
  if ((OUTLINED_FUNCTION_4_38() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v16 == 0xD000000000000027 && 0x80000002683FFE70 == v17)
  {
  }

  else
  {
    v7 = sub_2683D0598();

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  sub_2682DFC74(0xD000000000000011, 0x80000002683FFEA0, a1, &v18);
  if (!v19)
  {

    result = sub_26812D9E0(&v18, &qword_280251D80, &qword_2683E6238);
    goto LABEL_19;
  }

  if ((OUTLINED_FUNCTION_4_38() & 1) == 0)
  {
LABEL_18:

LABEL_19:
    *a2 = 2;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    return result;
  }

  v8 = OUTLINED_FUNCTION_15_23();
  sub_2682DFC74(v8, 0xE800000000000000, a1, &v18);
  if (v19)
  {
    v9 = OUTLINED_FUNCTION_4_38();
    if (v9)
    {
      v10 = v16;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 ^ 1u;
  }

  else
  {
    sub_26812D9E0(&v18, &qword_280251D80, &qword_2683E6238);
    v10 = 0;
    v11 = 1;
  }

  v13 = OUTLINED_FUNCTION_14_21();
  sub_2682DFC74(v13, 0xE900000000000065, a1, &v18);

  if (v19)
  {
    result = OUTLINED_FUNCTION_4_38();
    v14 = v16;
    if (!result)
    {
      v14 = 0;
    }

    v15 = result ^ 1;
  }

  else
  {
    result = sub_26812D9E0(&v18, &qword_280251D80, &qword_2683E6238);
    v14 = 0;
    v15 = 1;
  }

  *a2 = v16;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

void sub_2682E03AC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v58 = v3;
  v4 = sub_2683CF478();
  OUTLINED_FUNCTION_1_7();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = sub_2683CF408();
  OUTLINED_FUNCTION_1_7();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  v23 = *(v6 + 16);
  v23(v13, v2, v4);
  v24 = *(v6 + 88);
  v25 = OUTLINED_FUNCTION_13_28();
  if (v26(v25) == *MEMORY[0x277D60DF0])
  {
    v27 = *(v6 + 96);
    v28 = OUTLINED_FUNCTION_13_28();
    v29(v28);
    v30 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251D90, &qword_2683E6240) + 48)];

    (*(v16 + 32))(v22, v13, v14);
    (*(v16 + 16))(v0, v22, v14);
    sub_2682DFCE0();
    (*(v6 + 8))(v2, v4);
    (*(v16 + 8))(v22, v14);
    v31 = v59;
    v32 = v60;
  }

  else
  {
    v33 = *(v6 + 8);
    v34 = OUTLINED_FUNCTION_13_28();
    v55 = v35;
    v56 = v2;
    (v35)(v34);
    if (qword_28024CC50 != -1)
    {
      OUTLINED_FUNCTION_5_36();
    }

    v36 = sub_2683CF7E8();
    __swift_project_value_buffer(v36, qword_28027CE90);
    v37 = v56;
    v38 = v57;
    v23(v57, v56, v4);
    v39 = sub_2683CF7C8();
    v40 = sub_2683CFE78();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v38;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315138;
      sub_2682E3388(&qword_280251D88, MEMORY[0x277D60E00]);
      v44 = sub_2683D0568();
      v46 = v45;
      v47 = v41;
      v48 = v55;
      v55(v47, v4);
      v49 = sub_2681610A0(v44, v46, &v61);

      *(v42 + 4) = v49;
      OUTLINED_FUNCTION_20_24(&dword_2680EB000, v50, v51, "[AddTriggerIntentParameters] Cannot get executedIntent from InteractionIntents, default triggers to false: %s");
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_38();
      v37 = v56;
      OUTLINED_FUNCTION_38();
    }

    else
    {

      v48 = v55;
      v55(v38, v4);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
    v52 = sub_2683CF9D8();
    sub_2682E0B24(v52, v62);
    v48(v37, v4);
    v31 = v62[0];
    v32 = v62[1];
  }

  v53 = v58;
  *v58 = v31;
  v53[1] = v32;
  OUTLINED_FUNCTION_29_0();
}

void sub_2682E0800()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29[-v6];
  v8 = sub_2683CB0D8();
  OUTLINED_FUNCTION_1_7();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for UpdateReminderExecutionParameters();
  v17 = OUTLINED_FUNCTION_1(updated);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v1 + 16))
  {
    goto LABEL_9;
  }

  v22 = sub_2682E1790(1701667182, 0xE400000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2682E1808(*(v1 + 56) + 48 * v22, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v31 == 0xD000000000000021 && 0x80000002683E61E0 == v32)
  {
  }

  else
  {
    v30 = sub_2683D0598();

    if ((v30 & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  sub_2682DFC74(0x706D6F4365746164, 0xED0000746E656E6FLL, v1, &v33);

  if (v34)
  {
    v26 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v7, v26 ^ 1u, 1, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v27 = *(v10 + 32);
      v28 = OUTLINED_FUNCTION_13_28();
      v27(v28);
      (v27)(v21, v15, v8);
      sub_2681EFEFC(v21, v3);
      v25 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_26812D9E0(&v33, &qword_280251D80, &qword_2683E6238);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  }

  sub_26812D9E0(v7, &qword_28024D4B0, &unk_2683D26E0);
LABEL_10:
  v25 = 1;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v3, v25, 1, updated);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682E0B24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2682DFC74(0xD000000000000017, 0x80000002683FEAB0, a1, &v8);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
    if (swift_dynamicCast())
    {
      v4 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    sub_26812D9E0(&v8, &qword_280251D80, &qword_2683E6238);
  }

  v4 = 0;
LABEL_6:
  sub_2682DFC74(0xD000000000000016, 0x80000002683FEA90, a1, &v8);

  if (!v9)
  {
    result = sub_26812D9E0(&v8, &qword_280251D80, &qword_2683E6238);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = v7;
LABEL_11:
  *a2 = v4;
  a2[1] = v6;
  return result;
}

void sub_2682E0C74()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *v0;
  if (v0[1] == 1)
  {
    OUTLINED_FUNCTION_11_30();
    v18 = 1;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_1_43();
    v4 = *(v3 + 64);
    MEMORY[0x28223BE20](v5);
    v7 = OUTLINED_FUNCTION_0_54(v6, v15);
    v8(v7);
    sub_2682E27C4(*v1, 0xD000000000000016, 0x80000002683FEA90, v0, &v16);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  if (v2)
  {
    OUTLINED_FUNCTION_11_30();
    v18 = 1;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_1_43();
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v11);
    v13 = OUTLINED_FUNCTION_0_54(v12, v15);
    v14(v13);
    sub_2682E27C4(*v1, 0xD000000000000017, 0x80000002683FEAB0, v0, &v16);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682E0E48()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v46 = MEMORY[0x277D839B0];
  v47 = MEMORY[0x277D839D0];
  v48 = MEMORY[0x277D839B8];
  LOBYTE(v45) = v2;
  sub_2682E1DEC(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_1_43();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_0_54(v10, v40);
  v12(v11);
  sub_2682E27C4(*v1, 0xD000000000000011, 0x80000002683FFEA0, v0, &v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v46 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D83808];
  v48 = MEMORY[0x277D837D8];
  *&v45 = 0xD000000000000027;
  *(&v45 + 1) = 0x80000002683FFE70;
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_1_43();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_0_54(v16, v41);
  v18(v17);
  OUTLINED_FUNCTION_18_24(MEMORY[0xD000000000000011], MEMORY[0xD000000000000019], v19, v20, v21, &v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v22 = v43;
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_30();
    *&v45 = v3;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_1_43();
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v25);
    v27 = OUTLINED_FUNCTION_0_54(v26, v42);
    v28(v27);
    v29 = OUTLINED_FUNCTION_15_23();
    sub_2682E2BA4(v29, 0xE800000000000000, v30, v0, &v43);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v22 = v43;
  }

  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_30();
    *&v45 = v5;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_1_43();
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v33);
    v35 = OUTLINED_FUNCTION_0_54(v34, v42);
    v36(v35);
    v37 = OUTLINED_FUNCTION_14_21();
    sub_2682E2BA4(v37, 0xE900000000000065, v38, v0, &v43);
    __swift_destroy_boxed_opaque_existential_0(v44);
    return v43;
  }

  return v22;
}

uint64_t sub_2682E119C()
{
  v1 = sub_2683CB0D8();
  v25 = v1;
  v2 = MEMORY[0x277CC8990];
  v26 = sub_2682E3388(&qword_280251DB0, MEMORY[0x277CC8990]);
  v27 = sub_2682E3388(&qword_280251DB8, v2);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_0, v0, v1);
  sub_2682E1DEC(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_1_43();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_0_54(v7, v20);
  v9(v8);
  sub_2682E2D8C(v2, 0x706D6F4365746164, 0xED0000746E656E6FLL, v0, &v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v25 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D83808];
  v27 = MEMORY[0x277D837D8];
  *&v24 = 0xD000000000000021;
  *(&v24 + 1) = 0x80000002683E61E0;
  sub_2682E1DEC(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_1_43();
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_0_54(v13, v21);
  v15(v14);
  OUTLINED_FUNCTION_18_24(*v2, *(v2 + 8), v16, v17, v18, &v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v22;
}

uint64_t getEnumTagSinglePayload for AddTriggerIntentParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AddTriggerIntentParameters(uint64_t result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_2682E1578(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[33])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_2682E15C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for UpdateReminderExecutionParameters()
{
  result = qword_280251D70;
  if (!qword_280251D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2682E1690()
{
  result = sub_2683CB0D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2682E16FC()
{
  v1 = *(v0 + 40);
  sub_2683CEB08();
  sub_2682E3388(&qword_28024E710, MEMORY[0x277D563F8]);
  sub_2683CF9F8();
  v2 = OUTLINED_FUNCTION_56_1();

  return sub_2682E1AA4(v2, v3);
}

unint64_t sub_2682E1790(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2683D0698();
  sub_2683CFB48();
  v6 = sub_2683D06D8();

  return sub_2682E1C60(a1, a2, v6);
}

uint64_t sub_2682E1808(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2682E186C()
{
  v1 = *(v0 + 40);
  sub_2683CFF58();
  v2 = OUTLINED_FUNCTION_56_1();

  return sub_2682E1D14(v2, v3);
}

unint64_t sub_2682E18AC()
{
  v1 = *(v0 + 40);
  sub_2683D00E8();
  v2 = OUTLINED_FUNCTION_56_1();

  return sub_2682E1E04(v2, v3);
}

unint64_t sub_2682E18EC(char a1)
{
  v3 = *(v1 + 40);
  sub_2683D0698();
  sub_2683D06B8();
  v4 = sub_2683D06D8();

  return sub_2682E1EC8(a1, v4);
}

unint64_t sub_2682E1958()
{
  OUTLINED_FUNCTION_17_19();
  sub_26814ECF4();
  v1 = sub_2683D06D8();

  return sub_2682E1F2C(v0, v1);
}

unint64_t sub_2682E19B4()
{
  OUTLINED_FUNCTION_17_19();
  sub_26814EC64();
  v1 = sub_2683D06D8();

  return sub_2682E2368(v0, v1);
}

unint64_t sub_2682E1A10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2683D0698();
  sub_2683D06B8();
  if (a2)
  {
    sub_2683CFB48();
  }

  v6 = sub_2683D06D8();

  return sub_2682E26F8(a1, a2, v6);
}

unint64_t sub_2682E1AA4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2683CEB08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2682E3388(&qword_280251DC8, MEMORY[0x277D563F8]);
    v10 = sub_2683CFA58();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2682E1C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2683D0598() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2682E1D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_268129504(0, &qword_28024DB40, 0x277D44700);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2683CFF68();

    if (v8)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_2682E1DEC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_2682E1E04(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2682E332C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D616BE0](v8, a1);
    sub_2682DF018(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2682E1EC8(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_2682E1F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v5 = sub_2683CB528();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = v3 + 64;
  v21 = -1 << *(v3 + 32);
  v22 = a2 & ~v21;
  if ((*(v3 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v37 = v17;
    v38 = ~v21;
    v31 = (v6 + 32);
    v32 = v9;
    v39 = *(v16 + 72);
    v35 = (v6 + 8);
    v36 = v3 + 64;
    v30 = v3;
    do
    {
      sub_2681340E8(*(v3 + 48) + v39 * v22, v19, &qword_28024DB08, qword_2683D5760);
      v23 = *(v9 + 48);
      sub_2681340E8(v19, v12, &qword_28024DB08, qword_2683D5760);
      sub_2681340E8(v40, &v12[v23], &qword_28024DB08, qword_2683D5760);
      if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
      {
        sub_26812D9E0(v19, &qword_28024DB08, qword_2683D5760);
        if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v5) == 1)
        {
          sub_26812D9E0(v12, &qword_28024DB08, qword_2683D5760);
          return v22;
        }
      }

      else
      {
        v24 = v37;
        sub_2681340E8(v12, v37, &qword_28024DB08, qword_2683D5760);
        if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v5) != 1)
        {
          v25 = &v12[v23];
          v26 = v33;
          (*v31)(v33, v25, v5);
          sub_2682E3388(&qword_28024D6A0, MEMORY[0x277CC9578]);
          v34 = sub_2683CFA58();
          v27 = *v35;
          (*v35)(v26, v5);
          sub_26812D9E0(v19, &qword_28024DB08, qword_2683D5760);
          v27(v24, v5);
          v3 = v30;
          v9 = v32;
          sub_26812D9E0(v12, &qword_28024DB08, qword_2683D5760);
          v20 = v36;
          if (v34)
          {
            return v22;
          }

          goto LABEL_10;
        }

        sub_26812D9E0(v19, &qword_28024DB08, qword_2683D5760);
        (*v35)(v24, v5);
        v20 = v36;
      }

      sub_26812D9E0(v12, &qword_280251618, &qword_2683E3D58);
LABEL_10:
      v22 = (v22 + 1) & v38;
    }

    while (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  }

  return v22;
}

unint64_t sub_2682E2368(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v11 = ~v3;
    do
    {
      v6 = (*(v2 + 48) + 104 * v4);
      memcpy(__dst, v6, 0x61uLL);
      v24 = *v6;
      v25 = v6[2];
      v7 = __dst[3];
      memcpy(__src, v6 + 4, sizeof(__src));
      *&v22[7] = *a1;
      v8 = *(a1 + 24);
      *&v22[23] = *(a1 + 16);
      memcpy(v21, (a1 + 32), sizeof(v21));
      if (__dst[3])
      {
        *v17 = v24;
        *&v17[16] = v25;
        *&v17[24] = __dst[3];
        memcpy(&v17[32], __src, 0x41uLL);
        memcpy(v16, v17, 0x61uLL);
        if (v8)
        {
          v12[0] = *a1;
          *&v12[1] = *(a1 + 16);
          memcpy(&v12[2], (a1 + 32), 0x41uLL);
          *(&v12[1] + 1) = v8;
          sub_2681340E8(__dst, v14, &qword_28024D5C0, &unk_2683D2C80);
          sub_2681340E8(a1, v14, &qword_28024D5C0, &unk_2683D2C80);
          sub_2681340E8(v17, v14, &qword_28024D5C0, &unk_2683D2C80);
          v9 = static Snippet.ReminderList.== infix(_:_:)(v16, v12);
          memcpy(v13, v12, 0x61uLL);
          sub_26814F740(v13);
          memcpy(v14, v16, 0x61uLL);
          sub_26814F740(v14);
          *v15 = v24;
          *&v15[16] = v25;
          *&v15[24] = v7;
          memcpy(&v15[32], __src, 0x41uLL);
          sub_26812D9E0(v15, &qword_28024D5C0, &unk_2683D2C80);
          if (v9)
          {
            return v4;
          }

          goto LABEL_11;
        }

        memcpy(v15, v17, sizeof(v15));
        sub_2681340E8(__dst, v14, &qword_28024D5C0, &unk_2683D2C80);
        sub_2681340E8(a1, v14, &qword_28024D5C0, &unk_2683D2C80);
        sub_2681340E8(v17, v14, &qword_28024D5C0, &unk_2683D2C80);
        sub_26814F740(v15);
      }

      else
      {
        if (!v8)
        {
          *v17 = v24;
          *&v17[16] = v25;
          *&v17[24] = 0;
          memcpy(&v17[32], __src, 0x41uLL);
          sub_2681340E8(__dst, v16, &qword_28024D5C0, &unk_2683D2C80);
          sub_2681340E8(a1, v16, &qword_28024D5C0, &unk_2683D2C80);
          sub_26812D9E0(v17, &qword_28024D5C0, &unk_2683D2C80);
          return v4;
        }

        sub_2681340E8(__dst, v17, &qword_28024D5C0, &unk_2683D2C80);
        sub_2681340E8(a1, v17, &qword_28024D5C0, &unk_2683D2C80);
      }

      *v17 = v24;
      *&v17[16] = v25;
      *&v17[24] = v7;
      memcpy(&v17[32], __src, 0x41uLL);
      *v18 = *v22;
      *&v18[15] = *&v22[15];
      v19 = v8;
      memcpy(v20, v21, sizeof(v20));
      sub_26812D9E0(v17, &qword_28024D7E8, &qword_2683D2D90);
LABEL_11:
      v4 = (v4 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2682E26F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2683D0598() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

_OWORD *sub_2682E27C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  LOBYTE(v25) = a1;
  v8 = MEMORY[0x277D839B0];
  v26 = MEMORY[0x277D839B0];
  v27 = MEMORY[0x277D839D0];
  v28 = MEMORY[0x277D839B8];
  v9 = *a5;
  v10 = sub_2682E1790(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DC0, &unk_2683E6260);
  if ((sub_2683D0298() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *a5;
  v15 = sub_2682E1790(a2, a3);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_2683D0608();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *a5;
  if (v13)
  {
    v18 = (v17[7] + 48 * v12);
    __swift_destroy_boxed_opaque_existential_0(v18);
    return sub_2682E1DEC(&v25, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v8);
    v21 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    sub_2682E300C(v12, a2, a3, *v23, v17);
    __swift_destroy_boxed_opaque_existential_0(&v25);
  }
}